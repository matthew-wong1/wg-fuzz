struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0u, vec4<f32>(-704f, 794f, 270f, -1000f), vec2<f32>(1000f, 127f), vec4<i32>(i32(-2147483648), 1i, 12389i, -19693i)), Struct_1(4294967295u, vec4<f32>(211f, -589f, 1972f, 684f), vec2<f32>(502f, -382f), vec4<i32>(-47297i, -29771i, 1i, -36471i)), Struct_1(28728u, vec4<f32>(138f, 877f, 1122f, 1356f), vec2<f32>(292f, 1038f), vec4<i32>(0i, 11538i, 2147483647i, 0i)), Struct_1(0u, vec4<f32>(825f, -409f, -885f, 1094f), vec2<f32>(-254f, 1450f), vec4<i32>(-1i, 0i, i32(-2147483648), 42765i)), Struct_1(4294967295u, vec4<f32>(283f, -195f, 1079f, -501f), vec2<f32>(-808f, -485f), vec4<i32>(0i, -1i, 1i, -1i)), Struct_1(1u, vec4<f32>(-2702f, 1266f, 188f, -1310f), vec2<f32>(251f, -265f), vec4<i32>(24593i, -19836i, 2147483647i, 48931i)), Struct_1(1u, vec4<f32>(-540f, 898f, 1909f, 437f), vec2<f32>(3222f, -346f), vec4<i32>(-18317i, 1i, 6400i, 49258i)));

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(0u, vec4<f32>(-630f, 1028f, -1160f, -1090f), vec2<f32>(708f, 1000f), vec4<i32>(i32(-2147483648), 1i, -69848i, -6753i));

