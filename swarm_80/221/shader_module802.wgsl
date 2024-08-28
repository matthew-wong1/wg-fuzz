struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-123f, -844f, -691f), vec3<f32>(-1774f, 161f, 799f), vec3<f32>(1280f, -897f, 155f), vec3<f32>(-650f, 1441f, -408f), vec3<f32>(-201f, -682f, -1388f), vec3<f32>(-1813f, -982f, 1295f), vec3<f32>(1072f, 420f, -2047f), vec3<f32>(-1776f, -573f, 1000f), vec3<f32>(-298f, 1190f, -574f), vec3<f32>(-1228f, -777f, 894f), vec3<f32>(-558f, -290f, -796f), vec3<f32>(-1000f, -1000f, 801f), vec3<f32>(-2022f, 1403f, -1000f), vec3<f32>(186f, 815f, 1101f), vec3<f32>(-2526f, -529f, -1065f), vec3<f32>(-342f, -1552f, 1000f), vec3<f32>(961f, 1000f, 1407f), vec3<f32>(302f, 1714f, -580f));

var<private> global1: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(Struct_4(Struct_1(60814u, false, 245f), Struct_3(vec2<f32>(436f, -299f), vec2<u32>(56750u, 27472u), 674f), vec2<i32>(-25546i, 80879i), -3793i), -26732i, vec4<bool>(true, false, false, false), vec3<f32>(-188f, -1087f, -225f), 7446i), Struct_5(Struct_4(Struct_1(16941u, true, 1000f), Struct_3(vec2<f32>(-166f, 1484f), vec2<u32>(3676u, 1u), 1010f), vec2<i32>(56703i, i32(-2147483648)), -1i), 10263i, vec4<bool>(true, true, false, true), vec3<f32>(1000f, -266f, -2092f), -7999i), Struct_5(Struct_4(Struct_1(4294967295u, false, 674f), Struct_3(vec2<f32>(1292f, 1663f), vec2<u32>(61971u, 0u), 601f), vec2<i32>(-60044i, -34316i), -93341i), -1i, vec4<bool>(false, false, false, true), vec3<f32>(255f, 104f, -974f), i32(-2147483648)), Struct_5(Struct_4(Struct_1(24426u, false, 941f), Struct_3(vec2<f32>(1249f, -1023f), vec2<u32>(0u, 16574u), 2117f), vec2<i32>(25191i, -10199i), -23184i), -24544i, vec4<bool>(false, true, false, false), vec3<f32>(631f, -1529f, -699f), -1i), Struct_5(Struct_4(Struct_1(1u, false, -902f), Struct_3(vec2<f32>(1284f, -292f), vec2<u32>(0u, 0u), -562f), vec2<i32>(14731i, 30106i), i32(-2147483648)), 56303i, vec4<bool>(true, false, true, false), vec3<f32>(474f, -130f, 1311f), -1i), Struct_5(Struct_4(Struct_1(4294967295u, true, 294f), Struct_3(vec2<f32>(-682f, -746f), vec2<u32>(38761u, 0u), -1269f), vec2<i32>(-12202i, 1i), -13985i), 2147483647i, vec4<bool>(false, true, true, false), vec3<f32>(2917f, -1395f, -886f), i32(-2147483648)), Struct_5(Struct_4(Struct_1(1u, false, -1182f), Struct_3(vec2<f32>(164f, -502f), vec2<u32>(4294967295u, 1u), -109f), vec2<i32>(15585i, i32(-2147483648)), 18167i), -53050i, vec4<bool>(true, false, true, false), vec3<f32>(717f, 277f, 944f), 29406i), Struct_5(Struct_4(Struct_1(4294967295u, false, 1000f), Struct_3(vec2<f32>(-201f, -219f), vec2<u32>(0u, 1u), -146f), vec2<i32>(1i, -15876i), 56656i), -18371i, vec4<bool>(true, true, true, false), vec3<f32>(-438f, 1494f, -1425f), -1i), Struct_5(Struct_4(Struct_1(26558u, false, 298f), Struct_3(vec2<f32>(1658f, 1038f), vec2<u32>(45559u, 15657u), -429f), vec2<i32>(1i, 2147483647i), -25424i), 0i, vec4<bool>(false, true, true, true), vec3<f32>(1148f, -812f, -664f), -45435i), Struct_5(Struct_4(Struct_1(0u, false, 454f), Struct_3(vec2<f32>(-783f, -488f), vec2<u32>(3787u, 2261u), -160f), vec2<i32>(-1i, -37799i), 1i), i32(-2147483648), vec4<bool>(false, true, true, true), vec3<f32>(-701f, -1203f, 260f), 8542i), Struct_5(Struct_4(Struct_1(20397u, true, -2423f), Struct_3(vec2<f32>(-953f, 1053f), vec2<u32>(92341u, 0u), 1185f), vec2<i32>(i32(-2147483648), 1i), 0i), i32(-2147483648), vec4<bool>(false, true, true, true), vec3<f32>(1000f, 1000f, 688f), 59813i), Struct_5(Struct_4(Struct_1(197u, true, -2031f), Struct_3(vec2<f32>(966f, 108f), vec2<u32>(4294967295u, 7762u), 120f), vec2<i32>(-1i, -50469i), 10498i), 2147483647i, vec4<bool>(false, false, false, false), vec3<f32>(-447f, -933f, 1000f), -33147i), Struct_5(Struct_4(Struct_1(0u, true, 528f), Struct_3(vec2<f32>(2231f, -866f), vec2<u32>(52857u, 4294967295u), 635f), vec2<i32>(-22715i, -59467i), 2147483647i), -1i, vec4<bool>(true, false, false, false), vec3<f32>(-137f, 894f, 612f), 2147483647i), Struct_5(Struct_4(Struct_1(63022u, true, 495f), Struct_3(vec2<f32>(-527f, -1229f), vec2<u32>(21557u, 1u), 2091f), vec2<i32>(5990i, 29483i), 35264i), 41324i, vec4<bool>(false, false, true, false), vec3<f32>(-390f, -274f, 284f), 3924i), Struct_5(Struct_4(Struct_1(63612u, true, -1450f), Struct_3(vec2<f32>(-873f, -684f), vec2<u32>(0u, 9715u), -1148f), vec2<i32>(6124i, 51675i), 12165i), -15602i, vec4<bool>(true, false, false, true), vec3<f32>(-853f, -1122f, -383f), -31362i));

