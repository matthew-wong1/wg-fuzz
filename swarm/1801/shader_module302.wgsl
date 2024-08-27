struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(380f, Struct_3(vec4<f32>(-1204f, -1000f, 553f, 1105f), Struct_2(Struct_1(-36886i, true), Struct_1(0i, true), vec4<f32>(2304f, -395f, 315f, -916f), Struct_1(-7690i, true)), Struct_1(11549i, false), true)), Struct_4(-2017f, Struct_3(vec4<f32>(-1469f, 769f, 821f, 774f), Struct_2(Struct_1(2147483647i, false), Struct_1(19024i, true), vec4<f32>(738f, 807f, 1000f, -514f), Struct_1(2147483647i, true)), Struct_1(-1i, true), true)), Struct_4(-753f, Struct_3(vec4<f32>(153f, -2075f, 1000f, -336f), Struct_2(Struct_1(0i, true), Struct_1(23326i, false), vec4<f32>(1077f, -628f, 1000f, 826f), Struct_1(2147483647i, false)), Struct_1(68742i, false), false)), Struct_4(184f, Struct_3(vec4<f32>(392f, -1000f, -698f, 841f), Struct_2(Struct_1(5093i, false), Struct_1(1i, false), vec4<f32>(-1000f, -1163f, -887f, 842f), Struct_1(-1i, false)), Struct_1(i32(-2147483648), false), false)), Struct_4(-1498f, Struct_3(vec4<f32>(-1124f, -280f, -941f, 1000f), Struct_2(Struct_1(2147483647i, false), Struct_1(i32(-2147483648), false), vec4<f32>(1967f, -259f, 1662f, -225f), Struct_1(-15243i, true)), Struct_1(i32(-2147483648), false), false)), Struct_4(-396f, Struct_3(vec4<f32>(-253f, -1380f, 942f, 1180f), Struct_2(Struct_1(-39907i, true), Struct_1(4068i, true), vec4<f32>(-681f, -717f, -700f, 506f), Struct_1(-1i, false)), Struct_1(i32(-2147483648), false), true)), Struct_4(390f, Struct_3(vec4<f32>(120f, 355f, -770f, -205f), Struct_2(Struct_1(1i, false), Struct_1(14729i, true), vec4<f32>(881f, 901f, 793f, 324f), Struct_1(42594i, true)), Struct_1(51068i, true), false)), Struct_4(-120f, Struct_3(vec4<f32>(134f, -1067f, 289f, -576f), Struct_2(Struct_1(-20906i, false), Struct_1(-1i, false), vec4<f32>(-815f, -1000f, 368f, 447f), Struct_1(-1i, false)), Struct_1(-17602i, false), true)), Struct_4(148f, Struct_3(vec4<f32>(560f, 103f, 1187f, -986f), Struct_2(Struct_1(0i, false), Struct_1(17492i, false), vec4<f32>(1230f, 583f, 395f, 642f), Struct_1(1i, false)), Struct_1(20130i, false), false)), Struct_4(-3212f, Struct_3(vec4<f32>(287f, 853f, -1784f, -1268f), Struct_2(Struct_1(i32(-2147483648), false), Struct_1(-20230i, false), vec4<f32>(1114f, -103f, -144f, -207f), Struct_1(-1i, true)), Struct_1(-1i, false), false)), Struct_4(1089f, Struct_3(vec4<f32>(487f, -901f, 403f, 1966f), Struct_2(Struct_1(i32(-2147483648), true), Struct_1(i32(-2147483648), true), vec4<f32>(-2403f, -1350f, 1437f, 2507f), Struct_1(1i, true)), Struct_1(8575i, true), false)), Struct_4(143f, Struct_3(vec4<f32>(1530f, 248f, -136f, -991f), Struct_2(Struct_1(34559i, false), Struct_1(-13416i, true), vec4<f32>(1000f, 260f, 439f, 519f), Struct_1(-5880i, true)), Struct_1(i32(-2147483648), true), true)), Struct_4(-901f, Struct_3(vec4<f32>(-1000f, -857f, 252f, 331f), Struct_2(Struct_1(-49528i, true), Struct_1(-39120i, false), vec4<f32>(-109f, 1089f, -427f, 660f), Struct_1(2147483647i, true)), Struct_1(-1i, false), true)), Struct_4(-277f, Struct_3(vec4<f32>(1890f, 1456f, 1000f, 496f), Struct_2(Struct_1(0i, true), Struct_1(i32(-2147483648), true), vec4<f32>(-1166f, 276f, -1163f, 462f), Struct_1(296i, false)), Struct_1(2147483647i, false), false)), Struct_4(-101f, Struct_3(vec4<f32>(1001f, 726f, 806f, -2175f), Struct_2(Struct_1(2595i, false), Struct_1(-26925i, true), vec4<f32>(1458f, -234f, 948f, -1180f), Struct_1(i32(-2147483648), true)), Struct_1(2147483647i, true), false)), Struct_4(-1360f, Struct_3(vec4<f32>(-291f, 693f, 378f, -1329f), Struct_2(Struct_1(68494i, false), Struct_1(-40147i, true), vec4<f32>(-1000f, -695f, 2315f, 918f), Struct_1(28245i, true)), Struct_1(1i, true), true)), Struct_4(400f, Struct_3(vec4<f32>(-194f, -610f, 169f, -872f), Struct_2(Struct_1(i32(-2147483648), false), Struct_1(-1385i, true), vec4<f32>(1000f, 252f, 288f, 634f), Struct_1(i32(-2147483648), false)), Struct_1(1i, true), true)));

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-1i, 0i, -1i, -22704i), vec4<i32>(0i, -44789i, 18478i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, -10997i, 0i), vec4<i32>(17200i, 29416i, 2147483647i, 1i), vec4<i32>(-90042i, 14627i, -31380i, 50705i), vec4<i32>(22077i, 0i, 1i, -8780i), vec4<i32>(1i, 0i, 2147483647i, -1i), vec4<i32>(31033i, 17664i, 2147483647i, -1i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(24522i, 0i, 0i, -54642i), vec4<i32>(41794i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 50520i, -1i, -1i), vec4<i32>(56053i, -23370i, -25694i, -91353i), vec4<i32>(0i, 1i, -24186i, -1i), vec4<i32>(1i, 3612i, 1i, 0i), vec4<i32>(-39622i, 2147483647i, 2147483647i, -26567i), vec4<i32>(-24872i, -11862i, i32(-2147483648), 12682i), vec4<i32>(55565i, -1i, 2147483647i, -1i), vec4<i32>(-5545i, 1i, -35599i, -1i), vec4<i32>(2147483647i, -21955i, 29064i, 8081i), vec4<i32>(i32(-2147483648), 48339i, 0i, -24328i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -14913i, -2604i, 10159i), vec4<i32>(1i, 36416i, -9560i, 13943i), vec4<i32>(2147483647i, 2147483647i, 12263i, -1i), vec4<i32>(-34588i, -66456i, 11066i, i32(-2147483648)), vec4<i32>(14654i, -1i, 12971i, -51666i), vec4<i32>(106063i, 24805i, 0i, -22347i));

