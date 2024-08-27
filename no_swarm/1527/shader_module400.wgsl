struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<f32>(1000f, 1000f, -1101f, -493f), false, Struct_1(vec4<bool>(true, false, true, false), 1u, vec4<f32>(324f, -667f, -750f, -1592f)), Struct_1(vec4<bool>(false, true, true, true), 0u, vec4<f32>(2240f, -194f, 1000f, 723f))), Struct_3(vec4<f32>(-703f, 1000f, -454f, 510f), false, Struct_1(vec4<bool>(true, true, false, true), 44158u, vec4<f32>(1100f, -1619f, 1614f, -1000f)), Struct_1(vec4<bool>(false, true, false, false), 1u, vec4<f32>(-1398f, -1952f, 863f, 1199f))), Struct_3(vec4<f32>(451f, -1125f, -1000f, -392f), false, Struct_1(vec4<bool>(false, false, false, false), 31420u, vec4<f32>(1207f, -152f, -404f, 575f)), Struct_1(vec4<bool>(true, true, true, false), 4558u, vec4<f32>(327f, -566f, 2292f, 280f))), Struct_3(vec4<f32>(-482f, 842f, 1000f, -144f), true, Struct_1(vec4<bool>(true, true, true, true), 4294967295u, vec4<f32>(1007f, 583f, 255f, 1000f)), Struct_1(vec4<bool>(false, false, false, true), 61932u, vec4<f32>(-1061f, 245f, -414f, 228f))), Struct_3(vec4<f32>(-246f, 325f, -1254f, 1252f), false, Struct_1(vec4<bool>(true, false, false, false), 74547u, vec4<f32>(-348f, -1000f, 294f, -428f)), Struct_1(vec4<bool>(true, false, true, true), 39404u, vec4<f32>(445f, 159f, -116f, -2226f))), Struct_3(vec4<f32>(1017f, 408f, 1000f, -652f), true, Struct_1(vec4<bool>(false, false, true, false), 0u, vec4<f32>(307f, 1631f, 1131f, -157f)), Struct_1(vec4<bool>(false, true, true, true), 5994u, vec4<f32>(1547f, 1737f, -558f, -850f))), Struct_3(vec4<f32>(964f, 1504f, 1289f, 2443f), true, Struct_1(vec4<bool>(false, true, false, false), 62326u, vec4<f32>(1665f, 153f, -394f, -298f)), Struct_1(vec4<bool>(false, true, false, false), 23400u, vec4<f32>(-1000f, 752f, 311f, -1052f))), Struct_3(vec4<f32>(1716f, 1592f, 307f, -519f), false, Struct_1(vec4<bool>(false, false, false, false), 0u, vec4<f32>(-192f, 894f, 1000f, 1000f)), Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec4<f32>(-2070f, 542f, -1665f, 2790f))), Struct_3(vec4<f32>(-805f, -2259f, -846f, 512f), true, Struct_1(vec4<bool>(true, false, true, false), 1u, vec4<f32>(-904f, -1666f, 1336f, 975f)), Struct_1(vec4<bool>(true, false, false, true), 4294967295u, vec4<f32>(-1343f, 1000f, 166f, -110f))), Struct_3(vec4<f32>(-2254f, -1733f, -687f, -637f), false, Struct_1(vec4<bool>(false, false, true, true), 1u, vec4<f32>(1020f, 879f, -449f, 1241f)), Struct_1(vec4<bool>(true, false, false, false), 1u, vec4<f32>(475f, 1330f, -1188f, -780f))), Struct_3(vec4<f32>(799f, 1054f, 2522f, -911f), false, Struct_1(vec4<bool>(false, false, true, true), 4294967295u, vec4<f32>(-373f, 1184f, 2042f, 413f)), Struct_1(vec4<bool>(false, true, false, false), 1u, vec4<f32>(-436f, -132f, 1396f, 1000f))), Struct_3(vec4<f32>(-1336f, -687f, 899f, -1428f), false, Struct_1(vec4<bool>(false, false, true, true), 47229u, vec4<f32>(-376f, -488f, -611f, -458f)), Struct_1(vec4<bool>(true, true, false, false), 4373u, vec4<f32>(-170f, 1455f, -801f, 872f))), Struct_3(vec4<f32>(-837f, -1155f, 764f, 533f), false, Struct_1(vec4<bool>(true, true, true, true), 0u, vec4<f32>(1133f, 1893f, 502f, -1663f)), Struct_1(vec4<bool>(false, true, false, true), 0u, vec4<f32>(1211f, -1000f, 1000f, -568f))), Struct_3(vec4<f32>(-328f, -657f, -217f, -1452f), false, Struct_1(vec4<bool>(true, false, false, true), 4503u, vec4<f32>(-321f, 598f, 440f, 624f)), Struct_1(vec4<bool>(true, false, true, false), 43423u, vec4<f32>(1292f, 1546f, 1753f, -1000f))), Struct_3(vec4<f32>(-1426f, 2981f, 113f, -847f), true, Struct_1(vec4<bool>(true, false, true, true), 29303u, vec4<f32>(993f, 1000f, 1825f, -1000f)), Struct_1(vec4<bool>(true, false, false, false), 1u, vec4<f32>(373f, -1000f, -734f, 502f))), Struct_3(vec4<f32>(681f, -619f, -1000f, 2156f), true, Struct_1(vec4<bool>(true, false, true, false), 66810u, vec4<f32>(961f, 553f, 1629f, 1956f)), Struct_1(vec4<bool>(false, true, false, true), 96538u, vec4<f32>(-211f, 1203f, 962f, -1456f))), Struct_3(vec4<f32>(764f, 2285f, -1022f, -642f), false, Struct_1(vec4<bool>(true, false, true, true), 1u, vec4<f32>(1000f, -690f, 422f, -881f)), Struct_1(vec4<bool>(false, true, false, false), 0u, vec4<f32>(325f, -1441f, 1259f, 654f))), Struct_3(vec4<f32>(-850f, -764f, -659f, 642f), true, Struct_1(vec4<bool>(true, true, true, false), 83251u, vec4<f32>(-1993f, 247f, -201f, 1181f)), Struct_1(vec4<bool>(false, true, true, false), 1u, vec4<f32>(-1273f, -1328f, 635f, -103f))), Struct_3(vec4<f32>(1000f, 613f, 476f, -1334f), false, Struct_1(vec4<bool>(true, false, false, false), 0u, vec4<f32>(867f, -591f, -126f, -2018f)), Struct_1(vec4<bool>(false, false, true, false), 74043u, vec4<f32>(556f, 487f, -510f, -1149f))), Struct_3(vec4<f32>(-1117f, 1054f, -1000f, -1136f), true, Struct_1(vec4<bool>(false, false, false, true), 70472u, vec4<f32>(548f, 1663f, -555f, -546f)), Struct_1(vec4<bool>(true, false, false, true), 31845u, vec4<f32>(-779f, 147f, 825f, 2289f))), Struct_3(vec4<f32>(-275f, -1390f, -587f, 1243f), false, Struct_1(vec4<bool>(false, true, true, true), 4294967295u, vec4<f32>(-302f, -241f, -325f, 1359f)), Struct_1(vec4<bool>(true, true, false, false), 0u, vec4<f32>(-1612f, -2644f, -241f, 2055f))), Struct_3(vec4<f32>(209f, 542f, 1319f, 158f), false, Struct_1(vec4<bool>(true, false, false, true), 0u, vec4<f32>(1000f, -998f, 1247f, -688f)), Struct_1(vec4<bool>(true, true, false, false), 6847u, vec4<f32>(191f, 848f, 659f, 1000f))), Struct_3(vec4<f32>(-115f, 1552f, -904f, -861f), true, Struct_1(vec4<bool>(true, false, false, false), 4294967295u, vec4<f32>(-976f, -716f, -1256f, -1609f)), Struct_1(vec4<bool>(true, true, false, false), 24313u, vec4<f32>(1625f, -168f, -1230f, -705f))));

