struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(-613f, vec2<i32>(15560i, 2147483647i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(6110i, 0i, -1i, 34721i), 1582f, vec4<u32>(1u, 1659u, 1u, 1u)), vec3<i32>(0i, 2147483647i, 2147483647i), Struct_3(Struct_2(1i, 2147483647i, false, Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), -43566i, 12833i, -1i), 1000f, vec4<u32>(81456u, 4294967295u, 75161u, 1u)), vec4<bool>(true, false, false, false)), vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), i32(-2147483648))), Struct_4(317f, vec2<i32>(-77769i, -5633i), Struct_1(vec3<bool>(false, false, true), vec4<i32>(0i, 1i, 2147483647i, -76298i), 598f, vec4<u32>(9879u, 1u, 101763u, 1u)), vec3<i32>(2147483647i, -45909i, -6355i), Struct_3(Struct_2(-5000i, -17841i, true, Struct_1(vec3<bool>(true, false, true), vec4<i32>(26300i, 1i, i32(-2147483648), 11800i), 1348f, vec4<u32>(1u, 0u, 43386u, 1u)), vec4<bool>(false, false, true, false)), vec3<bool>(false, true, true), vec4<bool>(false, true, false, false), 1i)), Struct_4(1131f, vec2<i32>(-12042i, 1i), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-14622i, 2147483647i, 1i, 46216i), -910f, vec4<u32>(17677u, 14215u, 5874u, 4294967295u)), vec3<i32>(-13882i, 41201i, 1i), Struct_3(Struct_2(-57706i, -23841i, false, Struct_1(vec3<bool>(true, false, true), vec4<i32>(11016i, -19492i, 39587i, i32(-2147483648)), -229f, vec4<u32>(6196u, 0u, 1u, 0u)), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), 0i)), Struct_4(-638f, vec2<i32>(8470i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(1i, i32(-2147483648), -5076i, 1i), 941f, vec4<u32>(28529u, 74034u, 26356u, 32044u)), vec3<i32>(1i, -59127i, -14551i), Struct_3(Struct_2(2147483647i, -37744i, false, Struct_1(vec3<bool>(false, false, false), vec4<i32>(-11116i, i32(-2147483648), -1i, 0i), -387f, vec4<u32>(4294967295u, 91976u, 7992u, 2451u)), vec4<bool>(false, false, false, true)), vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), 36450i)), Struct_4(193f, vec2<i32>(-4506i, 0i), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-9884i, -6129i, 25882i, -26691i), -1062f, vec4<u32>(1u, 8984u, 61556u, 0u)), vec3<i32>(5191i, -28435i, 1i), Struct_3(Struct_2(-49518i, 22799i, false, Struct_1(vec3<bool>(true, false, false), vec4<i32>(-86625i, 0i, i32(-2147483648), 15005i), 2733f, vec4<u32>(43803u, 4176u, 0u, 60977u)), vec4<bool>(true, false, false, true)), vec3<bool>(true, true, false), vec4<bool>(false, false, true, false), -28236i)), Struct_4(-104f, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(1i, -68315i, 4661i, 29005i), -1404f, vec4<u32>(51707u, 4294967295u, 1u, 52350u)), vec3<i32>(-6008i, 22173i, -14305i), Struct_3(Struct_2(2147483647i, 0i, true, Struct_1(vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), 3138i, 2147483647i, -25372i), -1020f, vec4<u32>(4294967295u, 2985u, 4294967295u, 44041u)), vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), vec4<bool>(true, false, false, true), i32(-2147483648))), Struct_4(1381f, vec2<i32>(2147483647i, 1i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, -48515i, 2147483647i, 1i), 775f, vec4<u32>(0u, 62911u, 18370u, 37059u)), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), Struct_3(Struct_2(-1i, i32(-2147483648), true, Struct_1(vec3<bool>(false, true, false), vec4<i32>(2147483647i, 1i, 12260i, -56983i), -1899f, vec4<u32>(4294967295u, 1u, 1u, 1u)), vec4<bool>(true, true, false, false)), vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), 49547i)), Struct_4(903f, vec2<i32>(-1i, 0i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -1i), 391f, vec4<u32>(60880u, 62079u, 56284u, 21946u)), vec3<i32>(37235i, 0i, 14227i), Struct_3(Struct_2(0i, 17768i, true, Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 1i, -1i, 3140i), 2431f, vec4<u32>(0u, 9789u, 77639u, 0u)), vec4<bool>(false, false, false, true)), vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), 2147483647i)), Struct_4(1000f, vec2<i32>(0i, 35i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(1i, 1i, 0i, -2210i), 1000f, vec4<u32>(4294967295u, 1u, 4294967295u, 69812u)), vec3<i32>(-1i, 4412i, 0i), Struct_3(Struct_2(-60944i, -5159i, false, Struct_1(vec3<bool>(true, true, false), vec4<i32>(-43532i, -4013i, -36186i, 2147483647i), -817f, vec4<u32>(1u, 1u, 0u, 61481u)), vec4<bool>(true, false, true, false)), vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), 0i)), Struct_4(-1000f, vec2<i32>(-35005i, -1i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(2147483647i, -1i, i32(-2147483648), 1i), 1009f, vec4<u32>(4294967295u, 57702u, 57006u, 1u)), vec3<i32>(23796i, i32(-2147483648), 50734i), Struct_3(Struct_2(-1i, 1i, false, Struct_1(vec3<bool>(false, true, true), vec4<i32>(-16196i, 2147483647i, -87511i, 0i), 369f, vec4<u32>(0u, 35260u, 0u, 33613u)), vec4<bool>(true, true, true, true)), vec3<bool>(false, false, false), vec4<bool>(false, false, false, true), 1i)), Struct_4(185f, vec2<i32>(-94675i, 3280i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-25214i, -20795i, -1i, 0i), -706f, vec4<u32>(35375u, 35489u, 0u, 29019u)), vec3<i32>(24445i, 16070i, 33750i), Struct_3(Struct_2(1i, 2296i, false, Struct_1(vec3<bool>(false, false, false), vec4<i32>(-44631i, i32(-2147483648), -1i, -24349i), -853f, vec4<u32>(110141u, 4294967295u, 4294967295u, 1351u)), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), 49367i)), Struct_4(187f, vec2<i32>(-1i, 1i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-22761i, -34760i, -84166i, 2147483647i), 1000f, vec4<u32>(4294967295u, 1u, 0u, 27543u)), vec3<i32>(-44871i, -32998i, -1i), Struct_3(Struct_2(2147483647i, -11219i, true, Struct_1(vec3<bool>(false, true, true), vec4<i32>(37162i, 58589i, 0i, 2147483647i), -354f, vec4<u32>(27926u, 4294967295u, 30124u, 13552u)), vec4<bool>(false, true, true, false)), vec3<bool>(false, false, false), vec4<bool>(false, true, false, true), 4876i)), Struct_4(-355f, vec2<i32>(1i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-34631i, 27575i, 2147483647i, -2625i), -168f, vec4<u32>(5595u, 0u, 1u, 4294967295u)), vec3<i32>(20493i, 2147483647i, -41799i), Struct_3(Struct_2(2147483647i, 1i, false, Struct_1(vec3<bool>(true, true, false), vec4<i32>(2147483647i, 1i, 0i, -4358i), -206f, vec4<u32>(22876u, 4294967295u, 4294967295u, 0u)), vec4<bool>(true, true, true, true)), vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), 0i)), Struct_4(-661f, vec2<i32>(8338i, -46553i), Struct_1(vec3<bool>(true, false, true), vec4<i32>(20831i, -2924i, 2147483647i, 17603i), 670f, vec4<u32>(0u, 24119u, 1u, 4294967295u)), vec3<i32>(-30975i, -23894i, 14575i), Struct_3(Struct_2(i32(-2147483648), 38012i, false, Struct_1(vec3<bool>(false, true, false), vec4<i32>(-34931i, 26890i, 1i, 1i), -433f, vec4<u32>(2813u, 1u, 0u, 4294967295u)), vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), -12405i)), Struct_4(945f, vec2<i32>(1i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(2147483647i, 1i, i32(-2147483648), -13699i), 497f, vec4<u32>(0u, 4294967295u, 1u, 0u)), vec3<i32>(-41678i, 1i, 6290i), Struct_3(Struct_2(-34571i, 1i, true, Struct_1(vec3<bool>(true, false, false), vec4<i32>(5793i, 2147483647i, 19639i, 0i), -1264f, vec4<u32>(16043u, 17362u, 0u, 0u)), vec4<bool>(true, true, true, false)), vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), -8712i)), Struct_4(2118f, vec2<i32>(0i, 2555i), Struct_1(vec3<bool>(true, true, true), vec4<i32>(31257i, -14334i, 1i, 4367i), -1000f, vec4<u32>(59907u, 4294967295u, 15619u, 0u)), vec3<i32>(-1i, -21875i, 0i), Struct_3(Struct_2(0i, -1i, false, Struct_1(vec3<bool>(true, true, true), vec4<i32>(-7275i, 2147483647i, -11471i, -24090i), -1000f, vec4<u32>(0u, 37723u, 19037u, 4294967295u)), vec4<bool>(false, false, false, false)), vec3<bool>(true, false, true), vec4<bool>(false, false, true, false), 2147483647i)), Struct_4(-1174f, vec2<i32>(26502i, 2147483647i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(0i, -1725i, -46979i, 58085i), -224f, vec4<u32>(0u, 90496u, 1u, 50764u)), vec3<i32>(i32(-2147483648), -1i, -3763i), Struct_3(Struct_2(-15802i, 2147483647i, true, Struct_1(vec3<bool>(false, false, true), vec4<i32>(-15948i, 26035i, -69577i, 36220i), -1105f, vec4<u32>(61709u, 4294967295u, 25582u, 0u)), vec4<bool>(true, false, false, false)), vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), 78309i)), Struct_4(1000f, vec2<i32>(-15657i, -21172i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(12362i, 41689i, -19393i, 1771i), 1067f, vec4<u32>(4294967295u, 0u, 45539u, 64165u)), vec3<i32>(-1i, i32(-2147483648), -542i), Struct_3(Struct_2(-8406i, 35000i, true, Struct_1(vec3<bool>(true, false, true), vec4<i32>(23418i, -23348i, 28493i, 2438i), -560f, vec4<u32>(1152u, 69775u, 4294967295u, 65019u)), vec4<bool>(true, false, true, true)), vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), 9382i)), Struct_4(-1000f, vec2<i32>(i32(-2147483648), 1i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(3892i, 1i, -15715i, -46046i), 379f, vec4<u32>(0u, 0u, 1u, 0u)), vec3<i32>(1i, 70038i, i32(-2147483648)), Struct_3(Struct_2(13562i, 49592i, false, Struct_1(vec3<bool>(true, false, false), vec4<i32>(i32(-2147483648), 38109i, -7538i, -76218i), -2880f, vec4<u32>(1u, 31165u, 1u, 64226u)), vec4<bool>(true, false, false, false)), vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), 0i)), Struct_4(-1012f, vec2<i32>(-26257i, 25827i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, -98810i, -55055i, -25915i), 428f, vec4<u32>(4294967295u, 9564u, 3727u, 74945u)), vec3<i32>(2729i, 2147483647i, -1i), Struct_3(Struct_2(25739i, 17893i, true, Struct_1(vec3<bool>(true, true, false), vec4<i32>(20895i, 0i, -10155i, -1i), -630f, vec4<u32>(4294967295u, 0u, 19823u, 89571u)), vec4<bool>(false, false, false, false)), vec3<bool>(false, false, true), vec4<bool>(true, false, false, false), i32(-2147483648))), Struct_4(-197f, vec2<i32>(0i, -1i), Struct_1(vec3<bool>(false, false, true), vec4<i32>(8437i, -2206i, 1i, -1i), 361f, vec4<u32>(29473u, 1u, 0u, 4294967295u)), vec3<i32>(2147483647i, 0i, 588i), Struct_3(Struct_2(2147483647i, 34857i, true, Struct_1(vec3<bool>(false, true, true), vec4<i32>(4303i, -4976i, 2147483647i, -57883i), -653f, vec4<u32>(19955u, 60722u, 69215u, 4294967295u)), vec4<bool>(false, false, false, true)), vec3<bool>(false, false, false), vec4<bool>(false, true, false, true), 2147483647i)), Struct_4(-495f, vec2<i32>(-733i, 0i), Struct_1(vec3<bool>(true, false, true), vec4<i32>(32411i, 0i, 2147483647i, i32(-2147483648)), -1039f, vec4<u32>(25785u, 108437u, 113166u, 23605u)), vec3<i32>(-1i, 43143i, 8886i), Struct_3(Struct_2(-1i, 0i, true, Struct_1(vec3<bool>(true, true, true), vec4<i32>(16928i, -2147i, 1i, -70849i), -184f, vec4<u32>(10108u, 1u, 39606u, 11274u)), vec4<bool>(false, false, true, true)), vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), -1i)), Struct_4(262f, vec2<i32>(44873i, -16938i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(13464i, 0i, -7237i, -1i), -353f, vec4<u32>(1u, 1u, 1u, 4294967295u)), vec3<i32>(-1i, 0i, 0i), Struct_3(Struct_2(-125059i, 0i, true, Struct_1(vec3<bool>(false, true, false), vec4<i32>(-36496i, -43230i, -16721i, 2321i), 218f, vec4<u32>(1378u, 4294967295u, 12961u, 72553u)), vec4<bool>(true, false, true, true)), vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), 0i)), Struct_4(-945f, vec2<i32>(1i, -21137i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(29890i, 53684i, 0i, 78382i), 115f, vec4<u32>(101141u, 38512u, 4294967295u, 4294967295u)), vec3<i32>(17048i, -47520i, 1i), Struct_3(Struct_2(-1i, 2147483647i, false, Struct_1(vec3<bool>(true, true, true), vec4<i32>(4637i, -1i, 1i, 2147483647i), 355f, vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), vec4<bool>(true, true, false, false)), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false), 1i)), Struct_4(1118f, vec2<i32>(25529i, 1i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(57253i, 9649i, 59771i, -14236i), -759f, vec4<u32>(0u, 82547u, 100312u, 0u)), vec3<i32>(-1i, 2147483647i, 49586i), Struct_3(Struct_2(-59340i, -13235i, true, Struct_1(vec3<bool>(true, false, false), vec4<i32>(-12479i, i32(-2147483648), -35201i, i32(-2147483648)), -1094f, vec4<u32>(36073u, 0u, 0u, 4294967295u)), vec4<bool>(false, false, false, true)), vec3<bool>(true, true, true), vec4<bool>(true, true, false, false), -3218i)), Struct_4(-2044f, vec2<i32>(6170i, 2147483647i), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-63274i, -26669i, 1i, 0i), 696f, vec4<u32>(0u, 25655u, 28136u, 0u)), vec3<i32>(49055i, i32(-2147483648), 2147483647i), Struct_3(Struct_2(-10699i, -1i, true, Struct_1(vec3<bool>(false, false, false), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -36283i), 983f, vec4<u32>(14770u, 8977u, 4294967295u, 56889u)), vec4<bool>(true, true, false, true)), vec3<bool>(false, false, true), vec4<bool>(true, false, true, false), -15669i)), Struct_4(-1716f, vec2<i32>(-94606i, 0i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), -403f, vec4<u32>(1u, 20550u, 3778u, 1u)), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), Struct_3(Struct_2(-16653i, -911i, false, Struct_1(vec3<bool>(false, false, true), vec4<i32>(22173i, -29623i, 32160i, 19276i), 1000f, vec4<u32>(71238u, 60741u, 4294967295u, 4294967295u)), vec4<bool>(false, true, false, false)), vec3<bool>(true, true, false), vec4<bool>(true, true, false, true), i32(-2147483648))), Struct_4(-1251f, vec2<i32>(-35140i, 28219i), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-50333i, -11899i, 18439i, 66602i), 1434f, vec4<u32>(25503u, 0u, 0u, 61799u)), vec3<i32>(-27464i, -4383i, -33339i), Struct_3(Struct_2(-7841i, 2147483647i, false, Struct_1(vec3<bool>(false, false, true), vec4<i32>(-30889i, -9845i, 2147483647i, 1i), 1000f, vec4<u32>(6375u, 0u, 1u, 29772u)), vec4<bool>(false, true, false, false)), vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), 2147483647i)), Struct_4(-614f, vec2<i32>(52902i, 45004i), Struct_1(vec3<bool>(false, true, false), vec4<i32>(2147483647i, 2147483647i, 1i, 0i), -369f, vec4<u32>(4294967295u, 0u, 1u, 108775u)), vec3<i32>(28903i, 1i, 0i), Struct_3(Struct_2(19337i, -1i, true, Struct_1(vec3<bool>(true, true, false), vec4<i32>(2147483647i, 63819i, -1i, i32(-2147483648)), 1318f, vec4<u32>(4294967295u, 21639u, 4294967295u, 1u)), vec4<bool>(true, true, false, false)), vec3<bool>(true, true, false), vec4<bool>(false, true, false, true), 16820i)), Struct_4(-777f, vec2<i32>(56409i, 10894i), Struct_1(vec3<bool>(false, false, false), vec4<i32>(74893i, -15550i, 16925i, i32(-2147483648)), -1007f, vec4<u32>(95259u, 1u, 78722u, 8139u)), vec3<i32>(-19099i, 2731i, 10655i), Struct_3(Struct_2(-1i, 28141i, true, Struct_1(vec3<bool>(true, false, true), vec4<i32>(0i, -5380i, 2147483647i, 7871i), 105f, vec4<u32>(33067u, 70292u, 1u, 23539u)), vec4<bool>(false, true, true, true)), vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), 2147483647i)), Struct_4(-1228f, vec2<i32>(-53209i, -1i), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-1i, -10879i, 48545i, -1i), -1262f, vec4<u32>(2910u, 5067u, 0u, 40644u)), vec3<i32>(0i, i32(-2147483648), 13476i), Struct_3(Struct_2(0i, 9993i, false, Struct_1(vec3<bool>(false, false, false), vec4<i32>(0i, 0i, 65420i, i32(-2147483648)), 827f, vec4<u32>(0u, 10887u, 30463u, 1u)), vec4<bool>(true, false, false, true)), vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), 58657i)));

