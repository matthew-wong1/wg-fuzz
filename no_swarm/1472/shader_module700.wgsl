struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11>;

var<private> global1: f32 = 558f;

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(true, Struct_2(2147483647i, Struct_1(1000f, 21914u, 2147483647i, 1u, vec4<bool>(false, true, true, false)), Struct_1(-664f, 4294967295u, 1i, 38448u, vec4<bool>(true, false, true, true)), vec3<i32>(i32(-2147483648), 1i, 34148i), Struct_1(263f, 1u, -298i, 4294967295u, vec4<bool>(true, false, false, false)))), Struct_4(false, Struct_2(10633i, Struct_1(-167f, 1u, -19751i, 58085u, vec4<bool>(true, true, true, true)), Struct_1(506f, 0u, -39701i, 3358u, vec4<bool>(false, false, false, false)), vec3<i32>(-1i, -2356i, 26597i), Struct_1(1782f, 4294967295u, 1i, 1u, vec4<bool>(true, false, true, true)))), Struct_4(false, Struct_2(2785i, Struct_1(1602f, 1u, 60019i, 12481u, vec4<bool>(false, false, true, false)), Struct_1(-437f, 1u, 1i, 33212u, vec4<bool>(true, true, false, false)), vec3<i32>(-1i, 2147483647i, -322i), Struct_1(-582f, 0u, 1i, 0u, vec4<bool>(false, true, false, false)))), Struct_4(true, Struct_2(-46076i, Struct_1(-193f, 69622u, 23586i, 65623u, vec4<bool>(true, true, false, true)), Struct_1(-1097f, 111071u, 29952i, 37608u, vec4<bool>(false, false, true, true)), vec3<i32>(-11927i, i32(-2147483648), i32(-2147483648)), Struct_1(910f, 83211u, i32(-2147483648), 1u, vec4<bool>(false, true, true, false)))), Struct_4(true, Struct_2(499i, Struct_1(-381f, 1u, -59967i, 0u, vec4<bool>(true, false, false, true)), Struct_1(1000f, 1u, 2147483647i, 20637u, vec4<bool>(true, true, false, false)), vec3<i32>(0i, 2173i, 1i), Struct_1(-749f, 0u, 68873i, 0u, vec4<bool>(true, false, false, true)))), Struct_4(true, Struct_2(i32(-2147483648), Struct_1(-1042f, 6157u, -44880i, 4294967295u, vec4<bool>(false, false, true, false)), Struct_1(-270f, 17666u, 34981i, 4294967295u, vec4<bool>(true, true, true, true)), vec3<i32>(-18581i, -9191i, -33061i), Struct_1(-2360f, 0u, 2147483647i, 4809u, vec4<bool>(false, true, false, true)))), Struct_4(false, Struct_2(1i, Struct_1(145f, 84523u, -47558i, 0u, vec4<bool>(true, false, true, true)), Struct_1(-807f, 16784u, -1i, 1u, vec4<bool>(false, false, false, false)), vec3<i32>(i32(-2147483648), -36396i, 1i), Struct_1(-1571f, 1u, -43241i, 63799u, vec4<bool>(false, true, true, false)))), Struct_4(false, Struct_2(-1i, Struct_1(468f, 23360u, 34335i, 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(-1431f, 1750u, -156i, 1u, vec4<bool>(true, false, false, true)), vec3<i32>(11990i, -1i, 6906i), Struct_1(1839f, 1u, -1i, 1u, vec4<bool>(true, true, false, true)))), Struct_4(true, Struct_2(2973i, Struct_1(551f, 1u, 1i, 15719u, vec4<bool>(false, true, false, false)), Struct_1(-1414f, 4294967295u, 48442i, 0u, vec4<bool>(true, true, false, false)), vec3<i32>(1i, -1i, 1i), Struct_1(-1112f, 58514u, 61577i, 4294967295u, vec4<bool>(false, true, false, false)))), Struct_4(true, Struct_2(i32(-2147483648), Struct_1(-1064f, 2352u, 2147483647i, 1u, vec4<bool>(false, true, false, true)), Struct_1(1000f, 50057u, -7206i, 6895u, vec4<bool>(false, true, false, true)), vec3<i32>(401i, 1i, 39208i), Struct_1(1092f, 4294967295u, i32(-2147483648), 13296u, vec4<bool>(true, false, true, true)))), Struct_4(true, Struct_2(-6625i, Struct_1(987f, 0u, -53719i, 47072u, vec4<bool>(false, false, true, false)), Struct_1(-1423f, 7630u, 20450i, 31634u, vec4<bool>(false, false, false, true)), vec3<i32>(i32(-2147483648), 1172i, 30533i), Struct_1(-2332f, 0u, 0i, 4294967295u, vec4<bool>(false, true, false, true)))), Struct_4(true, Struct_2(10915i, Struct_1(650f, 43965u, 64370i, 85688u, vec4<bool>(true, true, true, true)), Struct_1(1000f, 0u, -1i, 44823u, vec4<bool>(true, false, true, true)), vec3<i32>(0i, 8388i, i32(-2147483648)), Struct_1(981f, 4294967295u, -77044i, 1u, vec4<bool>(false, true, true, false)))), Struct_4(false, Struct_2(2147483647i, Struct_1(1000f, 1u, 19306i, 32926u, vec4<bool>(true, false, true, false)), Struct_1(618f, 4294967295u, -31692i, 4294967295u, vec4<bool>(true, true, true, true)), vec3<i32>(-2164i, -5630i, 11385i), Struct_1(501f, 4294967295u, 15257i, 3092u, vec4<bool>(false, true, false, false)))), Struct_4(true, Struct_2(-22798i, Struct_1(1839f, 1u, 1i, 4294967295u, vec4<bool>(true, true, true, true)), Struct_1(-353f, 4294967295u, -1i, 2964u, vec4<bool>(false, false, true, true)), vec3<i32>(-1i, 1i, 2147483647i), Struct_1(-1652f, 2141u, -36490i, 11816u, vec4<bool>(false, false, false, false)))), Struct_4(false, Struct_2(-5748i, Struct_1(-1809f, 1u, -1i, 26253u, vec4<bool>(false, false, true, false)), Struct_1(914f, 117894u, -21641i, 4294967295u, vec4<bool>(true, true, true, true)), vec3<i32>(1i, 2147483647i, 1i), Struct_1(1739f, 0u, 1i, 3231u, vec4<bool>(false, false, false, false)))), Struct_4(true, Struct_2(-22235i, Struct_1(-753f, 20957u, i32(-2147483648), 61877u, vec4<bool>(false, false, false, false)), Struct_1(399f, 15740u, 2147483647i, 4294967295u, vec4<bool>(true, true, true, true)), vec3<i32>(0i, 16159i, -1480i), Struct_1(520f, 9349u, -1i, 1u, vec4<bool>(true, false, false, true)))), Struct_4(false, Struct_2(-39448i, Struct_1(-1519f, 21730u, -35988i, 4294967295u, vec4<bool>(false, false, false, false)), Struct_1(795f, 11445u, -8241i, 4294967295u, vec4<bool>(true, false, true, true)), vec3<i32>(61799i, 2147483647i, 0i), Struct_1(-1635f, 82800u, 2947i, 4294967295u, vec4<bool>(false, true, false, true)))), Struct_4(true, Struct_2(2147483647i, Struct_1(1000f, 65465u, i32(-2147483648), 71368u, vec4<bool>(true, true, false, false)), Struct_1(391f, 86238u, 18123i, 42827u, vec4<bool>(false, false, false, false)), vec3<i32>(2655i, -23418i, -7296i), Struct_1(1000f, 15755u, 0i, 6637u, vec4<bool>(true, true, false, true)))), Struct_4(false, Struct_2(2147483647i, Struct_1(-1030f, 15359u, 1i, 6057u, vec4<bool>(true, false, false, false)), Struct_1(-317f, 1u, 2147483647i, 4294967295u, vec4<bool>(true, false, false, false)), vec3<i32>(-1i, 15318i, -1i), Struct_1(-1091f, 26860u, -6752i, 7497u, vec4<bool>(true, false, true, true)))), Struct_4(false, Struct_2(-1i, Struct_1(-620f, 21372u, 1i, 28977u, vec4<bool>(false, false, true, true)), Struct_1(-361f, 119230u, 1i, 4294967295u, vec4<bool>(true, false, true, true)), vec3<i32>(-28410i, 38602i, -1i), Struct_1(-607f, 39837u, -1i, 10288u, vec4<bool>(true, false, false, true)))), Struct_4(false, Struct_2(1i, Struct_1(925f, 50343u, 19601i, 0u, vec4<bool>(true, true, true, true)), Struct_1(-513f, 10177u, 0i, 0u, vec4<bool>(false, true, true, false)), vec3<i32>(2147483647i, 0i, -28526i), Struct_1(-940f, 8957u, 1i, 1u, vec4<bool>(false, true, true, false)))), Struct_4(false, Struct_2(-11920i, Struct_1(-1582f, 39086u, -1i, 24519u, vec4<bool>(true, false, false, false)), Struct_1(-171f, 4294967295u, 25307i, 4294967295u, vec4<bool>(false, false, true, true)), vec3<i32>(2147483647i, 0i, i32(-2147483648)), Struct_1(684f, 0u, -1i, 1u, vec4<bool>(false, false, true, true)))), Struct_4(false, Struct_2(0i, Struct_1(474f, 48692u, i32(-2147483648), 4294967295u, vec4<bool>(false, false, true, true)), Struct_1(-1841f, 4294967295u, 36993i, 1u, vec4<bool>(true, true, true, true)), vec3<i32>(31568i, -6131i, -43204i), Struct_1(-2477f, 42014u, 41717i, 91872u, vec4<bool>(true, true, false, true)))), Struct_4(true, Struct_2(43701i, Struct_1(-1160f, 17194u, 28783i, 4396u, vec4<bool>(true, false, false, false)), Struct_1(-1574f, 9279u, i32(-2147483648), 0u, vec4<bool>(true, true, false, false)), vec3<i32>(-48085i, -52700i, 1i), Struct_1(-1000f, 78576u, 0i, 1u, vec4<bool>(true, false, false, false)))), Struct_4(true, Struct_2(-1i, Struct_1(1351f, 4294967295u, -18657i, 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(931f, 82903u, -3875i, 1u, vec4<bool>(false, false, true, false)), vec3<i32>(33620i, -36717i, 38742i), Struct_1(938f, 32204u, -28093i, 1u, vec4<bool>(true, true, false, false)))), Struct_4(false, Struct_2(-1i, Struct_1(-1000f, 6781u, i32(-2147483648), 49164u, vec4<bool>(false, true, true, true)), Struct_1(-1328f, 1u, 1i, 0u, vec4<bool>(true, true, false, false)), vec3<i32>(1i, 8001i, -1i), Struct_1(2190f, 26021u, 0i, 1u, vec4<bool>(true, true, true, false)))), Struct_4(false, Struct_2(0i, Struct_1(-293f, 1u, -1i, 116365u, vec4<bool>(true, true, true, true)), Struct_1(-370f, 70515u, -1i, 1u, vec4<bool>(false, false, false, true)), vec3<i32>(-1i, -16967i, 15690i), Struct_1(804f, 4294967295u, 4392i, 72947u, vec4<bool>(true, true, true, false)))), Struct_4(true, Struct_2(i32(-2147483648), Struct_1(-167f, 1u, 33479i, 33133u, vec4<bool>(false, false, true, true)), Struct_1(-733f, 47361u, 39602i, 44328u, vec4<bool>(true, false, false, true)), vec3<i32>(75040i, 20615i, i32(-2147483648)), Struct_1(1510f, 55533u, -37769i, 0u, vec4<bool>(true, true, true, true)))), Struct_4(false, Struct_2(1741i, Struct_1(-1070f, 0u, -1i, 46785u, vec4<bool>(true, true, true, false)), Struct_1(-816f, 4294967295u, i32(-2147483648), 34087u, vec4<bool>(true, false, false, false)), vec3<i32>(-42967i, i32(-2147483648), 24075i), Struct_1(1622f, 31187u, 0i, 1u, vec4<bool>(false, true, false, false)))), Struct_4(true, Struct_2(i32(-2147483648), Struct_1(1178f, 51182u, -9664i, 1u, vec4<bool>(true, false, false, true)), Struct_1(405f, 0u, -25168i, 108949u, vec4<bool>(false, true, false, false)), vec3<i32>(2147483647i, 0i, 2147483647i), Struct_1(614f, 0u, -2532i, 4294967295u, vec4<bool>(false, false, true, true)))), Struct_4(true, Struct_2(9120i, Struct_1(-1478f, 4294967295u, 10948i, 0u, vec4<bool>(false, true, true, false)), Struct_1(145f, 0u, 2147483647i, 0u, vec4<bool>(true, false, false, true)), vec3<i32>(-55846i, -13080i, 0i), Struct_1(-428f, 4294967295u, 2147483647i, 34162u, vec4<bool>(false, false, false, false)))), Struct_4(true, Struct_2(-33198i, Struct_1(-1000f, 44572u, -43549i, 1u, vec4<bool>(false, false, true, true)), Struct_1(-1202f, 78766u, 0i, 1u, vec4<bool>(false, true, true, false)), vec3<i32>(i32(-2147483648), 0i, 44692i), Struct_1(-1833f, 17525u, i32(-2147483648), 1063u, vec4<bool>(true, false, false, false)))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = !select(false, false, false);
    let var_1 = Struct_5(Struct_3(Struct_2(select(firstTrailingBit(u_input.c), 0i, true), Struct_1(1f, 1u, u_input.b.x, u_input.a.x, vec4<bool>(true, var_0, var_0, true)), Struct_1(_wgslsmith_f_op_f32(max(-1040f, 1130f)), ~71546u, u_input.c, 34303u, select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, true, var_0, var_0), var_0)), countOneBits(select(vec3<i32>(u_input.b.x, -35744i, u_input.c), u_input.b, vec3<bool>(false, false, var_0))), Struct_1(_wgslsmith_f_op_f32(494f - 808f), u_input.a.x, -2147483647i, ~0u, select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, false), var_0))), vec2<u32>(abs(abs(6249u)), u_input.a.x)), Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -654f), reverseBits(u_input.a.x), -1i, 0u, select(select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0), false), select(vec4<bool>(false, true, var_0, true), vec4<bool>(false, var_0, true, true), true), !vec4<bool>(false, false, var_0, var_0))), Struct_1(_wgslsmith_f_op_f32(-1348f - _wgslsmith_f_op_f32(-506f + -986f)), ~firstTrailingBit(u_input.a.x), u_input.c & -1i, ~u_input.a.x & ~1u, !select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, true))), vec3<i32>(min(u_input.c, -20119i), u_input.c, u_input.b.x), Struct_1(1f, select(~u_input.a.x, u_input.a.x, !var_0), max(2201i, ~u_input.b.x), _wgslsmith_div_u32(u_input.a.x, 4294967295u), !vec4<bool>(var_0, false, var_0, var_0))), Struct_2(2147483647i | u_input.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(168f, 107f))), ~firstLeadingBit(u_input.a.x), u_input.b.x, _wgslsmith_div_u32(5593u, 4294967295u), !(!vec4<bool>(var_0, var_0, var_0, var_0))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)), abs(u_input.a.x)), max(u_input.c, _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.yz)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(56003u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 4294967295u, 0u), vec3<bool>(true, true, var_0)), vec3<u32>(1u, u_input.a.x, 66986u)), !select(vec4<bool>(var_0, true, true, false), vec4<bool>(false, true, false, false), true)), max(_wgslsmith_clamp_vec3_i32(-u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 43945i, 34282i), vec3<i32>(u_input.c, u_input.b.x, u_input.b.x)), u_input.b), ~(-vec3<i32>(-30962i, u_input.c, u_input.c))), Struct_1(484f, u_input.a.x, ~(u_input.b.x << (u_input.a.x % 32u)), (u_input.a.x << (u_input.a.x % 32u)) << (~u_input.a.x % 32u), !(!vec4<bool>(var_0, true, var_0, false)))), max(-u_input.b, u_input.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.c.a, -1092f, var_1.a.a.b.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.a, -919f, -647f))) - vec3<f32>(171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.a.b.a)))), _wgslsmith_f_op_f32(select(var_1.b.e.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.a.a.b.a)), _wgslsmith_f_op_f32(2734f - var_1.b.b.a), var_1.b.b.a != var_1.a.a.b.a)), !var_0))));
    global1 = 746f;
    let var_3 = Struct_4(all(var_1.c.b.e), Struct_2(var_1.c.b.c, var_1.c.c, Struct_1(var_2.x, 1u, u_input.c, 15879u | _wgslsmith_dot_vec4_u32(vec4<u32>(4196u, u_input.a.x, var_1.c.e.d, u_input.a.x), vec4<u32>(var_1.a.b.x, 23669u, u_input.a.x, 39053u)), var_1.c.e.e), var_1.a.a.d << (firstTrailingBit(vec3<u32>(var_1.a.a.b.d, 0u, 0u)) % vec3<u32>(32u)), var_1.b.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.c.a)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_5(Struct_3(arg_0.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 9326u, 18116u), vec3<u32>(4294967295u, arg_1.d, arg_0.a.c.b)) >> (_wgslsmith_sub_u32(105322u, arg_1.b) % 32u), countOneBits(select(arg_1.b, arg_0.a.b.b, arg_0.a.b.e.x)))), arg_0.a, arg_0.a, vec3<i32>(-abs(~24341i), 27949i, arg_1.c));
    global2 = array<Struct_4, 32>();
    let var_1 = any(vec2<bool>(arg_0.a.b.e.x, !all(vec4<bool>(true, true, arg_0.a.b.e.x, arg_1.e.x))));
    let var_2 = vec2<u32>(~arg_0.a.c.b, 1u);
    global1 = _wgslsmith_f_op_f32(-var_0.a.a.b.a);
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: bool) -> StorageBuffer {
    global1 = -740f;
    global2 = array<Struct_4, 32>();
    var var_0 = _wgslsmith_f_op_f32(sign(arg_2.x));
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))) < _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_2.x), all(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]))), select(!arg_1 & !arg_1, false, arg_3), true);
    var var_2 = vec4<bool>(true, false && all(select(!var_1, vec3<bool>(false, arg_1, arg_1), arg_3)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(0i, Struct_1(arg_2.x, u_input.a.x, u_input.b.x, u_input.a.x, vec4<bool>(true, false, true, var_1.x)), Struct_1(arg_2.x, 1u, u_input.b.x, u_input.a.x, vec4<bool>(false, var_1.x, arg_1, true)), u_input.b, Struct_1(974f, arg_0, u_input.c, 0u, vec4<bool>(false, arg_1, true, false))), vec2<u32>(u_input.a.x, 1u)), Struct_1(arg_2.x, arg_0, u_input.c, 37300u, vec4<bool>(false, false, arg_1, true))))) < _wgslsmith_f_op_f32(sign(arg_2.x))), -u_input.b.x >= _wgslsmith_div_i32(-(i32(-1i) * -19894i), u_input.b.x));
    return StorageBuffer(~(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, -16336i, u_input.b.x, u_input.b.x), select(vec4<i32>(u_input.c, 0i, u_input.c, -1i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i), true))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, select(u_input.a.x, u_input.a.x, arg_1), u_input.a.x, arg_0 << (0u % 32u)), ~vec4<u32>(u_input.a.x, arg_0, arg_0, 815u)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), u_input.a.x, select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a.x, 1u), vec3<u32>(u_input.a.x, arg_0, u_input.a.x)), !arg_1), 1u)), min((_wgslsmith_mult_u32(u_input.a.x, arg_0) & ~65048u) << (_wgslsmith_mod_u32(92398u >> (arg_0 % 32u), ~46170u) % 32u), 50277u), _wgslsmith_mod_u32(max(reverseBits(max(u_input.a.x, 1u)), u_input.a.x), select(~(arg_0 | 1u), ~_wgslsmith_add_u32(arg_0, 4294967295u), all(vec4<bool>(true, true, arg_3, var_2.x)) || false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 32>();
    global0 = array<vec2<bool>, 11>();
    let var_0 = Struct_3(Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(42614u, 1u))), u_input.b.x, u_input.a.x, vec4<bool>(false, u_input.c <= 32544i, true, true)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -575f), min(firstTrailingBit(38568u), ~u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -10185i, u_input.b.x)), u_input.a.x, !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), vec3<i32>(0i, i32(-1i) * -708i, u_input.b.x), Struct_1(188f, _wgslsmith_mult_u32(0u >> (u_input.a.x % 32u), firstTrailingBit(u_input.a.x)), u_input.c, ~1u, vec4<bool>(true, true, true, true))), max(~vec2<u32>(~u_input.a.x, u_input.a.x), ~firstTrailingBit(~u_input.a)));
    var var_1 = ~var_0.a.c.d;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.a)), var_0.a.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.b.a, var_0.a.c.a)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2907f), _wgslsmith_f_op_f32(-var_0.a.c.a))))) - vec2<f32>(-531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(301f)))));
    let x = u_input.a;
    s_output = func_1(var_0.a.c.b, false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.b.a, 1000f), var_2))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2)), vec2<f32>(996f, var_2.x), false))), false);
}

