struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(Struct_1(vec4<f32>(1301f, -355f, 671f, -1332f), 77462u, vec4<u32>(0u, 0u, 109226u, 908u)), Struct_1(vec4<f32>(1497f, -1956f, -180f, 819f), 42978u, vec4<u32>(45797u, 1u, 29111u, 1u)), vec2<bool>(false, false), vec2<i32>(1i, i32(-2147483648))), vec3<i32>(2147483647i, -35350i, 0i), 4294967295u, Struct_2(Struct_1(vec4<f32>(-1496f, -1734f, -1499f, 1402f), 4294967295u, vec4<u32>(60764u, 1u, 14423u, 4294967295u)), Struct_1(vec4<f32>(799f, 132f, -138f, -1667f), 0u, vec4<u32>(4294967295u, 1u, 4269u, 14636u)), vec2<bool>(true, true), vec2<i32>(2147483647i, 2147483647i))), Struct_3(Struct_2(Struct_1(vec4<f32>(112f, 1474f, 1000f, 181f), 23649u, vec4<u32>(4294967295u, 4294967295u, 50850u, 83582u)), Struct_1(vec4<f32>(-1000f, -1314f, -116f, 1000f), 4294967295u, vec4<u32>(70584u, 4294967295u, 25894u, 4294967295u)), vec2<bool>(true, false), vec2<i32>(7999i, 2147483647i)), vec3<i32>(-44353i, 13184i, 4623i), 11025u, Struct_2(Struct_1(vec4<f32>(237f, -372f, 276f, -1553f), 0u, vec4<u32>(4294967295u, 1u, 4294967295u, 2021u)), Struct_1(vec4<f32>(-187f, -443f, -1171f, 1566f), 1u, vec4<u32>(1u, 75299u, 13602u, 1u)), vec2<bool>(false, false), vec2<i32>(-19930i, -65796i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-880f, 114f, -1348f, -429f), 1u, vec4<u32>(1u, 70247u, 28694u, 28048u)), Struct_1(vec4<f32>(-205f, 1955f, 260f, -365f), 55110u, vec4<u32>(53754u, 4294967295u, 1461u, 54779u)), vec2<bool>(false, false), vec2<i32>(-42670i, 0i)), vec3<i32>(17233i, i32(-2147483648), 50762i), 0u, Struct_2(Struct_1(vec4<f32>(690f, -273f, -1615f, -339f), 31400u, vec4<u32>(0u, 4294967295u, 40222u, 59750u)), Struct_1(vec4<f32>(-909f, 1014f, -534f, 1309f), 0u, vec4<u32>(1u, 0u, 0u, 22490u)), vec2<bool>(true, true), vec2<i32>(0i, 1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1000f, 1292f, -1390f, 1340f), 1u, vec4<u32>(0u, 4294967295u, 64264u, 10952u)), Struct_1(vec4<f32>(-1028f, -454f, 1059f, 248f), 13142u, vec4<u32>(28311u, 3440u, 502u, 14088u)), vec2<bool>(true, false), vec2<i32>(-45842i, -9954i)), vec3<i32>(-40510i, -20481i, 38172i), 1u, Struct_2(Struct_1(vec4<f32>(2324f, -1082f, 188f, -682f), 1u, vec4<u32>(60139u, 0u, 4294967295u, 0u)), Struct_1(vec4<f32>(1101f, 505f, 1482f, 3165f), 1u, vec4<u32>(4294967295u, 21016u, 0u, 75039u)), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 29455i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1446f, -621f, 365f, -1364f), 83065u, vec4<u32>(0u, 79618u, 4294967295u, 1u)), Struct_1(vec4<f32>(1506f, -1160f, -147f, 170f), 1u, vec4<u32>(0u, 0u, 0u, 36886u)), vec2<bool>(false, true), vec2<i32>(61263i, i32(-2147483648))), vec3<i32>(25589i, 0i, 0i), 20636u, Struct_2(Struct_1(vec4<f32>(610f, 2043f, 649f, 773f), 23u, vec4<u32>(37439u, 0u, 4294967295u, 27825u)), Struct_1(vec4<f32>(2126f, -1000f, -1000f, 1642f), 25809u, vec4<u32>(42398u, 16767u, 5842u, 0u)), vec2<bool>(true, true), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec4<f32>(-435f, -608f, -148f, -280f), 0u, vec4<u32>(20521u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<f32>(-222f, 822f, -915f, 2043f), 1u, vec4<u32>(43006u, 3060u, 0u, 15217u)), vec2<bool>(false, true), vec2<i32>(8575i, 35107i)), vec3<i32>(i32(-2147483648), i32(-2147483648), 5516i), 4294967295u, Struct_2(Struct_1(vec4<f32>(1000f, -1903f, 478f, 841f), 1u, vec4<u32>(0u, 27948u, 19701u, 1u)), Struct_1(vec4<f32>(536f, -604f, 175f, -193f), 67348u, vec4<u32>(0u, 32018u, 19854u, 1u)), vec2<bool>(false, true), vec2<i32>(25078i, 54806i))), Struct_3(Struct_2(Struct_1(vec4<f32>(1189f, -778f, 1920f, 1384f), 38954u, vec4<u32>(67386u, 46962u, 4294967295u, 18178u)), Struct_1(vec4<f32>(550f, 954f, 1040f, -1940f), 95299u, vec4<u32>(43252u, 0u, 1u, 1960u)), vec2<bool>(true, false), vec2<i32>(1i, -1i)), vec3<i32>(25990i, i32(-2147483648), 0i), 1u, Struct_2(Struct_1(vec4<f32>(592f, 190f, 298f, 869f), 7411u, vec4<u32>(52739u, 25041u, 4294967295u, 44961u)), Struct_1(vec4<f32>(1724f, -2186f, -574f, 924f), 4294967295u, vec4<u32>(0u, 0u, 4294967295u, 896u)), vec2<bool>(true, true), vec2<i32>(70311i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec4<f32>(622f, 1000f, 426f, 1000f), 4294967295u, vec4<u32>(21119u, 1070u, 1u, 45875u)), Struct_1(vec4<f32>(-912f, 1173f, 1881f, -377f), 4294967295u, vec4<u32>(1u, 4394u, 1u, 0u)), vec2<bool>(false, false), vec2<i32>(-1i, 24007i)), vec3<i32>(-1i, -665i, -1i), 60975u, Struct_2(Struct_1(vec4<f32>(371f, -132f, 474f, 1848f), 36975u, vec4<u32>(1u, 39929u, 29824u, 0u)), Struct_1(vec4<f32>(-448f, 253f, -1000f, -2239f), 70460u, vec4<u32>(0u, 114191u, 44408u, 31700u)), vec2<bool>(false, false), vec2<i32>(8027i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec4<f32>(783f, 1298f, 1323f, 2660f), 0u, vec4<u32>(0u, 63657u, 1u, 9035u)), Struct_1(vec4<f32>(-344f, -2102f, 630f, 1961f), 4294967295u, vec4<u32>(4294967295u, 1u, 0u, 0u)), vec2<bool>(false, false), vec2<i32>(27097i, -52188i)), vec3<i32>(-12277i, 1i, 30574i), 4294967295u, Struct_2(Struct_1(vec4<f32>(1000f, -624f, 926f, -1071f), 56976u, vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<f32>(-160f, 2546f, 1072f, 1000f), 0u, vec4<u32>(4294967295u, 0u, 25213u, 1u)), vec2<bool>(false, false), vec2<i32>(-1i, 35314i))), Struct_3(Struct_2(Struct_1(vec4<f32>(635f, 1555f, 1582f, 353f), 4294967295u, vec4<u32>(0u, 62149u, 56688u, 32859u)), Struct_1(vec4<f32>(940f, -376f, -1778f, -1947f), 1u, vec4<u32>(4294967295u, 1251u, 3598u, 0u)), vec2<bool>(true, false), vec2<i32>(-18855i, -28903i)), vec3<i32>(2147483647i, 0i, -1i), 1u, Struct_2(Struct_1(vec4<f32>(776f, 408f, -358f, -869f), 4294967295u, vec4<u32>(8118u, 1u, 1u, 1u)), Struct_1(vec4<f32>(566f, -814f, -1598f, 164f), 0u, vec4<u32>(7615u, 64755u, 54351u, 67965u)), vec2<bool>(false, false), vec2<i32>(-1i, -1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(557f, 402f, 352f, 615f), 0u, vec4<u32>(50610u, 4294967295u, 1u, 17003u)), Struct_1(vec4<f32>(-203f, 2743f, -1514f, 107f), 1u, vec4<u32>(160u, 71165u, 0u, 6903u)), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 0i)), vec3<i32>(31015i, -13621i, -1i), 29562u, Struct_2(Struct_1(vec4<f32>(317f, 768f, -353f, -304f), 0u, vec4<u32>(1u, 0u, 9671u, 18473u)), Struct_1(vec4<f32>(-109f, 882f, 579f, 523f), 4294967295u, vec4<u32>(1u, 51788u, 4294967295u, 19840u)), vec2<bool>(true, true), vec2<i32>(6876i, 9215i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-2311f, -1732f, 586f, -465f), 0u, vec4<u32>(4294967295u, 7252u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(547f, -395f, 497f, 1378f), 58728u, vec4<u32>(72741u, 1u, 1u, 53403u)), vec2<bool>(true, true), vec2<i32>(7269i, -83163i)), vec3<i32>(-21138i, -1i, -32576i), 19562u, Struct_2(Struct_1(vec4<f32>(1000f, -828f, -1342f, -300f), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 27110u, 87020u)), Struct_1(vec4<f32>(-1000f, 217f, 102f, 572f), 31683u, vec4<u32>(0u, 1u, 420u, 4294967295u)), vec2<bool>(false, true), vec2<i32>(-39050i, 1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1481f, -1384f, 1449f, 1854f), 43935u, vec4<u32>(1u, 89701u, 0u, 856u)), Struct_1(vec4<f32>(1086f, 795f, -682f, 2043f), 1u, vec4<u32>(41350u, 4294967295u, 0u, 0u)), vec2<bool>(true, false), vec2<i32>(1i, -1i)), vec3<i32>(-4879i, -19111i, -12456i), 26804u, Struct_2(Struct_1(vec4<f32>(-470f, -196f, -1310f, 464f), 4294967295u, vec4<u32>(4294967295u, 1u, 29879u, 44682u)), Struct_1(vec4<f32>(-276f, 721f, -1142f, -2358f), 1u, vec4<u32>(1u, 4294967295u, 4294967295u, 47264u)), vec2<bool>(true, false), vec2<i32>(1i, 1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-122f, 353f, -798f, 279f), 4294967295u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec4<f32>(-744f, -1440f, -549f, 1788f), 53168u, vec4<u32>(1u, 1u, 43896u, 0u)), vec2<bool>(true, false), vec2<i32>(-25653i, i32(-2147483648))), vec3<i32>(3394i, i32(-2147483648), 28601i), 22201u, Struct_2(Struct_1(vec4<f32>(522f, -546f, 200f, 1074f), 112329u, vec4<u32>(0u, 64259u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(1153f, -279f, -932f, -765f), 80832u, vec4<u32>(113896u, 5261u, 0u, 1u)), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1352f, -1000f, 620f, -2008f), 20832u, vec4<u32>(38821u, 1u, 9449u, 71569u)), Struct_1(vec4<f32>(991f, 876f, 1329f, -934f), 0u, vec4<u32>(23830u, 1u, 4294967295u, 4294967295u)), vec2<bool>(true, true), vec2<i32>(45072i, 4201i)), vec3<i32>(i32(-2147483648), -17576i, 25705i), 20785u, Struct_2(Struct_1(vec4<f32>(1278f, 486f, 1403f, -1000f), 1708u, vec4<u32>(6082u, 10342u, 25253u, 5142u)), Struct_1(vec4<f32>(1114f, -494f, -1000f, 1000f), 28462u, vec4<u32>(0u, 10235u, 19135u, 4294967295u)), vec2<bool>(true, true), vec2<i32>(0i, -49952i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-1203f, 592f, -646f, -1531f), 69824u, vec4<u32>(0u, 0u, 0u, 16965u)), Struct_1(vec4<f32>(172f, -1000f, -404f, 913f), 38878u, vec4<u32>(4294967295u, 23702u, 29807u, 0u)), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<i32>(1443i, 1i, -1i), 42003u, Struct_2(Struct_1(vec4<f32>(-103f, 836f, 1152f, -1099f), 1u, vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<f32>(-950f, -463f, -682f, -744f), 55366u, vec4<u32>(116558u, 0u, 4294967295u, 0u)), vec2<bool>(false, false), vec2<i32>(-9876i, 0i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-489f, 229f, -865f, -143f), 4294967295u, vec4<u32>(0u, 1u, 49646u, 115631u)), Struct_1(vec4<f32>(-595f, -1751f, 539f, -399f), 0u, vec4<u32>(0u, 1u, 7923u, 1u)), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -3965i)), vec3<i32>(-37320i, 636i, 1i), 9806u, Struct_2(Struct_1(vec4<f32>(-1979f, -1010f, 1093f, -262f), 0u, vec4<u32>(49095u, 0u, 4294967295u, 34495u)), Struct_1(vec4<f32>(558f, -591f, 666f, 486f), 0u, vec4<u32>(42116u, 0u, 22585u, 0u)), vec2<bool>(true, true), vec2<i32>(0i, 1i))), Struct_3(Struct_2(Struct_1(vec4<f32>(556f, 1000f, 307f, 1066f), 4294967295u, vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_1(vec4<f32>(1999f, -1000f, 275f, 769f), 40564u, vec4<u32>(0u, 19990u, 4294967295u, 1u)), vec2<bool>(true, false), vec2<i32>(-15416i, 0i)), vec3<i32>(16457i, -36186i, 39726i), 56451u, Struct_2(Struct_1(vec4<f32>(909f, 951f, -611f, -1740f), 9634u, vec4<u32>(5497u, 94216u, 29287u, 4294967295u)), Struct_1(vec4<f32>(-562f, -216f, -460f, 1000f), 0u, vec4<u32>(1u, 4294967295u, 4294967295u, 125957u)), vec2<bool>(true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec4<f32>(1341f, 2045f, 370f, 504f), 1u, vec4<u32>(1u, 19011u, 10489u, 19141u)), Struct_1(vec4<f32>(-1991f, 2253f, 1849f, 1000f), 35738u, vec4<u32>(4294967295u, 36232u, 1u, 4294967295u)), vec2<bool>(false, false), vec2<i32>(-1i, -1i)), vec3<i32>(2147483647i, -16994i, 0i), 1u, Struct_2(Struct_1(vec4<f32>(-272f, -1370f, -1000f, 1005f), 1u, vec4<u32>(0u, 71853u, 1u, 1u)), Struct_1(vec4<f32>(-1000f, -886f, 905f, -510f), 1u, vec4<u32>(4294967295u, 17950u, 11935u, 84662u)), vec2<bool>(true, false), vec2<i32>(0i, -76324i))), Struct_3(Struct_2(Struct_1(vec4<f32>(163f, 1928f, 599f, 1884f), 12455u, vec4<u32>(123817u, 1u, 2399u, 0u)), Struct_1(vec4<f32>(-1446f, 1055f, 726f, -531f), 45417u, vec4<u32>(0u, 31147u, 1u, 0u)), vec2<bool>(false, true), vec2<i32>(-53940i, 0i)), vec3<i32>(-1i, -28181i, -1i), 0u, Struct_2(Struct_1(vec4<f32>(-316f, 972f, -123f, -1979f), 48107u, vec4<u32>(34511u, 4294967295u, 52784u, 31833u)), Struct_1(vec4<f32>(1497f, 1047f, -1050f, 987f), 8403u, vec4<u32>(77739u, 0u, 9600u, 13769u)), vec2<bool>(true, false), vec2<i32>(27542i, -18291i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-814f, 1570f, 122f, 159f), 4294967295u, vec4<u32>(34553u, 4294967295u, 0u, 1u)), Struct_1(vec4<f32>(1091f, -216f, -324f, 874f), 0u, vec4<u32>(4294967295u, 61496u, 36050u, 62796u)), vec2<bool>(true, false), vec2<i32>(2147483647i, -1i)), vec3<i32>(-1i, 11835i, 33996i), 1u, Struct_2(Struct_1(vec4<f32>(229f, 640f, 128f, -1000f), 4294967295u, vec4<u32>(12856u, 45956u, 1u, 2975u)), Struct_1(vec4<f32>(-762f, 357f, -1318f, 1000f), 0u, vec4<u32>(53021u, 1u, 44710u, 0u)), vec2<bool>(false, true), vec2<i32>(-1381i, 0i))), Struct_3(Struct_2(Struct_1(vec4<f32>(-595f, 117f, -632f, 1073f), 1u, vec4<u32>(0u, 100235u, 34185u, 24159u)), Struct_1(vec4<f32>(-1798f, 1795f, 1420f, 819f), 0u, vec4<u32>(23490u, 34627u, 52130u, 0u)), vec2<bool>(false, true), vec2<i32>(-1i, 1i)), vec3<i32>(-32712i, -1i, i32(-2147483648)), 44678u, Struct_2(Struct_1(vec4<f32>(-1000f, 908f, -328f, 172f), 0u, vec4<u32>(60714u, 1u, 31773u, 46874u)), Struct_1(vec4<f32>(-1161f, 1381f, -1173f, -1468f), 0u, vec4<u32>(4294967295u, 82900u, 72687u, 10690u)), vec2<bool>(false, true), vec2<i32>(-27017i, -57057i))));

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(2147483647i, -29698i), vec2<i32>(1i, 0i), vec2<i32>(-68157i, 0i), vec2<i32>(-33241i, 2147483647i), vec2<i32>(-33666i, 3806i), vec2<i32>(0i, 33352i), vec2<i32>(-41984i, 14487i), vec2<i32>(24094i, 1i), vec2<i32>(i32(-2147483648), -14812i), vec2<i32>(16708i, 2147483647i), vec2<i32>(17981i, -1i), vec2<i32>(i32(-2147483648), -45370i), vec2<i32>(1i, 0i), vec2<i32>(57842i, -1i), vec2<i32>(43242i, 1i), vec2<i32>(3269i, 2147483647i), vec2<i32>(1i, -54234i), vec2<i32>(32253i, i32(-2147483648)), vec2<i32>(-41287i, -30272i), vec2<i32>(10739i, -1i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(-39110i, i32(-2147483648)));

