struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1751f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1349f, -2083f)), _wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(446f * -816f), -467f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -164f, 1464f, 770f) * vec4<f32>(756f, 226f, 280f, -1223f))), vec4<f32>(-521f, _wgslsmith_f_op_f32(round(454f)), _wgslsmith_f_op_f32(1170f - 440f), _wgslsmith_f_op_f32(-1000f * 1121f)))))));
    var var_1 = false;
    var_1 = true;
    let var_2 = Struct_2(u_input.c > ~u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(405f * 1195f)))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8731i, -2582i, -1i), -vec3<i32>(0i, -7381i, -19252i), vec3<i32>(-7484i, 30914i, -1i)), -abs(vec3<i32>(57647i, 24051i, 2147483647i))), vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(floor(var_0.x)), var_0.wzy), true);
    global0 = !all(select(vec3<bool>(false, var_2.a, var_2.c), select(vec3<bool>(false, var_2.a, var_2.c), vec3<bool>(var_2.a, var_2.c, true), var_2.c), false)) && false;
    return vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b.x, u_input.a, 1u)), abs(vec3<u32>(58015u, u_input.d, 4294967295u) >> (vec3<u32>(10850u, 22025u, 0u) % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(30394u, 17605u, 29129u), vec3<u32>(10962u, u_input.a, u_input.d)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(84380u, u_input.c, 48840u), vec3<u32>(26264u, u_input.c, 101675u), vec3<u32>(0u, 34239u, u_input.d)), countOneBits(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x))) % vec3<u32>(32u))), _wgslsmith_clamp_u32(u_input.d, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.b.x ^ 4294967295u), _wgslsmith_div_u32(~25573u, ~u_input.c)), u_input.d));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(firstTrailingBit(28284i) ^ -9151i, u_input.b | ~func_3(), true, Struct_2(false, Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_0.e, _wgslsmith_f_op_vec3_f32(step(arg_0.a, arg_0.a)), vec3<bool>(arg_2.a, arg_2.a, arg_2.a))), 2147483647i, _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.b.c.x, arg_0.c.x) & vec2<i32>(43076i, arg_0.c.x), -vec2<i32>(arg_2.b.b, arg_0.b)), _wgslsmith_f_op_f32(-arg_0.d), arg_0.a), true), firstLeadingBit(firstLeadingBit(vec4<u32>(select(1u, u_input.d, false), _wgslsmith_div_u32(arg_1, 34970u), func_3().x, ~1u))));
    global0 = var_0.d.a | (_wgslsmith_div_i32(-arg_2.b.b, var_0.d.b.c.x & 6150i) < (i32(-1i) * -firstTrailingBit(-1i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(-arg_0.e.x), arg_2.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.e.x - var_0.d.b.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.e.x, _wgslsmith_f_op_f32(abs(1200f)), -1836f, 919f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.b.a.x, var_0.d.b.e.x, -382f, arg_0.a.x), vec4<f32>(arg_0.d, 343f, var_0.d.b.d, -1000f)))))));
    let var_2 = Struct_2(all(select(select(!vec3<bool>(var_0.c, true, false), !vec3<bool>(false, false, arg_2.c), select(vec3<bool>(arg_2.a, arg_2.a, var_0.c), vec3<bool>(true, false, true), arg_2.c)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.c, arg_2.a, true), vec3<bool>(true, arg_2.a, false)), vec3<bool>(arg_2.c, var_0.d.a, var_0.c), var_0.d.c), vec3<bool>(true, false, true))), Struct_1(var_1.xxz, -18948i, vec2<i32>(-33185i << (abs(u_input.c) % 32u), arg_2.b.c.x), arg_2.b.d, var_1.yww), _wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(u_input.d, var_0.b.x)), ~var_0.b.x) <= 0u);
    var var_3 = vec3<i32>(select(~(~firstLeadingBit(var_0.d.b.b)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-20961i, arg_0.c.x), _wgslsmith_clamp_i32(arg_0.c.x, var_2.b.c.x, arg_0.c.x)), -(~24973i)), !var_2.c), -5365i, min(arg_2.b.b, arg_0.c.x));
    return arg_2.c || false;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    var var_0 = Struct_4(273f, arg_0.x, any(!(!(!vec2<bool>(true, arg_2)))));
    var var_1 = Struct_1(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, 1436f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, 971f)) - arg_0.x)), ~2147483647i | _wgslsmith_mult_i32(arg_1.x, -60188i), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-257f * arg_0.x)) * var_0.b), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_0.b), -814f));
    let var_2 = !select(!select(select(vec4<bool>(false, arg_2, false, false), vec4<bool>(false, false, arg_2, true), vec4<bool>(true, var_0.c, var_0.c, false)), vec4<bool>(arg_2, var_0.c, arg_2, arg_2), select(vec4<bool>(var_0.c, var_0.c, false, var_0.c), vec4<bool>(true, true, true, arg_2), vec4<bool>(true, arg_2, arg_2, true))), !select(vec4<bool>(false, arg_2, false, false), select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(true, var_0.c, false, arg_2), true), true), !(!all(vec2<bool>(true, arg_2))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-526f)))) - 349f);
    global0 = var_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(sign(arg_0.x))) * _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-852f, _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1952f, 425f), vec2<f32>(958f, 462f))), vec2<i32>(-28846i, -1i) >> (u_input.b % vec2<u32>(32u)), func_2(Struct_1(vec3<f32>(-1000f, -1000f, -1325f), -1i, vec2<i32>(-2147483647i, 20384i), 299f, vec3<f32>(-1000f, -773f, -567f)), 1u, Struct_2(true, Struct_1(vec3<f32>(-712f, -1704f, 2374f), -13055i, vec2<i32>(-1i, 2147483647i), -1363f, vec3<f32>(937f, 238f, 2311f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(247f, 455f)) + 593f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(504f, 336f, -164f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-126f, 636f, 393f), vec3<f32>(1721f, -809f, 914f)))))), reverseBits(abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(2147483647i, 36704i, -1i), vec3<i32>(-1i, -23683i, -29608i)), reverseBits(vec3<i32>(0i, -14331i, 0i))))), vec2<i32>(_wgslsmith_add_i32(~(~(-8225i)), firstLeadingBit(0i) << (u_input.a % 32u)), abs(_wgslsmith_mult_i32(firstLeadingBit(-1i), 0i))), 259f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(-282f, -156f, true)), _wgslsmith_f_op_f32(1442f * 420f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1789f, -135f, -534f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(876f, 393f, -446f))), true)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(167f, 1718f, 722f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-201f, -1498f, 144f), vec3<f32>(-745f, -2219f, 966f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1856f, -348f, -1024f) + vec3<f32>(-312f, -415f, 1733f)))), vec3<bool>(true, true, true)))));
    global0 = (any(vec3<bool>(true, true, 151809u != u_input.c)) & all(vec3<bool>(true, true, true))) && !all(vec2<bool>(var_0.c.x <= -30646i, any(vec4<bool>(false, true, true, false))));
    var var_1 = Struct_4(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - -1107f) - _wgslsmith_f_op_f32(trunc(var_0.e.x)))))), true);
    return select(!(!select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(false, false, true), !vec3<bool>(var_1.c, var_1.c, false))), select(!(!vec3<bool>(var_1.c, false, true)), select(vec3<bool>(u_input.a <= 1u, true, true), vec3<bool>(true, var_1.c, !var_1.c), !var_1.c && !var_1.c), !vec3<bool>(var_1.c, true, all(vec2<bool>(true, true)))), select(!vec3<bool>(true, true, false | var_1.c), vec3<bool>(152f >= var_1.b, all(vec3<bool>(true, var_1.c, var_1.c)), all(vec4<bool>(var_1.c, false, false, true))), vec3<bool>(!(!var_1.c), true, true)));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    global0 = !func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2213f, 769f, 1879f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1093f, -320f, 547f))), !vec3<bool>(true, arg_0, true))), countOneBits(~23865i), min(~vec2<i32>(arg_1.x, 0i), vec2<i32>(arg_1.x, 3918i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1134f, 680f, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-625f, -470f, 2585f), vec3<f32>(-183f, 217f, -2055f), arg_0)) * _wgslsmith_div_vec3_f32(vec3<f32>(-720f, 323f, -861f), vec3<f32>(361f, -497f, 164f)))), 0u, Struct_2(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(765f, -687f, 1000f), vec3<f32>(176f, 284f, -657f))), 1i, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, -1i), arg_1.yz, arg_1.wy), _wgslsmith_f_op_f32(301f * -379f), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 337f, -187f), vec3<f32>(452f, -378f, -659f))), true));
    global0 = arg_1.x == max(-25197i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-4679i, arg_1.x, 20663i), ~arg_1.zzy));
    var var_0 = abs(~_wgslsmith_clamp_u32(func_3().x, 4294967295u, _wgslsmith_mod_u32(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(25630u, 7420u), vec2<u32>(49548u, u_input.d)))));
    var var_1 = 327f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-509f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 707f))) - 1155f));
    return i32(-1i) * -arg_1.x;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = -1000f;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.b.e.x - 382f), _wgslsmith_f_op_f32(ceil(-524f))), arg_1.d.b.e.yz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, 1847f))), vec2<f32>(arg_1.d.b.d, _wgslsmith_f_op_f32(-588f + -493f))))), 213f, _wgslsmith_div_i32(~(arg_1.d.b.c.x ^ abs(-1i)), reverseBits(~arg_1.d.b.b) & firstTrailingBit(2147483647i)), abs(abs(abs(arg_0.zy) << (~u_input.b % vec2<u32>(32u)))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.d), vec3<u32>(u_input.c, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 30315u), max(vec3<u32>(u_input.a, u_input.c, 1u), vec3<u32>(0u, 10372u, 19694u)))), vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(48723u, 12965u, 57224u), ~vec3<u32>(1u, 4294967295u, 87274u)), ~(~7400u))), Struct_3(func_5(all(func_1()), ~select(vec4<i32>(0i, -12384i, -55699i, -3466i), vec4<i32>(-12051i, -65310i, 2147483647i, 6225i), vec4<bool>(false, true, false, false))), ~firstTrailingBit(~vec2<u32>(1u, 7823u)), !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), Struct_2(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(433f, -818f, -1000f))), 1i, -vec2<i32>(1i, -1i), -455f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-631f, 914f, -1381f)))), false), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 57967u, u_input.a), vec3<u32>(u_input.c, u_input.d, u_input.c)), select(u_input.b.x, 1u, false), u_input.d))));
}

