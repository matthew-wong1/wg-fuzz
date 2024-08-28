struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = firstTrailingBit(-select(abs(-59027i) << (~u_input.e.x % 32u), i32(-1i) * -37257i, arg_0.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1345f, -235f, 143f, -363f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1436f, 426f, -709f, 139f) + vec4<f32>(1195f, 1431f, -950f, 237f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -747f, -652f, -1574f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1470f, 1263f, 239f, -1000f)))))), vec4<f32>(699f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1665f - _wgslsmith_f_op_f32(270f + -154f)) - -753f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(805f, _wgslsmith_f_op_f32(trunc(1022f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1467f, 173f)))))));
    var var_2 = select(arg_0.x, (firstTrailingBit(7573i) == -u_input.d.x) | false, true);
    var_2 = 1i != _wgslsmith_div_i32(min(~_wgslsmith_mod_i32(-1i, 2147483647i), ~(i32(-1i) * -3720i)), 1i & ~_wgslsmith_mod_i32(u_input.a, -2147483647i));
    var_2 = arg_0.x;
    return _wgslsmith_sub_i32(~u_input.c, select(~var_0, u_input.d.x, false));
}

fn func_2() -> f32 {
    var var_0 = vec2<i32>(~13586i, -(~_wgslsmith_sub_i32(func_3(vec4<bool>(false, true, false, false)), 7709i)));
    let var_1 = ~u_input.e.x;
    var_0 = u_input.d.zz;
    let var_2 = !(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))) || !(_wgslsmith_f_op_f32(round(1645f)) > -1749f));
    let var_3 = _wgslsmith_div_vec2_i32(countOneBits(min(-reverseBits(u_input.d.xz), u_input.b.yx)), ~(-u_input.b.yz));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1137f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -624f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1090f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-917f, -218f), 341f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) - -1334f) * 1381f)), var_1 > (30440u & u_input.e.x)));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))) - _wgslsmith_f_op_f32(max(397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1321f, 1110f) * -1000f)))));
    let var_1 = any(vec3<bool>(select(true, arg_0.d, true), true, false));
    let var_2 = u_input.e;
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, 2147483647i), 2147483647i), -func_3(vec4<bool>(var_1, var_1, true, true)), ~(~(-1i))) >> (firstTrailingBit(~(arg_0.a.xwy & var_2)) % vec3<u32>(32u));
    var var_4 = select(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-7523i, u_input.b.x), _wgslsmith_mult_i32(1i, u_input.b.x)), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(3919i, -6870i), -2147483647i) << (u_input.e.x % 32u), !((true && select(var_1, false, var_1)) | true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(true, true, any(vec2<bool>(true, true)), func_1(Struct_3(vec4<u32>(u_input.e.x, u_input.e.x, 39122u, 4294967295u), 34016u, vec4<bool>(true, true, true, true), true)))), !vec4<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, false, true, false)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)))), 1826f != _wgslsmith_f_op_f32(round(-1078f)));
    var var_1 = u_input.e;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-838f, -2546f, 889f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, -1252f, _wgslsmith_f_op_f32(abs(1401f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1039f, -572f, -184f)) + vec3<f32>(-715f, -970f, -969f))), _wgslsmith_div_u32(u_input.e.x, 21017u) < u_input.e.x)));
    var_1 = u_input.e & ~u_input.e;
    var var_3 = _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(abs(20107u), 24310u, ~u_input.e.x, u_input.e.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 95932u, var_1.x, var_1.x), vec4<u32>(var_1.x, 20048u, u_input.e.x, 1u)), firstLeadingBit(vec4<u32>(var_1.x, 1u, 0u, var_1.x)))) | vec4<u32>(~1u, var_1.x, countOneBits(reverseBits(var_1.x)) << (1u % 32u), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.x, var_2.a.x, 1000f, var_2.a.x))) - vec4<f32>(-205f, _wgslsmith_f_op_f32(var_2.a.x - 404f), _wgslsmith_f_op_f32(exp2(var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x * 312f))))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(~u_input.e, ~u_input.e), u_input.e, vec3<u32>(firstLeadingBit(u_input.e.x), 17966u, _wgslsmith_sub_u32(select(118659u, var_1.x, true), ~6511u))), i32(-1i) * -1i, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.d, -u_input.d), u_input.c), min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(1i, 23072i)), 36644i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -4582i), vec2<i32>(-73636i, u_input.b.x) | vec2<i32>(1i, u_input.a)) >> (~max(var_1.x, 22298u) % 32u)));
}