var<private> global3: array<vec4<f32>, 20>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(8903u, vec4<f32>(-867f, -819f, 216f, -1617f), vec2<f32>(-1767f, -239f), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(4294967295u, vec4<f32>(524f, 1356f, -497f, -266f), vec2<f32>(-2265f, 1315f), vec4<i32>(-29649i, 11348i, 1i, 1i)), Struct_1(4294967295u, vec4<f32>(-623f, 490f, -1000f, 746f), vec2<f32>(-602f, -729f), vec4<i32>(-4927i, -1i, 2147483647i, 1i)), Struct_1(1u, vec4<f32>(-223f, 1361f, 1450f, -120f), vec2<f32>(-581f, -321f), vec4<i32>(-10204i, i32(-2147483648), 1i, 88379i)), Struct_1(0u, vec4<f32>(-594f, -585f, 548f, 573f), vec2<f32>(840f, 3057f), vec4<i32>(2147483647i, i32(-2147483648), 20089i, -34760i)), Struct_1(4294967295u, vec4<f32>(-1702f, -986f, 854f, -1062f), vec2<f32>(117f, 1328f), vec4<i32>(0i, 12032i, 32264i, 2147483647i)), Struct_1(9090u, vec4<f32>(-1356f, -1291f, -176f, -1635f), vec2<f32>(-351f, -332f), vec4<i32>(2164i, 0i, -1i, -50196i)), Struct_1(20925u, vec4<f32>(2900f, -2568f, 587f, -1332f), vec2<f32>(-201f, -193f), vec4<i32>(-59939i, -18631i, -20315i, -29656i)), Struct_1(58944u, vec4<f32>(904f, -388f, 1335f, 1146f), vec2<f32>(-887f, 153f), vec4<i32>(-22016i, 0i, 2147483647i, 1i)), Struct_1(0u, vec4<f32>(1086f, -1000f, -1938f, 497f), vec2<f32>(2298f, 2299f), vec4<i32>(i32(-2147483648), 12557i, 2147483647i, -1i)), Struct_1(56651u, vec4<f32>(1074f, 1666f, -769f, -1008f), vec2<f32>(457f, -286f), vec4<i32>(-35967i, 33919i, -28631i, 38554i)), Struct_1(27082u, vec4<f32>(703f, 700f, -960f, 1019f), vec2<f32>(348f, -619f), vec4<i32>(0i, -7747i, -1i, -22703i)), Struct_1(11016u, vec4<f32>(246f, -1122f, -1038f, 940f), vec2<f32>(1048f, 146f), vec4<i32>(i32(-2147483648), 1i, -20021i, i32(-2147483648))), Struct_1(42680u, vec4<f32>(1079f, -413f, -697f, 410f), vec2<f32>(386f, 901f), vec4<i32>(1i, 14006i, -12453i, 1i)), Struct_1(4294967295u, vec4<f32>(-101f, 1729f, 127f, -1658f), vec2<f32>(2387f, 450f), vec4<i32>(1i, 0i, 0i, -1i)), Struct_1(1u, vec4<f32>(-598f, -1538f, -689f, 1778f), vec2<f32>(-2140f, 610f), vec4<i32>(-31358i, 12770i, i32(-2147483648), 31217i)), Struct_1(9105u, vec4<f32>(-1000f, 866f, -116f, 1353f), vec2<f32>(-418f, -646f), vec4<i32>(2147483647i, i32(-2147483648), 28642i, -1i)), Struct_1(1u, vec4<f32>(-163f, -318f, 835f, 1837f), vec2<f32>(486f, -488f), vec4<i32>(i32(-2147483648), 2147483647i, -57987i, -6862i)), Struct_1(14235u, vec4<f32>(-932f, -256f, -373f, -391f), vec2<f32>(1031f, -753f), vec4<i32>(0i, -60468i, i32(-2147483648), 41010i)), Struct_1(1u, vec4<f32>(-885f, 842f, 1728f, -309f), vec2<f32>(548f, 490f), vec4<i32>(2147483647i, -1i, -1i, -24066i)), Struct_1(0u, vec4<f32>(1339f, -266f, 678f, -2392f), vec2<f32>(-1252f, 263f), vec4<i32>(24291i, 22442i, -13507i, 50203i)), Struct_1(10333u, vec4<f32>(-807f, 116f, 223f, 189f), vec2<f32>(-1117f, -503f), vec4<i32>(2147483647i, 1i, 2147483647i, -12700i)), Struct_1(4294967295u, vec4<f32>(1000f, 844f, 725f, 118f), vec2<f32>(-1079f, -777f), vec4<i32>(-1i, 10948i, 1i, -20899i)), Struct_1(32361u, vec4<f32>(-779f, 188f, -1041f, 872f), vec2<f32>(2216f, 404f), vec4<i32>(-30020i, 17756i, -34681i, 0i)), Struct_1(1u, vec4<f32>(-639f, 792f, -1211f, 978f), vec2<f32>(2071f, -1634f), vec4<i32>(-13699i, 1i, 1i, 0i)), Struct_1(13801u, vec4<f32>(508f, -610f, 1696f, -447f), vec2<f32>(1960f, 912f), vec4<i32>(1i, 0i, 0i, 1i)), Struct_1(0u, vec4<f32>(-178f, -331f, -1369f, 732f), vec2<f32>(-802f, 999f), vec4<i32>(i32(-2147483648), -5207i, 35587i, -63887i)), Struct_1(0u, vec4<f32>(-307f, 1422f, 1000f, -520f), vec2<f32>(-768f, -558f), vec4<i32>(0i, 19227i, -80275i, i32(-2147483648))), Struct_1(16923u, vec4<f32>(-951f, -1252f, 1340f, -808f), vec2<f32>(411f, -1000f), vec4<i32>(1i, 10111i, 0i, 29100i)), Struct_1(22108u, vec4<f32>(-812f, -102f, -634f, -1718f), vec2<f32>(1286f, -973f), vec4<i32>(-1i, -38212i, i32(-2147483648), 0i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec3<i32>(max(-abs(6783i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global2.d.x, -18348i), firstTrailingBit(global2.d.x), firstTrailingBit(global2.d.x), ~(-1i)), vec4<i32>(reverseBits(global2.d.x), ~2147483647i, ~(-31039i), global2.d.x))), ~global2.d.x, -1i);
    global4 = array<Struct_1, 30>();
    return !(!vec2<bool>(true, all(vec4<bool>(false, false, false, true))));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(false, select(func_1().x, func_1().x, false), all(vec2<bool>(true, false)) & false, _wgslsmith_f_op_f32(-1248f + global2.b.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * global2.c.x)));
    global3 = array<vec4<f32>, 20>();
    let var_1 = global4[_wgslsmith_index_u32(1u, 30u)];
    global1 = true;
    var var_2 = _wgslsmith_f_op_f32(973f + -713f);
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(countOneBits(arg_1.x), _wgslsmith_add_i32(arg_1.x, ~arg_1.x) << (u_input.a.x % 32u));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(~vec3<u32>(global2.a, u_input.b.x, 4294967295u), u_input.c), ~(u_input.c | u_input.b.xxw)), reverseBits(~u_input.c)), ~_wgslsmith_add_u32(func_3(), 0u), global2.a);
    var var_2 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.xx, reverseBits(u_input.b.yz)), 71093u), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(49224u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~var_1.yz, vec2<u32>(u_input.a.x, u_input.c.x)), ~var_1.yz)), 20u)], global2.c, reverseBits(-_wgslsmith_div_vec4_i32(global2.d, global2.d)));
    global3 = array<vec4<f32>, 20>();
    let var_3 = Struct_1(firstLeadingBit(~4294967295u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(-841f, var_2.b.x), -1000f), _wgslsmith_f_op_f32(-415f - _wgslsmith_f_op_f32(global2.b.x * -1301f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.b.x, 202f, arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1477f))), vec4<f32>(_wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(step(global2.b.x, var_2.b.x))), 1543f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1215f + var_2.c.x), _wgslsmith_f_op_f32(max(var_2.b.x, global2.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(global2.b.x + var_2.c.x))), vec4<bool>(true, true, !(!arg_0), -global2.d.x <= arg_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(114f + _wgslsmith_f_op_f32(-var_2.b.x))), global2.c.x), global2.d);
    return -355f;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + global2.c.x);
    global2 = global4[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    var var_1 = !(!select(func_1(), vec2<bool>(global2.a < 20208u, false), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_2 = Struct_1(_wgslsmith_add_u32(global2.a, ~global2.a), global2.b, vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x - -1279f), _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(func_2(false, vec3<i32>(global2.d.x, global2.d.x, global2.d.x)))), !var_1.x))), vec4<i32>(global2.d.x & global2.d.x, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(global2.d.x, -56853i, 26384i)), max(-69528i, -32212i ^ global2.d.x)), _wgslsmith_div_i32(firstLeadingBit(-global2.d.x), global2.d.x), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(global2.d.x, 2147483647i)))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.d.x, -1i ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global2.d, global2.d), min(vec4<i32>(76660i, global2.d.x, var_2.d.x, -1i), vec4<i32>(var_2.d.x, global2.d.x, -35540i, global2.d.x)))), abs(-2147483647i));
    var_1 = !func_1();
    var var_4 = Struct_1(_wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(u_input.a.x, 1u), 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f * -1284f)))), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * 748f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.c.x * 647f), 803f)), 1100f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * var_2.c), abs(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global2.d.x, -33272i, global2.d.x), ~0i), abs(var_2.d.x), -1i, global2.d.x)));
    global0 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, u_input.b.x, 16196u)), ~u_input.c.x & reverseBits(global2.a)), -2347f);
}

