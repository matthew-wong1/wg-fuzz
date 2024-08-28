struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-17097i, 4372i, 0i), vec2<i32>(-11292i, 8199i), 28978u, vec3<i32>(2147483647i, 2147483647i, 0i)), -155f, Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-1188i, 2147483647i, 1i), vec2<i32>(2147483647i, -44889i), 26605u, vec3<i32>(i32(-2147483648), -1i, -42206i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-44762i, 20134i, i32(-2147483648)), vec2<i32>(2147483647i, 17501i), 24938u, vec3<i32>(2147483647i, 2147483647i, 0i)), Struct_2(75130u, vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, -18496i, -202i), vec2<i32>(i32(-2147483648), -3214i), 0u, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), -2433f)), Struct_3(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(1i, 54471i, 1i), vec2<i32>(1i, 1i), 60102u, vec3<i32>(0i, -1i, -62984i)), 462f, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-1i, -17113i, -1i), vec2<i32>(-1i, -14060i), 4294967295u, vec3<i32>(1i, -4505i, 50518i)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(21551i, -1i, -1i), vec2<i32>(-1i, i32(-2147483648)), 4294967295u, vec3<i32>(-60130i, i32(-2147483648), 87875i)), Struct_2(0u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(i32(-2147483648), -11456i, i32(-2147483648)), vec2<i32>(0i, 1i), 0u, vec3<i32>(50580i, 0i, 48930i)), -512f)), Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1i, 17176i, -1i), vec2<i32>(-10405i, -76392i), 73634u, vec3<i32>(-1i, 2147483647i, 0i)), 709f, Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(i32(-2147483648), -17402i, 1i), vec2<i32>(-8106i, 0i), 27558u, vec3<i32>(53799i, 12152i, 0i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(2147483647i, 2147483647i, 2806i), vec2<i32>(-1i, 88443i), 113565u, vec3<i32>(32155i, -31424i, 17631i)), Struct_2(1u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, -1i, -1i), vec2<i32>(29903i, -5377i), 29929u, vec3<i32>(i32(-2147483648), -44133i, 0i)), -1423f)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(0i, -1i, 68742i), vec2<i32>(i32(-2147483648), -45411i), 76322u, vec3<i32>(2147483647i, 2147483647i, -44374i)), 1066f, Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(2041i, -8137i, i32(-2147483648)), vec2<i32>(-36900i, 0i), 2936u, vec3<i32>(-30422i, 0i, -49787i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(0i, -1i, -4109i), vec2<i32>(-66031i, 2147483647i), 0u, vec3<i32>(0i, i32(-2147483648), 45711i)), Struct_2(57636u, vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-10097i, 38323i, 10469i), vec2<i32>(36215i, -1i), 22360u, vec3<i32>(11459i, 1474i, i32(-2147483648))), -1369f)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(2147483647i, 35975i, 589i), vec2<i32>(32193i, -5780i), 28863u, vec3<i32>(16845i, -12253i, 2147483647i)), -2314f, Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(-18708i, 2147483647i, -66524i), vec2<i32>(-43281i, -12338i), 20930u, vec3<i32>(0i, 0i, 37670i)), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, -2289i, 2147483647i), vec2<i32>(1i, -1i), 19999u, vec3<i32>(0i, i32(-2147483648), -13080i)), Struct_2(25845u, vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(37691i, 46008i, -1i), vec2<i32>(42890i, 4902i), 31810u, vec3<i32>(-1i, -9444i, -1i)), -2044f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(7731i, 1i, 23934i), vec2<i32>(-10872i, 0i), 58210u, vec3<i32>(22646i, -15774i, 19084i)), 504f, Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(3013i, 37175i, i32(-2147483648)), vec2<i32>(16524i, -1i), 44508u, vec3<i32>(i32(-2147483648), 18141i, -5657i)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(1i, -13766i, 71339i), vec2<i32>(1i, 1400i), 106675u, vec3<i32>(i32(-2147483648), 1i, 49407i)), Struct_2(0u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1i, i32(-2147483648), 0i), vec2<i32>(-1i, 2147483647i), 38691u, vec3<i32>(1i, 0i, 0i)), -309f)), Struct_3(Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-12041i, -11900i, 0i), vec2<i32>(11964i, 1i), 0u, vec3<i32>(i32(-2147483648), 2147483647i, 0i)), 771f, Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1i, -2768i, 8799i), vec2<i32>(1i, -1i), 0u, vec3<i32>(i32(-2147483648), -10386i, 13030i)), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(1i, -466i, i32(-2147483648)), vec2<i32>(7347i, -31788i), 19188u, vec3<i32>(-15513i, -25431i, 63053i)), Struct_2(46512u, vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(53148i, 2147483647i, 0i), vec2<i32>(16844i, -10404i), 4006u, vec3<i32>(33778i, 1i, 1i)), 1000f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(-23336i, 1i, 27530i), vec2<i32>(2147483647i, 1i), 0u, vec3<i32>(14952i, 1i, 74775i)), -1624f, Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec2<i32>(-65701i, 19148i), 1u, vec3<i32>(-3553i, 2147483647i, 0i)), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(66786i, 33427i, -1i), vec2<i32>(1i, -11640i), 4294967295u, vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_2(2581u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(3154i, 11550i, -1i), vec2<i32>(1i, 31167i), 0u, vec3<i32>(-45811i, -31371i, 0i)), 1940f)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(-48394i, -30539i, -13263i), vec2<i32>(-38960i, 2147483647i), 25155u, vec3<i32>(-34881i, -1i, 6815i)), 1085f, Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(2147483647i, -1i, 69844i), vec2<i32>(2147483647i, -14480i), 30720u, vec3<i32>(0i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(0i, 9719i, -71545i), vec2<i32>(0i, 0i), 1u, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_2(1u, vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(46179i, -1i, 2147483647i), vec2<i32>(2147483647i, 22843i), 0u, vec3<i32>(-1i, -25371i, -51124i)), -454f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(-23803i, 26939i, 72332i), vec2<i32>(9917i, 2147483647i), 7073u, vec3<i32>(-17357i, 2147483647i, 0i)), -648f, Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, 2147483647i, -7868i), vec2<i32>(-3499i, 44540i), 42987u, vec3<i32>(0i, -1i, 2147483647i)), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(0i, -18613i, 0i), vec2<i32>(0i, -36123i), 0u, vec3<i32>(-18111i, 1i, 2124i)), Struct_2(62u, vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-27405i, 11549i, -1i), vec2<i32>(59239i, 28602i), 7545u, vec3<i32>(i32(-2147483648), -38332i, 2147483647i)), 1271f)), Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-1438i, -33261i, -14375i), vec2<i32>(2147483647i, -13903i), 8265u, vec3<i32>(-41127i, -40389i, 2147483647i)), -144f, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -37609i), 67037u, vec3<i32>(10322i, 0i, -1i)), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(1i, -70939i, -16913i), vec2<i32>(-24431i, -36798i), 46963u, vec3<i32>(-1i, 0i, 2147483647i)), Struct_2(0u, vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, 0i, 1i), vec2<i32>(1i, 1i), 1u, vec3<i32>(-28456i, 16341i, 1i)), 414f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-16611i, -12129i, -1038i), vec2<i32>(-22002i, 2147483647i), 1u, vec3<i32>(15329i, 40852i, 1i)), 1000f, Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(4595i, 33097i, -1i), vec2<i32>(1i, 32312i), 81378u, vec3<i32>(36002i, -25817i, -1i)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(1i, 0i, 1i), vec2<i32>(2147483647i, -11010i), 4294967295u, vec3<i32>(19743i, 2147483647i, -1i)), Struct_2(0u, vec3<bool>(false, false, true), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-1i, -4906i, i32(-2147483648)), vec2<i32>(0i, 0i), 708u, vec3<i32>(2147483647i, -25833i, 56675i)), -987f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(i32(-2147483648), -45806i, 2147483647i), vec2<i32>(-1i, 13897i), 4294967295u, vec3<i32>(-1i, 4549i, -3499i)), 322f, Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-6006i, i32(-2147483648), -18513i), vec2<i32>(-13253i, 32757i), 1u, vec3<i32>(1i, 2204i, -1i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(17785i, 0i, 0i), vec2<i32>(50227i, 14808i), 14255u, vec3<i32>(-13145i, 39975i, -20050i)), Struct_2(0u, vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(33921i, 38540i, -39218i), vec2<i32>(-9333i, 1i), 18127u, vec3<i32>(1i, 0i, -1976i)), -1252f)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, -29182i, -10698i), vec2<i32>(i32(-2147483648), -1i), 49912u, vec3<i32>(9558i, 1i, 36579i)), 953f, Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-19849i, -28924i, 11754i), vec2<i32>(46875i, 2147483647i), 4294967295u, vec3<i32>(0i, -50834i, 16987i)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-28881i, 68947i, i32(-2147483648)), vec2<i32>(-1i, -41855i), 11308u, vec3<i32>(-1i, 14445i, 16504i)), Struct_2(33776u, vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(2147483647i, 1i, 1635i), vec2<i32>(16824i, 2147483647i), 17116u, vec3<i32>(-44076i, -7337i, i32(-2147483648))), -681f)), Struct_3(Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(50015i, 0i, 1i), vec2<i32>(1i, 56352i), 20250u, vec3<i32>(-1519i, -42803i, 0i)), -1879f, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-11369i, 2147483647i, 0i), vec2<i32>(40463i, 62649i), 18581u, vec3<i32>(i32(-2147483648), 20720i, 1i)), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(9817i, -1i, 1i), vec2<i32>(-5122i, -4889i), 1u, vec3<i32>(-24242i, 0i, -1i)), Struct_2(1u, vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-20875i, 29161i, -1i), vec2<i32>(i32(-2147483648), -3211i), 1u, vec3<i32>(2147483647i, -1i, 2147483647i)), -896f)), Struct_3(Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(i32(-2147483648), 6154i, 2516i), vec2<i32>(-1i, -12498i), 0u, vec3<i32>(-17877i, -11252i, 1i)), -1472f, Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(41504i, 6172i, 1i), vec2<i32>(-1091i, -34052i), 4294967295u, vec3<i32>(7534i, -8552i, -1i)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(24315i, i32(-2147483648), -31483i), vec2<i32>(-11363i, -52652i), 59168u, vec3<i32>(i32(-2147483648), -20438i, -50424i)), Struct_2(58465u, vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(22485i, -22715i, 13967i), vec2<i32>(-52798i, 966i), 0u, vec3<i32>(26207i, i32(-2147483648), -25634i)), -546f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(11834i, -54055i, -7012i), vec2<i32>(9217i, 0i), 61922u, vec3<i32>(2147483647i, 0i, 18736i)), 445f, Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(-1i, 27457i, -33229i), vec2<i32>(-1i, 6534i), 4294967295u, vec3<i32>(2147483647i, -47143i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(i32(-2147483648), 5798i, 2837i), vec2<i32>(-25193i, 28283i), 70043u, vec3<i32>(2147483647i, 0i, 2147483647i)), Struct_2(1u, vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-1i, -45760i, 45881i), vec2<i32>(48197i, 1i), 4988u, vec3<i32>(-5093i, -14845i, 1i)), -1125f)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(i32(-2147483648), -34670i, 54509i), vec2<i32>(-46326i, i32(-2147483648)), 25077u, vec3<i32>(-24437i, -1i, -15303i)), 837f, Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(i32(-2147483648), 46527i, 37254i), vec2<i32>(2147483647i, -2896i), 85770u, vec3<i32>(-42327i, -1i, 12094i)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(0i, 36516i, 35612i), vec2<i32>(-16586i, i32(-2147483648)), 8823u, vec3<i32>(-1i, 0i, 1i)), Struct_2(1u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(12423i, 2147483647i, 1i), vec2<i32>(0i, -1i), 4294967295u, vec3<i32>(9471i, 31964i, -58327i)), -232f)), Struct_3(Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-20474i, 27406i, 49753i), vec2<i32>(-16676i, 11551i), 4294967295u, vec3<i32>(47384i, 50366i, -40324i)), -1000f, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(1i, -57428i, 7319i), vec2<i32>(i32(-2147483648), 49933i), 4294967295u, vec3<i32>(77231i, -15952i, -3890i)), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(6718i, i32(-2147483648), -56226i), vec2<i32>(10048i, 23560i), 0u, vec3<i32>(-1i, 1i, 1i)), Struct_2(84561u, vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(1i, 0i, 38020i), vec2<i32>(26577i, -1i), 4294967295u, vec3<i32>(-52233i, -42974i, 1i)), -425f)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(72161i, -1i, i32(-2147483648)), vec2<i32>(6613i, -1i), 1u, vec3<i32>(i32(-2147483648), -37707i, 2147483647i)), 221f, Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-1i, -21549i, i32(-2147483648)), vec2<i32>(-28105i, -13790i), 0u, vec3<i32>(29233i, 7920i, i32(-2147483648))), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(23352i, 1937i, -45258i), vec2<i32>(-60604i, 37393i), 1738u, vec3<i32>(-26555i, i32(-2147483648), -1i)), Struct_2(76179u, vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-5492i, 0i, 17450i), vec2<i32>(-1i, 12631i), 21788u, vec3<i32>(-11325i, -17177i, 67013i)), 1067f)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(58198i, 1i, -1i), vec2<i32>(0i, 40370i), 6307u, vec3<i32>(-1i, 1i, -33245i)), -1000f, Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(i32(-2147483648), 28128i, 0i), vec2<i32>(0i, -1027i), 0u, vec3<i32>(43395i, 1i, 32336i)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-1i, -1i, 2147483647i), vec2<i32>(1i, -22452i), 105398u, vec3<i32>(25888i, 444i, 1i)), Struct_2(64824u, vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(1i, 1i, 15184i), vec2<i32>(0i, -60608i), 1u, vec3<i32>(-1i, -16869i, 1i)), 129f)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(1i, -31055i, -17922i), vec2<i32>(26922i, -1i), 91241u, vec3<i32>(i32(-2147483648), -21655i, 61288i)), -891f, Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-31015i, 6023i, 25689i), vec2<i32>(i32(-2147483648), 22361i), 32863u, vec3<i32>(2147483647i, 0i, 16317i)), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-30928i, i32(-2147483648), 1i), vec2<i32>(-28911i, 0i), 74757u, vec3<i32>(-17890i, i32(-2147483648), i32(-2147483648))), Struct_2(1u, vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), 1i, 0i), vec2<i32>(0i, 2147483647i), 4294967295u, vec3<i32>(i32(-2147483648), 1i, 2147483647i)), 365f)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(2147483647i, 3006i, 20002i), vec2<i32>(-42626i, -30432i), 100570u, vec3<i32>(0i, 0i, 1885i)), 2370f, Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec2<i32>(2147483647i, 1i), 26288u, vec3<i32>(-1i, 1i, 2147483647i)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(-1i, 1i, -3687i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 34249u, vec3<i32>(-31761i, 32965i, 87553i)), Struct_2(1u, vec3<bool>(false, false, true), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(73373i, -3752i, -1873i), vec2<i32>(-1i, 0i), 36770u, vec3<i32>(-64855i, -3736i, 2147483647i)), -1000f)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 12508i), 4294967295u, vec3<i32>(19921i, -13959i, -48393i)), -377f, Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(18409i, -99664i, 4562i), vec2<i32>(i32(-2147483648), 15727i), 60544u, vec3<i32>(0i, 0i, 56272i)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(i32(-2147483648), 0i, -21697i), vec2<i32>(1i, 2147483647i), 7552u, vec3<i32>(-1i, -152i, -34338i)), Struct_2(32559u, vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(-37859i, 2147483647i, -24645i), vec2<i32>(42354i, -10785i), 5755u, vec3<i32>(-1i, 1i, i32(-2147483648))), -374f)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(3592i, 2147483647i, 52184i), vec2<i32>(2147483647i, -24622i), 0u, vec3<i32>(4579i, -4129i, i32(-2147483648))), -565f, Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(0i, 1i, -33970i), vec2<i32>(-1i, 0i), 0u, vec3<i32>(-7532i, 1i, 17000i)), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, 2147483647i, -104580i), vec2<i32>(4092i, -46839i), 1u, vec3<i32>(0i, 2147483647i, -23551i)), Struct_2(14807u, vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-4646i, i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), -8542i), 12996u, vec3<i32>(4371i, -18172i, 1i)), 1435f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(0i, 43028i, 2147483647i), vec2<i32>(-37261i, 14627i), 1u, vec3<i32>(-58385i, 0i, 0i)), 195f, Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(37537i, 2147483647i, 2147483647i), vec2<i32>(-1i, -5398i), 6993u, vec3<i32>(i32(-2147483648), 8946i, 2147483647i)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(i32(-2147483648), 0i, -1i), vec2<i32>(9399i, i32(-2147483648)), 0u, vec3<i32>(0i, i32(-2147483648), 2147483647i)), Struct_2(4294967295u, vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-28168i, -49402i, 1i), vec2<i32>(-1i, 2147483647i), 19554u, vec3<i32>(6388i, 0i, -18540i)), -1175f)), Struct_3(Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(6296i, i32(-2147483648), -46367i), vec2<i32>(0i, 1i), 28014u, vec3<i32>(-1i, 33721i, 2147483647i)), -276f, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(3198i, -15825i, i32(-2147483648)), vec2<i32>(1i, 0i), 45437u, vec3<i32>(-1i, 1i, -15967i)), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(87445i, -70572i, -27932i), vec2<i32>(i32(-2147483648), -1i), 37259u, vec3<i32>(1i, -10334i, -15685i)), Struct_2(0u, vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(12245i, 201i, -42523i), vec2<i32>(i32(-2147483648), -32726i), 37982u, vec3<i32>(10924i, -68687i, -9994i)), -316f)), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-1i, -15012i, i32(-2147483648)), vec2<i32>(-49300i, 33802i), 1u, vec3<i32>(1i, 6726i, 0i)), -964f, Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(-14205i, 0i, 0i), vec2<i32>(-36770i, 10368i), 40740u, vec3<i32>(i32(-2147483648), -43080i, 12438i)), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-18180i, -1i, 16807i), vec2<i32>(-21410i, 2149i), 0u, vec3<i32>(-90396i, 0i, 22945i)), Struct_2(42971u, vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-33686i, 16241i, 2147483647i), vec2<i32>(34874i, i32(-2147483648)), 30175u, vec3<i32>(-6402i, i32(-2147483648), 1i)), -1224f)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(1i, 1i, -26684i), vec2<i32>(4440i, -47391i), 76174u, vec3<i32>(1i, 2147483647i, -82858i)), -1634f, Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(-1i, -14250i, 30376i), vec2<i32>(-45175i, 2147483647i), 4167u, vec3<i32>(0i, 1i, -30918i)), Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(-1i, 6463i, 1i), vec2<i32>(-9308i, 2147483647i), 1u, vec3<i32>(1522i, 4890i, 0i)), Struct_2(26630u, vec3<bool>(true, true, false), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(38464i, -1i, 1i), vec2<i32>(-44920i, -52193i), 54583u, vec3<i32>(-8004i, 22965i, -41752i)), 104f)));

