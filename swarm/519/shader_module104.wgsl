struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(862f), Struct_2(1602f), Struct_2(713f), Struct_2(434f), Struct_2(303f), Struct_2(1436f), Struct_2(1905f), Struct_2(279f), Struct_2(327f), Struct_2(-1889f), Struct_2(511f), Struct_2(762f), Struct_2(923f), Struct_2(-963f), Struct_2(1000f), Struct_2(-313f), Struct_2(-832f), Struct_2(197f), Struct_2(466f), Struct_2(-1421f), Struct_2(-620f), Struct_2(171f), Struct_2(-109f), Struct_2(1179f), Struct_2(432f));

var<private> global3: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec2<i32>(16393i, 0i)), Struct_4(vec2<i32>(0i, -20777i)), Struct_4(vec2<i32>(-1i, -25419i)));

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(287f), Struct_1(vec4<f32>(1261f, 728f, 845f, -216f)), vec3<f32>(1435f, 394f, -1000f), vec4<bool>(true, false, true, false), vec2<f32>(552f, 379f)), Struct_3(Struct_2(1021f), Struct_1(vec4<f32>(1000f, -1620f, 953f, 1520f)), vec3<f32>(1291f, 403f, 492f), vec4<bool>(false, true, true, false), vec2<f32>(-1366f, 391f)), Struct_3(Struct_2(-1230f), Struct_1(vec4<f32>(1850f, -317f, 744f, -349f)), vec3<f32>(-414f, 588f, -1331f), vec4<bool>(true, false, false, false), vec2<f32>(-583f, -1486f)), Struct_3(Struct_2(-353f), Struct_1(vec4<f32>(-1209f, -800f, -458f, 1338f)), vec3<f32>(-183f, 1459f, -2217f), vec4<bool>(false, true, true, false), vec2<f32>(-593f, 608f)), Struct_3(Struct_2(519f), Struct_1(vec4<f32>(-499f, 547f, 1000f, -266f)), vec3<f32>(815f, 879f, -185f), vec4<bool>(false, false, true, true), vec2<f32>(718f, 1000f)), Struct_3(Struct_2(-1075f), Struct_1(vec4<f32>(-1090f, -263f, -461f, -952f)), vec3<f32>(122f, 197f, -1676f), vec4<bool>(true, false, false, false), vec2<f32>(1556f, -417f)), Struct_3(Struct_2(381f), Struct_1(vec4<f32>(476f, 908f, 784f, 191f)), vec3<f32>(-2061f, 1000f, -374f), vec4<bool>(false, true, true, false), vec2<f32>(-1000f, -2697f)), Struct_3(Struct_2(115f), Struct_1(vec4<f32>(-113f, 1300f, -1000f, 1311f)), vec3<f32>(-2130f, 1412f, -538f), vec4<bool>(false, true, true, true), vec2<f32>(867f, 1159f)), Struct_3(Struct_2(765f), Struct_1(vec4<f32>(337f, 150f, 1210f, -3460f)), vec3<f32>(-168f, -1085f, -751f), vec4<bool>(true, false, true, false), vec2<f32>(-1484f, 1000f)), Struct_3(Struct_2(201f), Struct_1(vec4<f32>(-888f, 708f, -755f, 1087f)), vec3<f32>(1628f, -105f, 716f), vec4<bool>(true, false, true, false), vec2<f32>(113f, 856f)), Struct_3(Struct_2(608f), Struct_1(vec4<f32>(-201f, 1411f, 1564f, 147f)), vec3<f32>(-185f, 526f, 207f), vec4<bool>(true, true, true, false), vec2<f32>(-139f, 524f)), Struct_3(Struct_2(1481f), Struct_1(vec4<f32>(-204f, 560f, 1000f, -257f)), vec3<f32>(-656f, -1841f, 1157f), vec4<bool>(false, false, false, true), vec2<f32>(-753f, 1755f)), Struct_3(Struct_2(137f), Struct_1(vec4<f32>(229f, -545f, -2094f, -1765f)), vec3<f32>(1795f, 663f, 1514f), vec4<bool>(false, false, false, false), vec2<f32>(-105f, -297f)), Struct_3(Struct_2(750f), Struct_1(vec4<f32>(-1792f, -159f, -1060f, 334f)), vec3<f32>(2851f, 1014f, -1181f), vec4<bool>(true, false, true, true), vec2<f32>(932f, 1000f)), Struct_3(Struct_2(488f), Struct_1(vec4<f32>(-172f, 430f, -877f, 831f)), vec3<f32>(534f, -885f, -1682f), vec4<bool>(false, true, false, false), vec2<f32>(-1364f, -2584f)), Struct_3(Struct_2(126f), Struct_1(vec4<f32>(156f, 140f, -1007f, 1121f)), vec3<f32>(159f, -1221f, 2629f), vec4<bool>(true, false, true, true), vec2<f32>(-592f, 1318f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = array<Struct_2, 25>();
    global1 = array<vec2<i32>, 29>();
    global1 = array<vec2<i32>, 29>();
    let var_0 = u_input.a.x;
    global1 = array<vec2<i32>, 29>();
    return arg_0 >= (i32(-1i) * -1i);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(abs(max(~1u, _wgslsmith_sub_u32(countOneBits(0u), firstTrailingBit(~88018u)))), 25u)];
    let var_1 = select(!select(vec4<bool>(u_input.a.x == -28040i, !arg_0, any(vec3<bool>(true, arg_0, false)), select(true, arg_0, true)), select(vec4<bool>(true, false, false, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0), true), vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(all(vec4<bool>(arg_0, false, false, arg_0)), false, false || arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)))), vec4<bool>(arg_0, !arg_0, true, true), arg_0);
    global4 = array<Struct_3, 16>();
    global0 = arg_1.x;
    global0 = 77974i;
    return vec4<u32>(select(_wgslsmith_clamp_u32(1u, 4294967295u, select(61503u, 1u, var_1.x)), _wgslsmith_mult_u32(64884u, _wgslsmith_mult_u32(1u, 1u)), !(var_1.x || arg_0)) << (5501u % 32u), select(countOneBits(_wgslsmith_add_u32(0u, 30517u)), _wgslsmith_add_u32(~4294967295u, ~4294967295u), false) & firstLeadingBit(~(~1u)), (_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(1u, 32697u), 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 34161u), vec2<u32>(1u, 1u))) | countOneBits(1u), 1u);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: f32) -> vec2<f32> {
    global1 = array<vec2<i32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(501f + arg_3))));
    let var_1 = arg_0;
    global2 = array<Struct_2, 25>();
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(firstLeadingBit(select(_wgslsmith_add_u32(~4294967295u, ~4294967295u), var_1.x, false))), 3u)];
    return _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_div_f32(-459f, 653f))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-785f + arg_0.x);
    global2 = array<Struct_2, 25>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_5(vec2<u32>(firstTrailingBit(4294967295u), abs(0u)), func_4(func_3(9086i), ~global1[_wgslsmith_index_u32(18080u, 29u)]), vec2<i32>(i32(-1i) * -2147483647i, 1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -373f)))))), arg_0);
    var var_2 = -3967i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(534f, var_1.x, -1484f, 578f), vec4<f32>(var_1.x, -1406f, 472f, 721f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, -462f, arg_0.x))))));
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = -_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-1i, u_input.a.x, -1i, u_input.a.x)), vec4<i32>(-u_input.a.x, -u_input.a.x, u_input.a.x, ~(-2147483647i))) & 1i;
    var_0 = _wgslsmith_div_i32(-2147483647i, -_wgslsmith_mod_i32(-1i, u_input.a.x) & 1i) & ~(-21362i);
    let var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(48159u), 3u)];
    global3 = array<Struct_4, 3>();
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(min(1u, 0u), 25u)], func_2(vec2<f32>(-1726f, _wgslsmith_f_op_f32(-arg_0.a.x))), vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec2<bool>(false, true)), true), (var_1.a.x >= -2147483647i) | all(vec2<bool>(true, true))), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1856f, -598f), arg_0.a.zy)), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_div_f32(958f, arg_0.a.x)), false))));
    return -10893i;
}

