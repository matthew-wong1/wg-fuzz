struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(1000f, 46915i, 38294u, vec4<f32>(-790f, 1000f, -1342f, 1465f)), vec2<i32>(0i, -1i), Struct_1(402f, 20056i, 0u, vec4<f32>(-1000f, -1557f, -196f, 2575f)), 1i, Struct_1(-819f, i32(-2147483648), 127596u, vec4<f32>(-571f, -998f, -1563f, 1165f))), Struct_2(Struct_1(1133f, -59804i, 1u, vec4<f32>(117f, -325f, -1540f, -382f)), vec2<i32>(-17818i, 6442i), Struct_1(1527f, 36122i, 1u, vec4<f32>(510f, 1432f, 683f, 1624f)), -1i, Struct_1(516f, -1i, 10155u, vec4<f32>(1684f, 307f, -727f, 1520f))), Struct_2(Struct_1(-1128f, 32963i, 2698u, vec4<f32>(-1182f, 954f, -638f, -476f)), vec2<i32>(-3309i, 2147483647i), Struct_1(-338f, -732i, 78832u, vec4<f32>(-517f, 1467f, -1331f, 637f)), 2147483647i, Struct_1(196f, i32(-2147483648), 1u, vec4<f32>(1000f, -134f, -649f, -1075f))), Struct_2(Struct_1(-952f, 18224i, 34912u, vec4<f32>(-287f, 1234f, -1077f, 1000f)), vec2<i32>(-39120i, 48761i), Struct_1(-1154f, 7519i, 29146u, vec4<f32>(-272f, -1258f, 1010f, 1422f)), -36669i, Struct_1(354f, 1i, 25680u, vec4<f32>(912f, 262f, 582f, -234f))), Struct_2(Struct_1(-773f, i32(-2147483648), 30093u, vec4<f32>(875f, -436f, -146f, 1000f)), vec2<i32>(i32(-2147483648), 0i), Struct_1(261f, 41175i, 4294967295u, vec4<f32>(1933f, 435f, 647f, -1000f)), i32(-2147483648), Struct_1(-1000f, 31029i, 1u, vec4<f32>(2805f, 181f, -761f, -353f))), Struct_2(Struct_1(1000f, 14804i, 87811u, vec4<f32>(-256f, -1182f, -979f, 529f)), vec2<i32>(8122i, 1i), Struct_1(365f, 54044i, 4294967295u, vec4<f32>(-1073f, -1427f, -1209f, 585f)), 37311i, Struct_1(1091f, -3396i, 32696u, vec4<f32>(245f, -549f, -1000f, -367f))), Struct_2(Struct_1(-1022f, 80i, 0u, vec4<f32>(-1092f, 683f, 173f, -1889f)), vec2<i32>(1i, i32(-2147483648)), Struct_1(1466f, -3607i, 7083u, vec4<f32>(1000f, 328f, -1366f, -1636f)), 15748i, Struct_1(-1000f, 55130i, 1u, vec4<f32>(880f, 1000f, -615f, 893f))), Struct_2(Struct_1(-1244f, i32(-2147483648), 3443u, vec4<f32>(1343f, 1000f, 124f, 577f)), vec2<i32>(3882i, 74051i), Struct_1(1422f, 1i, 4294967295u, vec4<f32>(-395f, -1116f, 1000f, -760f)), 33847i, Struct_1(1000f, -41799i, 0u, vec4<f32>(948f, -251f, 867f, -387f))), Struct_2(Struct_1(1000f, -1i, 51453u, vec4<f32>(1333f, -219f, 192f, -860f)), vec2<i32>(35470i, -23429i), Struct_1(-435f, -1i, 4294967295u, vec4<f32>(686f, 202f, -564f, 640f)), 75953i, Struct_1(-2221f, 2147483647i, 5083u, vec4<f32>(-395f, -1000f, 327f, -1000f))), Struct_2(Struct_1(-1339f, 32663i, 1u, vec4<f32>(107f, 1167f, 705f, 844f)), vec2<i32>(1i, 2147483647i), Struct_1(762f, i32(-2147483648), 0u, vec4<f32>(1835f, 291f, 1804f, -104f)), i32(-2147483648), Struct_1(500f, 2147483647i, 4294967295u, vec4<f32>(1000f, 1140f, -820f, -758f))), Struct_2(Struct_1(-1732f, 1i, 0u, vec4<f32>(1556f, 1530f, 1000f, -1733f)), vec2<i32>(-2959i, 5690i), Struct_1(822f, -1i, 1u, vec4<f32>(-1218f, 1258f, -391f, 864f)), 62632i, Struct_1(356f, 829i, 4294967295u, vec4<f32>(-499f, 923f, -1631f, 1274f))), Struct_2(Struct_1(213f, 44856i, 0u, vec4<f32>(1000f, 267f, -701f, -673f)), vec2<i32>(-45616i, 28226i), Struct_1(-1427f, -102311i, 20381u, vec4<f32>(-1445f, 360f, 278f, -1000f)), 0i, Struct_1(-985f, 11821i, 1100u, vec4<f32>(-635f, -432f, -1175f, 1277f))), Struct_2(Struct_1(991f, 2147483647i, 94095u, vec4<f32>(-322f, -351f, -885f, -1478f)), vec2<i32>(21050i, 2147483647i), Struct_1(-1000f, -20699i, 76285u, vec4<f32>(-371f, -1310f, -313f, -320f)), 8346i, Struct_1(154f, -28478i, 50771u, vec4<f32>(1646f, -1811f, 974f, 365f))), Struct_2(Struct_1(277f, 3926i, 3541u, vec4<f32>(-1366f, 276f, 192f, 407f)), vec2<i32>(44452i, 35251i), Struct_1(-844f, 24824i, 1u, vec4<f32>(1687f, -1036f, -661f, -281f)), 23824i, Struct_1(-927f, 2147483647i, 41981u, vec4<f32>(503f, 645f, -772f, 777f))), Struct_2(Struct_1(812f, 24146i, 1u, vec4<f32>(116f, 307f, 1000f, 175f)), vec2<i32>(-1i, -13647i), Struct_1(1000f, 2147483647i, 1u, vec4<f32>(-1364f, -1939f, -1273f, 413f)), i32(-2147483648), Struct_1(270f, 48562i, 0u, vec4<f32>(501f, -444f, -301f, 221f))), Struct_2(Struct_1(-256f, 1i, 56931u, vec4<f32>(-191f, -937f, -1000f, -914f)), vec2<i32>(-38190i, -1i), Struct_1(-1443f, 1i, 4294967295u, vec4<f32>(-1183f, 1504f, 537f, 885f)), 0i, Struct_1(-1062f, -46167i, 1u, vec4<f32>(-1655f, -356f, -1155f, -801f))));

