struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(-1278f, Struct_1(vec3<bool>(true, true, true), vec4<f32>(-222f, 251f, 320f, -505f), vec4<f32>(171f, 2264f, 541f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1000f, -355f, -252f, -1960f), vec4<f32>(-487f, -617f, 668f, 754f)), Struct_1(vec3<bool>(true, false, false), vec4<f32>(1193f, -1266f, 507f, 167f), vec4<f32>(668f, -1373f, -281f, -194f)), Struct_3(vec3<u32>(5614u, 0u, 91747u), true, Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(1115f, 397f, 273f, 1676f), vec4<f32>(-447f, 893f, -842f, 1756f)), vec4<bool>(false, true, true, true), 1i, vec3<u32>(1u, 8246u, 107087u)), 5039i)), Struct_4(-1000f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(-170f, 865f, 1000f, 1106f), vec4<f32>(-272f, -1052f, 2206f, 841f)), Struct_1(vec3<bool>(true, false, false), vec4<f32>(239f, -457f, -1000f, 1635f), vec4<f32>(-1000f, 776f, 307f, -589f)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(265f, -764f, -2513f, -125f), vec4<f32>(-149f, -1000f, 785f, 2752f)), Struct_3(vec3<u32>(93333u, 68000u, 1u), true, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(1000f, 450f, 610f, 641f), vec4<f32>(-1031f, 1717f, 1386f, 1000f)), vec4<bool>(true, true, false, true), 0i, vec3<u32>(66255u, 1u, 18273u)), 1i)), Struct_4(-2266f, Struct_1(vec3<bool>(false, true, true), vec4<f32>(119f, -120f, 288f, -1065f), vec4<f32>(268f, 1736f, 991f, 162f)), Struct_1(vec3<bool>(false, false, true), vec4<f32>(939f, -626f, 594f, 1000f), vec4<f32>(-241f, 353f, -1514f, 1684f)), Struct_1(vec3<bool>(true, true, false), vec4<f32>(466f, -1483f, -1039f, 145f), vec4<f32>(638f, -118f, -559f, -1571f)), Struct_3(vec3<u32>(1u, 1u, 11324u), true, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1749f, 142f, 517f, -160f), vec4<f32>(-1000f, -778f, 199f, -202f)), vec4<bool>(false, true, false, false), -21151i, vec3<u32>(4294967295u, 1u, 2941u)), -40002i)), Struct_4(-2836f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(150f, 795f, 996f, 713f), vec4<f32>(-364f, 1588f, 1463f, 1155f)), Struct_1(vec3<bool>(true, false, false), vec4<f32>(1013f, -439f, -151f, -272f), vec4<f32>(973f, 1000f, 468f, -925f)), Struct_1(vec3<bool>(false, false, true), vec4<f32>(514f, -2083f, 1000f, -1035f), vec4<f32>(-1674f, -1323f, -200f, 417f)), Struct_3(vec3<u32>(0u, 1u, 4294967295u), false, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-846f, -296f, 856f, 1450f), vec4<f32>(-456f, 119f, 1409f, 685f)), vec4<bool>(true, true, false, true), i32(-2147483648), vec3<u32>(40176u, 1u, 6708u)), i32(-2147483648))), Struct_4(-172f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1794f, 542f, -250f, 397f), vec4<f32>(-2325f, -528f, 127f, -444f)), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-191f, 1239f, 702f, 1000f), vec4<f32>(305f, 1755f, 985f, 138f)), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-835f, 172f, 535f, -824f), vec4<f32>(1053f, 1000f, 569f, -203f)), Struct_3(vec3<u32>(11482u, 4294967295u, 4294967295u), true, Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(351f, 849f, 1389f, 140f), vec4<f32>(-1054f, -352f, -1003f, 1734f)), vec4<bool>(false, false, false, false), 36070i, vec3<u32>(19467u, 4294967295u, 25682u)), 0i)), Struct_4(1048f, Struct_1(vec3<bool>(true, false, false), vec4<f32>(-489f, -517f, -254f, -750f), vec4<f32>(721f, -710f, -152f, 419f)), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-1578f, -120f, -986f, -680f), vec4<f32>(2395f, -1513f, 440f, 1291f)), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-777f, -464f, 341f, -2109f), vec4<f32>(-455f, 414f, 240f, 2133f)), Struct_3(vec3<u32>(4294967295u, 28210u, 4294967295u), false, Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<f32>(232f, 895f, -1145f, 1687f), vec4<f32>(-450f, -213f, 1000f, -3033f)), vec4<bool>(true, true, false, true), -28684i, vec3<u32>(0u, 36525u, 65668u)), i32(-2147483648))), Struct_4(-321f, Struct_1(vec3<bool>(true, true, false), vec4<f32>(1122f, 1388f, -1000f, -390f), vec4<f32>(1975f, 366f, -740f, 1395f)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(1924f, -727f, 665f, 1149f), vec4<f32>(140f, -1871f, -453f, 661f)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(201f, -854f, -1000f, 984f), vec4<f32>(1284f, -264f, 1096f, 174f)), Struct_3(vec3<u32>(40616u, 5920u, 1u), true, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-716f, 1121f, -1000f, -1113f), vec4<f32>(179f, 357f, -1164f, 256f)), vec4<bool>(false, false, true, true), 5827i, vec3<u32>(4294967295u, 1u, 13396u)), i32(-2147483648))), Struct_4(462f, Struct_1(vec3<bool>(false, false, true), vec4<f32>(402f, -1567f, -209f, 2325f), vec4<f32>(655f, 805f, -221f, 650f)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-479f, 727f, 1147f, -1055f), vec4<f32>(-930f, 1944f, -169f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-745f, -834f, -878f, -411f), vec4<f32>(-1400f, -1128f, -434f, -1000f)), Struct_3(vec3<u32>(68717u, 72831u, 4294967295u), true, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1000f, 788f, -398f, 297f), vec4<f32>(-426f, 136f, 2247f, -562f)), vec4<bool>(false, true, true, true), -1i, vec3<u32>(27751u, 1u, 0u)), 1i)), Struct_4(888f, Struct_1(vec3<bool>(true, false, true), vec4<f32>(597f, -1116f, 633f, 2090f), vec4<f32>(1000f, -2029f, -261f, -925f)), Struct_1(vec3<bool>(false, true, true), vec4<f32>(1000f, 1000f, -1000f, 321f), vec4<f32>(971f, -1624f, 394f, 675f)), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1000f, -1000f, -1327f, 701f), vec4<f32>(-906f, 1000f, 1950f, -1098f)), Struct_3(vec3<u32>(1168u, 109615u, 4294967295u), false, Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1421f, 188f, -1331f, 105f), vec4<f32>(420f, -550f, -861f, 236f)), vec4<bool>(true, true, true, true), 38581i, vec3<u32>(7270u, 4294967295u, 0u)), 1i)), Struct_4(-431f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(354f, 1306f, -3278f, 365f), vec4<f32>(-211f, 249f, 137f, 467f)), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1670f, -571f, 1410f, -1122f), vec4<f32>(468f, -707f, 434f, 176f)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1269f, 1578f, -1177f, 561f), vec4<f32>(592f, 500f, 602f, -2283f)), Struct_3(vec3<u32>(29841u, 1u, 0u), true, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-331f, 1000f, 2049f, 809f), vec4<f32>(-954f, -1443f, 329f, -719f)), vec4<bool>(false, true, false, false), 0i, vec3<u32>(50940u, 8695u, 0u)), -21607i)), Struct_4(-603f, Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1000f, 336f, 1000f, 364f), vec4<f32>(-1348f, 1472f, -551f, -1807f)), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-245f, -527f, 668f, 129f), vec4<f32>(1022f, -2226f, 1735f, -1748f)), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-905f, -781f, 420f, 2075f), vec4<f32>(-849f, 797f, -627f, 1947f)), Struct_3(vec3<u32>(0u, 1u, 108385u), true, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1000f, -1000f, 800f, 579f), vec4<f32>(210f, -1771f, 366f, 1174f)), vec4<bool>(false, true, true, false), 5147i, vec3<u32>(1u, 0u, 4294967295u)), 9811i)));

