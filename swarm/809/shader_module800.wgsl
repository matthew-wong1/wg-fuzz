struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 973f;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(0u, 0u, Struct_1(-1583f), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_1(-1059f)), Struct_2(0u, 1u, Struct_1(1001f), vec4<i32>(-51155i, 0i, 37839i, -17576i), Struct_1(386f)), Struct_2(1u, 1u, Struct_1(-133f), vec4<i32>(59630i, 2147483647i, 49243i, 17997i), Struct_1(-113f)), Struct_2(46888u, 1u, Struct_1(630f), vec4<i32>(-1i, 55024i, -1i, i32(-2147483648)), Struct_1(591f)), Struct_2(7729u, 4294967295u, Struct_1(1233f), vec4<i32>(-53613i, i32(-2147483648), 2147483647i, -1i), Struct_1(588f)), Struct_2(1u, 7484u, Struct_1(-1332f), vec4<i32>(2147483647i, 21439i, 2147483647i, -50751i), Struct_1(234f)), Struct_2(0u, 40912u, Struct_1(-499f), vec4<i32>(i32(-2147483648), 1i, 0i, -18256i), Struct_1(198f)), Struct_2(0u, 48875u, Struct_1(2232f), vec4<i32>(2147483647i, -2848i, i32(-2147483648), 55673i), Struct_1(1009f)), Struct_2(1u, 1u, Struct_1(585f), vec4<i32>(-34901i, 1i, 1i, -13064i), Struct_1(2361f)), Struct_2(4294967295u, 68501u, Struct_1(1047f), vec4<i32>(i32(-2147483648), 26373i, 15952i, -18164i), Struct_1(-871f)), Struct_2(0u, 4294967295u, Struct_1(430f), vec4<i32>(0i, -11793i, 2147483647i, 2147483647i), Struct_1(-715f)), Struct_2(1u, 4294967295u, Struct_1(-1300f), vec4<i32>(i32(-2147483648), 14150i, 0i, -55967i), Struct_1(-592f)), Struct_2(0u, 129280u, Struct_1(-860f), vec4<i32>(2147483647i, 0i, 1i, -35447i), Struct_1(-171f)), Struct_2(57923u, 7749u, Struct_1(1026f), vec4<i32>(-57512i, 23224i, 1315i, -34071i), Struct_1(-181f)), Struct_2(4294967295u, 24226u, Struct_1(870f), vec4<i32>(39855i, 7404i, 27179i, 21285i), Struct_1(432f)), Struct_2(1u, 0u, Struct_1(103f), vec4<i32>(-1i, 1i, -8308i, -29719i), Struct_1(677f)), Struct_2(4294967295u, 613u, Struct_1(-170f), vec4<i32>(-37922i, i32(-2147483648), 0i, i32(-2147483648)), Struct_1(379f)), Struct_2(51280u, 109008u, Struct_1(-324f), vec4<i32>(2147483647i, -26556i, 19829i, -51724i), Struct_1(-1000f)), Struct_2(52640u, 0u, Struct_1(847f), vec4<i32>(3815i, 2147483647i, i32(-2147483648), i32(-2147483648)), Struct_1(-1138f)), Struct_2(1u, 13534u, Struct_1(713f), vec4<i32>(i32(-2147483648), -1i, 0i, -1i), Struct_1(-1220f)), Struct_2(2518u, 77394u, Struct_1(323f), vec4<i32>(4399i, 2147483647i, 16528i, 1i), Struct_1(-466f)), Struct_2(11337u, 15885u, Struct_1(316f), vec4<i32>(-16850i, 25967i, i32(-2147483648), -11400i), Struct_1(648f)), Struct_2(65181u, 1u, Struct_1(-757f), vec4<i32>(i32(-2147483648), 18263i, -19742i, i32(-2147483648)), Struct_1(1635f)), Struct_2(60590u, 4294967295u, Struct_1(502f), vec4<i32>(-16296i, 30037i, 48555i, -17278i), Struct_1(1237f)), Struct_2(4294967295u, 58350u, Struct_1(-761f), vec4<i32>(-67354i, -13819i, i32(-2147483648), -2016i), Struct_1(452f)));

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(4294967295u, 0u, Struct_1(1213f), vec4<i32>(-9479i, -59994i, i32(-2147483648), 0i), Struct_1(-151f)), Struct_2(0u, 4294967295u, Struct_1(-351f), vec4<i32>(-60701i, 15515i, 1i, 0i), Struct_1(-1247f)), Struct_2(39769u, 1u, Struct_1(-1000f), vec4<i32>(-17723i, 4037i, 15768i, 12040i), Struct_1(752f)), Struct_2(79353u, 4294967295u, Struct_1(-1405f), vec4<i32>(4751i, i32(-2147483648), -1i, 21932i), Struct_1(500f)), Struct_2(15078u, 1u, Struct_1(105f), vec4<i32>(1i, -4750i, -41762i, -21237i), Struct_1(-1229f)), Struct_2(25064u, 17598u, Struct_1(952f), vec4<i32>(i32(-2147483648), -26039i, 2147483647i, 0i), Struct_1(-568f)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(~(~(~(~4294967295u))), ~83892u, Struct_1(1000f), arg_0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1775f, 1418f))));
    let var_1 = countOneBits(_wgslsmith_mult_vec4_i32(max(abs(min(vec4<i32>(var_0.d.x, 8281i, var_0.d.x, -1i), vec4<i32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), vec4<i32>(-24850i, 45209i, ~(-19775i), max(var_0.d.x, var_0.d.x))), vec4<i32>(var_0.d.x, 19500i, ~var_0.d.x & arg_0.d.x, -(~1671i))));
    var var_2 = min(min(firstTrailingBit(-arg_0.d.x), var_0.d.x), _wgslsmith_sub_i32((min(-63889i, arg_0.d.x) & 0i) ^ reverseBits(var_1.x), -select(var_0.d.x, var_1.x, true)));
    let var_3 = select(select(!vec3<bool>(true, false, select(true, true, true)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true), vec3<bool>(!all(vec3<bool>(false, true, true)), any(vec2<bool>(682f >= arg_0.e.a, true)), any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true));
    global1 = array<Struct_2, 25>();
    return var_1.yyw;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418f + 705f) - 387f), -618f) - _wgslsmith_div_f32(1f, 1f)));
    let var_1 = min(-abs(func_3(global1[_wgslsmith_index_u32(u_input.a, 25u)])), vec3<i32>(~(-1i), -2147483647i, 34463i));
    global0 = _wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(var_0.a * 729f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(906f, 355f, -1000f, 638f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + -1843f), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(var_0.a * -1106f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(901f, 1000f, 894f, 483f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 590f, var_0.a, var_0.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 2241f, var_0.a, 1529f) - vec4<f32>(var_0.a, -938f, var_0.a, -523f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, -1121f), vec4<f32>(-167f, var_0.a, var_0.a, 401f))))));
    var var_3 = Struct_1(var_0.a);
    return 483f;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_2, 6>();
    let var_0 = vec4<i32>(-_wgslsmith_dot_vec3_i32(max(vec3<i32>(-7163i, -2147483647i, 55965i), func_3(Struct_2(u_input.a, 77058u, Struct_1(arg_2.x), vec4<i32>(6025i, -1i, 1i, 1i), Struct_1(arg_2.x)))), vec3<i32>(-33859i, reverseBits(-1i), 0i)), -26413i, i32(-1i) * -2147483647i, select(-32209i, 27043i, false));
    let var_1 = _wgslsmith_f_op_f32(-arg_1);
    var var_2 = countOneBits(-(vec3<i32>(min(-41529i, -31923i), max(var_0.x, var_0.x), var_0.x) ^ vec3<i32>(2147483647i, -var_0.x, max(1i, var_0.x))));
    let var_3 = vec3<bool>(!(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-57766i, var_0.x, var_0.x), ~(-1i)) >= var_0.x), false, select(true, all(vec3<bool>(select(false, true, false), true, any(vec3<bool>(true, true, false)))), !(!any(vec2<bool>(false, false)))));
    return Struct_1(1f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global1 = array<Struct_2, 25>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 25u)];
    let var_1 = vec2<i32>(7383i << (var_0.b % 32u), _wgslsmith_mult_i32(var_0.d.x, ~(-(~31859i))));
    global1 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_f_op_f32(-var_0.e.a);
    return Struct_2(_wgslsmith_add_u32(56377u, u_input.c), _wgslsmith_sub_u32(4341u, ~(var_0.b | (var_0.b << (var_0.a % 32u)))), var_0.e, vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.d.yx, vec2<i32>(var_1.x, -1i), var_0.d.zw), vec2<i32>(var_1.x, var_0.d.x)), reverseBits(2147483647i), var_1.x, var_0.d.x), arg_1);
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    global0 = arg_0;
    var var_0 = ~(~(arg_1.a ^ _wgslsmith_div_u32(u_input.b, firstTrailingBit(arg_1.b))));
    let var_1 = func_5(arg_1.e, arg_1.c);
    let var_2 = Struct_2(_wgslsmith_clamp_u32(0u, var_1.b, abs(var_1.a & u_input.a)) | max(u_input.c, ~var_1.b), countOneBits(4294967295u), func_5(func_4(_wgslsmith_div_u32(~6805u, 29508u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.a), _wgslsmith_f_op_f32(max(arg_1.e.a, arg_1.e.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-662f, 1225f, -711f, -384f)))))), func_4(31268u, _wgslsmith_f_op_f32(912f * 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 968f, -540f, arg_0)))))).e, vec4<i32>(_wgslsmith_div_i32(1i, -firstTrailingBit(var_1.d.x)), 1i, _wgslsmith_mod_i32(i32(-1i) * -arg_1.d.x, firstTrailingBit(arg_1.d.x)), 16942i), func_4(firstLeadingBit(~arg_1.b), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-587f + arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1.e.a, arg_0, arg_0) + vec4<f32>(var_1.c.a, arg_1.e.a, 998f, 727f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(136f, -846f, var_1.e.a, arg_0)))) - vec4<f32>(_wgslsmith_f_op_f32(-1436f + -566f), _wgslsmith_f_op_f32(160f + 1215f), -898f, _wgslsmith_f_op_f32(arg_0 + arg_0)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(749f - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.c.a, arg_0), -801f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e.a)) - _wgslsmith_f_op_f32(var_2.e.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 1325f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))) * _wgslsmith_f_op_f32(arg_0 * 241f)))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec2<bool> {
    let var_0 = vec2<f32>(-231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) + arg_0.c.a));
    var var_1 = arg_0;
    global1 = array<Struct_2, 25>();
    var var_2 = Struct_2(~(~(~4294967295u)), _wgslsmith_div_u32(arg_0.b, u_input.c), Struct_1(-641f), ~vec4<i32>(-16755i, -_wgslsmith_dot_vec2_i32(var_1.d.xw, var_1.d.zw), var_1.d.x, _wgslsmith_add_i32(-14502i, var_1.d.x << (arg_0.b % 32u))), func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1688f - var_1.c.a))), func_5(func_4(0u, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a, -373f, arg_0.e.a, -105f))), arg_0.e)));
    let var_3 = var_2.c;
    return !vec2<bool>(all(vec4<bool>(any(vec4<bool>(arg_1, arg_1, false, false)), true, select(true, false, false), arg_1)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(38621u, 1u, Struct_1(588f), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 29249i), vec2<i32>(12223i, 2147483647i)), max(31582i, 33406i), -1i, -8726i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2039f))), !select(any(vec3<bool>(true, true, true)), true, true));
    global2 = array<Struct_2, 6>();
    let var_1 = func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(635f, -225f))))))), global2[_wgslsmith_index_u32(abs(~(~u_input.b) & u_input.c), 6u)]);
    let var_2 = countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, u_input.c) | vec3<u32>(u_input.c, u_input.c, 0u)), min(reverseBits(vec3<u32>(44128u, u_input.b, u_input.c)), vec3<u32>(1u, u_input.b, u_input.b))) >> (~max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1682u), vec3<u32>(12133u, u_input.b, u_input.b)), ~vec3<u32>(32314u, 34957u, u_input.a)) % vec3<u32>(32u)));
    var var_3 = i32(-1i) * -2147483647i;
    var var_4 = _wgslsmith_mult_u32(~(~1u & var_2.x), reverseBits(~abs(var_2.x << (0u % 32u))));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-657f - _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(var_1.a - -1000f))));
    var_0 = vec2<bool>(!((true | any(vec3<bool>(var_0.x, false, true))) && true), all(vec2<bool>(var_0.x, all(select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), var_0.x)))));
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~min(4294967295u, 45036u), var_2.x) << (~(~(~43009u)) % 32u), _wgslsmith_clamp_i32(1i, 5512i, -14583i), var_2.x);
}

