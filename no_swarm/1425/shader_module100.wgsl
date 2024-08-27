struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
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

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-1i, -35888i, -1i, 0i), vec4<i32>(i32(-2147483648), 45618i, -1i, i32(-2147483648)), vec4<i32>(-17102i, 2147483647i, -3383i, 1359i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), vec4<i32>(1i, -68619i, 0i, -405i), vec4<i32>(-1i, 12587i, -30213i, 1i), vec4<i32>(1i, 1i, -1i, 0i), vec4<i32>(49384i, 1i, i32(-2147483648), 43108i), vec4<i32>(0i, 60667i, -13278i, -13204i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 13473i), vec4<i32>(41789i, 31976i, i32(-2147483648), 1i), vec4<i32>(-11380i, 55276i, 1995i, 1i), vec4<i32>(28230i, 4218i, 706i, 9708i), vec4<i32>(10639i, 1i, -10204i, 2147483647i), vec4<i32>(2147483647i, -20330i, -17990i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 32004i, i32(-2147483648), i32(-2147483648)), vec4<i32>(16927i, 0i, 2147483647i, -48202i), vec4<i32>(0i, -8574i, 0i, 39360i), vec4<i32>(-17279i, -92992i, -47634i, 33937i), vec4<i32>(i32(-2147483648), -1i, -53044i, 1i), vec4<i32>(-1i, i32(-2147483648), -11462i, 10086i), vec4<i32>(9776i, 1i, -38526i, i32(-2147483648)));

var<private> global1: array<i32, 15>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(552f, -1499f, 1085f, 232f), vec4<f32>(735f, 1358f, 578f, -2019f), vec4<f32>(723f, -803f, 210f, 247f), vec4<f32>(456f, 221f, -2411f, -1000f), vec4<f32>(-1000f, 1050f, -809f, 716f), vec4<f32>(-1228f, -806f, 1409f, -743f), vec4<f32>(-623f, 763f, -963f, -1334f), vec4<f32>(-111f, 613f, -417f, 1914f), vec4<f32>(359f, 223f, 1776f, 647f), vec4<f32>(-1792f, -1000f, -1105f, 597f), vec4<f32>(-820f, 964f, -581f, 656f), vec4<f32>(-658f, -1604f, -341f, 346f), vec4<f32>(-405f, -410f, 871f, -1700f), vec4<f32>(-1089f, -1491f, 124f, -905f), vec4<f32>(-715f, 481f, 1000f, 1441f), vec4<f32>(1597f, -1000f, 1317f, -720f), vec4<f32>(1206f, 549f, 1000f, 2471f), vec4<f32>(1241f, 984f, -715f, 1216f), vec4<f32>(651f, 504f, -827f, 195f), vec4<f32>(487f, -1061f, -1000f, 151f), vec4<f32>(-401f, -555f, -208f, -1748f), vec4<f32>(251f, -306f, -393f, -247f), vec4<f32>(715f, -339f, -208f, 808f), vec4<f32>(497f, 175f, 345f, 230f), vec4<f32>(845f, -548f, 1197f, -949f), vec4<f32>(134f, -1199f, -617f, 420f), vec4<f32>(1747f, 698f, 1530f, 1302f), vec4<f32>(2187f, -163f, -1000f, 1806f), vec4<f32>(447f, -204f, 1960f, -455f), vec4<f32>(-274f, 904f, -553f, -182f), vec4<f32>(-875f, 420f, -557f, -1120f), vec4<f32>(-746f, 458f, -1289f, 1000f));

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.a, u_input.e.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1265f, 1448f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2563f), _wgslsmith_f_op_f32(select(862f, 1636f, arg_0.x))) - vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(ceil(1257f)), _wgslsmith_f_op_f32(f32(-1f) * -279f))), vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x | u_input.e.x, 52441u, 0u), 0u), _wgslsmith_clamp_vec3_i32(u_input.d.yxw, _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b), u_input.d.zwz), max(global2.xyx ^ vec3<i32>(0i, 59618i, -1i), -global2.xww))));
    var var_1 = true;
    var var_2 = !select(vec4<bool>(false, (var_0.a.d.x | var_0.a.d.x) >= global2.x, false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x)))), !(!(!vec4<bool>(true, true, arg_0.x, true))), !select(select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, false)), !vec4<bool>(arg_0.x, false, false, true), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))));
    var_2 = vec4<bool>(all(select(vec3<bool>(4294967295u == var_0.a.c.x, !arg_0.x, true), !(!var_2.wxx), !var_2.wyx)), all(select(select(!vec4<bool>(var_2.x, arg_0.x, arg_0.x, false), vec4<bool>(var_2.x, var_2.x, true, var_2.x), all(vec2<bool>(arg_0.x, var_2.x))), vec4<bool>(!arg_0.x, 9417u >= var_0.a.a, var_2.x, true), false)), arg_0.x, true);
    let var_3 = Struct_2(var_0.a);
    return ~_wgslsmith_div_u32(0u | u_input.a, _wgslsmith_div_u32(0u, 4294967295u));
}

