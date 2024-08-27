struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(vec2<f32>(273f, -575f), 10836u, -55016i, vec3<i32>(-1i, -1i, 60812i), 366f), Struct_2(vec3<i32>(37534i, -1i, 9994i), vec3<u32>(23442u, 1u, 37346u), Struct_1(vec2<f32>(-585f, -783f), 38043u, 2147483647i, vec3<i32>(0i, 2147483647i, -1i), 963f), 0u, Struct_1(vec2<f32>(-878f, -1094f), 120162u, 1i, vec3<i32>(27421i, -1176i, -107591i), 1391f)), 1761f, vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec2<f32>(-1063f, -974f), 33773u, 25352i, vec3<i32>(i32(-2147483648), 0i, 5142i), -399f), Struct_2(vec3<i32>(46575i, 1i, 0i), vec3<u32>(0u, 7534u, 4294967295u), Struct_1(vec2<f32>(1107f, -359f), 0u, 4324i, vec3<i32>(i32(-2147483648), 36687i, 2147483647i), 1348f), 4294967295u, Struct_1(vec2<f32>(1000f, 1119f), 52163u, -15441i, vec3<i32>(1i, 1i, 648i), -518f)), 1000f, vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<f32>(-1000f, 262f), 25830u, 0i, vec3<i32>(64330i, 1i, 1i), 1005f), Struct_2(vec3<i32>(9825i, 8514i, i32(-2147483648)), vec3<u32>(30357u, 33623u, 22906u), Struct_1(vec2<f32>(-769f, 1009f), 0u, 1i, vec3<i32>(29898i, -33674i, 0i), -1020f), 4294967295u, Struct_1(vec2<f32>(-220f, 1000f), 4294967295u, -9088i, vec3<i32>(11012i, 311i, -46850i), 277f)), -399f, vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<f32>(1045f, 713f), 0u, i32(-2147483648), vec3<i32>(-7632i, -1i, -6545i), -188f), Struct_2(vec3<i32>(20257i, 0i, 54882i), vec3<u32>(181u, 1u, 1u), Struct_1(vec2<f32>(-1324f, -473f), 1u, 1i, vec3<i32>(-1i, -7126i, 1i), 1232f), 1164u, Struct_1(vec2<f32>(955f, 371f), 829u, -1i, vec3<i32>(9368i, -28189i, 1i), 1409f)), 889f, vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<f32>(2163f, 1813f), 38970u, -1i, vec3<i32>(2147483647i, 1i, -45618i), 421f), Struct_2(vec3<i32>(i32(-2147483648), 0i, 12030i), vec3<u32>(94679u, 44u, 1u), Struct_1(vec2<f32>(-1806f, 1113f), 0u, -21734i, vec3<i32>(-1i, 0i, 33813i), -1184f), 20371u, Struct_1(vec2<f32>(929f, 1454f), 0u, 2802i, vec3<i32>(-1i, -32069i, 2147483647i), 567f)), -1925f, vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec2<f32>(-1000f, -1473f), 4294967295u, -38697i, vec3<i32>(14401i, 0i, 1i), 130f), Struct_2(vec3<i32>(-1i, -7968i, 2147483647i), vec3<u32>(4008u, 1u, 0u), Struct_1(vec2<f32>(1285f, 964f), 43816u, -22279i, vec3<i32>(2147483647i, 32103i, 2147483647i), 353f), 20372u, Struct_1(vec2<f32>(-1695f, -1064f), 1u, 25250i, vec3<i32>(-1i, 0i, 8763i), -2395f)), 562f, vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec2<f32>(-1751f, -133f), 52865u, 16824i, vec3<i32>(-22415i, 2147483647i, 2147483647i), -943f), Struct_2(vec3<i32>(-22891i, -1i, -1i), vec3<u32>(1u, 1u, 0u), Struct_1(vec2<f32>(1057f, -1000f), 0u, -14911i, vec3<i32>(0i, 2147483647i, -56395i), 336f), 4294967295u, Struct_1(vec2<f32>(501f, -1000f), 10910u, 1i, vec3<i32>(24608i, 1i, -1i), -748f)), 2230f, vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<f32>(1000f, 1368f), 336u, 2147483647i, vec3<i32>(31045i, i32(-2147483648), 1i), 258f), Struct_2(vec3<i32>(36468i, -23908i, -1i), vec3<u32>(1u, 1u, 0u), Struct_1(vec2<f32>(751f, 524f), 58303u, 0i, vec3<i32>(19929i, -48338i, 1i), 1183f), 0u, Struct_1(vec2<f32>(-722f, 1354f), 44835u, -32354i, vec3<i32>(29884i, 35071i, 2147483647i), -1000f)), 1202f, vec4<bool>(false, true, true, true)), Struct_3(Struct_1(vec2<f32>(749f, -529f), 1u, -1i, vec3<i32>(1i, 1i, 2147483647i), 2042f), Struct_2(vec3<i32>(-1i, -24298i, i32(-2147483648)), vec3<u32>(49829u, 31404u, 50147u), Struct_1(vec2<f32>(-414f, -1000f), 1u, 30159i, vec3<i32>(1i, -26626i, -3699i), -1672f), 15574u, Struct_1(vec2<f32>(-1000f, -774f), 57081u, 1i, vec3<i32>(-15747i, -1i, 1i), 729f)), 347f, vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<f32>(1000f, -249f), 9093u, 2147483647i, vec3<i32>(1i, -1i, 22322i), -1450f), Struct_2(vec3<i32>(-1i, 0i, 13475i), vec3<u32>(32151u, 5924u, 42268u), Struct_1(vec2<f32>(-1870f, 582f), 1u, 0i, vec3<i32>(17024i, -60647i, 0i), 1150f), 19715u, Struct_1(vec2<f32>(106f, -1137f), 4294967295u, 0i, vec3<i32>(-1i, 9563i, 22088i), -1921f)), 725f, vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<f32>(1186f, -2879f), 31026u, -25000i, vec3<i32>(-1i, -22923i, -1i), -1880f), Struct_2(vec3<i32>(-88135i, 0i, 2147483647i), vec3<u32>(15062u, 1u, 0u), Struct_1(vec2<f32>(-2255f, 1031f), 1u, 69214i, vec3<i32>(i32(-2147483648), 2147483647i, -41077i), 291f), 67038u, Struct_1(vec2<f32>(1076f, 1759f), 32591u, 36236i, vec3<i32>(-1i, 2147483647i, -23920i), 399f)), -1781f, vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec2<f32>(305f, 532f), 64468u, -55894i, vec3<i32>(-50068i, -24530i, 0i), -876f), Struct_2(vec3<i32>(-20035i, i32(-2147483648), 2147483647i), vec3<u32>(6282u, 4294967295u, 1u), Struct_1(vec2<f32>(1739f, 958f), 0u, 2147483647i, vec3<i32>(-1i, 28355i, -6909i), -639f), 4294967295u, Struct_1(vec2<f32>(467f, -121f), 0u, 2147483647i, vec3<i32>(15342i, -19710i, -16537i), -306f)), 1349f, vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec2<f32>(-1514f, -950f), 63093u, -1i, vec3<i32>(-34937i, i32(-2147483648), -3372i), 814f), Struct_2(vec3<i32>(-1i, -18635i, 46877i), vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec2<f32>(587f, -1277f), 0u, 2147483647i, vec3<i32>(2448i, -61799i, i32(-2147483648)), 1939f), 0u, Struct_1(vec2<f32>(-563f, -436f), 32558u, -5563i, vec3<i32>(2147483647i, i32(-2147483648), -13420i), 460f)), 1000f, vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<f32>(-308f, -860f), 76098u, 0i, vec3<i32>(1i, -58334i, -38759i), -1527f), Struct_2(vec3<i32>(-4439i, 13797i, -21591i), vec3<u32>(1u, 126499u, 16125u), Struct_1(vec2<f32>(663f, -1318f), 101888u, 1i, vec3<i32>(14650i, 8619i, 2147483647i), 1349f), 39389u, Struct_1(vec2<f32>(-786f, 1367f), 57373u, -40522i, vec3<i32>(0i, 2147483647i, -69725i), 1000f)), -1012f, vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec2<f32>(768f, 2582f), 1u, 41588i, vec3<i32>(-1i, -1i, 2147483647i), 163f), Struct_2(vec3<i32>(0i, -1i, -1i), vec3<u32>(35409u, 4294967295u, 64537u), Struct_1(vec2<f32>(-956f, -1000f), 110265u, 0i, vec3<i32>(-5569i, 54088i, -71235i), -1000f), 43045u, Struct_1(vec2<f32>(-791f, -1229f), 11035u, 13042i, vec3<i32>(-1i, -1i, 10793i), 186f)), -1000f, vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<f32>(-1173f, 948f), 39247u, -6194i, vec3<i32>(-33406i, 17453i, 29771i), -358f), Struct_2(vec3<i32>(24120i, 1i, -30971i), vec3<u32>(4294967295u, 100956u, 0u), Struct_1(vec2<f32>(-1087f, -1218f), 4294967295u, 1i, vec3<i32>(-4685i, 1i, 48010i), 942f), 0u, Struct_1(vec2<f32>(-293f, -1264f), 4294967295u, 36380i, vec3<i32>(-2808i, -2667i, 42117i), -2207f)), -526f, vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec2<f32>(-1120f, 1047f), 22752u, 0i, vec3<i32>(-1i, 0i, 0i), -1458f), Struct_2(vec3<i32>(20868i, -66511i, 2147483647i), vec3<u32>(35842u, 32698u, 60982u), Struct_1(vec2<f32>(-2383f, 719f), 8824u, -1i, vec3<i32>(0i, -39068i, 2147483647i), 1261f), 47212u, Struct_1(vec2<f32>(-129f, 1297f), 71194u, -24130i, vec3<i32>(0i, 0i, -1i), 208f)), 441f, vec4<bool>(false, false, true, false)));

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: array<bool, 7>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(-961f, 2477f), 78050u, -1i, vec3<i32>(-64436i, 100i, -44850i), -472f), Struct_1(vec2<f32>(-547f, -1372f), 0u, 0i, vec3<i32>(1i, -13217i, -18417i), -115f));

