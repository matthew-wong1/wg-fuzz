struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_3,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(0u, 32086u, 1u), vec3<f32>(-409f, -1757f, -1455f), Struct_3(42153u, vec2<f32>(747f, -881f), vec2<u32>(0u, 0u), false), -1i, Struct_2(Struct_1(vec4<f32>(842f, 989f, 1000f, 947f), 4294967295u, vec4<u32>(4294967295u, 1u, 1u, 0u)), 1u, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(-306f, -1000f, 308f, 591f), 4294967295u, vec4<u32>(1u, 5500u, 13911u, 0u))));

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<u32>(4294967295u, 0u, 46346u), vec3<f32>(1480f, -1000f, 149f), Struct_3(0u, vec2<f32>(407f, 1592f), vec2<u32>(17020u, 33667u), true), 2147483647i, Struct_2(Struct_1(vec4<f32>(1000f, 698f, 1050f, 308f), 1u, vec4<u32>(19030u, 4294967295u, 1u, 30202u)), 44895u, vec2<u32>(8135u, 1u), Struct_1(vec4<f32>(1661f, 508f, -163f, 707f), 20232u, vec4<u32>(2671u, 11286u, 27658u, 4294967295u)))), Struct_4(vec3<u32>(0u, 20773u, 4294967295u), vec3<f32>(670f, -1025f, 259f), Struct_3(4294967295u, vec2<f32>(1695f, -332f), vec2<u32>(68194u, 0u), true), 0i, Struct_2(Struct_1(vec4<f32>(-1708f, -250f, 274f, -1006f), 31000u, vec4<u32>(30107u, 4294967295u, 1u, 4790u)), 4294967295u, vec2<u32>(0u, 53535u), Struct_1(vec4<f32>(-1000f, -260f, -1312f, -587f), 4294967295u, vec4<u32>(0u, 4294967295u, 23239u, 2570u)))), Struct_4(vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(1321f, 640f, -705f), Struct_3(86786u, vec2<f32>(-101f, 1000f), vec2<u32>(50996u, 16641u), false), 2147483647i, Struct_2(Struct_1(vec4<f32>(303f, -1053f, -1245f, 2246f), 11652u, vec4<u32>(1u, 78310u, 1u, 0u)), 66285u, vec2<u32>(46395u, 57206u), Struct_1(vec4<f32>(-544f, -828f, -141f, -411f), 1u, vec4<u32>(0u, 0u, 4294967295u, 0u)))), Struct_4(vec3<u32>(40731u, 4294967295u, 0u), vec3<f32>(-958f, -1396f, 554f), Struct_3(0u, vec2<f32>(-2211f, 1481f), vec2<u32>(4294967295u, 19448u), true), -20078i, Struct_2(Struct_1(vec4<f32>(-1218f, 759f, 470f, 1000f), 21447u, vec4<u32>(26396u, 4294967295u, 0u, 39427u)), 4294967295u, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(-1000f, -1409f, -145f, -1180f), 34285u, vec4<u32>(1u, 32386u, 240u, 19598u)))), Struct_4(vec3<u32>(0u, 1u, 1u), vec3<f32>(-1213f, 832f, 827f), Struct_3(38448u, vec2<f32>(-872f, 455f), vec2<u32>(57169u, 28067u), true), -21593i, Struct_2(Struct_1(vec4<f32>(2260f, -1000f, 696f, 1000f), 50268u, vec4<u32>(0u, 4294967295u, 31651u, 27168u)), 4294967295u, vec2<u32>(0u, 100838u), Struct_1(vec4<f32>(531f, -2477f, -696f, -389f), 60203u, vec4<u32>(65706u, 1u, 1u, 1u)))), Struct_4(vec3<u32>(0u, 26039u, 62986u), vec3<f32>(292f, -206f, -420f), Struct_3(71094u, vec2<f32>(451f, 1269f), vec2<u32>(14844u, 62738u), true), 0i, Struct_2(Struct_1(vec4<f32>(568f, 203f, 391f, 577f), 44250u, vec4<u32>(1u, 35438u, 18738u, 28475u)), 4294967295u, vec2<u32>(12069u, 48466u), Struct_1(vec4<f32>(188f, -1010f, 1547f, 1232f), 0u, vec4<u32>(31781u, 1u, 0u, 4294967295u)))), Struct_4(vec3<u32>(0u, 24140u, 34217u), vec3<f32>(811f, -749f, 1234f), Struct_3(0u, vec2<f32>(551f, -925f), vec2<u32>(28379u, 35383u), true), 7018i, Struct_2(Struct_1(vec4<f32>(-172f, 386f, -493f, 1371f), 26537u, vec4<u32>(12604u, 0u, 102192u, 1u)), 193576u, vec2<u32>(4294967295u, 36257u), Struct_1(vec4<f32>(-446f, 1037f, -250f, 1000f), 25618u, vec4<u32>(8146u, 30898u, 1u, 55742u)))), Struct_4(vec3<u32>(0u, 39482u, 1u), vec3<f32>(-226f, -2203f, -2188f), Struct_3(0u, vec2<f32>(-1033f, 239f), vec2<u32>(4294967295u, 30158u), true), 2147483647i, Struct_2(Struct_1(vec4<f32>(893f, -1464f, -1225f, 939f), 37232u, vec4<u32>(1u, 4294967295u, 90867u, 31182u)), 1u, vec2<u32>(25956u, 4294967295u), Struct_1(vec4<f32>(-1726f, 204f, 1938f, 1005f), 87370u, vec4<u32>(41349u, 1u, 30024u, 0u)))), Struct_4(vec3<u32>(25821u, 15578u, 1u), vec3<f32>(697f, 124f, -504f), Struct_3(1u, vec2<f32>(1000f, -1000f), vec2<u32>(2259u, 74653u), true), 0i, Struct_2(Struct_1(vec4<f32>(-378f, -577f, 536f, -389f), 45500u, vec4<u32>(0u, 5986u, 1u, 1u)), 4294967295u, vec2<u32>(1u, 0u), Struct_1(vec4<f32>(581f, -828f, -2082f, 1245f), 4211u, vec4<u32>(21336u, 29540u, 1u, 20857u)))), Struct_4(vec3<u32>(12326u, 25450u, 0u), vec3<f32>(-1000f, 170f, -1568f), Struct_3(0u, vec2<f32>(204f, 194f), vec2<u32>(0u, 1u), false), 2147483647i, Struct_2(Struct_1(vec4<f32>(690f, -1398f, -784f, 163f), 4294967295u, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), 29385u, vec2<u32>(19528u, 4294967295u), Struct_1(vec4<f32>(-1000f, 969f, 197f, -695f), 19637u, vec4<u32>(1u, 5728u, 1u, 43635u)))), Struct_4(vec3<u32>(41840u, 24216u, 68480u), vec3<f32>(436f, 292f, -690f), Struct_3(38527u, vec2<f32>(1671f, 1000f), vec2<u32>(99732u, 21733u), true), -9835i, Struct_2(Struct_1(vec4<f32>(1179f, -2086f, -1000f, 281f), 18625u, vec4<u32>(16419u, 4294967295u, 320u, 0u)), 15353u, vec2<u32>(24995u, 74829u), Struct_1(vec4<f32>(563f, 639f, -1000f, -126f), 703u, vec4<u32>(25742u, 11911u, 34551u, 67824u)))), Struct_4(vec3<u32>(1u, 7799u, 16200u), vec3<f32>(-1276f, -1046f, 833f), Struct_3(37653u, vec2<f32>(1000f, 2064f), vec2<u32>(7757u, 35679u), false), -37227i, Struct_2(Struct_1(vec4<f32>(-154f, -1560f, -1000f, 666f), 11896u, vec4<u32>(1u, 56321u, 37730u, 4294967295u)), 69345u, vec2<u32>(4294967295u, 26293u), Struct_1(vec4<f32>(-260f, 594f, 667f, 379f), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 12431u)))), Struct_4(vec3<u32>(1u, 0u, 0u), vec3<f32>(2443f, 1445f, -347f), Struct_3(8346u, vec2<f32>(704f, -287f), vec2<u32>(109745u, 1u), false), 0i, Struct_2(Struct_1(vec4<f32>(1975f, -971f, 1451f, -1748f), 23420u, vec4<u32>(4294967295u, 1565u, 1u, 10197u)), 4294967295u, vec2<u32>(49645u, 64400u), Struct_1(vec4<f32>(2188f, -807f, -419f, 188f), 31159u, vec4<u32>(29414u, 4294967295u, 1u, 1u)))), Struct_4(vec3<u32>(31704u, 0u, 24675u), vec3<f32>(-1000f, 1479f, -780f), Struct_3(0u, vec2<f32>(-377f, -1883f), vec2<u32>(4294967295u, 0u), false), 2147483647i, Struct_2(Struct_1(vec4<f32>(-289f, -1000f, 1000f, 851f), 13661u, vec4<u32>(4294967295u, 0u, 19233u, 0u)), 1u, vec2<u32>(1u, 7232u), Struct_1(vec4<f32>(535f, 2677f, -1291f, -541f), 52474u, vec4<u32>(4294967295u, 33325u, 75760u, 0u)))), Struct_4(vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(-1428f, 408f, 409f), Struct_3(60117u, vec2<f32>(795f, -128f), vec2<u32>(16618u, 15635u), false), 1i, Struct_2(Struct_1(vec4<f32>(-1629f, 1448f, 900f, -798f), 4294967295u, vec4<u32>(0u, 28729u, 4294967295u, 4294967295u)), 1u, vec2<u32>(7888u, 0u), Struct_1(vec4<f32>(-603f, 505f, 691f, 461f), 55361u, vec4<u32>(37u, 0u, 1u, 4294967295u)))), Struct_4(vec3<u32>(17337u, 9495u, 4294967295u), vec3<f32>(633f, 127f, -1847f), Struct_3(0u, vec2<f32>(-1120f, -1705f), vec2<u32>(8562u, 0u), false), 81553i, Struct_2(Struct_1(vec4<f32>(-397f, 1786f, -2262f, -1164f), 4294967295u, vec4<u32>(0u, 1u, 1u, 58923u)), 6377u, vec2<u32>(67060u, 8371u), Struct_1(vec4<f32>(-1129f, -1266f, 801f, 925f), 4294967295u, vec4<u32>(1u, 6652u, 26267u, 1u)))), Struct_4(vec3<u32>(0u, 0u, 133649u), vec3<f32>(-996f, 2123f, -2073f), Struct_3(33719u, vec2<f32>(1000f, -651f), vec2<u32>(0u, 0u), false), -51093i, Struct_2(Struct_1(vec4<f32>(-158f, -587f, -934f, 644f), 1u, vec4<u32>(0u, 6646u, 83332u, 1u)), 27579u, vec2<u32>(1u, 4294967295u), Struct_1(vec4<f32>(-163f, 836f, -574f, -1063f), 11336u, vec4<u32>(18785u, 28257u, 40441u, 88006u)))), Struct_4(vec3<u32>(4294967295u, 23439u, 0u), vec3<f32>(1000f, -207f, 1487f), Struct_3(22704u, vec2<f32>(-199f, -523f), vec2<u32>(2159u, 0u), false), i32(-2147483648), Struct_2(Struct_1(vec4<f32>(-374f, -209f, 696f, 1321f), 0u, vec4<u32>(15790u, 25081u, 31991u, 4294967295u)), 37099u, vec2<u32>(6904u, 0u), Struct_1(vec4<f32>(812f, 782f, 1000f, 225f), 2803u, vec4<u32>(1u, 81338u, 7823u, 15554u)))), Struct_4(vec3<u32>(4981u, 47437u, 4294967295u), vec3<f32>(-170f, 1282f, -470f), Struct_3(4294967295u, vec2<f32>(1434f, 904f), vec2<u32>(65215u, 0u), false), -1i, Struct_2(Struct_1(vec4<f32>(1000f, 1000f, 159f, 1296f), 0u, vec4<u32>(0u, 4294967295u, 1u, 4294967295u)), 4294967295u, vec2<u32>(8134u, 24299u), Struct_1(vec4<f32>(-1183f, 1330f, 1726f, 1000f), 1u, vec4<u32>(4294967295u, 24498u, 99486u, 13806u)))), Struct_4(vec3<u32>(4910u, 9034u, 28410u), vec3<f32>(1000f, -1232f, -1808f), Struct_3(1u, vec2<f32>(-3361f, -508f), vec2<u32>(34309u, 10151u), false), 0i, Struct_2(Struct_1(vec4<f32>(-809f, -1616f, 396f, -1815f), 4294967295u, vec4<u32>(1u, 13684u, 0u, 74653u)), 43149u, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec4<f32>(1000f, -1000f, 1474f, -1107f), 56857u, vec4<u32>(0u, 45693u, 8654u, 390u)))), Struct_4(vec3<u32>(0u, 28477u, 4294967295u), vec3<f32>(812f, 696f, 678f), Struct_3(62982u, vec2<f32>(638f, 1000f), vec2<u32>(81629u, 4294967295u), false), 17717i, Struct_2(Struct_1(vec4<f32>(-165f, 1390f, -274f, 347f), 0u, vec4<u32>(4294967295u, 82753u, 16355u, 1u)), 4294967295u, vec2<u32>(41358u, 22796u), Struct_1(vec4<f32>(-1000f, 1365f, 270f, -1637f), 31542u, vec4<u32>(1401u, 1u, 723u, 0u)))), Struct_4(vec3<u32>(35755u, 0u, 0u), vec3<f32>(-104f, 1194f, 316f), Struct_3(4294967295u, vec2<f32>(-113f, -772f), vec2<u32>(78408u, 12523u), false), -8994i, Struct_2(Struct_1(vec4<f32>(487f, 1285f, -1015f, -493f), 0u, vec4<u32>(4294967295u, 3359u, 1u, 0u)), 3168u, vec2<u32>(4294967295u, 0u), Struct_1(vec4<f32>(-1896f, 464f, -763f, 1000f), 0u, vec4<u32>(0u, 4294967295u, 4294967295u, 0u)))), Struct_4(vec3<u32>(2726u, 28790u, 0u), vec3<f32>(-243f, 929f, 1022f), Struct_3(47718u, vec2<f32>(1000f, -2264f), vec2<u32>(33541u, 26975u), false), -19700i, Struct_2(Struct_1(vec4<f32>(687f, -102f, -1000f, 364f), 1u, vec4<u32>(0u, 1u, 90936u, 1u)), 83843u, vec2<u32>(0u, 1u), Struct_1(vec4<f32>(483f, -1731f, 1373f, 966f), 0u, vec4<u32>(8036u, 29301u, 65623u, 96055u)))), Struct_4(vec3<u32>(1u, 1u, 0u), vec3<f32>(-375f, -439f, -559f), Struct_3(50441u, vec2<f32>(-907f, 139f), vec2<u32>(4294967295u, 7766u), true), -46098i, Struct_2(Struct_1(vec4<f32>(-937f, -1000f, -640f, -1028f), 42274u, vec4<u32>(24504u, 3242u, 1u, 23473u)), 127512u, vec2<u32>(6262u, 0u), Struct_1(vec4<f32>(-1000f, 870f, 2789f, -129f), 3748u, vec4<u32>(4294967295u, 1u, 4294967295u, 54327u)))));

