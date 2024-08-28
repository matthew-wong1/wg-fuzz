struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-822f, -1322f, 586f, -1564f);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1388f, 899f, 1431f, -1326f), vec4<f32>(770f, -622f, 111f, -504f), vec4<f32>(-423f, 676f, -1000f, -1344f), vec4<f32>(441f, -1378f, 531f, 737f), vec4<f32>(573f, -1420f, -277f, -1085f), vec4<f32>(1523f, -338f, 724f, 525f), vec4<f32>(-1193f, 1036f, -1143f, -631f), vec4<f32>(689f, 1499f, 936f, 289f), vec4<f32>(-1451f, -1145f, -1613f, -393f), vec4<f32>(1000f, 891f, -510f, -1226f), vec4<f32>(201f, 1001f, -422f, -360f), vec4<f32>(-260f, 587f, 817f, -433f), vec4<f32>(644f, -371f, -255f, -125f), vec4<f32>(179f, -465f, 109f, 112f), vec4<f32>(-3220f, -272f, -236f, -1146f), vec4<f32>(959f, 347f, 471f, -842f), vec4<f32>(1122f, 1000f, 789f, 736f), vec4<f32>(-852f, 1900f, 1375f, 237f), vec4<f32>(467f, 887f, -1659f, -376f), vec4<f32>(-1176f, 795f, -527f, -1222f), vec4<f32>(-649f, -255f, -349f, 1199f), vec4<f32>(-977f, -1251f, 153f, -1124f), vec4<f32>(386f, 546f, 1002f, -1000f), vec4<f32>(-642f, -840f, 121f, -2502f));

var<private> global3: array<bool, 6>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(27296u, true, -8820i, vec2<u32>(55313u, 0u), vec3<u32>(4883u, 67169u, 14550u)), Struct_1(1u, false, i32(-2147483648), vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 38318u, 4294967295u)), Struct_1(116109u, true, 0i, vec2<u32>(56991u, 81010u), vec3<u32>(33900u, 124344u, 0u)), Struct_1(4294967295u, false, 55480i, vec2<u32>(26066u, 3627u), vec3<u32>(68400u, 10105u, 4294967295u)), Struct_1(33934u, true, 0i, vec2<u32>(0u, 1u), vec3<u32>(56010u, 0u, 42799u)), Struct_1(245u, false, -22681i, vec2<u32>(4700u, 6229u), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(1u, true, 32343i, vec2<u32>(0u, 36784u), vec3<u32>(52526u, 4849u, 4294967295u)), Struct_1(17897u, true, -13524i, vec2<u32>(4294967295u, 1u), vec3<u32>(26516u, 30071u, 31353u)), Struct_1(6878u, false, -22234i, vec2<u32>(0u, 31068u), vec3<u32>(1u, 40416u, 18218u)), Struct_1(31713u, false, -1i, vec2<u32>(142645u, 4294967295u), vec3<u32>(1u, 0u, 1u)), Struct_1(0u, false, -24800i, vec2<u32>(0u, 54238u), vec3<u32>(65743u, 0u, 1u)), Struct_1(4294967295u, false, 0i, vec2<u32>(1u, 1u), vec3<u32>(85263u, 40126u, 40298u)), Struct_1(72147u, true, 1i, vec2<u32>(1u, 8452u), vec3<u32>(60516u, 4294967295u, 34843u)), Struct_1(0u, false, 95806i, vec2<u32>(34116u, 1u), vec3<u32>(69596u, 0u, 47311u)), Struct_1(66191u, true, 17487i, vec2<u32>(62762u, 4294967295u), vec3<u32>(49778u, 75611u, 4294967295u)), Struct_1(43944u, false, 2147483647i, vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 57128u, 4294967295u)), Struct_1(7506u, false, i32(-2147483648), vec2<u32>(4294967295u, 0u), vec3<u32>(0u, 42138u, 0u)), Struct_1(86520u, false, -1i, vec2<u32>(50179u, 43123u), vec3<u32>(7538u, 1u, 66672u)), Struct_1(26922u, false, -26529i, vec2<u32>(4294967295u, 0u), vec3<u32>(4294967295u, 46699u, 1u)), Struct_1(7130u, false, -43519i, vec2<u32>(109266u, 4294967295u), vec3<u32>(75928u, 15426u, 1u)), Struct_1(63226u, true, 0i, vec2<u32>(13648u, 0u), vec3<u32>(49923u, 50713u, 70598u)), Struct_1(0u, false, -10568i, vec2<u32>(137831u, 30155u), vec3<u32>(8102u, 0u, 2147u)), Struct_1(4294967295u, true, i32(-2147483648), vec2<u32>(4294967295u, 1u), vec3<u32>(15492u, 14873u, 52093u)), Struct_1(1u, true, 1i, vec2<u32>(0u, 51224u), vec3<u32>(45231u, 1u, 16553u)), Struct_1(96690u, true, -32097i, vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 0u, 19974u)), Struct_1(11143u, true, 1i, vec2<u32>(0u, 4294967295u), vec3<u32>(12140u, 0u, 0u)), Struct_1(4294967295u, true, 2147483647i, vec2<u32>(4294967295u, 30255u), vec3<u32>(2333u, 0u, 29348u)), Struct_1(40957u, false, i32(-2147483648), vec2<u32>(36137u, 27948u), vec3<u32>(0u, 11341u, 39147u)), Struct_1(1u, false, 1i, vec2<u32>(4294967295u, 1u), vec3<u32>(1u, 906u, 22480u)), Struct_1(41242u, true, 13421i, vec2<u32>(61264u, 1u), vec3<u32>(1u, 0u, 1u)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global3 = array<bool, 6>();
    let var_0 = arg_0;
    global2 = array<vec4<f32>, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -496f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.wz))))));
    let var_2 = global4[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), ~_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(0u, u_input.b.x, 1u)), ~vec3<u32>(u_input.b.x, 4294967295u, 2571u), true), vec3<u32>(~0u, _wgslsmith_sub_u32(4294967295u, 119214u), 26752u))), 30u)];
    return ~var_2.e;
}

