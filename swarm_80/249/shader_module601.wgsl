struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec3<bool>(true, true, true), -1502f, vec4<bool>(true, true, false, true), -203f), Struct_1(vec3<bool>(true, true, false), -313f, vec4<bool>(false, false, true, false), 597f), vec3<i32>(2147483647i, -35453i, 2147483647i), false, Struct_1(vec3<bool>(false, true, false), 587f, vec4<bool>(false, false, false, false), 661f)), Struct_2(Struct_1(vec3<bool>(false, false, false), -321f, vec4<bool>(false, true, false, false), 298f), Struct_1(vec3<bool>(false, true, true), 555f, vec4<bool>(true, true, true, false), 367f), vec3<i32>(i32(-2147483648), -44722i, 8733i), true, Struct_1(vec3<bool>(true, true, true), -129f, vec4<bool>(true, true, false, true), 719f)), Struct_2(Struct_1(vec3<bool>(false, true, true), 452f, vec4<bool>(false, false, true, false), -1060f), Struct_1(vec3<bool>(false, false, false), -1071f, vec4<bool>(false, false, true, true), 1453f), vec3<i32>(11509i, 24916i, 2147483647i), true, Struct_1(vec3<bool>(false, false, false), 710f, vec4<bool>(true, true, false, true), -1208f)), Struct_2(Struct_1(vec3<bool>(true, true, false), 741f, vec4<bool>(true, false, false, true), -1726f), Struct_1(vec3<bool>(false, false, false), 218f, vec4<bool>(false, true, false, true), 1000f), vec3<i32>(-1i, -11954i, 0i), true, Struct_1(vec3<bool>(true, false, true), -716f, vec4<bool>(true, false, false, true), -1000f)), Struct_2(Struct_1(vec3<bool>(false, true, true), -1000f, vec4<bool>(true, false, false, true), 1857f), Struct_1(vec3<bool>(false, false, true), 244f, vec4<bool>(false, false, false, true), -1000f), vec3<i32>(2147483647i, 16411i, 1i), true, Struct_1(vec3<bool>(false, true, true), 1143f, vec4<bool>(true, true, true, false), 389f)), Struct_2(Struct_1(vec3<bool>(false, false, true), 418f, vec4<bool>(false, true, false, true), -1477f), Struct_1(vec3<bool>(false, true, false), 191f, vec4<bool>(true, true, false, true), -951f), vec3<i32>(20163i, 0i, 1i), false, Struct_1(vec3<bool>(true, false, true), 725f, vec4<bool>(false, true, true, true), -1249f)), Struct_2(Struct_1(vec3<bool>(false, false, false), -1220f, vec4<bool>(true, true, true, true), 387f), Struct_1(vec3<bool>(true, true, true), 517f, vec4<bool>(false, true, false, true), 1856f), vec3<i32>(0i, -34406i, i32(-2147483648)), true, Struct_1(vec3<bool>(false, false, true), 1515f, vec4<bool>(false, true, true, false), 815f)), Struct_2(Struct_1(vec3<bool>(false, false, false), 1001f, vec4<bool>(false, false, false, false), 535f), Struct_1(vec3<bool>(true, false, true), 560f, vec4<bool>(true, true, true, false), 684f), vec3<i32>(-35534i, 2147483647i, -1i), false, Struct_1(vec3<bool>(true, true, true), -616f, vec4<bool>(true, false, false, true), 491f)), Struct_2(Struct_1(vec3<bool>(false, false, false), 959f, vec4<bool>(false, false, false, true), 1000f), Struct_1(vec3<bool>(true, true, true), -641f, vec4<bool>(true, true, false, false), -590f), vec3<i32>(38155i, 22224i, -35087i), true, Struct_1(vec3<bool>(false, false, false), 1051f, vec4<bool>(false, true, false, false), -1223f)), Struct_2(Struct_1(vec3<bool>(false, true, true), 115f, vec4<bool>(false, false, true, true), -111f), Struct_1(vec3<bool>(true, false, true), -576f, vec4<bool>(true, false, false, false), -737f), vec3<i32>(i32(-2147483648), -1i, 0i), false, Struct_1(vec3<bool>(false, true, false), 1045f, vec4<bool>(true, true, true, true), -148f)), Struct_2(Struct_1(vec3<bool>(false, false, true), -804f, vec4<bool>(true, true, false, false), -254f), Struct_1(vec3<bool>(true, false, false), 605f, vec4<bool>(true, true, false, true), 212f), vec3<i32>(46265i, i32(-2147483648), -1i), false, Struct_1(vec3<bool>(false, false, false), 1919f, vec4<bool>(false, false, true, true), -232f)), Struct_2(Struct_1(vec3<bool>(true, true, true), 374f, vec4<bool>(false, true, true, false), 1690f), Struct_1(vec3<bool>(false, false, true), -280f, vec4<bool>(true, true, false, false), 923f), vec3<i32>(55653i, 49105i, 33599i), true, Struct_1(vec3<bool>(true, true, true), -1161f, vec4<bool>(true, false, false, true), -1491f)), Struct_2(Struct_1(vec3<bool>(true, false, false), 122f, vec4<bool>(true, false, true, false), -1214f), Struct_1(vec3<bool>(false, true, true), -1018f, vec4<bool>(true, true, false, false), 162f), vec3<i32>(0i, -50944i, 26831i), true, Struct_1(vec3<bool>(false, false, true), 143f, vec4<bool>(true, true, true, true), -1467f)), Struct_2(Struct_1(vec3<bool>(false, true, false), 917f, vec4<bool>(true, false, false, true), 1000f), Struct_1(vec3<bool>(true, true, true), 2324f, vec4<bool>(true, false, false, false), -378f), vec3<i32>(-7561i, 41888i, -51972i), true, Struct_1(vec3<bool>(false, true, false), -653f, vec4<bool>(false, false, false, true), 416f)), Struct_2(Struct_1(vec3<bool>(false, false, true), -414f, vec4<bool>(false, true, true, true), -563f), Struct_1(vec3<bool>(true, true, false), -1067f, vec4<bool>(false, false, true, false), -746f), vec3<i32>(i32(-2147483648), -42918i, -65928i), true, Struct_1(vec3<bool>(true, false, false), -437f, vec4<bool>(true, false, true, true), -1321f)), Struct_2(Struct_1(vec3<bool>(true, true, false), -1388f, vec4<bool>(false, false, false, false), 730f), Struct_1(vec3<bool>(true, true, true), -2118f, vec4<bool>(false, false, true, false), 493f), vec3<i32>(-64982i, 0i, 2147483647i), false, Struct_1(vec3<bool>(false, true, true), -138f, vec4<bool>(false, true, true, true), -1156f)), Struct_2(Struct_1(vec3<bool>(true, true, false), 839f, vec4<bool>(false, false, true, false), 399f), Struct_1(vec3<bool>(false, true, true), 2258f, vec4<bool>(true, true, false, false), -247f), vec3<i32>(-1i, -43749i, 36507i), true, Struct_1(vec3<bool>(true, true, true), 778f, vec4<bool>(true, true, true, false), -1219f)), Struct_2(Struct_1(vec3<bool>(true, true, false), -829f, vec4<bool>(false, false, true, true), -205f), Struct_1(vec3<bool>(false, false, false), 283f, vec4<bool>(true, true, true, true), -661f), vec3<i32>(-36417i, i32(-2147483648), -14203i), false, Struct_1(vec3<bool>(false, true, false), 584f, vec4<bool>(true, false, true, true), -986f)), Struct_2(Struct_1(vec3<bool>(false, false, false), 1000f, vec4<bool>(true, false, false, false), 902f), Struct_1(vec3<bool>(false, false, false), 984f, vec4<bool>(true, false, true, false), 905f), vec3<i32>(i32(-2147483648), -10027i, i32(-2147483648)), false, Struct_1(vec3<bool>(true, false, false), -287f, vec4<bool>(true, true, true, false), 1295f)), Struct_2(Struct_1(vec3<bool>(false, true, true), 808f, vec4<bool>(false, true, true, false), -701f), Struct_1(vec3<bool>(false, true, false), 1000f, vec4<bool>(true, false, false, true), 1421f), vec3<i32>(2147483647i, 0i, i32(-2147483648)), false, Struct_1(vec3<bool>(true, true, true), -194f, vec4<bool>(false, false, true, false), 736f)), Struct_2(Struct_1(vec3<bool>(false, false, false), -136f, vec4<bool>(true, true, true, true), 1147f), Struct_1(vec3<bool>(true, false, true), -125f, vec4<bool>(false, true, true, true), -390f), vec3<i32>(2147483647i, 3333i, -7278i), false, Struct_1(vec3<bool>(false, true, true), 1000f, vec4<bool>(false, true, true, true), 592f)), Struct_2(Struct_1(vec3<bool>(false, false, true), -640f, vec4<bool>(false, false, false, true), 700f), Struct_1(vec3<bool>(true, false, false), -274f, vec4<bool>(false, false, true, false), 2556f), vec3<i32>(i32(-2147483648), 63441i, 2147483647i), false, Struct_1(vec3<bool>(false, false, true), -298f, vec4<bool>(false, true, true, true), 154f)), Struct_2(Struct_1(vec3<bool>(false, true, false), 1000f, vec4<bool>(false, true, true, false), -963f), Struct_1(vec3<bool>(false, true, false), -232f, vec4<bool>(true, true, true, true), 144f), vec3<i32>(2863i, i32(-2147483648), 41463i), false, Struct_1(vec3<bool>(false, true, true), -1340f, vec4<bool>(false, true, true, false), 336f)), Struct_2(Struct_1(vec3<bool>(false, false, true), -613f, vec4<bool>(true, false, false, false), 268f), Struct_1(vec3<bool>(false, true, true), 883f, vec4<bool>(true, true, false, true), -142f), vec3<i32>(1i, -52815i, 23559i), false, Struct_1(vec3<bool>(false, false, false), 509f, vec4<bool>(false, true, true, false), -1000f)), Struct_2(Struct_1(vec3<bool>(false, true, true), -520f, vec4<bool>(false, false, false, false), 227f), Struct_1(vec3<bool>(false, false, false), 1678f, vec4<bool>(false, true, false, false), -969f), vec3<i32>(-18774i, -1i, 1i), true, Struct_1(vec3<bool>(true, true, true), -2325f, vec4<bool>(false, false, true, true), 1296f)), Struct_2(Struct_1(vec3<bool>(true, false, false), -1328f, vec4<bool>(true, true, true, true), -1423f), Struct_1(vec3<bool>(false, false, false), -1355f, vec4<bool>(true, true, true, true), -1270f), vec3<i32>(i32(-2147483648), 2147483647i, 22357i), true, Struct_1(vec3<bool>(false, false, true), 1000f, vec4<bool>(false, true, true, false), -1118f)));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), -2170f, vec4<bool>(true, true, true, false), -1354f), Struct_1(vec3<bool>(false, false, false), 1000f, vec4<bool>(true, true, true, false), -1521f), vec3<i32>(1252i, -6299i, -12315i), false, Struct_1(vec3<bool>(true, false, true), -770f, vec4<bool>(false, false, false, false), 937f)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), 585f, vec4<bool>(true, false, false, false), -1296f), Struct_1(vec3<bool>(false, false, false), 553f, vec4<bool>(true, true, true, false), 152f), vec3<i32>(81155i, -4422i, 2147483647i), true, Struct_1(vec3<bool>(false, true, true), 2130f, vec4<bool>(false, false, false, false), 1000f)), 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 276f, vec4<bool>(true, false, true, false), 1234f), Struct_1(vec3<bool>(false, false, true), -976f, vec4<bool>(true, false, true, true), 1652f), vec3<i32>(30628i, -38924i, 1i), true, Struct_1(vec3<bool>(false, true, true), -1238f, vec4<bool>(true, true, true, true), 1261f)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), -511f, vec4<bool>(true, true, true, true), -770f), Struct_1(vec3<bool>(false, true, true), -587f, vec4<bool>(true, false, false, false), -946f), vec3<i32>(16478i, 0i, -1i), true, Struct_1(vec3<bool>(true, false, true), 1138f, vec4<bool>(true, true, true, false), -729f)), -52682i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false), 751f, vec4<bool>(false, false, true, false), 443f), Struct_1(vec3<bool>(false, false, false), 609f, vec4<bool>(false, true, false, true), -1824f), vec3<i32>(-3232i, -30518i, 0i), false, Struct_1(vec3<bool>(true, false, true), -338f, vec4<bool>(true, false, true, false), 625f)), 25903i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 333f, vec4<bool>(false, false, false, false), 641f), Struct_1(vec3<bool>(true, false, false), -648f, vec4<bool>(false, false, true, true), 364f), vec3<i32>(53555i, 0i, 0i), false, Struct_1(vec3<bool>(false, false, false), -1000f, vec4<bool>(false, true, true, true), -1226f)), -27689i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), -1537f, vec4<bool>(true, false, false, true), 477f), Struct_1(vec3<bool>(false, true, true), -1000f, vec4<bool>(true, true, true, true), 277f), vec3<i32>(i32(-2147483648), 1i, 16577i), false, Struct_1(vec3<bool>(true, true, true), 1045f, vec4<bool>(false, true, false, false), 1732f)), 8481i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false), 1178f, vec4<bool>(true, false, false, true), 121f), Struct_1(vec3<bool>(false, true, true), 1253f, vec4<bool>(true, true, false, true), 217f), vec3<i32>(-1i, 0i, 2147483647i), true, Struct_1(vec3<bool>(false, true, false), -628f, vec4<bool>(true, true, true, true), 153f)), 2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false), 899f, vec4<bool>(true, false, false, true), -757f), Struct_1(vec3<bool>(true, true, false), -1672f, vec4<bool>(true, false, false, false), 427f), vec3<i32>(-1i, 74235i, 2147483647i), false, Struct_1(vec3<bool>(true, false, false), -1103f, vec4<bool>(true, false, false, false), -1503f)), 0i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false), -1284f, vec4<bool>(false, true, true, false), -439f), Struct_1(vec3<bool>(false, true, false), 230f, vec4<bool>(true, true, false, false), 1146f), vec3<i32>(33213i, -23140i, 1i), false, Struct_1(vec3<bool>(false, true, true), -438f, vec4<bool>(false, false, false, true), -704f)), -2641i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true), 2751f, vec4<bool>(true, false, true, true), 579f), Struct_1(vec3<bool>(true, true, true), -575f, vec4<bool>(false, true, true, false), -1560f), vec3<i32>(1i, i32(-2147483648), 16052i), true, Struct_1(vec3<bool>(false, false, false), -218f, vec4<bool>(true, false, false, false), 870f)), 2147483647i), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), 861f, vec4<bool>(true, false, true, true), 802f), Struct_1(vec3<bool>(false, true, false), -290f, vec4<bool>(true, true, false, false), 1061f), vec3<i32>(-15361i, 1i, 0i), true, Struct_1(vec3<bool>(false, true, true), 583f, vec4<bool>(false, false, false, true), 798f)), 35704i), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), 892f, vec4<bool>(true, true, true, false), 1441f), Struct_1(vec3<bool>(true, true, true), -1395f, vec4<bool>(false, false, true, true), -678f), vec3<i32>(16516i, 2147483647i, -5379i), false, Struct_1(vec3<bool>(true, true, true), 590f, vec4<bool>(false, false, false, false), -263f)), 18636i));

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-1014f, -1000f, 798f, -427f), vec4<f32>(-406f, 498f, -1000f, -270f), vec4<f32>(-553f, -1310f, 378f, -398f), vec4<f32>(-110f, -495f, -341f, 104f), vec4<f32>(1203f, -1681f, -1000f, -1083f), vec4<f32>(-1000f, 782f, -1128f, -944f), vec4<f32>(115f, -342f, -336f, -1000f), vec4<f32>(1543f, 1274f, 1000f, -722f), vec4<f32>(-141f, -309f, -231f, 882f), vec4<f32>(-1276f, 2260f, -406f, 759f), vec4<f32>(438f, -572f, -478f, 1201f), vec4<f32>(-292f, -117f, -961f, -1918f), vec4<f32>(914f, 1551f, 500f, 917f), vec4<f32>(327f, 1000f, 109f, -1022f), vec4<f32>(342f, -129f, 1355f, -2290f), vec4<f32>(-490f, 803f, 670f, 1670f), vec4<f32>(1104f, 1023f, -1283f, 220f), vec4<f32>(-1162f, -1000f, -1620f, -2133f), vec4<f32>(-1000f, 331f, 647f, 587f), vec4<f32>(-1000f, 568f, -547f, 1650f), vec4<f32>(426f, -1092f, -271f, -2134f), vec4<f32>(1010f, 1150f, 2065f, -981f), vec4<f32>(428f, 866f, 854f, -1518f), vec4<f32>(-763f, -965f, -1851f, -1166f), vec4<f32>(-1670f, 1251f, -331f, 1052f), vec4<f32>(488f, 554f, 1108f, -825f), vec4<f32>(243f, -806f, 297f, 113f), vec4<f32>(-1799f, 1000f, 746f, -1597f));