var<private> global2: i32 = 0i;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)))))) * _wgslsmith_f_op_f32(f32(-1f) * -879f));
    let var_1 = abs(~1u) == _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 4294967295u), abs(select(98271u, 76176u, true))), _wgslsmith_add_u32(1u, abs(15178u)));
    var var_2 = (_wgslsmith_f_op_f32(ceil(var_0)) < 1279f) | any(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(var_1, false), var_1)), false, true));
    let var_3 = Struct_3(Struct_2(-arg_0.x, countOneBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, -2147483647i, 1i), vec4<i32>(arg_0.x, -37130i, 2147483647i, 24908i)))), false, Struct_1(vec3<bool>(true, select(false, false, var_1), any(vec4<bool>(true, var_1, false, true))), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.x, u_input.a.x, 2147483647i, 21433i), select(vec4<i32>(u_input.b, u_input.c, u_input.b, arg_0.x), vec4<i32>(arg_0.x, 6538i, 28002i, arg_0.x), false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(-global3.x), all(vec2<bool>(true, var_1)))), ~vec4<u32>(4294967295u, 1u, 53523u, 4294967295u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(20566u, 0u, 1u, 25270u), vec4<u32>(21226u, 1u, 1u, 0u)) % vec4<u32>(32u))), !vec4<bool>(all(vec2<bool>(var_1, true)), 972f > var_0, var_1, var_1)), !vec3<bool>(firstTrailingBit(41644u) <= firstLeadingBit(3877u), !all(vec3<bool>(true, var_1, var_1)), -37967i > ~arg_0.x), select(!select(select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(var_1, false, false, false), false), !vec4<bool>(var_1, true, var_1, false), vec4<bool>(var_1, false, true, true)), vec4<bool>(false, var_1 == false, _wgslsmith_f_op_f32(var_0 * -591f) == 947f, true), vec4<bool>(var_1, var_1, any(select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_1, false, false, var_1), false)), any(!vec4<bool>(true, false, var_1, false)))), 1i);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), var_3.a.d.c, 1000f) - vec3<f32>(var_3.a.d.c, -350f, _wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(-global3.x)))));
    return vec2<bool>(!(!var_1), true);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    global2 = ~firstTrailingBit(~(-1i));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(363f + _wgslsmith_f_op_f32(f32(-1f) * -889f)))), 126f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f)))));
    let var_1 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global3.x, arg_2)) + -666f) >= _wgslsmith_f_op_f32(-1174f + _wgslsmith_f_op_f32(-global3.x)), any(func_3(vec2<i32>(u_input.a.x, u_input.c))), !(all(vec4<bool>(false, false, arg_2, arg_2)) && true), false & !(!arg_2)), !select(!(!vec4<bool>(arg_2, arg_2, true, true)), vec4<bool>(true, true, arg_2, !arg_2), !(!vec4<bool>(arg_2, false, arg_2, true))), func_3(max(vec2<i32>(u_input.c ^ u_input.b, min(14002i, u_input.a.x)), _wgslsmith_div_vec2_i32(-u_input.a.xz, vec2<i32>(u_input.a.x, -101798i)))).x);
    var var_2 = _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(0u, arg_1.x & arg_1.x));
    var var_3 = global1[_wgslsmith_index_u32(1u, 31u)];
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    global2 = -(~(-1i));
    let var_0 = Struct_4(1770f, abs(vec2<i32>(-_wgslsmith_div_i32(u_input.b, u_input.a.x), abs(_wgslsmith_mult_i32(0i, 7116i)))), arg_2.e.a.d, _wgslsmith_mult_vec3_i32(-(-u_input.a | (u_input.a >> (arg_2.c.d.zwz % vec3<u32>(32u)))), countOneBits(min(vec3<i32>(1i, u_input.a.x, 12166i), ~arg_2.c.b.yxy))), Struct_3(Struct_2(-17506i, 0i, all(vec3<bool>(true, true, true)), arg_2.e.a.d, select(arg_2.e.a.e, vec4<bool>(arg_2.c.a.x, true, true, false), !arg_2.e.b.x)), arg_2.e.c.zzz, arg_2.e.a.e, countOneBits(11119i)));
    let var_1 = var_0;
    let var_2 = -2147483647i;
    return var_1;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = func_4(arg_3.a.d.d.wz, _wgslsmith_div_u32(1u, func_2(1235u, arg_3.a.d.d, true) << (arg_3.a.d.d.x % 32u)), global1[_wgslsmith_index_u32(arg_0.a.d.d.x, 31u)]);
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d.c, arg_3.a.d.c));
    var var_1 = ~((~vec3<u32>(arg_3.a.d.d.x, arg_3.a.d.d.x, 4294967295u) | _wgslsmith_div_vec3_u32(~var_0.c.d.xxy, ~arg_0.a.d.d.wyw)) ^ min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_3.a.d.d.x, 1u), max(vec3<u32>(0u, 15832u, arg_3.a.d.d.x), vec3<u32>(12019u, arg_0.a.d.d.x, var_0.e.a.d.d.x)), arg_0.b.d.xxw), var_0.c.d.yyw));
    let var_2 = Struct_1(vec3<bool>(true, true, true & !arg_2.x), var_0.e.a.d.b, var_0.a, arg_3.a.d.d);
    global1 = array<Struct_4, 31>();
    return select(!(!select(select(var_0.e.b, var_2.a, var_2.a), !vec3<bool>(false, var_0.e.c.x, true), true & var_0.e.b.x)), arg_0.b.a, arg_3.a.d.a.x);
}