fn func_2() -> Struct_2 {
    global3 = array<vec4<f32>, 32>();
    let var_0 = Struct_1(~(~u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(442u, 13u)], vec4<f32>(1803f, 1319f, -144f, 921f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1181f + 830f) - _wgslsmith_f_op_f32(-978f * -356f)), _wgslsmith_f_op_f32(min(-1188f, _wgslsmith_f_op_f32(f32(-1f) * -421f))), _wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(f32(-1f) * -586f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-981f, 907f)) + _wgslsmith_f_op_f32(f32(-1f) * -530f)))), ~(~vec2<u32>(44848u, func_3(vec3<bool>(false, false, false)))), -_wgslsmith_mod_vec3_i32(u_input.b, abs(vec3<i32>(u_input.b.x, -55456i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.xyx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.wxy * var_0.b.xwy)))) * var_0.b.xxx);
    let var_2 = vec2<bool>(true, true);
    global2 = -firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.c.x, ~u_input.a), 22u)]);
    return Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(sign(global4[_wgslsmith_index_u32(func_3(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(false, true, var_2.x))), 13u)])), u_input.e.xx, firstTrailingBit(vec3<i32>(10400i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x))));
}

fn func_1() -> vec3<i32> {
    global3 = array<vec4<f32>, 32>();
    var var_0 = u_input.a;
    var var_1 = countOneBits(select(-min(_wgslsmith_sub_i32(u_input.d.x, global1[_wgslsmith_index_u32(u_input.a, 15u)]), abs(-1i)), -1i, true != all(vec4<bool>(true, true, true, true))));
    global4 = array<vec4<f32>, 13>();
    var var_2 = func_2();
    return ~_wgslsmith_div_vec3_i32(u_input.d.xzy, -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], var_2.a.d.x, global2.x) & firstTrailingBit(select(var_2.a.d, u_input.b, false)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 359f;
    global3 = array<vec4<f32>, 32>();
    var var_1 = func_1().zx;
    var var_2 = max(~vec4<u32>(u_input.c.x, 1u, 43902u, u_input.e.x) ^ ~max(vec4<u32>(0u, 1u, arg_1.a, 50060u), vec4<u32>(1u, arg_1.a, arg_1.a, arg_1.c.x)), abs(select(~vec4<u32>(arg_1.a, arg_1.a, 48967u, arg_1.a), vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.c.x) ^ vec4<u32>(arg_1.a, u_input.c.x, 1u, 1u), vec4<bool>(true, true, true, false)))) & (~vec4<u32>(arg_1.a & 44047u, 4294967295u, firstLeadingBit(arg_1.a), u_input.c.x) | (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 32189u, u_input.e.x, u_input.a), vec4<u32>(arg_1.a, arg_1.a, 92898u, u_input.a), vec4<u32>(u_input.e.x, 0u, u_input.a, arg_1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(52603u, 0u, 0u, u_input.a), vec4<u32>(27244u, u_input.e.x, 0u, 13180u))) ^ vec4<u32>(arg_1.c.x, arg_1.c.x, _wgslsmith_add_u32(u_input.a, u_input.e.x), arg_1.a | 40863u)));
    var var_3 = vec4<u32>(72340u, ~firstLeadingBit(_wgslsmith_mult_u32(firstLeadingBit(arg_1.a), ~var_2.x)), 25839u, var_2.x);
    return func_2().a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = func_2();
    global1 = array<i32, 15>();
    let var_1 = func_2();
    var_0 = Struct_2(Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x - var_0.a.b.x) * 654f), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(round(var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x * var_0.a.b.x))), min(~(~arg_0.zz), firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.yz, vec2<u32>(arg_2.x, arg_0.x)))), vec3<i32>(24046i, 0i, _wgslsmith_sub_i32(var_0.a.d.x, var_1.a.d.x) >> (58077u % 32u))));
    var var_2 = arg_1;
    return abs(~(~(-1i & u_input.d.x)) >> (_wgslsmith_add_u32(~var_1.a.a, max(1u, ~u_input.a)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(23117i, _wgslsmith_sub_i32(i32(-1i) * -firstLeadingBit(945i), func_5(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e, u_input.e), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(15598u, 1u, 4294967295u))), Struct_1(1u, _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(4294967295u, 13u)]), ~u_input.c.yx, vec3<i32>(1i, -1i, global2.x)), _wgslsmith_mod_vec2_u32(~u_input.e.xx, ~vec2<u32>(u_input.c.x, 23271u)), func_4(func_1(), Struct_1(u_input.e.x, vec4<f32>(-623f, -1774f, 559f, 1000f), vec2<u32>(u_input.e.x, u_input.c.x), vec3<i32>(34083i, global1[_wgslsmith_index_u32(15223u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]))))));
    global4 = array<vec4<f32>, 13>();
    var var_1 = _wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_add_i32(-max(_wgslsmith_add_i32(u_input.b.x, global2.x), 8883i), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -282f)))))));
}