var<private> global1: u32 = 44933u;

var<private> global2: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(Struct_1(-752f, -1i, 4294967295u, vec4<f32>(-1334f, 696f, -108f, -734f)), vec2<i32>(2147483647i, 1i), Struct_1(-196f, -18674i, 0u, vec4<f32>(-778f, -1371f, 218f, 1480f)), 1i, Struct_1(-1000f, -10956i, 53200u, vec4<f32>(-868f, 339f, 1000f, -1240f))), -639i, -521f, Struct_1(-2236f, 12824i, 1u, vec4<f32>(-190f, 2152f, -812f, 2506f)), vec2<f32>(1331f, -218f)), Struct_3(Struct_2(Struct_1(212f, 58778i, 0u, vec4<f32>(-1585f, -1391f, 746f, 238f)), vec2<i32>(75599i, 0i), Struct_1(-836f, 16892i, 0u, vec4<f32>(-229f, -488f, -302f, 1000f)), 2147483647i, Struct_1(302f, i32(-2147483648), 0u, vec4<f32>(1000f, 319f, 258f, 920f))), 1i, 804f, Struct_1(-1416f, -1i, 30891u, vec4<f32>(-1556f, 1000f, 409f, -687f)), vec2<f32>(-350f, -1368f)), Struct_3(Struct_2(Struct_1(412f, 23943i, 23922u, vec4<f32>(-983f, 260f, 482f, 592f)), vec2<i32>(-21301i, 1i), Struct_1(254f, 2147483647i, 1u, vec4<f32>(1892f, -998f, -274f, -1166f)), 1i, Struct_1(-350f, 1i, 70587u, vec4<f32>(1268f, 1077f, 1000f, 371f))), -2583i, -1291f, Struct_1(576f, -24401i, 1u, vec4<f32>(-167f, -123f, -839f, -363f)), vec2<f32>(-133f, -2069f)), Struct_3(Struct_2(Struct_1(951f, i32(-2147483648), 4294967295u, vec4<f32>(1108f, 415f, 1341f, 1320f)), vec2<i32>(59460i, i32(-2147483648)), Struct_1(-452f, 76458i, 66504u, vec4<f32>(548f, -1710f, 784f, -1120f)), -4919i, Struct_1(362f, -1i, 67975u, vec4<f32>(425f, -2092f, -1000f, -1765f))), -11347i, -1216f, Struct_1(476f, 1i, 36635u, vec4<f32>(-2734f, 1170f, -1537f, -686f)), vec2<f32>(775f, -136f)), Struct_3(Struct_2(Struct_1(1145f, -1i, 4993u, vec4<f32>(-610f, 749f, 770f, -1640f)), vec2<i32>(60297i, -1i), Struct_1(-1395f, i32(-2147483648), 85390u, vec4<f32>(202f, -669f, -779f, -337f)), -8998i, Struct_1(-140f, -63066i, 0u, vec4<f32>(-372f, 732f, 1036f, -237f))), -63467i, 795f, Struct_1(676f, -9098i, 0u, vec4<f32>(-660f, -2875f, 770f, 1244f)), vec2<f32>(-986f, -261f)), Struct_3(Struct_2(Struct_1(-842f, 15733i, 37083u, vec4<f32>(1025f, -148f, -1173f, -438f)), vec2<i32>(-20449i, -21082i), Struct_1(-1986f, -28884i, 4294967295u, vec4<f32>(743f, -491f, 2280f, 198f)), 1i, Struct_1(-961f, -25583i, 7222u, vec4<f32>(-292f, -813f, -2236f, 1000f))), 1i, 314f, Struct_1(-855f, -1i, 0u, vec4<f32>(-345f, 280f, 559f, 249f)), vec2<f32>(1000f, 1529f)), Struct_3(Struct_2(Struct_1(1550f, -18065i, 1u, vec4<f32>(270f, 178f, -807f, 1079f)), vec2<i32>(-1i, -41970i), Struct_1(1623f, 1i, 91159u, vec4<f32>(-745f, 273f, -1000f, -313f)), 6043i, Struct_1(1000f, 17730i, 4294967295u, vec4<f32>(-218f, -1000f, -709f, 1123f))), -6661i, 1000f, Struct_1(-867f, 0i, 5754u, vec4<f32>(173f, -498f, 330f, 334f)), vec2<f32>(-1865f, 1758f)), Struct_3(Struct_2(Struct_1(-1000f, 0i, 1u, vec4<f32>(1494f, -581f, 1000f, 245f)), vec2<i32>(30957i, 79078i), Struct_1(-1745f, 1i, 0u, vec4<f32>(-1374f, 1670f, 475f, 263f)), -17400i, Struct_1(1092f, -73135i, 44442u, vec4<f32>(-986f, -1250f, -525f, -913f))), -38882i, 651f, Struct_1(669f, 31848i, 108469u, vec4<f32>(-439f, 507f, 1000f, -654f)), vec2<f32>(293f, -1000f)), Struct_3(Struct_2(Struct_1(-1479f, 30121i, 0u, vec4<f32>(-782f, -328f, 1494f, 279f)), vec2<i32>(i32(-2147483648), -33339i), Struct_1(1000f, i32(-2147483648), 17886u, vec4<f32>(-533f, 149f, 1000f, 822f)), 1i, Struct_1(1119f, -22141i, 47310u, vec4<f32>(-1000f, 667f, 473f, 214f))), 1i, 545f, Struct_1(1103f, i32(-2147483648), 28899u, vec4<f32>(1000f, -581f, 1000f, 695f)), vec2<f32>(116f, 481f)), Struct_3(Struct_2(Struct_1(-438f, i32(-2147483648), 28796u, vec4<f32>(-380f, -1533f, -457f, -181f)), vec2<i32>(-20232i, -25146i), Struct_1(-1093f, -2974i, 1u, vec4<f32>(1159f, 488f, -1833f, 376f)), 37430i, Struct_1(-1000f, -43413i, 4294967295u, vec4<f32>(895f, 616f, -1000f, 528f))), 13360i, -336f, Struct_1(2048f, -25652i, 1u, vec4<f32>(919f, 103f, 283f, -1888f)), vec2<f32>(596f, -2413f)), Struct_3(Struct_2(Struct_1(-904f, 36527i, 23655u, vec4<f32>(1250f, -704f, -654f, 1310f)), vec2<i32>(-4922i, 32289i), Struct_1(692f, 0i, 4492u, vec4<f32>(-267f, -349f, -395f, -1000f)), 44412i, Struct_1(1000f, 28251i, 16550u, vec4<f32>(1573f, 1570f, -855f, 564f))), -14956i, 503f, Struct_1(-966f, 24551i, 0u, vec4<f32>(226f, -1000f, -371f, -386f)), vec2<f32>(-1269f, 1578f)), Struct_3(Struct_2(Struct_1(-798f, 0i, 53918u, vec4<f32>(-1709f, -242f, 128f, 1512f)), vec2<i32>(1i, 1i), Struct_1(295f, 0i, 1u, vec4<f32>(1158f, -320f, -685f, 398f)), 30044i, Struct_1(852f, -3856i, 10277u, vec4<f32>(1286f, -714f, 1173f, 278f))), 77211i, 1219f, Struct_1(-480f, 36913i, 4294967295u, vec4<f32>(-858f, -123f, 1090f, -2983f)), vec2<f32>(-261f, -525f)), Struct_3(Struct_2(Struct_1(-704f, 2147483647i, 21246u, vec4<f32>(-762f, 1124f, 419f, -194f)), vec2<i32>(2147483647i, 0i), Struct_1(-763f, -1i, 4294967295u, vec4<f32>(997f, -1000f, -1447f, -954f)), -13832i, Struct_1(-1800f, 2147483647i, 0u, vec4<f32>(468f, -1000f, 1000f, 264f))), -1i, 1157f, Struct_1(1441f, -9736i, 1u, vec4<f32>(-1142f, -1667f, 1823f, -1137f)), vec2<f32>(2146f, 1374f)), Struct_3(Struct_2(Struct_1(2903f, -1i, 1u, vec4<f32>(453f, 515f, 1987f, 513f)), vec2<i32>(0i, -19434i), Struct_1(1380f, -47644i, 74658u, vec4<f32>(1219f, -1449f, -1513f, -782f)), 2147483647i, Struct_1(437f, i32(-2147483648), 35998u, vec4<f32>(-178f, 832f, 134f, -1276f))), -1i, 1655f, Struct_1(242f, 3574i, 3702u, vec4<f32>(-1000f, 780f, 1681f, 1751f)), vec2<f32>(216f, 876f)), Struct_3(Struct_2(Struct_1(-1421f, -22647i, 10885u, vec4<f32>(188f, 651f, 581f, -630f)), vec2<i32>(-50150i, -57982i), Struct_1(1629f, -32681i, 1u, vec4<f32>(-230f, 108f, 970f, 102f)), 1i, Struct_1(1000f, 17358i, 4294967295u, vec4<f32>(1000f, 1026f, -1201f, -1092f))), i32(-2147483648), 139f, Struct_1(-265f, -44066i, 60478u, vec4<f32>(319f, -805f, 383f, 152f)), vec2<f32>(1286f, -536f)), Struct_3(Struct_2(Struct_1(-1115f, 0i, 0u, vec4<f32>(654f, -919f, 2994f, 1034f)), vec2<i32>(i32(-2147483648), -6874i), Struct_1(-600f, 1i, 1u, vec4<f32>(1290f, -1328f, -865f, -1000f)), 34899i, Struct_1(-148f, 2147483647i, 1u, vec4<f32>(1383f, 818f, -499f, 1428f))), -15891i, 746f, Struct_1(-388f, 2133i, 0u, vec4<f32>(-641f, -957f, 1083f, 1999f)), vec2<f32>(845f, -250f)), Struct_3(Struct_2(Struct_1(-717f, i32(-2147483648), 68102u, vec4<f32>(-1000f, 585f, -1000f, 1659f)), vec2<i32>(i32(-2147483648), 8998i), Struct_1(-1000f, i32(-2147483648), 1u, vec4<f32>(-2623f, -1100f, 133f, -2352f)), 38704i, Struct_1(-1688f, -36805i, 0u, vec4<f32>(-1909f, 796f, 333f, 815f))), 0i, 1975f, Struct_1(-1000f, -39444i, 96021u, vec4<f32>(-1375f, 1000f, 377f, -1066f)), vec2<f32>(-900f, 1022f)), Struct_3(Struct_2(Struct_1(-835f, 15614i, 7859u, vec4<f32>(1275f, -910f, -1324f, -1508f)), vec2<i32>(-1i, 2147483647i), Struct_1(479f, 2147483647i, 85748u, vec4<f32>(-1363f, 981f, -1409f, 729f)), -6334i, Struct_1(314f, i32(-2147483648), 1u, vec4<f32>(-135f, -857f, -697f, 484f))), 1i, 1066f, Struct_1(-248f, 13244i, 43666u, vec4<f32>(400f, 1373f, -1246f, 168f)), vec2<f32>(489f, 808f)), Struct_3(Struct_2(Struct_1(1953f, 54916i, 0u, vec4<f32>(-879f, 175f, -298f, 2425f)), vec2<i32>(-18514i, 23383i), Struct_1(-911f, 5628i, 4294967295u, vec4<f32>(601f, 1000f, 835f, 968f)), -1i, Struct_1(1014f, 16596i, 66301u, vec4<f32>(-199f, -1000f, -191f, -552f))), 0i, 1041f, Struct_1(1667f, 1i, 48945u, vec4<f32>(1063f, -1110f, 284f, 655f)), vec2<f32>(-504f, 924f)));