var<private> global3: vec4<u32> = vec4<u32>(0u, 0u, 21358u, 117u);

var<private> global4: array<i32, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global1 = array<Struct_3, 13>();
    let var_0 = ~0u;
    global2 = array<vec4<f32>, 28>();
    var var_1 = false;
    let var_2 = arg_1;
    return -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(global4[_wgslsmith_index_u32(var_0, 4u)], global4[_wgslsmith_index_u32(25440u, 4u)]))) ^ global4[_wgslsmith_index_u32(~(~0u), 4u)]);
}

fn func_2() -> i32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(global3.x, 26u)], (~(-3078i) | u_input.b) << (~global3.x % 32u));
    global1 = array<Struct_3, 13>();
    global0 = array<Struct_2, 26>();
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.x, 0u), ~global3.x) >> (u_input.a.x % 32u)), 26u)];
    var var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.c, _wgslsmith_div_vec3_i32(~var_1.c, var_0.a.c)) ^ vec3<i32>(countOneBits(u_input.b << (0u % 32u)), ~(~var_1.c.x), func_3(var_0.a.a, global3.x ^ u_input.a.x)), vec3<i32>(-72611i, var_1.c.x << (1u % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.b)) << (global3.wxz % vec3<u32>(32u)));
    return var_0.a.c.x;
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(32779u, 13u)];
    var var_1 = !var_0.a.a.a.xz;
    var var_2 = ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(~(-9253i), func_2(), 2147483647i, abs(0i))), _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(arg_0.c.x, 23069i, -34698i, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(var_0.a.c.x, arg_0.c.x, -36493i, 48362i)));
    var_0 = Struct_3(arg_0, _wgslsmith_mult_i32(~(-22469i << (u_input.a.x % 32u)), ~arg_0.c.x));
    return -1117f >= arg_0.e.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 28>();
    global2 = array<vec4<f32>, 28>();
    var var_0 = vec3<bool>(any(select(vec3<bool>(true, func_1(Struct_2(Struct_1(vec3<bool>(false, false, true), -227f, vec4<bool>(false, true, true, true), -1000f), Struct_1(vec3<bool>(false, true, true), -1848f, vec4<bool>(false, false, true, false), -1000f), vec3<i32>(-25982i, u_input.b, global4[_wgslsmith_index_u32(u_input.a.x, 4u)]), false, Struct_1(vec3<bool>(true, true, false), 184f, vec4<bool>(false, true, true, false), 774f))), any(vec2<bool>(false, false))), vec3<bool>(all(vec2<bool>(false, true)), 1u >= global3.x, true), vec3<bool>(global3.x >= u_input.a.x, true, true))), !(true || all(vec2<bool>(true, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true), false)));
    let var_1 = global1[_wgslsmith_index_u32(global3.x, 13u)];
    var var_2 = true;
    var var_3 = Struct_2(var_1.a.e, Struct_1(var_1.a.b.c.yzz, var_1.a.b.d, var_1.a.a.c, -1160f), select(vec3<i32>(func_2(), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_1.a.c.x, -5613i, -11017i)), vec3<i32>(-35287i, var_1.b, -60336i)), var_1.b), vec3<i32>(_wgslsmith_add_i32(u_input.b >> (50095u % 32u), func_2()), min(-1i, -2147483647i) & _wgslsmith_mod_i32(var_1.a.c.x, u_input.b), -4402i), !(!var_1.a.d && var_0.x)), true, Struct_1(!(!(!var_1.a.b.a)), 635f, vec4<bool>(func_1(var_1.a), var_1.a.e.b < _wgslsmith_f_op_f32(-1108f - 934f), any(vec2<bool>(true, var_1.a.a.c.x)), all(vec4<bool>(true, false, var_0.x, false))), _wgslsmith_f_op_f32(-var_1.a.e.b)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(vec2<u32>(0u, ~32693u))));
}

