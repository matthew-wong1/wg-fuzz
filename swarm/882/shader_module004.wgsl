struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(1510f, vec3<u32>(2237u, 73051u, 0u), vec2<f32>(180f, -1319f), vec2<f32>(-1758f, 257f), vec4<i32>(-8573i, i32(-2147483648), -4087i, -27829i)), Struct_2(815f, vec3<u32>(94344u, 4294967295u, 46801u), vec2<f32>(1000f, -1425f), vec2<f32>(-397f, -161f), vec4<i32>(-1i, -4567i, 27689i, 1i)), Struct_2(-1000f, vec3<u32>(1u, 59836u, 11884u), vec2<f32>(256f, 254f), vec2<f32>(-1410f, 1343f), vec4<i32>(-9371i, -1i, 6825i, 41402i)), Struct_2(271f, vec3<u32>(59647u, 6453u, 4294967295u), vec2<f32>(1499f, -1670f), vec2<f32>(-167f, 2703f), vec4<i32>(11667i, 1i, 11264i, -33554i)), Struct_2(-1000f, vec3<u32>(21610u, 31664u, 56186u), vec2<f32>(1000f, -814f), vec2<f32>(504f, 1977f), vec4<i32>(-1i, 2058i, 2147483647i, 1i)), Struct_2(-269f, vec3<u32>(0u, 4294967295u, 1u), vec2<f32>(689f, 209f), vec2<f32>(-1740f, -1000f), vec4<i32>(i32(-2147483648), 0i, 21349i, -1i)), Struct_2(507f, vec3<u32>(4922u, 4294967295u, 41781u), vec2<f32>(737f, 552f), vec2<f32>(-1268f, 709f), vec4<i32>(14628i, -32233i, 18735i, -16262i)), Struct_2(-265f, vec3<u32>(1u, 4294967295u, 46940u), vec2<f32>(519f, 1658f), vec2<f32>(712f, -1964f), vec4<i32>(40026i, 0i, 46814i, 12588i)), Struct_2(487f, vec3<u32>(0u, 1u, 78222u), vec2<f32>(1524f, -503f), vec2<f32>(-494f, -250f), vec4<i32>(2147483647i, -1i, 66836i, 1i)), Struct_2(317f, vec3<u32>(10204u, 12792u, 1u), vec2<f32>(-1300f, 221f), vec2<f32>(959f, 655f), vec4<i32>(1i, 1i, 0i, 2580i)), Struct_2(-550f, vec3<u32>(1u, 0u, 0u), vec2<f32>(-196f, -404f), vec2<f32>(431f, 375f), vec4<i32>(9277i, -45651i, 2147483647i, 0i)), Struct_2(-1000f, vec3<u32>(1979u, 0u, 1u), vec2<f32>(-652f, 431f), vec2<f32>(169f, 500f), vec4<i32>(23775i, -12384i, 19585i, 1i)), Struct_2(-1653f, vec3<u32>(35102u, 17773u, 1u), vec2<f32>(-1578f, 1794f), vec2<f32>(1887f, 624f), vec4<i32>(-25434i, -3949i, -51973i, 2147483647i)), Struct_2(-371f, vec3<u32>(25799u, 1u, 29003u), vec2<f32>(-330f, 1102f), vec2<f32>(-2693f, 500f), vec4<i32>(25828i, 1i, -1i, i32(-2147483648))), Struct_2(-282f, vec3<u32>(40701u, 1u, 0u), vec2<f32>(1026f, 1204f), vec2<f32>(-736f, -1466f), vec4<i32>(2618i, 5552i, 0i, 48840i)), Struct_2(-479f, vec3<u32>(0u, 4294967295u, 42273u), vec2<f32>(506f, -275f), vec2<f32>(1193f, -1944f), vec4<i32>(0i, -1i, -12473i, 0i)), Struct_2(1644f, vec3<u32>(979u, 0u, 7649u), vec2<f32>(919f, 1686f), vec2<f32>(873f, -172f), vec4<i32>(-31363i, -1i, i32(-2147483648), -49897i)), Struct_2(-786f, vec3<u32>(21671u, 4294967295u, 49496u), vec2<f32>(-765f, 2502f), vec2<f32>(1549f, 103f), vec4<i32>(-25950i, 35439i, 21163i, 25317i)), Struct_2(-1336f, vec3<u32>(0u, 6676u, 4294967295u), vec2<f32>(-1000f, -794f), vec2<f32>(1496f, -413f), vec4<i32>(39826i, -257i, 1i, 9638i)), Struct_2(1142f, vec3<u32>(50867u, 19670u, 4294967295u), vec2<f32>(-455f, 1095f), vec2<f32>(765f, -901f), vec4<i32>(1i, 17478i, 17064i, -20250i)));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(603f, 1000f, -1572f), vec3<u32>(47467u, 69427u, 3606u), vec3<i32>(-4697i, i32(-2147483648), 2147483647i), vec2<f32>(-2026f, 180f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-542f, -444f, 121f), vec3<u32>(4294967295u, 0u, 0u), vec3<i32>(2147483647i, 2147483647i, 15482i), vec2<f32>(-1018f, -627f)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-779f, 384f, -576f), vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(i32(-2147483648), -6777i, -4675i), vec2<f32>(683f, -261f)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1280f, -1368f, -466f), vec3<u32>(1u, 4294967295u, 55080u), vec3<i32>(-43793i, i32(-2147483648), -11256i), vec2<f32>(-665f, 736f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(835f, -934f, 1000f), vec3<u32>(81008u, 1u, 38282u), vec3<i32>(20460i, -1i, -1i), vec2<f32>(982f, 1134f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-637f, -575f, -2422f), vec3<u32>(1u, 1u, 1u), vec3<i32>(-21508i, 23223i, -33833i), vec2<f32>(-530f, 307f)), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1274f, -1046f, -548f), vec3<u32>(1u, 4294967295u, 88814u), vec3<i32>(-94595i, -17298i, 2147483647i), vec2<f32>(1000f, -1096f)), Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(278f, 464f, 1564f), vec3<u32>(1u, 1u, 1954u), vec3<i32>(43739i, i32(-2147483648), -8729i), vec2<f32>(-1201f, -327f)), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1000f, -392f, 644f), vec3<u32>(1u, 0u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, -15722i), vec2<f32>(-820f, 419f)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(535f, 1317f, -656f), vec3<u32>(45516u, 4294967295u, 20469u), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<f32>(107f, 739f)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-1203f, -358f, -1762f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<i32>(-5725i, 1i, -23382i), vec2<f32>(1000f, -2086f)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(124f, -319f, 1000f), vec3<u32>(4681u, 4294967295u, 21405u), vec3<i32>(-58314i, 63273i, 0i), vec2<f32>(743f, -1007f)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-774f, 111f, 1000f), vec3<u32>(96738u, 1u, 0u), vec3<i32>(-17511i, -1i, 4985i), vec2<f32>(653f, -114f)), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-131f, 958f, 171f), vec3<u32>(1u, 19020u, 39014u), vec3<i32>(-1i, -1i, 0i), vec2<f32>(-717f, 1395f)), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(820f, -1863f, -157f), vec3<u32>(35307u, 1u, 45640u), vec3<i32>(47902i, 5753i, -1i), vec2<f32>(1000f, 1000f)));

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.b, global2.b)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2.b)) * global2.b)))));
    let var_1 = vec4<bool>(global2.a.x, 13058i == _wgslsmith_dot_vec3_i32(global2.d, vec3<i32>(_wgslsmith_clamp_i32(2147483647i, global2.d.x, global2.d.x), global2.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(22642i, global2.d.x, -2147483647i, 39185i), vec4<i32>(global2.d.x, global2.d.x, 0i, global2.d.x)))), !any(!global2.a.zyw), any(global2.a.xwy));
    let var_2 = global2.c.x;
    global0 = array<Struct_2, 20>();
    var var_3 = global1[_wgslsmith_index_u32(18938u, 15u)];
    return _wgslsmith_f_op_vec3_f32(select(var_3.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1144f, -1047f, global2.e.x) + var_3.b))))), var_3.a.wzx));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(vec2<i32>(firstLeadingBit(56755i), -1i) ^ vec2<i32>(global2.d.x, i32(-1i) * -global2.d.x));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~11704u, u_input.a.x, 0u), 15u)];
    let var_2 = var_1.a.x;
    let var_3 = ~_wgslsmith_mult_vec3_u32(~global2.c, firstTrailingBit(global2.c));
    global0 = array<Struct_2, 20>();
    return Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.e.x, global2.b.x), -947f, _wgslsmith_div_f32(224f, global2.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(true && global2.a.x, any(vec3<bool>(var_1.a.x, false, false)))) - global2.b)), ~(~var_3), firstLeadingBit(vec3<i32>(-var_0.x, min(var_1.d.x, var_0.x), -1438i)), var_1.b.xy);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-428f)) + global2.b.x), _wgslsmith_f_op_f32(138f + _wgslsmith_div_f32(1188f, arg_0.b.x))), -680f, global2.b.x));
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.b.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.e.x, var_0.x))))));
    var var_2 = global0[_wgslsmith_index_u32(~(~func_2().c.x), 20u)];
    var_2 = global0[_wgslsmith_index_u32(~4294967295u >> ((_wgslsmith_sub_u32(abs(var_2.b.x), 4294967295u) >> (_wgslsmith_mult_u32(u_input.a.x, arg_3.x ^ 1u) % 32u)) % 32u), 20u)];
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(!(!select(global2.a, select(global2.a, vec4<bool>(true, false, global2.a.x, true), false), select(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), global2.a, global2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(376f, 1068f, global2.e.x), vec3<f32>(global2.e.x, -586f, 903f)))) * global2.b), min(~global2.c, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.c.x, arg_0.b.x), vec3<u32>(0u, 73327u, arg_0.b.x)), 30435u, 0u) << (select(global2.c, max(arg_0.b, global2.c), global2.a.wxz) % vec3<u32>(32u))), vec3<i32>(global2.d.x | arg_0.e.x, -firstLeadingBit(global2.d.x >> (arg_0.b.x % 32u)), global2.d.x), _wgslsmith_f_op_vec2_f32(exp2(arg_0.d)));
    let var_1 = arg_0;
    global2 = func_4(func_2(), vec3<i32>(func_2().d.x, select(arg_0.e.x, global2.d.x, true), select(_wgslsmith_div_i32(~(-25665i), -1i), var_1.e.x, any(!global2.a.www))), var_1.b.yz, firstLeadingBit(min(vec2<u32>(~global2.c.x, ~36393u), ~min(vec2<u32>(45289u, var_0.c.x), vec2<u32>(u_input.a.x, var_0.c.x)))));
    var var_2 = !select(vec3<bool>(true, true, any(!vec2<bool>(global2.a.x, false))), select(!(!vec3<bool>(var_0.a.x, global2.a.x, var_0.a.x)), global2.a.yxw, !vec3<bool>(global2.a.x, var_0.a.x, false)), select(vec3<bool>(true, any(vec3<bool>(var_0.a.x, false, false)), true), select(!vec3<bool>(false, true, var_0.a.x), select(vec3<bool>(true, global2.a.x, var_0.a.x), global2.a.wzw, vec3<bool>(true, var_0.a.x, false)), func_2().a.yxz), true));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(_wgslsmith_dot_vec3_u32(global2.c, var_1.b) << (~36140u % 32u), 17064u), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c.x << (18740u % 32u), 0u), _wgslsmith_clamp_u32(4294967295u, ~global2.c.x, min(4294967295u, var_0.c.x)))) << (abs(arg_0.b.x) % 32u), 20u)];
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, var_3.a) * var_1.d.x), ~(~abs(var_1.b | arg_0.b)), _wgslsmith_f_op_vec2_f32(-var_3.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_3.d.x)), -3093f)), _wgslsmith_f_op_vec2_f32(-arg_0.c))), -vec4<i32>(arg_0.e.x, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 9715i, 1i, -1i), vec4<i32>(43029i, -20085i, -50678i, 12607i)), 1i << (0u % 32u)) << (~vec4<u32>(select(63210u, 0u, var_0.a.x), _wgslsmith_sub_u32(1505u, arg_0.b.x), abs(var_3.b.x), _wgslsmith_div_u32(u_input.a.x, arg_0.b.x)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = vec3<bool>(!(true & !global2.a.x), any(global2.a), global2.a.x & func_2().a.x);
    var var_1 = global2.a;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(52627u, arg_0.b.x, arg_0.b.x), ~vec3<u32>(4294967295u, 40412u, 54907u)), ~4294967295u), 1u);
    let var_3 = arg_0;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(global2.c, (vec3<u32>(global2.c.x, _wgslsmith_mult_u32(63892u, 1u), 1u) >> (countOneBits(global2.c >> (vec3<u32>(global2.c.x, global2.c.x, global2.c.x) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(global2.c, vec3<u32>(4294967295u, 1u, u_input.a.x)), firstLeadingBit(global2.c)), countOneBits(~func_5(func_1(Struct_2(global2.e.x, vec3<u32>(global2.c.x, u_input.a.x, u_input.a.x), global2.e, global2.b.zy, vec4<i32>(global2.d.x, -1i, global2.d.x, -14423i))))));
    let var_1 = global2.e;
    var var_2 = ~_wgslsmith_add_i32(global2.d.x, global2.d.x);
    let var_3 = global2.a.x;
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, select(-2147483647i ^ -global2.d.x, 47856i, false)));
}

