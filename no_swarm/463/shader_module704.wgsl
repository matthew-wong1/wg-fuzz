struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 27>;

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_3(vec2<i32>(1i, 1i)), Struct_2(vec3<i32>(2147483647i, 49656i, -37765i), -1070f, vec4<bool>(true, true, true, true), 513f), vec3<u32>(88239u, 4294967295u, 0u), Struct_1(vec3<f32>(-1045f, -271f, 1367f), vec2<bool>(true, true), vec4<i32>(0i, -20453i, -12580i, -1i)), false), Struct_4(Struct_3(vec2<i32>(-33593i, 2147483647i)), Struct_2(vec3<i32>(-1i, -47751i, -1i), 641f, vec4<bool>(true, true, true, true), 663f), vec3<u32>(99837u, 0u, 4294967295u), Struct_1(vec3<f32>(822f, 168f, -485f), vec2<bool>(false, false), vec4<i32>(-54531i, 2147483647i, i32(-2147483648), -42060i)), false), Struct_4(Struct_3(vec2<i32>(29849i, -22464i)), Struct_2(vec3<i32>(-23697i, -1i, -1i), 1071f, vec4<bool>(true, true, false, true), -1087f), vec3<u32>(16953u, 1u, 4294967295u), Struct_1(vec3<f32>(699f, 1000f, 1614f), vec2<bool>(false, false), vec4<i32>(0i, -17483i, -1i, 2147483647i)), false), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 37621i)), Struct_2(vec3<i32>(15790i, 18834i, -4093i), -735f, vec4<bool>(false, true, false, true), -1000f), vec3<u32>(0u, 0u, 1u), Struct_1(vec3<f32>(-1547f, 683f, 774f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 56036i, -1i, 15987i)), true), Struct_4(Struct_3(vec2<i32>(-8199i, 15694i)), Struct_2(vec3<i32>(0i, -28066i, 1i), 408f, vec4<bool>(true, false, true, false), 1091f), vec3<u32>(50083u, 4294967295u, 14648u), Struct_1(vec3<f32>(311f, -946f, -815f), vec2<bool>(true, false), vec4<i32>(0i, 1i, -1i, 2147483647i)), true), Struct_4(Struct_3(vec2<i32>(1i, 37022i)), Struct_2(vec3<i32>(33310i, -47134i, 7764i), -190f, vec4<bool>(false, true, true, false), 1306f), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec3<f32>(-1264f, 197f, 1919f), vec2<bool>(true, false), vec4<i32>(-15138i, 7050i, 0i, 1i)), true), Struct_4(Struct_3(vec2<i32>(-10984i, 33476i)), Struct_2(vec3<i32>(-1i, 67761i, -1i), -1000f, vec4<bool>(false, false, true, true), -846f), vec3<u32>(29337u, 1u, 1u), Struct_1(vec3<f32>(-897f, -417f, 1000f), vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 2147483647i, 28626i)), true), Struct_4(Struct_3(vec2<i32>(1i, 2147483647i)), Struct_2(vec3<i32>(-29334i, -17400i, 16414i), 338f, vec4<bool>(true, true, false, false), 848f), vec3<u32>(0u, 1u, 9128u), Struct_1(vec3<f32>(503f, -451f, 1536f), vec2<bool>(false, false), vec4<i32>(1i, 2147483647i, -405i, i32(-2147483648))), true), Struct_4(Struct_3(vec2<i32>(27443i, 1i)), Struct_2(vec3<i32>(-9279i, -9685i, 35911i), -1510f, vec4<bool>(false, false, true, true), -394f), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec3<f32>(340f, -2080f, -910f), vec2<bool>(false, false), vec4<i32>(2147483647i, -17599i, 14534i, 27219i)), true), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 11817i)), Struct_2(vec3<i32>(-44468i, 43455i, 80923i), -2307f, vec4<bool>(true, true, false, false), -1184f), vec3<u32>(11710u, 22397u, 18072u), Struct_1(vec3<f32>(1167f, -1536f, 1202f), vec2<bool>(false, false), vec4<i32>(-32435i, -1i, 1i, -32766i)), true), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), -1i)), Struct_2(vec3<i32>(17868i, 0i, 0i), -153f, vec4<bool>(false, false, false, true), -661f), vec3<u32>(1u, 1u, 0u), Struct_1(vec3<f32>(-1000f, -202f, 592f), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -18982i, 8928i, -6393i)), true), Struct_4(Struct_3(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(vec3<i32>(1i, -1i, i32(-2147483648)), -1082f, vec4<bool>(false, false, false, false), 142f), vec3<u32>(1u, 1u, 0u), Struct_1(vec3<f32>(1000f, 1297f, -100f), vec2<bool>(true, false), vec4<i32>(-1i, 50267i, 0i, 2147483647i)), true), Struct_4(Struct_3(vec2<i32>(18996i, 44385i)), Struct_2(vec3<i32>(61694i, -1i, 47360i), 816f, vec4<bool>(false, true, false, false), 770f), vec3<u32>(8673u, 22313u, 0u), Struct_1(vec3<f32>(-632f, -155f, -2347f), vec2<bool>(false, false), vec4<i32>(2147483647i, 23419i, 2147483647i, 0i)), true), Struct_4(Struct_3(vec2<i32>(4468i, 2147483647i)), Struct_2(vec3<i32>(2147483647i, -2999i, 17583i), 1000f, vec4<bool>(false, true, false, false), 1514f), vec3<u32>(124u, 1u, 28715u), Struct_1(vec3<f32>(-100f, -431f, 529f), vec2<bool>(false, true), vec4<i32>(20599i, 2147483647i, -1i, 79132i)), false), Struct_4(Struct_3(vec2<i32>(-1i, 41252i)), Struct_2(vec3<i32>(-12417i, -28925i, 81688i), 376f, vec4<bool>(true, false, false, true), -487f), vec3<u32>(20300u, 4294967295u, 21157u), Struct_1(vec3<f32>(259f, -1013f, 140f), vec2<bool>(true, false), vec4<i32>(1i, 33043i, 16080i, -5741i)), false), Struct_4(Struct_3(vec2<i32>(31115i, 1733i)), Struct_2(vec3<i32>(0i, -1i, 52943i), -296f, vec4<bool>(false, true, false, true), 298f), vec3<u32>(25082u, 68639u, 0u), Struct_1(vec3<f32>(833f, 708f, -101f), vec2<bool>(true, true), vec4<i32>(-1i, 2660i, 0i, -40570i)), true), Struct_4(Struct_3(vec2<i32>(-14434i, -43807i)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 0i), 1000f, vec4<bool>(false, false, false, false), -134f), vec3<u32>(4294967295u, 16577u, 55149u), Struct_1(vec3<f32>(263f, -2250f, 421f), vec2<bool>(false, true), vec4<i32>(-27579i, 0i, -19526i, 2147483647i)), false), Struct_4(Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec3<i32>(1i, -32352i, -13479i), -1308f, vec4<bool>(true, false, false, true), 1812f), vec3<u32>(61416u, 857u, 27219u), Struct_1(vec3<f32>(-530f, -283f, 566f), vec2<bool>(false, true), vec4<i32>(-10252i, 0i, -16366i, -1i)), true), Struct_4(Struct_3(vec2<i32>(0i, 0i)), Struct_2(vec3<i32>(-19272i, 0i, i32(-2147483648)), -131f, vec4<bool>(false, true, true, false), -463f), vec3<u32>(4294967295u, 84881u, 1u), Struct_1(vec3<f32>(-1710f, -325f, 2286f), vec2<bool>(true, true), vec4<i32>(-1i, -15624i, 1i, 68730i)), false), Struct_4(Struct_3(vec2<i32>(25325i, 2147483647i)), Struct_2(vec3<i32>(1i, 2147483647i, 73347i), -770f, vec4<bool>(false, true, false, true), -922f), vec3<u32>(19436u, 0u, 70631u), Struct_1(vec3<f32>(1344f, -949f, 1063f), vec2<bool>(false, false), vec4<i32>(0i, 0i, -2025i, -14819i)), true));

