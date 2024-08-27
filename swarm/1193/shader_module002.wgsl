struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(27645u, 4294967295u, 0u, 0u);

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(4294967295u, Struct_3(vec3<u32>(4294967295u, 37185u, 30774u), vec4<f32>(757f, 1511f, -605f, 285f)), Struct_2(Struct_1(1000f)), vec3<bool>(true, true, true), 39770u), Struct_4(0u, Struct_3(vec3<u32>(4294967295u, 21027u, 51981u), vec4<f32>(-2351f, 362f, 1064f, -378f)), Struct_2(Struct_1(-1068f)), vec3<bool>(false, true, true), 3937u), Struct_4(0u, Struct_3(vec3<u32>(1u, 0u, 100178u), vec4<f32>(553f, 482f, 800f, 271f)), Struct_2(Struct_1(994f)), vec3<bool>(true, false, false), 4294967295u), Struct_4(63283u, Struct_3(vec3<u32>(14826u, 6756u, 59537u), vec4<f32>(1000f, -321f, -396f, -1000f)), Struct_2(Struct_1(-357f)), vec3<bool>(false, false, false), 15582u), Struct_4(4294967295u, Struct_3(vec3<u32>(0u, 1u, 32143u), vec4<f32>(-827f, 1627f, -159f, 1392f)), Struct_2(Struct_1(-785f)), vec3<bool>(true, true, true), 4294967295u), Struct_4(14339u, Struct_3(vec3<u32>(0u, 1u, 49944u), vec4<f32>(1000f, -717f, -1182f, -361f)), Struct_2(Struct_1(-1000f)), vec3<bool>(true, true, false), 17297u), Struct_4(1u, Struct_3(vec3<u32>(0u, 7565u, 4294967295u), vec4<f32>(482f, -207f, -274f, 2256f)), Struct_2(Struct_1(-1000f)), vec3<bool>(false, true, false), 1u), Struct_4(17940u, Struct_3(vec3<u32>(1u, 1u, 4294967295u), vec4<f32>(196f, -1043f, -548f, 495f)), Struct_2(Struct_1(1005f)), vec3<bool>(false, false, false), 0u), Struct_4(10953u, Struct_3(vec3<u32>(71794u, 1u, 20469u), vec4<f32>(565f, -1807f, 440f, -224f)), Struct_2(Struct_1(-101f)), vec3<bool>(false, true, false), 4294967295u), Struct_4(50064u, Struct_3(vec3<u32>(1u, 43099u, 13521u), vec4<f32>(1338f, 1594f, 123f, -1497f)), Struct_2(Struct_1(-541f)), vec3<bool>(false, false, false), 1u), Struct_4(55204u, Struct_3(vec3<u32>(0u, 28109u, 4294967295u), vec4<f32>(1000f, 942f, -157f, -1908f)), Struct_2(Struct_1(1348f)), vec3<bool>(false, true, false), 1u), Struct_4(4294967295u, Struct_3(vec3<u32>(9043u, 22364u, 24011u), vec4<f32>(-371f, 1178f, 1000f, 555f)), Struct_2(Struct_1(-1212f)), vec3<bool>(false, false, true), 57072u), Struct_4(15323u, Struct_3(vec3<u32>(4294967295u, 7300u, 0u), vec4<f32>(1383f, 215f, -383f, -138f)), Struct_2(Struct_1(587f)), vec3<bool>(true, true, false), 4294967295u), Struct_4(0u, Struct_3(vec3<u32>(18097u, 26497u, 1u), vec4<f32>(108f, -102f, 501f, 1156f)), Struct_2(Struct_1(1304f)), vec3<bool>(false, false, false), 9006u), Struct_4(9631u, Struct_3(vec3<u32>(0u, 74061u, 4294967295u), vec4<f32>(2217f, -1104f, 105f, 650f)), Struct_2(Struct_1(1295f)), vec3<bool>(true, true, false), 32726u), Struct_4(4294967295u, Struct_3(vec3<u32>(17259u, 1u, 11648u), vec4<f32>(-867f, 1000f, 1069f, -1310f)), Struct_2(Struct_1(263f)), vec3<bool>(false, true, false), 70210u), Struct_4(1u, Struct_3(vec3<u32>(4294967295u, 67335u, 18400u), vec4<f32>(564f, 740f, -1000f, 113f)), Struct_2(Struct_1(-957f)), vec3<bool>(false, true, true), 0u), Struct_4(0u, Struct_3(vec3<u32>(19881u, 0u, 6823u), vec4<f32>(969f, -197f, -759f, 394f)), Struct_2(Struct_1(-495f)), vec3<bool>(false, false, true), 34902u), Struct_4(123907u, Struct_3(vec3<u32>(59368u, 54397u, 13790u), vec4<f32>(-1426f, 715f, -353f, -114f)), Struct_2(Struct_1(599f)), vec3<bool>(false, false, true), 4356u), Struct_4(83058u, Struct_3(vec3<u32>(4294967295u, 56055u, 4639u), vec4<f32>(-2024f, 405f, -278f, -1609f)), Struct_2(Struct_1(1384f)), vec3<bool>(true, false, true), 0u), Struct_4(12205u, Struct_3(vec3<u32>(1u, 5135u, 1u), vec4<f32>(-865f, -1153f, 145f, -484f)), Struct_2(Struct_1(-1914f)), vec3<bool>(true, false, true), 13408u), Struct_4(1u, Struct_3(vec3<u32>(0u, 98761u, 56365u), vec4<f32>(-335f, -547f, -1467f, -948f)), Struct_2(Struct_1(1000f)), vec3<bool>(false, false, true), 0u), Struct_4(0u, Struct_3(vec3<u32>(0u, 39180u, 10257u), vec4<f32>(-633f, -1054f, 1001f, -269f)), Struct_2(Struct_1(-271f)), vec3<bool>(false, false, true), 16722u), Struct_4(4294967295u, Struct_3(vec3<u32>(41215u, 126738u, 0u), vec4<f32>(-339f, 1052f, 1000f, -1318f)), Struct_2(Struct_1(197f)), vec3<bool>(true, false, true), 1u), Struct_4(20470u, Struct_3(vec3<u32>(1u, 2779u, 21080u), vec4<f32>(-240f, 1000f, 465f, 259f)), Struct_2(Struct_1(-459f)), vec3<bool>(true, true, false), 4294967295u), Struct_4(0u, Struct_3(vec3<u32>(1u, 53105u, 4294967295u), vec4<f32>(352f, -1936f, 530f, -165f)), Struct_2(Struct_1(-530f)), vec3<bool>(true, true, true), 13254u), Struct_4(45872u, Struct_3(vec3<u32>(52334u, 0u, 71742u), vec4<f32>(796f, 2208f, 696f, 2329f)), Struct_2(Struct_1(741f)), vec3<bool>(false, false, false), 4294967295u), Struct_4(96949u, Struct_3(vec3<u32>(4294967295u, 75866u, 64949u), vec4<f32>(-237f, -1306f, -693f, 2496f)), Struct_2(Struct_1(1101f)), vec3<bool>(false, true, true), 16602u), Struct_4(39107u, Struct_3(vec3<u32>(1u, 13724u, 33649u), vec4<f32>(994f, -1263f, -580f, -333f)), Struct_2(Struct_1(-2004f)), vec3<bool>(false, true, true), 23355u), Struct_4(0u, Struct_3(vec3<u32>(1u, 1u, 20192u), vec4<f32>(1164f, 529f, 305f, 718f)), Struct_2(Struct_1(-1000f)), vec3<bool>(false, true, false), 4294967295u), Struct_4(0u, Struct_3(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(-344f, 1902f, -973f, -846f)), Struct_2(Struct_1(-309f)), vec3<bool>(false, false, true), 1u));

