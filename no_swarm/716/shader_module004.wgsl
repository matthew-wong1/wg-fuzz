struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(vec3<i32>(-61644i, -18917i, -1i), vec2<bool>(true, false), -2198f, Struct_1(vec4<f32>(982f, -931f, -317f, 813f)), 1000f), Struct_1(vec4<f32>(396f, -489f, -1217f, 962f)), 1i, Struct_2(vec3<i32>(i32(-2147483648), 0i, -45936i), vec2<bool>(false, false), -711f, Struct_1(vec4<f32>(2042f, -2438f, 1024f, 272f)), 831f), Struct_1(vec4<f32>(-547f, 170f, 1027f, -619f))), Struct_3(Struct_2(vec3<i32>(1i, 0i, i32(-2147483648)), vec2<bool>(false, true), -1531f, Struct_1(vec4<f32>(-713f, 192f, -550f, -1415f)), -578f), Struct_1(vec4<f32>(673f, 419f, 682f, -1173f)), 47056i, Struct_2(vec3<i32>(-56172i, 0i, 21260i), vec2<bool>(true, false), 1020f, Struct_1(vec4<f32>(1051f, 141f, 1165f, -245f)), -961f), Struct_1(vec4<f32>(248f, 1184f, -182f, -420f))), Struct_3(Struct_2(vec3<i32>(-1i, 2147483647i, 15498i), vec2<bool>(true, false), 594f, Struct_1(vec4<f32>(603f, 722f, -451f, 1147f)), 1000f), Struct_1(vec4<f32>(1224f, 1000f, -483f, 164f)), i32(-2147483648), Struct_2(vec3<i32>(68621i, 2147483647i, 1i), vec2<bool>(false, false), -560f, Struct_1(vec4<f32>(692f, 507f, 1084f, -265f)), -640f), Struct_1(vec4<f32>(-516f, -1241f, 157f, 1188f))), Struct_3(Struct_2(vec3<i32>(0i, 33355i, 2147483647i), vec2<bool>(true, false), 1156f, Struct_1(vec4<f32>(-313f, -777f, 995f, -1206f)), 617f), Struct_1(vec4<f32>(262f, 1048f, -672f, 1444f)), 0i, Struct_2(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec2<bool>(true, false), -1559f, Struct_1(vec4<f32>(1137f, -1065f, 168f, 1123f)), 992f), Struct_1(vec4<f32>(-1000f, 780f, -624f, -1847f))), Struct_3(Struct_2(vec3<i32>(1i, i32(-2147483648), 2147483647i), vec2<bool>(false, false), 1006f, Struct_1(vec4<f32>(197f, 325f, 367f, -1242f)), -1035f), Struct_1(vec4<f32>(705f, 213f, 417f, 183f)), 0i, Struct_2(vec3<i32>(-1i, 79962i, 6534i), vec2<bool>(false, true), 1192f, Struct_1(vec4<f32>(859f, -1341f, -956f, -774f)), -1000f), Struct_1(vec4<f32>(-667f, -1008f, -1524f, 1968f))), Struct_3(Struct_2(vec3<i32>(2147483647i, 2147483647i, -51642i), vec2<bool>(true, false), -1000f, Struct_1(vec4<f32>(910f, 265f, -1893f, -1000f)), -341f), Struct_1(vec4<f32>(-289f, -595f, -212f, -519f)), -1533i, Struct_2(vec3<i32>(i32(-2147483648), -10836i, -405i), vec2<bool>(false, true), -1927f, Struct_1(vec4<f32>(230f, 854f, 100f, -1107f)), -144f), Struct_1(vec4<f32>(-260f, 885f, 1053f, 906f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<bool>(true, false), -833f, Struct_1(vec4<f32>(272f, 505f, 1417f, 452f)), -334f), Struct_1(vec4<f32>(467f, 1000f, 536f, -2247f)), 0i, Struct_2(vec3<i32>(2147483647i, -48543i, i32(-2147483648)), vec2<bool>(false, true), -990f, Struct_1(vec4<f32>(1136f, 185f, -782f, 551f)), -832f), Struct_1(vec4<f32>(492f, 227f, 1126f, -362f))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 71527i, 0i), vec2<bool>(true, true), 207f, Struct_1(vec4<f32>(622f, -565f, 2952f, 519f)), -200f), Struct_1(vec4<f32>(1834f, 517f, -506f, 337f)), 1i, Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), vec2<bool>(true, true), 1022f, Struct_1(vec4<f32>(781f, 875f, 1006f, 607f)), -1575f), Struct_1(vec4<f32>(1740f, 147f, -1151f, -486f))));