var<private> global3: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-804f, 2359f, -800f, -1209f), vec4<f32>(358f, -1189f, -436f, 408f), vec4<f32>(-1152f, -1003f, -756f, -1000f), vec4<f32>(282f, -369f, -1055f, -636f), vec4<f32>(-528f, -1704f, 259f, -762f), vec4<f32>(-521f, 1000f, 518f, -433f), vec4<f32>(-1698f, -1449f, 1105f, 1903f));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<f32> {
    global3 = array<vec4<f32>, 7>();
    let var_0 = false;
    var var_1 = var_0;
    global0 = array<Struct_2, 16>();
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1031f, -388f), _wgslsmith_f_op_f32(f32(-1f) * -1675f))) + _wgslsmith_f_op_f32(f32(-1f) * -1267f))), arg_0));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_u32(25147u, _wgslsmith_add_u32(u_input.a.x, 24739u | _wgslsmith_mult_u32(arg_0.d.c, u_input.a.x)), 0u) | firstLeadingBit(~1u);
    var var_1 = arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.a));
    var_1 = arg_0.a.e;
    global2 = array<Struct_3, 19>();
    return vec4<f32>(arg_1.c.a, arg_1.a.a, -987f, -637f);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_1(-1063f, 66611i, 43365u, arg_0.d.d);
    global2 = array<Struct_3, 19>();
    global3 = array<vec4<f32>, 7>();
    var var_1 = arg_0.d;
    var var_2 = Struct_1(_wgslsmith_div_f32(1193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f * var_0.a) - -1997f)), var_0.b, ~u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(var_1.c, 19u)], Struct_2(Struct_1(arg_1.x, arg_0.d.b, 1u, vec4<f32>(-174f, 1191f, -2169f, -2855f)), arg_0.a.b, arg_0.d, arg_0.d.b, Struct_1(2254f, 52672i, 40769u, vec4<f32>(1479f, var_0.a, 730f, arg_1.x)))))) - _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(abs(arg_0.a.c.c), 7u)])));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 2060f)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b, arg_0.d.b), arg_0.a.b), arg_0.a.b), var_0.c, _wgslsmith_f_op_vec4_f32(ceil(var_1.d))), arg_0.a.b, var_0, ~max(~1i, 0i), arg_0.a.a), reverseBits(reverseBits(-var_0.b)) ^ var_0.b, 316f, Struct_1(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a)))), u_input.b, arg_0.a.e.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(~0u, 7u)])))), var_2.d.zz);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_1 {
    global1 = ~13089u;
    global3 = array<vec4<f32>, 7>();
    global3 = array<vec4<f32>, 7>();
    var var_0 = arg_1.a;
    global1 = select(min(u_input.c, var_0.e.c | 8933u), 892u, true);
    return Struct_1(-1000f, u_input.d, min(_wgslsmith_dot_vec3_u32(u_input.a.zyx, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_1.d.c), u_input.a.xx), firstTrailingBit(var_0.c.c), firstLeadingBit(2431u))), 4294967295u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-735f + 604f), arg_1.c, 567f, _wgslsmith_f_op_f32(-arg_1.c))), arg_1.d.d)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    global3 = array<vec4<f32>, 7>();
    return StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1081f, -257f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -596f))))), u_input.d, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(122412u, arg_1.c), arg_1.c), firstLeadingBit(arg_0) & _wgslsmith_mult_u32(u_input.a.x, 0u))), 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1231f - -342f);
    var var_1 = false;
    var var_2 = min(u_input.c, reverseBits(49841u));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-595f, var_0)), _wgslsmith_f_op_f32(step(var_0, -217f)), _wgslsmith_f_op_f32(f32(-1f) * -536f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(221f, var_0, -1574f) + vec3<f32>(-586f, 961f, 217f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0, 946f), vec3<f32>(479f, var_0, var_0), false))))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))));
    var_2 = _wgslsmith_dot_vec4_u32(u_input.a << (~_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(13167u, u_input.a.x, 4294967295u, u_input.c)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 28461u, 13790u, abs(~4294967295u)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~u_input.c), 1u), ~u_input.a.yw), func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, var_0), var_3.zy, vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, 321f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.yx), _wgslsmith_f_op_vec2_f32(-var_3.zx), vec2<bool>(true, true))))), func_2(global2[_wgslsmith_index_u32(u_input.c << (min(u_input.c, 21588u) % 32u), 19u)], _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec3_f32(-var_3), Struct_2(Struct_1(var_3.x, u_input.d, 40234u, global3[_wgslsmith_index_u32(1u, 7u)]), vec2<i32>(u_input.d, u_input.b), Struct_1(761f, u_input.d, u_input.c, vec4<f32>(var_0, 150f, -428f, -2410f)), u_input.d, Struct_1(var_0, 0i, 4294967295u, vec4<f32>(-1362f, 868f, 328f, var_0))))))));
}

