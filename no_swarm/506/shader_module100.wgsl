struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32 = 12171u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec2<f32> {
    global0 = array<bool, 3>();
    let var_0 = min(37738i, ~countOneBits(u_input.c));
    global0 = array<bool, 3>();
    var var_1 = Struct_1(_wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(~u_input.b, u_input.b) ^ u_input.b), vec2<u32>(0u, 58387u) ^ vec2<u32>(u_input.b, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_mult_u32(7664u, u_input.b))), ~countOneBits(vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), 47295u)), any(vec4<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(47510u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), !(u_input.b != u_input.b), true)), !(!all(vec2<bool>(true, false))));
    var var_2 = false;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - -487f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -747f), 1860f));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = array<bool, 3>();
    let var_0 = ~vec2<i32>(-2147483647i, max(abs(~(-2147483647i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.a.x, 2147483647i, u_input.a.x), countOneBits(vec4<i32>(27479i, arg_0.a.x, -29392i, arg_0.d.x)))));
    global0 = array<bool, 3>();
    var var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1620f, _wgslsmith_f_op_f32(1645f * _wgslsmith_f_op_f32(-arg_0.c.x))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.c, vec2<f32>(arg_0.c.x, arg_0.c.x), global0[_wgslsmith_index_u32(u_input.b, 3u)])) * vec2<f32>(arg_0.c.x, -415f))))));
    return vec4<u32>(1u, _wgslsmith_mod_u32(select(abs(26383u), 4294967295u, arg_0.b.e), ~u_input.b), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, arg_0.b.a), countOneBits(vec4<u32>(arg_0.b.b.x, 11292u, 42668u, u_input.b))), arg_0.b.b.x) & firstTrailingBit(_wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(77178u, 1u, arg_0.b.b.x, arg_0.b.c.x)), ~reverseBits(vec4<u32>(1455u, 1u, 23444u, 0u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1295f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1434f), _wgslsmith_f_op_f32(round(796f))))));
    var var_1 = Struct_1(u_input.b, countOneBits(vec2<u32>(countOneBits(u_input.b), u_input.b >> (19154u % 32u))) & ~arg_0.xz, vec2<u32>(arg_1, arg_1), true & !(!any(vec4<bool>(true, arg_2.x, false, arg_2.x))), true);
    var var_2 = ~(~_wgslsmith_sub_u32(4294967295u, abs(arg_0.x)) << (_wgslsmith_mod_u32(38327u | var_1.b.x, 1u) % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-482f, _wgslsmith_f_op_vec2_f32(func_1()).x), _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-393f, -947f))) - var_0))));
    var var_4 = !var_1.e;
    return vec4<u32>(1u, arg_1, ~(~(~0u)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 62256u, var_1.a, arg_0.x), vec4<u32>(1u, 1u, u_input.b, 4294967295u)), ~vec4<u32>(var_1.c.x, var_1.c.x, arg_1, var_1.b.x)), func_3(Struct_2(vec3<i32>(u_input.a.x, 32988i, u_input.c), Struct_1(arg_1, vec2<u32>(12360u, 4294967295u), var_1.b, var_1.e, var_1.d), var_0, vec3<i32>(1i, u_input.a.x, 28914i))).x, _wgslsmith_mod_u32(~6269u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, var_1.b.x, arg_0.x), vec4<u32>(arg_1, u_input.b, 94216u, 38347u)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = func_4(arg_0, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b.a, u_input.b, 14976u, 4294967295u) >> (vec4<u32>(arg_0.x, 11934u, 1u, arg_1.b.c.x) % vec4<u32>(32u)), func_3(arg_2)), select(vec2<bool>(u_input.b < ~1u, select(global0[_wgslsmith_index_u32(arg_0.x, 3u)], true, true)), vec2<bool>(false, false), min(~1u, min(u_input.b, arg_0.x)) > arg_0.x));
    let var_1 = u_input.b > countOneBits(_wgslsmith_sub_u32(arg_2.b.a | min(40422u, arg_0.x), u_input.b));
    let var_2 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_1.a.x, 0i), arg_2.d.yx), -26445i, abs(_wgslsmith_div_i32(arg_2.a.x, arg_2.d.x)) >> (min(11701u, u_input.b) % 32u)), arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f + 1355f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-2241f, arg_2.c.x))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1401f, _wgslsmith_f_op_f32(select(arg_2.c.x, arg_1.c.x, true)))))), countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, arg_1.d.x, 10883i), vec3<i32>(0i, -22097i, arg_1.a.x)), vec3<i32>(2147483647i, arg_2.d.x, arg_2.d.x)) & vec3<i32>(~u_input.a.x, -43693i, 0i)));
    var var_3 = select(vec4<bool>(any(select(vec3<bool>(var_1, true, true), !vec3<bool>(arg_1.b.d, true, arg_1.b.d), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, true))), true, true, any(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, var_1, false)))), !select(vec4<bool>(arg_2.b.e, false, !var_1, var_2.b.d), vec4<bool>(var_2.b.d, var_2.b.e, any(vec4<bool>(false, true, arg_1.b.e, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 2613u, 20970u, var_2.b.a), vec4<u32>(5979u, 26120u, var_2.b.c.x, 1u)), 3u)]), select(!vec4<bool>(arg_2.b.e, var_1, var_1, false), select(vec4<bool>(true, false, var_2.b.d, var_1), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, true, var_1), vec4<bool>(true, false, true, arg_1.b.d)), any(vec4<bool>(arg_2.b.e, var_2.b.e, false, var_1)))), false);
    var var_4 = -14540i;
    return arg_2.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32) -> bool {
    let var_0 = ~(u_input.b ^ 73175u);
    global0 = array<bool, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x) - -392f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1955f, arg_0.x, global0[_wgslsmith_index_u32(var_0, 3u)])))))));
    global1 = _wgslsmith_dot_vec3_u32(func_4(vec3<u32>(abs(~5528u), var_0 >> (61732u % 32u), var_0), func_4(func_3(Struct_2(vec3<i32>(u_input.a.x, -2147483647i, arg_1), Struct_1(var_0, vec2<u32>(var_0, 1u), vec2<u32>(var_0, u_input.b), global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), arg_0, vec3<i32>(arg_1, -39756i, u_input.c))).ywx, abs(34233u) ^ var_0, !select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true), global0[_wgslsmith_index_u32(65821u, 3u)])).x, !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, 1u), 3u)], false)).xwz, vec3<u32>(~firstLeadingBit(min(var_0, var_0)), 28779u, min(var_0, u_input.b)));
    var var_2 = arg_0.x;
    return all(select(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(72027u, 3u)], global0[_wgslsmith_index_u32(12589u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(5058u, 3u)]), global0[_wgslsmith_index_u32(var_0, 3u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(105496u, 3u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 3u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(52151u, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(49597u, 3u)], global0[_wgslsmith_index_u32(2914u, 3u)]), global0[_wgslsmith_index_u32(80484u, 3u)] & global0[_wgslsmith_index_u32(0u, 3u)]), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(38812u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(var_0, 3u)]), true), !vec3<bool>(global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(45723u, 3u)], true), select(true, false, false))), vec3<bool>(!(!global0[_wgslsmith_index_u32(0u, 3u)]), !global0[_wgslsmith_index_u32(var_0, 3u)] || (17367u < var_0), !(true || global0[_wgslsmith_index_u32(u_input.b, 3u)])), !select(global0[_wgslsmith_index_u32(countOneBits(var_0), 3u)], true, all(vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_u32(1u, u_input.b);
    let var_0 = !select(vec4<bool>(false, true, func_5(_wgslsmith_f_op_vec2_f32(func_1()), func_2(vec3<u32>(25897u, u_input.b, u_input.b), Struct_2(vec3<i32>(22737i, u_input.a.x, -7443i), Struct_1(52401u, vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), false, global0[_wgslsmith_index_u32(47336u, 3u)]), vec2<f32>(-1268f, 457f), vec3<i32>(u_input.a.x, 2147483647i, u_input.c)), Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), Struct_1(15083u, vec2<u32>(82291u, u_input.b), vec2<u32>(30747u, u_input.b), global0[_wgslsmith_index_u32(36123u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec2<f32>(-1210f, 1209f), vec3<i32>(u_input.c, 54438i, u_input.c)))), true), !vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b, 3u)], any(vec4<bool>(true, false, false, false)), true, false), select(vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, global0[_wgslsmith_index_u32(u_input.b, 3u)])), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], false)), all(vec3<bool>(global0[_wgslsmith_index_u32(39957u, 3u)], true, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(75984u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], false))), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], false, global0[_wgslsmith_index_u32(u_input.b, 3u)], false), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), true)));
    var var_1 = var_0.x;
    let var_2 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b, 0u, _wgslsmith_mod_u32(10351u, u_input.b), firstTrailingBit(u_input.b)), select(vec4<u32>(4294967295u, 16065u, 23403u, u_input.b), vec4<u32>(u_input.b, 1u, 17499u, 14201u), var_0)), vec2<u32>(abs(~4294967295u), ~48729u), vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 38310u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b)), ~vec3<u32>(41732u, u_input.b, u_input.b))), countOneBits(u_input.b)), false, false);
    global0 = array<bool, 3>();
    var var_3 = Struct_2(countOneBits((-vec3<i32>(2147483647i, 28834i, 15311i) ^ (vec3<i32>(3874i, 368i, u_input.a.x) & vec3<i32>(u_input.c, u_input.c, 51784i))) << (vec3<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(var_2.c, vec2<u32>(var_2.b.x, 108226u)), var_2.c.x >> (u_input.b % 32u)) % vec3<u32>(32u))), var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-555f, -1234f) * vec2<f32>(1071f, -1585f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1866f, -1603f), vec2<f32>(-1314f, 731f), false)), vec2<bool>(true, var_0.x)))))), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(u_input.a.x, -64016i, u_input.a.x)), abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c))) | reverseBits(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.c))));
    let var_4 = var_2;
    let var_5 = select(!vec3<bool>(all(vec2<bool>(true, var_2.d)), func_5(_wgslsmith_f_op_vec2_f32(-var_3.c), 0i & var_3.a.x), global0[_wgslsmith_index_u32(~reverseBits(var_4.c.x), 3u)]), vec3<bool>(var_0.x, false, false), true);
    var var_6 = !(!(!var_0.x)) | select(false == (_wgslsmith_f_op_f32(-var_3.c.x) > _wgslsmith_f_op_f32(f32(-1f) * -123f)), !(!var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30407u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b.x, 20945u, u_input.b, var_2.a), vec4<u32>(1u, 49291u, var_2.a, var_3.b.c.x))) | abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.a, 12227u), vec2<u32>(79036u, u_input.b))), 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.d.x | (var_3.d.x ^ _wgslsmith_clamp_i32(26291i, u_input.a.x, 22983i)), -abs(68486i), ~(~_wgslsmith_sub_i32(43044i, -25625i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -17774i, 31474i, u_input.c), vec4<i32>(-1i, -23395i, var_3.a.x, u_input.c)) << (_wgslsmith_clamp_u32(var_4.b.x, 3375u, var_2.c.x) % 32u), -(i32(-1i) * -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-164f + -926f)) + _wgslsmith_f_op_f32(min(332f, _wgslsmith_f_op_vec2_f32(func_1()).x))));
}