fn func_1() -> i32 {
    global0 = (firstLeadingBit(u_input.a.x) ^ (~max(60775i, u_input.a.x) ^ -8863i)) & ~1i;
    global1 = array<vec2<i32>, 29>();
    global4 = array<Struct_3, 16>();
    var var_0 = Struct_2(-510f);
    global2 = array<Struct_2, 25>();
    return min(_wgslsmith_dot_vec4_i32(-(~min(vec4<i32>(26627i, 6776i, 44336i, u_input.a.x), vec4<i32>(48450i, 2147483647i, 30029i, 39557i))), ~vec4<i32>(1i | u_input.a.x, ~(-2147483647i), -7050i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 0i, 6155i), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -15668i)))), _wgslsmith_clamp_i32(-2147483647i & (_wgslsmith_add_i32(u_input.a.x, u_input.a.x) | 0i), ~(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, -1i), func_6(func_2(vec2<f32>(-751f, var_0.a))), -(u_input.a.x << (1u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (func_1() >> (63318u % 32u)) ^ u_input.a.x;
    let var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-772f, _wgslsmith_f_op_f32(ceil(139f))), vec2<f32>(_wgslsmith_f_op_f32(min(-332f, 383f)), _wgslsmith_f_op_f32(-1741f + 392f))), vec2<f32>(1f, 1f)));
    global1 = array<vec2<i32>, 29>();
    var_0 = u_input.a.x;
    let var_2 = vec4<bool>(true, false, func_3(-31711i), !select(true, false, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(92702u, _wgslsmith_add_u32(15800u, 0u))), -min(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(17976i, -18134i)), ~vec2<i32>(0i, u_input.a.x)), firstLeadingBit(firstLeadingBit(u_input.a.xz))), -global1[_wgslsmith_index_u32(~(select(55971u, 12967u, var_2.x) ^ _wgslsmith_clamp_u32(49556u, 14981u, 1u)), 29u)], u_input.a.x, firstTrailingBit(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 0i, u_input.a.x, -2147483647i)), vec4<i32>(0i, u_input.a.x, 2147483647i, u_input.a.x) << (vec4<u32>(4294967295u, 37132u, 28779u, 9846u) % vec4<u32>(32u))))));
}