var<private> global2: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    var var_0 = false;
    let var_1 = _wgslsmith_add_vec3_u32(reverseBits(select(~vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), countOneBits(vec3<u32>(30052u, 16943u, u_input.d)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) ^ vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)] & 46825u, ~1u, 116086u)), _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.d), vec3<u32>(global0[_wgslsmith_index_u32(77422u, 20u)], 23535u, u_input.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(59149u, 19983u, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.d, 20u)], u_input.d))) << (abs(firstLeadingBit(vec3<u32>(0u, 14791u, u_input.b.x) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.a.x) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = array<Struct_3, 29>();
    return arg_0.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> Struct_4 {
    global2 = u_input.c.x;
    global2 = u_input.c.x;
    var var_0 = Struct_5(firstTrailingBit(~36666u), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~countOneBits(global0[_wgslsmith_index_u32(23019u, 20u)])), 20u)] ^ ~(u_input.b.x << (u_input.d % 32u)), 29u)], countOneBits(-2147483647i), _wgslsmith_mod_i32(firstTrailingBit(0i), select(u_input.c.x ^ 2147483647i, 1i, !arg_0.x)) | ((countOneBits(u_input.c.x) >> (_wgslsmith_mod_u32(1030u, u_input.a.x) % 32u)) ^ 2147483647i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_0.b.e.d)));
    let var_2 = !(-178f <= _wgslsmith_f_op_f32(floor(var_0.b.e.d)));
    return Struct_4(var_0.b.e, _wgslsmith_f_op_f32(var_0.b.b * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(-348f - -1000f))) - var_0.b.e.d));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> Struct_5 {
    var var_0 = !vec3<bool>(true, !(!arg_2), arg_3.a.c.a.x);
    let var_1 = Struct_3(arg_3.a.c, -1235f, func_3(!(!(!vec2<bool>(arg_3.a.b.x, var_0.x))), -896f).a.c, Struct_1(!arg_3.a.c.a, vec3<i32>(-25452i, _wgslsmith_mod_i32(select(arg_3.a.c.b.x, -7393i, true), 2147483647i), -u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.a.c.c.x, 0i), _wgslsmith_mod_vec2_i32(u_input.c.zz | vec2<i32>(-25868i, u_input.c.x), ~arg_3.a.c.c)), u_input.a.x | 39784u, _wgslsmith_add_vec3_i32(arg_1.zxw, vec3<i32>(arg_3.a.c.b.x, u_input.c.x, arg_1.x))), Struct_2(~u_input.b.x, vec3<bool>(!arg_3.a.c.a.x, arg_3.a.b.x, all(arg_3.a.c.a.zx)), func_3(select(var_0.yx, select(vec2<bool>(false, false), var_0.zy, vec2<bool>(false, true)), vec2<bool>(arg_3.a.b.x, false)), 1364f).a.c, -641f));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1025f);
    let var_3 = !all(arg_3.a.c.a) | true;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1887f, 1261f, 1544f, -132f), vec4<f32>(var_1.b, 685f, 704f, arg_3.a.d))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b, -1446f, var_1.b, var_1.b))))));
    return Struct_5(4294967295u, Struct_3(Struct_1(arg_3.a.c.a, select(vec3<i32>(arg_1.x, -4218i, var_1.a.e.x), -vec3<i32>(1i, arg_3.a.c.c.x, var_1.a.e.x), !arg_3.a.c.a.zzx), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(0i, 0i)), vec2<i32>(10040i, 2147483647i)), reverseBits(_wgslsmith_mult_u32(u_input.b.x, arg_0)), select(arg_3.a.c.e | var_1.e.c.b, u_input.c, vec3<bool>(var_1.e.b.x, false, false))), var_1.b, arg_3.a.c, var_1.c, func_3(func_3(arg_3.a.b.zz, -854f).a.c.a.ww, 767f).a), i32(-1i) * -arg_3.a.c.e.x, -_wgslsmith_clamp_i32(-(~var_1.d.c.x), -12384i, ~2147483647i));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4) -> Struct_5 {
    global1 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a, _wgslsmith_clamp_u32(~arg_1.b.d.d ^ 57152u, 22629u, 65407u), 4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~2825u, _wgslsmith_add_u32(1u, 1u)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, arg_2.a.a, 4294967295u)), vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 90521u, 104966u)), vec3<u32>(17464u, min(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)]), 37039u)), vec3<u32>(abs(29982u ^ global0[_wgslsmith_index_u32(u_input.d, 20u)]), countOneBits(arg_2.a.a), func_3(vec2<bool>(false, arg_1.b.e.b.x), arg_2.a.d).a.a)));
    let var_1 = Struct_4(arg_1.b.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-944f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)))))));
    global1 = array<Struct_3, 29>();
    global2 = arg_2.a.c.c.x ^ -2147483647i;
    return arg_1;
}