var<private> global2: Struct_3;

var<private> global3: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = ~1i;
    let var_1 = ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(~1u, arg_1.b), select(~vec2<u32>(arg_0.a, arg_1.c.x), ~vec2<u32>(global3.c.x, 86648u), vec2<bool>(global2.d, global2.d))), arg_1.d.c.xx, !(global0.e.d.b != _wgslsmith_clamp_u32(17885u, arg_1.b, 36121u)));
    var var_2 = ~global3.a;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.d, _wgslsmith_sub_i32(-31418i, ~u_input.a.x)), 27775i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -16395i, global0.d), vec3<i32>(1i, 1i, 13554i)) >> ((0u << (global2.c.x % 32u)) % 32u)) << (_wgslsmith_div_u32(31306u, 4273u ^ arg_0.c.x) % 32u));
    let var_4 = !select(!select(select(vec4<bool>(false, global0.c.d, global0.c.d, true), vec4<bool>(global0.c.d, true, global2.d, global0.c.d), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, global3.d, false), true), global0.c.d), !select(select(vec4<bool>(arg_0.d, global0.c.d, global0.c.d, global3.d), vec4<bool>(global2.d, false, false, global3.d), false), vec4<bool>(true, true, true, true), arg_0.d), select(!select(vec4<bool>(global2.d, global0.c.d, true, true), vec4<bool>(true, false, false, global0.c.d), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(global2.d, global0.c.d, true, arg_0.d), global3.d), !vec4<bool>(global0.c.d, false, false, false), select(vec4<bool>(global2.d, global0.c.d, global3.d, arg_0.d), vec4<bool>(true, true, arg_0.d, global0.c.d), global2.d)), global3.d != (false & arg_0.d)));
    return 17152u;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.e.d.a), min(~abs(_wgslsmith_mod_u32(4294967295u, global2.a)), abs(func_3(global0.c, global0.e))), u_input.b);
    let var_1 = Struct_3(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~4294967295u, 1u)), vec2<u32>(62041u, min(~global0.e.c.x, ~global3.a))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f + var_0.a.x) * global0.e.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -983f))), _wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_div_f32(global0.e.d.a.x, 1137f), global0.c.d)))), countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, global3.c.x), ~global0.a.zy)), global0.c.d);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(1964f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.d.a.x, _wgslsmith_f_op_f32(floor(-778f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(802f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(round(var_1.b.x)), all(vec4<bool>(true, true, arg_0, false))))))), 4294967295u, vec4<u32>(_wgslsmith_div_u32(~reverseBits(global0.c.a), global3.a), global0.c.a, global3.a, 4294967295u));
    var var_3 = Struct_2(Struct_1(var_2.a, global2.a, _wgslsmith_sub_vec4_u32(abs(var_2.c), firstTrailingBit(vec4<u32>(global2.a, var_1.a, 24642u, 0u)))), var_1.a ^ global3.c.x, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), ~min(~global3.c, vec2<u32>(var_0.b, var_0.b))), global0.e.a);
    global0 = Struct_4(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(40338u, u_input.b.x), ~global2.c.x) >> (~func_3(var_1, Struct_2(Struct_1(vec4<f32>(218f, var_2.a.x, 1492f, global3.b.x), 37140u, var_3.a.c), 87274u, var_1.c, Struct_1(vec4<f32>(-1744f, -1335f, global2.b.x, -887f), global3.c.x, vec4<u32>(var_2.c.x, 14233u, 9803u, 27580u)))) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), global3.b.x, var_3.d.a.x), var_1, ~select(global0.d & -11681i, select(_wgslsmith_sub_i32(0i, u_input.a.x), _wgslsmith_clamp_i32(u_input.a.x, 27334i, u_input.a.x), any(vec3<bool>(global2.d, var_1.d, true))), all(select(vec2<bool>(var_1.d, arg_0), vec2<bool>(var_1.d, arg_0), global0.c.d))), global0.e);
    return global0.e;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a.x, abs(arg_2.d.c.x) << (0u % 32u), global3.c.x | 1u), ~arg_2.d.c & func_2(any(vec2<bool>(false, true))).a.c), global3.c.x);
    let var_1 = u_input.a.zy;
    var_0 = global3.a & ~(~(~_wgslsmith_clamp_u32(u_input.b.x, 0u, 0u)));
    global1 = array<Struct_4, 24>();
    let var_2 = !select(vec2<bool>(global0.c.d, true), select(select(select(arg_0, arg_0, vec2<bool>(false, false)), !arg_0, 2147483647i != u_input.a.x), vec2<bool>(true, true), select(vec2<bool>(global3.d, true), vec2<bool>(true, true), true)), false);
    return arg_2.d.a.x;
}