var<private> global1: vec3<f32> = vec3<f32>(-309f, 726f, -1066f);

var<private> global2: array<u32, 29> = array<u32, 29>(0u, 4294967295u, 1u, 4294967295u, 4294967295u, 28229u, 54268u, 4294967295u, 27798u, 47744u, 4294967295u, 1u, 29283u, 47555u, 0u, 27477u, 4294967295u, 28642u, 0u, 1u, 29204u, 0u, 23586u, 4294967295u, 4294967295u, 4294967295u, 41693u, 1u, 55768u);

var<private> global3: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<bool> {
    return !vec4<bool>(any(vec3<bool>(true, any(vec3<bool>(true, true, true)), true)), true, true, all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_1(!(!select(select(vec3<bool>(true, true, arg_2.b), vec3<bool>(arg_2.b, false, true), true), select(arg_1.xzx, vec3<bool>(arg_1.x, arg_2.b, false), vec3<bool>(false, true, arg_1.x)), vec3<bool>(arg_2.c.a.a.x, arg_2.b, arg_1.x))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(200f - arg_2.c.a.c.x), -227f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(min(arg_2.c.a.c.x, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c.a.c * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1071f, -325f, -828f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, global1.x) + arg_2.c.a.b))) + arg_2.c.a.c));
    let var_1 = select(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 6884u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 97829u)), max(vec4<u32>(8098u, 4294967295u, global2[_wgslsmith_index_u32(79038u, 29u)], 53839u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 11188u, 4294967295u, u_input.b), vec4<u32>(arg_2.c.d.x, arg_2.a.x, u_input.b, global2[_wgslsmith_index_u32(14076u, 29u)])) % vec4<u32>(32u)), reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(arg_2.c.d.x, 29u)], 1u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 29u)])) ^ vec4<u32>(arg_2.c.d.x, 4294967295u, 1u, global2[_wgslsmith_index_u32(0u, 29u)]))), abs(_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(40609u, 29u)], 4294967295u, 1u, global2[_wgslsmith_index_u32(u_input.a, 29u)]) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 29u)], 10880u, arg_2.c.d.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 0u, 4294967295u, global2[_wgslsmith_index_u32(43668u, 29u)])) | vec4<u32>(reverseBits(0u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(58854u, u_input.b), 29u)], 17796u, arg_2.a.x)), select(!vec4<bool>(all(vec3<bool>(false, false, arg_2.b)), false, any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), false), arg_2.c.b, arg_2.c.b));
    let var_2 = Struct_3(vec3<u32>(53649u, 0u, u_input.a), false, arg_2.c, -_wgslsmith_div_i32(_wgslsmith_sub_i32(~12669i, reverseBits(global4.x)), -1i));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.x))));
    var var_4 = ~select(abs(abs(vec4<i32>(var_2.c.c, global4.x, global4.x, 4120i) << (var_1 % vec4<u32>(32u)))), ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.d, arg_2.c.c, 59966i, -2096i), vec4<i32>(arg_2.d, 2147483647i, -17376i, global4.x), vec4<i32>(35470i, arg_2.c.c, -14100i, 9358i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51415i, 2147483647i, var_2.c.c, -2147483647i), vec4<i32>(arg_2.c.c, -2147483647i, global4.x, 28822i))), select(!arg_1, vec4<bool>(true, arg_0.x < 785f, true, all(arg_1)), arg_2.c.b));
    return ~max(~countOneBits(1u), _wgslsmith_mult_u32(~(~global2[_wgslsmith_index_u32(arg_2.c.d.x, 29u)]), max(_wgslsmith_add_u32(0u, 30139u), 4294967295u << (var_2.c.d.x % 32u))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(select(u_input.a, func_4(vec2<f32>(global1.x, global1.x), select(!(!vec4<bool>(true, false, false, arg_0)), vec4<bool>(true, !arg_0, false, false), func_3()), Struct_3(abs(~vec3<u32>(46186u, 67023u, global2[_wgslsmith_index_u32(15974u, 29u)])), any(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, arg_0, false))), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<f32>(421f, 510f, -462f, global1.x), vec4<f32>(global1.x, 1091f, -548f, global1.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, arg_0, false, false)), -11469i ^ global4.x, _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 29u)], 0u, 0u), vec3<u32>(60669u, 32964u, 47214u))), _wgslsmith_mod_i32(i32(-1i) * -17075i, global4.x))), true), 11u)];
    var var_1 = var_0.b.a;
    let var_2 = _wgslsmith_f_op_f32(-global1.x);
    global3 = array<vec2<bool>, 17>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.c.c.x, -846f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.e.c.a.b.x, _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(-202f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-891f, -163f)))));
    return var_0.e.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    let var_0 = func_2(any(vec2<bool>(false || !arg_1.a.a.x, any(select(vec2<bool>(false, false), vec2<bool>(arg_1.a.a.x, false), arg_1.b.x)))));
    global3 = array<vec2<bool>, 17>();
    var var_1 = -2266f;
    let var_2 = -394f;
    let var_3 = 122159u;
    return ~(~abs(firstTrailingBit(var_0.d.x)) & ~countOneBits(global2[_wgslsmith_index_u32(1u, 29u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(func_1(vec2<u32>(~16373u, u_input.a) & vec2<u32>(69519u, u_input.b | global2[_wgslsmith_index_u32(35847u, 29u)]), Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, -707f, 1495f, -1663f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1375f, global1.x, global1.x))), vec4<bool>(true, true, true, true), _wgslsmith_div_i32(global4.x, abs(-19781i)), max(~vec3<u32>(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.b, 29u)], u_input.b), vec3<u32>(u_input.b, u_input.a, 4847u))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-40948i, global4.x, -34612i), vec3<i32>(13198i, 0i, global4.x)), vec3<i32>(14052i, global4.x, 0i), -vec3<i32>(global4.x, global4.x, global4.x)), ~abs(vec3<i32>(-26803i, global4.x, -1i))), global4.x), 29u)], reverseBits(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(46478i, 17097i, -35357i, global4.x), vec4<i32>(-2147483647i, global4.x, -19951i, global4.x)))));
}