fn func_1(arg_0: vec4<f32>) -> Struct_5 {
    global0 = array<u32, 20>();
    return func_5(u_input.c.x, func_4(global0[_wgslsmith_index_u32(~(~(~0u)), 20u)], ~vec4<i32>(abs(-7461i), _wgslsmith_div_i32(u_input.c.x, 1i), -10885i, firstTrailingBit(u_input.c.x)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), func_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-arg_0.xzw), arg_0.x)))), Struct_4(func_3(func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(min(181f, 813f))).a.c.a.zw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 1124f)).a, arg_0.x, -1074f));
}

fn func_6(arg_0: Struct_5) -> Struct_5 {
    var var_0 = func_5(u_input.c.x, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(290f, 737f, 392f, 717f), vec4<f32>(349f, arg_0.b.b, 591f, 227f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b, 1000f, arg_0.b.e.d, arg_0.b.e.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(965f, 918f, 1646f, arg_0.b.b))))), Struct_4(arg_0.b.e, arg_0.b.e.d, arg_0.b.e.d)).b.e.c.a.x;
    let var_1 = true;
    global1 = array<Struct_3, 29>();
    var var_2 = _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_0.b.e.c.b.x, u_input.c.x, -35348i)), -19969i | func_3(vec2<bool>(arg_0.b.d.a.x, true), 533f).a.c.b.x, -39561i, -arg_0.b.e.c.c.x)), vec4<i32>(arg_0.d, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-10999i, arg_0.d, u_input.c.x, u_input.c.x)), vec4<i32>(2147483647i, arg_0.c, 2147483647i, arg_0.c)), arg_0.b.d.b.x, min(u_input.c.x, 2147483647i)) << (firstTrailingBit(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 44934u, global0[_wgslsmith_index_u32(1u, 20u)], arg_0.a))) % vec4<u32>(32u)));
    global2 = -1i;
    return func_5(-arg_0.c, arg_0, func_3(arg_0.b.e.b.zz, _wgslsmith_f_op_f32(arg_0.b.e.d - -839f)));
}