var<private> global1: array<vec2<f32>, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = select(select(vec3<i32>(reverseBits(-2147483647i), _wgslsmith_add_i32(-11736i, abs(-2147483647i)), 44669i), vec3<i32>(u_input.a, u_input.c, arg_0), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true)), vec3<i32>(-_wgslsmith_mult_i32(-99976i << (u_input.e % 32u), -5107i >> (u_input.e % 32u)), min(-1554i, 16410i) >> (u_input.e % 32u), u_input.b.x), vec3<bool>(!(true | all(vec3<bool>(true, true, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), any(vec2<bool>(false, true)))), 4294967295u != ~u_input.e));
    var var_1 = Struct_5(reverseBits(u_input.d), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(619f, -564f, 2170f, 424f), vec4<f32>(1564f, 741f, -179f, 887f), true)))))), 16934u, vec2<u32>(_wgslsmith_mod_u32(min(~35475u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 24985u, u_input.e, u_input.e), vec4<u32>(u_input.e, 0u, 1u, 51218u))), ~(~u_input.e)), 0u >> ((_wgslsmith_sub_u32(u_input.e, 0u) >> ((u_input.e | 65913u) % 32u)) % 32u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1598f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f - -182f)), _wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1552f - 643f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.x * 546f) - var_1.b.a.x))));
    global0 = array<Struct_3, 8>();
    let var_3 = ~vec4<u32>(~0u, 0u ^ u_input.e, 40872u, _wgslsmith_mult_u32(var_1.c, u_input.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(624f, var_2.x))));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_0.e;
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_1 = Struct_2(vec3<i32>(56337i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~50449i, _wgslsmith_div_i32(-2147483647i, 10055i), max(arg_2.x, arg_0.a.x), 2147483647i), vec4<i32>(min(arg_0.a.x, arg_2.x), _wgslsmith_dot_vec3_i32(arg_0.a.wwx, vec3<i32>(66098i, arg_0.a.x, arg_0.a.x)), -1i, _wgslsmith_sub_i32(u_input.d.x, arg_2.x)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1627f), var_0, var_0.a.x);
    global1 = array<vec2<f32>, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))) - arg_1);
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_mod_vec3_i32(u_input.d.wyz, ~(~vec3<i32>(u_input.a, u_input.c, 8126i))), !select(vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 2343f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 442f) - vec4<f32>(677f, -789f, -154f, -233f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_1 = var_0.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1926f, var_0.d.a.x, -583f, -1316f))), _wgslsmith_f_op_vec4_f32(var_0.d.a + vec4<f32>(1028f, arg_0, -484f, var_0.d.a.x))) * var_0.d.a)));
    let var_3 = !(!vec2<bool>(var_0.b.x, all(vec3<bool>(var_0.b.x, var_0.b.x, false)) && false));
    var var_4 = global0[_wgslsmith_index_u32(~u_input.e, 8u)];
    return firstTrailingBit(max(49948u, select(u_input.e, ~(~u_input.e), any(select(vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(true, true, false, var_3.x), true)))));
}

