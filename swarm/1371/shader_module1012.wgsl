struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, 1000f, 499f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1470f, -1602f, 1076f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, -1411f, -1197f))))), min(0u, u_input.b.x << (u_input.b.x % 32u)) <= u_input.b.x, select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, false)), true), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), u_input.b) < 53090u, all(vec4<bool>(true, true, false, true)), true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-354f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(950f, -1441f, true)))))) + -824f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f))));
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = Struct_1(vec3<f32>(-1279f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1489f, _wgslsmith_f_op_f32(f32(-1f) * -846f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(func_3())) * _wgslsmith_div_f32(-1531f, _wgslsmith_f_op_f32(trunc(-134f))))), arg_0, vec4<bool>(any(vec4<bool>(true, true, any(vec4<bool>(arg_0, arg_0, arg_0, false)), arg_0)), false, any(vec2<bool>(true, !arg_0)), ~(u_input.b.x | u_input.b.x) > u_input.b.x), 343f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1603f, -1112f, -415f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, var_0.a.x, 556f)))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.d, var_0.a.x)), _wgslsmith_f_op_f32(select(-320f, var_0.d, true)), _wgslsmith_f_op_f32(abs(var_0.a.x)))), vec3<bool>(any(vec3<bool>(false, var_0.c.x, false)), var_0.c.x, false))), var_0.b, select(vec4<bool>(arg_0, select(var_0.b, false, var_0.c.x), u_input.b.x <= u_input.b.x, true), var_0.c, arg_0 && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_f32(f32(-1f) * -198f))));
    var var_2 = !(!var_0.c.zxz);
    var_2 = var_1.c.xyz;
    let var_3 = var_1;
    return any(var_0.c.wyx);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) * _wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(min(945f, 410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-265f)))));
    let var_1 = countOneBits(u_input.b);
    let var_2 = ~(~var_1.wwz);
    return !func_2(-(~u_input.a) != -_wgslsmith_add_i32(u_input.a, -1i), -6523i);
}

fn func_4(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3()))))));
    var var_1 = 427f;
    let var_2 = select(select(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), true), vec4<bool>(any(vec3<bool>(true, true, false)), true, 4129i < u_input.a, true)), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, all(vec2<bool>(true, false)), true, true), true)), select(vec4<bool>(select(true, true, true), true, func_2(true, i32(-1i) * -54357i), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(func_2(false, ~arg_0), any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)), true)), select(!vec4<bool>(false, true, true, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) + 1481f) - _wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(f32(-1f) * -1094f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -325f, var_2.x)) + _wgslsmith_f_op_f32(-939f - -438f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f))))));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)), 1016f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), -1639f, _wgslsmith_f_op_f32(f32(-1f) * -661f))))), var_2.x, select(var_2, var_2, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-363f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -457f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1769f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(-506f * -1878f)))));
    let var_1 = vec3<i32>(1i, -10472i, ~u_input.a);
    let var_2 = func_4(~(-45737i), select(u_input.b.x, _wgslsmith_mult_u32(firstLeadingBit(~u_input.b.x), _wgslsmith_div_u32(35706u, ~u_input.b.x)), select(u_input.a, ~2147483647i, func_1(u_input.b.x, u_input.b.xx)) <= u_input.a));
    var var_3 = vec4<bool>(var_2.c.x, var_2.c.x, false, false || select(true, false, all(var_2.c.wxz) && func_1(u_input.b.x, u_input.b.wx)));
    let var_4 = true;
    let var_5 = func_4(u_input.a, 4294967295u);
    var var_6 = false;
    var var_7 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_5.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.x, var_5.a.x, -1874f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_5.a, vec3<f32>(-1772f, var_5.d, 180f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1246f, var_5.d, -969f)))))), var_5.b, var_5.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(1048i, 4294967295u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1206f, var_2.d, var_7.a.x, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1767f, 892f, -2140f, 162f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_7.a.x, var_5.a.x, -619f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-852f, var_2.d, var_7.a.x, var_5.d))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, var_7.d, 1371f, var_7.d)) + vec4<f32>(var_7.a.x, -951f, 205f, -889f))))), _wgslsmith_f_op_f32(115f + var_5.d), _wgslsmith_dot_vec3_i32(var_1, _wgslsmith_mod_vec3_i32(var_1, var_1)));
}

