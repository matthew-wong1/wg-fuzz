struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = u_input.a.yx;
    let var_1 = _wgslsmith_f_op_f32(-2493f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(294f))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) * -537f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + var_1))), var_1))));
    let var_3 = true;
    var var_4 = 4294967295u;
    return ~(~abs(1u)) << (firstTrailingBit(4294967295u) % 32u);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1690f, 1000f, 444f, 511f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f) - _wgslsmith_f_op_f32(f32(-1f) * -857f)), _wgslsmith_f_op_f32(abs(-145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1456f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(498f, -824f)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), var_0.x);
    var var_2 = false;
    var var_3 = false;
    var var_4 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f + _wgslsmith_div_f32(var_1, var_1))), _wgslsmith_f_op_f32(561f * 275f)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_3(!vec2<bool>(arg_0.x, false)));
    var var_1 = firstTrailingBit(arg_1.x);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0, 1032f)), _wgslsmith_f_op_f32(abs(-2135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1638f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, arg_0.x))) * -1136f), 325f)));
    let var_3 = -128f;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1563f, var_2.x, 614f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_0, 484f) * vec3<f32>(var_3, -716f, 1351f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1898f, var_3, -1031f))))))));
    return arg_1.wwz >> (((arg_1.zxx >> (~(vec3<u32>(49707u, 69866u, 4294967295u) >> (arg_1.zyx % vec3<u32>(32u))) % vec3<u32>(32u))) | reverseBits(firstTrailingBit(firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, arg_1.x))))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, 270f, 672f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1298f, 623f, 217f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(293f, 241f, 1000f), vec3<f32>(124f, 1461f, 399f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(853f, -846f, -684f))) * vec3<f32>(-1546f, -259f, -1288f)) - vec3<f32>(_wgslsmith_f_op_f32(-429f - 267f), 339f, -551f)), any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2021f, _wgslsmith_f_op_f32(var_1.a.x - -1148f), 1f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(trunc(var_1.a.x))) * vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), var_1.a.x))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(525f)), var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(358f * 2038f))), _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)), 1014f);
    let var_4 = func_1();
    var var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(var_1.a.x * 626f))));
    var var_6 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_4, 1u), firstTrailingBit(vec2<u32>(79084u, 4294967295u))), 1u, abs(firstTrailingBit(var_4))), min(func_2(vec2<bool>(false, any(vec4<bool>(true, true, true, false))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_4, 1u, 3454u, var_4), vec4<u32>(var_4, 52575u, 0u, 1u))), vec3<u32>(26591u, 31903u | _wgslsmith_add_u32(4294967295u, var_4), var_4)));
    var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)));
    let var_7 = ~(~(~(~vec4<u32>(var_6.x, var_4, 4294967295u, 2688u) >> (firstTrailingBit(vec4<u32>(1u, 0u, var_4, 4254u)) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, (-2147483647i | _wgslsmith_add_i32(u_input.a.x, -20881i)) << (firstLeadingBit(_wgslsmith_mod_u32(var_6.x, var_6.x)) % 32u), ~(i32(-1i) * -614i), ~(u_input.a.x | u_input.a.x) >> (var_7.x % 32u)), var_3.zwz, var_1.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1151f, -303f, var_1.a.x, var_2.x)), vec4<f32>(var_3.x, 408f, 640f, var_3.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, 185f, 1000f, -629f)))))))));
}

