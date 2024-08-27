struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<f32>(595f, 303f), 1u, Struct_1(vec4<f32>(-1047f, 922f, -298f, -487f), vec3<f32>(-1000f, 212f, 523f), vec2<bool>(true, false), 3012u)), Struct_2(vec2<f32>(522f, 1507f), 26777u, Struct_1(vec4<f32>(371f, -788f, -335f, 1659f), vec3<f32>(-679f, 2075f, -607f), vec2<bool>(true, true), 30822u)), Struct_2(vec2<f32>(1319f, -2404f), 26046u, Struct_1(vec4<f32>(1000f, -1311f, 1536f, -1368f), vec3<f32>(433f, 929f, -209f), vec2<bool>(false, false), 1u)), Struct_2(vec2<f32>(517f, -1537f), 24785u, Struct_1(vec4<f32>(-916f, 983f, 135f, 1492f), vec3<f32>(1000f, 552f, 183f), vec2<bool>(true, true), 64221u)), Struct_2(vec2<f32>(-913f, -484f), 281u, Struct_1(vec4<f32>(-465f, 517f, -501f, -614f), vec3<f32>(-1522f, 907f, -992f), vec2<bool>(true, false), 4294967295u)), Struct_2(vec2<f32>(-756f, -2030f), 12933u, Struct_1(vec4<f32>(887f, -233f, 699f, 819f), vec3<f32>(-1560f, -1525f, 2142f), vec2<bool>(true, false), 4294967295u)), Struct_2(vec2<f32>(1000f, 1293f), 0u, Struct_1(vec4<f32>(-1177f, -455f, 1372f, -907f), vec3<f32>(938f, -503f, 294f), vec2<bool>(true, true), 37220u)), Struct_2(vec2<f32>(1430f, 1797f), 4294967295u, Struct_1(vec4<f32>(1232f, -1316f, -489f, 952f), vec3<f32>(-300f, 1215f, -733f), vec2<bool>(false, false), 0u)), Struct_2(vec2<f32>(1000f, 1595f), 45440u, Struct_1(vec4<f32>(1656f, -466f, 932f, -315f), vec3<f32>(357f, 462f, -916f), vec2<bool>(false, true), 1u)), Struct_2(vec2<f32>(211f, 1224f), 27676u, Struct_1(vec4<f32>(-131f, 1275f, 475f, 573f), vec3<f32>(-313f, -2587f, -169f), vec2<bool>(false, true), 12422u)), Struct_2(vec2<f32>(-1766f, 587f), 4294967295u, Struct_1(vec4<f32>(-1236f, -358f, -109f, 529f), vec3<f32>(729f, -957f, 1072f), vec2<bool>(false, false), 2148u)), Struct_2(vec2<f32>(1354f, 414f), 22592u, Struct_1(vec4<f32>(473f, 730f, -133f, -1453f), vec3<f32>(787f, -1000f, 1096f), vec2<bool>(false, false), 24884u)), Struct_2(vec2<f32>(-569f, 1559f), 36027u, Struct_1(vec4<f32>(1193f, -1000f, -1011f, 2174f), vec3<f32>(393f, 1257f, -1000f), vec2<bool>(true, false), 1u)), Struct_2(vec2<f32>(-741f, -753f), 74324u, Struct_1(vec4<f32>(-668f, 191f, -1254f, -614f), vec3<f32>(-976f, -594f, 986f), vec2<bool>(true, true), 4294967295u)), Struct_2(vec2<f32>(-704f, 1536f), 1u, Struct_1(vec4<f32>(-260f, -754f, -1246f, -1000f), vec3<f32>(-1104f, -1000f, 969f), vec2<bool>(false, false), 13440u)), Struct_2(vec2<f32>(-1741f, 687f), 4294967295u, Struct_1(vec4<f32>(-103f, -425f, 1202f, 477f), vec3<f32>(-216f, 1426f, -409f), vec2<bool>(true, true), 18533u)), Struct_2(vec2<f32>(1388f, 277f), 4294967295u, Struct_1(vec4<f32>(-2004f, 1172f, 236f, 552f), vec3<f32>(156f, 1334f, 875f), vec2<bool>(false, false), 1u)), Struct_2(vec2<f32>(-405f, 179f), 1u, Struct_1(vec4<f32>(-1000f, -137f, 1641f, -425f), vec3<f32>(-2004f, -905f, -761f), vec2<bool>(true, false), 67154u)), Struct_2(vec2<f32>(268f, 1425f), 4294967295u, Struct_1(vec4<f32>(-913f, -157f, 1122f, 606f), vec3<f32>(-1677f, 1149f, 1311f), vec2<bool>(false, true), 101538u)), Struct_2(vec2<f32>(-1528f, -354f), 0u, Struct_1(vec4<f32>(-946f, 793f, 563f, 1000f), vec3<f32>(624f, 1145f, -575f), vec2<bool>(true, false), 1u)), Struct_2(vec2<f32>(-1787f, -1683f), 58323u, Struct_1(vec4<f32>(677f, -634f, -894f, 1235f), vec3<f32>(-824f, 123f, 1346f), vec2<bool>(true, false), 80893u)), Struct_2(vec2<f32>(1000f, -189f), 19621u, Struct_1(vec4<f32>(1538f, -583f, -390f, -1000f), vec3<f32>(-728f, -1128f, -897f), vec2<bool>(true, false), 60980u)), Struct_2(vec2<f32>(252f, 1406f), 6055u, Struct_1(vec4<f32>(1000f, -1389f, 1277f, -852f), vec3<f32>(171f, 610f, 2261f), vec2<bool>(false, true), 4294967295u)), Struct_2(vec2<f32>(-920f, 2592f), 33589u, Struct_1(vec4<f32>(-1003f, -1484f, 776f, -685f), vec3<f32>(323f, -694f, 1421f), vec2<bool>(false, true), 4294967295u)), Struct_2(vec2<f32>(209f, -463f), 10732u, Struct_1(vec4<f32>(-1000f, 1000f, -725f, -847f), vec3<f32>(-770f, -488f, -1210f), vec2<bool>(false, false), 4294967295u)), Struct_2(vec2<f32>(694f, -1000f), 37506u, Struct_1(vec4<f32>(-723f, 1525f, -536f, 556f), vec3<f32>(482f, -414f, -176f), vec2<bool>(false, false), 0u)), Struct_2(vec2<f32>(794f, 1107f), 15137u, Struct_1(vec4<f32>(-268f, -562f, -1901f, 1165f), vec3<f32>(-1777f, 1000f, 607f), vec2<bool>(false, true), 5425u)), Struct_2(vec2<f32>(1182f, -964f), 26072u, Struct_1(vec4<f32>(1000f, 292f, 508f, -643f), vec3<f32>(-1000f, -1139f, 246f), vec2<bool>(true, true), 1u)), Struct_2(vec2<f32>(-1054f, 1470f), 15177u, Struct_1(vec4<f32>(-1690f, 683f, 216f, 217f), vec3<f32>(1733f, -977f, 278f), vec2<bool>(false, true), 16575u)));

var<private> global1: array<i32, 18>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1186f, -1145f), 37755u, Struct_1(vec4<f32>(-2528f, -1165f, -202f, -656f), vec3<f32>(687f, 1650f, 586f), vec2<bool>(false, false), 0u));

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 4294967295u, 34296u, 1u, 0u, 1u, 4294967295u, 4294967295u, 34762u, 1u, 0u, 2507u, 20689u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(reverseBits(2661i), _wgslsmith_add_i32(firstTrailingBit(1i), 0i), global1[_wgslsmith_index_u32(abs(u_input.d) | global2.c.d, 18u)], global1[_wgslsmith_index_u32(~(global2.b >> (0u % 32u)), 18u)]), -262f, global2.a.x, max(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 14u)], 18u)], u_input.a.x))), global1[_wgslsmith_index_u32(0u, 18u)])), global2.a);
}

