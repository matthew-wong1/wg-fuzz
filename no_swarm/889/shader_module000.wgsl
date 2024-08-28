struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    global0 = array<vec2<f32>, 31>();
    var var_0 = arg_1.a.c.x >= arg_1.a.c.x;
    let var_1 = arg_1;
    let var_2 = -50178i;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(451f)) - _wgslsmith_f_op_f32(-arg_0))) + -1851f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(653f, arg_2.x, var_1.a.d.x))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 31>();
    var var_0 = vec2<u32>(arg_2.a.a, 18446u);
    let var_1 = vec3<u32>(u_input.d.x, 1u, ~50307u);
    var_0 = ~u_input.b;
    let var_2 = !(_wgslsmith_f_op_f32(func_2(470f, arg_2, vec3<f32>(-317f, _wgslsmith_f_op_f32(sign(1910f)), 712f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f + -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1.x, arg_2, vec3<f32>(-371f, -409f, arg_1.x))))));
    return 41701u;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = ~arg_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global0[_wgslsmith_index_u32(var_1.a, 31u)]))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d.x, 1138u), ~(~u_input.d.x))), countOneBits(vec3<i32>(u_input.a.x, -2147483647i, reverseBits(0i))), vec4<u32>(0u, 1u, func_1(Struct_2(Struct_1(u_input.b.x, vec3<i32>(-11537i, u_input.c, 35515i), vec4<u32>(59486u, 25115u, 1u, u_input.d.x), vec3<bool>(true, false, true)), 0i, 1i), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(4294967295u, 31u)] - vec2<f32>(-1042f, -1000f)), Struct_2(Struct_1(u_input.b.x, vec3<i32>(u_input.c, 87167i, u_input.a.x), vec4<u32>(96840u, 8961u, 64858u, 1u), vec3<bool>(true, true, false)), 0i, 1i)), countOneBits(1u)) & vec4<u32>(~_wgslsmith_mult_u32(1u, u_input.b.x), func_1(Struct_2(Struct_1(u_input.b.x, vec3<i32>(-2147483647i, u_input.a.x, 3578i), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 34904u), vec3<bool>(false, true, false)), -10507i, -2147483647i), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(88649u, 31u)] - global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), Struct_2(Struct_1(u_input.d.x, vec3<i32>(u_input.c, u_input.c, u_input.c), vec4<u32>(30u, u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(true, true, true)), 1095i, -2147483647i)), _wgslsmith_mult_u32(u_input.b.x, u_input.d.x << (0u % 32u)), u_input.b.x ^ 1u), vec3<bool>(func_3(Struct_1(1u, vec3<i32>(-6787i, 1i, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 97155u, u_input.b.x, 4560u), vec4<u32>(u_input.b.x, 0u, u_input.d.x, u_input.d.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, false), select(true, true, false))), func_3(Struct_1(0u | u_input.d.x, vec3<i32>(46245i, u_input.c, 10311i), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 54017u), vec4<u32>(u_input.b.x, 26464u, 0u, u_input.b.x), vec4<u32>(29963u, 2881u, 1u, u_input.d.x)), vec3<bool>(true, true, true)))));
    global0 = array<vec2<f32>, 31>();
    let var_1 = Struct_2(var_0, u_input.a.x, 2147483647i);
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(max(var_1.a.c.zz, select(~vec2<u32>(u_input.b.x, 28984u), vec2<u32>(var_1.a.c.x, var_0.a), false)), ~_wgslsmith_div_vec2_u32(reverseBits(var_1.a.c.xx), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, 62501u), var_0.c.yy))), vec2<u32>(var_1.a.c.x, ~var_0.c.x));
    global0 = array<vec2<f32>, 31>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(78920u, 1125u, _wgslsmith_mod_u32(u_input.b.x, 18193u), _wgslsmith_div_u32(var_2.x, var_2.x)), vec4<u32>(4294967295u, var_1.a.a << (var_1.a.a % 32u), 69533u, var_1.a.a)), var_1.a.b, ~var_0.c, !var_0.d), _wgslsmith_div_i32(~u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_1.a.b, var_1.a.b), u_input.c) << (~var_2.x % 32u)), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.x, 40734i, -2147483647i, 0i), vec4<i32>(var_0.b.x, var_1.c, 10678i, 1i)), -1i), -(-1i | var_1.b))));
    var var_4 = vec3<bool>(false, !any(select(select(vec3<bool>(true, var_3.a.d.x, var_0.d.x), var_0.d, var_1.a.d.x), select(vec3<bool>(var_3.a.d.x, var_1.a.d.x, var_0.d.x), vec3<bool>(var_0.d.x, var_1.a.d.x, true), vec3<bool>(false, true, var_1.a.d.x)), var_1.a.d)), var_1.a.d.x);
    let var_5 = select(!(!select(select(vec3<bool>(var_3.a.d.x, var_0.d.x, var_4.x), vec3<bool>(false, true, var_1.a.d.x), vec3<bool>(var_1.a.d.x, var_3.a.d.x, var_0.d.x)), !var_3.a.d, select(vec3<bool>(false, var_4.x, var_0.d.x), var_3.a.d, var_4.x))), !select(var_1.a.d, select(!var_0.d, vec3<bool>(true, var_1.a.d.x, var_0.d.x), false && var_4.x), false), var_1.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(~_wgslsmith_div_u32(var_3.a.c.x, min(4294967295u, 9221u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1323f, _wgslsmith_div_f32(-1141f, -976f)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 31u)]))))), global0[_wgslsmith_index_u32(37585u, 31u)], u_input.b.x ^ 4294967295u);
}

