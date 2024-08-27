struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-9080i, 0i, 16410i, 3425i, i32(-2147483648), -106589i, -1i, i32(-2147483648), i32(-2147483648), 0i, 0i, 48885i, 0i, -1i, i32(-2147483648), 12048i);

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(1u, 73554u), vec3<u32>(4294967295u, 4294967295u, 36702u), vec3<f32>(1521f, -1186f, -1000f), -1060f, 0i), Struct_1(vec2<u32>(0u, 26674u), vec3<u32>(44966u, 0u, 4294967295u), vec3<f32>(-817f, 2463f, 105f), 197f, -1i), Struct_1(vec2<u32>(1u, 28111u), vec3<u32>(96315u, 4294967295u, 1u), vec3<f32>(-2905f, -509f, 1138f), -1337f, -39987i), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 1u, 6639u), vec3<f32>(312f, 129f, 835f), -736f, 2147483647i), Struct_1(vec2<u32>(28289u, 1u), vec3<u32>(33170u, 1u, 0u), vec3<f32>(863f, 405f, -607f), 1000f, -30136i), Struct_1(vec2<u32>(0u, 41359u), vec3<u32>(4294967295u, 72124u, 59041u), vec3<f32>(1821f, -2143f, 2114f), 1109f, 1i), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(13164u, 33395u, 67169u), vec3<f32>(-468f, 2089f, 209f), 903f, 13414i), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(47330u, 18646u, 1u), vec3<f32>(134f, 418f, -939f), -818f, -1i), Struct_1(vec2<u32>(7899u, 1u), vec3<u32>(4294967295u, 45234u, 75546u), vec3<f32>(146f, -828f, 1413f), 2012f, 14905i), Struct_1(vec2<u32>(4u, 47519u), vec3<u32>(20887u, 0u, 9584u), vec3<f32>(267f, -174f, -1901f), -610f, 23585i), Struct_1(vec2<u32>(6721u, 62105u), vec3<u32>(1u, 31302u, 37822u), vec3<f32>(133f, 161f, -1350f), -189f, 25156i), Struct_1(vec2<u32>(1u, 12453u), vec3<u32>(0u, 1849u, 0u), vec3<f32>(119f, 510f, -592f), -1000f, -64431i), Struct_1(vec2<u32>(62579u, 4294967295u), vec3<u32>(60964u, 11480u, 0u), vec3<f32>(1046f, -2036f, -578f), 582f, 28667i), Struct_1(vec2<u32>(25213u, 4294967295u), vec3<u32>(0u, 44619u, 14546u), vec3<f32>(1832f, 557f, -535f), -1000f, 44669i), Struct_1(vec2<u32>(4294967295u, 17611u), vec3<u32>(0u, 1u, 53935u), vec3<f32>(-645f, -829f, -597f), -1523f, 20298i), Struct_1(vec2<u32>(49509u, 13749u), vec3<u32>(1u, 0u, 54655u), vec3<f32>(939f, -643f, -579f), -1279f, i32(-2147483648)), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(4294967295u, 4294967295u, 78235u), vec3<f32>(1694f, 234f, -714f), 2230f, -69331i), Struct_1(vec2<u32>(20241u, 1u), vec3<u32>(18091u, 103525u, 1u), vec3<f32>(-163f, -205f, 251f), 415f, 22362i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 19613u, 0u), vec3<f32>(653f, 1000f, -308f), -366f, i32(-2147483648)), Struct_1(vec2<u32>(0u, 0u), vec3<u32>(13149u, 4294967295u, 1u), vec3<f32>(1972f, -387f, 390f), 1143f, -55346i));

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(51764u, 1u), vec3<u32>(4294967295u, 61016u, 1u), vec3<f32>(243f, -542f, -1000f), 1058f, 14323i), Struct_1(vec2<u32>(1u, 1346u), vec3<u32>(35569u, 21273u, 75247u), vec3<f32>(-321f, -328f, -1596f), -1224f, 2147483647i), Struct_1(vec2<u32>(58670u, 4294967295u), vec3<u32>(11509u, 23696u, 18495u), vec3<f32>(313f, 1226f, -1037f), 817f, 83013i), Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(1881u, 4294967295u, 51648u), vec3<f32>(-577f, -461f, 1061f), -2014f, -30190i), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(0u, 0u, 1u), vec3<f32>(-1339f, -268f, 1029f), 533f, 1i), Struct_1(vec2<u32>(4294967295u, 9781u), vec3<u32>(1u, 4294967295u, 1u), vec3<f32>(-1264f, -276f, 396f), 676f, 0i), Struct_1(vec2<u32>(10157u, 1u), vec3<u32>(4243u, 1u, 4041u), vec3<f32>(-242f, 382f, -196f), 114f, 0i), Struct_1(vec2<u32>(46557u, 28336u), vec3<u32>(0u, 56590u, 0u), vec3<f32>(-2596f, -1000f, -1458f), -787f, i32(-2147483648)), Struct_1(vec2<u32>(37947u, 0u), vec3<u32>(27610u, 63087u, 98306u), vec3<f32>(407f, -657f, -1662f), 949f, -1i), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(21708u, 1u, 7292u), vec3<f32>(-1000f, -215f, 1722f), 253f, -23164i), Struct_1(vec2<u32>(41239u, 4294967295u), vec3<u32>(0u, 40880u, 4294967295u), vec3<f32>(651f, 502f, 630f), 1677f, -32529i), Struct_1(vec2<u32>(1u, 1u), vec3<u32>(1u, 36379u, 16438u), vec3<f32>(2219f, -575f, -1080f), 1384f, 16990i), Struct_1(vec2<u32>(64025u, 1u), vec3<u32>(29743u, 14158u, 1299u), vec3<f32>(904f, 745f, 496f), -217f, i32(-2147483648)), Struct_1(vec2<u32>(0u, 63147u), vec3<u32>(1u, 1u, 0u), vec3<f32>(-180f, 1281f, 1000f), 696f, -14751i), Struct_1(vec2<u32>(2113u, 46593u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(1000f, -1404f, 2819f), 692f, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(arg_2.b.x, 20u)];
    var var_2 = Struct_1(var_1.a, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~45405u), ~4294967295u, ~var_1.b.x), _wgslsmith_mod_vec3_u32(select(abs(arg_2.b), ~var_1.b, arg_1.x), var_1.b)), _wgslsmith_f_op_vec3_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.d, arg_2.d, true)), -1118f, arg_1.x)))), global0[_wgslsmith_index_u32(~(var_1.b.x >> (43028u % 32u)), 16u)]);
    var var_3 = select(arg_1, vec4<bool>(arg_1.x, arg_1.x, all(vec2<bool>(arg_1.x, true)), false), true & arg_1.x);
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(var_1.b.x), ~37694u, 1u | var_2.b.x), 15u)];
    return ~var_1.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(445f)));
    let var_1 = ~(~abs(abs(1u)));
    let var_2 = firstTrailingBit(~global1.xx);
    var var_3 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(1u, 4990u, var_1), ~vec3<u32>(var_1, var_1, var_1)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, var_1, 4294967295u), vec3<u32>(var_1, 16378u, var_1), vec3<u32>(1u, 10420u, 5386u))), ~(~(var_1 | var_1))), var_1, ~countOneBits(_wgslsmith_mod_u32(var_1, 0u)), ~(_wgslsmith_mult_u32(func_3(global0[_wgslsmith_index_u32(41716u, 16u)], vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(var_1, 20u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28672u, 41521u, 27428u), vec4<u32>(1u, 14250u, var_1, var_1))) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1, var_1, var_1)), abs(vec3<u32>(1u, var_1, var_1))) % 32u)));
    let var_4 = Struct_1(firstTrailingBit(abs(var_3.zy)), var_3.xyz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(256f, var_0)) - _wgslsmith_f_op_f32(floor(var_0))) * -127f), 455f, 122f), _wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(var_0 - -1109f)), -2147483647i);
    return Struct_1(abs(var_4.b.yz), vec3<u32>(95357u, ~(~_wgslsmith_sub_u32(var_1, 54181u)), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0, var_4.d), var_4.c.x, _wgslsmith_f_op_f32(1314f - 871f)) * _wgslsmith_f_op_vec3_f32(var_4.c * vec3<f32>(-1209f, var_4.d, -2078f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-225f, var_0, var_0), var_4.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, -1428f))))))), _wgslsmith_f_op_f32(1907f + var_0), -_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 1i)), max(-2147483647i, u_input.a.x) & max(var_4.e, u_input.a.x), 1i));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    global2 = array<vec3<bool>, 27>();
    let var_0 = func_2();
    global1 = vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, ~var_0.b.x), 16u)], i32(-1i) * -min(4458i ^ var_0.e, -7888i), func_2().e, -2147483647i >> (~_wgslsmith_add_u32(3815u, ~var_0.b.x) % 32u));
    var var_1 = !(var_0.c.x < -749f);
    global0 = array<i32, 16>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = ~(-vec4<i32>(global1.x, ~_wgslsmith_sub_i32(-44060i, -2147483647i), max(global1.x, -global0[_wgslsmith_index_u32(1u, 16u)]), ~abs(1i)));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(1u, func_3(global1.x, vec4<bool>(false, true, false, true), Struct_1(vec2<u32>(38204u, 21211u), vec3<u32>(0u, 1u, 82768u), vec3<f32>(1429f, arg_1, arg_1), arg_1, global1.x))), 31025u), vec3<u32>(~func_2().b.x, func_2().b.x, _wgslsmith_clamp_u32(~(~26930u), ~8235u, _wgslsmith_clamp_u32(25573u, _wgslsmith_div_u32(4294967295u, 91300u), 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, _wgslsmith_f_op_f32(ceil(arg_1)), -1211f)), 136f, u_input.a.x);
    global1 = reverseBits(~(-abs(vec4<i32>(58797i, -2147483647i, arg_0, u_input.a.x)) ^ vec4<i32>(-var_1.e, -2147483647i, -global0[_wgslsmith_index_u32(1u, 16u)], 1i)));
    let var_2 = Struct_1(firstTrailingBit(vec2<u32>(~_wgslsmith_mod_u32(var_1.b.x, 33318u), var_1.a.x)), var_1.b, var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1916f)) - var_1.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-126f * var_1.d))))))), global0[_wgslsmith_index_u32(var_1.a.x, 16u)]);
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_mult_u32(var_2.a.x, 1u), var_1.b.x), var_1.a.x), var_1.a);
    return Struct_1(var_2.a, _wgslsmith_sub_vec3_u32(~var_2.b, var_1.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-324f - 522f)), _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-309f, -1222f, var_1.c.x), vec3<f32>(374f, var_1.d, 669f)) * var_2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.c)) * vec3<f32>(2765f, -240f, 1836f)), all(global2[_wgslsmith_index_u32(18059u, 27u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d))), 0i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(arg_1.c.x + 1000f), _wgslsmith_f_op_f32(ceil(arg_0.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, -695f, arg_1.d) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 972f, arg_1.d) + arg_1.c)), global2[_wgslsmith_index_u32(func_2().b.x, 27u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(~(~countOneBits(1u))), 20u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(func_1(true, vec3<f32>(-1382f, var_0.d, var_0.c.x)))), Struct_1(var_0.a, vec3<u32>(46389u, 11591u, 1u) >> (vec3<u32>(var_0.b.x, 24533u, var_0.a.x) % vec3<u32>(32u)), vec3<f32>(var_0.d, var_0.c.x, 937f), var_0.c.x, global0[_wgslsmith_index_u32(max(var_0.a.x, 49082u), 16u)]), any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(countOneBits(1u), 16u)]))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(409f * 701f), var_0.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(-942f, var_0.d, var_0.c.x)) - _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c)))));
    global4 = array<Struct_1, 15>();
    var var_2 = vec3<i32>(3827i, ~(-(~abs(-13879i))), ~(~(_wgslsmith_mult_i32(global1.x, u_input.a.x) ^ _wgslsmith_clamp_i32(global1.x, 10430i, global1.x))));
    var var_3 = _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(var_0.b.zy, var_0.a) ^ vec2<u32>(var_0.b.x, var_0.a.x)), vec2<u32>(~0u, var_0.b.x ^ _wgslsmith_mult_u32(1u, var_0.a.x)));
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(var_0.b.zy, vec2<u32>(~var_3.x, _wgslsmith_mod_u32(1u, 1u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(47905u, var_3.x), 151762u, var_0.b.x), func_4(-1i, -1334f).b) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(4294967295u, var_0.b.x), abs(4294967295u)), select(~var_0.b, vec3<u32>(4294967295u, var_3.x, var_3.x), global2[_wgslsmith_index_u32(17038u, 27u)])), var_1, _wgslsmith_f_op_f32(step(func_4(4474i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) - _wgslsmith_f_op_f32(round(var_0.d)))).c.x, _wgslsmith_f_op_f32(-var_1.x))), min(~var_2.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(-var_0.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1480f, -1398f, -744f, -515f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -871f, var_4.c.x, var_1.x) - vec4<f32>(-1000f, -1697f, -1078f, var_1.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d, var_1.x, var_0.d, var_1.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1000f)))), vec4<f32>(-2176f, var_1.x, -411f, _wgslsmith_div_f32(var_0.c.x, var_1.x))))));
}

