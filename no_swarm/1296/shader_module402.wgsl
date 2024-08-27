struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(vec4<i32>(0i, 0i, 3625i, -45350i), vec4<i32>(i32(-2147483648), -18467i, -43325i, -1i)), Struct_4(vec4<i32>(-67801i, 13142i, 8989i, -12344i), vec4<i32>(34182i, i32(-2147483648), i32(-2147483648), 47617i)), Struct_4(vec4<i32>(25033i, 2147483647i, i32(-2147483648), 44846i), vec4<i32>(0i, -21165i, 1i, 21287i)), Struct_4(vec4<i32>(33791i, -1i, 6050i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 1i, 0i)), Struct_4(vec4<i32>(0i, 0i, -43003i, 27265i), vec4<i32>(-27258i, 1i, -9659i, -1i)), Struct_4(vec4<i32>(2649i, -26858i, i32(-2147483648), -1865i), vec4<i32>(-1i, i32(-2147483648), 0i, -34018i)), Struct_4(vec4<i32>(-8755i, -2948i, -18631i, 2147483647i), vec4<i32>(22414i, -32954i, i32(-2147483648), 1i)), Struct_4(vec4<i32>(2147483647i, -1i, 1i, -17135i), vec4<i32>(0i, 2147483647i, -34732i, -13129i)), Struct_4(vec4<i32>(-36559i, 0i, 0i, -31481i), vec4<i32>(i32(-2147483648), -3302i, 2147483647i, 28707i)), Struct_4(vec4<i32>(0i, 26096i, 0i, 27630i), vec4<i32>(-16421i, -9890i, 42847i, 1i)), Struct_4(vec4<i32>(1i, -52934i, 0i, -35416i), vec4<i32>(2147483647i, 17401i, i32(-2147483648), -1i)), Struct_4(vec4<i32>(1i, -1i, -1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -32864i, 9674i)), Struct_4(vec4<i32>(20787i, 53573i, -1i, -1i), vec4<i32>(-34156i, -12430i, i32(-2147483648), -1i)), Struct_4(vec4<i32>(-1i, i32(-2147483648), 12893i, 0i), vec4<i32>(1i, 22941i, -7847i, -1i)), Struct_4(vec4<i32>(1i, -21073i, 27768i, 58125i), vec4<i32>(4063i, -80036i, -1i, -30718i)), Struct_4(vec4<i32>(-28616i, 25740i, 1i, 0i), vec4<i32>(-30186i, 13439i, 38672i, 38335i)), Struct_4(vec4<i32>(4546i, 1i, i32(-2147483648), -3768i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1334i, 5687i)), Struct_4(vec4<i32>(0i, -1i, i32(-2147483648), -18646i), vec4<i32>(75563i, 2147483647i, i32(-2147483648), -10354i)), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 0i, 1i, -30375i)), Struct_4(vec4<i32>(62436i, 8438i, 1i, -7947i), vec4<i32>(-1i, 3484i, 2147483647i, -1i)), Struct_4(vec4<i32>(i32(-2147483648), -4632i, 28518i, 14145i), vec4<i32>(i32(-2147483648), 65497i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(2147483647i, 0i, -21421i, 2147483647i), vec4<i32>(69813i, -25317i, i32(-2147483648), -23223i)), Struct_4(vec4<i32>(i32(-2147483648), -20116i, -38095i, -20227i), vec4<i32>(i32(-2147483648), 52927i, -50301i, 15698i)), Struct_4(vec4<i32>(0i, -31318i, 10398i, 2147483647i), vec4<i32>(61661i, 2147483647i, -4133i, -1i)), Struct_4(vec4<i32>(-19807i, -6700i, i32(-2147483648), -34194i), vec4<i32>(-55358i, 29342i, i32(-2147483648), i32(-2147483648))), Struct_4(vec4<i32>(-1i, 6892i, 1i, -712i), vec4<i32>(1i, 1i, -1i, -39254i)));

var<private> global1: bool = false;

