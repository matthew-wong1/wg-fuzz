struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-36451i, vec3<f32>(2003f, -201f, -231f)), Struct_1(-1i, vec3<f32>(-224f, 210f, 773f)), Struct_1(0i, vec3<f32>(-862f, 586f, -1492f)), Struct_1(1i, vec3<f32>(875f, -1870f, -506f)), Struct_1(27339i, vec3<f32>(-280f, -523f, -210f)), Struct_1(2147483647i, vec3<f32>(-233f, 328f, -589f)), Struct_1(-7483i, vec3<f32>(-398f, 689f, -243f)), Struct_1(-1i, vec3<f32>(220f, 706f, 1291f)), Struct_1(-1i, vec3<f32>(-1361f, 922f, -1581f)), Struct_1(-1i, vec3<f32>(1000f, -1000f, 1205f)), Struct_1(19660i, vec3<f32>(1020f, -478f, 266f)), Struct_1(-29549i, vec3<f32>(-434f, 1022f, -1251f)), Struct_1(43179i, vec3<f32>(1033f, -903f, 368f)), Struct_1(-1i, vec3<f32>(2805f, -835f, -290f)), Struct_1(1i, vec3<f32>(2253f, 457f, 1000f)), Struct_1(-29578i, vec3<f32>(-618f, 294f, -1087f)), Struct_1(i32(-2147483648), vec3<f32>(1265f, 1660f, 254f)), Struct_1(1i, vec3<f32>(355f, -722f, -849f)), Struct_1(-2547i, vec3<f32>(2130f, -1812f, -265f)), Struct_1(2147483647i, vec3<f32>(-1832f, 1392f, -872f)), Struct_1(2147483647i, vec3<f32>(-1000f, -128f, 675f)), Struct_1(1386i, vec3<f32>(1000f, 250f, -542f)), Struct_1(i32(-2147483648), vec3<f32>(-985f, -116f, 613f)), Struct_1(-1i, vec3<f32>(-380f, -119f, -1027f)), Struct_1(-1i, vec3<f32>(-479f, -267f, -1955f)), Struct_1(1i, vec3<f32>(-1427f, -907f, -434f)), Struct_1(1i, vec3<f32>(-301f, -448f, 1042f)), Struct_1(i32(-2147483648), vec3<f32>(-631f, -1210f, 749f)), Struct_1(1i, vec3<f32>(-547f, -270f, -520f)), Struct_1(-1i, vec3<f32>(-1050f, -597f, -543f)), Struct_1(-1i, vec3<f32>(-240f, 2081f, 710f)), Struct_1(2147483647i, vec3<f32>(313f, -1000f, 502f)));