fn func_1() -> StorageBuffer {
    global0 = global1[_wgslsmith_index_u32(global3.a, 24u)];
    var var_0 = Struct_3(u_input.b.x, _wgslsmith_f_op_vec2_f32(global3.b + global0.c.b), ~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(1u, 59094u), global2.c) | vec2<u32>(u_input.c, 43715u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-592f, global3.b.x) - _wgslsmith_f_op_f32(select(global3.b.x, -1613f, global2.d)))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(!vec2<bool>(true, global0.c.d), global0.e.d.c << (vec4<u32>(global0.e.b, global2.a, 1u, global2.a) % vec4<u32>(32u)), func_2(true))))));
    return StorageBuffer(-_wgslsmith_mod_vec3_i32(-min(vec3<i32>(-1i, -14139i, -2422i), vec3<i32>(3423i, 2147483647i, u_input.a.x)), _wgslsmith_div_vec3_i32(u_input.a, u_input.a) >> (abs(vec3<u32>(global3.c.x, var_0.a, 36093u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 24>();
    var var_0 = global0.e.a;
    global1 = array<Struct_4, 24>();
    var var_1 = _wgslsmith_f_op_f32(-1466f * _wgslsmith_f_op_f32(f32(-1f) * -732f));
    let var_2 = (global2.d && false) & global0.c.d;
    var var_3 = vec4<i32>(2147483647i, i32(-1i) * -2147483647i, -1i, 1i) | (~vec4<i32>(4330i, firstTrailingBit(u_input.a.x), global0.d & -31590i, global0.d) & ~vec4<i32>(firstLeadingBit(global0.d), 17424i, ~(-1i), firstLeadingBit(5644i)));
    let x = u_input.a;
    s_output = func_1();
}