var<private> global3: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false));

var<private> global4: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1000f, -341f), vec2<f32>(-291f, 1600f), vec2<f32>(-2739f, 963f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    global1 = array<vec2<i32>, 15>();
    var_0 = arg_3.x;
    var var_1 = any(select(!select(vec3<bool>(arg_2.b.b.d.b, arg_2.b.d, true), !vec3<bool>(false, arg_2.b.d, true), select(vec3<bool>(arg_2.b.b.b.b, arg_2.b.d, arg_2.b.b.d.b), vec3<bool>(arg_2.b.d, arg_2.b.c.b, true), vec3<bool>(arg_2.b.c.b, arg_2.b.b.a.b, true))), select(vec3<bool>(false, arg_2.b.d, !arg_2.b.d), !vec3<bool>(arg_2.b.b.a.b, arg_2.b.c.b, arg_2.b.c.b), vec3<bool>(false, any(vec4<bool>(true, true, arg_2.b.d, arg_2.b.d)), arg_2.b.b.b.b)), vec3<bool>(true, arg_2.b.b.a.b, any(global3[_wgslsmith_index_u32(~u_input.a.x, 21u)]))));
    let var_2 = Struct_5(u_input.c, select(vec2<bool>(any(vec4<bool>(arg_2.b.c.b, arg_2.b.c.b, true, true)), any(!vec2<bool>(true, arg_2.b.b.b.b))), !select(!vec2<bool>(arg_2.b.d, true), vec2<bool>(true, true), true), true));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.b.b.d.a), u_input.b.yy | _wgslsmith_div_vec2_i32(min(countOneBits(u_input.b.zz), min(u_input.b.xz, global1[_wgslsmith_index_u32(39832u, 15u)])), ~vec2<i32>(u_input.b.x, u_input.b.x)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1158f - _wgslsmith_f_op_f32(ceil(335f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + 1075f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-736f, 1214f))))), Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(-347f, _wgslsmith_f_op_f32(683f * 614f), _wgslsmith_f_op_f32(849f * 770f), 242f), vec4<f32>(-1000f, -1000f, 527f, _wgslsmith_f_op_f32(step(134f, 1394f)))), Struct_2(Struct_1(-2147483647i, true), Struct_1(-8072i, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2053f, -1020f, 1230f, -1028f))))), Struct_1(-5106i, true)), Struct_1(~u_input.b.x, -102f < _wgslsmith_f_op_f32(trunc(1000f))), !any(global3[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 21u)])));
    var var_1 = vec2<bool>(var_0.b.d, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) >= min(-2147483647i, (u_input.b.x >> (u_input.a.x % 32u)) | var_0.b.c.a));
    var var_2 = false;
    global1 = array<vec2<i32>, 15>();
    global1 = array<vec2<i32>, 15>();
    return vec3<bool>(true, true, !var_0.b.c.b && true);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = 1000f;
    return Struct_2(Struct_1(min(-12505i, u_input.b.x), select(any(select(vec4<bool>(arg_3, arg_3, false, arg_0), global3[_wgslsmith_index_u32(4294967295u, 21u)], arg_3)), arg_1 <= u_input.c.x, any(vec2<bool>(arg_0, arg_0)))), Struct_1(-39173i, arg_3 && true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(532f, 161f, -1000f, 1518f) * vec4<f32>(448f, 193f, 1238f, 142f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, 927f, -272f, 1090f) * vec4<f32>(-519f, 1335f, 634f, 326f)), !global3[_wgslsmith_index_u32(58698u, 21u)])))), Struct_1(countOneBits(u_input.b.x >> (~arg_2.x % 32u)), true));
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.b.x;
    global2 = array<vec4<i32>, 29>();
    global0 = array<Struct_4, 17>();
    var var_1 = func_4(any(func_3(-func_2(var_0, vec4<f32>(992f, 1000f, 1952f, 1014f), Struct_4(-103f, Struct_3(vec4<f32>(2207f, -559f, 1000f, 779f), Struct_2(Struct_1(var_0, true), Struct_1(-75819i, false), vec4<f32>(-1737f, 1356f, 972f, -1000f), Struct_1(u_input.b.x, true)), Struct_1(2147483647i, true), false)), vec2<f32>(1024f, -323f)))), _wgslsmith_sub_u32(~abs(0u), ~1u), vec3<u32>(~(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) | _wgslsmith_div_u32(u_input.c.x, u_input.a.x)), 0u, u_input.c.x), all(!vec2<bool>(true, u_input.c.x == 0u)));
    let var_2 = Struct_5(~u_input.c, !vec2<bool>(~var_0 <= 18849i, func_3(-1i).x & !var_1.d.b));
    return Struct_4(-902f, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(813f, var_1.c.x, var_1.c.x, var_1.c.x) * var_1.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))), Struct_2(var_1.b, Struct_1(1i, true), vec4<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), _wgslsmith_f_op_f32(ceil(-1000f))), Struct_1(max(u_input.b.x, u_input.b.x), var_1.d.b)), var_1.a, var_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 9368i;
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(global4[_wgslsmith_index_u32(~1u ^ max(~21854u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 77557u, 4622u, u_input.a.x), u_input.c)), 3u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1224f, 338f))))))));
    var var_3 = func_1();
    global1 = array<vec2<i32>, 15>();
    var var_4 = func_1().b.b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

