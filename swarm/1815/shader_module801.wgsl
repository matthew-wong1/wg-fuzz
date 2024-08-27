struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(25219i, 671f, vec4<f32>(-273f, -836f, -1293f, -932f), -1591f), -1287f, Struct_1(-9077i, 172f, vec4<f32>(-315f, -924f, -135f, -1647f), 178f), Struct_1(2147483647i, -259f, vec4<f32>(-675f, -852f, -1284f, 1000f), 878f)), Struct_2(Struct_1(i32(-2147483648), -1268f, vec4<f32>(161f, 110f, -100f, 428f), -135f), 1516f, Struct_1(-49037i, 1000f, vec4<f32>(-2376f, -774f, 592f, 2490f), -126f), Struct_1(16588i, 1181f, vec4<f32>(282f, 1000f, 328f, 2145f), -563f)), Struct_2(Struct_1(-48828i, -606f, vec4<f32>(-1000f, 1000f, 919f, -1122f), 516f), -1265f, Struct_1(2147483647i, 160f, vec4<f32>(-1000f, -456f, -188f, -610f), 160f), Struct_1(-35228i, 1000f, vec4<f32>(454f, 327f, 380f, 1202f), 1269f)), Struct_2(Struct_1(0i, 1000f, vec4<f32>(1961f, -991f, -121f, 575f), -1000f), -434f, Struct_1(0i, 643f, vec4<f32>(1028f, 2116f, 638f, -461f), -211f), Struct_1(-3619i, 322f, vec4<f32>(-550f, 699f, -766f, 1000f), 1204f)), Struct_2(Struct_1(40885i, -1133f, vec4<f32>(-336f, 1368f, 1382f, 192f), -568f), 172f, Struct_1(11010i, 1000f, vec4<f32>(923f, 1000f, -135f, -896f), 1150f), Struct_1(1i, -131f, vec4<f32>(890f, -1496f, 998f, 588f), -250f)), Struct_2(Struct_1(1i, 513f, vec4<f32>(-1504f, -1020f, -1394f, 786f), -1174f), 199f, Struct_1(1i, 1374f, vec4<f32>(1812f, -964f, 1804f, 363f), -217f), Struct_1(-39548i, 985f, vec4<f32>(289f, -1124f, -1000f, -677f), 290f)), Struct_2(Struct_1(i32(-2147483648), 835f, vec4<f32>(1361f, -2036f, 853f, 766f), 814f), -1276f, Struct_1(0i, -131f, vec4<f32>(910f, -392f, 721f, -1000f), 671f), Struct_1(37107i, -169f, vec4<f32>(-386f, 718f, 445f, -1809f), 1054f)), Struct_2(Struct_1(1i, 3343f, vec4<f32>(-120f, 1707f, -632f, -148f), -701f), 832f, Struct_1(30870i, -258f, vec4<f32>(551f, 1072f, 613f, -739f), 696f), Struct_1(12863i, 1337f, vec4<f32>(-1000f, 1295f, 360f, 394f), -805f)), Struct_2(Struct_1(-1i, 921f, vec4<f32>(-1850f, -555f, -643f, -1297f), -604f), -1406f, Struct_1(6602i, -167f, vec4<f32>(-539f, -2057f, 756f, 341f), -316f), Struct_1(20168i, -1446f, vec4<f32>(-458f, -541f, -2207f, 645f), 801f)), Struct_2(Struct_1(1i, 1431f, vec4<f32>(369f, 1610f, -121f, -1000f), 1000f), 582f, Struct_1(-1i, -871f, vec4<f32>(1000f, -1000f, 174f, 1059f), 124f), Struct_1(-1i, 498f, vec4<f32>(-687f, -707f, 446f, 167f), -431f)), Struct_2(Struct_1(2147483647i, 275f, vec4<f32>(-204f, 2641f, -267f, 3129f), -2159f), -2870f, Struct_1(2147483647i, 590f, vec4<f32>(-708f, 1612f, 327f, -1336f), -944f), Struct_1(-1i, 199f, vec4<f32>(-704f, -117f, 1509f, 163f), 820f)), Struct_2(Struct_1(2147483647i, 186f, vec4<f32>(-386f, 963f, -1032f, -214f), 869f), 1623f, Struct_1(1i, 1000f, vec4<f32>(1000f, 1417f, 146f, 216f), 391f), Struct_1(665i, -1962f, vec4<f32>(1000f, 507f, 800f, 277f), -1424f)), Struct_2(Struct_1(-1237i, 1000f, vec4<f32>(-515f, 193f, 189f, -304f), -984f), 2709f, Struct_1(0i, -745f, vec4<f32>(-1000f, 430f, 1345f, -137f), 235f), Struct_1(i32(-2147483648), -1159f, vec4<f32>(252f, 2022f, 518f, 592f), -630f)), Struct_2(Struct_1(i32(-2147483648), -1130f, vec4<f32>(-1089f, 730f, -207f, -1733f), 1021f), 692f, Struct_1(-22100i, -2157f, vec4<f32>(642f, -732f, 480f, -633f), 473f), Struct_1(0i, 1000f, vec4<f32>(2245f, -170f, -1000f, -1697f), 160f)), Struct_2(Struct_1(-19235i, 836f, vec4<f32>(-1692f, -1356f, 296f, -1000f), -795f), -1341f, Struct_1(i32(-2147483648), 653f, vec4<f32>(256f, 1087f, -1126f, -582f), 1206f), Struct_1(-10803i, 1115f, vec4<f32>(-558f, -922f, -1000f, 361f), -1837f)), Struct_2(Struct_1(51894i, -1315f, vec4<f32>(-142f, 546f, -201f, -903f), -508f), 691f, Struct_1(2147483647i, 1126f, vec4<f32>(486f, 329f, -1022f, 1402f), 422f), Struct_1(-823i, 1340f, vec4<f32>(1016f, -746f, -314f, -867f), -1099f)));

var<private> global1: array<vec3<i32>, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 31>();
    var var_0 = true;
    var_0 = u_input.b <= max(abs(12135u), 100807u);
    let var_1 = true;
    var var_2 = firstTrailingBit(abs(_wgslsmith_dot_vec2_i32(-select(vec2<i32>(u_input.d.x, -54223i), u_input.d.xz, false), vec2<i32>(-10776i, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy);
}

