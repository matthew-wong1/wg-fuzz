struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec3<i32>(35940i, -5072i, -31757i), false, vec3<f32>(1342f, 563f, 556f)), Struct_1(vec3<i32>(-29563i, 1i, -13994i), false, vec3<f32>(-1375f, -466f, 209f)), Struct_1(vec3<i32>(1i, 15768i, 2147483647i), true, vec3<f32>(-741f, 871f, 644f))), Struct_2(Struct_1(vec3<i32>(2147483647i, 7208i, 6871i), false, vec3<f32>(-1359f, 1046f, 1154f)), Struct_1(vec3<i32>(-30302i, i32(-2147483648), -1i), false, vec3<f32>(283f, -2794f, -1966f)), Struct_1(vec3<i32>(2147483647i, -8824i, 1i), true, vec3<f32>(-1445f, 881f, 277f))), Struct_2(Struct_1(vec3<i32>(17197i, 1i, 30052i), false, vec3<f32>(1525f, 2231f, -424f)), Struct_1(vec3<i32>(-1i, -30281i, -1i), false, vec3<f32>(-1091f, -506f, 947f)), Struct_1(vec3<i32>(0i, -44445i, -25379i), false, vec3<f32>(-1000f, -803f, 1386f))), Struct_2(Struct_1(vec3<i32>(2814i, -18920i, -11734i), true, vec3<f32>(2180f, 538f, -807f)), Struct_1(vec3<i32>(2147483647i, 0i, 23176i), false, vec3<f32>(339f, -1000f, 721f)), Struct_1(vec3<i32>(30984i, 12625i, -1i), true, vec3<f32>(207f, 3333f, 1000f))), Struct_2(Struct_1(vec3<i32>(-37800i, i32(-2147483648), -6287i), false, vec3<f32>(-2916f, -525f, 1728f)), Struct_1(vec3<i32>(1i, -1i, 18336i), false, vec3<f32>(-145f, -797f, -445f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), true, vec3<f32>(-1436f, -472f, 935f))), Struct_2(Struct_1(vec3<i32>(-47092i, 2147483647i, 1i), true, vec3<f32>(1160f, -835f, -680f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), true, vec3<f32>(262f, -553f, 1000f)), Struct_1(vec3<i32>(-1i, -7690i, 27371i), true, vec3<f32>(958f, 1023f, 634f))), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, 2910i), false, vec3<f32>(545f, -1000f, -172f)), Struct_1(vec3<i32>(43582i, 40230i, 1827i), false, vec3<f32>(2797f, -1034f, 526f)), Struct_1(vec3<i32>(28687i, 0i, -9618i), false, vec3<f32>(-1522f, -1778f, 1722f))), Struct_2(Struct_1(vec3<i32>(14814i, 2147483647i, -7354i), false, vec3<f32>(403f, -173f, -647f)), Struct_1(vec3<i32>(46482i, -5841i, 43502i), true, vec3<f32>(-682f, -1524f, -287f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), true, vec3<f32>(1000f, -328f, -411f))), Struct_2(Struct_1(vec3<i32>(305i, -32347i, -31955i), true, vec3<f32>(189f, 200f, -854f)), Struct_1(vec3<i32>(1i, 45878i, 0i), false, vec3<f32>(340f, -321f, 110f)), Struct_1(vec3<i32>(-1i, 12878i, 42372i), true, vec3<f32>(-761f, -1206f, -1386f))), Struct_2(Struct_1(vec3<i32>(-62215i, 2147483647i, 1i), false, vec3<f32>(-366f, -472f, 914f)), Struct_1(vec3<i32>(20787i, 19418i, 11948i), true, vec3<f32>(-2151f, 568f, 2022f)), Struct_1(vec3<i32>(-1901i, -15652i, -50134i), false, vec3<f32>(-1477f, 448f, -915f))), Struct_2(Struct_1(vec3<i32>(2147483647i, -36463i, -6825i), true, vec3<f32>(105f, 262f, 487f)), Struct_1(vec3<i32>(-1i, 13692i, 1i), false, vec3<f32>(-825f, -471f, -1492f)), Struct_1(vec3<i32>(-13924i, 2147483647i, 0i), true, vec3<f32>(1062f, 1640f, -2140f))), Struct_2(Struct_1(vec3<i32>(2147483647i, 616i, 1223i), false, vec3<f32>(-577f, -523f, 873f)), Struct_1(vec3<i32>(20372i, 9239i, 2147483647i), true, vec3<f32>(-1288f, -709f, -1006f)), Struct_1(vec3<i32>(59698i, 62656i, 0i), false, vec3<f32>(912f, -1219f, -223f))), Struct_2(Struct_1(vec3<i32>(-23031i, -1i, -1i), true, vec3<f32>(-103f, -1789f, 159f)), Struct_1(vec3<i32>(-47326i, 32927i, 30039i), true, vec3<f32>(374f, -1794f, -1143f)), Struct_1(vec3<i32>(2147483647i, -1i, -23111i), true, vec3<f32>(-1031f, 686f, -663f))), Struct_2(Struct_1(vec3<i32>(-33138i, -28153i, i32(-2147483648)), false, vec3<f32>(679f, -1188f, 1681f)), Struct_1(vec3<i32>(240i, 23558i, 1i), true, vec3<f32>(-1129f, 655f, 776f)), Struct_1(vec3<i32>(-1i, -46411i, 48142i), false, vec3<f32>(-1075f, -1685f, -239f))), Struct_2(Struct_1(vec3<i32>(1i, 0i, -63382i), false, vec3<f32>(488f, -1167f, 1259f)), Struct_1(vec3<i32>(15101i, 18409i, 15378i), true, vec3<f32>(-1000f, -475f, 720f)), Struct_1(vec3<i32>(1i, i32(-2147483648), 68944i), false, vec3<f32>(1031f, -860f, -1122f))), Struct_2(Struct_1(vec3<i32>(1i, 1i, 22035i), true, vec3<f32>(-1000f, 347f, 971f)), Struct_1(vec3<i32>(-3658i, -1i, -2076i), false, vec3<f32>(-954f, -195f, 643f)), Struct_1(vec3<i32>(0i, -21709i, -14353i), false, vec3<f32>(-575f, 739f, 270f))), Struct_2(Struct_1(vec3<i32>(25549i, 0i, -101759i), true, vec3<f32>(-1267f, -511f, 1542f)), Struct_1(vec3<i32>(-46010i, -1i, -21253i), false, vec3<f32>(1876f, -446f, -1000f)), Struct_1(vec3<i32>(54216i, 0i, i32(-2147483648)), true, vec3<f32>(-814f, -911f, 1306f))), Struct_2(Struct_1(vec3<i32>(9098i, -21205i, 2147483647i), true, vec3<f32>(-330f, -365f, -777f)), Struct_1(vec3<i32>(1i, -47968i, -36285i), false, vec3<f32>(-1236f, -427f, -110f)), Struct_1(vec3<i32>(11508i, 2880i, 12016i), true, vec3<f32>(-1000f, 540f, -1189f))), Struct_2(Struct_1(vec3<i32>(67562i, -18207i, 6628i), true, vec3<f32>(844f, 1239f, 1161f)), Struct_1(vec3<i32>(-30992i, 0i, 0i), true, vec3<f32>(-1448f, -1599f, 722f)), Struct_1(vec3<i32>(1i, 1i, -7517i), true, vec3<f32>(1000f, 780f, 557f))), Struct_2(Struct_1(vec3<i32>(-30484i, 10429i, 20088i), true, vec3<f32>(1345f, -112f, -1947f)), Struct_1(vec3<i32>(-41820i, -31482i, 33602i), true, vec3<f32>(2372f, 1000f, 672f)), Struct_1(vec3<i32>(47517i, -1i, -37282i), true, vec3<f32>(1403f, -1660f, 1475f))), Struct_2(Struct_1(vec3<i32>(-53926i, i32(-2147483648), 47103i), true, vec3<f32>(-1774f, 591f, 257f)), Struct_1(vec3<i32>(i32(-2147483648), 9838i, 1i), false, vec3<f32>(-758f, -595f, 803f)), Struct_1(vec3<i32>(-20175i, 0i, i32(-2147483648)), true, vec3<f32>(546f, 772f, -1056f))), Struct_2(Struct_1(vec3<i32>(27791i, -10886i, 0i), false, vec3<f32>(503f, 477f, -678f)), Struct_1(vec3<i32>(2147483647i, -47452i, 1i), false, vec3<f32>(316f, 1059f, -512f)), Struct_1(vec3<i32>(2147483647i, -240i, 8726i), false, vec3<f32>(-530f, -579f, -900f))), Struct_2(Struct_1(vec3<i32>(2147483647i, -61467i, 1i), true, vec3<f32>(-910f, -223f, -375f)), Struct_1(vec3<i32>(0i, -27059i, 9026i), true, vec3<f32>(580f, -1396f, -1414f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), true, vec3<f32>(861f, 613f, -1000f))), Struct_2(Struct_1(vec3<i32>(0i, -66257i, 0i), true, vec3<f32>(851f, -702f, 299f)), Struct_1(vec3<i32>(32435i, -1i, i32(-2147483648)), true, vec3<f32>(-179f, -1739f, -1755f)), Struct_1(vec3<i32>(2147483647i, -61658i, -892i), false, vec3<f32>(-135f, -673f, -262f))), Struct_2(Struct_1(vec3<i32>(1i, 0i, -47598i), false, vec3<f32>(1715f, -1078f, 1579f)), Struct_1(vec3<i32>(1i, 0i, 28236i), true, vec3<f32>(1210f, 2010f, -1000f)), Struct_1(vec3<i32>(43765i, 34078i, -73779i), true, vec3<f32>(372f, 358f, -544f))), Struct_2(Struct_1(vec3<i32>(-17147i, 0i, 0i), true, vec3<f32>(-1640f, -1143f, -329f)), Struct_1(vec3<i32>(93672i, 42006i, 0i), false, vec3<f32>(-1503f, 416f, -714f)), Struct_1(vec3<i32>(0i, -33683i, 24289i), false, vec3<f32>(774f, -584f, 364f))), Struct_2(Struct_1(vec3<i32>(0i, -23404i, 2147483647i), true, vec3<f32>(-831f, -1347f, -683f)), Struct_1(vec3<i32>(-78646i, -13330i, i32(-2147483648)), false, vec3<f32>(1296f, -166f, -858f)), Struct_1(vec3<i32>(60558i, -701i, -10425i), true, vec3<f32>(-624f, -346f, -1537f))), Struct_2(Struct_1(vec3<i32>(16375i, i32(-2147483648), 5329i), true, vec3<f32>(-1214f, 325f, -547f)), Struct_1(vec3<i32>(23630i, -1i, 0i), false, vec3<f32>(384f, -1000f, -577f)), Struct_1(vec3<i32>(1i, 0i, 1i), false, vec3<f32>(532f, 651f, 470f))), Struct_2(Struct_1(vec3<i32>(17448i, 63204i, 0i), false, vec3<f32>(1020f, -790f, -830f)), Struct_1(vec3<i32>(-4554i, 0i, 2147483647i), false, vec3<f32>(-1551f, -641f, 964f)), Struct_1(vec3<i32>(1i, -1i, -1i), true, vec3<f32>(-960f, 778f, 1038f))), Struct_2(Struct_1(vec3<i32>(1i, -29577i, 1i), false, vec3<f32>(338f, -167f, 945f)), Struct_1(vec3<i32>(-1i, -25224i, -44377i), true, vec3<f32>(526f, -500f, -872f)), Struct_1(vec3<i32>(32510i, 515i, -1i), true, vec3<f32>(-606f, -2735f, -1000f))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-399f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -457f), -1049f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(trunc(-2061f)))))) == 1212f;
    global0 = array<Struct_2, 30>();
    var var_1 = 4294967295u;
    let var_2 = vec4<bool>(true, true, true, _wgslsmith_sub_u32(~countOneBits(u_input.b), u_input.b) < 56071u);
    var var_3 = _wgslsmith_mult_u32(max(~38958u, ~(u_input.b ^ _wgslsmith_div_u32(u_input.b, 4294967295u))), _wgslsmith_div_u32(~u_input.b, countOneBits(u_input.b)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-440f, 1000f)) + vec2<f32>(_wgslsmith_f_op_f32(step(858f, 1243f)), _wgslsmith_f_op_f32(round(1582f))))));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(reverseBits(u_input.a) & vec2<i32>(u_input.a.x, u_input.c)))))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -2237f, var_0.x)) * vec3<f32>(_wgslsmith_div_f32(var_0.x, 743f), -313f, var_0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(307f, -908f, -1505f), vec3<f32>(1089f, var_0.x, var_0.x)))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))));
    global0 = array<Struct_2, 30>();
    let var_2 = vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))) == ((~u_input.a.x | u_input.a.x) <= _wgslsmith_sub_i32(-2147483647i, u_input.c)), true);
    global0 = array<Struct_2, 30>();
    return Struct_5(Struct_3(-19040i, ~(50341i & u_input.c) > -(u_input.a.x >> (u_input.b % 32u))));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_5 {
    var var_0 = Struct_5(Struct_3(-u_input.a.x, all(vec4<bool>(arg_0, true, arg_0, true)) | true));
    global0 = array<Struct_2, 30>();
    var_0 = func_2();
    let var_1 = func_2().a;
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(select(-u_input.a, abs(u_input.a), vec2<bool>(true, var_0.a.b)), ~vec2<i32>(var_1.a, -3515i)), reverseBits(1i), -2147483647i), -u_input.a.x != var_1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-527f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(u_input.a)).x * 1f), 1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-943f + -642f))));
    return Struct_5(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_1(!select(!any(vec4<bool>(false, true, false, true)), true, true), u_input.b);
    global0 = array<Struct_2, 30>();
    var var_2 = vec2<bool>(all(select(select(vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(var_1.a.b, false)), select(vec2<bool>(var_1.a.b, var_1.a.b), select(vec2<bool>(var_1.a.b, var_1.a.b), vec2<bool>(var_1.a.b, var_1.a.b), var_1.a.b), true), true)), true);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1299f) - _wgslsmith_f_op_f32(f32(-1f) * -648f))), 845f, -1474f, -657f);
    var var_4 = global0[_wgslsmith_index_u32(abs(firstLeadingBit(countOneBits(u_input.b | u_input.b) & ~reverseBits(0u))), 30u)];
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(586f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, u_input.c))).x), _wgslsmith_f_op_f32(var_4.c.c.x + _wgslsmith_f_op_f32(trunc(var_3.x)))))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(1u, 8800u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(firstLeadingBit(vec3<u32>(40588u, 1u, 925u)))), ~(vec3<u32>(u_input.b, u_input.b, u_input.b) & vec3<u32>(u_input.b, 4294967295u, u_input.b)) & vec3<u32>(u_input.b, ~0u, ~u_input.b)));
}