var<private> global2: array<u32, 20>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global3 = select(select(vec3<bool>(!(u_input.a <= u_input.a), false, true), !select(vec3<bool>(false, global3.x, global3.x), !global0.b.a.wyw, global0.b.a.zxz), vec3<bool>(all(!vec3<bool>(global0.b.a.x, global0.b.a.x, global3.x)), false, true)), !select(select(global0.b.a.wwz, !global0.b.a.wwy, select(global0.b.a.x, global3.x, global3.x)), select(global0.b.a.wyy, global0.b.a.yyy, global0.b.a.zwx), !select(global0.b.a.yxw, global0.b.a.xwz, vec3<bool>(global3.x, global3.x, global0.b.a.x))), !global0.b.a.wxx);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-596f, -308f)), _wgslsmith_f_op_f32(max(global0.b.c.x, 2451f)))), 1475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f - global0.b.c.x)), _wgslsmith_f_op_f32(-global0.b.c.x))) - vec4<f32>(global0.b.c.x, _wgslsmith_div_f32(792f, -820f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b.c.x)), _wgslsmith_f_op_f32(1005f - -1000f))), _wgslsmith_f_op_f32(max(global0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.c.x * global0.b.c.x) * -240f)))));
    global0 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(127708u, 0u, 1u, u_input.b.x), vec4<u32>(13098u, 2026u, u_input.b.x, 4294967295u) & vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b.x, global0.b.b, u_input.b.x))), vec2<u32>(~4294967295u, ~4294967295u)), Struct_1(vec4<bool>(!global0.b.a.x || true, select(global0.b.a.x, !global0.b.a.x, global0.b.a.x == global0.b.a.x), any(select(global0.b.a, global0.b.a, false)), !global0.b.a.x), ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~global0.b.b, 20u)], u_input.b.x << (10156u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(global0.b.c.x + -601f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - global0.b.c.x), global0.b.c.x)))));
    let var_1 = firstTrailingBit(arg_0.x >> (global2[_wgslsmith_index_u32(19885u, 20u)] % 32u));
    let var_2 = Struct_2(u_input.b.yy, Struct_1(global0.b.a, 74356u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b.c) - global0.b.c), false))));
    return 2369f;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec4<i32>(1i, u_input.a, -u_input.a, 1i)));
    let var_1 = arg_3.b.a;
    return ((u_input.b << (vec3<u32>(~1555u, 4294967295u, reverseBits(0u)) % vec3<u32>(32u))) ^ ~((vec3<u32>(1u, arg_3.a.x, 0u) >> (u_input.b % vec3<u32>(32u))) & select(vec3<u32>(arg_0.b, 10265u, 2400u), vec3<u32>(global0.b.b, arg_2.d.b, arg_3.a.x), true))) >> (u_input.b % vec3<u32>(32u));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    global2 = array<u32, 20>();
    let var_0 = ((~countOneBits(arg_2.a.x) >> (firstLeadingBit(~0u) % 32u)) << (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(35994u, _wgslsmith_dot_vec3_u32(func_2(Struct_1(global0.b.a, global2[_wgslsmith_index_u32(25346u, 20u)], arg_2.b.c), 120490u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.b.b, 20u)], 23u)], arg_2), u_input.b & u_input.b)), 20u)] % 32u)) & (abs(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24733u, 20u)], 20u)], global2[_wgslsmith_index_u32(global0.a.x, 20u)]), u_input.b.zz))) >> (~(~arg_2.a.x) % 32u));
    let var_1 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(0u, ~global0.a.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, 31195u), ~vec4<u32>(arg_2.b.b, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], arg_2.a.x)), global2[_wgslsmith_index_u32(select(7086u, 81439u, false), 20u)]), arg_2.b);
    global0 = Struct_2(~arg_2.a, Struct_1(select(arg_2.b.a, global0.b.a, !var_1.b.a), arg_2.b.b | firstTrailingBit(var_0), vec4<f32>(_wgslsmith_f_op_f32(592f - _wgslsmith_f_op_f32(trunc(global0.b.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_3.x, arg_0, arg_0, arg_0))), 1000f)), _wgslsmith_f_op_f32(-global0.b.c.x), var_1.b.c.x)));
    let var_2 = select(arg_2.b.a.wyy, !(!(!vec3<bool>(var_1.b.a.x, var_1.b.a.x, arg_2.b.a.x))), select(select(!vec3<bool>(global3.x, global3.x, true), vec3<bool>(true, arg_2.b.a.x, var_1.b.a.x), var_1.b.a.wxw), select(var_1.b.a.zxx, vec3<bool>(var_1.b.a.x | true, false, 495f > global0.b.c.x), var_1.b.a.zyz), var_1.b.a.xxw));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0.b.c.x, -305f, 623f);
    global0 = func_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 705i), ~vec2<i32>(-8999i, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0, global0.b.c.wxw))), global0.b.a.yxx))), Struct_2(u_input.b.zx, Struct_1(vec4<bool>(any(vec2<bool>(global0.b.a.x, false)), global0.b.a.x, false, any(global0.b.a.xy)), ~abs(global0.b.b), _wgslsmith_div_vec4_f32(global0.b.c, _wgslsmith_f_op_vec4_f32(global0.b.c - global0.b.c)))), ~vec2<i32>(u_input.a, 2147483647i));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.b.c), global3.x, global0.b, func_1(i32(-1i) * -20915i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1844f, global0.b.c.x, var_0.x)))), func_1(-1i, var_0, func_1(~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1249f, -225f, global0.b.c.x)), Struct_2(global0.a, global0.b), vec2<i32>(1i, u_input.a)), abs(vec2<i32>(-18174i, -2147483647i) & vec2<i32>(u_input.a, 24686i))), -countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i)))).b);
    var var_2 = var_1;
    var var_3 = Struct_2(~reverseBits(reverseBits(firstTrailingBit(vec2<u32>(var_2.c.b, 1u)))), Struct_1(var_2.d.a, 5581u, var_2.d.c));
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.b, _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.a, _wgslsmith_mult_i32(u_input.a, 12962i), -u_input.a), max(~vec4<i32>(44202i, u_input.a, 1i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, 54834i, -1i)) ^ ~vec4<i32>(u_input.a, -1i, -28708i, -6101i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, reverseBits(u_input.a), -22365i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 21083i), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))))), countOneBits(-(~(-vec4<i32>(u_input.a, -36059i, -2147483647i, -35891i)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-585f, _wgslsmith_f_op_f32(var_3.b.c.x * _wgslsmith_f_op_f32(-var_1.d.c.x)), 1282f))));
}