fn func_3() -> vec3<u32> {
    var var_0 = global4[_wgslsmith_index_u32(1u, 30u)];
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(33922u, 1u, var_0.e.x, var_0.e.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.a) | _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, var_0.e.x, 10545u, var_0.e.x), vec4<u32>(var_0.e.x, u_input.a.x, u_input.a.x, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)) + -1557f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(440f, _wgslsmith_f_op_f32(-global0.x)))), var_0.c, vec2<u32>(4294967295u, var_0.a & 12590u), vec3<u32>(var_0.a, abs(~4294967295u), ~(~(~32025u))));
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 30u)];
    return ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(var_1.d.x), u_input.b.x >> (u_input.b.x % 32u), var_2.d.x), _wgslsmith_mod_vec3_u32(var_2.e, ~var_1.e)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(881f, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x))))) + global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 1u), 24u)])));
    global1 = -2147483647i;
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~u_input.a.x, u_input.a.x, reverseBits(u_input.b.x)), vec3<u32>(~60928u, 4294967295u, u_input.a.x), vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 6u)] == global3[_wgslsmith_index_u32(u_input.a.x, 6u)])), ~(vec3<u32>(1u, u_input.b.x, u_input.b.x) ^ func_2(global0.x))), true, _wgslsmith_div_i32(-1i, ~(-40288i)), vec2<u32>(u_input.a.x, 0u), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a.x, 1u, 15032u))), max(~vec3<u32>(1u, 4294967295u, u_input.b.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.b.x), func_3(), vec3<u32>(0u, 1244u, 35475u)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-914f, _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1292f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -134f) + _wgslsmith_f_op_f32(-1000f - global0.x)), global0.x), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(select(~4294967295u, u_input.b.x, true), 24u)], _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a, u_input.b.x), 24u)]), !select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b), false)))), _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(54631u, 24u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(165f, 1237f)), _wgslsmith_f_op_f32(210f * 1352f), _wgslsmith_f_op_f32(-496f - global0.x), -663f)), all(select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.d.x, 6u)], true), vec3<bool>(global3[_wgslsmith_index_u32(21689u, 6u)], true, true), vec3<bool>(false, true, var_0.b)), vec3<bool>(var_0.b, var_0.b, false), !global3[_wgslsmith_index_u32(var_0.e.x, 6u)])))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.xxz) + _wgslsmith_f_op_vec3_f32(select(global0.zxw, global0.yxw, !(!vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 6u)], true)))))));
    return Struct_1(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(var_0.d.x, 42426u) >> (vec2<u32>(27167u, 6571u) % vec2<u32>(32u)))), vec2<u32>(var_0.e.x, var_0.e.x)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), !vec2<bool>(false, var_0.b))), firstTrailingBit(-1i), vec2<u32>(18270u, 38238u), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(105183u, 1u), firstTrailingBit(u_input.b.x), u_input.b.x), ~(~var_0.e))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    global0 = vec4<f32>(496f, global0.x, _wgslsmith_f_op_f32(trunc(global0.x)), global0.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -867f) + global0.x)));
    let var_1 = min(_wgslsmith_mod_vec3_i32(reverseBits(-countOneBits(vec3<i32>(-14105i, arg_3.c, 3596i))), -(select(vec3<i32>(36873i, 1i, 49374i), vec3<i32>(20647i, arg_2.x, 1i), vec3<bool>(arg_1.b, arg_1.b, false)) & (vec3<i32>(arg_1.c, -1i, arg_2.x) & vec3<i32>(arg_1.c, arg_0.c, arg_2.x)))), vec3<i32>(-31401i, arg_0.c, 17516i));
    let var_2 = arg_0;
    let var_3 = func_1();
    return vec4<bool>(!(!(false && var_2.b)) || (any(vec3<bool>(false, false, false)) && false), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))) == _wgslsmith_f_op_f32(round(1f))) != global3[_wgslsmith_index_u32(firstTrailingBit(reverseBits(u_input.a.x)), 6u)], true, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(17646u, ~u_input.b.x), u_input.b.x), u_input.a.x);
    let var_1 = any(!vec4<bool>(!(0u < var_0.x), false, var_0.x < 1u, global3[_wgslsmith_index_u32(17378u, 6u)]));
    let var_2 = 1578f;
    let var_3 = !(!(((1i >> (u_input.b.x % 32u)) < _wgslsmith_mult_i32(-2147483647i, 0i)) | !(false && var_1)));
    var var_4 = !select(!func_4(func_1(), global4[_wgslsmith_index_u32(2890u, 30u)], vec2<i32>(2147483647i, 28977i), Struct_1(4294967295u, global3[_wgslsmith_index_u32(var_0.x, 6u)], -1i, var_0, vec3<u32>(21993u, u_input.a.x, 4294967295u))), !select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 6u)], false, var_3, false), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], false, var_3, var_3), vec4<bool>(true, var_3, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(var_0.x, 6u)]), true), !vec4<bool>(var_1, var_3, true, var_1)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 6u)], var_3, !var_3, true));
    var var_5 = func_1();
    let var_6 = Struct_1(u_input.b.x | ~(~(var_5.d.x >> (var_0.x % 32u))), !(false || global3[_wgslsmith_index_u32(var_5.a, 6u)]), min(16197i, func_1().c), ~vec2<u32>(4294967295u, 4294967295u), vec3<u32>(73290u, ~(107344u | u_input.a.x) & ~(1u | u_input.a.x), ~min(var_5.e.x, 35594u)));
    let var_7 = !vec3<bool>(!var_4.x, all(vec4<bool>(var_5.b, var_4.x, global3[_wgslsmith_index_u32(func_3().x, 6u)], all(vec4<bool>(var_1, true, true, global3[_wgslsmith_index_u32(89912u, 6u)])))), var_4.x);
    let var_8 = !vec4<bool>(func_4(func_1(), global4[_wgslsmith_index_u32(~var_6.a, 30u)], vec2<i32>(-2546i, 2147483647i) & vec2<i32>(27098i, var_6.c), global4[_wgslsmith_index_u32(~u_input.a.x, 30u)]).x | true, true, true, var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(((abs(vec2<i32>(32601i, 0i)) & countOneBits(vec2<i32>(var_5.c, 2147483647i))) & ~vec2<i32>(var_6.c, -50670i)) & firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1109i, 19114i), _wgslsmith_clamp_vec2_i32(vec2<i32>(32502i, var_5.c), vec2<i32>(var_6.c, 11996i), vec2<i32>(var_6.c, var_6.c)))), ~_wgslsmith_mod_i32(25274i, ~firstTrailingBit(var_6.c)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2909f, global0.x)), var_2))), _wgslsmith_div_vec2_u32(vec2<u32>(~(~var_0.x), var_5.e.x), ~max(vec2<u32>(var_0.x, 1u), abs(vec2<u32>(4294967295u, 27855u)))));
}