var<private> global4: array<i32, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(-1000f, 2522f)))))), u_input.a.x, i32(-1i) * -1i, countOneBits(select(reverseBits(vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], -42457i, global4[_wgslsmith_index_u32(4294967295u, 19u)])), ~vec3<i32>(global4[_wgslsmith_index_u32(65934u, 19u)], -1i, 2147483647i), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-832f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)))));
    global2 = array<bool, 7>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(28802u >> (u_input.a.x % 32u)), 1u), 17u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x * var_0.a.a.x));
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<vec2<bool>, 22>();
    let var_0 = -1000f;
    let var_1 = vec2<bool>(true, any(vec3<bool>(func_3(vec2<bool>(true, true)), !global2[_wgslsmith_index_u32(u_input.a.x | 37183u, 7u)], all(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 7u)], global2[_wgslsmith_index_u32(8418u, 7u)])))));
    global1 = array<vec2<bool>, 22>();
    global3 = array<Struct_1, 2>();
    return global3[_wgslsmith_index_u32(arg_0, 2u)];
}

fn func_1() -> vec3<bool> {
    global0 = array<Struct_3, 17>();
    var var_0 = func_2(abs(u_input.a.x));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 17u)];
    let var_2 = -var_0.d | (vec3<i32>(-1i) * -(~vec3<i32>(var_1.a.d.x, 10666i, var_0.d.x)));
    let var_3 = var_1.b;
    return !vec3<bool>(_wgslsmith_dot_vec3_u32(var_3.b, ~vec3<u32>(var_0.b, 4294967295u, var_0.b)) < 23440u, func_3(!(!global1[_wgslsmith_index_u32(0u, 22u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(53988u >> (min(u_input.a.x, var_3.c.b) % 32u), var_0.b), 7u)]);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_4 {
    global0 = array<Struct_3, 17>();
    global3 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), func_2(arg_2.b).e, arg_2.e) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(353f, arg_2.a.x, arg_2.e) + vec3<f32>(-233f, 1092f, -814f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-670f, 1952f, 1132f), vec3<f32>(arg_2.e, -1731f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1022f, arg_2.e, arg_2.a.x) - vec3<f32>(1590f, arg_2.e, arg_2.e)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.e, -1522f, 775f))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -2143f, arg_2.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, 303f, arg_2.e) + vec3<f32>(-126f, -291f, -262f)))))), !(!(any(vec2<bool>(true, arg_3.x)) && !global2[_wgslsmith_index_u32(50714u, 7u)]))));
    var var_1 = max(_wgslsmith_sub_u32(~4294967295u, u_input.a.x) & func_2(countOneBits(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))).b, abs(_wgslsmith_mult_u32(~22368u << (min(u_input.a.x, arg_2.b) % 32u), min(0u, 15785u))));
    let var_2 = var_0.zy;
    return Struct_4(Struct_1(var_2, max(u_input.a.x, arg_2.b), i32(-1i) * -11967i, select(arg_2.d, vec3<i32>(-1i) * -arg_2.d, arg_0), _wgslsmith_f_op_f32(select(415f, arg_2.a.x, !global2[_wgslsmith_index_u32(arg_2.b, 7u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 19>();
    var var_0 = global4[_wgslsmith_index_u32(~u_input.a.x, 19u)] | (-5769i << (~(~(~u_input.a.x)) % 32u));
    var var_1 = ~vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(u_input.a.x << (~u_input.a.x % 32u), 19u)], ~global4[_wgslsmith_index_u32(~u_input.a.x, 19u)]) & -(_wgslsmith_clamp_vec3_i32(~vec3<i32>(18069i, 1i, global4[_wgslsmith_index_u32(17002u, 19u)]), ~vec3<i32>(global4[_wgslsmith_index_u32(1u, 19u)], -72403i, -1i), vec3<i32>(global4[_wgslsmith_index_u32(10988u, 19u)], 40366i, 22138i) | vec3<i32>(-11916i, 10516i, 26342i)) | -vec3<i32>(global4[_wgslsmith_index_u32(74622u, 19u)], global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(u_input.a.x, 19u)]));
    var var_2 = func_4(func_1(), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(4294967295u).a + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1292f, -956f))))), 32619u, 0i, vec3<i32>(countOneBits(var_1.x), ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), 19u)], -func_2(0u).c), -679f), vec4<bool>(true, false, any(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), !(4294967295u > reverseBits(u_input.a.x))));
    let var_3 = Struct_3(func_2(_wgslsmith_mod_u32(~countOneBits(u_input.a.x), 0u >> ((4294967295u ^ u_input.a.x) % 32u))), Struct_2(_wgslsmith_sub_vec3_i32(~vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 19u)], global4[_wgslsmith_index_u32(var_2.a.b, 19u)], var_1.x), func_4(vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.b, 7u)], false), all(vec3<bool>(global2[_wgslsmith_index_u32(19809u, 7u)], false, global2[_wgslsmith_index_u32(var_2.a.b, 7u)])), var_2.a, vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(var_2.a.b, 7u)], true, global2[_wgslsmith_index_u32(31700u, 7u)])).a.d), ((vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ vec3<u32>(var_2.a.b, u_input.a.x, 878u)) << (reverseBits(vec3<u32>(1u, 46166u, var_2.a.b)) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(165u, 7117u, 0u), vec3<u32>(var_2.a.b, u_input.a.x, 0u)), abs(vec3<u32>(u_input.a.x, 4294967295u, 0u))), func_4(vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(3009u, 7u)], false, global2[_wgslsmith_index_u32(var_2.a.b, 7u)])), false | global2[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(0u, 19u)] <= global4[_wgslsmith_index_u32(var_2.a.b, 19u)]), global2[_wgslsmith_index_u32(15334u, 7u)], Struct_1(_wgslsmith_f_op_vec2_f32(select(var_2.a.a, var_2.a.a, false)), ~var_2.a.b, global4[_wgslsmith_index_u32(var_2.a.b, 19u)], var_2.a.d & vec3<i32>(var_1.x, -1i, var_2.a.d.x), _wgslsmith_f_op_f32(1155f + var_2.a.a.x)), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(var_2.a.b, 7u)]), global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), !vec4<bool>(global2[_wgslsmith_index_u32(93401u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], true, global2[_wgslsmith_index_u32(68805u, 7u)]), true || global2[_wgslsmith_index_u32(var_2.a.b, 7u)])).a, abs(~58864u & u_input.a.x), global3[_wgslsmith_index_u32(var_2.a.b, 2u)]), _wgslsmith_div_f32(var_2.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -227f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.a.e, 2556f)), -520f))), vec4<bool>(global2[_wgslsmith_index_u32(~19892u, 7u)], global2[_wgslsmith_index_u32(var_2.a.b, 7u)] || true, true, select(firstLeadingBit(var_2.a.c) >= _wgslsmith_div_i32(15878i, -2147483647i), false, all(select(vec2<bool>(true, global2[_wgslsmith_index_u32(16704u, 7u)]), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a.x, 22u)])))));
    let var_4 = var_2.a;
    global4 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(var_3.b.b, vec3<u32>(var_3.b.d, min(var_2.a.b, 33675u), 46591u) & var_3.b.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(35007u & var_2.a.b, u_input.a.x, 20808u >> (var_2.a.b % 32u), select(var_2.a.b, var_2.a.b, true)), ~(~vec4<u32>(var_4.b, var_4.b, 8331u, 0u))), vec4<u32>(21049u, select(~(1u & var_2.a.b), ~_wgslsmith_div_u32(var_4.b, 4294967295u), false), ~abs(var_3.b.d), ~min(abs(u_input.a.x), 14221u)));
}

