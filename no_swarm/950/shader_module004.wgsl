struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec4<f32> {
    var var_0 = false;
    var var_1 = vec3<bool>(!any(vec4<bool>(true, !arg_1, false && arg_1, arg_1)), arg_1, !(!any(vec2<bool>(true, true))));
    var_0 = var_1.x;
    let var_2 = abs(select(1u, ~(~_wgslsmith_div_u32(0u, 3369u)), true));
    let var_3 = Struct_1(-8978i, ~(~(98197u & u_input.d.x) | var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -579f, -1000f, 114f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1266f + 790f)), 1205f, _wgslsmith_f_op_f32(select(-1205f, _wgslsmith_f_op_f32(max(134f, 653f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1336f))), var_1.zx);
    return _wgslsmith_f_op_vec4_f32(var_3.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-774f, var_3.c.x, 2142f, -857f)))))) - var_3.c));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec4<f32>(967f, -1000f, -1176f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-792f, _wgslsmith_f_op_f32(-arg_2.c.x))), -336f)), _wgslsmith_f_op_f32(f32(-1f) * -272f), u_input.d.x == 4294967295u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1693f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) * 747f), arg_2.c.x));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.xx, !any(vec3<bool>(false, false, arg_1.c.d.x))))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: bool) -> vec2<bool> {
    let var_0 = select(vec2<bool>(!(true || all(vec3<bool>(false, arg_0, arg_1))), select(true, true, !any(vec3<bool>(false, true, arg_3)))), !vec2<bool>(!any(vec4<bool>(arg_1, false, false, false)), !all(vec4<bool>(arg_3, arg_1, arg_1, arg_0))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1257f, _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(ceil(-694f))) + _wgslsmith_f_op_vec2_f32(arg_2.wy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.wy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1232f, -1131f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zz * _wgslsmith_f_op_vec2_f32(-arg_2.yy)))));
    var var_2 = true;
    var var_3 = u_input.c;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1479f, -1662f), vec2<f32>(var_1.x, -2428f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.zx, vec2<f32>(260f, -325f), var_0)) + vec2<f32>(_wgslsmith_div_f32(1564f, 1740f), -1441f))) * _wgslsmith_f_op_vec2_f32(arg_2.zw + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1732f, 527f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, -2689f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.wz), arg_2.xy))));
    return var_0;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_1(u_input.c >> (~(_wgslsmith_add_u32(u_input.d.x, 2302u) >> (~1u % 32u)) % 32u), _wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 26290u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-427f, -247f, 197f, -1158f), vec4<f32>(-1482f, 254f, -201f, 1303f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-2082f, -229f, -127f, 871f), vec4<f32>(238f, 1840f, 1133f, -427f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1070f, 1000f, -805f, -1842f)), u_input.d.x == u_input.d.x)))), func_4(arg_0, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(true, arg_0, arg_0, arg_0), Struct_2(Struct_1(3028i, 21628u, vec4<f32>(2470f, -1284f, -1551f, 1684f), vec2<bool>(arg_0, false)), 32990u, Struct_1(-2147483647i, u_input.d.x, vec4<f32>(-100f, 170f, 1000f, 127f), vec2<bool>(arg_0, arg_0))), Struct_1(u_input.c, u_input.d.x, vec4<f32>(-1000f, -3148f, 261f, -753f), vec2<bool>(arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1801f, -646f, -665f, 1171f) - vec4<f32>(136f, 1000f, 1086f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -687f, -363f, -275f))), arg_0));
    let var_1 = Struct_1(1i, ~_wgslsmith_clamp_u32(~0u, ~(~1u), _wgslsmith_div_u32(0u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(-5186i, -13062i), true)).x, _wgslsmith_f_op_f32(exp2(var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(1022f * -1119f))))), select(vec2<bool>(var_0.d.x, select(var_0.c.x <= 350f, var_0.d.x & true, true)), !vec2<bool>(any(vec4<bool>(false, true, arg_0, arg_0)), !var_0.d.x), all(!vec3<bool>(arg_0, true, false))));
    var_0 = var_1;
    let var_2 = Struct_1(select(firstLeadingBit(u_input.c), -2147483647i, var_1.d.x), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.d.x), Struct_2(var_1, 0u, Struct_1(var_1.a, var_1.b, var_1.c, var_0.d)), var_1))))) * vec4<f32>(_wgslsmith_f_op_f32(round(-2099f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f + var_0.c.x) * var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.x))), -322f)), select(vec2<bool>(true, false), var_0.d, vec2<bool>(!(!var_0.d.x), var_0.d.x)));
    var_0 = Struct_1(1i, abs(var_1.b) | ~firstLeadingBit(~42530u), vec4<f32>(-371f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(992f, -623f)) + _wgslsmith_f_op_f32(trunc(var_0.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f + -2362f))), _wgslsmith_f_op_f32(f32(-1f) * -1230f)), select(vec2<bool>(arg_0, var_0.d.x), !vec2<bool>(any(vec2<bool>(false, arg_0)), false), vec2<bool>((var_2.a >= var_2.a) & false, func_4(true, var_1.d.x, _wgslsmith_f_op_vec4_f32(-var_0.c), arg_0).x)));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-34443i, _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(max(vec3<i32>(u_input.c, -3844i, -2147483647i), u_input.b) << (~vec3<u32>(u_input.d.x, u_input.d.x, 13897u) % vec3<u32>(32u)))), ~1i);
    var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, 581f, -556f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-328f, 589f, -1086f) - vec3<f32>(259f, 160f, 585f)))), vec3<f32>(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1446f * 1659f), _wgslsmith_div_f32(-1000f, -461f)), _wgslsmith_f_op_f32(-1311f - -545f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-221f, -1000f, -1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2977f, 1870f, 125f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, -23516i, u_input.b.x), u_input.b), u_input.b), u_input.d.x, abs(~reverseBits(vec4<i32>(-33825i, -1i, 0i, -91751i))));
}

