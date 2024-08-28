struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(vec2<i32>(1i, 1i), vec3<f32>(364f, -2012f, 823f), vec2<i32>(1i, 0i), vec3<i32>(i32(-2147483648), 0i, 1i)), vec3<f32>(-602f, -633f, 167f), false, Struct_2(Struct_1(vec2<i32>(-11374i, 1i), vec3<f32>(596f, -1079f, -527f), vec2<i32>(33205i, 2147483647i), vec3<i32>(2147483647i, -1i, 810i)), Struct_1(vec2<i32>(1i, -3372i), vec3<f32>(394f, 1735f, -1176f), vec2<i32>(7724i, 1i), vec3<i32>(0i, 0i, 0i)), vec2<f32>(-1557f, -1366f)), Struct_1(vec2<i32>(-56117i, 1i), vec3<f32>(-809f, -1134f, 1256f), vec2<i32>(0i, 1i), vec3<i32>(-6322i, -4298i, 2147483647i))), Struct_3(Struct_1(vec2<i32>(-1i, -17178i), vec3<f32>(2029f, 1000f, -246f), vec2<i32>(1i, 23148i), vec3<i32>(-1i, -6810i, 1i)), vec3<f32>(-228f, 1535f, -135f), false, Struct_2(Struct_1(vec2<i32>(12645i, -1i), vec3<f32>(-321f, -1428f, 1000f), vec2<i32>(29706i, -57294i), vec3<i32>(53620i, -9553i, 5812i)), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(-1000f, -610f, -1127f), vec2<i32>(17438i, -1i), vec3<i32>(2147483647i, 1i, 2147483647i)), vec2<f32>(-919f, 861f)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<f32>(-928f, 220f, 1379f), vec2<i32>(2147483647i, 1i), vec3<i32>(28598i, 0i, 12144i))), Struct_3(Struct_1(vec2<i32>(16832i, 8829i), vec3<f32>(377f, 218f, 517f), vec2<i32>(2262i, -10232i), vec3<i32>(-1i, -1i, -16893i)), vec3<f32>(-1012f, 1000f, -828f), false, Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec3<f32>(-1061f, -1564f, -696f), vec2<i32>(-28667i, 4875i), vec3<i32>(9313i, -1i, -19523i)), Struct_1(vec2<i32>(18556i, -46131i), vec3<f32>(2318f, 1000f, -1665f), vec2<i32>(1i, -69699i), vec3<i32>(-25016i, 41605i, 7457i)), vec2<f32>(-799f, 526f)), Struct_1(vec2<i32>(-24048i, i32(-2147483648)), vec3<f32>(-302f, 613f, -416f), vec2<i32>(30195i, 0i), vec3<i32>(-24135i, i32(-2147483648), -25597i))), Struct_3(Struct_1(vec2<i32>(-1i, 13126i), vec3<f32>(-1215f, 419f, 1816f), vec2<i32>(i32(-2147483648), 53183i), vec3<i32>(2147483647i, 0i, i32(-2147483648))), vec3<f32>(-276f, -386f, -1199f), true, Struct_2(Struct_1(vec2<i32>(25102i, 1i), vec3<f32>(200f, 2099f, 1681f), vec2<i32>(0i, -8528i), vec3<i32>(0i, -24305i, 23999i)), Struct_1(vec2<i32>(-1i, 2443i), vec3<f32>(-634f, -1239f, -1121f), vec2<i32>(-1i, 32000i), vec3<i32>(0i, i32(-2147483648), 2147483647i)), vec2<f32>(454f, 375f)), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(-1000f, -1000f, 710f), vec2<i32>(20951i, -1449i), vec3<i32>(7721i, 0i, 1i))), Struct_3(Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(109f, 2167f, -1056f), vec2<i32>(1i, 0i), vec3<i32>(-1i, -51441i, 2147483647i)), vec3<f32>(-1069f, -1033f, 481f), true, Struct_2(Struct_1(vec2<i32>(52541i, 16710i), vec3<f32>(271f, -1319f, -560f), vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(3999i, 1i, 0i)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(106f, 536f, 797f), vec2<i32>(-37344i, 0i), vec3<i32>(29823i, 8621i, 14266i)), vec2<f32>(-619f, 820f)), Struct_1(vec2<i32>(-4089i, 49578i), vec3<f32>(-289f, 151f, 558f), vec2<i32>(2147483647i, 0i), vec3<i32>(0i, 18416i, 0i))), Struct_3(Struct_1(vec2<i32>(1i, -21293i), vec3<f32>(-348f, -1357f, 450f), vec2<i32>(2147483647i, -78923i), vec3<i32>(1i, 0i, 17679i)), vec3<f32>(-609f, -741f, 842f), true, Struct_2(Struct_1(vec2<i32>(37764i, 2147483647i), vec3<f32>(-1157f, -187f, -1240f), vec2<i32>(0i, 0i), vec3<i32>(2147483647i, 33209i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 2517i), vec3<f32>(-1312f, -277f, 202f), vec2<i32>(-5459i, 35452i), vec3<i32>(70786i, 0i, 21853i)), vec2<f32>(-606f, -1340f)), Struct_1(vec2<i32>(5669i, 1i), vec3<f32>(-158f, -245f, 492f), vec2<i32>(-1i, 2147483647i), vec3<i32>(2147483647i, 29810i, 2780i))), Struct_3(Struct_1(vec2<i32>(35792i, 1i), vec3<f32>(-172f, 1930f, 231f), vec2<i32>(1i, 5402i), vec3<i32>(0i, 9275i, -20110i)), vec3<f32>(341f, -636f, -1000f), true, Struct_2(Struct_1(vec2<i32>(45970i, 56556i), vec3<f32>(-835f, -1995f, 1106f), vec2<i32>(0i, -38858i), vec3<i32>(-6246i, i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(13697i, 1i), vec3<f32>(1009f, 509f, 700f), vec2<i32>(1i, 19338i), vec3<i32>(-13869i, i32(-2147483648), 16018i)), vec2<f32>(1214f, -995f)), Struct_1(vec2<i32>(2147483647i, 9976i), vec3<f32>(454f, -385f, 122f), vec2<i32>(-1i, 3868i), vec3<i32>(-1i, 0i, -5120i))), Struct_3(Struct_1(vec2<i32>(1i, -53302i), vec3<f32>(758f, 1000f, 601f), vec2<i32>(2147483647i, 1i), vec3<i32>(-1i, 1i, 0i)), vec3<f32>(-409f, -284f, -198f), false, Struct_2(Struct_1(vec2<i32>(1i, 1116i), vec3<f32>(529f, 1700f, -1669f), vec2<i32>(-23464i, 1i), vec3<i32>(-1i, 1i, -2610i)), Struct_1(vec2<i32>(0i, 0i), vec3<f32>(152f, -180f, -499f), vec2<i32>(1i, -20369i), vec3<i32>(2147483647i, i32(-2147483648), 0i)), vec2<f32>(700f, -181f)), Struct_1(vec2<i32>(2147483647i, 61688i), vec3<f32>(1129f, 938f, -563f), vec2<i32>(-33258i, 1i), vec3<i32>(2147483647i, 16558i, -1i))), Struct_3(Struct_1(vec2<i32>(0i, 21854i), vec3<f32>(1966f, -1031f, -1412f), vec2<i32>(-11119i, 0i), vec3<i32>(1i, -20544i, i32(-2147483648))), vec3<f32>(-1000f, 579f, 490f), true, Struct_2(Struct_1(vec2<i32>(-11061i, 24091i), vec3<f32>(-205f, 311f, 1000f), vec2<i32>(4093i, 1i), vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec2<i32>(i32(-2147483648), 21064i), vec3<f32>(-216f, -1763f, 707f), vec2<i32>(44296i, 46136i), vec3<i32>(14087i, 0i, -9548i)), vec2<f32>(732f, -1000f)), Struct_1(vec2<i32>(42022i, 1i), vec3<f32>(-444f, 548f, -1118f), vec2<i32>(i32(-2147483648), 1i), vec3<i32>(15925i, -9450i, 0i))), Struct_3(Struct_1(vec2<i32>(19488i, 26765i), vec3<f32>(-1403f, -462f, -1000f), vec2<i32>(-40613i, 50678i), vec3<i32>(i32(-2147483648), 0i, -1i)), vec3<f32>(-1000f, -1432f, -225f), false, Struct_2(Struct_1(vec2<i32>(1i, 60469i), vec3<f32>(-1570f, 427f, -339f), vec2<i32>(53341i, -20212i), vec3<i32>(1i, -8329i, 10591i)), Struct_1(vec2<i32>(34161i, -20089i), vec3<f32>(-2467f, -672f, 997f), vec2<i32>(29818i, -38849i), vec3<i32>(2147483647i, -33774i, -5439i)), vec2<f32>(-406f, -319f)), Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(1236f, 1332f, -781f), vec2<i32>(18305i, 6012i), vec3<i32>(6587i, 1i, 39912i))), Struct_3(Struct_1(vec2<i32>(17935i, 0i), vec3<f32>(226f, -329f, -725f), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(-1i, 63762i, -16516i)), vec3<f32>(820f, -456f, 595f), false, Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(1690f, 143f, 386f), vec2<i32>(-1i, -22760i), vec3<i32>(5426i, -1i, -48441i)), Struct_1(vec2<i32>(i32(-2147483648), 19973i), vec3<f32>(626f, -969f, -461f), vec2<i32>(19031i, -27592i), vec3<i32>(-26414i, 37587i, -38924i)), vec2<f32>(-1282f, -780f)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(-653f, -470f, 620f), vec2<i32>(0i, -1i), vec3<i32>(1i, i32(-2147483648), 1i))), Struct_3(Struct_1(vec2<i32>(-13980i, 0i), vec3<f32>(1000f, -771f, 1000f), vec2<i32>(1i, 0i), vec3<i32>(13241i, -23711i, 1i)), vec3<f32>(1327f, 907f, 305f), false, Struct_2(Struct_1(vec2<i32>(1i, 27376i), vec3<f32>(959f, -984f, 619f), vec2<i32>(4385i, 822i), vec3<i32>(21189i, -1i, -20176i)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(-142f, 108f, 974f), vec2<i32>(2147483647i, 32876i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), vec2<f32>(-1234f, 1482f)), Struct_1(vec2<i32>(-1i, -9957i), vec3<f32>(1852f, -1878f, 770f), vec2<i32>(-20973i, 1i), vec3<i32>(-45377i, 14443i, -71187i))), Struct_3(Struct_1(vec2<i32>(10900i, -1i), vec3<f32>(305f, -1000f, -1937f), vec2<i32>(63257i, 2147483647i), vec3<i32>(42119i, 1i, 2147483647i)), vec3<f32>(-1000f, -581f, -1704f), true, Struct_2(Struct_1(vec2<i32>(-9209i, i32(-2147483648)), vec3<f32>(967f, 334f, 1041f), vec2<i32>(-27400i, 22833i), vec3<i32>(2147483647i, -47045i, -9204i)), Struct_1(vec2<i32>(66719i, 17956i), vec3<f32>(1000f, 208f, -1000f), vec2<i32>(-1i, 24760i), vec3<i32>(-11191i, -797i, -5878i)), vec2<f32>(102f, -1304f)), Struct_1(vec2<i32>(-4724i, -47619i), vec3<f32>(-121f, -447f, -1358f), vec2<i32>(-39130i, 75942i), vec3<i32>(-35309i, 0i, 7846i))), Struct_3(Struct_1(vec2<i32>(1i, 2147483647i), vec3<f32>(874f, -235f, -1657f), vec2<i32>(-14723i, 7422i), vec3<i32>(-54195i, 44069i, i32(-2147483648))), vec3<f32>(-770f, 1000f, -1311f), true, Struct_2(Struct_1(vec2<i32>(-47977i, 18234i), vec3<f32>(591f, 756f, 774f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -18602i)), Struct_1(vec2<i32>(-11249i, 1i), vec3<f32>(467f, 1793f, -1222f), vec2<i32>(2147483647i, 61783i), vec3<i32>(i32(-2147483648), -40151i, -30698i)), vec2<f32>(-1000f, -1232f)), Struct_1(vec2<i32>(-1i, 9604i), vec3<f32>(260f, -936f, -1365f), vec2<i32>(-1i, 2147483647i), vec3<i32>(1i, -1i, 0i))), Struct_3(Struct_1(vec2<i32>(2147483647i, 31227i), vec3<f32>(1476f, -1000f, -1142f), vec2<i32>(9104i, -1i), vec3<i32>(-1i, i32(-2147483648), 43239i)), vec3<f32>(1000f, -134f, -590f), true, Struct_2(Struct_1(vec2<i32>(1i, 1i), vec3<f32>(1815f, -454f, -1029f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(-1311i, i32(-2147483648), -2700i)), Struct_1(vec2<i32>(-26267i, -10246i), vec3<f32>(125f, -490f, 244f), vec2<i32>(2147483647i, -1i), vec3<i32>(-18044i, 2147483647i, 10556i)), vec2<f32>(-497f, -735f)), Struct_1(vec2<i32>(-38932i, 23572i), vec3<f32>(-541f, 351f, -588f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -67970i, -65874i))), Struct_3(Struct_1(vec2<i32>(-18937i, 60751i), vec3<f32>(-857f, 1000f, -578f), vec2<i32>(-35007i, -9757i), vec3<i32>(i32(-2147483648), -1i, 0i)), vec3<f32>(445f, -1007f, 1138f), false, Struct_2(Struct_1(vec2<i32>(-44709i, -1i), vec3<f32>(1096f, -1057f, -1000f), vec2<i32>(-25922i, 0i), vec3<i32>(-34507i, i32(-2147483648), 33171i)), Struct_1(vec2<i32>(0i, -30821i), vec3<f32>(-2145f, -1231f, 1000f), vec2<i32>(-28699i, 1i), vec3<i32>(11263i, -32482i, -1i)), vec2<f32>(-189f, -1023f)), Struct_1(vec2<i32>(-935i, -1i), vec3<f32>(-1176f, -1233f, -859f), vec2<i32>(35522i, 2147483647i), vec3<i32>(-31051i, 0i, 16763i))), Struct_3(Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(473f, -1092f, -1799f), vec2<i32>(i32(-2147483648), -1i), vec3<i32>(2147483647i, 58164i, -6198i)), vec3<f32>(547f, -799f, -669f), true, Struct_2(Struct_1(vec2<i32>(-2129i, -1i), vec3<f32>(1084f, -412f, 602f), vec2<i32>(0i, -17077i), vec3<i32>(181i, 0i, -12636i)), Struct_1(vec2<i32>(0i, -1i), vec3<f32>(1149f, 613f, 673f), vec2<i32>(36521i, -55139i), vec3<i32>(-35010i, 72590i, i32(-2147483648))), vec2<f32>(1853f, -312f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(-813f, -423f, 1767f), vec2<i32>(-17668i, i32(-2147483648)), vec3<i32>(-792i, 2147483647i, -10515i))), Struct_3(Struct_1(vec2<i32>(-67053i, -1i), vec3<f32>(823f, -719f, -743f), vec2<i32>(2147483647i, 2951i), vec3<i32>(-1i, -5302i, 49278i)), vec3<f32>(392f, 1014f, -291f), true, Struct_2(Struct_1(vec2<i32>(0i, 0i), vec3<f32>(-958f, -1548f, -808f), vec2<i32>(16068i, 1i), vec3<i32>(-8566i, 2172i, -19125i)), Struct_1(vec2<i32>(53837i, 0i), vec3<f32>(260f, -1114f, 1913f), vec2<i32>(-51996i, -38194i), vec3<i32>(0i, -12022i, 12491i)), vec2<f32>(1771f, 187f)), Struct_1(vec2<i32>(-1i, -1i), vec3<f32>(-212f, -669f, 326f), vec2<i32>(-4109i, -32444i), vec3<i32>(0i, -9753i, 81909i))), Struct_3(Struct_1(vec2<i32>(2147483647i, -62931i), vec3<f32>(-1158f, 1447f, 1155f), vec2<i32>(0i, i32(-2147483648)), vec3<i32>(-1i, -1i, -9949i)), vec3<f32>(-719f, 542f, -174f), false, Struct_2(Struct_1(vec2<i32>(-9216i, 15946i), vec3<f32>(-1296f, 985f, -606f), vec2<i32>(82425i, 29764i), vec3<i32>(-52344i, 2147483647i, 2147483647i)), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<f32>(-1000f, 148f, -559f), vec2<i32>(34075i, 2662i), vec3<i32>(-37884i, 0i, 46411i)), vec2<f32>(535f, -1443f)), Struct_1(vec2<i32>(-31625i, 0i), vec3<f32>(-754f, -546f, -921f), vec2<i32>(11774i, -36432i), vec3<i32>(0i, 15115i, 25907i))), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(311f, 333f, -3315f), vec2<i32>(1i, -1i), vec3<i32>(i32(-2147483648), 0i, 50010i)), vec3<f32>(803f, 1234f, -989f), true, Struct_2(Struct_1(vec2<i32>(2147483647i, -38052i), vec3<f32>(321f, -1680f, -1714f), vec2<i32>(62239i, -46911i), vec3<i32>(-29989i, 1i, -9542i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-672f, -2055f, -1320f), vec2<i32>(1i, -51786i), vec3<i32>(-27264i, -53384i, -1i)), vec2<f32>(-2140f, -1120f)), Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-2167f, -389f, 1830f), vec2<i32>(i32(-2147483648), 40473i), vec3<i32>(-64987i, -20847i, 52623i))), Struct_3(Struct_1(vec2<i32>(-79925i, -21119i), vec3<f32>(-264f, 957f, 1464f), vec2<i32>(29266i, -1i), vec3<i32>(29802i, -1i, 2147483647i)), vec3<f32>(-844f, 184f, -235f), true, Struct_2(Struct_1(vec2<i32>(-14180i, 0i), vec3<f32>(-452f, 392f, -883f), vec2<i32>(-93475i, 18975i), vec3<i32>(2147483647i, 15950i, 18432i)), Struct_1(vec2<i32>(-1i, -14001i), vec3<f32>(450f, 1856f, 1426f), vec2<i32>(-30652i, -22074i), vec3<i32>(36331i, 1i, -53449i)), vec2<f32>(1459f, 1104f)), Struct_1(vec2<i32>(-32422i, i32(-2147483648)), vec3<f32>(-2006f, 696f, 548f), vec2<i32>(0i, 0i), vec3<i32>(i32(-2147483648), 1i, 29710i))), Struct_3(Struct_1(vec2<i32>(-4669i, -1i), vec3<f32>(1169f, 1157f, -463f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(-2665i, 2147483647i, -1i)), vec3<f32>(-417f, 192f, -1890f), true, Struct_2(Struct_1(vec2<i32>(-39785i, -4400i), vec3<f32>(-951f, -1730f, -1814f), vec2<i32>(1i, -46497i), vec3<i32>(28059i, 0i, 0i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(-500f, -899f, 476f), vec2<i32>(7875i, 2147483647i), vec3<i32>(48216i, -37471i, 22906i)), vec2<f32>(-205f, 1000f)), Struct_1(vec2<i32>(1i, 0i), vec3<f32>(-277f, 315f, 500f), vec2<i32>(-17708i, -43171i), vec3<i32>(50812i, 0i, -1i))));

var<private> global1: array<bool, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec4<i32>) -> vec3<f32> {
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    return vec3<f32>(521f, 622f, 415f);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(Struct_1(abs(vec2<i32>(arg_1.c.x, 20110i) & vec2<i32>(-1i, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1992f, _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x), 926f) + vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -552f))), vec2<i32>(select(_wgslsmith_sub_i32(2568i, arg_1.a.x), ~18329i, arg_0), arg_1.a.x & arg_1.c.x), vec3<i32>(~0i, arg_1.a.x, 1i)), arg_1, vec2<f32>(arg_1.b.x, arg_1.b.x));
    let var_1 = ~(i32(-1i) * -26586i);
    return -5820i;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    return Struct_1(-countOneBits(vec2<i32>(reverseBits(0i), func_3(global1[_wgslsmith_index_u32(55209u, 20u)], Struct_1(vec2<i32>(-17302i, -2147483647i), vec3<f32>(173f, 1000f, -930f), vec2<i32>(arg_0, arg_0), vec3<i32>(arg_0, -2822i, 21578i))))), _wgslsmith_f_op_vec3_f32(-arg_1), -(vec2<i32>(countOneBits(51644i), arg_0) & select(~vec2<i32>(2147483647i, 1i), ~vec2<i32>(2147483647i, arg_0), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.c, 20u)]))), _wgslsmith_add_vec3_i32(max(abs(vec3<i32>(-1i, arg_0, 20090i)), reverseBits(abs(vec3<i32>(arg_0, arg_0, arg_0)))), vec3<i32>(-1i) * -vec3<i32>(27157i, arg_0, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    var var_0 = func_2(~10883i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, -1256f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, -620f, 142f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(981f, -1000f, -1575f) - vec3<f32>(490f, 676f, -758f)), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(240f, vec3<f32>(326f, -921f, -436f)), -428f, vec4<i32>(-1i, 0i, -2147483647i, -43706i)))))));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_1 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(466f - _wgslsmith_f_op_f32(-var_0.b.x)), firstTrailingBit(var_0.d), -1i, ~_wgslsmith_mod_i32(var_0.d.x << (u_input.c % 32u), abs(~var_0.d.x)), var_0.a.x);
}

