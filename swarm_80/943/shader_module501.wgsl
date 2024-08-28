struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    let var_0 = vec2<f32>(-1760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.a.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(826f * arg_0.b.a.x) - 882f), arg_1.a.a.x, false))));
    var var_1 = arg_0.b.a.x;
    let var_2 = arg_1.a;
    var var_3 = vec4<bool>(false, true, select(true, (u_input.b.x | u_input.b.x) <= _wgslsmith_mult_u32(var_2.b, arg_2), all(vec2<bool>(true, true)) & all(vec2<bool>(true, false))) && false, false);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) * var_0.x))) - _wgslsmith_f_op_f32(292f + _wgslsmith_f_op_f32(trunc(arg_1.a.a.x)))) + var_0.x);
    return arg_1.a.a;
}

fn func_2() -> Struct_1 {
    var var_0 = max(-u_input.a.x, ~u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-605f, 2132f, 1090f))), 15000u), Struct_1(vec3<f32>(141f, -894f, -1896f), u_input.b.x)), Struct_2(Struct_1(vec3<f32>(-1757f, -1122f, 1782f), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, -1542f, 523f) + vec3<f32>(-1193f, -659f, -114f)), u_input.b.x)), ~720u)), 9753u << ((u_input.b.x << (_wgslsmith_sub_u32(u_input.b.x, 1u) % 32u)) % 32u));
    let var_2 = Struct_1(var_1.a, _wgslsmith_mult_u32(var_1.b, min(_wgslsmith_mult_u32(~u_input.b.x, ~18948u), u_input.b.x)));
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> vec4<f32> {
    var var_0 = select(~abs(select(0i, u_input.a.x, arg_0)) >> (~62768u % 32u), -(~35910i ^ u_input.a.x), arg_0);
    var_0 = u_input.a.x;
    var var_1 = arg_0 && arg_0;
    var_0 = u_input.a.x;
    let var_2 = -(_wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 14455i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(11204i, u_input.a.x, -5954i), reverseBits(vec3<i32>(u_input.a.x, 0i, 1i)), max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))) >> (vec3<u32>(4294967295u, ~(~0u), func_2().b) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, -648f, -277f), vec4<f32>(arg_1.a.x, 1911f, -3107f, arg_1.a.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(floor(918f)), arg_1.a.x, _wgslsmith_f_op_f32(exp2(arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -413f, arg_1.a.x, 1000f) * vec4<f32>(arg_1.a.x, arg_1.a.x, -785f, arg_1.a.x))), arg_0)) - vec4<f32>(1f, _wgslsmith_f_op_f32(-arg_1.a.x), 445f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -694f), arg_1.a.x)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f + -555f)))), -1486f), 0u);
    var_0 = Struct_1(vec3<f32>(-268f, arg_1.x, _wgslsmith_f_op_f32(-arg_3.x)), 1u);
    let var_1 = vec2<bool>(true || !((u_input.a.x ^ 2147483647i) != firstLeadingBit(u_input.a.x)), true);
    var var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(ceil(var_0.a.x));
    return !(!select(!vec4<bool>(var_1.x, var_1.x, true, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, false), select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, false), false), !vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, -2949f, -640f))))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-614f)) + _wgslsmith_f_op_f32(f32(-1f) * -2091f)), _wgslsmith_f_op_f32(-136f + 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f - _wgslsmith_f_op_f32(f32(-1f) * -1258f)) + _wgslsmith_f_op_f32(313f - _wgslsmith_f_op_f32(-165f * 1159f))), _wgslsmith_f_op_f32(trunc(1000f))), false));
    let var_2 = func_5(_wgslsmith_div_vec4_u32(vec4<u32>(abs(u_input.b.x), arg_0, reverseBits(u_input.b.x), u_input.b.x), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, 20757u, u_input.b.x, arg_0), vec4<u32>(44260u, u_input.b.x, u_input.b.x, u_input.b.x)), firstLeadingBit(~vec4<u32>(4294967295u, u_input.b.x, arg_0, 25850u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(true, func_2(), ~vec2<u32>(4294967295u, 37969u), _wgslsmith_div_u32(105215u, 32155u))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2053f, -787f, var_1.x, 1461f) - vec4<f32>(740f, 668f, var_1.x, -903f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -285f, -1886f, -397f))), true)))), 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(var_1.x, -740f, var_1.x)) * _wgslsmith_f_op_vec3_f32(floor(var_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(var_1, vec3<f32>(var_1.x, var_1.x, var_1.x))), vec3<f32>(var_1.x, var_1.x, var_1.x))))));
    var var_3 = ~(u_input.b.xz << (u_input.b.yx % vec2<u32>(32u)));
    var var_4 = _wgslsmith_clamp_i32(1i, -_wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(u_input.b.x, 21315u) % vec2<u32>(32u)), ~u_input.a), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-10009i, var_0, -2147483647i, -54714i), vec4<i32>(9364i, var_0, u_input.a.x, u_input.a.x)), ~var_0)) & -1i;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -794f)), -1543f, -206f), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_dot_vec3_u32(reverseBits(u_input.b) | ~(~(~u_input.b)), firstTrailingBit(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u) << (u_input.b % vec3<u32>(32u)), u_input.b), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x)))));
    var var_2 = Struct_2(func_1(max(12216u, 1u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) + _wgslsmith_div_f32(-1000f, 331f)), -215f, 1f), var_1));
    var var_3 = var_2.a;
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(min(-firstTrailingBit(vec3<i32>(var_0.x, var_0.x, 7242i)), _wgslsmith_add_vec3_i32(select(vec3<i32>(0i, u_input.a.x, var_0.x), vec3<i32>(var_0.x, u_input.a.x, var_0.x), false), min(vec3<i32>(-44532i, u_input.a.x, 0i), vec3<i32>(-2044i, var_0.x, -30145i)))), ~vec3<i32>(abs(u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, 65434i, u_input.a.x), min(0i, -2147483647i))), countOneBits(1u), u_input.a.x << (_wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.b), select(vec3<u32>(var_3.b, 52612u, 14707u), vec3<u32>(var_2.b.b, var_3.b, 83708u), func_5(vec4<u32>(u_input.b.x, var_1, 0u, 23695u), vec4<f32>(-151f, var_3.a.x, 103f, -1211f), u_input.a.x, var_3.a).wwz)) % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().a.zx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_3.a.zy, vec2<f32>(var_3.a.x, 1330f)), var_2.b.a.yy)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.a.x, var_2.a.a.x)))), !all(vec4<bool>(true, true, true, true)))), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(20359u, 9382u, var_2.a.b)), firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(var_3.b, var_3.b, 0u), u_input.b, true), min(vec3<u32>(var_3.b, 4294967295u, var_2.b.b), u_input.b))), vec3<u32>(~(var_3.b ^ 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, var_1, u_input.b.x), u_input.b), _wgslsmith_sub_u32(reverseBits(10898u), firstTrailingBit(var_2.b.b)))));
}