var<private> global3: array<Struct_2, 29>;

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-883f, -1000f, 301f), vec2<bool>(true, false), vec4<i32>(-1i, 36325i, 0i, 0i)), Struct_1(vec3<f32>(-179f, 1717f, 1567f), vec2<bool>(false, false), vec4<i32>(0i, 0i, -15272i, 1i)), Struct_1(vec3<f32>(1263f, 638f, 588f), vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -1i)), Struct_1(vec3<f32>(-1773f, -100f, 816f), vec2<bool>(true, false), vec4<i32>(-834i, -23102i, 61988i, 0i)), Struct_1(vec3<f32>(-115f, -1000f, -475f), vec2<bool>(false, false), vec4<i32>(-41110i, -33070i, -1i, 0i)), Struct_1(vec3<f32>(-134f, -865f, 620f), vec2<bool>(false, true), vec4<i32>(-29101i, 18896i, -1i, -29303i)), Struct_1(vec3<f32>(137f, -1974f, -902f), vec2<bool>(false, false), vec4<i32>(2147483647i, 28115i, 15054i, 0i)), Struct_1(vec3<f32>(1359f, 415f, -141f), vec2<bool>(false, false), vec4<i32>(-2368i, 0i, 1188i, i32(-2147483648))), Struct_1(vec3<f32>(1316f, -1670f, 937f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 82520i)), Struct_1(vec3<f32>(-860f, 106f, -391f), vec2<bool>(true, false), vec4<i32>(67176i, 13112i, 1i, 0i)), Struct_1(vec3<f32>(-1726f, 733f, -100f), vec2<bool>(true, false), vec4<i32>(846i, 49967i, 2147483647i, -33501i)), Struct_1(vec3<f32>(810f, 1233f, -479f), vec2<bool>(true, false), vec4<i32>(2147483647i, 20430i, -1i, -1i)), Struct_1(vec3<f32>(232f, 123f, 1556f), vec2<bool>(false, false), vec4<i32>(3624i, 0i, 36462i, 2147483647i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_3, 27>();
    global4 = array<Struct_1, 13>();
    var var_0 = arg_0.a.x ^ _wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(35276i, arg_0.a.x, arg_0.a.x, -1i))), vec4<i32>(~arg_0.a.x, arg_0.a.x, arg_0.a.x >> (~123990u % 32u), -22982i));
    global1 = array<Struct_3, 27>();
    global3 = array<Struct_2, 29>();
    return u_input.c.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = abs(20023i);
    let var_1 = u_input.a.x;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-107f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-657f, global0.x)), _wgslsmith_f_op_f32(global0.x + -1273f))), global0.x)), (arg_0 << (func_3(Struct_2(vec3<i32>(6668i, 0i, var_0), -996f, vec4<bool>(false, false, arg_1, false), global0.x)) % 32u)) >= _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0, var_0), -7917i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1828f + global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(246f + -865f)))))));
    let var_2 = select(vec4<bool>(all(vec2<bool>(true, true)), u_input.c.x > (var_1 >> (~u_input.a.x % 32u)), true, arg_1), select(select(!(!vec4<bool>(arg_1, arg_1, arg_1, true)), select(!vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, false, true, true), false), true), !select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, arg_1, arg_1, false), false)), vec4<bool>(arg_1, !any(vec3<bool>(true, true, arg_1)), all(select(vec3<bool>(true, false, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, true, false))), arg_1), vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), arg_1)), true, arg_1, true)), !arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(882f, global0.x, 339f, 266f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1267f, -571f, -1642f, global0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-798f, 3007f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(210f, -1251f, -174f, global0.x) - vec4<f32>(global0.x, 843f, -187f, global0.x)))))));
    return global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, var_1), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1, 1u, var_1, var_1), vec4<u32>(var_1, var_1, 4294967295u, 1u), var_2), countOneBits(vec4<u32>(u_input.c.x, var_1, 5887u, 69135u))), firstTrailingBit(~0u)), vec3<u32>(4294967295u, var_1, _wgslsmith_add_u32(var_1, u_input.b.x)))), 29u)];
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~(arg_0 << (4294967295u % 32u)) | arg_0), u_input.b.zx);
    let var_1 = max(-reverseBits(min(countOneBits(vec4<i32>(-1i, 43352i, 5753i, 46018i)), -vec4<i32>(-14809i, -39634i, arg_3.a.x, arg_3.a.x))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, reverseBits(arg_3.a.x), _wgslsmith_div_i32(0i, arg_3.a.x), i32(-1i) * -52162i), min(_wgslsmith_mod_vec4_i32(vec4<i32>(50242i, 59574i, arg_1, -2147483647i), vec4<i32>(35134i, arg_1, arg_3.a.x, -26416i)), vec4<i32>(arg_1, arg_3.a.x, arg_1, 1i) | vec4<i32>(28464i, -26322i, 71302i, arg_3.a.x))));
    let var_2 = Struct_4(Struct_3(vec2<i32>(~_wgslsmith_clamp_i32(1i, arg_3.a.x, -2147483647i), -1i)), arg_3, ~(max(u_input.b, u_input.b) & ~abs(u_input.b)), global4[_wgslsmith_index_u32(14998u, 13u)], true);
    var var_3 = global4[_wgslsmith_index_u32(0u, 13u)];
    var var_4 = countOneBits(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_3.a, vec3<i32>(var_1.x, -7914i, 15699i)), vec3<i32>(_wgslsmith_dot_vec2_i32(var_1.zy ^ vec2<i32>(-22781i, 245i), ~var_3.c.ww), 6121i, min(_wgslsmith_div_i32(arg_1, var_2.b.a.x), arg_3.a.x))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f - -654f)), 1265f)), -176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-818f, var_3.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.a.x - -1243f))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    var var_0 = !(!arg_3.b);
    let var_1 = func_2(arg_3.c.x, true);
    let var_2 = u_input.b;
    global2 = array<Struct_4, 20>();
    let var_3 = Struct_4(global1[_wgslsmith_index_u32(u_input.c.x, 27u)], func_2(_wgslsmith_add_i32(var_1.a.x, -var_1.a.x | ~2147483647i), false), vec3<u32>(36439u, ~u_input.a.x, u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.a, vec3<f32>(1029f, 763f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 662f, 538f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_3.a.x, arg_1.x)) - arg_3.a)), var_1.c.xx, ~vec4<i32>(-2147483647i, arg_3.c.x | arg_3.c.x, -9260i ^ arg_3.c.x, 4136i | arg_3.c.x)), all(var_1.c.xzy));
    return Struct_5(~firstLeadingBit(countOneBits(~vec4<u32>(4294967295u, var_2.x, 4294967295u, var_2.x))), Struct_4(var_3.a, Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_3.d.c.x, 1i, -18390i), var_3.d.c.wxz, vec3<bool>(true, true, true)), vec3<i32>(var_3.b.a.x, 0i, var_3.d.c.x) & arg_3.c.xwy, var_3.d.c.zwy), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(exp2(global0.x)), arg_0)), var_3.b.c, arg_1.x), var_3.c, Struct_1(arg_1.xyw, var_1.c.zz, min(select(arg_3.c, vec4<i32>(arg_3.c.x, -17098i, -1i, -31509i), var_0.x), -vec4<i32>(-28437i, var_1.a.x, 0i, -2147483647i))), false), var_1);
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_5(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(301f, -2967f, global0.x, 1501f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 2400f, -1208f, 724f)), true)), _wgslsmith_f_op_vec4_f32(func_4(u_input.b.x, -1i, vec3<bool>(true, all(vec2<bool>(true, true)), true), func_2(arg_0, 58482i >= arg_0))))), true, global4[_wgslsmith_index_u32(1u, 13u)]);
    global4 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_mod_i32(-25166i, -countOneBits(~arg_0) & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.a.x, -2383i), firstLeadingBit(vec2<i32>(-2147483647i, var_0.c.a.x) << (vec2<u32>(52636u, u_input.c.x) % vec2<u32>(32u)))));
    global0 = vec2<f32>(-1265f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2287f, 1643f))))));
    let var_2 = var_0.a.yzx;
    return abs(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_mult_i32(-min(1184i, 33862i), func_1(6739i) | max(1i, 9414i)), 1i));
    global3 = array<Struct_2, 29>();
    global3 = array<Struct_2, 29>();
    global2 = array<Struct_4, 20>();
    global4 = array<Struct_1, 13>();
    var var_2 = func_5(u_input.c.x < select(abs(u_input.a.x) ^ min(47478u, u_input.a.x), u_input.a.x, true), vec4<f32>(424f, global0.x, -550f, -179f), func_2(func_1(var_1.a.x) & max(~2147483647i, ~var_1.a.x), func_5(true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, global0.x, global0.x, 2160f) - vec4<f32>(-1000f, global0.x, 248f, 1762f)))), any(func_5(true, vec4<f32>(global0.x, -668f, global0.x, -369f), false, global4[_wgslsmith_index_u32(27079u, 13u)]).b.b.c), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1773f, global0.x)), vec2<bool>(true, true), reverseBits(vec4<i32>(var_1.a.x, 0i, -2858i, 55463i)))).c.c.x).c.x, func_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(190f, -2092f, global0.x, global0.x) + vec4<f32>(global0.x, 369f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, 745f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(626f, global0.x, 1517f, global0.x))), vec4<f32>(1000f, global0.x, global0.x, -365f)))), !(-var_1.a.x >= func_2(2147483647i, false).a.x), func_5(true, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, 715f), _wgslsmith_f_op_f32(max(852f, -874f)), _wgslsmith_f_op_f32(f32(-1f) * -451f)), select(true, true, func_2(48366i, false).c.x), func_5(0i <= var_1.a.x, vec4<f32>(907f, global0.x, global0.x, global0.x), global0.x >= -1418f, func_5(false, vec4<f32>(global0.x, global0.x, global0.x, global0.x), true, global4[_wgslsmith_index_u32(4294967295u, 13u)]).b.d).b.d).b.d).b.d).b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1467f));
}

