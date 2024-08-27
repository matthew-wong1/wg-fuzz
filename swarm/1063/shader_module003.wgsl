struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(784f, 1319f, 1125f), vec3<f32>(-973f, -1000f, -439f), vec3<f32>(-464f, -340f, 1049f), vec3<f32>(-924f, -196f, 891f), vec3<f32>(1000f, -1000f, -482f), vec3<f32>(-1414f, 1860f, -461f), vec3<f32>(-602f, -2060f, 130f), vec3<f32>(-2132f, -326f, 255f), vec3<f32>(-111f, 1000f, -1394f), vec3<f32>(1116f, 1727f, -1391f), vec3<f32>(-370f, -603f, -1000f), vec3<f32>(-191f, 1000f, -217f), vec3<f32>(-216f, -1000f, -866f), vec3<f32>(519f, -607f, 1000f), vec3<f32>(439f, -660f, -889f), vec3<f32>(-1000f, -1970f, -569f), vec3<f32>(1372f, 249f, 1698f), vec3<f32>(1000f, -937f, 403f), vec3<f32>(355f, -2501f, -493f), vec3<f32>(-292f, -366f, -467f), vec3<f32>(-1072f, 1103f, 1190f), vec3<f32>(-3101f, -803f, 1632f), vec3<f32>(630f, 1430f, 2390f), vec3<f32>(-2385f, 302f, -2352f), vec3<f32>(260f, 485f, 588f), vec3<f32>(-264f, -1087f, 877f), vec3<f32>(1301f, 806f, 2526f), vec3<f32>(1257f, 838f, 1199f), vec3<f32>(266f, -1908f, -1266f), vec3<f32>(-2933f, -261f, 3247f), vec3<f32>(-779f, -1401f, -569f), vec3<f32>(547f, 100f, 1227f));

