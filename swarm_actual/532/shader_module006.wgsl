struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 9631u;

var<private> global1: Struct_1 = Struct_1(-672f, -1i, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))))), -_wgslsmith_div_i32(59347i, 1i | ~u_input.b.x), true);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(993f, global1.a))) * -491f) + arg_2), abs(~u_input.b.x), !(global1.a < global1.a));
    global1 = var_0;
    global0 = 1u;
    let var_1 = Struct_1(arg_2, -2147483647i, false);
    return arg_2;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(func_3(global1.c, 51671u, global1.a, firstLeadingBit(vec4<i32>(1i, u_input.b.x, u_input.b.x, -1i)))))), ~(-37562i), global1.c | !(!global1.c));
    var var_2 = var_1;
    let var_3 = Struct_2(var_1);
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.a.a, var_3.a.a, any(select(vec2<bool>(global1.c, false), vec2<bool>(global1.c, true), vec2<bool>(false, var_2.c))))), _wgslsmith_f_op_f32(exp2(var_3.a.a))), i32(-1i) * -1i, false);
    return Struct_1(-1016f, global1.b, var_2.c && !var_4.c);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> bool {
    global0 = 11482u;
    let var_0 = !(!select(!select(vec4<bool>(arg_0.c, true, global1.c, global1.c), vec4<bool>(global1.c, global1.c, arg_0.c, global1.c), vec4<bool>(false, true, false, arg_0.c)), select(vec4<bool>(global1.c, arg_0.c, true, false), !vec4<bool>(true, global1.c, global1.c, false), true), vec4<bool>(true, !global1.c, -335f < global1.a, arg_0.c)));
    let var_1 = Struct_2(func_2(~arg_1));
    var var_2 = global1.b & abs(i32(-1i) * -18992i);
    var var_3 = firstLeadingBit(arg_0.b);
    return !(!(arg_1 == u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(~abs(u_input.a.x >> (u_input.a.x % 32u)) != ~_wgslsmith_dot_vec2_u32(u_input.a.zy & u_input.a.xx, u_input.a.xz), all(vec4<bool>(any(select(vec2<bool>(global1.c, global1.c), vec2<bool>(true, global1.c), vec2<bool>(global1.c, true))), true, func_1(Struct_1(736f, global1.b, true), 42320u, vec4<i32>(-52576i, 0i, global1.b, u_input.b.x)), ~1u != u_input.a.x)), select(true, global1.c, any(vec2<bool>(!global1.c, global1.c))));
    let var_1 = Struct_3(_wgslsmith_mult_u32(u_input.a.x, ~117249u) << (firstLeadingBit(abs(u_input.a.x)) % 32u), func_2(~(~(~4294967295u))).c, reverseBits(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 13824u) >> (u_input.a.xz % vec2<u32>(32u))))), Struct_1(664f, min(_wgslsmith_add_i32(~global1.b, min(global1.b, 1i)), -global1.b), global1.c));
    let var_2 = 1000f;
    var var_3 = -1053f;
    let var_4 = Struct_2(var_1.d);
    var var_5 = var_4.a.b;
    var var_6 = _wgslsmith_mult_i32(firstTrailingBit(29506i), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(156i, -var_1.d.b, u_input.b.x), 33023i), -_wgslsmith_mult_i32(i32(-1i) * -3907i, var_4.a.b << (27355u % 32u))));
    var var_7 = select(vec3<bool>(true, var_1.d.c & true, global1.c), !var_0, !func_2(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, var_4.a.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(344f, var_4.a.a), vec2<f32>(var_1.d.a, var_1.d.a), vec2<bool>(var_4.a.c, true))))))))), var_1.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(648f * 1f), var_2, _wgslsmith_f_op_f32(step(var_1.d.a, _wgslsmith_f_op_f32(-1080f * var_1.d.a))), var_4.a.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_4.a.a, -268f), func_2(1u).a, global1.a, var_4.a.a))))));
}