var<private> global3: f32;

var<private> global4: array<vec3<i32>, 20>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    global2 = array<vec2<i32>, 23>();
    var var_0 = global1[_wgslsmith_index_u32(max(~max(firstLeadingBit(u_input.b) & (1u << (u_input.b % 32u)), 1u), u_input.a.x), 22u)];
    global2 = array<vec2<i32>, 23>();
    global0 = array<i32, 32>();
    global1 = array<Struct_3, 22>();
    return var_0.a.b.c;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, arg_0, -1469f, 415f) * vec4<f32>(arg_0, arg_0, arg_0, arg_0))), select(arg_1.x & 1u, ~arg_1.x, any(vec2<bool>(false, true))), reverseBits(func_3())), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-455f, arg_0, arg_0, arg_0)), 23841u, max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 40136u, u_input.b), vec4<u32>(arg_1.x, u_input.b, 0u, 4294967295u)), vec4<u32>(81733u, 0u, 1u, u_input.b))), vec2<bool>(true, true), -countOneBits(vec2<i32>(25004i, arg_2.x) << (arg_1.xz % vec2<u32>(32u)))), min(select(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(arg_1.x, 32u)], 7422i), arg_2.xxw), arg_2.x), vec3<i32>(-1i, -1i, global0[_wgslsmith_index_u32(arg_1.x, 32u)]), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), arg_2.xwx), 1u, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 167f, arg_0)) * vec4<f32>(arg_0, arg_0, -1000f, arg_0)), 80871u, abs(~vec4<u32>(arg_1.x, u_input.a.x, 31522u, 1u))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-122f, arg_0, 982f, arg_0) - vec4<f32>(-408f, arg_0, arg_0, -383f)))), u_input.a.x << (arg_1.x % 32u), countOneBits(~vec4<u32>(1u, arg_1.x, u_input.b, 52923u))), vec2<bool>(true, true), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_2.x), -vec2<i32>(-14493i, -58947i)), reverseBits(-global2[_wgslsmith_index_u32(arg_1.x, 23u)]))));
    global0 = array<i32, 32>();
    global3 = 636f;
    var var_1 = arg_1.x;
    global4 = array<vec3<i32>, 20>();
    return arg_1.x & _wgslsmith_sub_u32(max(48049u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a.a.c.yyw, var_0.a.a.c.yzx), _wgslsmith_mod_vec3_u32(var_0.a.b.c.zyy, var_0.d.b.c.yzy))), arg_1.x);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    global3 = 361f;
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-((global0[_wgslsmith_index_u32(u_input.a.x, 32u)] & global0[_wgslsmith_index_u32(0u, 32u)]) | global0[_wgslsmith_index_u32(~arg_1, 32u)]), ~(-2709i), ~global0[_wgslsmith_index_u32(~(~38928u), 32u)]), -vec3<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -2147483647i), global0[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_sub_i32(0i, ~1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -158f, arg_0.a, arg_0.b.x) + vec4<f32>(955f, -246f, 114f, arg_0.b.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.b))))), ~((0u & u_input.a.x) << (_wgslsmith_mod_u32(~61205u, 4294967295u) % 32u)), vec4<u32>(~(~_wgslsmith_add_u32(arg_1, 1u)), 51543u, func_3().x, 0u));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1019f, -346f, 735f, -208f)) * var_1.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 1769f), _wgslsmith_f_op_vec4_f32(-var_1.a)), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, var_1.a.x, arg_0.a, arg_0.b.x))), var_1.a))))), arg_1, ~(~vec4<u32>(arg_1, 76702u, 29490u, arg_1)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(268f * var_2.a.x), arg_0.a, -120f, var_1.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(var_1.a.x, -789f, var_2.a.x, arg_0.b.x)))), _wgslsmith_sub_u32(1u >> (var_2.c.x % 32u), ~_wgslsmith_mod_u32(1u, 13226u)), var_2.c), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(trunc(1577f)), 1124f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1028f, -1150f, 564f, -1098f) * vec4<f32>(var_1.a.x, var_1.a.x, var_2.a.x, var_2.a.x)) * _wgslsmith_f_op_vec4_f32(-var_1.a))), var_1.b, (firstTrailingBit(vec4<u32>(0u, 38768u, u_input.b, 1u)) << (vec4<u32>(1u, var_2.c.x, 4294967295u, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(~var_1.b, _wgslsmith_mod_u32(var_2.c.x, 4294967295u), ~62489u, 1u)), select(vec2<bool>(false, all(vec2<bool>(true, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), ~(~global2[_wgslsmith_index_u32(var_2.c.x, 23u)]));
    return Struct_2(var_3.b, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(785f, 1000f, -373f, -1120f), var_3.a.a), vec4<f32>(_wgslsmith_div_f32(var_2.a.x, var_2.a.x), var_3.b.a.x, _wgslsmith_f_op_f32(step(-1000f, -1234f)), _wgslsmith_f_op_f32(-arg_0.b.x))), countOneBits(_wgslsmith_div_u32(33766u, var_1.b ^ 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, u_input.a.x, var_1.b, u_input.a.x), vec4<u32>(var_3.b.b, 29722u, var_3.b.b, 19523u)) << ((var_3.b.c >> ((vec4<u32>(arg_1, var_1.b, var_1.b, u_input.b) | var_1.c) % vec4<u32>(32u))) % vec4<u32>(32u))), select(vec2<bool>(true, all(vec3<bool>(var_3.c.x, true, false))), var_3.c, vec2<bool>(!(arg_0.b.x <= -104f), !(693f <= var_2.a.x))), abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_3.d, global2[_wgslsmith_index_u32(1u, 23u)]), var_0.zz, min(var_0.xz, vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(var_1.c.x, 32u)])))) & _wgslsmith_add_vec2_i32(-abs(var_3.d), ~var_0.xx & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_3.b.c.x), 23u)]));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> bool {
    global1 = array<Struct_3, 22>();
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1803f)), _wgslsmith_f_op_f32(f32(-1f) * -1043f))), _wgslsmith_f_op_f32(abs(-471f))))), true));
    var var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(-1021f - -295f), vec4<f32>(_wgslsmith_f_op_f32(abs(812f)), _wgslsmith_f_op_f32(806f * -547f), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1786f)), _wgslsmith_f_op_f32(f32(-1f) * -100f)))), func_2(_wgslsmith_f_op_f32(-923f * -275f), u_input.a, vec4<i32>(~arg_2.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 32u)], -arg_2.x)) | ((countOneBits(arg_3.x) & ~arg_3.x) | 1u));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.a.x + -455f)))), var_0.a.a.x, all(select(!vec3<bool>(false, arg_1.x, var_0.c.x), !vec3<bool>(arg_1.x, var_0.c.x, false), vec3<bool>(true, var_0.c.x, true))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_f32(var_0.a.a.x + var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2903f - var_0.a.a.x))), var_0.a.a)));
    global4 = array<vec3<i32>, 20>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = !(!all(vec3<bool>(true, true, func_1(true, vec4<bool>(true, false, true, false), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(36096u, 32u)]), u_input.a.zy))));
    let var_2 = true;
    let var_3 = countOneBits(u_input.a);
    var_0 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_div_u32(var_3.x, 4294967295u))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(97355u, _wgslsmith_add_u32(1u << (var_3.x % 32u), firstTrailingBit(4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 47618u, var_3.x), var_3 >> (vec3<u32>(u_input.b, 0u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_mod_u32(1u, abs(37712u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a.x) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 25776u), ~vec2<u32>(u_input.a.x, var_3.x)) % vec2<u32>(32u)), vec2<u32>(4294967295u, ~var_3.x)), i32(-1i) * -19781i, max(-(~(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(24511u, 32u)]))), _wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(24575u, 23u)], global2[_wgslsmith_index_u32((36755u << (var_3.x % 32u)) ^ (47977u | var_3.x), 23u)])));
}