var<private> global1: array<i32, 27> = array<i32, 27>(-1i, -30399i, 2147483647i, 0i, -1i, 1i, 1i, 2147483647i, i32(-2147483648), 11661i, 0i, i32(-2147483648), i32(-2147483648), 27266i, 1046i, i32(-2147483648), i32(-2147483648), -1i, 0i, 2147483647i, -59368i, -1i, -58288i, 0i, 41648i, -1i, -36197i);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<i32>(3393i, i32(-2147483648), 1i), vec4<f32>(-597f, 1000f, -228f, -376f), vec2<bool>(false, true), 1171f), vec3<i32>(-36829i, -36748i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 2992i, 0i), vec4<f32>(1000f, -489f, 1217f, 194f), vec2<bool>(true, false), 888f)), Struct_2(Struct_1(vec3<i32>(-2395i, 32686i, 2147483647i), vec4<f32>(1000f, 1391f, 123f, 1526f), vec2<bool>(true, false), 187f), vec3<i32>(-17739i, -7614i, i32(-2147483648)), Struct_1(vec3<i32>(-76230i, -19362i, i32(-2147483648)), vec4<f32>(570f, 258f, 243f, -1342f), vec2<bool>(true, false), -612f)), Struct_2(Struct_1(vec3<i32>(4453i, 2147483647i, -85386i), vec4<f32>(-1269f, -236f, 839f, 1002f), vec2<bool>(false, false), 109f), vec3<i32>(0i, -1i, 2147483647i), Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<f32>(-1000f, -900f, -896f, -1420f), vec2<bool>(true, true), 389f)), Struct_2(Struct_1(vec3<i32>(0i, 28851i, -46201i), vec4<f32>(1034f, -1012f, 1178f, 1753f), vec2<bool>(false, false), -1179f), vec3<i32>(-25688i, i32(-2147483648), 1i), Struct_1(vec3<i32>(-1i, 7722i, i32(-2147483648)), vec4<f32>(898f, 705f, 127f, -2672f), vec2<bool>(false, true), -996f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 7786i, -1i), vec4<f32>(1000f, 185f, 1000f, 893f), vec2<bool>(true, true), -248f), vec3<i32>(21902i, 2147483647i, -27300i), Struct_1(vec3<i32>(0i, 36024i, -9623i), vec4<f32>(832f, 2377f, -470f, 1000f), vec2<bool>(true, true), -1460f)), Struct_2(Struct_1(vec3<i32>(51001i, -1i, 53284i), vec4<f32>(-447f, 333f, -597f, 1000f), vec2<bool>(true, false), 2044f), vec3<i32>(-12613i, -1i, 0i), Struct_1(vec3<i32>(-1i, 0i, -26517i), vec4<f32>(-736f, 186f, -1000f, -545f), vec2<bool>(true, false), -308f)), Struct_2(Struct_1(vec3<i32>(-83349i, i32(-2147483648), 2147483647i), vec4<f32>(849f, 377f, 206f, -1744f), vec2<bool>(true, true), -770f), vec3<i32>(-615i, -1542i, 18641i), Struct_1(vec3<i32>(-13365i, -3131i, -4403i), vec4<f32>(-858f, 1037f, -934f, 283f), vec2<bool>(true, true), -727f)), Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -28459i), vec4<f32>(1000f, 1245f, 396f, -622f), vec2<bool>(false, true), -120f), vec3<i32>(2147483647i, 24265i, 32112i), Struct_1(vec3<i32>(0i, 0i, 2515i), vec4<f32>(665f, -1532f, -765f, -232f), vec2<bool>(true, false), 799f)), Struct_2(Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<f32>(338f, 1000f, -421f, 338f), vec2<bool>(false, false), 1083f), vec3<i32>(0i, 0i, 61280i), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), vec4<f32>(1000f, 1868f, -728f, -195f), vec2<bool>(true, true), -524f)), Struct_2(Struct_1(vec3<i32>(1i, -8278i, -7639i), vec4<f32>(-1291f, 1000f, 671f, -510f), vec2<bool>(false, true), 743f), vec3<i32>(0i, 1i, -1i), Struct_1(vec3<i32>(28202i, i32(-2147483648), -3925i), vec4<f32>(-1000f, 121f, -1000f, 739f), vec2<bool>(true, true), 980f)), Struct_2(Struct_1(vec3<i32>(55436i, 0i, 1i), vec4<f32>(1228f, 1195f, 309f, 1000f), vec2<bool>(true, true), -268f), vec3<i32>(-1i, -34829i, 7912i), Struct_1(vec3<i32>(18358i, -15509i, 24197i), vec4<f32>(222f, -563f, 652f, -393f), vec2<bool>(true, false), -774f)), Struct_2(Struct_1(vec3<i32>(2147483647i, -14649i, 0i), vec4<f32>(363f, -1139f, 634f, -785f), vec2<bool>(false, false), -604f), vec3<i32>(27719i, 29788i, -15990i), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec4<f32>(1000f, -322f, -172f, -899f), vec2<bool>(false, true), 2312f)), Struct_2(Struct_1(vec3<i32>(17227i, 14473i, -3416i), vec4<f32>(-696f, -463f, 815f, 1676f), vec2<bool>(false, true), -142f), vec3<i32>(-14056i, 41989i, 0i), Struct_1(vec3<i32>(71636i, 1i, 0i), vec4<f32>(-141f, 1479f, 392f, -541f), vec2<bool>(true, true), 1689f)), Struct_2(Struct_1(vec3<i32>(-5447i, i32(-2147483648), 17131i), vec4<f32>(-301f, -302f, 228f, -1069f), vec2<bool>(true, true), 3683f), vec3<i32>(1i, -1i, 5504i), Struct_1(vec3<i32>(7178i, 36144i, 7474i), vec4<f32>(1014f, -371f, -943f, 409f), vec2<bool>(false, false), 1673f)), Struct_2(Struct_1(vec3<i32>(34341i, 19219i, -16847i), vec4<f32>(-110f, 2362f, 507f, 1243f), vec2<bool>(true, true), -1000f), vec3<i32>(-59813i, -19193i, -14293i), Struct_1(vec3<i32>(13831i, -1i, i32(-2147483648)), vec4<f32>(-2612f, -305f, 1284f, 448f), vec2<bool>(true, false), 1488f)), Struct_2(Struct_1(vec3<i32>(-27292i, -16226i, -1i), vec4<f32>(-895f, 522f, 536f, 1108f), vec2<bool>(true, false), -1310f), vec3<i32>(i32(-2147483648), i32(-2147483648), 8851i), Struct_1(vec3<i32>(-1i, 1i, -51411i), vec4<f32>(906f, 1274f, 160f, 832f), vec2<bool>(true, true), 324f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -14508i, i32(-2147483648)), vec4<f32>(512f, 1344f, 1478f, -579f), vec2<bool>(false, false), 1000f), vec3<i32>(1i, -16176i, 2147483647i), Struct_1(vec3<i32>(6949i, 1i, -1i), vec4<f32>(-1216f, 373f, -291f, -998f), vec2<bool>(false, true), -329f)), Struct_2(Struct_1(vec3<i32>(387i, 0i, 26851i), vec4<f32>(1262f, 133f, -444f, 301f), vec2<bool>(true, true), -1000f), vec3<i32>(i32(-2147483648), 20130i, 47500i), Struct_1(vec3<i32>(29046i, -1i, 2147483647i), vec4<f32>(558f, -746f, -110f, 316f), vec2<bool>(true, false), 746f)), Struct_2(Struct_1(vec3<i32>(-36685i, -1i, i32(-2147483648)), vec4<f32>(129f, 150f, -575f, -1000f), vec2<bool>(true, false), 1000f), vec3<i32>(42649i, 1i, i32(-2147483648)), Struct_1(vec3<i32>(10987i, 2147483647i, -16479i), vec4<f32>(293f, 177f, -2532f, 295f), vec2<bool>(false, false), 657f)), Struct_2(Struct_1(vec3<i32>(15078i, -1i, 7253i), vec4<f32>(-1000f, 318f, 136f, 522f), vec2<bool>(false, true), 1000f), vec3<i32>(-43302i, -35196i, -33170i), Struct_1(vec3<i32>(11679i, 1i, 53844i), vec4<f32>(175f, 351f, 134f, 836f), vec2<bool>(false, false), -108f)), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 0i), vec4<f32>(1831f, 1000f, -590f, -216f), vec2<bool>(false, false), 1080f), vec3<i32>(2147483647i, 2147483647i, 2147483647i), Struct_1(vec3<i32>(875i, i32(-2147483648), 2147483647i), vec4<f32>(-1070f, 401f, -1367f, -1505f), vec2<bool>(false, true), 804f)), Struct_2(Struct_1(vec3<i32>(-56899i, 0i, -1i), vec4<f32>(-113f, -1234f, -1331f, -108f), vec2<bool>(false, true), -490f), vec3<i32>(-1i, 0i, -82838i), Struct_1(vec3<i32>(-25896i, 1i, -45573i), vec4<f32>(-121f, 1000f, 2034f, 1133f), vec2<bool>(true, true), 163f)), Struct_2(Struct_1(vec3<i32>(2147483647i, 12894i, -1i), vec4<f32>(1005f, 2472f, 762f, -1094f), vec2<bool>(false, false), 426f), vec3<i32>(0i, 0i, 20564i), Struct_1(vec3<i32>(46018i, -1i, -14749i), vec4<f32>(-381f, -1928f, 677f, -659f), vec2<bool>(true, false), -435f)), Struct_2(Struct_1(vec3<i32>(-3146i, 7980i, 1i), vec4<f32>(-1938f, 960f, -877f, 1275f), vec2<bool>(true, false), 839f), vec3<i32>(30910i, 2147483647i, 0i), Struct_1(vec3<i32>(-25897i, -42761i, -1i), vec4<f32>(-1000f, -766f, -352f, -1395f), vec2<bool>(false, false), 1000f)), Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, 11945i), vec4<f32>(-1501f, 1828f, 2269f, 1526f), vec2<bool>(false, true), -1000f), vec3<i32>(1i, -1i, 1i), Struct_1(vec3<i32>(-1i, 33020i, 1i), vec4<f32>(-1613f, -389f, -345f, 233f), vec2<bool>(false, true), 1215f)), Struct_2(Struct_1(vec3<i32>(-40523i, -51239i, 2147483647i), vec4<f32>(1012f, -810f, -1236f, 682f), vec2<bool>(false, true), -349f), vec3<i32>(-95823i, i32(-2147483648), i32(-2147483648)), Struct_1(vec3<i32>(0i, -19832i, 1i), vec4<f32>(-1008f, 826f, 430f, 1572f), vec2<bool>(true, false), 584f)), Struct_2(Struct_1(vec3<i32>(-29518i, 45510i, -17805i), vec4<f32>(-1000f, -889f, 920f, -1093f), vec2<bool>(false, false), -1000f), vec3<i32>(1i, 1i, 7931i), Struct_1(vec3<i32>(i32(-2147483648), -46598i, 1i), vec4<f32>(-470f, -408f, -926f, 221f), vec2<bool>(false, false), -1000f)), Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 31983i), vec4<f32>(-181f, 397f, -650f, -1000f), vec2<bool>(true, false), 769f), vec3<i32>(2147483647i, 0i, 22264i), Struct_1(vec3<i32>(-40445i, 2147483647i, 44671i), vec4<f32>(-743f, -1245f, 113f, 421f), vec2<bool>(true, false), -179f)), Struct_2(Struct_1(vec3<i32>(17975i, i32(-2147483648), -1i), vec4<f32>(-452f, -605f, 461f, -724f), vec2<bool>(true, false), -609f), vec3<i32>(-1i, i32(-2147483648), -1i), Struct_1(vec3<i32>(1i, -11497i, 1i), vec4<f32>(1000f, 475f, -243f, 918f), vec2<bool>(false, false), 993f)), Struct_2(Struct_1(vec3<i32>(2147483647i, -38251i, 7510i), vec4<f32>(-1016f, 1621f, -1542f, -502f), vec2<bool>(true, false), -1587f), vec3<i32>(2147483647i, -64779i, -1i), Struct_1(vec3<i32>(-49914i, -1i, 12421i), vec4<f32>(-345f, -1266f, -1568f, -568f), vec2<bool>(true, true), 1162f)));

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_5, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    global4 = array<Struct_5, 27>();
    var var_0 = (global1[_wgslsmith_index_u32(global3.x, 27u)] ^ ~global1[_wgslsmith_index_u32(arg_1, 27u)]) >= (64173i >> (~4294967295u % 32u));
    var_0 = false;
    let var_1 = Struct_3(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -1963f)) - _wgslsmith_f_op_f32(f32(-1f) * -1368f)))), -634f), vec3<i32>(u_input.a.x, -12091i, reverseBits(u_input.a.x)), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(46897u, 32u)], _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-264f + arg_0), -1267f, 1000f)))), Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(-arg_0)), -243f, _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1042f - arg_0) * arg_2.x)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true))), -364f));
    global1 = array<i32, 27>();
    return _wgslsmith_add_u32(~max(_wgslsmith_add_u32(1u, reverseBits(14243u)), ~1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 13031u, 4294967295u), vec3<u32>(arg_1, global3.x, 98198u >> (arg_1 % 32u))), 27115u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_5(arg_1.d.d.c, 1u);
    global2 = array<Struct_2, 30>();
    var var_1 = Struct_1(arg_1.b.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d.d.b), _wgslsmith_f_op_vec4_f32(-arg_1.b.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, arg_1.d.d.d, 146f, arg_0.b.x), arg_2.b)) + vec4<f32>(arg_0.b.x, arg_1.d.c.x, arg_2.d, 1555f))))), arg_1.c.xz, -803f);
    global1 = array<i32, 27>();
    var var_2 = vec4<u32>(~(func_2(_wgslsmith_div_f32(-965f, arg_2.d), func_2(1831f, 0u, arg_2.b.zwx), _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(79545u, 32u)]))) & global3.x), 5834u, _wgslsmith_div_u32(firstLeadingBit(var_0.b), select(59336u, _wgslsmith_mult_u32(global3.x, _wgslsmith_mod_u32(global3.x, global3.x)), any(arg_1.c.wxx))), 43500u);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~global3.x, 77073u), _wgslsmith_mult_u32(countOneBits(var_2.x), 57485u), abs(~global3.x)), vec3<u32>(~0u | var_0.b, var_0.b, _wgslsmith_dot_vec3_u32(~var_2.zyx, vec3<u32>(var_0.b, var_0.b, var_0.b)))) ^ global3.x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> vec3<u32> {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(max(firstTrailingBit(48227u), _wgslsmith_mod_u32(32469u, global3.x) ^ func_2(arg_1, 4294967295u, global0[_wgslsmith_index_u32(19652u, 32u)])), 1u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 26273u, global3.x, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 38377u))), firstTrailingBit(func_3(Struct_1(vec3<i32>(33354i, global1[_wgslsmith_index_u32(28469u, 27u)], arg_0) | u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -102f, -1209f)), arg_2.xy, _wgslsmith_f_op_f32(f32(-1f) * -1638f)), Struct_4(vec3<f32>(-1871f, arg_1, arg_1), Struct_3(global0[_wgslsmith_index_u32(1u, 32u)], u_input.a, vec3<f32>(1140f, arg_1, 958f), Struct_1(u_input.a, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(arg_2.x, false), 185f)), arg_2, Struct_3(global0[_wgslsmith_index_u32(global3.x, 32u)], u_input.a, vec3<f32>(341f, 1495f, arg_1), Struct_1(vec3<i32>(-49073i, 17433i, 1i), vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec2<bool>(arg_2.x, true), -138f))), Struct_1(vec3<i32>(u_input.a.x, 0i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -412f, 384f, arg_1)), select(arg_2.wz, arg_2.xz, vec2<bool>(arg_2.x, arg_2.x)), -1000f))), global3.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a), vec3<i32>(-30073i, firstTrailingBit(18379i), _wgslsmith_sub_i32(12884i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1783f, -942f, _wgslsmith_f_op_f32(arg_1 * arg_1))), arg_2.yy, _wgslsmith_f_op_f32(f32(-1f) * -245f)), _wgslsmith_sub_vec3_i32(countOneBits(abs(~u_input.a)), vec3<i32>(reverseBits(~arg_3), abs(5896i), ~(-1i))), Struct_1(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(~var_0.x, 27u)], 0i, min(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), -492f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(-394f))))), !(!select(vec2<bool>(true, arg_2.x), vec2<bool>(true, false), true)), arg_1));
    var var_2 = min(reverseBits(vec2<i32>(~18371i, countOneBits(-20667i))), var_1.b.zy) & var_1.b.xy;
    let var_3 = Struct_5(!var_1.c.c, var_0.x);
    let var_4 = vec2<bool>(!(!arg_2.x & true), true);
    return _wgslsmith_mod_vec3_u32(~(vec3<u32>(var_3.b, var_0.x, var_0.x) & abs(vec3<u32>(global3.x, 44706u, 47009u))), vec3<u32>(abs(global3.x), 4294967295u, ~var_3.b) & var_0) & ~(~(min(vec3<u32>(69170u, 14286u, 1u), var_0) << (~vec3<u32>(1477u, global3.x, var_0.x) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(global3.x, 32u)], Struct_3(_wgslsmith_f_op_vec3_f32(trunc(arg_1.d.b.yzx)), -u_input.a, _wgslsmith_f_op_vec3_f32(-arg_0.a.b.xww), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(39626u, 27u)], -1i, 2147483647i), vec3<i32>(-2147483647i, -2315i, arg_0.b.x), vec3<i32>(22996i, arg_0.c.a.x, u_input.a.x)), select(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.d.a.x), vec3<i32>(u_input.a.x, -41784i, 41477i), false)), vec4<f32>(_wgslsmith_f_op_f32(-242f * arg_0.a.b.x), -436f, arg_0.c.b.x, _wgslsmith_f_op_f32(-arg_1.c.x)), vec2<bool>(arg_1.d.c.x != false, global3.x != 0u), _wgslsmith_div_f32(arg_1.a.x, arg_0.a.d))), vec4<bool>(true, ~(-2147483647i) != ~u_input.a.x, all(select(select(vec4<bool>(true, arg_1.d.c.x, true, false), vec4<bool>(false, false, arg_0.c.c.x, false), vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, false, false)), !vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, false, arg_0.a.c.x), true)), arg_0.c.c.x), arg_1);
    var var_1 = Struct_1(u_input.a | u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c.b + _wgslsmith_f_op_vec4_f32(arg_0.a.b + var_0.b.d.b))) * arg_0.c.b), !arg_1.d.c, _wgslsmith_f_op_f32(f32(-1f) * -1178f));
    var var_2 = Struct_4(var_1.b.zwy, Struct_3(global0[_wgslsmith_index_u32(~global3.x, 32u)], min(_wgslsmith_add_vec3_i32(var_1.a, vec3<i32>(global1[_wgslsmith_index_u32(global3.x, 27u)], 1i, -41532i)), vec3<i32>(arg_0.c.a.x, u_input.a.x, 0i)) ^ arg_1.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1266f, _wgslsmith_f_op_f32(max(var_1.b.x, arg_1.c.x)), _wgslsmith_f_op_f32(var_0.b.d.b.x + arg_1.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.b.xzw)))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-546f, -2382f, 164f, 2745f)), select(select(var_1.c, vec2<bool>(false, true), arg_0.c.c), !arg_1.d.c, true), -486f)), select(var_0.c, select(vec4<bool>(false, true, true, all(vec3<bool>(arg_0.a.c.x, false, arg_0.a.c.x))), !select(vec4<bool>(true, true, var_1.c.x, var_1.c.x), var_0.c, var_0.c), var_0.c), var_0.c), arg_1);
    var_1 = var_2.d.d;
    var var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(arg_0.c.a.yy >> (~global3.xx % vec2<u32>(32u)), ~vec2<i32>(var_0.d.d.a.x, _wgslsmith_sub_i32(1i, u_input.a.x))));
    return StorageBuffer(global3.zz, -(~1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32((vec3<u32>(4273u, 27664u, 1u) | vec3<u32>(40172u, global3.x, 29277u)) >> (func_1(-1i, -381f, vec4<bool>(true, false, false, true), 11834i) % vec3<u32>(32u)), vec3<u32>(~global3.x, global3.x, 0u)), 30u)], Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(177f + 162f), _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(max(-2542f, -287f)))), vec3<i32>(-4957i, u_input.a.x, 0i), vec3<f32>(1000f, 1062f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) - _wgslsmith_f_op_f32(min(503f, 503f)))), Struct_1(vec3<i32>(-1i, 0i, u_input.a.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 538f, -741f, -1375f) + vec4<f32>(1033f, 467f, -510f, 524f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-959f, 465f, 880f, -1105f)), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -139f)));
}

