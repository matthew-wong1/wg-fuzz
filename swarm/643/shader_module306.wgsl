struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: u32) -> bool {
    let var_0 = vec3<bool>(any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !all(vec2<bool>(arg_3 == arg_3, true)), (arg_3 != firstLeadingBit(_wgslsmith_clamp_u32(1u, arg_3, 0u))) && !(!(arg_1.x > 1985f)));
    var var_1 = ~firstLeadingBit(min(39736u, arg_3));
    var_1 = _wgslsmith_sub_u32(~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_3), arg_3)), 71408u);
    let var_2 = Struct_2(u_input.b, Struct_1(arg_3, arg_3, select(~vec3<u32>(arg_3, arg_3, arg_3) ^ reverseBits(vec3<u32>(arg_3, arg_3, arg_3)), (vec3<u32>(16572u, arg_3, 12110u) | vec3<u32>(19601u, arg_3, 0u)) >> ((vec3<u32>(4294967295u, arg_3, 4294967295u) << (vec3<u32>(0u, arg_3, arg_3) % vec3<u32>(32u))) % vec3<u32>(32u)), false), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, arg_3, arg_3), vec3<u32>(15996u, 4197u, 21233u)))), arg_1.yx);
    let var_3 = select(min(-select(vec4<i32>(u_input.a, 2147483647i, u_input.b, u_input.a), vec4<i32>(28413i, -1i, arg_0, 2147483647i), true) << (vec4<u32>(arg_3, ~1u, abs(4294967295u), ~0u) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(var_2.a) | -2392i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, arg_0, 18707i), vec4<i32>(5480i, u_input.a, 32405i, 11384i)), arg_0, min(var_2.a, 40970i))), select(firstLeadingBit(reverseBits(vec4<i32>(0i, -2147483647i, arg_0, 65526i))), vec4<i32>(4823i, -arg_0, select(-2147483647i, 37543i, var_0.x), firstTrailingBit(u_input.a)), var_0.x) ^ (vec4<i32>(_wgslsmith_div_i32(arg_0, var_2.a), _wgslsmith_mult_i32(1i, var_2.a), abs(-2147483647i), 1i) & max(reverseBits(vec4<i32>(1i, var_2.a, 1i, var_2.a)), -vec4<i32>(-12238i, 0i, var_2.a, arg_0))), ~arg_3 >= 0u);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = -569f;
    let var_1 = 17242u;
    let var_2 = !func_3(-u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(420f, 161f, 256f, -512f) + vec4<f32>(-2006f, 180f, -454f, -946f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, 232f, -103f, -188f) * vec4<f32>(892f, 482f, 727f, -2247f)), false)) - vec4<f32>(-225f, -795f, _wgslsmith_f_op_f32(1843f * -320f), -1155f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(-513f, -817f, false)), _wgslsmith_f_op_f32(724f * 145f)), vec2<f32>(1f, 1f))), 626u | ~var_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-377f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(633f, _wgslsmith_f_op_f32(-291f + _wgslsmith_f_op_f32(f32(-1f) * -626f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(-1816f, -334f)))))));
    var_0 = -1637f;
    return arg_1.d.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(0u, _wgslsmith_mod_u32((_wgslsmith_add_u32(28971u, 13803u) << (func_2(vec2<i32>(arg_3.a, 0i), arg_3.b) % 32u)) ^ arg_3.b.b, _wgslsmith_div_u32(arg_1, ~_wgslsmith_dot_vec3_u32(arg_2.xwx, vec3<u32>(arg_3.b.d.x, 28757u, arg_3.b.c.x)))));
    let var_1 = arg_2;
    let var_2 = -19546i;
    var var_3 = arg_0.x;
    var_0 = _wgslsmith_mult_vec2_u32(var_1.wy, ~reverseBits(arg_2.yx));
    return Struct_2(1i, arg_3.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.zz, vec2<f32>(arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1491f, arg_3.c.x), vec2<f32>(280f, 1193f))) - _wgslsmith_f_op_vec2_f32(arg_0.yw + vec2<f32>(-2479f, 1000f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = -1706f;
    let var_1 = Struct_2(arg_2.a, arg_0, _wgslsmith_f_op_vec2_f32(arg_2.c * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), -486f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, var_0)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f - 1000f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-918f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), vec3<f32>(_wgslsmith_div_f32(var_1.c.x, -646f), -567f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(672f, var_1.c.x, var_1.c.x))))));
    let var_4 = arg_2.b;
    return _wgslsmith_div_i32(arg_2.a, _wgslsmith_mult_i32(u_input.b, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(19152i), func_4(Struct_1(64357u, ~4294967295u, vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(73433u, 4580u, 80017u))), vec4<u32>(1u, 1u, 1u, 1u), func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1814f, 1281f, -1821f, -1365f))), 4294967295u, vec4<u32>(1u, 1u, 1u, 1u), Struct_2(u_input.a, Struct_1(4294967295u, 21347u, vec3<u32>(31733u, 0u, 91227u), vec3<u32>(1u, 1u, 1u)), vec2<f32>(-1104f, -389f))))), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(1i, 71200i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(20640u, 0u) % vec2<u32>(32u)), -vec2<i32>(-14521i, 17160i))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-3200i, 0i), vec2<i32>(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_clamp_u32(7545u, max(~_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(28188u, 14301u)), 61818u), ~1860u);
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1799f) - _wgslsmith_f_op_f32(1000f - 635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(593f, -134f))), 302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f * -292f)))), countOneBits(var_1), vec4<u32>(~max(10805u, ~var_1), max(var_1, var_1), var_1 | (abs(746u) ^ var_1), 29392u), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1096f, -2384f, 1106f), vec4<f32>(556f, -769f, 138f, 162f))))), ~(~69694u), vec4<u32>(18362u, firstTrailingBit(select(var_1, 55815u, true)), _wgslsmith_mult_u32(~0u, ~var_1), var_1), Struct_2(abs(26023i), func_1(vec4<f32>(1060f, -498f, 509f, -1993f), ~var_1, _wgslsmith_div_vec4_u32(vec4<u32>(var_1, 26962u, 8433u, var_1), vec4<u32>(31685u, var_1, var_1, var_1)), Struct_2(2147483647i, Struct_1(var_1, 7238u, vec3<u32>(var_1, 51430u, 55924u), vec3<u32>(var_1, var_1, var_1)), vec2<f32>(-574f, -959f))).b, vec2<f32>(_wgslsmith_f_op_f32(-324f * 201f), _wgslsmith_f_op_f32(f32(-1f) * -999f))))).b;
    var var_3 = vec2<u32>(79861u, 729u);
    var var_4 = var_2;
    let var_5 = Struct_4(~var_0.x, select(vec2<bool>(select(true, true, false) || true, false | func_3(u_input.a, vec4<f32>(129f, 1982f, 227f, -160f), vec2<f32>(816f, 912f), var_4.a)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(vec4<bool>(true, true, true, true))), ~(-reverseBits(vec3<i32>(-2147483647i, var_0.x, 33610i) & vec3<i32>(var_0.x, var_0.x, 2147483647i))), Struct_2(i32(-1i) * -2147483647i, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1580f, -824f, 1384f, 1227f)) + vec4<f32>(2293f, 1000f, 551f, -1249f)), ~4294967295u, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, var_4.c.x, 39555u, var_3.x)), _wgslsmith_div_vec4_u32(vec4<u32>(99119u, 5712u, var_4.a, var_3.x), vec4<u32>(var_3.x, 4294967295u, 4294967295u, 0u)), vec4<u32>(11705u, var_2.c.x, var_1, var_3.x)), Struct_2(~var_0.x, var_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(1149f, -833f) - vec2<f32>(971f, 1186f)))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1134f, -256f) + vec2<f32>(369f, 2360f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), vec2<f32>(-1470f, -1100f)), true)))), -866f);
    var_4 = Struct_1(var_2.d.x, 15152u, max(countOneBits(vec3<u32>(abs(1u), countOneBits(var_1), min(var_5.d.b.b, var_3.x))), var_4.c), ~(~var_2.c >> ((_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 0u, 4294967295u), var_4.d) ^ abs(var_4.c)) % vec3<u32>(32u))));
    let var_6 = _wgslsmith_clamp_i32(~((i32(-1i) * -u_input.a) << (_wgslsmith_sub_u32(1u, abs(0u)) % 32u)), 2147483647i, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-778f, _wgslsmith_f_op_f32(var_5.e - var_5.d.c.x), var_5.d.c.x, _wgslsmith_div_f32(var_5.e, var_5.e)) * vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(-1000f)), -353f, _wgslsmith_f_op_f32(var_5.d.c.x + var_5.d.c.x))), 0u, _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(6666u, 31842u, var_4.a, 21250u)), vec4<u32>(4294967295u, 1u, 11235u, var_5.d.b.b) & vec4<u32>(22593u, var_5.d.b.a, var_3.x, 86058u)) | vec4<u32>(var_3.x, 0u, 29902u << (var_5.d.b.d.x % 32u), _wgslsmith_clamp_u32(var_2.d.x, var_2.c.x, 0u)), var_5.d).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(vec4<f32>(var_5.e, var_5.d.c.x, var_5.d.c.x, 200f), var_5.d.b.c.x, vec4<u32>(var_3.x, 45609u, 12163u, var_4.a), Struct_2(-14841i, var_5.d.b, var_5.d.c)).b.c, var_2.c), ~var_3.x, abs(countOneBits(4294967295u))), _wgslsmith_div_vec3_u32(abs(var_4.d), vec3<u32>(~var_1, 2319u, _wgslsmith_mod_u32(4294967295u, 1u)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_5.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-170f, var_5.e) + _wgslsmith_div_f32(var_5.d.c.x, 566f)), var_5.d.c.x))), ~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.b, var_3.x, var_4.b, var_5.d.b.c.x), select(vec4<u32>(var_2.b, 78457u, var_3.x, 15435u), vec4<u32>(4294967295u, 1u, 0u, var_2.a), false))), 438f);
}

