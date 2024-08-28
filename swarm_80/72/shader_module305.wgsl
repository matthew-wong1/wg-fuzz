struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(firstLeadingBit(0u), ~_wgslsmith_sub_u32(arg_1.c.x & 1u, ~arg_0.x) ^ ~arg_1.a.c.a, 1504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x + -316f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - _wgslsmith_f_op_f32(select(1729f, arg_1.a.b.x, arg_1.a.d))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(809f, arg_1.a.b.x) + arg_1.b.a.x)))));
    var_0 = arg_1.a.c;
    var_0 = Struct_1(arg_2 & 4294967295u, ~arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f * arg_1.b.a.x))) - -787f), arg_1.a.c.c, var_0.c);
    var_0 = arg_1.a.c;
    var var_1 = arg_1.a.d;
    return _wgslsmith_div_vec4_i32(vec4<i32>(-5329i, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.a.x, 0i, -1i), -vec4<i32>(-22816i, u_input.a.x, 0i, -1i)), abs(-40598i), 1i), ~(-(vec4<i32>(u_input.a.x, -56441i, u_input.a.x, -2147483647i) << (vec4<u32>(var_0.a, 9360u, arg_1.a.a, arg_1.a.c.a) % vec4<u32>(32u))))) >> (abs(min(vec4<u32>(~arg_0.x, firstTrailingBit(1u), 1u, arg_3), select(min(vec4<u32>(37368u, 44832u, var_0.a, 90330u), vec4<u32>(14334u, var_0.a, arg_1.a.c.b, var_0.b)), firstTrailingBit(vec4<u32>(arg_1.c.x, 41864u, arg_0.x, 0u)), arg_1.a.d))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(-func_3(select(arg_2.yw, vec2<u32>(arg_2.x, arg_2.x), select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0)), Struct_4(Struct_3(42642u, vec2<f32>(-385f, 912f), Struct_1(1u, 0u, -1000f, 1620f, -674f), arg_0.x), Struct_2(vec4<f32>(-532f, -1541f, -104f, 1613f)), vec3<u32>(1u, 4294967295u, arg_2.x)), 68257u, arg_2.x), ~reverseBits(vec4<i32>(arg_1.x << (arg_2.x % 32u), ~arg_1.x, max(-2147483647i, 0i), -22072i)));
    var var_1 = Struct_1(~arg_2.x, 24724u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(448f - 780f) * _wgslsmith_f_op_f32(select(-2167f, 998f, true))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1974f))))), _wgslsmith_div_f32(1495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f - _wgslsmith_f_op_f32(min(510f, -1673f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1569f)))));
    var_0 = max(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_3, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), arg_3, func_3(vec2<u32>(arg_2.x, var_1.a), Struct_4(Struct_3(0u, vec2<f32>(-632f, -1782f), Struct_1(48703u, arg_2.x, -701f, -506f, var_1.e), arg_0.x), Struct_2(vec4<f32>(392f, var_1.d, var_1.c, var_1.d)), arg_2.xwx), 7543u, arg_2.x).x), max(vec4<i32>(u_input.a.x, var_0.x, -1i, -1i), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, var_0.x, -959i)))), -vec4<i32>(1i, ~func_3(vec2<u32>(var_1.b, 1u), Struct_4(Struct_3(39135u, vec2<f32>(var_1.e, var_1.d), Struct_1(42237u, var_1.b, -2062f, var_1.d, 394f), arg_0.x), Struct_2(vec4<f32>(884f, -488f, var_1.c, var_1.c)), arg_2.wwx), 1u, 1u).x, _wgslsmith_mult_i32(_wgslsmith_add_i32(51138i, -10097i), -16198i), _wgslsmith_mult_i32(var_0.x, -u_input.a.x)));
    let var_2 = Struct_4(Struct_3(firstTrailingBit(~(var_1.b >> (arg_2.x % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1656f, 1915f) + vec2<f32>(-104f, var_1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.e)))), Struct_1(var_1.b ^ abs(1u), ~(~4294967295u), var_1.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(trunc(2184f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.e, -1662f)), var_1.c)), -arg_3 >= -2147483647i), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 704f, 484f, 1000f)), vec4<f32>(var_1.d, var_1.c, var_1.e, -611f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, 490f, -1000f, 786f) - vec4<f32>(var_1.d, var_1.c, var_1.d, var_1.c))))), arg_2.xxz);
    let var_3 = max(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-(~arg_1.x), select(arg_3, ~(-2147483647i), false && arg_0.x), firstLeadingBit(var_0.x)), -2147483647i), ~(-1i));
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~var_2.c.x), ~var_1.b), arg_2.x >> (firstLeadingBit(48211u) % 32u));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_1(~abs(firstTrailingBit(1u) >> (select(4294967295u, 16722u, true) % 32u)), ~1u, _wgslsmith_f_op_f32(step(-743f, -839f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1f);
    let var_1 = _wgslsmith_mod_vec2_i32(u_input.a.yx, vec2<i32>(2147483647i, -2147483647i));
    var var_2 = u_input.a.x;
    var_2 = ~var_1.x >> (~(~1u) % 32u);
    let var_3 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    return vec3<u32>(firstLeadingBit(19701u), ~var_0.a, _wgslsmith_mod_u32(var_0.b, var_0.b)) & select(vec3<u32>(~24783u >> (func_2(vec2<bool>(true, true), u_input.a, vec4<u32>(var_0.b, 0u, var_0.b, 12398u), var_1.x) % 32u), ~var_0.b >> (var_0.b % 32u), 5994u), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(56422u, 4294967295u, 35228u)), 1u, 34258u), select(vec3<bool>(true, false, var_3), vec3<bool>(true, true, true), !select(false, false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(~vec3<u32>(1u, 1u, _wgslsmith_div_u32(19769u, 14664u))), func_1());
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(540f, 498f, 643f, -321f), vec4<f32>(576f, -811f, -778f, 408f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1517f, 550f, -1076f, 774f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1886f, 593f, -684f, -325f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, -1083f, -1000f, 1219f)))))))) * vec4<f32>(-186f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1358f)), _wgslsmith_f_op_f32(-537f * -482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_f_op_f32(-1494f + 240f)));
    let var_2 = _wgslsmith_mult_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, 22167i, u_input.a.x)), vec3<i32>(26597i, u_input.a.x >> (4294967295u % 32u), ~u_input.a.x))), -(u_input.a & u_input.a));
    var var_3 = Struct_4(Struct_3(var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.wy, vec2<f32>(var_1.x, -1000f))) * var_1.yw), Struct_1(abs(4294967295u), 16900u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), true), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -1078f, 456f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1060f, var_1.x, var_1.x, -696f)), vec4<bool>(false, true, false, false)))))), abs(vec3<u32>(var_0.x, func_1().x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 50255u, 4294967295u), vec3<u32>(52591u, var_0.x, var_0.x)), func_2(vec2<bool>(false, false), vec3<i32>(var_2.x, u_input.a.x, var_2.x), vec4<u32>(var_0.x, 12732u, 63803u, 1u), u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

