struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 1u, 1u);

var<private> global1: f32;

var<private> global2: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(true, Struct_2(Struct_1(false, -777f, vec3<i32>(4834i, 6842i, -2767i), false), vec4<i32>(37630i, 1069i, -10002i, -13899i), vec2<i32>(32156i, 59872i), Struct_1(false, 805f, vec3<i32>(1i, -1i, 20994i), false), Struct_1(true, 1079f, vec3<i32>(1i, 48530i, 1i), false)), vec4<u32>(4294967295u, 0u, 1u, 17526u)), Struct_5(false, Struct_2(Struct_1(true, -768f, vec3<i32>(37822i, 16223i, -33004i), false), vec4<i32>(-28241i, -13995i, 32466i, 1i), vec2<i32>(6001i, -36684i), Struct_1(true, -385f, vec3<i32>(-1i, 68048i, -1i), true), Struct_1(true, -1000f, vec3<i32>(-38429i, -49485i, i32(-2147483648)), false)), vec4<u32>(1u, 29339u, 1u, 87211u)), Struct_5(false, Struct_2(Struct_1(false, -3472f, vec3<i32>(27601i, 2147483647i, -8524i), true), vec4<i32>(-1i, -52735i, 32860i, -12786i), vec2<i32>(32751i, 0i), Struct_1(false, -362f, vec3<i32>(29857i, -19294i, -1i), true), Struct_1(false, 2051f, vec3<i32>(-1i, 57409i, -7654i), false)), vec4<u32>(34864u, 14024u, 1u, 0u)), Struct_5(false, Struct_2(Struct_1(true, 498f, vec3<i32>(0i, -1i, 0i), true), vec4<i32>(2147483647i, -36568i, 2147483647i, -10929i), vec2<i32>(0i, 0i), Struct_1(false, 405f, vec3<i32>(2147483647i, 2147483647i, 81244i), true), Struct_1(true, -123f, vec3<i32>(11852i, 33994i, -1i), false)), vec4<u32>(57192u, 46685u, 20627u, 43176u)), Struct_5(true, Struct_2(Struct_1(true, -274f, vec3<i32>(-58740i, 0i, 2147483647i), false), vec4<i32>(-5922i, -1i, 2147483647i, -1i), vec2<i32>(43365i, -8906i), Struct_1(true, 524f, vec3<i32>(-9941i, i32(-2147483648), 27474i), true), Struct_1(false, -836f, vec3<i32>(-1i, 0i, -33071i), false)), vec4<u32>(1u, 46908u, 1u, 22826u)), Struct_5(false, Struct_2(Struct_1(false, -877f, vec3<i32>(i32(-2147483648), -25927i, i32(-2147483648)), true), vec4<i32>(-1i, 2147483647i, -10067i, 28814i), vec2<i32>(1i, 0i), Struct_1(false, -2022f, vec3<i32>(-10027i, i32(-2147483648), 1701i), false), Struct_1(true, -1247f, vec3<i32>(65368i, -18555i, 1i), true)), vec4<u32>(0u, 85371u, 33899u, 17394u)), Struct_5(false, Struct_2(Struct_1(false, 677f, vec3<i32>(2147483647i, 52735i, 27416i), false), vec4<i32>(-17635i, i32(-2147483648), 39757i, 9670i), vec2<i32>(0i, 1i), Struct_1(false, -1035f, vec3<i32>(44792i, 1i, 31778i), false), Struct_1(false, 1005f, vec3<i32>(29773i, -9905i, 32770i), true)), vec4<u32>(0u, 87101u, 54437u, 0u)), Struct_5(true, Struct_2(Struct_1(false, -1243f, vec3<i32>(1i, 0i, i32(-2147483648)), true), vec4<i32>(0i, i32(-2147483648), 0i, -12662i), vec2<i32>(-41320i, 5171i), Struct_1(true, -480f, vec3<i32>(0i, -20230i, 20610i), false), Struct_1(false, -951f, vec3<i32>(2147483647i, 1i, -27453i), true)), vec4<u32>(1u, 69379u, 1u, 0u)), Struct_5(false, Struct_2(Struct_1(true, -764f, vec3<i32>(94246i, 2249i, i32(-2147483648)), true), vec4<i32>(-14149i, -41622i, 0i, 18006i), vec2<i32>(4885i, -24561i), Struct_1(true, 2532f, vec3<i32>(-1i, 1i, 2147483647i), false), Struct_1(true, -1000f, vec3<i32>(24531i, 0i, -1i), false)), vec4<u32>(0u, 2279u, 0u, 1u)), Struct_5(true, Struct_2(Struct_1(true, 566f, vec3<i32>(-54063i, 2147483647i, 0i), true), vec4<i32>(1i, 57244i, 28801i, -225i), vec2<i32>(1i, 39816i), Struct_1(false, 1545f, vec3<i32>(-9087i, -20072i, 2147483647i), true), Struct_1(true, 703f, vec3<i32>(11842i, 1i, -31159i), true)), vec4<u32>(0u, 28346u, 43652u, 74812u)), Struct_5(true, Struct_2(Struct_1(false, -618f, vec3<i32>(1i, 2147483647i, 1i), false), vec4<i32>(0i, -19285i, 2147483647i, -1i), vec2<i32>(2147483647i, 1i), Struct_1(false, 1000f, vec3<i32>(2147483647i, 45854i, -88966i), false), Struct_1(false, 141f, vec3<i32>(i32(-2147483648), 0i, 8037i), false)), vec4<u32>(0u, 4294967295u, 28839u, 49377u)), Struct_5(false, Struct_2(Struct_1(true, -435f, vec3<i32>(7048i, 11860i, -49808i), false), vec4<i32>(-7294i, 49836i, 0i, -35153i), vec2<i32>(-15732i, -1i), Struct_1(true, 396f, vec3<i32>(2147483647i, 28127i, i32(-2147483648)), false), Struct_1(true, 523f, vec3<i32>(1i, -9793i, 0i), false)), vec4<u32>(21881u, 4294967295u, 55726u, 102077u)), Struct_5(false, Struct_2(Struct_1(false, -1000f, vec3<i32>(0i, 1i, -3534i), true), vec4<i32>(2147483647i, 2147483647i, -9374i, -46302i), vec2<i32>(44729i, 77229i), Struct_1(true, 239f, vec3<i32>(7776i, 57453i, i32(-2147483648)), false), Struct_1(true, -303f, vec3<i32>(-42307i, 0i, -73884i), true)), vec4<u32>(1223u, 16452u, 4294967295u, 6449u)), Struct_5(false, Struct_2(Struct_1(false, -649f, vec3<i32>(1i, -17480i, 13643i), false), vec4<i32>(0i, 66195i, -27461i, -1i), vec2<i32>(i32(-2147483648), -48648i), Struct_1(true, -863f, vec3<i32>(18278i, 2147483647i, -1i), false), Struct_1(false, -958f, vec3<i32>(0i, -25577i, i32(-2147483648)), true)), vec4<u32>(1u, 56933u, 0u, 1u)), Struct_5(false, Struct_2(Struct_1(true, 291f, vec3<i32>(1i, -8606i, 5702i), false), vec4<i32>(0i, 2147483647i, -23589i, 28776i), vec2<i32>(28432i, 42041i), Struct_1(false, 134f, vec3<i32>(1i, -1i, -1i), true), Struct_1(false, -1000f, vec3<i32>(2147483647i, 48434i, 28678i), true)), vec4<u32>(31481u, 1090u, 4294967295u, 41026u)), Struct_5(true, Struct_2(Struct_1(false, 1891f, vec3<i32>(1i, 0i, 2147483647i), false), vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(false, 802f, vec3<i32>(0i, 12743i, -1i), false), Struct_1(false, -176f, vec3<i32>(30156i, -1i, 17648i), true)), vec4<u32>(8134u, 2019u, 4294967295u, 0u)), Struct_5(false, Struct_2(Struct_1(true, -2168f, vec3<i32>(4278i, -1i, 0i), true), vec4<i32>(2147483647i, 0i, -22641i, 33007i), vec2<i32>(-67931i, -2893i), Struct_1(true, -1507f, vec3<i32>(2147483647i, 1i, i32(-2147483648)), true), Struct_1(true, 1701f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), true)), vec4<u32>(35738u, 14560u, 1u, 13642u)), Struct_5(true, Struct_2(Struct_1(false, -151f, vec3<i32>(16917i, 0i, i32(-2147483648)), false), vec4<i32>(-37035i, -3793i, 1i, 21060i), vec2<i32>(-17082i, -9972i), Struct_1(true, 392f, vec3<i32>(i32(-2147483648), 32337i, 4780i), true), Struct_1(false, -1897f, vec3<i32>(-1i, -1i, 1i), true)), vec4<u32>(1u, 4294967295u, 4226u, 4294967295u)), Struct_5(false, Struct_2(Struct_1(false, 477f, vec3<i32>(-12405i, -36059i, 1i), false), vec4<i32>(6641i, -1i, 0i, -17276i), vec2<i32>(0i, 42170i), Struct_1(true, -378f, vec3<i32>(-40496i, i32(-2147483648), 28543i), true), Struct_1(true, 1788f, vec3<i32>(-44274i, 48911i, 26212i), true)), vec4<u32>(4294967295u, 4294967295u, 27191u, 11358u)), Struct_5(true, Struct_2(Struct_1(false, 234f, vec3<i32>(-31176i, 0i, 0i), true), vec4<i32>(26070i, 1i, 1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(false, 1635f, vec3<i32>(-47954i, -25479i, 1i), false), Struct_1(false, -699f, vec3<i32>(0i, 21409i, 51191i), false)), vec4<u32>(1u, 12477u, 1u, 75607u)), Struct_5(true, Struct_2(Struct_1(false, 1681f, vec3<i32>(1i, 9725i, 31766i), false), vec4<i32>(-24413i, 48043i, -24541i, i32(-2147483648)), vec2<i32>(27500i, 0i), Struct_1(false, -899f, vec3<i32>(1i, 2147483647i, 2147483647i), false), Struct_1(true, 766f, vec3<i32>(35425i, 2147483647i, -5267i), false)), vec4<u32>(1u, 91510u, 4294967295u, 11037u)), Struct_5(false, Struct_2(Struct_1(true, 299f, vec3<i32>(i32(-2147483648), -42437i, 0i), false), vec4<i32>(-54494i, 2147483647i, 0i, 31212i), vec2<i32>(i32(-2147483648), 8117i), Struct_1(true, 210f, vec3<i32>(46640i, -25802i, 5462i), true), Struct_1(false, -873f, vec3<i32>(-1i, -1i, -1i), true)), vec4<u32>(23563u, 20815u, 27093u, 30136u)), Struct_5(true, Struct_2(Struct_1(true, 310f, vec3<i32>(2147483647i, 1i, -28189i), false), vec4<i32>(2147483647i, 2147483647i, 10293i, -1i), vec2<i32>(1i, 1i), Struct_1(false, 1065f, vec3<i32>(-1i, i32(-2147483648), 1i), false), Struct_1(false, -566f, vec3<i32>(34639i, -1i, -38162i), true)), vec4<u32>(4294967295u, 0u, 42397u, 4294967295u)), Struct_5(true, Struct_2(Struct_1(false, -318f, vec3<i32>(-6869i, 63122i, -7349i), false), vec4<i32>(0i, 24425i, -1i, 0i), vec2<i32>(-3299i, -31332i), Struct_1(true, 330f, vec3<i32>(1747i, 19288i, -464i), false), Struct_1(true, 1248f, vec3<i32>(2147483647i, -49263i, -19131i), true)), vec4<u32>(1u, 0u, 22711u, 1u)), Struct_5(true, Struct_2(Struct_1(false, -120f, vec3<i32>(-18531i, 7629i, -41331i), false), vec4<i32>(0i, -47640i, i32(-2147483648), 2147483647i), vec2<i32>(-46364i, 2147483647i), Struct_1(false, -1377f, vec3<i32>(-1i, 2147483647i, 2147483647i), false), Struct_1(true, 769f, vec3<i32>(1i, -1i, 0i), true)), vec4<u32>(477u, 4294967295u, 0u, 41970u)), Struct_5(true, Struct_2(Struct_1(true, 721f, vec3<i32>(-5265i, 1i, -6996i), false), vec4<i32>(2255i, -30230i, 17110i, -47758i), vec2<i32>(1i, 2147483647i), Struct_1(true, -355f, vec3<i32>(-33173i, 2147483647i, 34392i), true), Struct_1(true, -1355f, vec3<i32>(0i, -1i, -24961i), false)), vec4<u32>(4294967295u, 23456u, 4294967295u, 692u)), Struct_5(false, Struct_2(Struct_1(false, -458f, vec3<i32>(-43100i, 0i, -58463i), true), vec4<i32>(-32248i, i32(-2147483648), -31063i, -2185i), vec2<i32>(18578i, 55276i), Struct_1(true, 518f, vec3<i32>(2147483647i, -60730i, 14668i), false), Struct_1(false, -562f, vec3<i32>(1i, 2147483647i, 0i), false)), vec4<u32>(1u, 4294967295u, 12792u, 4294967295u)), Struct_5(true, Struct_2(Struct_1(false, 1343f, vec3<i32>(2147483647i, 2147483647i, 0i), false), vec4<i32>(i32(-2147483648), 2147483647i, -49689i, -2487i), vec2<i32>(-1i, 15790i), Struct_1(true, 1288f, vec3<i32>(2147483647i, 13058i, 2147483647i), false), Struct_1(true, 1214f, vec3<i32>(-103826i, i32(-2147483648), -16221i), false)), vec4<u32>(4294967295u, 14638u, 1u, 0u)), Struct_5(true, Struct_2(Struct_1(true, -1056f, vec3<i32>(i32(-2147483648), 0i, 1i), true), vec4<i32>(1i, 2147483647i, -2560i, 36916i), vec2<i32>(-1i, -58943i), Struct_1(true, 377f, vec3<i32>(2147483647i, 1i, -4453i), true), Struct_1(false, 286f, vec3<i32>(-19647i, 5789i, 27364i), true)), vec4<u32>(9935u, 39278u, 0u, 4294967295u)), Struct_5(false, Struct_2(Struct_1(true, 3215f, vec3<i32>(1i, 13458i, -48921i), true), vec4<i32>(27813i, 2147483647i, 16767i, 62739i), vec2<i32>(-1i, 20663i), Struct_1(true, 1123f, vec3<i32>(2147483647i, 2147483647i, 2147483647i), true), Struct_1(false, 645f, vec3<i32>(34290i, 1i, -13926i), true)), vec4<u32>(4294967295u, 11465u, 10213u, 1u)), Struct_5(true, Struct_2(Struct_1(true, -570f, vec3<i32>(-43959i, 2147483647i, 0i), false), vec4<i32>(-947i, 0i, 36147i, 2147483647i), vec2<i32>(21934i, 12349i), Struct_1(false, 518f, vec3<i32>(-37406i, -56262i, 14542i), true), Struct_1(false, -1078f, vec3<i32>(1i, 2147483647i, 1i), true)), vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_5(false, Struct_2(Struct_1(false, -955f, vec3<i32>(i32(-2147483648), 16367i, 6691i), true), vec4<i32>(0i, 0i, i32(-2147483648), 0i), vec2<i32>(1i, 34733i), Struct_1(false, -1132f, vec3<i32>(2147483647i, 2055i, 2147483647i), false), Struct_1(false, -778f, vec3<i32>(2147483647i, -9509i, 0i), false)), vec4<u32>(29281u, 16115u, 1u, 42871u)));

var<private> global3: Struct_2 = Struct_2(Struct_1(false, -168f, vec3<i32>(-10793i, 6265i, 43412i), true), vec4<i32>(-2391i, -1i, -1i, 22804i), vec2<i32>(-24841i, 9602i), Struct_1(false, -324f, vec3<i32>(0i, 50881i, -12032i), true), Struct_1(false, -213f, vec3<i32>(32319i, -1i, 35837i), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-_wgslsmith_sub_vec3_i32(global3.b.wyx, firstLeadingBit(vec3<i32>(u_input.d.x, 0i, global3.d.c.x)) & -vec3<i32>(global3.b.x, u_input.b, 0i)));
    let var_1 = u_input.a >> ((vec2<u32>(1u, _wgslsmith_sub_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)]), countOneBits(u_input.e))) & abs(abs(u_input.a))) % vec2<u32>(32u));
    let var_2 = u_input.d.x;
    let var_3 = global3.d;
    global2 = array<Struct_5, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mult_i32(-var_0.x, var_2), var_3.c.x & 2147483647i));
}

