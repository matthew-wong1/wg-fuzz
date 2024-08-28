struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(Struct_3(vec3<u32>(1u, 46745u, 8810u)), false, Struct_1(vec3<f32>(-514f, 1453f, 168f), vec2<f32>(-1308f, 1266f), 54030u), vec3<u32>(0u, 1u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 53234u, 28578u)), true, Struct_1(vec3<f32>(-841f, 971f, 2091f), vec2<f32>(-1113f, 962f), 100141u), vec3<u32>(48617u, 0u, 7869u)), Struct_5(Struct_3(vec3<u32>(22910u, 79196u, 0u)), true, Struct_1(vec3<f32>(-1087f, -1000f, 606f), vec2<f32>(789f, 294f), 15337u), vec3<u32>(1u, 28842u, 9471u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 75506u, 18929u)), false, Struct_1(vec3<f32>(594f, -1166f, -1214f), vec2<f32>(163f, 218f), 0u), vec3<u32>(31133u, 0u, 25309u)), Struct_5(Struct_3(vec3<u32>(76996u, 19537u, 4294967295u)), true, Struct_1(vec3<f32>(1000f, -124f, 238f), vec2<f32>(-1584f, -1562f), 1u), vec3<u32>(8268u, 22051u, 1982u)), Struct_5(Struct_3(vec3<u32>(34843u, 59375u, 4602u)), false, Struct_1(vec3<f32>(1000f, -776f, 153f), vec2<f32>(1748f, 457f), 16445u), vec3<u32>(0u, 1u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(1u, 4294967295u, 0u)), false, Struct_1(vec3<f32>(-781f, -234f, -657f), vec2<f32>(1068f, -194f), 5079u), vec3<u32>(2962u, 1u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(1u, 25590u, 49695u)), false, Struct_1(vec3<f32>(-1000f, -1109f, -820f), vec2<f32>(-1603f, -417f), 1u), vec3<u32>(11149u, 0u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(1u, 55111u, 34086u)), false, Struct_1(vec3<f32>(-415f, -906f, 844f), vec2<f32>(988f, 405f), 21417u), vec3<u32>(4294967295u, 26501u, 21214u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u)), true, Struct_1(vec3<f32>(-1000f, -667f, -1829f), vec2<f32>(872f, -499f), 34679u), vec3<u32>(0u, 58813u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 0u, 31154u)), false, Struct_1(vec3<f32>(1402f, -279f, 1145f), vec2<f32>(-1000f, 751f), 13855u), vec3<u32>(1u, 59143u, 0u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 31129u, 2583u)), false, Struct_1(vec3<f32>(-1846f, -459f, 1088f), vec2<f32>(743f, 1510f), 4294967295u), vec3<u32>(2389u, 0u, 10187u)), Struct_5(Struct_3(vec3<u32>(23594u, 6590u, 13888u)), true, Struct_1(vec3<f32>(2113f, 135f, 818f), vec2<f32>(-270f, -1171f), 4294967295u), vec3<u32>(0u, 0u, 96911u)), Struct_5(Struct_3(vec3<u32>(1u, 18856u, 0u)), false, Struct_1(vec3<f32>(143f, 1243f, 1000f), vec2<f32>(-1205f, -374f), 0u), vec3<u32>(32591u, 4294967295u, 24876u)), Struct_5(Struct_3(vec3<u32>(0u, 0u, 123900u)), false, Struct_1(vec3<f32>(509f, 655f, 742f), vec2<f32>(-106f, -367f), 90468u), vec3<u32>(17061u, 7348u, 0u)), Struct_5(Struct_3(vec3<u32>(4853u, 36918u, 24000u)), true, Struct_1(vec3<f32>(672f, -1000f, 604f), vec2<f32>(-196f, -1560f), 4294967295u), vec3<u32>(4294967295u, 4294967295u, 45186u)), Struct_5(Struct_3(vec3<u32>(1u, 4294967295u, 54831u)), false, Struct_1(vec3<f32>(-1675f, 1404f, -1059f), vec2<f32>(-138f, 2236f), 97051u), vec3<u32>(4294967295u, 0u, 38290u)), Struct_5(Struct_3(vec3<u32>(3965u, 34596u, 1u)), true, Struct_1(vec3<f32>(1000f, 144f, -1701f), vec2<f32>(968f, -549f), 4294967295u), vec3<u32>(65357u, 37099u, 26001u)), Struct_5(Struct_3(vec3<u32>(1u, 2536u, 4294967295u)), true, Struct_1(vec3<f32>(349f, 1000f, 1222f), vec2<f32>(-808f, 617f), 0u), vec3<u32>(4294967295u, 44489u, 1u)), Struct_5(Struct_3(vec3<u32>(112980u, 12066u, 85440u)), false, Struct_1(vec3<f32>(194f, -1000f, -239f), vec2<f32>(1205f, 1191f), 21129u), vec3<u32>(14829u, 1u, 0u)), Struct_5(Struct_3(vec3<u32>(57075u, 35981u, 1u)), true, Struct_1(vec3<f32>(-219f, -1178f, -874f), vec2<f32>(115f, -1056f), 206u), vec3<u32>(1u, 31814u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(41733u, 11280u, 6285u)), false, Struct_1(vec3<f32>(-1000f, 439f, -426f), vec2<f32>(-244f, 194f), 2387u), vec3<u32>(36789u, 1u, 18176u)), Struct_5(Struct_3(vec3<u32>(1441u, 1824u, 40077u)), false, Struct_1(vec3<f32>(681f, -2119f, 1430f), vec2<f32>(610f, -1315f), 1u), vec3<u32>(0u, 44567u, 85282u)), Struct_5(Struct_3(vec3<u32>(72755u, 88095u, 0u)), true, Struct_1(vec3<f32>(-191f, 651f, 196f), vec2<f32>(285f, 945f), 18184u), vec3<u32>(27852u, 0u, 29106u)), Struct_5(Struct_3(vec3<u32>(6013u, 16403u, 25140u)), false, Struct_1(vec3<f32>(-1708f, 939f, 394f), vec2<f32>(-114f, 172f), 50951u), vec3<u32>(4294967295u, 1u, 76033u)), Struct_5(Struct_3(vec3<u32>(8471u, 4294967295u, 2310u)), false, Struct_1(vec3<f32>(1428f, 442f, 1631f), vec2<f32>(927f, -733f), 1u), vec3<u32>(4294967295u, 11241u, 0u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 0u, 32463u)), true, Struct_1(vec3<f32>(-297f, 281f, -158f), vec2<f32>(-828f, 657f), 4294967295u), vec3<u32>(2252u, 56625u, 85469u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 11888u, 825u)), false, Struct_1(vec3<f32>(-1000f, 1319f, 604f), vec2<f32>(920f, -562f), 3710u), vec3<u32>(0u, 20961u, 4294967295u)), Struct_5(Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u)), true, Struct_1(vec3<f32>(1931f, -1352f, -1682f), vec2<f32>(948f, 545f), 58808u), vec3<u32>(37437u, 0u, 40774u)));

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    global0 = array<Struct_5, 29>();
    let var_0 = true;
    var var_1 = Struct_2(select(!vec3<bool>(true || var_0, var_0, select(var_0, var_0, var_0)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_0), vec3<bool>(false, var_0, var_0)), vec3<bool>(any(vec3<bool>(var_0, var_0, true)), var_0 | true, any(vec4<bool>(false, var_0, true, var_0))), true), select(vec3<bool>(true, true, false), !(!vec3<bool>(var_0, false, var_0)), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2191f, 479f, 608f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-754f, -1106f, -2048f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(908f, 1731f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(239f, 1397f)))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7677u, 0u, 9643u), vec4<u32>(140744u, 4294967295u, 0u, 4294967295u)) & ~1u));
    var var_2 = u_input.e;
    var var_3 = 0u;
    return var_0;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_3(~vec3<u32>(arg_1.a.x, arg_1.a.x, countOneBits(arg_0)));
    var var_1 = Struct_3(var_0.a);
    global0 = array<Struct_5, 29>();
    let var_2 = -vec2<i32>(2091i, u_input.a << (~1u % 32u));
    var var_3 = ((arg_1.a.x ^ 17224u) == arg_0) & !func_3();
    return vec4<i32>(_wgslsmith_mult_i32(10261i, 1i | ~reverseBits(u_input.a)), 50353i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-18254i, -2147483647i, -9517i, max(arg_2, var_2.x)), select(vec4<i32>(var_2.x, arg_2, u_input.b, 15686i) ^ vec4<i32>(var_2.x, arg_2, 35661i, -45755i), min(vec4<i32>(var_2.x, -1i, arg_2, global3.x), vec4<i32>(arg_2, -74577i, arg_2, u_input.c)), false)), vec4<i32>(var_2.x, ~(-1i >> (0u % 32u)), u_input.d.x, abs(1i & arg_2))), u_input.d.x | ~0i);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec3<u32>(arg_0.b.a.x, 1u, arg_0.b.a.x ^ arg_0.b.a.x);
    var var_1 = max(select(vec4<i32>(~47066i ^ -u_input.e, i32(-1i) * -global3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-34392i, 0i, -36649i, 2147483647i), reverseBits(vec4<i32>(1i, 27492i, u_input.c, u_input.c))), -29663i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 37176i, 15071i, u_input.e) ^ func_2(arg_0.b.a.x, arg_0.b, global3.x), firstLeadingBit(~vec4<i32>(7656i, u_input.e, -40346i, global3.x))), select(vec4<bool>(false, false, arg_0.a | arg_0.a, all(vec4<bool>(arg_0.a, false, true, arg_0.a))), !(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), vec4<bool>(arg_0.a, all(vec3<bool>(false, false, arg_0.a)), arg_0.a | arg_0.a, all(vec2<bool>(arg_0.a, arg_0.a))))), firstLeadingBit(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(-34619i, -1i, global3.x), max(u_input.b, global3.x), -4332i, max(-1i, -1i)))));
    var var_2 = arg_0.b;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(518f, -1035f, 843f), vec3<f32>(-794f, 377f, 1606f), true)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(-203f)), _wgslsmith_f_op_f32(f32(-1f) * -401f)))) - vec3<f32>(-1173f, _wgslsmith_div_f32(-938f, _wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(max(-930f, _wgslsmith_f_op_f32(-268f * 353f))))), vec2<f32>(-529f, _wgslsmith_f_op_f32(abs(-680f))), abs(firstTrailingBit(46075u)));
    return Struct_2(select(select(!select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, false, arg_0.a)), !select(select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), vec3<bool>(arg_0.a, false, arg_0.a), true), false), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x + 1369f), 1475f, var_3.b.x) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-467f, var_3.b.x, var_3.b.x))), _wgslsmith_f_op_vec3_f32(round(var_3.a)), vec3<bool>(false, false, arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)), _wgslsmith_f_op_vec2_f32(-var_3.b)) + var_3.b), arg_0.b.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    var var_0 = ~arg_1.b.a.x;
    var_0 = 0u;
    return arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 373f;
    let var_0 = vec3<bool>(true, true, !(!any(vec4<bool>(true, false, true, false)) && true));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~func_4(func_1(Struct_4(var_0.x, Struct_3(vec3<u32>(16493u, 1u, 4294967295u)))), Struct_4(var_0.x, Struct_3(vec3<u32>(0u, 17173u, 4294967295u)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 45279u, 14991u, 1u), vec4<u32>(1u, 40941u, 4294967295u, 25666u)), func_4(Struct_2(vec3<bool>(true, var_0.x, var_0.x), Struct_1(vec3<f32>(452f, 232f, -549f), vec2<f32>(880f, 930f), 0u)), Struct_4(var_0.x, Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u)))))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(26551u, 40078u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 71682u), vec2<u32>(37453u, 22776u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(22839u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u))), vec2<u32>(45004u, ~_wgslsmith_div_u32(1u, 30875u))));
    global3 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~func_2(1u, Struct_3(vec3<u32>(var_1, var_1, 4820u)), -global3.x), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, -33796i) << (vec4<u32>(875u, var_1, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(34841i, u_input.a, 2147483647i, 2147483647i))), vec4<i32>(u_input.d.x, max(2147483647i, -1i), -1793i, u_input.b & 43149i) ^ (-vec4<i32>(0i, -19267i, u_input.e, -2147483647i) << ((vec4<u32>(99209u, 0u, 1u, 1u) & vec4<u32>(var_1, var_1, 1u, 91568u)) % vec4<u32>(32u)))), vec4<i32>(6819i, _wgslsmith_mod_i32(u_input.e, min(u_input.d.x, u_input.a) << (_wgslsmith_mod_u32(var_1, var_1) % 32u)), ~(~0i), _wgslsmith_clamp_i32(20520i, 52619i, firstLeadingBit(global3.x | -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

