struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = !(!(!(!(!vec3<bool>(false, arg_0.x, arg_0.x)))));
    let var_1 = _wgslsmith_div_f32(-1093f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-319f - -1599f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c))))));
    let var_2 = -max(13865i, select(1i, ~(~(-32888i)), arg_0.x));
    let var_3 = Struct_2(Struct_1(max(vec2<u32>(_wgslsmith_sub_u32(4294967295u, arg_2.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 75586u, 45016u, arg_1.b), vec4<u32>(4294967295u, 22922u, 9099u, arg_1.b))), abs(vec2<u32>(arg_3, 19457u))), _wgslsmith_clamp_u32(min(14025u, arg_2.b) << (abs(29572u) % 32u), u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1063f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(var_1 + -829f)))), abs(arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.e)) + var_1)), arg_1, 398f);
    let var_4 = all(vec3<bool>(any(var_0), arg_0.x, false));
    return reverseBits(arg_1.a.x);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(min(vec2<u32>(u_input.a.x, 37296u), ~arg_1.yy)), ~_wgslsmith_add_u32(arg_0, ~arg_1.x), 1f, _wgslsmith_mod_u32(max(_wgslsmith_mod_u32(39439u, arg_1.x), 56657u << (0u % 32u)), func_3(vec2<bool>(true, true), Struct_1(arg_1.xz, u_input.a.x, 258f, arg_1.x, 773f), Struct_1(vec2<u32>(u_input.a.x, arg_1.x), 0u, -522f, 6801u, -146f), 1u)), _wgslsmith_f_op_f32(sign(1285f))), Struct_1(reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), u_input.a.zy)), ~(~14132u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f) - _wgslsmith_f_op_f32(sign(1599f)))), 11718u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-626f + 485f) * -1105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-787f)), _wgslsmith_f_op_f32(-126f + 2045f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1613f)) - _wgslsmith_f_op_f32(296f * -613f)))));
    let var_1 = abs(max(select(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 71769u, 8365u, arg_1.x), vec4<u32>(1u, 12958u, var_0.b.b, 0u)), vec4<u32>(~0u, var_0.b.a.x, ~var_0.a.d, u_input.a.x >> (84542u % 32u)), true), firstLeadingBit(~(~vec4<u32>(var_0.b.b, 0u, 4294967295u, var_0.a.b)))));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.a.x, _wgslsmith_add_u32(arg_1.x, var_0.b.d), ~1u), vec4<u32>(0u, abs(var_0.a.d), _wgslsmith_add_u32(arg_0, 27681u), var_0.b.b)), ~firstTrailingBit(u_input.a.x)), ~20723u, var_0.c, var_0.b.b | (countOneBits(~4294967295u) | (0u << (_wgslsmith_mult_u32(arg_1.x, 1u) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(963f, var_0.b.c)))))));
    var var_3 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), !(var_1.x != var_0.b.a.x)), true), select(!vec2<bool>(any(vec3<bool>(true, false, true)), true), !vec2<bool>(any(vec4<bool>(false, true, true, true)), true), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))), true);
    return _wgslsmith_sub_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 5790i, firstTrailingBit(-2147483647i))), vec3<i32>(-1i) * -(~vec3<i32>(0i, 14947i, 0i))), vec3<i32>(-10060i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, -2147483647i)), -vec2<i32>(-59764i, -1i)), reverseBits(1i)) << ((~(~vec3<u32>(u_input.a.x, 0u, var_2.a.x)) | u_input.a) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    var var_0 = u_input.a.yx;
    var var_1 = func_2(1u, u_input.a | ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 4549u, var_0.x), abs(u_input.a)));
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~(vec2<u32>(14146u, 0u) | vec2<u32>(~0u, var_0.x)));
    return ~63559u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(func_1(), reverseBits(57766u)), ~u_input.a.x, 1077f, u_input.a.x, _wgslsmith_f_op_f32(min(1164f, 963f)));
    var var_1 = Struct_1(vec2<u32>(var_0.d, ~(~(~1u))), 14685u, 1000f, ~(~(~func_3(vec2<bool>(false, true), var_0, var_0, 0u))), _wgslsmith_f_op_f32(-var_0.c));
    var_1 = Struct_1(var_0.a, ~(~(var_0.d >> (7239u % 32u)) & abs(firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -2119f), _wgslsmith_add_u32(reverseBits(~_wgslsmith_div_u32(u_input.a.x, 4294967295u)), var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(min(var_1.e, _wgslsmith_f_op_f32(f32(-1f) * -109f)))) * _wgslsmith_f_op_f32(-var_1.e)));
    var_1 = Struct_1(var_1.a, ~10873u | ((abs(1u) | _wgslsmith_add_u32(u_input.a.x, var_0.b)) << (~1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c)) + _wgslsmith_f_op_f32(step(-134f, var_0.e))) * 1112f)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 75243u, ~firstLeadingBit(var_0.d), 3391u), vec4<u32>(~4294967295u, var_0.d, 1u, ~u_input.a.x)), 986f);
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1034f, var_1.c, var_0.c))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.e, var_0.c, var_0.e))), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(229f, var_1.e, -397f) - vec3<f32>(-751f, -1036f, 847f))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, _wgslsmith_div_f32(1221f, var_0.e), _wgslsmith_f_op_f32(-387f * 1920f))))));
    var var_3 = Struct_2(Struct_1(var_1.a >> (reverseBits(~var_1.a) % vec2<u32>(32u)), 41791u, -1325f, ~u_input.a.x, _wgslsmith_f_op_f32(sign(-1321f))), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1491f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, ~select(~52076i, firstLeadingBit(-2147483647i), true)), var_2.x, abs(~(firstLeadingBit(var_0.a.x) ^ (var_0.a.x << (var_0.b % 32u)))));
}