var<private> global1: u32;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(false, vec2<u32>(53119u, 4294967295u), Struct_2(728f, Struct_1(-9515i, vec3<f32>(-1000f, 2024f, -410f)), Struct_1(0i, vec3<f32>(-1000f, 479f, -484f)), Struct_1(-1i, vec3<f32>(-2813f, 100f, 1016f))), 363f), Struct_3(true, vec2<u32>(18343u, 24600u), Struct_2(832f, Struct_1(-27056i, vec3<f32>(173f, -1000f, 249f)), Struct_1(0i, vec3<f32>(1394f, -2242f, -1970f)), Struct_1(2147483647i, vec3<f32>(-890f, -326f, 234f))), 602f), Struct_3(true, vec2<u32>(105200u, 58348u), Struct_2(-953f, Struct_1(6906i, vec3<f32>(-1235f, -373f, 508f)), Struct_1(20403i, vec3<f32>(850f, 1449f, 1000f)), Struct_1(0i, vec3<f32>(-1609f, 1638f, 157f))), 547f), Struct_3(true, vec2<u32>(66326u, 60178u), Struct_2(-681f, Struct_1(2147483647i, vec3<f32>(-1511f, 1284f, 1142f)), Struct_1(-27609i, vec3<f32>(428f, -135f, -1588f)), Struct_1(-1i, vec3<f32>(-2173f, -105f, -301f))), -1000f), Struct_3(false, vec2<u32>(4294967295u, 10431u), Struct_2(1368f, Struct_1(0i, vec3<f32>(-593f, 1481f, 746f)), Struct_1(-1i, vec3<f32>(1000f, -1165f, -1796f)), Struct_1(-14949i, vec3<f32>(1000f, -1816f, -343f))), -783f), Struct_3(true, vec2<u32>(21737u, 48117u), Struct_2(1265f, Struct_1(0i, vec3<f32>(943f, 956f, -1000f)), Struct_1(-33914i, vec3<f32>(-458f, -1902f, -2246f)), Struct_1(-47870i, vec3<f32>(-650f, 111f, 445f))), -422f), Struct_3(true, vec2<u32>(2387u, 1u), Struct_2(-486f, Struct_1(-1i, vec3<f32>(980f, 592f, -221f)), Struct_1(45442i, vec3<f32>(1253f, 365f, 546f)), Struct_1(-1i, vec3<f32>(543f, -1814f, 1361f))), -1347f), Struct_3(false, vec2<u32>(34004u, 23632u), Struct_2(1672f, Struct_1(29205i, vec3<f32>(107f, 626f, 386f)), Struct_1(-1i, vec3<f32>(-105f, -951f, -792f)), Struct_1(2147483647i, vec3<f32>(-140f, 315f, 884f))), -861f), Struct_3(true, vec2<u32>(61673u, 44677u), Struct_2(2018f, Struct_1(i32(-2147483648), vec3<f32>(581f, 1189f, 101f)), Struct_1(-6057i, vec3<f32>(107f, 1000f, 1633f)), Struct_1(93433i, vec3<f32>(933f, 684f, 867f))), 422f), Struct_3(false, vec2<u32>(0u, 4294967295u), Struct_2(835f, Struct_1(1i, vec3<f32>(798f, 1384f, -241f)), Struct_1(1i, vec3<f32>(-102f, 223f, 235f)), Struct_1(-22484i, vec3<f32>(351f, 463f, -518f))), -533f), Struct_3(false, vec2<u32>(1u, 4199u), Struct_2(-652f, Struct_1(-28043i, vec3<f32>(369f, -300f, -732f)), Struct_1(-1i, vec3<f32>(441f, 1757f, 1000f)), Struct_1(1i, vec3<f32>(-1131f, -686f, -913f))), 957f), Struct_3(true, vec2<u32>(1u, 15368u), Struct_2(-400f, Struct_1(-46621i, vec3<f32>(417f, 592f, 741f)), Struct_1(21619i, vec3<f32>(228f, -201f, -1162f)), Struct_1(i32(-2147483648), vec3<f32>(252f, -111f, 282f))), 760f), Struct_3(false, vec2<u32>(0u, 23407u), Struct_2(-1259f, Struct_1(44011i, vec3<f32>(-104f, 1300f, 1502f)), Struct_1(-16100i, vec3<f32>(-181f, -1654f, -1000f)), Struct_1(1i, vec3<f32>(1397f, -1411f, -1112f))), -1519f), Struct_3(true, vec2<u32>(1u, 47980u), Struct_2(369f, Struct_1(2147483647i, vec3<f32>(-448f, -751f, -3127f)), Struct_1(-47145i, vec3<f32>(1354f, 1138f, 1587f)), Struct_1(0i, vec3<f32>(132f, 624f, -724f))), 1752f), Struct_3(true, vec2<u32>(4294967295u, 0u), Struct_2(-2472f, Struct_1(12777i, vec3<f32>(-588f, -249f, -845f)), Struct_1(-9336i, vec3<f32>(-287f, -622f, 1120f)), Struct_1(33142i, vec3<f32>(-1319f, 1143f, 1543f))), 1640f), Struct_3(false, vec2<u32>(4294967295u, 11192u), Struct_2(655f, Struct_1(-46244i, vec3<f32>(1628f, 542f, 535f)), Struct_1(i32(-2147483648), vec3<f32>(-1130f, 506f, 385f)), Struct_1(28831i, vec3<f32>(-309f, -121f, -1457f))), -942f), Struct_3(false, vec2<u32>(27200u, 6558u), Struct_2(-842f, Struct_1(-26633i, vec3<f32>(-372f, 909f, 878f)), Struct_1(-51673i, vec3<f32>(1000f, -1064f, 2342f)), Struct_1(-1i, vec3<f32>(-1377f, 383f, 4071f))), 1697f), Struct_3(false, vec2<u32>(0u, 0u), Struct_2(461f, Struct_1(-1i, vec3<f32>(-408f, 702f, -542f)), Struct_1(4488i, vec3<f32>(989f, -279f, 1069f)), Struct_1(0i, vec3<f32>(-271f, 112f, 653f))), 854f), Struct_3(false, vec2<u32>(6687u, 1u), Struct_2(643f, Struct_1(-13513i, vec3<f32>(1200f, -933f, -1000f)), Struct_1(i32(-2147483648), vec3<f32>(-2309f, 122f, 611f)), Struct_1(-1i, vec3<f32>(-131f, 1000f, -1295f))), 588f), Struct_3(false, vec2<u32>(4294967295u, 2041u), Struct_2(401f, Struct_1(70597i, vec3<f32>(642f, -233f, -478f)), Struct_1(-43531i, vec3<f32>(-1869f, -946f, 1098f)), Struct_1(12154i, vec3<f32>(1885f, -760f, -654f))), 1413f), Struct_3(false, vec2<u32>(36837u, 10224u), Struct_2(-278f, Struct_1(-2115i, vec3<f32>(-1940f, 1018f, -338f)), Struct_1(1038i, vec3<f32>(-1539f, -104f, 1078f)), Struct_1(-1i, vec3<f32>(-1000f, -1000f, -872f))), -992f), Struct_3(false, vec2<u32>(50331u, 4294967295u), Struct_2(336f, Struct_1(-24794i, vec3<f32>(157f, -1511f, -1000f)), Struct_1(1i, vec3<f32>(-243f, 680f, 342f)), Struct_1(-6266i, vec3<f32>(1464f, 1999f, -134f))), 1704f));