fn func_2(arg_0: Struct_2) -> bool {
    global1 = array<vec2<f32>, 31>();
    let var_0 = global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(func_4(Struct_5(vec4<i32>(1i, arg_0.a.x, arg_0.a.x, 49575i ^ u_input.c), arg_0.d, ~u_input.e, vec2<u32>(~39659u, u_input.e), arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2368f - _wgslsmith_f_op_f32(func_3(-2147483647i)))), vec2<i32>(34319i, ~min(u_input.d.x, 0i)))), select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(0i, 1i, 7373i, -2147483647i)), u_input.b), vec4<i32>(firstTrailingBit(-15039i), max(24314i, 2147483647i), arg_0.a.x, 1i)), u_input.d, select(select(select(vec4<bool>(true, false, true, arg_0.b.x), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x), true), !vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), arg_0.c == arg_0.e), !vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), all(vec3<bool>(arg_0.b.x, arg_0.b.x, true))))), 8u)];
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1484f))));
    var var_2 = Struct_3(Struct_2(reverseBits(_wgslsmith_div_vec3_i32(u_input.b.zxw, vec3<i32>(6503i, 2147483647i, var_0.c) << (vec3<u32>(u_input.e, 3601u, 1u) % vec3<u32>(32u)))), arg_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(-226f, 1094f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.a.x)))), var_0.d.d, _wgslsmith_f_op_f32(ceil(991f))), arg_0.d, -var_0.d.a.x, Struct_2(vec3<i32>(_wgslsmith_div_i32(max(var_0.a.a.x, -16498i), 39262i), abs(var_0.c), ~1i), select(!(!vec2<bool>(arg_0.b.x, var_0.a.b.x)), select(!var_0.d.b, vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b.x), vec2<bool>(false, true))), any(vec4<bool>(var_0.d.b.x, true, arg_0.b.x, false)) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, var_0.a.c), _wgslsmith_f_op_f32(round(var_1))))), Struct_1(arg_0.d.a), var_0.d.c), Struct_1(var_0.a.d.a));
    global1 = array<vec2<f32>, 31>();
    return u_input.b.x <= _wgslsmith_sub_i32(var_2.d.a.x, countOneBits(u_input.d.x));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_3, 8>();
    var var_0 = vec4<bool>(any(select(vec2<bool>(true, true), select(!vec2<bool>(false, arg_0), !vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), true), select(vec2<bool>(arg_0, true), vec2<bool>(false, false), arg_0)))), -2147483647i >= u_input.d.x, true, all(select(vec4<bool>(true, arg_0 && arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, false)), func_2(Struct_2(u_input.b.zxw, vec2<bool>(false, arg_0), arg_3.a.x, Struct_1(arg_3.a), 572f))), vec4<bool>(!arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, any(vec2<bool>(true, false)), true, true))));
    var_0 = vec4<bool>(arg_0, !(!arg_0), all(!select(select(vec4<bool>(var_0.x, var_0.x, arg_0, arg_0), vec4<bool>(var_0.x, arg_0, false, false), vec4<bool>(arg_0, var_0.x, arg_0, var_0.x)), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x)), false);
    var var_1 = _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.e, 1u, 59607u, u_input.e) ^ vec4<u32>(1u, u_input.e, 42106u, u_input.e)), select(vec4<u32>(u_input.e, u_input.e, u_input.e, 31288u), vec4<u32>(4294967295u, u_input.e, 47427u, 70700u) << (vec4<u32>(u_input.e, 39265u, u_input.e, 0u) % vec4<u32>(32u)), !vec4<bool>(var_0.x, arg_0, true, arg_0))) ^ min(~67229u, u_input.e));
    let var_2 = Struct_3(Struct_2(u_input.d.wxz, select(var_0.zx, select(select(var_0.zw, var_0.zy, true), !var_0.yz, vec2<bool>(true, true)), !var_0.wy), 185f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_3.a, arg_3.a)) * vec4<f32>(arg_3.a.x, -557f, 291f, -961f))), arg_3.a.x), arg_3, max(~6812i, max(-1i, u_input.b.x)), Struct_2(u_input.b.zyy, var_0.xw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f - arg_1)), 552f), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1187f) - _wgslsmith_f_op_f32(-arg_1)))), arg_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 297f))) - _wgslsmith_f_op_f32(f32(-1f) * -1246f)));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> i32 {
    global1 = array<vec2<f32>, 31>();
    global1 = array<vec2<f32>, 31>();
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(u_input.b.xzx, ~u_input.d.yyz, ~vec3<i32>(arg_2, u_input.a, -4452i)) << (vec3<u32>(arg_0.x, u_input.e, ~1u) % vec3<u32>(32u)), !(!(!vec2<bool>(arg_3, arg_3))), arg_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_div_f32(-628f, arg_1.x), -271f, _wgslsmith_f_op_f32(-arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(min(-643f, arg_1.x)), arg_1.x, 1f, _wgslsmith_f_op_f32(step(925f, 522f))), select(vec4<bool>(arg_3, arg_3, false, arg_3), select(vec4<bool>(true, arg_3, true, false), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, false, true)), !vec4<bool>(arg_3, arg_3, false, true))))), _wgslsmith_div_f32(795f, 753f));
    global0 = array<Struct_3, 8>();
    global1 = array<vec2<f32>, 31>();
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 8>();
    var var_0 = func_6(vec4<u32>(_wgslsmith_mod_u32(reverseBits(0u), ~u_input.e) >> (4294967295u % 32u), 0u, abs(u_input.e), 81378u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(144f, 514f, -120f))))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_1(false, 1000f, -590i, Struct_1(vec4<f32>(-587f, -1000f, -174f, -1355f)))), _wgslsmith_f_op_f32(func_3(-21598i)), 203f)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, u_input.b.x), max(-32538i, abs(u_input.c))), 0i), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), func_2(Struct_2(u_input.b.zyw, vec2<bool>(false, false), 202f, Struct_1(vec4<f32>(1028f, 111f, 1000f, 1000f)), -1405f)))));
    global1 = array<vec2<f32>, 31>();
    var_0 = ~firstLeadingBit(u_input.c);
    global1 = array<vec2<f32>, 31>();
    global1 = array<vec2<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1135f, 382f, 768f, 184f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(498f, 1000f, -885f, 350f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-350f, -752f, _wgslsmith_f_op_f32(173f + -749f), -489f))))), _wgslsmith_mod_vec3_i32(select(u_input.b.xyy, u_input.d.zzw, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), reverseBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 7727i), vec2<i32>(70743i, -2147483647i)), ~6849i, 0i))));
}

