struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = 0i;
    let var_1 = arg_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))), arg_1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - -1000f))), -472f) - 1282f), var_1.a, -1000f);
    var var_3 = var_1;
    var_3 = Struct_1(1498f, var_3.d.x, ~1u, vec2<bool>(false, var_3.b));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = abs(u_input.a);
    let var_1 = arg_1;
    var var_2 = select(min(arg_1.c & var_0.x, 22947u), ~u_input.b.x, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))) == arg_1.a) & all(select(vec3<bool>(arg_1.b, arg_1.d.x, true), !vec3<bool>(var_1.b, true, true), func_3(vec4<f32>(-195f, -686f, -1000f, -421f), Struct_1(1000f, false, var_1.c, arg_1.d), -21366i))));
    var_2 = select(32698u, countOneBits(var_0.x), arg_1.b) >> (((~min(4294967295u, u_input.b.x) & var_0.x) << (1u % 32u)) % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-685f * arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)) + _wgslsmith_f_op_f32(f32(-1f) * -1366f))), arg_1.b, _wgslsmith_clamp_u32(select(var_0.x ^ arg_1.c, u_input.a.x, true), _wgslsmith_div_u32(~var_1.c, countOneBits(arg_1.c)), min(abs(var_0.x), 0u)) | _wgslsmith_sub_u32(4294967295u, ~arg_1.c), vec2<bool>(true, !func_3(arg_0, Struct_1(arg_1.a, arg_1.d.x, 0u, vec2<bool>(true, var_1.b)), max(19124i, -69313i))));
    return var_1;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1154f, -737f)) + -606f), -2972f, _wgslsmith_f_op_f32(-641f + arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -715f)), Struct_1(arg_0.a, !arg_0.d.x, ~arg_0.c, vec2<bool>(false, ~16773u < arg_0.c)));
    var var_1 = !select(vec3<bool>(true, var_0.d.x, var_0.d.x), select(!(!vec3<bool>(arg_0.d.x, var_0.b, false)), select(!vec3<bool>(var_0.b, true, false), !vec3<bool>(true, true, arg_0.b), all(arg_0.d)), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, var_0.d.x), vec3<bool>(false, true, false), vec3<bool>(arg_0.d.x, false, true)), vec3<bool>(arg_0.b, var_0.d.x, true))), var_0.b);
    var var_2 = ~vec2<i32>(1i, 1i);
    var var_3 = func_2(vec4<f32>(1485f, _wgslsmith_f_op_f32(-arg_0.a), -1504f, -702f), var_0);
    var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), var_3.a), !(~(4294967295u << (var_3.c % 32u)) <= 30254u), ~18794u, vec2<bool>(arg_0.d.x, false));
    return ~(vec3<u32>(~max(arg_0.c, u_input.b.x), max(~arg_0.c, var_3.c), ~arg_0.c) & ~reverseBits(vec3<u32>(var_3.c, var_0.c, 29928u)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: f32) -> bool {
    var var_0 = Struct_1(155f, true, select(_wgslsmith_clamp_u32(~arg_2.x, 39183u, ~abs(arg_1.x)), arg_1.x, true), vec2<bool>(true, true));
    var var_1 = Struct_1(-797f, all(vec4<bool>(all(select(var_0.d, vec2<bool>(var_0.d.x, var_0.b), vec2<bool>(var_0.b, false))), var_0.d.x, false, !func_3(vec4<f32>(880f, -144f, arg_0, var_0.a), Struct_1(var_0.a, var_0.b, u_input.a.x, var_0.d), -50164i))), _wgslsmith_mod_u32(u_input.a.x, ~0u), var_0.d);
    return func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-1716f - -113f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1268f))), arg_3, 126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), func_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-297f, 795f)))), 1000f, -367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -164f) + -2313f)), Struct_1(-887f, any(!vec3<bool>(var_0.d.x, false, var_0.d.x)), _wgslsmith_sub_u32(var_1.c, 92076u | var_1.c), vec2<bool>(true, var_1.b))), firstLeadingBit(min(-59051i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -46178i), vec2<i32>(-51033i, -1i))) ^ firstLeadingBit(41828i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>) -> StorageBuffer {
    var var_0 = arg_1.x;
    var_0 = arg_1.x;
    let var_1 = 1i;
    var var_2 = firstLeadingBit(4294967295u);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1332f), _wgslsmith_f_op_f32(step(1312f, -1117f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-926f, 252f)))), !(!arg_1.zz))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, -1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-421f, -887f))))), func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-216f, 779f, 421f, 1000f))), Struct_1(617f, false, 43766u, vec2<bool>(arg_1.x, true))).d)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2452f, 1019f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(469f, 629f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-376f, -986f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1516f, 1877f))))))));
    return StorageBuffer(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(1u, 1u);
    var_0 = 76760u;
    var_0 = 101170u;
    let var_1 = Struct_1(555f, true, ~u_input.b.x, vec2<bool>(true, !(!any(vec3<bool>(false, false, true)))));
    var_0 = u_input.b.x;
    var_0 = var_1.c;
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = func_5(-(~vec2<i32>(1i, 1i)), vec3<bool>(any(!vec4<bool>(true, true, true, var_1.d.x)), any(select(vec2<bool>(var_1.d.x, var_1.b), var_1.d, vec2<bool>(false, true))), !func_4(-202f, func_1(var_1), firstTrailingBit(vec3<u32>(9365u, var_1.c, u_input.b.x)), _wgslsmith_f_op_f32(select(var_1.a, -1000f, var_1.d.x)))));
}

