struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -170f;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1770f, -356f, -1483f), false, -1i);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(arg_0.b.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(641f * 944f), arg_0.b.a.x) + arg_0.b.a.x) + -1137f));
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.a.x, arg_0.a), ~arg_0.a)), vec2<u32>(select(~select(u_input.c.x, arg_0.a, false), min(countOneBits(arg_0.a), u_input.c.x), global1.b), 8599u));
    var var_1 = select(!vec2<bool>(!(!arg_0.b.b), false), !select(vec2<bool>(global1.b & false, true && global1.b), select(select(vec2<bool>(arg_0.b.b, global1.b), vec2<bool>(false, false), vec2<bool>(arg_0.b.b, true)), vec2<bool>(false, arg_0.b.b), vec2<bool>(false, true)), arg_0.b.b), min(0u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_1.a.x, 4294967295u, arg_2.x))) != (120617u & u_input.b));
    global1 = arg_0.b;
    var_1 = !select(select(select(vec2<bool>(true, false), vec2<bool>(var_1.x, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !(!vec2<bool>(var_1.x, global1.b)), vec2<bool>(false, arg_0.b.c <= -32038i)), select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(arg_0.b.b, true), arg_0.b.b), select(vec2<bool>(global1.b, false), vec2<bool>(true, var_1.x), global1.b), vec2<bool>(true, true)), select(!vec2<bool>(true, global1.b), vec2<bool>(true, false), true), select(vec2<bool>(true, false), select(vec2<bool>(global1.b, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(global1.b, var_1.x)), false)), !vec2<bool>(-15504i < arg_1.b, global1.b && false));
    return !(!select(vec3<bool>(!global1.b, true, true), vec3<bool>(any(vec4<bool>(arg_0.b.b, global1.b, true, true)), arg_0.b.b && false, false && var_1.x), true));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global1.a.x, -206f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x)), select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(true, false, global1.b), vec3<bool>(true, true, false))))))), any(select(vec3<bool>(global1.b || global1.b, global1.b, true), select(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.b, global1.b)), select(vec3<bool>(false, true, true), vec3<bool>(global1.b, true, false), false), false), select(func_3(Struct_2(u_input.a.x, Struct_1(global1.a, global1.b, -1i)), Struct_3(u_input.c.xx, -13912i, -2147483647i), vec4<u32>(u_input.c.x, 53520u, u_input.c.x, u_input.b)), vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, false, false)))), _wgslsmith_dot_vec3_i32(arg_0, max(arg_0, -(~arg_0))));
    let var_1 = var_0.a.x;
    let var_2 = select(!(!(!(!vec3<bool>(true, var_0.b, var_0.b)))), select(vec3<bool>(!all(vec2<bool>(global1.b, true)), all(vec2<bool>(var_0.b, var_0.b)) | all(vec3<bool>(global1.b, global1.b, false)), global1.b | all(vec3<bool>(var_0.b, true, global1.b))), select(vec3<bool>(true && var_0.b, any(vec4<bool>(global1.b, global1.b, true, var_0.b)), select(true, var_0.b, var_0.b)), !(!vec3<bool>(var_0.b, var_0.b, true)), var_0.b), select(true, !var_0.b, global1.b)), true);
    global0 = _wgslsmith_f_op_f32(-1153f - 2349f);
    global0 = _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(277f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
    return Struct_3(~(~firstTrailingBit(u_input.a.wy)), _wgslsmith_mult_i32(-arg_0.x, countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(27043i, arg_0.x, arg_0.x, 2147483647i), vec4<i32>(25374i, global1.c, var_0.c, -16706i), vec4<bool>(var_2.x, false, false, global1.b)), ~vec4<i32>(var_0.c, var_0.c, 1246i, 9419i)))), select(firstLeadingBit(-24469i), -(~var_0.c | -27968i), !(var_0.b | (global1.b & var_2.x))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = global1.a.x;
    let var_1 = _wgslsmith_mod_u32(7041u, ~arg_0.x);
    var var_2 = Struct_4(Struct_3(~(~(u_input.a.zz << (u_input.c.xx % vec2<u32>(32u)))), -_wgslsmith_clamp_i32(~13240i, global1.c, global1.c), -abs(_wgslsmith_div_i32(-51885i, global1.c))), func_2(_wgslsmith_sub_vec3_i32(min(vec3<i32>(-2147483647i, global1.c, global1.c), vec3<i32>(54817i, global1.c, global1.c)) | -vec3<i32>(global1.c, global1.c, global1.c), abs(vec3<i32>(global1.c, global1.c, -2147483647i) | vec3<i32>(global1.c, global1.c, -1i)))), select(vec3<bool>(all(!vec4<bool>(global1.b, global1.b, global1.b, global1.b)), global1.b, select(global1.b && true, true, global1.b)), vec3<bool>(any(!vec3<bool>(false, global1.b, true)), global1.b, !global1.b), !select(!vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, global1.b, global1.b), !global1.b)), global1.c, any(!(!vec2<bool>(global1.b, global1.b))));
    let var_3 = vec4<bool>(true, var_2.c.x, 22407i > var_2.d, true);
    let var_4 = 62217u;
    return Struct_4(var_2.b, Struct_3(vec2<u32>(var_1, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), u_input.b | 33645u)), -(-20604i >> (var_4 % 32u)), _wgslsmith_mod_i32(countOneBits(-1i) | ~global1.c, _wgslsmith_div_i32(global1.c >> (4294967295u % 32u), i32(-1i) * -19951i))), vec3<bool>(var_3.x, firstTrailingBit(u_input.a.x >> (arg_0.x % 32u)) > abs(1u), false), min(~_wgslsmith_add_i32(var_2.d & var_2.b.b, firstTrailingBit(1i)), -41235i), all(var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, 1000f, 1000f) - global1.a), global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(325f, -499f, -342f) - global1.a) + _wgslsmith_f_op_vec3_f32(max(global1.a, vec3<f32>(global1.a.x, 284f, global1.a.x))))))), true, -2147483647i);
    var var_0 = global1.a.zx;
    let var_1 = func_1(firstTrailingBit(~u_input.c.yz));
    let var_2 = !func_3(Struct_2(67657u, Struct_1(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(-1964f, 359f, var_0.x)), all(var_1.c.xx), var_1.d << (29167u % 32u))), Struct_3(var_1.b.a, ~global1.c & reverseBits(global1.c), var_1.b.b), ~(~abs(u_input.a)));
    global0 = var_0.x;
    var var_3 = Struct_2(1u, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(-739f, -593f, 1000f)) - global1.a))), true, global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_3.b.a.zy, var_3.b.a.zx), vec2<f32>(var_3.b.a.x, -377f), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 549f)), _wgslsmith_f_op_vec2_f32(-var_3.b.a.xx)))), -1i, ~abs(var_1.a.a), _wgslsmith_clamp_i32(i32(-1i) * -47315i, -4653i, ((var_1.b.b | var_3.b.c) << (~u_input.b % 32u)) << (u_input.c.x % 32u)));
}

