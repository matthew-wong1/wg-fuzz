struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(4294967295u, vec4<f32>(1115f, -592f, -1076f, 137f), Struct_1(0u, vec4<f32>(-1734f, -464f, -705f, 2037f))), Struct_2(4294967295u, vec4<f32>(-779f, -370f, 145f, 1519f), Struct_1(0u, vec4<f32>(-2947f, -1299f, 390f, 310f))), Struct_2(37670u, vec4<f32>(1064f, 562f, 979f, 378f), Struct_1(1u, vec4<f32>(-1000f, -1000f, 1727f, 755f))), Struct_2(1u, vec4<f32>(-197f, 1226f, 379f, -930f), Struct_1(4294967295u, vec4<f32>(-644f, 800f, -248f, 269f))), Struct_2(16278u, vec4<f32>(-821f, 291f, 247f, -1947f), Struct_1(39657u, vec4<f32>(-467f, -688f, -338f, 714f))), Struct_2(56399u, vec4<f32>(-881f, -345f, 709f, 1738f), Struct_1(71446u, vec4<f32>(454f, 1050f, -862f, -1237f))), Struct_2(75906u, vec4<f32>(-1000f, -1431f, -650f, 1311f), Struct_1(60035u, vec4<f32>(1710f, 1507f, 878f, 686f))), Struct_2(4294967295u, vec4<f32>(423f, -2106f, 606f, 1122f), Struct_1(4294967295u, vec4<f32>(-469f, -371f, -1101f, 1475f))), Struct_2(0u, vec4<f32>(-247f, 1271f, -1629f, -232f), Struct_1(0u, vec4<f32>(-621f, -1675f, 238f, -200f))), Struct_2(0u, vec4<f32>(1005f, 1000f, -690f, 433f), Struct_1(26844u, vec4<f32>(-1185f, 955f, 254f, 303f))), Struct_2(28502u, vec4<f32>(-152f, -1214f, 434f, -2019f), Struct_1(0u, vec4<f32>(1080f, 109f, 387f, -631f))), Struct_2(34560u, vec4<f32>(-2037f, 1170f, -1000f, 1685f), Struct_1(1u, vec4<f32>(-356f, -260f, -1391f, 824f))), Struct_2(72023u, vec4<f32>(506f, 894f, 1221f, 1110f), Struct_1(1u, vec4<f32>(145f, 1684f, -510f, -1878f))), Struct_2(77678u, vec4<f32>(-246f, -308f, 1137f, -735f), Struct_1(4294967295u, vec4<f32>(-567f, 485f, 558f, -119f))), Struct_2(1u, vec4<f32>(1188f, -2335f, 398f, 1132f), Struct_1(17444u, vec4<f32>(762f, 1304f, 148f, -2519f))), Struct_2(34693u, vec4<f32>(-378f, 1041f, -503f, -1031f), Struct_1(0u, vec4<f32>(318f, -552f, -1402f, -1441f))), Struct_2(48982u, vec4<f32>(-2820f, -796f, -1266f, 911f), Struct_1(17291u, vec4<f32>(963f, -191f, -288f, -694f))), Struct_2(0u, vec4<f32>(687f, 1856f, 1175f, -1675f), Struct_1(4294967295u, vec4<f32>(-1929f, 597f, -729f, 1000f))), Struct_2(36797u, vec4<f32>(-698f, -1470f, 123f, -1491f), Struct_1(4294967295u, vec4<f32>(-1379f, 914f, 1000f, -1496f))), Struct_2(11600u, vec4<f32>(1193f, 718f, 282f, -165f), Struct_1(69935u, vec4<f32>(647f, -1386f, 756f, -203f))), Struct_2(0u, vec4<f32>(-331f, 1000f, -488f, -771f), Struct_1(17222u, vec4<f32>(-1000f, 300f, -2220f, -479f))), Struct_2(1u, vec4<f32>(1759f, -120f, 414f, -1060f), Struct_1(1u, vec4<f32>(963f, -834f, 1499f, 802f))), Struct_2(50748u, vec4<f32>(236f, 314f, 638f, 1498f), Struct_1(4294967295u, vec4<f32>(990f, -886f, 1405f, 101f))), Struct_2(49696u, vec4<f32>(1406f, -457f, -1037f, -1695f), Struct_1(4294967295u, vec4<f32>(-929f, 185f, 2367f, 800f))), Struct_2(116564u, vec4<f32>(344f, 1424f, -1951f, -1304f), Struct_1(51150u, vec4<f32>(-525f, 2773f, -250f, 1249f))), Struct_2(0u, vec4<f32>(1186f, -747f, 894f, -1950f), Struct_1(10577u, vec4<f32>(263f, 619f, -844f, 1075f))), Struct_2(1u, vec4<f32>(2146f, -910f, -453f, 197f), Struct_1(4294967295u, vec4<f32>(-376f, -1442f, -2101f, -873f))), Struct_2(1u, vec4<f32>(-339f, -872f, 640f, -257f), Struct_1(1u, vec4<f32>(-480f, 1249f, 635f, -228f))), Struct_2(60874u, vec4<f32>(986f, 465f, 927f, -1005f), Struct_1(92151u, vec4<f32>(-762f, -2093f, -1643f, -273f))), Struct_2(0u, vec4<f32>(334f, -300f, -1000f, -1247f), Struct_1(1u, vec4<f32>(1464f, -1226f, 274f, -197f))), Struct_2(70526u, vec4<f32>(1000f, 1425f, -1000f, -118f), Struct_1(12716u, vec4<f32>(366f, -1093f, -456f, 591f))));

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: Struct_5 = Struct_5(242f, vec3<bool>(false, false, true), Struct_4(vec4<bool>(true, true, true, false), i32(-2147483648), Struct_2(4294967295u, vec4<f32>(669f, -1000f, 1000f, 458f), Struct_1(0u, vec4<f32>(590f, 126f, 1000f, 898f)))), Struct_3(vec4<f32>(993f, -123f, -1441f, 1808f), -881f, vec4<f32>(167f, 578f, -386f, -684f), 67732u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~31632u), global3.d.c);
    let var_1 = _wgslsmith_f_op_f32(1435f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.c.c.b.x, global1.b.x) * -1978f))));
    var_0 = global3.c.c.c;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.b, 2147483647i, global3.c.b, 0i)), ~vec4<i32>(firstTrailingBit(-2147483647i), ~global3.c.b, _wgslsmith_mod_i32(u_input.c.x, 27041i), global3.c.b)), 1i, u_input.b, u_input.c.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_0.a);
}

