struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<u32>(1u, 86179u), -440f, vec4<i32>(0i, 29494i, 0i, 42034i), 24689u), Struct_1(vec2<u32>(16914u, 1u), -1533f, vec4<i32>(-34078i, 19075i, 1i, 54768i), 17125u), vec3<i32>(-1i, 2147483647i, 14878i)));

var<private> global1: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-22132i, 42696i), vec2<i32>(2147483647i, 1i), vec2<i32>(-40763i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1286i, -9669i), vec2<i32>(-37865i, 16861i), vec2<i32>(0i, 1i), vec2<i32>(-26782i, 12988i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(23031i, -23914i), vec2<i32>(-26563i, 0i), vec2<i32>(-9701i, 45518i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 11700i), vec2<i32>(-23268i, -1i), vec2<i32>(-1731i, 26183i));

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_2(Struct_1(vec2<u32>(92550u, 11378u), 103f, vec4<i32>(1i, 2147483647i, -3647i, 14218i), 14240u), Struct_1(vec2<u32>(35306u, 0u), 1029f, vec4<i32>(13091i, -1i, 30809i, 1i), 9562u), vec3<i32>(-8087i, 2147483647i, -7779i)), vec2<f32>(343f, -1963f), Struct_2(Struct_1(vec2<u32>(0u, 0u), -1330f, vec4<i32>(39187i, -1077i, 5241i, i32(-2147483648)), 4294967295u), Struct_1(vec2<u32>(47361u, 4294967295u), -1964f, vec4<i32>(0i, i32(-2147483648), 78626i, 52584i), 7943u), vec3<i32>(-1i, 16135i, -25280i)), Struct_1(vec2<u32>(38727u, 42745u), 1000f, vec4<i32>(2147483647i, i32(-2147483648), -4298i, -10660i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), -375f, vec4<i32>(1i, 14646i, 3997i, 1i), 74818u), Struct_1(vec2<u32>(20188u, 4294967295u), 1000f, vec4<i32>(-52473i, -45130i, -1i, 2147483647i), 0u), vec3<i32>(i32(-2147483648), -745i, 2799i)), vec2<f32>(1043f, 1000f), Struct_2(Struct_1(vec2<u32>(74134u, 11044u), 1197f, vec4<i32>(-32203i, 1i, -26843i, i32(-2147483648)), 33886u), Struct_1(vec2<u32>(1u, 58551u), 1976f, vec4<i32>(60886i, -35545i, 0i, -77603i), 35233u), vec3<i32>(33697i, i32(-2147483648), -34069i)), Struct_1(vec2<u32>(47535u, 43885u), -1531f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 1i), 6575u)), Struct_3(Struct_2(Struct_1(vec2<u32>(38737u, 4294967295u), 346f, vec4<i32>(1i, -23863i, 15098i, 2147483647i), 1u), Struct_1(vec2<u32>(63911u, 29203u), 1086f, vec4<i32>(32990i, 2147483647i, 833i, 0i), 92060u), vec3<i32>(-1i, -1i, 0i)), vec2<f32>(-1366f, 595f), Struct_2(Struct_1(vec2<u32>(154350u, 27588u), -1645f, vec4<i32>(2620i, i32(-2147483648), 1i, 2147483647i), 1u), Struct_1(vec2<u32>(81887u, 47824u), 1052f, vec4<i32>(i32(-2147483648), -24904i, 2147483647i, -1i), 1u), vec3<i32>(i32(-2147483648), -15672i, 2147483647i)), Struct_1(vec2<u32>(28197u, 2058u), 948f, vec4<i32>(-77087i, -9062i, -5977i, i32(-2147483648)), 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 1512f, vec4<i32>(2147483647i, 1528i, 2147483647i, 1i), 4294967295u), Struct_1(vec2<u32>(0u, 98518u), -258f, vec4<i32>(38225i, -21804i, 1i, -1i), 1u), vec3<i32>(-1i, -24812i, 6496i)), vec2<f32>(-174f, 1535f), Struct_2(Struct_1(vec2<u32>(1u, 4853u), -1635f, vec4<i32>(47525i, 1i, 0i, -2412i), 4294967295u), Struct_1(vec2<u32>(95445u, 4294967295u), -1000f, vec4<i32>(-1i, -32754i, -47663i, -25897i), 6282u), vec3<i32>(0i, i32(-2147483648), 33358i)), Struct_1(vec2<u32>(88943u, 4294967295u), -1080f, vec4<i32>(1i, -25122i, 37316i, 2147483647i), 34530u)), Struct_3(Struct_2(Struct_1(vec2<u32>(27335u, 24331u), 1525f, vec4<i32>(1i, 1i, 1i, 35186i), 31471u), Struct_1(vec2<u32>(10112u, 0u), -1323f, vec4<i32>(25369i, 13049i, 2147483647i, -41186i), 1659u), vec3<i32>(0i, -6551i, 1i)), vec2<f32>(-1409f, 230f), Struct_2(Struct_1(vec2<u32>(1u, 45910u), 257f, vec4<i32>(-395i, -28714i, i32(-2147483648), -9227i), 0u), Struct_1(vec2<u32>(9760u, 0u), -1000f, vec4<i32>(-36815i, -9373i, -3560i, 13341i), 1u), vec3<i32>(18202i, 1i, 29094i)), Struct_1(vec2<u32>(15412u, 53785u), 1091f, vec4<i32>(2147483647i, 21801i, i32(-2147483648), 68760i), 10297u)), Struct_3(Struct_2(Struct_1(vec2<u32>(62933u, 4294967295u), -1045f, vec4<i32>(2147483647i, 1i, 11264i, -51136i), 78203u), Struct_1(vec2<u32>(2862u, 21059u), 358f, vec4<i32>(-29808i, -1i, 39252i, 0i), 1u), vec3<i32>(i32(-2147483648), 25023i, 1i)), vec2<f32>(-2405f, 758f), Struct_2(Struct_1(vec2<u32>(36648u, 66938u), 3625f, vec4<i32>(3613i, 0i, 1298i, 17295i), 11461u), Struct_1(vec2<u32>(4294967295u, 4294967295u), -278f, vec4<i32>(2147483647i, -14664i, -2192i, 1i), 71061u), vec3<i32>(i32(-2147483648), -1i, 80048i)), Struct_1(vec2<u32>(130885u, 4294967295u), 483f, vec4<i32>(6701i, 2147483647i, -6716i, 10189i), 19089u)), Struct_3(Struct_2(Struct_1(vec2<u32>(24845u, 81444u), -1254f, vec4<i32>(36387i, 2147483647i, i32(-2147483648), 32719i), 47496u), Struct_1(vec2<u32>(14489u, 9741u), 112f, vec4<i32>(0i, 1i, -113263i, -28822i), 1u), vec3<i32>(57278i, i32(-2147483648), 22425i)), vec2<f32>(914f, 803f), Struct_2(Struct_1(vec2<u32>(43772u, 4294967295u), 1736f, vec4<i32>(22653i, 1i, i32(-2147483648), 17364i), 1u), Struct_1(vec2<u32>(7429u, 0u), -1518f, vec4<i32>(-19129i, -8433i, 28088i, 11927i), 4294967295u), vec3<i32>(14504i, -6228i, 2147483647i)), Struct_1(vec2<u32>(1u, 1u), 441f, vec4<i32>(0i, -3833i, -38540i, 36043i), 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(12954u, 101950u), -1039f, vec4<i32>(i32(-2147483648), -1i, 6665i, 2147483647i), 42745u), Struct_1(vec2<u32>(46905u, 6852u), -2075f, vec4<i32>(i32(-2147483648), -26383i, -16440i, 44294i), 1u), vec3<i32>(2147483647i, 1i, -1i)), vec2<f32>(-591f, -298f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 287f, vec4<i32>(-1i, 53641i, 9098i, i32(-2147483648)), 4294967295u), Struct_1(vec2<u32>(48831u, 53052u), -1345f, vec4<i32>(1i, 0i, 0i, 20263i), 27720u), vec3<i32>(1i, 2147483647i, 25830i)), Struct_1(vec2<u32>(1u, 20711u), -712f, vec4<i32>(5791i, -12076i, 2147483647i, -372i), 17381u)), Struct_3(Struct_2(Struct_1(vec2<u32>(47466u, 66471u), -194f, vec4<i32>(-6905i, -1i, 6385i, -25287i), 1u), Struct_1(vec2<u32>(0u, 4294967295u), -726f, vec4<i32>(-27536i, i32(-2147483648), 0i, 0i), 26314u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), vec2<f32>(1833f, 1897f), Struct_2(Struct_1(vec2<u32>(18537u, 15063u), 706f, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 3946i), 41265u), Struct_1(vec2<u32>(0u, 83210u), -1754f, vec4<i32>(9526i, 1i, 22646i, -30429i), 4294967295u), vec3<i32>(13674i, 2147483647i, 0i)), Struct_1(vec2<u32>(1u, 1u), 397f, vec4<i32>(-19325i, 1i, -8529i, 80506i), 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -687f, vec4<i32>(-25958i, 14497i, -1i, 2147483647i), 4294967295u), Struct_1(vec2<u32>(28599u, 10313u), 1000f, vec4<i32>(-61648i, -8151i, 266i, 1i), 49330u), vec3<i32>(35310i, -23149i, i32(-2147483648))), vec2<f32>(865f, 871f), Struct_2(Struct_1(vec2<u32>(1u, 8400u), -2021f, vec4<i32>(-18116i, -39064i, -1i, 2147483647i), 53531u), Struct_1(vec2<u32>(1u, 4294967295u), 416f, vec4<i32>(-68448i, -1i, i32(-2147483648), -1i), 0u), vec3<i32>(-6441i, 1i, i32(-2147483648))), Struct_1(vec2<u32>(129793u, 83520u), -480f, vec4<i32>(0i, 1i, -47454i, -1i), 21618u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 67044u), 139f, vec4<i32>(-1i, 1i, 13835i, i32(-2147483648)), 13962u), Struct_1(vec2<u32>(75093u, 1u), -1711f, vec4<i32>(0i, 0i, 35461i, 44517i), 1u), vec3<i32>(-1i, 1i, i32(-2147483648))), vec2<f32>(527f, 794f), Struct_2(Struct_1(vec2<u32>(14794u, 0u), -1203f, vec4<i32>(-12222i, -46634i, i32(-2147483648), i32(-2147483648)), 15201u), Struct_1(vec2<u32>(21736u, 47859u), -283f, vec4<i32>(28896i, 29118i, -1i, -1i), 81673u), vec3<i32>(-6379i, -8148i, -1i)), Struct_1(vec2<u32>(1u, 61295u), -1000f, vec4<i32>(0i, 21112i, 2147483647i, 0i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(67309u, 1u), 1948f, vec4<i32>(-31271i, i32(-2147483648), 20199i, 0i), 15559u), Struct_1(vec2<u32>(4294967295u, 1u), -428f, vec4<i32>(i32(-2147483648), -36151i, -9594i, -12786i), 4294967295u), vec3<i32>(-23357i, -13428i, 36395i)), vec2<f32>(177f, 877f), Struct_2(Struct_1(vec2<u32>(14561u, 1u), 953f, vec4<i32>(-14005i, 2147483647i, 2147483647i, 10643i), 0u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1433f, vec4<i32>(-3809i, -45592i, 1i, -35010i), 12609u), vec3<i32>(i32(-2147483648), 2147483647i, 12091i)), Struct_1(vec2<u32>(41334u, 7947u), -237f, vec4<i32>(2147483647i, 2221i, 77681i, 37309i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 1580f, vec4<i32>(-1i, 16625i, 1i, 54390i), 6708u), Struct_1(vec2<u32>(1u, 0u), -181f, vec4<i32>(-7676i, -15219i, 1i, 26424i), 4294967295u), vec3<i32>(-16388i, -1i, -12512i)), vec2<f32>(1347f, -525f), Struct_2(Struct_1(vec2<u32>(1u, 27506u), -472f, vec4<i32>(39348i, -1i, -25455i, 45039i), 64254u), Struct_1(vec2<u32>(0u, 1u), -1330f, vec4<i32>(1i, 2147483647i, 0i, 46139i), 1u), vec3<i32>(2147483647i, -46336i, -65339i)), Struct_1(vec2<u32>(0u, 1377u), -187f, vec4<i32>(-23927i, 2147483647i, i32(-2147483648), 1i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4289u, 10624u), -429f, vec4<i32>(-2929i, 0i, 1i, -19819i), 1u), Struct_1(vec2<u32>(0u, 22290u), 343f, vec4<i32>(9093i, 37445i, -32304i, -40242i), 1u), vec3<i32>(871i, 41544i, 48198i)), vec2<f32>(-1000f, 1761f), Struct_2(Struct_1(vec2<u32>(93419u, 4294967295u), 225f, vec4<i32>(0i, -23468i, 36529i, 20267i), 27895u), Struct_1(vec2<u32>(6967u, 1u), -724f, vec4<i32>(1i, 0i, -24569i, -14996i), 4294967295u), vec3<i32>(35144i, 2147483647i, 15121i)), Struct_1(vec2<u32>(1u, 0u), 596f, vec4<i32>(i32(-2147483648), 1i, 7759i, -35683i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 1u), 706f, vec4<i32>(79125i, 1i, 0i, 17763i), 10111u), Struct_1(vec2<u32>(0u, 1u), 106f, vec4<i32>(7341i, i32(-2147483648), i32(-2147483648), -1091i), 71915u), vec3<i32>(44594i, 26617i, -41940i)), vec2<f32>(-963f, -1562f), Struct_2(Struct_1(vec2<u32>(0u, 74672u), -818f, vec4<i32>(-39069i, -20088i, i32(-2147483648), -36653i), 1u), Struct_1(vec2<u32>(0u, 0u), -989f, vec4<i32>(-7739i, 1i, 17027i, 27926i), 4294967295u), vec3<i32>(58471i, 31403i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 30208u), 1525f, vec4<i32>(-1i, 33081i, -1i, -8080i), 18815u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4817u, 49952u), -1430f, vec4<i32>(32155i, -12187i, -28232i, 49719i), 21549u), Struct_1(vec2<u32>(59192u, 1u), -230f, vec4<i32>(0i, 32891i, 1i, -1i), 22144u), vec3<i32>(44331i, 1i, 2147483647i)), vec2<f32>(-129f, -786f), Struct_2(Struct_1(vec2<u32>(4294967295u, 84398u), -119f, vec4<i32>(0i, 36839i, 10467i, 40818i), 1u), Struct_1(vec2<u32>(53325u, 48321u), 150f, vec4<i32>(0i, -1273i, -11587i, 0i), 4294967295u), vec3<i32>(i32(-2147483648), 0i, -4295i)), Struct_1(vec2<u32>(0u, 0u), -323f, vec4<i32>(-24625i, -1i, -1i, 80144i), 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(48782u, 51424u), -231f, vec4<i32>(2147483647i, -8962i, -7140i, 1i), 0u), Struct_1(vec2<u32>(36088u, 27465u), 1946f, vec4<i32>(0i, -78208i, -1i, i32(-2147483648)), 1187u), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), vec2<f32>(535f, -1803f), Struct_2(Struct_1(vec2<u32>(68100u, 0u), -912f, vec4<i32>(-8942i, 57721i, -13481i, 2147483647i), 0u), Struct_1(vec2<u32>(1u, 72378u), -209f, vec4<i32>(-1i, 19851i, 32214i, i32(-2147483648)), 0u), vec3<i32>(53914i, 2147483647i, 4005i)), Struct_1(vec2<u32>(53818u, 1u), 1469f, vec4<i32>(-17900i, 1i, 2147483647i, -7700i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(17655u, 0u), -2033f, vec4<i32>(65223i, 14601i, -6613i, i32(-2147483648)), 80197u), Struct_1(vec2<u32>(4294967295u, 56464u), -790f, vec4<i32>(0i, i32(-2147483648), -1i, 0i), 50202u), vec3<i32>(-1i, 25749i, -62995i)), vec2<f32>(613f, -288f), Struct_2(Struct_1(vec2<u32>(1u, 37897u), 585f, vec4<i32>(-21496i, -9571i, -7234i, -23972i), 0u), Struct_1(vec2<u32>(8076u, 4294967295u), 501f, vec4<i32>(-1i, 16023i, 2147483647i, 20926i), 102632u), vec3<i32>(-1i, -298i, -2665i)), Struct_1(vec2<u32>(0u, 4294967295u), -1483f, vec4<i32>(18428i, 51388i, -34199i, 21293i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(25900u, 31571u), -2134f, vec4<i32>(-43399i, -26412i, 17546i, 1i), 20172u), Struct_1(vec2<u32>(1u, 1u), -536f, vec4<i32>(-23974i, 1i, i32(-2147483648), -26494i), 1u), vec3<i32>(1i, -25865i, 73534i)), vec2<f32>(-1000f, 2360f), Struct_2(Struct_1(vec2<u32>(32930u, 0u), 560f, vec4<i32>(-22852i, -69853i, i32(-2147483648), 0i), 0u), Struct_1(vec2<u32>(390u, 4294967295u), -336f, vec4<i32>(i32(-2147483648), 1i, 65071i, 16916i), 59101u), vec3<i32>(-42571i, 1i, -1i)), Struct_1(vec2<u32>(56028u, 34450u), 1000f, vec4<i32>(-16355i, 9688i, i32(-2147483648), 0i), 12162u)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), -750f, vec4<i32>(21648i, 22303i, 18427i, i32(-2147483648)), 4294967295u), Struct_1(vec2<u32>(4294967295u, 63079u), 1462f, vec4<i32>(i32(-2147483648), -11854i, -1i, 422i), 1u), vec3<i32>(1i, -1i, -33070i)), vec2<f32>(334f, -388f), Struct_2(Struct_1(vec2<u32>(31734u, 21413u), -211f, vec4<i32>(15687i, i32(-2147483648), 2147483647i, i32(-2147483648)), 30400u), Struct_1(vec2<u32>(17711u, 151457u), 554f, vec4<i32>(-2727i, 1i, -1i, -58334i), 27408u), vec3<i32>(-934i, 3629i, 0i)), Struct_1(vec2<u32>(1u, 0u), 594f, vec4<i32>(-268i, -33776i, -1i, -1i), 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 71197u), 928f, vec4<i32>(-18110i, 34641i, -1i, 2147483647i), 1u), Struct_1(vec2<u32>(13789u, 4294967295u), 496f, vec4<i32>(-10742i, 14374i, -30069i, 1i), 4294967295u), vec3<i32>(-33434i, 1i, -1i)), vec2<f32>(1771f, 480f), Struct_2(Struct_1(vec2<u32>(13658u, 32424u), -232f, vec4<i32>(0i, -1i, 0i, -1i), 107u), Struct_1(vec2<u32>(38386u, 3675u), 1340f, vec4<i32>(2147483647i, 43861i, -1737i, 55375i), 44046u), vec3<i32>(-9347i, i32(-2147483648), 52689i)), Struct_1(vec2<u32>(4294967295u, 57516u), -1000f, vec4<i32>(-702i, i32(-2147483648), 1i, 1i), 0u)), Struct_3(Struct_2(Struct_1(vec2<u32>(69940u, 33790u), 1000f, vec4<i32>(1i, 1i, -1i, -1i), 7208u), Struct_1(vec2<u32>(30554u, 103267u), -744f, vec4<i32>(1i, -3636i, 1i, 40902i), 0u), vec3<i32>(2147483647i, i32(-2147483648), 0i)), vec2<f32>(-324f, -1000f), Struct_2(Struct_1(vec2<u32>(49081u, 1u), -1142f, vec4<i32>(2147483647i, -1i, -1i, 2147483647i), 0u), Struct_1(vec2<u32>(32932u, 25626u), -638f, vec4<i32>(-23004i, -31227i, 70560i, -1i), 4294967295u), vec3<i32>(27169i, 24740i, 9335i)), Struct_1(vec2<u32>(1u, 21215u), 328f, vec4<i32>(-1i, -1i, i32(-2147483648), -19097i), 39643u)), Struct_3(Struct_2(Struct_1(vec2<u32>(32201u, 4294967295u), -835f, vec4<i32>(-30329i, 2147483647i, -54849i, 11148i), 1u), Struct_1(vec2<u32>(4294967295u, 167652u), -808f, vec4<i32>(60157i, 1i, 2147483647i, 2147483647i), 9509u), vec3<i32>(-61851i, -1i, i32(-2147483648))), vec2<f32>(-213f, 733f), Struct_2(Struct_1(vec2<u32>(1u, 0u), -811f, vec4<i32>(0i, 29337i, -15073i, 41062i), 108767u), Struct_1(vec2<u32>(65560u, 1u), 489f, vec4<i32>(2147483647i, 43485i, 11621i, 63290i), 38404u), vec3<i32>(874i, -1i, 1i)), Struct_1(vec2<u32>(29199u, 1u), -908f, vec4<i32>(-1i, 22441i, 0i, 0i), 34169u)), Struct_3(Struct_2(Struct_1(vec2<u32>(108798u, 1u), 1334f, vec4<i32>(-36913i, -1i, 2147483647i, i32(-2147483648)), 1u), Struct_1(vec2<u32>(8303u, 0u), 1655f, vec4<i32>(0i, 43757i, 1i, 64607i), 0u), vec3<i32>(-1i, 19829i, -848i)), vec2<f32>(-987f, 1172f), Struct_2(Struct_1(vec2<u32>(42194u, 76649u), -232f, vec4<i32>(494i, i32(-2147483648), -46734i, 2147483647i), 1u), Struct_1(vec2<u32>(4593u, 78020u), 1298f, vec4<i32>(-53037i, 45367i, 0i, 26975i), 0u), vec3<i32>(18733i, i32(-2147483648), 1i)), Struct_1(vec2<u32>(0u, 1u), 1000f, vec4<i32>(-1i, i32(-2147483648), -10036i, -9280i), 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u), 120f, vec4<i32>(-27988i, 53748i, i32(-2147483648), 0i), 1u), Struct_1(vec2<u32>(1u, 4294967295u), 184f, vec4<i32>(-39474i, 2147483647i, 0i, 2147483647i), 1u), vec3<i32>(-9250i, 22749i, -1i)), vec2<f32>(1000f, 904f), Struct_2(Struct_1(vec2<u32>(2609u, 15601u), -477f, vec4<i32>(-36927i, -28493i, 3478i, -1i), 1u), Struct_1(vec2<u32>(1u, 25439u), -200f, vec4<i32>(5707i, 9657i, 21771i, -29921i), 4294967295u), vec3<i32>(1i, -1i, -7293i)), Struct_1(vec2<u32>(4294967295u, 1u), -917f, vec4<i32>(6147i, -1i, -14193i, -28812i), 1u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 0u), 581f, vec4<i32>(2147483647i, -3707i, -1i, -38627i), 91063u), Struct_1(vec2<u32>(4294967295u, 7348u), -654f, vec4<i32>(1i, -1i, 2147483647i, 16261i), 0u), vec3<i32>(1i, 3425i, -5102i)), vec2<f32>(-985f, 1077f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), -657f, vec4<i32>(-52504i, -14863i, i32(-2147483648), i32(-2147483648)), 69082u), Struct_1(vec2<u32>(4294967295u, 7292u), 489f, vec4<i32>(-18725i, -17686i, 23583i, 2147483647i), 62426u), vec3<i32>(i32(-2147483648), 3981i, -22767i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), -1291f, vec4<i32>(-1i, 2147483647i, -27262i, 2147483647i), 52586u)), Struct_3(Struct_2(Struct_1(vec2<u32>(62673u, 22937u), -301f, vec4<i32>(5660i, -15770i, i32(-2147483648), 56507i), 5418u), Struct_1(vec2<u32>(4294967295u, 6257u), 2212f, vec4<i32>(-15657i, 67742i, 37371i, 0i), 0u), vec3<i32>(15872i, i32(-2147483648), 50767i)), vec2<f32>(-299f, 801f), Struct_2(Struct_1(vec2<u32>(1u, 15680u), -1103f, vec4<i32>(33062i, 1i, 0i, 2147483647i), 1u), Struct_1(vec2<u32>(31421u, 19358u), -124f, vec4<i32>(51927i, 2147483647i, -10121i, 7959i), 4294967295u), vec3<i32>(i32(-2147483648), 53200i, -1i)), Struct_1(vec2<u32>(9591u, 70587u), 811f, vec4<i32>(1i, 0i, 1i, 0i), 17842u)), Struct_3(Struct_2(Struct_1(vec2<u32>(5196u, 1u), 807f, vec4<i32>(0i, -4669i, 36788i, 2147483647i), 47284u), Struct_1(vec2<u32>(0u, 17862u), -1645f, vec4<i32>(1i, -1i, -3474i, -20420i), 1u), vec3<i32>(-23141i, 1i, 2147483647i)), vec2<f32>(-2396f, 1370f), Struct_2(Struct_1(vec2<u32>(8500u, 1u), 353f, vec4<i32>(36065i, 1i, i32(-2147483648), -30261i), 4294967295u), Struct_1(vec2<u32>(76962u, 10321u), -891f, vec4<i32>(13414i, 1i, -7675i, 69832i), 62381u), vec3<i32>(2147483647i, i32(-2147483648), 51647i)), Struct_1(vec2<u32>(22985u, 0u), -551f, vec4<i32>(2147483647i, 8621i, 8172i, 0i), 19859u)), Struct_3(Struct_2(Struct_1(vec2<u32>(546u, 1u), -606f, vec4<i32>(-3257i, 49322i, 30201i, -25962i), 0u), Struct_1(vec2<u32>(32868u, 22696u), -479f, vec4<i32>(-1i, 1i, -5530i, 42368i), 0u), vec3<i32>(0i, -1i, 1i)), vec2<f32>(-1958f, 196f), Struct_2(Struct_1(vec2<u32>(492u, 0u), -1564f, vec4<i32>(-12762i, i32(-2147483648), 2147483647i, 5337i), 22798u), Struct_1(vec2<u32>(39368u, 60747u), 337f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, 0i), 1u), vec3<i32>(-72390i, -1i, 0i)), Struct_1(vec2<u32>(29199u, 1u), -1108f, vec4<i32>(i32(-2147483648), 0i, 11304i, -31746i), 4294967295u)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 355f, vec4<i32>(-1i, 2147483647i, 40693i, 55624i), 19291u), Struct_1(vec2<u32>(1u, 30037u), -1616f, vec4<i32>(-1i, 1i, -3330i, 26176i), 1u), vec3<i32>(1i, -35302i, 3061i)), vec2<f32>(-115f, -397f), Struct_2(Struct_1(vec2<u32>(2714u, 0u), 1175f, vec4<i32>(-1i, 37430i, i32(-2147483648), i32(-2147483648)), 4294967295u), Struct_1(vec2<u32>(4294967295u, 0u), 851f, vec4<i32>(0i, 1601i, i32(-2147483648), 0i), 31240u), vec3<i32>(-32966i, -36404i, -31924i)), Struct_1(vec2<u32>(18433u, 38636u), 1153f, vec4<i32>(0i, 0i, 68068i, 23462i), 50052u)), Struct_3(Struct_2(Struct_1(vec2<u32>(11104u, 4372u), -2007f, vec4<i32>(65475i, -44061i, 2147483647i, 1i), 9858u), Struct_1(vec2<u32>(35950u, 77878u), 2872f, vec4<i32>(0i, 0i, -66455i, i32(-2147483648)), 30302u), vec3<i32>(1i, -21981i, 1i)), vec2<f32>(-1162f, -1330f), Struct_2(Struct_1(vec2<u32>(0u, 23710u), -308f, vec4<i32>(40494i, 877i, 39437i, -40899i), 88883u), Struct_1(vec2<u32>(0u, 31961u), 1173f, vec4<i32>(-1i, -72286i, -1i, -1i), 60038u), vec3<i32>(i32(-2147483648), 1i, 23334i)), Struct_1(vec2<u32>(48811u, 4294967295u), 490f, vec4<i32>(-1i, -60856i, 0i, 2147483647i), 0u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 1>();
    var var_0 = max(global1[_wgslsmith_index_u32(19790u, 23u)], vec2<i32>(max(u_input.b, ~_wgslsmith_mod_i32(u_input.b, 28551i)), -47775i));
    var var_1 = Struct_3(Struct_2(Struct_1(u_input.a.ww >> (firstTrailingBit(u_input.a.wz) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-1000f * -1057f), vec4<i32>(countOneBits(u_input.b), firstLeadingBit(var_0.x), var_0.x, u_input.b << (u_input.a.x % 32u)), u_input.c.x), Struct_1(~_wgslsmith_add_vec2_u32(u_input.c.wy, u_input.a.zx), _wgslsmith_f_op_f32(f32(-1f) * -146f), abs(vec4<i32>(var_0.x, 1i, -51149i, 4692i)) & -vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), u_input.a.x), firstTrailingBit(vec3<i32>(-6949i, var_0.x, var_0.x)) | vec3<i32>(u_input.b, _wgslsmith_mult_i32(1i, -51986i), -36254i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, 183f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(301f, -251f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-869f, -809f)))))), Struct_2(Struct_1(vec2<u32>(~u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 9149u)), -1129f, select(~vec4<i32>(2147483647i, 1i, var_0.x, var_0.x), vec4<i32>(2147483647i, u_input.b, -2147483647i, 2147483647i), vec4<bool>(false, false, true, false)), u_input.a.x), Struct_1(vec2<u32>(~4294967295u, min(0u, u_input.c.x)), 468f, min(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x), vec4<i32>(2147483647i, -2147483647i, var_0.x, u_input.b)), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x)), ~countOneBits(1u)), firstTrailingBit(-firstLeadingBit(vec3<i32>(2147483647i, 43410i, u_input.b)))), Struct_1(~countOneBits(max(u_input.a.zy, u_input.a.yz)), 1330f, vec4<i32>(~25221i, abs(51604i), -1i, 0i) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(-2147483647i, 20953i, u_input.b, 67026i), _wgslsmith_div_vec4_i32(vec4<i32>(17733i, -2147483647i, var_0.x, u_input.b), vec4<i32>(9719i, 0i, 15690i, var_0.x))), ~(~(~410u))));
    var var_2 = u_input.c;
    global0 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: bool) -> i32 {
    global1 = array<vec2<i32>, 23>();
    var var_0 = Struct_2(Struct_1(u_input.a.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1331f, 1416f)) - _wgslsmith_f_op_f32(func_3())), abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 3238i, u_input.b, u_input.b), vec4<i32>(u_input.b, 1930i, u_input.b, 52962i)), firstTrailingBit(vec4<i32>(u_input.b, -72038i, 2147483647i, -2147483647i)), true)), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 14703u) ^ (u_input.c.x ^ 1u), ~(~11070u))), Struct_1(~abs(~vec2<u32>(u_input.a.x, u_input.a.x)), 935f, -firstTrailingBit(-vec4<i32>(0i, u_input.b, -2147483647i, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, u_input.a.x), vec2<u32>(25991u, ~u_input.c.x))), vec3<i32>(select(-18519i, _wgslsmith_mult_i32(~u_input.b, u_input.b & -18366i), true), min(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, 14410i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, -1i, 19140i)))), u_input.b));
    let var_1 = Struct_1(reverseBits(vec2<u32>(_wgslsmith_sub_u32(1u, 1u), ~0u ^ u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.b))) * -1000f), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -11566i, ~var_0.c.x, var_0.a.c.x ^ 1i), -var_0.a.c >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 26694u, var_0.b.d, var_0.b.a.x), vec4<u32>(47558u, 12144u, var_0.a.d, u_input.c.x)) % vec4<u32>(32u))), var_0.b.c), ~var_0.b.d);
    var var_2 = (var_0.b.a.x ^ 14642u) << (~min(~(~var_0.b.a.x), _wgslsmith_clamp_u32(reverseBits(u_input.c.x), 43066u, 37649u)) % 32u);
    var_0 = Struct_2(var_1, var_1, abs(~(vec3<i32>(-1i) * -vec3<i32>(var_0.c.x, var_1.c.x, var_1.c.x))));
    return u_input.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> bool {
    global0 = array<Struct_2, 1>();
    var var_0 = (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2087f - -362f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-803f, 1121f)))) != arg_0.x;
    let var_1 = Struct_1(u_input.a.xw, _wgslsmith_f_op_f32(floor(142f)), vec4<i32>(func_2(u_input.b < -23088i), ~(-2147483647i), _wgslsmith_add_i32(1i, arg_1.x), ~2147483647i & arg_1.x) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1, arg_1), -arg_1), vec4<i32>(~u_input.b, ~arg_1.x, u_input.b, arg_1.x)), _wgslsmith_clamp_u32(24438u, u_input.c.x, 99729u));
    global1 = array<vec2<i32>, 23>();
    var var_2 = Struct_4(vec4<bool>(false, var_1.a.x == select(_wgslsmith_dot_vec3_u32(u_input.a.xyz, vec3<u32>(26084u, u_input.c.x, 4294967295u)), ~63489u, false), arg_0.x, false));
    return 23763u > u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 31>();
    var var_0 = !select(!vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(func_1(vec3<bool>(true, true, true), vec4<i32>(2787i, -64249i, u_input.b, 10849i) ^ vec4<i32>(-45043i, u_input.b, u_input.b, u_input.b)), false), !((u_input.b ^ u_input.b) == _wgslsmith_clamp_i32(1i, 40111i, -2147483647i)));
    global2 = array<Struct_3, 31>();
    var var_1 = Struct_1(u_input.a.zy ^ u_input.a.xz, -374f, ~_wgslsmith_clamp_vec4_i32(countOneBits(abs(vec4<i32>(49306i, 1i, -1i, 56307i))), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i) | -vec4<i32>(11311i, u_input.b, 7972i, -1i), vec4<i32>(u_input.b, -17439i, i32(-1i) * -1i, u_input.b)), 68763u);
    global2 = array<Struct_3, 31>();
    var_1 = Struct_1(var_1.a, -1087f, var_1.c, ~var_1.d);
    var var_2 = Struct_1(~(~(vec2<u32>(16434u, 4294967295u) & u_input.a.xz)) << (u_input.c.yw % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1082f, 1724f)))))), _wgslsmith_clamp_vec4_i32(var_1.c, vec4<i32>(-firstLeadingBit(u_input.b), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(37228i, 12289i), -var_1.c.x, _wgslsmith_div_i32(31252i, 2147483647i)), 0i, ~(i32(-1i) * -39713i)), var_1.c), ~_wgslsmith_div_u32(4294967295u, var_1.a.x) & (0u >> (firstTrailingBit(4938u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-2147483647i, var_2.c.x, var_1.c.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), var_2.b, _wgslsmith_div_f32(var_2.b, 272f)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.c.x, firstTrailingBit(var_2.c.x)), var_2.c.x));
}