var<private> global2: i32 = 47008i;

var<private> global3: array<f32, 19> = array<f32, 19>(396f, -381f, -1176f, 213f, -655f, 1030f, 1629f, -143f, 776f, -1607f, -432f, -1461f, 133f, -818f, -2301f, 330f, -220f, -518f, -1000f);

var<private> global4: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = countOneBits(~(vec2<u32>(14534u, abs(arg_1.a.x)) & vec2<u32>(_wgslsmith_sub_u32(0u, arg_1.a.x), abs(u_input.b.x))));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(~17164u, 38853u, ~_wgslsmith_mult_u32(var_0.x, 4294967295u), 1u)), vec4<u32>(global0.x, _wgslsmith_mod_u32(arg_1.a.x & 20859u, 4294967295u) << (66u % 32u), ~11343u, ~reverseBits(global0.x)));
    var_2 = u_input.b << (~max(u_input.b >> (vec4<u32>(var_2.x, 1u, 0u, u_input.b.x) % vec4<u32>(32u)), ~(~vec4<u32>(global0.x, global0.x, u_input.b.x, global0.x))) % vec4<u32>(32u));
    global3 = array<f32, 19>();
    return select(vec2<bool>(any(vec2<bool>(true, true)) || all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), 7673i >= -u_input.d), !vec2<bool>((arg_0 ^ arg_0) < min(arg_0, arg_0), false), vec2<bool>(true, true));
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    global4 = !(any(func_3(1i, Struct_3(global0.xyx, vec4<f32>(772f, arg_0.x, 420f, global3[_wgslsmith_index_u32(33043u, 19u)])), Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)])))) || (_wgslsmith_add_i32(_wgslsmith_clamp_i32(33451i, u_input.c, u_input.c), 1i) != 0i));
    global3 = array<f32, 19>();
    var var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~global0.wxx, u_input.b.yzw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 2500f, -1632f, arg_0.x), vec4<f32>(global3[_wgslsmith_index_u32(1u, 19u)], arg_0.x, 1579f, -1820f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 19u)], 468f, global3[_wgslsmith_index_u32(76047u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])))))));
    var var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(!(304f <= global3[_wgslsmith_index_u32(0u, 19u)]), true, true), !any(vec3<bool>(true, true, true))), vec3<bool>(true, true, (reverseBits(global0.x) | 1u) < _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(28452u, 0u, u_input.b.x))), vec3<bool>(false, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), true));
    var var_2 = 0i ^ _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2051i, 1i), u_input.a);
    return select(!var_1.yz, vec2<bool>(!(-4666i != (0i | u_input.a)), all(select(!var_1.zx, vec2<bool>(var_1.x, var_1.x), var_1.x))), false);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    let var_0 = !arg_0.x;
    global4 = any(!(!(!select(arg_0, vec4<bool>(arg_0.x, var_0, arg_0.x, arg_0.x), vec4<bool>(var_0, false, false, arg_0.x)))));
    let var_1 = select(func_2(vec3<f32>(804f, _wgslsmith_f_op_f32(step(958f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 19u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(58549u, 19u)])) + 409f))), vec2<bool>((!arg_0.x | false) && arg_0.x, false), false);
    let var_2 = func_3(-(~_wgslsmith_sub_i32(firstTrailingBit(1i), u_input.c << (u_input.b.x % 32u))), Struct_3(select(u_input.b.xyx, global0.wzz & min(u_input.b.zzz, u_input.b.yyx), var_1.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 1000f, 479f, -1313f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1104f, -715f, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global3[_wgslsmith_index_u32(global0.x, 19u)]))))))), Struct_2(Struct_1(-1079f)));
    global0 = ~min(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 20297u, 36114u, 4496u) & vec4<u32>(global0.x, global0.x, 1u, 17635u))), vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 4294967295u, _wgslsmith_clamp_u32(11616u, countOneBits(1u), _wgslsmith_mult_u32(global0.x, 41117u)), u_input.b.x));
    return _wgslsmith_clamp_i32(~(-76738i) | _wgslsmith_mod_i32(u_input.a, ~(-1i)), 35214i, -13002i) >> (global0.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec4<bool>(!any(vec3<bool>(false, false, true)), true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 19u)]))));
    global2 = ~(u_input.a ^ (u_input.a & ~67919i));
    let var_1 = Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, max(69382u, abs(global0.x << (56925u % 32u)))), 19u)]);
    var var_2 = vec2<bool>(global3[_wgslsmith_index_u32(select(1u, abs(global0.x) >> (_wgslsmith_mult_u32(global0.x, 15450u) % 32u), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), 19u)] >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.a, -811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(76932u, 19u)]))), false);
    global4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(global0.yxz, ~_wgslsmith_clamp_vec3_u32(u_input.b.zzz, vec3<u32>(0u, 1u, 0u), vec3<u32>(68792u, global0.x, global0.x))), ~u_input.b.xw, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 1675f, 1312f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(46268u, 19u)], global3[_wgslsmith_index_u32(1552u, 19u)], 376f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, var_1.a, -1303f))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-279f)), -1602f, _wgslsmith_f_op_f32(floor(var_1.a))))));
}

