struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(2360u, 37936u, 37127u), vec3<u32>(81595u, 15113u, 21812u), vec3<u32>(18854u, 1u, 0u), vec3<u32>(8103u, 1u, 36081u), vec3<u32>(64055u, 27539u, 82515u), vec3<u32>(43484u, 1u, 36423u), vec3<u32>(22842u, 1u, 1u), vec3<u32>(0u, 94525u, 26313u), vec3<u32>(50242u, 52261u, 1u), vec3<u32>(61982u, 0u, 0u), vec3<u32>(49663u, 1556u, 52020u), vec3<u32>(58448u, 94774u, 57395u), vec3<u32>(77248u, 1u, 7647u), vec3<u32>(0u, 0u, 25240u), vec3<u32>(34870u, 1u, 19634u), vec3<u32>(68933u, 0u, 0u), vec3<u32>(33739u, 1912u, 0u), vec3<u32>(38122u, 0u, 2432u), vec3<u32>(11830u, 144755u, 25166u), vec3<u32>(8013u, 48554u, 46259u), vec3<u32>(0u, 16853u, 4294967295u), vec3<u32>(23608u, 26472u, 0u));

var<private> global1: Struct_1 = Struct_1(64462u, vec4<u32>(4294967295u, 24530u, 0u, 4294967295u), 1u);

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec3<f32>(1000f, 658f, 686f), Struct_4(Struct_3(Struct_2(2147483647i), -57179i, 1i))), Struct_5(vec3<f32>(-541f, 1356f, 1121f), Struct_4(Struct_3(Struct_2(-1i), 9631i, 0i))), Struct_5(vec3<f32>(-178f, -1050f, 657f), Struct_4(Struct_3(Struct_2(24019i), -17037i, 2147483647i))), Struct_5(vec3<f32>(840f, -1456f, 837f), Struct_4(Struct_3(Struct_2(53165i), 47378i, 35067i))), Struct_5(vec3<f32>(732f, 1376f, 916f), Struct_4(Struct_3(Struct_2(0i), 1i, 13843i))), Struct_5(vec3<f32>(252f, -1395f, -1000f), Struct_4(Struct_3(Struct_2(1i), -21371i, 1i))), Struct_5(vec3<f32>(-1353f, 867f, -998f), Struct_4(Struct_3(Struct_2(-1i), i32(-2147483648), 0i))), Struct_5(vec3<f32>(1608f, -821f, 749f), Struct_4(Struct_3(Struct_2(44928i), -16327i, 2147483647i))), Struct_5(vec3<f32>(1797f, -310f, -633f), Struct_4(Struct_3(Struct_2(0i), i32(-2147483648), i32(-2147483648)))), Struct_5(vec3<f32>(987f, 1109f, -1461f), Struct_4(Struct_3(Struct_2(i32(-2147483648)), 0i, 1i))), Struct_5(vec3<f32>(-633f, 284f, 1161f), Struct_4(Struct_3(Struct_2(i32(-2147483648)), 2147483647i, 32023i))), Struct_5(vec3<f32>(911f, 1848f, -631f), Struct_4(Struct_3(Struct_2(i32(-2147483648)), 2147483647i, i32(-2147483648)))), Struct_5(vec3<f32>(104f, 179f, -1000f), Struct_4(Struct_3(Struct_2(1i), -7225i, -15023i))), Struct_5(vec3<f32>(1201f, -989f, -1000f), Struct_4(Struct_3(Struct_2(-35390i), 2147483647i, 12528i))), Struct_5(vec3<f32>(1766f, -1066f, 2356f), Struct_4(Struct_3(Struct_2(22657i), i32(-2147483648), 25987i))), Struct_5(vec3<f32>(984f, 944f, -399f), Struct_4(Struct_3(Struct_2(0i), 76919i, 35022i))), Struct_5(vec3<f32>(333f, 268f, -1083f), Struct_4(Struct_3(Struct_2(573i), -1i, i32(-2147483648)))), Struct_5(vec3<f32>(1189f, -735f, 2245f), Struct_4(Struct_3(Struct_2(-538i), i32(-2147483648), i32(-2147483648)))), Struct_5(vec3<f32>(960f, -1119f, -683f), Struct_4(Struct_3(Struct_2(2147483647i), 39586i, 28235i))), Struct_5(vec3<f32>(249f, -2217f, 2780f), Struct_4(Struct_3(Struct_2(-27568i), -1i, -66420i))), Struct_5(vec3<f32>(-1500f, -735f, -422f), Struct_4(Struct_3(Struct_2(-20546i), -29120i, -1i))), Struct_5(vec3<f32>(-896f, -592f, -1352f), Struct_4(Struct_3(Struct_2(5607i), 1i, 9522i))), Struct_5(vec3<f32>(482f, 405f, 744f), Struct_4(Struct_3(Struct_2(33406i), 21342i, -19488i))), Struct_5(vec3<f32>(-793f, 472f, -686f), Struct_4(Struct_3(Struct_2(36755i), 1i, 1i))), Struct_5(vec3<f32>(-1513f, 100f, -160f), Struct_4(Struct_3(Struct_2(1776i), -9241i, -1i))), Struct_5(vec3<f32>(386f, 1000f, -335f), Struct_4(Struct_3(Struct_2(16705i), 8003i, -32943i))), Struct_5(vec3<f32>(449f, 1647f, 337f), Struct_4(Struct_3(Struct_2(11662i), 1i, 1i))), Struct_5(vec3<f32>(-338f, 276f, 403f), Struct_4(Struct_3(Struct_2(-4450i), i32(-2147483648), 3872i))), Struct_5(vec3<f32>(117f, 605f, 970f), Struct_4(Struct_3(Struct_2(2147483647i), -26089i, 0i))), Struct_5(vec3<f32>(-1027f, 1936f, -611f), Struct_4(Struct_3(Struct_2(-3598i), 47765i, 1i))), Struct_5(vec3<f32>(718f, 385f, 248f), Struct_4(Struct_3(Struct_2(i32(-2147483648)), -17048i, -4972i))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> i32 {
    return ~(-2147483647i);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    global3 = array<Struct_5, 31>();
    var var_0 = Struct_5(vec3<f32>(-2702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1994f, 22255u <= arg_2.c)) + -1124f), 1000f), Struct_4(Struct_3(Struct_2(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, u_input.a) ^ vec3<i32>(0i, -2147483647i, u_input.b.x), vec3<i32>(u_input.a, u_input.b.x, 2147483647i)), _wgslsmith_sub_i32(func_3(Struct_2(u_input.a)), -u_input.a))));
    global1 = Struct_1(1u, _wgslsmith_div_vec4_u32(arg_2.b, ~max(min(global1.b, vec4<u32>(21042u, arg_2.b.x, u_input.c.x, 42174u)), global1.b ^ global1.b)), ~(~(~min(29374u, 60748u))));
    var_0 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) - _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.x, -262f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(arg_3.x, global2.x, arg_3.x))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1101f, var_0.a.x, var_0.a.x), vec3<f32>(-359f, var_0.a.x, -232f)))))), Struct_4(var_0.b.a));
    return _wgslsmith_f_op_f32(ceil(var_0.a.x));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = min(u_input.c.x, ~(u_input.c.x << (0u % 32u)));
    global2 = vec3<bool>(!any(!global2.zz), any(vec4<bool>(true, global2.x, global2.x, false)), any(select(select(select(vec4<bool>(global2.x, false, false, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, global2.x, global2.x)), vec4<bool>(true, true, true, true), !global2.x), select(!vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, global2.x, true, false), select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, true, global2.x, true))), global2.x)));
    let var_1 = ~_wgslsmith_mod_vec4_u32(global1.b << (vec4<u32>(u_input.c.x, global1.b.x, u_input.c.x, 1u) % vec4<u32>(32u)), vec4<u32>(global1.a, global1.b.x, 1u, global1.a) >> ((vec4<u32>(41235u, 1u, global1.a, u_input.c.x) & global1.b) % vec4<u32>(32u))) ^ ~(~(~min(vec4<u32>(u_input.c.x, 39318u, 1u, 26085u), global1.b)));
    let var_2 = Struct_4(Struct_3(Struct_2(reverseBits(firstLeadingBit(u_input.a))), u_input.b.x, firstLeadingBit(arg_1)));
    let var_3 = vec4<bool>(select(!(_wgslsmith_f_op_f32(arg_0 * 784f) == _wgslsmith_f_op_f32(step(672f, -1186f))), !all(select(vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(false, true, false, true), true)), all(!vec3<bool>(global2.x, global2.x, global2.x))), false & (any(!global2.yy) & true), true, false);
    return true;
}

