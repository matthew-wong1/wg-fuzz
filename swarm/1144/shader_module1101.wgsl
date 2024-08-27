struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = arg_3.d.e.xww;
    var var_1 = Struct_3(1f, Struct_2(2147483647i >= arg_2), arg_3.c, arg_3.d, _wgslsmith_dot_vec2_i32(max(firstLeadingBit(arg_3.d.b), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_3.d.b.x), arg_3.d.b)) ^ select(arg_3.d.b, min(arg_3.d.b, arg_3.d.b), false), arg_3.d.b));
    var_1 = Struct_3(_wgslsmith_div_f32(arg_3.a, var_1.a), var_1.c, arg_3.b, Struct_1(!vec3<bool>(var_1.d.a.x && true, true, arg_3.b.a), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -arg_3.d.b), select(select(vec2<bool>(var_1.b.a, arg_0.x), vec2<bool>(true, arg_0.x), !vec2<bool>(var_1.c.a, arg_3.d.a.x)), !vec2<bool>(var_1.b.a, false), vec2<bool>(arg_3.a > arg_1, !arg_3.c.a)), var_1.d.d, var_1.d.e), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(var_1.e, 0i) << (vec2<u32>(0u, arg_3.d.d) % vec2<u32>(32u))), vec2<i32>(-2147483647i, reverseBits(-9062i))));
    let var_2 = -275f;
    let var_3 = arg_3;
    return vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~arg_2, 1i), arg_2), select(var_1.e, 2147483647i, var_3.c.a));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = all(select(!(!select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), arg_0));
    let var_1 = func_3(select(vec2<bool>(false, var_0), vec2<bool>(select(true, !arg_1.a, arg_1.a | arg_1.a), true), vec2<bool>(true, !(!arg_1.a))), -1714f, 23444i, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1493f - -1324f), _wgslsmith_f_op_f32(1554f + -360f)))), arg_1, arg_1, Struct_1(!(!vec3<bool>(arg_1.a, arg_0, false)), vec2<i32>(-1i, -2147483647i), vec2<bool>(arg_1.a, true), u_input.a.x, firstLeadingBit(reverseBits(vec4<u32>(0u, u_input.a.x, 46886u, u_input.a.x)))), abs(-9662i)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1479f, -2176f), 543f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(656f, 1000f) * vec2<f32>(610f, -339f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, 604f)) - vec2<f32>(-622f, 1000f)))));
    var var_3 = ~vec4<i32>(var_1.x, reverseBits(~(-2147483647i)), abs(-5984i), -(i32(-1i) * -15577i));
    var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, abs(-2147483647i), var_3.x >> (26139u % 32u)), -vec4<i32>(var_3.x | reverseBits(var_1.x), var_1.x, -20802i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_3.xw, vec2<i32>(var_3.x, 2147483647i)), var_1.x)), firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, -21126i, var_1.x, var_3.x), select(vec4<i32>(var_3.x, var_3.x, var_1.x, -1493i), vec4<i32>(0i, var_3.x, var_3.x, var_1.x), arg_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 479i, -2147483647i, var_1.x), vec4<i32>(2147483647i, var_1.x, var_1.x, var_3.x))))));
    return Struct_1(select(!select(select(vec3<bool>(var_0, true, arg_1.a), vec3<bool>(arg_0, true, var_0), vec3<bool>(arg_1.a, true, arg_1.a)), vec3<bool>(true, true, arg_1.a), var_0), !vec3<bool>(1776f != var_2.x, var_1.x != -2147483647i, true), select(!(!vec3<bool>(arg_1.a, false, var_0)), vec3<bool>(arg_1.a, arg_0, true), any(select(vec3<bool>(false, var_0, true), vec3<bool>(true, true, var_0), vec3<bool>(true, true, true))))), ~var_1, select(select(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), arg_0), vec2<bool>(true, true), 1u >= u_input.a.x), vec2<bool>(true, true), vec2<bool>(true, true)), ~_wgslsmith_sub_u32(~(~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(14888u, 63949u, u_input.a.x)) & (u_input.a.x ^ 38892u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 20502u, u_input.a.x, 1u), vec4<u32>(35763u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 25746u), vec4<u32>(42880u, u_input.a.x, u_input.a.x, 23844u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 27036u)))), u_input.a.x, 47459u >> (u_input.a.x % 32u), u_input.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    let var_0 = 2599i;
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-1i, arg_2.x), _wgslsmith_sub_i32(select(~arg_2.x, 40163i, !arg_0.a), 0i));
    let var_2 = func_2(arg_0.a, Struct_2(!(!(true || arg_0.a))));
    var var_3 = -(~11229i);
    var_3 = 14330i | _wgslsmith_add_i32(~(-(~arg_1)), 28089i);
    return _wgslsmith_sub_i32(-6726i, -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.yy, arg_2.zy) ^ vec2<i32>(1i, 0i), ~(-vec2<i32>(var_0, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-18460i, -70147i, -4102i), func_1(Struct_2(true), 1i, vec4<i32>(2147483647i, 2147483647i, -1i, 0i), -255f), ~9764i, _wgslsmith_sub_i32(1820i, -1i)), ~vec4<i32>(-87608i, 2147483647i, -29532i, 66881i));
    var_0 = -reverseBits(-vec4<i32>(firstLeadingBit(var_0.x), -var_0.x, ~(-27478i), var_0.x));
    var var_1 = Struct_2(true);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1974f, 409f)), _wgslsmith_div_f32(322f, 2163f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f + -975f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(472f, -1517f) + _wgslsmith_f_op_f32(f32(-1f) * -555f))))), var_1.a));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(f32(-1f) * -686f))), Struct_2(false), Struct_2(any(vec4<bool>(var_1.a, all(vec4<bool>(false, var_1.a, var_1.a, var_1.a)), select(var_1.a, true, true), false))), func_2(true, Struct_2(!(var_1.a != var_1.a))), 1i);
    let var_4 = select(~1u, 4294967295u, false);
    let var_5 = vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a - 888f) * 1000f)))), var_3.a, _wgslsmith_f_op_f32(var_3.a + var_3.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a - -796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))))));
    var var_6 = -vec3<i32>(var_0.x, var_3.e, -29097i);
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.a, 768f, 1215f))) * _wgslsmith_f_op_vec3_f32(var_5.zzy + vec3<f32>(var_3.a, 1420f, var_5.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_5.yxz, vec3<f32>(-1668f, var_3.a, -1094f))))) - vec3<f32>(_wgslsmith_div_f32(-1542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.x, var_3.a)))), 319f, var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(848f, var_3.a, var_3.c.a)))))), 4294967295u, _wgslsmith_div_vec2_f32(var_5.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(897f, -397f) - vec2<f32>(var_5.x, var_5.x)) * var_7.yx))), min(vec3<i32>(-(~var_6.x), i32(-1i) * -7517i, -1573i), var_0.xwz), var_6.yx);
}