var<private> global3: array<vec2<u32>, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(global4.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(149346u), u_input.c), 32u)], Struct_1(~(~2147483647i) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 3569i), vec2<i32>(global4.a, global4.a)) >> (~20666u % 32u)), global4.b), Struct_1(global4.a, vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_div_f32(1000f, global4.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.b.x))))));
    let var_2 = global2[_wgslsmith_index_u32(var_0, 22u)];
    var var_3 = 1000f;
    var var_4 = _wgslsmith_div_vec2_i32(firstLeadingBit(~(~vec2<i32>(-2147483647i, var_2.c.d.a))) << (var_2.b % vec2<u32>(32u)), abs(vec2<i32>(u_input.a, var_1.b.a ^ global4.a)) | ~vec2<i32>(_wgslsmith_div_i32(-2805i, u_input.b), var_2.c.c.a));
    return var_2.a;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> bool {
    global3 = array<vec2<u32>, 16>();
    var var_0 = Struct_3(all(vec4<bool>(50565u >= (4294967295u & u_input.c), func_2(), arg_3.x, true)), vec2<u32>(arg_2.b.x, 1u), arg_2.c, arg_2.c.b.b.x);
    var_0 = arg_2;
    var_0 = global2[_wgslsmith_index_u32(~(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.b.x, 13878u, abs(var_0.b.x), _wgslsmith_mod_u32(1u, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, var_0.b.x, 1u, 1u) >> (vec4<u32>(u_input.c, arg_2.b.x, 85913u, 28029u) % vec4<u32>(32u)), vec4<u32>(0u, arg_2.b.x, u_input.c, 70769u)))), 22u)];
    global4 = var_0.c.d;
    return true;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = !select(!(!arg_1), true | (global4.b.x > -1312f), true) | !(select(func_2(), false, func_3(global3[_wgslsmith_index_u32(1u, 16u)], Struct_2(global4.b.x, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(arg_0, 32u)], global0[_wgslsmith_index_u32(arg_2, 32u)]), Struct_3(arg_1, vec2<u32>(arg_0, 4294967295u), Struct_2(global4.b.x, Struct_1(global4.a, global4.b), Struct_1(global4.a, vec3<f32>(global4.b.x, -1287f, 191f)), Struct_1(u_input.a, vec3<f32>(global4.b.x, global4.b.x, 746f))), 1063f), vec3<bool>(arg_1, arg_1, arg_1))) || func_3(~vec2<u32>(0u, 0u), Struct_2(664f, Struct_1(global4.a, global4.b), Struct_1(global4.a, vec3<f32>(global4.b.x, global4.b.x, global4.b.x)), global0[_wgslsmith_index_u32(84394u, 32u)]), global2[_wgslsmith_index_u32(abs(10312u), 22u)], select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)));
    global3 = array<vec2<u32>, 16>();
    global0 = array<Struct_1, 32>();
    let var_1 = Struct_2(-1941f, Struct_1(-537i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, global4.b.x, 1000f) * global4.b) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1338f, global4.b.x, global4.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(-global4.b.x), global4.b.x)))), Struct_1(global4.a, global4.b), Struct_1(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(4621i, 18163i, global4.a, 18733i), vec4<i32>(2147483647i, -7361i, u_input.b, u_input.a), false), -_wgslsmith_mod_vec4_i32(vec4<i32>(35081i, global4.a, u_input.a, -1i), vec4<i32>(-18625i, global4.a, global4.a, -25423i))), _wgslsmith_f_op_vec3_f32(global4.b + vec3<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(782f * -1064f)))));
    global4 = Struct_1(31487i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b)) + _wgslsmith_f_op_vec3_f32(-var_1.c.b)))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(all(vec2<bool>(false, false)), true, false));
    var var_1 = ~abs(u_input.c);
    var_1 = _wgslsmith_div_u32(abs(4294967295u | func_1(u_input.c, var_0.x, 4294967295u << (u_input.c % 32u))), _wgslsmith_sub_u32(u_input.c, (1u >> (func_1(u_input.c, var_0.x, u_input.c) % 32u)) >> (4294967295u % 32u)));
    var var_2 = global2[_wgslsmith_index_u32(func_1(~4294967295u, true, _wgslsmith_mod_u32(~1u, ~u_input.c)), 22u)];
    var_2 = global2[_wgslsmith_index_u32(~u_input.c, 22u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, -661f, global4.b.x, -396f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - _wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(global4.b.x + global4.b.x))), 2523f)), var_3.x);
}

