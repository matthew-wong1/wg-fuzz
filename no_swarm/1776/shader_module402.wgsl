struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<bool>(true, false, false, false), vec2<u32>(0u, 51756u)), Struct_3(vec4<bool>(false, false, false, true), vec2<u32>(0u, 4294967295u)), Struct_3(vec4<bool>(false, true, false, true), vec2<u32>(0u, 33477u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(13493u, 86133u)), Struct_3(vec4<bool>(true, false, false, false), vec2<u32>(64534u, 4294967295u)), Struct_3(vec4<bool>(false, false, false, false), vec2<u32>(10123u, 4294967295u)), Struct_3(vec4<bool>(true, true, true, true), vec2<u32>(916u, 4294967295u)), Struct_3(vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 0u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(0u, 9836u)), Struct_3(vec4<bool>(false, false, false, true), vec2<u32>(0u, 48955u)), Struct_3(vec4<bool>(true, true, true, true), vec2<u32>(52541u, 1u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(5679u, 1u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(22305u, 0u)), Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(0u, 2220u)), Struct_3(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 15269u)), Struct_3(vec4<bool>(true, true, true, true), vec2<u32>(1u, 49184u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 1u)), Struct_3(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 22487u)), Struct_3(vec4<bool>(true, true, true, false), vec2<u32>(21661u, 63699u)), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(52677u, 0u)));

