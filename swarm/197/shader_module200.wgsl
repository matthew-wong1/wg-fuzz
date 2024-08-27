struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = false;
    var var_1 = var_0;
    let var_2 = (0u ^ select(~12891u, ~1u, true)) ^ ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(57255u, _wgslsmith_mod_u32(13238u, 11493u)), _wgslsmith_dot_vec2_u32(vec2<u32>(21576u, 4294967295u), vec2<u32>(0u, 1u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(109604u, 33893u), vec2<u32>(1u, 4294967295u)) % 32u));
    var_1 = var_0;
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(firstTrailingBit(~var_2), 47213u, var_2), _wgslsmith_clamp_u32(var_2, 4294967295u, ~(var_2 & ~13486u)));
    return select(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3, var_2), vec2<u32>(20103u, 53428u), vec2<u32>(var_2, 0u))), ~vec2<u32>(var_3, var_3)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 25184u, 19623u, 0u), vec4<u32>(var_3, 8935u, var_3, var_2) | vec4<u32>(var_2, 30359u, 8810u, 0u)), _wgslsmith_div_u32(63953u, var_3))), reverseBits(var_3), all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, false, true), var_0), !var_0)) || false);
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<f32>(-801f, -421f, -1186f);
    let var_1 = -1000f;
    let var_2 = func_3(u_input.b.x);
    let var_3 = Struct_4(u_input.b.x <= abs(-1i));
    let var_4 = 1122f;
    return vec3<u32>(~1u, ~(var_2 >> (min(var_2, var_2 << (1u % 32u)) % 32u)), ~4294967295u);
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> i32 {
    let var_0 = ~(-(~u_input.a));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -580f);
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), !vec3<bool>(true, arg_1, true)), func_2()), vec3<u32>(1u, 1u, 1u));
    var_2 = ~firstLeadingBit(select(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 19904u, 69912u), vec3<u32>(var_2.x, 1u, var_2.x))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_2.x, var_2.x, var_2.x), ~vec3<u32>(var_2.x, 25723u, 1659u)), vec3<bool>(true, true, all(vec3<bool>(true, arg_1, true)))));
    var var_3 = arg_0;
    return -17028i | u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 637f, 1255f, 807f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 390f, 296f, -521f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-631f, -648f, 463f, 863f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1757f, _wgslsmith_f_op_f32(-1186f * -1036f), _wgslsmith_div_f32(595f, -1589f), _wgslsmith_f_op_f32(f32(-1f) * -790f)))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(2147483647i, -1i), u_input.b.x, 1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(20319i, u_input.b.x, 11028i, -1i), vec4<i32>(2147483647i, -3559i, u_input.b.x, -46458i)), func_1(Struct_4(true), true)), _wgslsmith_sub_i32(-42321i, 11106i)));
    var var_2 = Struct_4(false);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -218f))) + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x)), -760f);
    var_2 = Struct_4(false);
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1106f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_0.x, -327f, var_3.x) - vec4<f32>(var_3.x, var_3.x, -1729f, -780f)))))));
    let var_4 = vec2<u32>(77120u, 21558u);
    let var_5 = Struct_1(var_3.x, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b.x, var_1.x), ~vec2<i32>(var_1.x, var_1.x), vec2<bool>(var_2.a, var_2.a)) | ~vec2<i32>(1i, var_1.x), -var_1.ww));
    let x = u_input.a;
    s_output = StorageBuffer(47270u, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)), _wgslsmith_f_op_f32(abs(var_5.a)), _wgslsmith_f_op_f32(-433f * -1063f)))));
}

