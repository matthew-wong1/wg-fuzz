struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1028f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> f32 {
    global0 = -535f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -740f), 1f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-136f - -3200f))))), 224f);
    var var_0 = select(!arg_0.wz, vec2<bool>(all(!vec4<bool>(true, arg_0.x, false, true)), all(arg_0.zwy)), vec2<bool>(select(!(u_input.a.x < arg_2), any(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), arg_0, vec4<bool>(arg_0.x, false, false, arg_0.x))), all(arg_0.zx)), all(vec2<bool>(true, true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) + 1f))), 1825f, -125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1521f * -455f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(314f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-821f, -1070f)) - -892f))));
    let var_2 = abs(~reverseBits(~vec4<u32>(1u, 0u, arg_2, u_input.a.x)));
    return -824f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1544f)) - _wgslsmith_f_op_f32(f32(-1f) * -1009f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1979f, -469f)) + _wgslsmith_f_op_f32(-1839f * 368f)), _wgslsmith_f_op_f32(-1292f - _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, false), vec3<i32>(u_input.b.x, 1i, -3569i), 29879u, u_input.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(873f, -706f, 1497f, -653f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(217f, -188f, -205f, 565f), vec4<f32>(449f, 1351f, 1261f, 631f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, -1435f, -1376f, 481f) + vec4<f32>(681f, 1486f, 1000f, -1402f)) * vec4<f32>(-1366f, 1000f, 1000f, -1443f))))));
    var var_1 = Struct_3(var_0.ywx, Struct_1(_wgslsmith_mod_u32((4294967295u | u_input.a.x) & (u_input.a.x >> (u_input.a.x % 32u)), ~u_input.a.x), u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, ~1u, 9137u, ~4294967295u)), ~vec4<u32>(u_input.a.x, 4545u, 4294967295u, u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 83582u)) | (vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(4294967295u, 24762u, u_input.a.x, 23365u))));
    let var_2 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b | ~vec4<i32>(2147483647i, -1i, 1i, u_input.b.x), vec4<i32>(u_input.b.x ^ 2147483647i, -u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(-1i) * -u_input.b), ~(~u_input.b.xyz), ~(_wgslsmith_mod_u32(~u_input.a.x, ~4294967295u) ^ firstLeadingBit(u_input.a.x)), vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x * -1353f), _wgslsmith_f_op_f32(sign(239f)))))));
    let var_3 = Struct_2(72933u >= u_input.a.x);
    global0 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(var_2.c, firstTrailingBit(38896u));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global0 = 2161f;
    global0 = -568f;
    var var_0 = u_input.a;
    var_0 = _wgslsmith_mult_vec2_u32(u_input.a, ~_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a & vec2<u32>(var_0.x, u_input.a.x)), ~(~u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1203f)) * -780f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(994f)), _wgslsmith_div_f32(122f, 1191f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2329f, -771f) + vec2<f32>(413f, -328f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-701f, _wgslsmith_f_op_f32(529f * 300f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(500f, -815f) - vec2<f32>(505f, 1460f)))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -675f))))), var_1.x);
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_2()));
    var var_1 = Struct_1(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 15754u));
    var var_2 = vec3<f32>(897f, var_0.x, arg_0.d.x);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -437f, 2303f)) - _wgslsmith_f_op_vec3_f32(-var_0)) - var_0)));
    let var_4 = var_2.x;
    return ~13686u;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = Struct_4(-_wgslsmith_div_i32(50154i, max(_wgslsmith_sub_i32(1i, u_input.b.x), arg_3)), u_input.b.wwx, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(43831u, u_input.a.x, 8196u, arg_2.a), vec4<u32>(u_input.a.x, arg_2.b, 0u, 4505u)), 1u), 4294967295u, func_2().b), arg_1.zz);
    global0 = _wgslsmith_f_op_f32(abs(1551f));
    global0 = 1266f;
    global0 = _wgslsmith_f_op_f32(floor(arg_1.x));
    let var_1 = select(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(-2147483647i >= var_0.a, true));
    return _wgslsmith_mod_i32(42678i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(~reverseBits(u_input.a.x) >> (~(~86005u) % 32u), u_input.a.x, func_1(Struct_4(38765i, u_input.b.wzw, u_input.a.x, vec2<f32>(-1000f, -466f))) | abs(1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(548f, -783f, -1235f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1061f, 1154f, 266f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(189f, -137f, 213f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-613f, 1260f, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, -442f, 647f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(653f, -461f, 311f), vec3<f32>(485f, -1569f, 1357f))))), vec3<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))))), func_2(), -20761i);
    let var_1 = Struct_4(var_0, vec3<i32>(-abs(-2147483647i << (u_input.a.x % 32u)), ~u_input.b.x, -19426i), _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(188f, -956f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 921f))))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), true))));
    global0 = -1191f;
    let var_2 = 0u;
    var var_3 = var_1;
    var_3 = var_1;
    let var_4 = 4294967295u;
    var var_5 = _wgslsmith_div_vec2_u32(u_input.a, u_input.a ^ ~(u_input.a | ~vec2<u32>(1u, 17189u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(1961f + _wgslsmith_f_op_f32(var_1.d.x * -1903f))), -823f), vec2<f32>(-126f, 223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1465f * var_1.d.x), _wgslsmith_div_f32(var_1.d.x, var_3.d.x))))), ~u_input.a, var_2);
}

