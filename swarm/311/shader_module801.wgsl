struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(47024i, 20663i, -10034i);

var<private> global1: Struct_5 = Struct_5(vec3<bool>(false, false, true));

var<private> global2: array<f32, 20> = array<f32, 20>(2276f, -584f, -1000f, 491f, 439f, 634f, -125f, -1277f, -431f, -681f, -336f, 742f, -1418f, -597f, 1683f, 581f, -1226f, -1180f, 608f, 502f);

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec3<f32>(1840f, 965f, 242f), Struct_1(vec2<u32>(64095u, 4294967295u), 11963u, false, vec4<u32>(63432u, 20884u, 4294967295u, 1u)), vec3<i32>(i32(-2147483648), -2525i, -1i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(-408f, 1268f, 440f), Struct_1(vec2<u32>(14110u, 55064u), 51152u, false, vec4<u32>(1u, 9550u, 14817u, 69847u)), vec3<i32>(i32(-2147483648), 20889i, -1i), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec3<f32>(1022f, 1484f, 1130f), Struct_1(vec2<u32>(0u, 31265u), 1u, true, vec4<u32>(88579u, 4294967295u, 4294967295u, 0u)), vec3<i32>(-1i, -1i, -74040i), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec3<f32>(-111f, -1009f, -291f), Struct_1(vec2<u32>(35424u, 22195u), 4294967295u, false, vec4<u32>(24703u, 1u, 4294967295u, 53100u)), vec3<i32>(50996i, 0i, 2147483647i), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_2(vec3<f32>(362f, -175f, 1440f), Struct_1(vec2<u32>(1u, 1u), 35579u, true, vec4<u32>(0u, 0u, 52127u, 4294967295u)), vec3<i32>(2147483647i, 2147483647i, 3997i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(1509f, 309f, -232f), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, true, vec4<u32>(26688u, 7125u, 1u, 0u)), vec3<i32>(69672i, 34574i, -38381i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(893f, 713f, 1669f), Struct_1(vec2<u32>(0u, 4294967295u), 0u, true, vec4<u32>(79684u, 0u, 0u, 66705u)), vec3<i32>(-25928i, 43535i, 0i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(-1714f, -1000f, -2101f), Struct_1(vec2<u32>(12780u, 25605u), 32920u, true, vec4<u32>(4479u, 87243u, 1u, 110481u)), vec3<i32>(2147483647i, 17570i, -1i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(266f, 1006f, 1000f), Struct_1(vec2<u32>(9897u, 72764u), 44356u, false, vec4<u32>(4294967295u, 89606u, 46452u, 1u)), vec3<i32>(0i, -3760i, -13560i), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec3<f32>(-944f, 1021f, 419f), Struct_1(vec2<u32>(39178u, 37968u), 25081u, true, vec4<u32>(49743u, 1u, 56284u, 62884u)), vec3<i32>(-4836i, 0i, 2147483647i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(357f, -659f, 1079f), Struct_1(vec2<u32>(1u, 1u), 4294967295u, true, vec4<u32>(24317u, 1u, 1769u, 1u)), vec3<i32>(-6129i, 0i, 15264i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(-1129f, 1245f, 1003f), Struct_1(vec2<u32>(12536u, 68168u), 4294967295u, true, vec4<u32>(0u, 1u, 1u, 49036u)), vec3<i32>(1i, -15617i, 0i), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(231f, 358f, 1485f), Struct_1(vec2<u32>(36788u, 1u), 1u, false, vec4<u32>(1u, 3907u, 41046u, 7593u)), vec3<i32>(-4597i, 0i, -23038i), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(206f, 1344f, -628f), Struct_1(vec2<u32>(4294967295u, 23786u), 4294967295u, false, vec4<u32>(0u, 71598u, 61050u, 1u)), vec3<i32>(i32(-2147483648), 33568i, -1396i), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(-1000f, -1000f, -588f), Struct_1(vec2<u32>(4294967295u, 55826u), 4294967295u, false, vec4<u32>(109522u, 8367u, 63273u, 4294967295u)), vec3<i32>(-35770i, -5786i, 2147483647i), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_2(vec3<f32>(259f, -207f, 605f), Struct_1(vec2<u32>(19145u, 0u), 52156u, false, vec4<u32>(19496u, 2253u, 23071u, 23539u)), vec3<i32>(i32(-2147483648), 0i, 7906i), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(-207f, 1946f, -2145f), Struct_1(vec2<u32>(4294967295u, 29576u), 4294967295u, false, vec4<u32>(0u, 1u, 4294967295u, 1u)), vec3<i32>(i32(-2147483648), 32384i, -4934i), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(-597f, 343f, -2023f), Struct_1(vec2<u32>(1u, 1u), 0u, false, vec4<u32>(18741u, 10641u, 0u, 4294967295u)), vec3<i32>(2147483647i, 24668i, i32(-2147483648)), vec2<bool>(false, false), vec2<bool>(false, false)), Struct_2(vec3<f32>(947f, 282f, 1374f), Struct_1(vec2<u32>(4294967295u, 59754u), 8703u, false, vec4<u32>(42006u, 59063u, 4294967295u, 33643u)), vec3<i32>(4049i, 16373i, -1i), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec3<f32>(1000f, 1539f, -1367f), Struct_1(vec2<u32>(4294967295u, 19745u), 21320u, true, vec4<u32>(31179u, 0u, 46355u, 4294967295u)), vec3<i32>(1i, -1i, -27135i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_2(vec3<f32>(-364f, -829f, 1000f), Struct_1(vec2<u32>(1u, 69081u), 37598u, true, vec4<u32>(4294967295u, 26948u, 1u, 4294967295u)), vec3<i32>(19445i, 24266i, -27493i), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(vec3<f32>(682f, -1387f, 568f), Struct_1(vec2<u32>(0u, 31842u), 0u, true, vec4<u32>(4294967295u, 55846u, 1u, 73641u)), vec3<i32>(-1i, 0i, 2147483647i), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_2(vec3<f32>(-1632f, -550f, 1525f), Struct_1(vec2<u32>(0u, 0u), 1u, false, vec4<u32>(4294967295u, 9692u, 22149u, 4294967295u)), vec3<i32>(-33877i, 92472i, 19460i), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_2(vec3<f32>(-233f, -933f, 764f), Struct_1(vec2<u32>(78416u, 0u), 92865u, false, vec4<u32>(92866u, 1u, 0u, 1u)), vec3<i32>(-32024i, 2147483647i, i32(-2147483648)), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_2(vec3<f32>(-1627f, 1823f, 1767f), Struct_1(vec2<u32>(22802u, 10971u), 6486u, false, vec4<u32>(23336u, 1u, 27283u, 3508u)), vec3<i32>(-35849i, -62898i, -23456i), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_2(vec3<f32>(-692f, -361f, 1000f), Struct_1(vec2<u32>(64214u, 4294967295u), 12486u, false, vec4<u32>(6519u, 41742u, 13380u, 33169u)), vec3<i32>(0i, 21812i, i32(-2147483648)), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(599f, 671f, -633f), Struct_1(vec2<u32>(0u, 43737u), 1u, true, vec4<u32>(9766u, 16885u, 40885u, 39452u)), vec3<i32>(12982i, 33776i, -62695i), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(-1206f, 130f, 2337f), Struct_1(vec2<u32>(4294967295u, 72559u), 4294967295u, false, vec4<u32>(1u, 4294967295u, 12982u, 0u)), vec3<i32>(0i, -1i, i32(-2147483648)), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(703f, 552f, 413f), Struct_1(vec2<u32>(77948u, 4294967295u), 9746u, false, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), vec3<i32>(16590i, 1i, -74550i), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec3<f32>(-744f, 1776f, 424f), Struct_1(vec2<u32>(41160u, 29110u), 4294967295u, false, vec4<u32>(3334u, 55746u, 0u, 4294967295u)), vec3<i32>(-3276i, 20372i, -21160i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_2(vec3<f32>(-1396f, -206f, -1399f), Struct_1(vec2<u32>(1u, 4294967295u), 75259u, true, vec4<u32>(1u, 4294967295u, 101457u, 4197u)), vec3<i32>(0i, 0i, -19864i), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_2(vec3<f32>(-1000f, 1165f, 526f), Struct_1(vec2<u32>(89869u, 9518u), 20984u, true, vec4<u32>(28607u, 7689u, 18207u, 119593u)), vec3<i32>(0i, -15349i, 18811i), vec2<bool>(false, false), vec2<bool>(false, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    var var_0 = -_wgslsmith_add_vec2_i32(-global0.zx, global0.yy);
    let var_1 = Struct_5(!global1.a);
    var var_2 = global1.a.x;
    let var_3 = ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(~u_input.b, 52709u), vec2<u32>(select(1u, 4294967295u, !var_1.a.x), 1u), u_input.a.yw);
    var var_4 = select(select(vec4<bool>(false, !all(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), all(select(vec3<bool>(false, global1.a.x, true), var_1.a, vec3<bool>(var_1.a.x, var_1.a.x, false))), true), vec4<bool>(true, ~var_3.x < 4294967295u, true || all(global1.a), select(false, global1.a.x, all(var_1.a.xy))), !select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), !vec4<bool>(var_1.a.x, var_1.a.x, true, false), !vec4<bool>(true, var_1.a.x, false, var_1.a.x))), select(!select(select(vec4<bool>(global1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(global1.a.x, true, true, false), vec4<bool>(var_1.a.x, global1.a.x, true, var_1.a.x)), !vec4<bool>(var_1.a.x, false, false, false), true), vec4<bool>(global2[_wgslsmith_index_u32(15526u, 20u)] >= 1f, !var_1.a.x, true, true), true), select(!(!vec4<bool>(true, var_1.a.x, global1.a.x, true)), select(vec4<bool>(any(vec4<bool>(global1.a.x, false, var_1.a.x, global1.a.x)), !global1.a.x, var_1.a.x, global1.a.x), vec4<bool>(any(vec4<bool>(var_1.a.x, global1.a.x, false, var_1.a.x)), true, true, true), !(!vec4<bool>(global1.a.x, true, global1.a.x, var_1.a.x))), all(select(!vec4<bool>(global1.a.x, true, var_1.a.x, true), !vec4<bool>(var_1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(true, true, false, var_1.a.x)))));
    return select(-firstLeadingBit(vec4<i32>(global0.x, firstLeadingBit(global0.x), countOneBits(-43378i), _wgslsmith_div_i32(var_0.x, 5812i))), ~vec4<i32>(2147483647i << (~u_input.b % 32u), min(~var_0.x, var_0.x), i32(-1i) * -12460i, 1i), !select(!vec4<bool>(var_1.a.x, var_4.x, false, global1.a.x), vec4<bool>(true, var_0.x > u_input.c, true, true), !vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = max(abs(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-16665i, arg_1.x, arg_1.x, -26511i) & vec4<i32>(4063i, 49837i, arg_2.c.x, 0i)), min(~vec4<i32>(31740i, arg_0.b, arg_1.x, arg_0.b), vec4<i32>(-1i, 0i, arg_0.b, -1i)))), ~(func_3() | countOneBits(vec4<i32>(71464i, 1i, -1i, global0.x))));
    let var_1 = ~(~abs(abs(u_input.a.x))) << ((_wgslsmith_mod_u32(u_input.a.x, 4294967295u) | ~u_input.a.x) % 32u);
    let var_2 = vec2<u32>(arg_2.b.d.x, _wgslsmith_sub_u32(~u_input.b, _wgslsmith_add_u32(_wgslsmith_mult_u32(21273u, 0u) << (~arg_2.b.a.x % 32u), 24148u)));
    var var_3 = true && !any(!global1.a);
    let var_4 = ~var_2 & vec2<u32>(u_input.a.x, var_2.x);
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_5) -> f32 {
    var var_0 = Struct_3(false | func_2(Struct_3(false, _wgslsmith_clamp_i32(u_input.c, -66440i, global0.x)), abs(arg_1.zxx), global3[_wgslsmith_index_u32(12766u ^ (1u | u_input.a.x), 32u)]), ~(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.c), global0.zz), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.c, global0.x), vec4<i32>(u_input.c, 2147483647i, 17603i, arg_1.x))) ^ ((-2147483647i & global0.x) >> (58262u % 32u))));
    global0 = vec3<i32>(~0i, ~(-_wgslsmith_sub_i32(countOneBits(var_0.b), global0.x)), countOneBits(arg_1.x));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~_wgslsmith_mod_u32(5780u, u_input.a.x)), select(u_input.b, _wgslsmith_dot_vec3_u32(abs(u_input.a.zxz), ~vec3<u32>(5752u, u_input.a.x, 14498u)), !global1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(4294967295u, 0u))), ~(~u_input.a.x ^ _wgslsmith_mult_u32(u_input.a.x, 4307u))), u_input.a);
    var var_2 = global0.x;
    var var_3 = arg_0.x;
    return -1223f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1449f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(717f, global2[_wgslsmith_index_u32(4294967295u, 20u)])))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)]))))))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(956f + _wgslsmith_f_op_f32(func_1(vec3<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec4<i32>(8451i, -2147483647i, global0.x, -4479i), Struct_5(global1.a)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(74181u, 20u)]))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, global2[_wgslsmith_index_u32(1u, 20u)], 776f))), vec4<i32>(countOneBits(-1i), 38551i, _wgslsmith_div_i32(-1i, u_input.c), ~(-1i)), Struct_5(select(vec3<bool>(true, true, true), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(771f)), -1488f, -525f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 20u)]), global2[_wgslsmith_index_u32(~4294967295u, 20u)], 237f))), Struct_1(~vec2<u32>(u_input.b, countOneBits(u_input.b)), 15278u, global1.a.x, firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(55841u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(1u, 0u, 1u, u_input.a.x)), reverseBits(u_input.a), vec4<u32>(2004u, u_input.b, u_input.a.x, u_input.a.x)))), vec3<i32>(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.c, -1i), vec4<i32>(u_input.c, global0.x, u_input.c, 1i)), ~(6733i & global0.x)), -_wgslsmith_sub_i32(u_input.c, ~u_input.c), u_input.c), global1.a.xy, global1.a.zz);
    global3 = array<Struct_2, 32>();
    let var_2 = Struct_1((vec2<u32>(26505u, max(var_1.b.b, 42345u)) >> (select(~vec2<u32>(var_1.b.b, var_1.b.b), ~vec2<u32>(1u, 94412u), select(var_1.d, global1.a.xy, vec2<bool>(false, true))) % vec2<u32>(32u))) | select(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_1.b.a), vec2<u32>(30546u, 1u) & var_1.b.a, vec2<u32>(var_1.b.a.x, var_1.b.a.x)), ~(vec2<u32>(var_1.b.d.x, var_1.b.a.x) << (var_1.b.d.wy % vec2<u32>(32u))), select(!vec2<bool>(var_1.d.x, global1.a.x), !var_1.e, select(vec2<bool>(true, global1.a.x), vec2<bool>(var_1.b.c, var_1.b.c), global1.a.x))), 65010u, false, var_1.b.d);
    var var_3 = ~vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(var_2.d), ~vec4<u32>(u_input.b, 66982u, 4294967295u, 75685u)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(1u, u_input.b, 63123u, 104541u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(68784u, u_input.a.x, 1u, 0u), var_2.d) % vec4<u32>(32u))));
}