fn func_5(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = all(arg_2.zyx);
    return arg_2.wyw;
}

fn func_1() -> Struct_2 {
    global2 = func_5(global3[_wgslsmith_index_u32(global1.c, 31u)], vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f * 977f))), vec4<bool>(global2.x, false, select(func_4(_wgslsmith_f_op_f32(max(-1763f, -836f)), 30326i, _wgslsmith_f_op_f32(func_2(u_input.c.x, true, Struct_1(global1.a, global1.b, global1.a), vec3<bool>(false, global2.x, global2.x)))), true, global2.x), global2.x));
    global1 = Struct_1(abs(_wgslsmith_mult_u32(61766u, _wgslsmith_dot_vec3_u32(global1.b.yzx & global1.b.yzy, countOneBits(vec3<u32>(4294967295u, global1.a, 54347u))))), ~vec4<u32>(global1.c, u_input.c.x, ~_wgslsmith_mod_u32(55608u, u_input.c.x), 56359u), firstTrailingBit(~min(_wgslsmith_div_u32(u_input.c.x, 40650u), ~4294967295u)));
    let var_0 = global1.a >> (abs(abs(abs(~8881u))) % 32u);
    let var_1 = Struct_3(Struct_2(~_wgslsmith_mult_i32(-u_input.b.x, ~(-1i))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~0i, i32(-1i) * -18717i), reverseBits(~vec2<i32>(u_input.b.x, u_input.a))), abs(~max(vec2<i32>(1i, -1i), u_input.b.yw))), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, func_3(Struct_2(2147483647i))), -reverseBits(2147483647i))));
    var var_2 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.b.yyz, vec3<i32>(-9333i, -32866i, 65178i)), 37910i), u_input.b.yz, firstLeadingBit(abs(u_input.b.yy)));
    return Struct_2(45697i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 31>();
    let var_0 = global1.b.x;
    var var_1 = ~((-vec2<i32>(-1i, u_input.b.x) | reverseBits(vec2<i32>(u_input.a, u_input.a))) & u_input.b.xz);
    let var_2 = Struct_1(38374u, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global1.b, countOneBits(~global1.b)), ~vec4<u32>(min(567u, 0u), abs(1u), u_input.c.x, firstLeadingBit(0u))), _wgslsmith_add_u32(~abs(u_input.c.x), max(4294967295u, 21950u)) | _wgslsmith_div_u32(firstTrailingBit(~u_input.c.x), global1.c));
    var var_3 = !(!(!vec4<bool>(global2.x, global2.x, global2.x, all(vec3<bool>(global2.x, global2.x, true)))));
    var var_4 = Struct_3(func_1(), func_3(Struct_2(var_1.x)), firstTrailingBit(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.c.x << (var_2.c % 32u)), var_2.c, u_input.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(769f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1843f, 1815f, var_3.x))))))), vec2<f32>(_wgslsmith_f_op_f32(func_2(~firstLeadingBit(var_2.b.x), true, Struct_1(u_input.c.x, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, global1.b.x, u_input.c.x, 6575u), global1.b), 61483u), !var_3.wwz)), -1000f));
}