var<private> global2: array<u32, 30>;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_2(Struct_1(vec2<f32>(-821f, 2382f), true), -1i, 0i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(721f, 882f), true), -10061i, 2147483647i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1273f, -622f), false), -1i, 3620i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(2098f, 1000f), false), 2873i, -2725i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(492f, -255f), true), 2147483647i, 0i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1136f, -373f), true), i32(-2147483648), 2147483647i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(585f, 385f), false), 1094i, 1i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-810f, -462f), false), -1i, -1i), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(-338f, -1078f), true), 2147483647i, 13831i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(116f, -2096f), true), -70775i, 0i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(606f, -1347f), false), -1i, 65288i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1000f, -1000f), false), 1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-876f, -828f), true), 36730i, -15210i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(1936f, -835f), false), 11786i, i32(-2147483648)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(467f, -448f), false), -28603i, 2147483647i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(879f, -450f), false), 16397i, -23741i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-562f, 431f), true), -15153i, 1i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(1000f, 1000f), true), -4037i, 2147483647i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-1000f, -259f), false), 2147483647i, 4020i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(1000f, -1211f), false), -1i, 42627i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(-100f, 1048f), true), 21007i, 25571i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(428f, -1267f), true), -17710i, 63010i), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(854f, 443f), true), i32(-2147483648), 1i), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(454f, -1185f), true), 18666i, 33515i), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(314f, -923f), false), i32(-2147483648), 22363i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(632f, 417f), false), 2147483647i, 20658i), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(-499f, 2099f), true), -1i, 21977i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(623f, -1536f), true), -1872i, 0i), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<f32>(-2000f, 2165f), false), -27120i, -26134i), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<f32>(1662f, 316f), true), -1i, i32(-2147483648)), vec2<bool>(true, false)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    global1 = !(all(select(!vec4<bool>(arg_3.b, true, arg_3.b, true), vec4<bool>(true, arg_3.b, arg_1.a.b, arg_3.b), vec4<bool>(true, arg_1.a.b, true, arg_3.b))) | arg_1.a.b);
    global3 = array<Struct_3, 30>();
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(((12937u | u_input.d) ^ max(arg_0, 32893u)) << (u_input.c.x % 32u), abs(_wgslsmith_mult_u32(4294967295u, arg_0 | 4294967295u))), ~abs(u_input.c.zx));
    global3 = array<Struct_3, 30>();
    global1 = true;
    return arg_3.b & (firstTrailingBit(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, var_0.x), 30u)]) != ~abs(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(var_0.x, 30u)])));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec2<i32> {
    global3 = array<Struct_3, 30>();
    let var_0 = Struct_5(!(!select(select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(false, arg_1.a.b), true), select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(false, arg_1.a.b)), func_3(global2[_wgslsmith_index_u32(14777u, 30u)], arg_1, global0[_wgslsmith_index_u32(28250u, 26u)], Struct_1(vec2<f32>(588f, -1223f), false)))), 42533u, _wgslsmith_clamp_vec2_u32(select(~(u_input.c.xy & u_input.c.yy), vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], u_input.d)), true), vec2<u32>(0u, abs(_wgslsmith_div_u32(0u, 7684u))), ~reverseBits(u_input.c.zx)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(203f, arg_0) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(-320f, 136f))), true));
    global1 = !(arg_1.a.b | (_wgslsmith_f_op_f32(step(arg_1.a.a.x, -1817f)) != arg_1.a.a.x)) | arg_1.a.b;
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1126f, var_0.d.a.x), vec2<f32>(-209f, 600f)))), !any(vec3<bool>(var_0.a.x, arg_1.a.b, true))), u_input.a.x, ~(~abs(33514i))), !(!var_0.a));
    var_1 = Struct_3(arg_1, select(!vec2<bool>(var_1.b.x, arg_1.a.b), var_1.b, var_0.d.a.x < 1506f));
    return firstTrailingBit(vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -48767i), vec2<i32>(2147483647i, 10270i)), countOneBits(u_input.b)), reverseBits(_wgslsmith_div_i32(-41842i, arg_1.b) | (i32(-1i) * -11730i))));
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> bool {
    global2 = array<u32, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-404f, 1332f) * vec2<f32>(-609f, 113f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(279f, -532f))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, 874f) - vec2<f32>(981f, 1645f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(792f, -1000f) * vec2<f32>(-2619f, 813f)))), vec2<f32>(1f, 168f))), !(_wgslsmith_dot_vec2_i32(func_2(561f, Struct_2(Struct_1(vec2<f32>(-1078f, 684f), true), 0i, arg_0.a.x)), -u_input.a.xy) > ~(-1i ^ arg_2.b.x)));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, var_0.a.x)), select(var_0.b, !var_0.b, false)), 31272i, -18323i), vec2<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b), var_0.b)), false));
    let var_2 = true;
    var var_3 = arg_0;
    return false;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_4, 26>();
    global3 = array<Struct_3, 30>();
    let var_0 = 1i;
    let var_1 = ~arg_0.c;
    global2 = array<u32, 30>();
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1547f, 565f));
    var var_1 = _wgslsmith_clamp_u32(abs(u_input.d), _wgslsmith_clamp_u32(reverseBits(0u), _wgslsmith_mod_u32(~1u, ~global2[_wgslsmith_index_u32(4294967295u, 30u)]), 4294967295u), 4294967295u) << (func_4(Struct_5(vec2<bool>(func_1(global0[_wgslsmith_index_u32(u_input.d, 26u)], global2[_wgslsmith_index_u32(17675u, 30u)], Struct_4(vec4<i32>(-2147483647i, u_input.a.x, u_input.b, -29353i), vec4<i32>(1i, u_input.b, u_input.a.x, u_input.b))), true), min(firstTrailingBit(global2[_wgslsmith_index_u32(54948u, 30u)]), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(30428u, 30u)], 86397u)), select(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(11960u, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)])), ~vec2<u32>(u_input.d, u_input.d), false), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1969f, -2115f)), true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c, ~u_input.c), 30u)], Struct_2(Struct_1(vec2<f32>(1818f, 977f), true), 28787i, _wgslsmith_mod_i32(18537i | u_input.b, _wgslsmith_mult_i32(u_input.b, 60627i)))) % 32u);
    var var_2 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(-562f + -2312f);
    var var_3 = !(!any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), true)));
    global3 = array<Struct_3, 30>();
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1051f - -358f))), 621f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-944f, -559f)), _wgslsmith_div_vec2_f32(vec2<f32>(-353f, 1050f), vec2<f32>(-644f, 844f)))))), true == !func_3(u_input.d, Struct_2(Struct_1(vec2<f32>(-1238f, 200f), true), -33426i, u_input.a.x), global0[_wgslsmith_index_u32(25549u, 26u)], Struct_1(vec2<f32>(734f, -143f), true)));
    var_3 = !var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 30u)], u_input.d, global2[_wgslsmith_index_u32(u_input.d, 30u)])), firstLeadingBit(~vec4<u32>(global2[_wgslsmith_index_u32(36627u, 30u)], u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)], u_input.c.x))), countOneBits(~(vec4<u32>(19085u, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], 0u, global2[_wgslsmith_index_u32(11516u, 30u)]) ^ vec4<u32>(4294967295u, 4294967295u, u_input.c.x, global2[_wgslsmith_index_u32(17692u, 30u)])))), ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(49147u, 4294967295u, 0u, 4294967295u) | vec4<u32>(u_input.c.x, 8806u, global2[_wgslsmith_index_u32(u_input.d, 30u)], 4294967295u)), select(vec4<u32>(7887u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 64654u, global2[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61939u, 30u)], 30u)], 61191u, 50213u, u_input.c.x), var_4.b) >> (abs(vec4<u32>(1u, 57122u, global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(6004u, 30u)])) % vec4<u32>(32u))), _wgslsmith_f_op_f32(round(136f)));
}