fn func_7(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_5) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.e.d), 2025f));
    global0 = array<u32, 20>();
    let var_1 = Struct_4(Struct_2(countOneBits(func_6(arg_2).a ^ ~1u), select(func_5(max(arg_2.d, arg_0.x), func_6(Struct_5(global0[_wgslsmith_index_u32(0u, 20u)], Struct_3(Struct_1(vec4<bool>(arg_2.b.c.a.x, false, true, arg_2.b.d.a.x), arg_0, vec2<i32>(-2147483647i, -48834i), global0[_wgslsmith_index_u32(0u, 20u)], u_input.c), arg_2.b.b, Struct_1(vec4<bool>(arg_2.b.a.a.x, arg_2.b.d.a.x, false, arg_2.b.a.a.x), arg_2.b.e.c.e, vec2<i32>(arg_0.x, arg_0.x), 1u, vec3<i32>(arg_2.c, 12413i, u_input.c.x)), arg_2.b.a, Struct_2(arg_1, arg_2.b.e.b, arg_2.b.a, arg_2.b.e.d)), arg_0.x, arg_0.x)), Struct_4(arg_2.b.e, arg_2.b.b, arg_2.b.b)).b.a.a.wzw, func_6(arg_2).b.d.a.xxx, select(!vec3<bool>(arg_2.b.d.a.x, false, arg_2.b.c.a.x), func_5(8210i, Struct_5(arg_2.a, Struct_3(arg_2.b.e.c, arg_2.b.e.d, arg_2.b.c, arg_2.b.a, Struct_2(arg_2.a, vec3<bool>(arg_2.b.a.a.x, false, false), Struct_1(arg_2.b.c.a, vec3<i32>(-46150i, -2147483647i, 1i), arg_2.b.e.c.e.yz, global0[_wgslsmith_index_u32(19164u, 20u)], vec3<i32>(u_input.c.x, -15139i, arg_0.x)), -425f)), -9320i, arg_0.x), Struct_4(Struct_2(1u, arg_2.b.a.a.yxy, Struct_1(vec4<bool>(true, arg_2.b.e.c.a.x, arg_2.b.a.a.x, arg_2.b.a.a.x), arg_2.b.a.b, vec2<i32>(1i, 18870i), 4294967295u, arg_0), arg_2.b.e.d), -1113f, -1531f)).b.c.a.zzw, false)), arg_2.b.c, arg_2.b.b), _wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(f32(-1f) * -1573f));
    var var_2 = var_1.a.c;
    global2 = -(~(-_wgslsmith_sub_i32(arg_0.x, var_2.c.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.d), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_7(select(abs(abs(u_input.c)), -vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec3<bool>(true, true, u_input.c.x != u_input.c.x)), u_input.a.x, func_6(func_1(vec4<f32>(-1204f, -465f, -1484f, 720f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-545f, -616f)))))));
    global1 = array<Struct_3, 29>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x * -759f), var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x)) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1458f * 1175f), var_0.x))));
    let var_2 = Struct_1(vec4<bool>(true, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1)))).b.e.c.a.x, true, any(func_4(1u, vec4<i32>(5406i, 22587i, 19750i, -2147483647i), true, func_3(vec2<bool>(false, false), var_0.x)).b.c.a.yx)), ~vec3<i32>(abs(2147483647i), 2147483647i, -2147483647i), (~(-u_input.c.xx) ^ min(vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<i32>(u_input.c.x, 11001i), vec2<i32>(-2147483647i, u_input.c.x), true))) >> (vec2<u32>(countOneBits(1u), _wgslsmith_div_u32(20261u, u_input.d) ^ _wgslsmith_add_u32(u_input.d, 35634u)) % vec2<u32>(32u)), _wgslsmith_sub_u32(~(~u_input.b.x), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 20u)], 31969u, global0[_wgslsmith_index_u32(22141u, 20u)]), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 20u)], u_input.b.x, u_input.d))) << (global0[_wgslsmith_index_u32(u_input.b.x, 20u)] % 32u)), u_input.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1143f)))) + _wgslsmith_f_op_vec2_f32(func_7(vec3<i32>(-9013i, u_input.c.x, 1i), _wgslsmith_div_u32(var_2.d, 14492u), func_4(u_input.a.x, vec4<i32>(u_input.c.x, 50508i, -1i, 35171i), false, Struct_4(Struct_2(62920u, vec3<bool>(var_2.a.x, true, true), Struct_1(vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), var_2.b.xx, u_input.b.x, u_input.c), var_0.x), var_0.x, var_0.x)))).x), var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(round(211f))))));
    let var_4 = func_5(-20433i, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))), Struct_4(Struct_2(58554u, var_2.a.wyw, func_4(_wgslsmith_mult_u32(59154u, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, 2147483647i, var_2.e.x), vec4<i32>(u_input.c.x, -2147483647i, var_2.e.x, -1i)), all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), func_3(vec2<bool>(true, var_2.a.x), var_0.x)).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1636f))), var_3.x, -386f)).b.a.b;
    let var_5 = global1[_wgslsmith_index_u32(1u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-1i) * -(~vec4<i32>(-1i, var_2.e.x, u_input.c.x, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 31477i), vec2<i32>(var_4.x, u_input.c.x)) << (26306u % 32u), -1i), vec3<i32>(-34489i, ~(-u_input.c.x), abs(var_2.c.x))), var_3.zyz, ~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(var_5.d.d, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), ~vec3<u32>(0u, 6022u, var_5.c.d)) ^ vec3<u32>(17075u | var_2.d, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(var_2.d, 20u)], 54659u, 18488u), ~u_input.a.x)));
}