var<private> global2: array<u32, 27>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(10623u, true, 480f), Struct_1(1u, true, 163f), Struct_1(63376u, true, -516f), Struct_1(113581u, true, -1000f), Struct_1(15861u, true, -1187f), Struct_1(4294967295u, true, 1389f), Struct_1(16238u, true, 321f), Struct_1(75535u, true, -135f), Struct_1(0u, true, -1000f), Struct_1(49150u, false, -393f), Struct_1(67991u, false, 403f), Struct_1(1u, true, 2279f), Struct_1(0u, false, -1041f), Struct_1(4294967295u, true, -1044f), Struct_1(1u, true, -711f), Struct_1(60479u, true, 105f), Struct_1(0u, false, 1260f), Struct_1(0u, false, -244f), Struct_1(103681u, true, 371f), Struct_1(75248u, true, -1261f), Struct_1(41287u, true, 1409f), Struct_1(40918u, false, -1000f), Struct_1(23104u, true, 1526f), Struct_1(32659u, false, 512f));

var<private> global4: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(2147483647i, 31432i, 0i), vec3<i32>(2147483647i, -23872i, 1i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5) -> u32 {
    let var_0 = arg_0.d.xy;
    var var_1 = !arg_0.c.yzx;
    let var_2 = -1i;
    return ~_wgslsmith_dot_vec3_u32(u_input.a.yxw, ~u_input.a.xyz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = Struct_4(Struct_1(abs(~(0u | arg_0.a)), arg_0.b, arg_0.c), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b.a * vec2<f32>(arg_1.a.c, arg_3)))), _wgslsmith_div_vec2_u32(vec2<u32>(3483u, 4294967295u) >> (firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(40745u, 27u)], u_input.b)) % vec2<u32>(32u)), firstLeadingBit(firstTrailingBit(arg_1.b.b))), 1455f), arg_1.c, 1i);
    let var_1 = Struct_2(arg_0);
    global0 = array<vec3<f32>, 18>();
    let var_2 = vec2<i32>(arg_1.d, var_0.d);
    var var_3 = all(select(vec3<bool>(arg_2.x, arg_1.a.b, any(select(vec2<bool>(arg_1.a.b, true), arg_2.xy, vec2<bool>(arg_2.x, false)))), arg_2.zwy, arg_1.d >= var_0.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-696f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> f32 {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))) * 498f);
    global0 = array<vec3<f32>, 18>();
    global2 = array<u32, 27>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(275f, arg_0.x), arg_0.yz, arg_1.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -789f)))))), firstLeadingBit(u_input.a.wz << (u_input.a.zw % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(1022f, 618f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(abs(_wgslsmith_mult_u32(0u, 57951u)), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_1.b.x, 27u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 27u)]) <= _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_1.b.x, 27u)], var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - -723f) + _wgslsmith_f_op_f32(f32(-1f) * -944f))), Struct_4(global3[_wgslsmith_index_u32(18579u, 24u)], var_1, abs(vec2<i32>(1i, 1i)), -_wgslsmith_div_i32(0i, 67437i)), vec4<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), ~0u == func_3(Struct_5(Struct_4(Struct_1(0u, false, var_1.c), Struct_3(arg_0.zx, vec2<u32>(3097u, 16754u), arg_0.x), vec2<i32>(-9854i, 28284i), -2147483647i), 12024i, vec4<bool>(arg_1.x, true, arg_1.x, true), global0[_wgslsmith_index_u32(var_1.b.x, 18u)], 0i)), any(vec4<bool>(arg_1.x, true, false, arg_1.x)), !any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), 808f)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2538f, 962f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(62191u, 18u)], vec3<bool>(true, true, true))) - _wgslsmith_f_op_f32(sign(-218f))));
    global1 = array<Struct_5, 15>();
    let var_1 = true;
    global4 = array<vec3<i32>, 2>();
    global3 = array<Struct_1, 24>();
    return 3951u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(global2[_wgslsmith_index_u32(1u, 27u)] ^ ~global2[_wgslsmith_index_u32(u_input.a.x, 27u)]) ^ ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyw, u_input.a.ywx), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 27u)], 27u)]), ~79u, _wgslsmith_mod_u32(~1u, 82896u) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 1u), global2[_wgslsmith_index_u32(reverseBits(func_1(vec4<i32>(-1i, 1i, -1i, 2416i))), 27u)]) % 32u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1267f);
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~var_0.x, 27u)] ^ (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)] & firstTrailingBit(global2[_wgslsmith_index_u32(var_0.x, 27u)])), 27u)], ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b >> (global2[_wgslsmith_index_u32(0u, 27u)] % 32u), 27u)], 0u)), ~0u);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, -1341f) - vec2<f32>(var_1, 2000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1360f, var_1) + vec2<f32>(var_1, -2652f)))))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(select(var_0.yz, u_input.a.xy, false) << (_wgslsmith_add_vec2_u32(var_0.xx, var_0.xy) % vec2<u32>(32u)), ~reverseBits(vec2<u32>(0u, var_0.x))), _wgslsmith_mult_vec2_u32(var_0.xx, firstTrailingBit(vec2<u32>(8742u, global2[_wgslsmith_index_u32(0u, 27u)])))), var_1);
    let var_4 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_2.x, u_input.b, 109171u, var_3.b.x)), var_0.x, func_1(vec4<i32>(-1i, -2479i, -33069i, 18949i))) << (min(func_3(global1[_wgslsmith_index_u32(u_input.b, 15u)]), var_0.x) % 32u), false, 788f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c);
}

