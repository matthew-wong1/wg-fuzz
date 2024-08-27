struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32 = -198f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.c;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2266f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)))));
    let var_3 = !vec2<bool>(false & all(vec4<bool>(true, true, true, true)), (~4294967295u & u_input.c) > (42575u << (u_input.c % 32u)));
    return ~(~vec2<u32>(21100u, _wgslsmith_add_u32(1u, ~4294967295u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> vec3<f32> {
    var var_0 = !select(vec3<bool>(false, false, !(837f != arg_2)), select(vec3<bool>(true, all(vec2<bool>(arg_0, arg_0)), true), !(!vec3<bool>(arg_0, false, arg_1)), (arg_0 || arg_1) != false), select(select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_1, true, true), vec3<bool>(true, arg_0, arg_1)), vec3<bool>(arg_0, arg_1, false), !vec3<bool>(arg_0, arg_1, arg_1)), !select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(false, false, true)), arg_1));
    var_0 = !select(!select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, var_0.x)), !vec3<bool>(arg_0, arg_1, true), var_0.x), vec3<bool>(abs(6522u) <= reverseBits(u_input.c), !arg_0, arg_1), u_input.c >= select(_wgslsmith_clamp_u32(5330u, 4294967295u, u_input.c), ~4294967295u, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 * arg_2))), global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-598f + global0.x)));
    var_0 = !vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), !(firstLeadingBit(u_input.c) >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(0u, 76439u, 4294967295u))), any(vec2<bool>(arg_1, all(vec4<bool>(true, arg_1, true, true)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1162f - _wgslsmith_f_op_f32(arg_2 * var_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(283f - -1126f))))))), var_1.x);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, global0.x, var_1.x) - vec3<f32>(global0.x, -995f, 113f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-966f)), arg_2, _wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, 1000f)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 897f))) * _wgslsmith_f_op_vec2_f32(-arg_2.a.yx)))))));
    var var_0 = reverseBits(15547i);
    var var_1 = arg_2.d.yy;
    return ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 78330u, arg_2.c.x, arg_1.a.x), vec4<u32>(0u, u_input.c, 16852u, 1u)), arg_2.c.x, _wgslsmith_add_u32(firstTrailingBit(arg_2.c.x), arg_1.a.x), ~arg_1.a.x) ^ (vec4<u32>(~arg_0.a.x & 4294967295u, 1u, arg_0.a.x, max(7723u | arg_2.c.x, 1u | u_input.c)) | ~arg_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_1(~func_4(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 11334u, var_0.x, var_0.x), vec4<u32>(var_0.x, 53338u, 21258u, 1u)), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(2125u, var_0.x, u_input.c, 63203u), vec4<u32>(37493u, u_input.c, 16144u, 1u)), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, -37224i))), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(true, false, 596f)), _wgslsmith_f_op_vec3_f32(func_3(false, true, -246f)).x, vec2<u32>(u_input.c, var_0.x), vec3<bool>(true, true, false)), 212f), _wgslsmith_mult_i32(-1i, reverseBits(_wgslsmith_sub_i32(max(u_input.b.x, u_input.a), ~u_input.d))));
    global1 = 801f;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(2295f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, 1096f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-618f, global0.x))));
    var var_0 = 27343i;
    let var_1 = Struct_1(vec4<u32>(4294967295u | (1u >> (min(53469u, u_input.c) % 32u)), _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(4294967295u, u_input.c, u_input.c)), vec3<u32>(u_input.c, 37308u, u_input.c), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), ~vec3<u32>(67684u, u_input.c, u_input.c)), u_input.c, 0u), i32(-1i) * -38325i);
    let var_2 = -(~3422i);
    var var_3 = func_1();
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -287f), 443f)) - global0.x))));
    let var_5 = all(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), true)), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(all(vec3<bool>(false, true, false)), false, any(vec2<bool>(true, false)), true), true && any(vec2<bool>(true, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-var_3.b)));
}