fn func_5(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = vec3<u32>(1u, ~1u, firstLeadingBit(1u));
    global2 = 1i;
    var var_1 = Struct_1(arg_0, vec4<i32>(-_wgslsmith_mult_i32(firstTrailingBit(2147483647i), ~1i), u_input.c, select(u_input.c, firstLeadingBit(-u_input.b), true), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.c, 12714i, 1i), vec4<i32>(2147483647i, u_input.b, 31437i, 12621i)) << (2365u % 32u)), -1820f, ~select(select(vec4<u32>(var_0.x, 21163u, 4294967295u, 1434u), ~vec4<u32>(var_0.x, var_0.x, 4208u, 0u), any(vec4<bool>(true, true, arg_0.x, arg_0.x))), ~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), !vec4<bool>(false, false, arg_0.x, arg_0.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-207f))), _wgslsmith_f_op_f32(-1127f - _wgslsmith_f_op_f32(f32(-1f) * -268f)), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-global3.x)));
    var var_3 = true;
    return func_4(~vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(4294967295u, var_1.d.x, var_1.d.x)), func_2(var_0.x, vec4<u32>(1u, 1u, 224u, var_1.d.x), false)), var_0.x, Struct_4(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(520f, var_1.c))), vec2<i32>(_wgslsmith_mod_i32(-var_1.b.x, var_1.b.x), 67690i), func_4(vec2<u32>(1u, 0u) & vec2<u32>(var_0.x, 44914u), 1u << (countOneBits(var_0.x) % 32u), global1[_wgslsmith_index_u32(func_2(abs(0u), _wgslsmith_mod_vec4_u32(var_1.d, vec4<u32>(var_0.x, 48307u, 18048u, var_1.d.x)), true), 31u)]).c, u_input.a, Struct_3(Struct_2(~28535i, ~var_1.b.x, var_1.b.x > u_input.b, Struct_1(vec3<bool>(false, false, arg_0.x), var_1.b, var_2.x, vec4<u32>(905u, var_0.x, var_0.x, var_1.d.x)), select(vec4<bool>(true, true, arg_0.x, var_1.a.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, var_1.a.x, arg_0.x, var_1.a.x))), arg_0, vec4<bool>(var_1.a.x, u_input.a.x <= u_input.c, true, var_1.a.x), u_input.b))).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-u_input.b), 2147483647i), (-(~u_input.c) ^ 49301i) | u_input.c);
    let var_1 = u_input.c;
    let var_2 = vec2<f32>(300f, _wgslsmith_f_op_f32(step(648f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-608f * 885f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(global3.x, global3.x)))))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), ~u_input.a.zx, Struct_1(vec3<bool>(true, true, true), func_5(!func_1(Struct_5(Struct_2(var_1, 11190i, false, Struct_1(vec3<bool>(true, false, false), vec4<i32>(var_1, 15435i, -1302i, var_1), 601f, vec4<u32>(204u, 367u, 0u, 29792u)), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a.x, u_input.c, 2147483647i, u_input.a.x), var_2.x, vec4<u32>(45540u, 1u, 4294967295u, 0u))), vec2<f32>(var_2.x, 677f), vec3<bool>(true, false, false), Struct_3(Struct_2(2147483647i, 0i, true, Struct_1(vec3<bool>(true, true, false), vec4<i32>(var_1, -8598i, u_input.a.x, -52591i), global3.x, vec4<u32>(1541u, 42143u, 85428u, 4294967295u)), vec4<bool>(false, true, false, false)), vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), u_input.b))), -283f, ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(0u, 28126u, 0u, 1u)))), u_input.a, Struct_3(Struct_2(2147483647i, ~u_input.b | 20409i, true, func_4(vec2<u32>(1u, 1u), _wgslsmith_div_u32(33284u, 11748u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 25212u, 1u), 31u)]).e.a.d, vec4<bool>(any(vec2<bool>(true, false)), true, func_1(Struct_5(Struct_2(u_input.a.x, u_input.b, true, Struct_1(vec3<bool>(true, false, false), vec4<i32>(-2147483647i, -2147483647i, 48664i, var_1), 1210f, vec4<u32>(44048u, 0u, 72218u, 41659u)), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(u_input.c, -58371i, 0i, u_input.a.x), -1000f, vec4<u32>(42476u, 63732u, 0u, 4294967295u))), vec2<f32>(-603f, var_2.x), vec3<bool>(true, false, true), Struct_3(Struct_2(u_input.b, 0i, true, Struct_1(vec3<bool>(false, true, true), vec4<i32>(var_1, var_1, u_input.c, -1941i), var_2.x, vec4<u32>(50794u, 35135u, 4294967295u, 61250u)), vec4<bool>(false, false, true, true)), vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), u_input.a.x)).x, false)), vec3<bool>(true, true, false), select(vec4<bool>(true, false, true, true), select(func_4(vec2<u32>(1u, 1u), 11115u, global1[_wgslsmith_index_u32(93035u, 31u)]).e.a.e, vec4<bool>(false, false, false, true), select(true, true, false)), true | func_4(vec2<u32>(1u, 0u), 46555u, Struct_4(global3.x, u_input.a.xy, Struct_1(vec3<bool>(false, false, true), vec4<i32>(18742i, var_1, -2147483647i, -25545i), global3.x, vec4<u32>(10253u, 20043u, 20880u, 56273u)), u_input.a, Struct_3(Struct_2(var_1, u_input.b, true, Struct_1(vec3<bool>(false, false, true), vec4<i32>(2147483647i, -2147483647i, -3343i, var_1), global3.x, vec4<u32>(1u, 7859u, 1u, 28459u)), vec4<bool>(true, true, false, true)), vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), var_1))).e.a.c), -(~func_5(vec3<bool>(false, false, false)).x)));
    let var_4 = 10867u;
    let var_5 = !(!(!(!vec2<bool>(var_3.c.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec4_u32(reverseBits(var_3.e.a.d.d) >> (reverseBits(vec4<u32>(var_3.e.a.d.d.x, var_4, var_4, var_4)) % vec4<u32>(32u)), ~vec4<u32>(var_3.c.d.x, 1u, var_3.e.a.d.d.x, 3586u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -725f, -1000f, -978f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, var_3.e.a.d.c, var_3.c.c, -527f) * vec4<f32>(954f, 453f, var_2.x, var_2.x)))))), true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1000f, global3.x) + vec4<f32>(-290f, 2294f, -1000f, -442f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, 1643f, -2623f, 114f), vec4<f32>(var_2.x, var_3.a, -1257f, -1671f))))))), var_1, var_4);
}