var<private> global1: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_4(Struct_1(114206u, vec3<bool>(true, true, false)), vec4<f32>(1173f, 849f, 196f, 538f)), -1i, Struct_2(Struct_1(1u, vec3<bool>(true, false, false))), vec2<u32>(35948u, 4294967295u), -4083i), Struct_5(Struct_4(Struct_1(1u, vec3<bool>(true, true, true)), vec4<f32>(1000f, 1000f, -2366f, -267f)), 0i, Struct_2(Struct_1(26721u, vec3<bool>(false, false, false))), vec2<u32>(1u, 4294967295u), 2147483647i), Struct_5(Struct_4(Struct_1(1u, vec3<bool>(false, true, false)), vec4<f32>(-342f, 727f, -895f, -270f)), 1i, Struct_2(Struct_1(59422u, vec3<bool>(false, false, true))), vec2<u32>(0u, 18751u), i32(-2147483648)), Struct_5(Struct_4(Struct_1(1u, vec3<bool>(false, false, true)), vec4<f32>(988f, 1518f, 1187f, 1776f)), 61743i, Struct_2(Struct_1(4036u, vec3<bool>(true, true, true))), vec2<u32>(0u, 4294967295u), 59948i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(false, false, true)), vec4<f32>(1294f, 549f, 889f, -2366f)), -87509i, Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, false))), vec2<u32>(51377u, 35028u), -42118i), Struct_5(Struct_4(Struct_1(37405u, vec3<bool>(false, false, true)), vec4<f32>(-1437f, -817f, 693f, -714f)), -1i, Struct_2(Struct_1(48241u, vec3<bool>(true, false, false))), vec2<u32>(4294967295u, 0u), 2147483647i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(true, false, false)), vec4<f32>(251f, 124f, -651f, -1805f)), -1i, Struct_2(Struct_1(29600u, vec3<bool>(false, false, false))), vec2<u32>(46640u, 103234u), i32(-2147483648)), Struct_5(Struct_4(Struct_1(73775u, vec3<bool>(false, true, false)), vec4<f32>(104f, 1712f, 220f, 128f)), 4226i, Struct_2(Struct_1(0u, vec3<bool>(false, false, false))), vec2<u32>(62890u, 45477u), 0i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, false, true)), vec4<f32>(654f, 470f, -222f, 1237f)), 15243i, Struct_2(Struct_1(1u, vec3<bool>(true, true, false))), vec2<u32>(0u, 0u), -28850i), Struct_5(Struct_4(Struct_1(23401u, vec3<bool>(true, true, false)), vec4<f32>(-161f, 239f, -2418f, -1668f)), 1i, Struct_2(Struct_1(11665u, vec3<bool>(true, true, true))), vec2<u32>(4294967295u, 68880u), -6390i), Struct_5(Struct_4(Struct_1(31866u, vec3<bool>(true, true, true)), vec4<f32>(153f, -1452f, 1909f, 522f)), -54638i, Struct_2(Struct_1(1u, vec3<bool>(true, false, false))), vec2<u32>(18756u, 1u), -1i), Struct_5(Struct_4(Struct_1(77531u, vec3<bool>(false, false, true)), vec4<f32>(794f, 309f, 936f, 1000f)), -16159i, Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, true))), vec2<u32>(37034u, 24601u), 67277i), Struct_5(Struct_4(Struct_1(59368u, vec3<bool>(false, true, false)), vec4<f32>(-657f, -733f, -565f, 360f)), -34846i, Struct_2(Struct_1(9340u, vec3<bool>(true, false, false))), vec2<u32>(31132u, 16669u), 10607i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(true, false, true)), vec4<f32>(1021f, -296f, 1118f, 1416f)), 1i, Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, false))), vec2<u32>(74914u, 0u), 2147483647i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(true, true, false)), vec4<f32>(-792f, -1969f, -1020f, -202f)), i32(-2147483648), Struct_2(Struct_1(12391u, vec3<bool>(true, true, true))), vec2<u32>(16701u, 6103u), -1i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, false, true)), vec4<f32>(418f, -154f, -715f, 1515f)), 44009i, Struct_2(Struct_1(30204u, vec3<bool>(true, false, true))), vec2<u32>(3037u, 3908u), 1i), Struct_5(Struct_4(Struct_1(25157u, vec3<bool>(false, false, true)), vec4<f32>(-1000f, -434f, 2775f, 547f)), 2147483647i, Struct_2(Struct_1(20174u, vec3<bool>(false, false, false))), vec2<u32>(1u, 42041u), 1i), Struct_5(Struct_4(Struct_1(20013u, vec3<bool>(false, true, false)), vec4<f32>(-662f, -473f, -639f, 307f)), 0i, Struct_2(Struct_1(1u, vec3<bool>(true, false, true))), vec2<u32>(1u, 4294967295u), -1i), Struct_5(Struct_4(Struct_1(1u, vec3<bool>(false, false, false)), vec4<f32>(792f, -2686f, -1000f, -599f)), 3608i, Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, false))), vec2<u32>(31711u, 4294967295u), -1i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, false, false)), vec4<f32>(-194f, 836f, 1101f, -910f)), 2147483647i, Struct_2(Struct_1(70355u, vec3<bool>(false, false, false))), vec2<u32>(4294967295u, 4294967295u), -47228i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, true, true)), vec4<f32>(-403f, -946f, 720f, -781f)), 1i, Struct_2(Struct_1(1u, vec3<bool>(true, false, true))), vec2<u32>(22793u, 52437u), -4234i), Struct_5(Struct_4(Struct_1(27107u, vec3<bool>(true, true, true)), vec4<f32>(-710f, -2136f, -296f, -1980f)), 3713i, Struct_2(Struct_1(0u, vec3<bool>(true, false, false))), vec2<u32>(3370u, 0u), -1i), Struct_5(Struct_4(Struct_1(44037u, vec3<bool>(true, true, false)), vec4<f32>(-1181f, -1111f, -668f, -1610f)), i32(-2147483648), Struct_2(Struct_1(87475u, vec3<bool>(true, false, true))), vec2<u32>(0u, 0u), -6571i), Struct_5(Struct_4(Struct_1(65070u, vec3<bool>(true, false, false)), vec4<f32>(1000f, 1025f, 420f, 510f)), 30538i, Struct_2(Struct_1(16093u, vec3<bool>(true, true, false))), vec2<u32>(4294967295u, 0u), 1i), Struct_5(Struct_4(Struct_1(10949u, vec3<bool>(true, false, false)), vec4<f32>(661f, -2630f, -1978f, 1906f)), -1i, Struct_2(Struct_1(87171u, vec3<bool>(true, true, true))), vec2<u32>(4294967295u, 4294967295u), -65000i), Struct_5(Struct_4(Struct_1(42280u, vec3<bool>(true, false, true)), vec4<f32>(-489f, 1016f, -341f, -1696f)), 2147483647i, Struct_2(Struct_1(15246u, vec3<bool>(true, false, false))), vec2<u32>(1u, 1u), 2147483647i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(false, true, true)), vec4<f32>(-2191f, -3058f, 994f, 228f)), 60200i, Struct_2(Struct_1(26905u, vec3<bool>(true, false, false))), vec2<u32>(13057u, 4294967295u), -1i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, true, false)), vec4<f32>(-139f, 1537f, -190f, 129f)), 2147483647i, Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, false))), vec2<u32>(0u, 17807u), 2147483647i), Struct_5(Struct_4(Struct_1(0u, vec3<bool>(true, false, true)), vec4<f32>(953f, -929f, 317f, 943f)), 6668i, Struct_2(Struct_1(58125u, vec3<bool>(true, true, true))), vec2<u32>(4294967295u, 60442u), 2147483647i), Struct_5(Struct_4(Struct_1(4294967295u, vec3<bool>(false, true, false)), vec4<f32>(-666f, 509f, 1339f, -767f)), 45679i, Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, true))), vec2<u32>(132716u, 0u), i32(-2147483648)), Struct_5(Struct_4(Struct_1(8238u, vec3<bool>(false, true, false)), vec4<f32>(-1000f, -970f, 1759f, 1041f)), -33877i, Struct_2(Struct_1(0u, vec3<bool>(true, false, true))), vec2<u32>(0u, 4294967295u), 39921i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_4) -> i32 {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    global1 = array<Struct_5, 31>();
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(arg_3.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.b.x, arg_3.b.x, 754f, -375f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1641f, arg_3.b.x, arg_3.b.x, 2827f), arg_3.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b))), (-1i >> (firstTrailingBit(arg_2.a.a) % 32u)) < -reverseBits(arg_0))));
    return ~(~arg_0);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_5, 31>();
    global0 = array<Struct_3, 20>();
    let var_0 = true;
    var var_1 = -_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(func_3(-18233i, vec2<i32>(-97525i, -14014i), Struct_2(Struct_1(u_input.b, vec3<bool>(var_0, var_0, var_0))), Struct_4(Struct_1(122716u, vec3<bool>(false, false, var_0)), vec4<f32>(-1000f, -2130f, -1855f, -1143f))), i32(-1i) * -7187i)), countOneBits(reverseBits(vec2<i32>(-10142i, 23417i))));
    var var_2 = any(!(!select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, false, var_0))));
    return Struct_1(~1u, vec3<bool>(var_0, false, true));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 20>();
    let var_0 = ~(vec4<i32>(-1i) * -vec4<i32>(15522i, 1i, 2147483647i, -1i));
    let var_1 = var_0.wzx;
    global0 = array<Struct_3, 20>();
    var var_2 = Struct_5(Struct_4(func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_f_op_f32(f32(-1f) * -869f), 1407f))), var_1.x, Struct_2(Struct_1(abs(93136u), select(select(arg_0.a.yxw, arg_0.a.xyx, arg_0.a.x), vec3<bool>(arg_0.a.x, false, false), select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.wxw, vec3<bool>(true, false, false))))), ~u_input.d.xy, -12866i);
    return Struct_1(arg_0.b.x, vec3<bool>(arg_0.a.x, true, !any(arg_0.a)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_4) -> bool {
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    let var_0 = select(arg_2, 27661i, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b.x)))), -1386f, arg_0) + arg_3.b);
    var_1 = arg_3.b;
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec4_u32(u_input.a, ~(u_input.a >> (max(vec4<u32>(arg_2.a.a, u_input.d.x, 13857u, 1u), vec4<u32>(32068u, 38943u, 0u, 33859u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.a, arg_2.a.a, 1u, 4294967295u), u_input.a), vec4<u32>(arg_2.a.a, abs(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.a, u_input.c.x, arg_2.a.a), vec3<u32>(arg_2.a.a, arg_2.a.a, 0u)), 0u)), ~vec4<u32>(46498u, _wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.c), 50312u, countOneBits(u_input.c.x))));
    var var_1 = arg_2.a.b.x;
    let var_2 = 0u;
    let var_3 = var_2 | ~(~var_2);
    var_0 = max(~vec4<u32>(10004u, min(6873u, _wgslsmith_div_u32(1u, arg_2.a.a)), arg_2.a.a, _wgslsmith_clamp_u32(~34631u, 1u, 2823u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1385u, u_input.a.x), select(u_input.a.yw, u_input.c, arg_0.yz)) | select(min(3708u, var_0.x), 1u, 30671u != var_2), 4294967295u, func_2().a, 1u));
    return Struct_3(select(!vec4<bool>(true, true, all(vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x, false)), arg_2.a.b.x), select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0, arg_0), !vec4<bool>(false, true, arg_0.x, true), func_2().b.x), vec4<bool>(arg_0.x, true, true, 0u != arg_2.a.a), vec4<bool>(true, true, arg_2.a.b.x, false)), !vec4<bool>(false, true, true, arg_2.a.b.x || arg_0.x)), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(var_0.zzy), ~u_input.a.wzz)), (~7529u << (var_2 % 32u)) << (reverseBits(76093u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), func_4(_wgslsmith_f_op_f32(-1694f - -389f), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), -44397i, Struct_4(func_1(global0[_wgslsmith_index_u32(8734u, 20u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1874f, -1005f, 2103f), vec4<f32>(-1000f, -1207f, -500f, -906f)))), any(select(func_2().b.xy, vec2<bool>(true, true), false)), false), 1f, Struct_2(Struct_1(_wgslsmith_add_u32(4294967295u ^ u_input.b, ~u_input.c.x), vec3<bool>(true, true, true))));
    global1 = array<Struct_5, 31>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 31u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(var_1.a.b));
    var var_3 = var_1.c.a.b.x;
    let var_4 = _wgslsmith_add_i32(var_1.b, abs(20741i));
    var var_5 = u_input.a;
    var var_6 = global1[_wgslsmith_index_u32(func_2().a, 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~62639u), _wgslsmith_clamp_u32(20819u, abs(~_wgslsmith_div_u32(var_0.b.x, 4294967295u)), _wgslsmith_dot_vec2_u32(var_5.zx, ~vec2<u32>(u_input.a.x, 10562u))));
}

