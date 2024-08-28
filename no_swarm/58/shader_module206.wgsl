struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: vec4<i32> = vec4<i32>(-8763i, -31000i, 1i, 7445i);

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(40319u, 0u), vec2<u32>(24304u, 1u), vec2<u32>(50104u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4612u), vec2<u32>(20679u, 43492u), vec2<u32>(6939u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(41711u, 18777u), vec2<u32>(4294967295u, 0u), vec2<u32>(20651u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 64640u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u), vec2<u32>(31926u, 1u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> u32 {
    global3 = u_input.a;
    global1 = u_input.b;
    global4 = array<vec2<u32>, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, arg_0))));
    var var_1 = max(~u_input.a, ~min(0u, u_input.c) & u_input.c);
    return u_input.a;
}

fn func_3() -> u32 {
    global3 = 0u << (abs(u_input.a) % 32u);
    global2 = select(select(firstTrailingBit(select(u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), -4240i > global1.x)), global1.x, !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, 23630u, u_input.a), vec4<u32>(28859u, u_input.c, 16808u, u_input.c)) < _wgslsmith_mod_u32(17457u, u_input.c))), u_input.b.x & abs(max(-2147483647i, 1i)), !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))) && true);
    let var_0 = Struct_5(20262u, ~select(~vec3<u32>(u_input.c, u_input.a, u_input.a), ~vec3<u32>(0u, u_input.c, 4294967295u), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))) & abs(firstLeadingBit(~vec3<u32>(u_input.c, u_input.a, u_input.a))), Struct_3(Struct_2(Struct_1(vec3<i32>(global1.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.c, u_input.c), _wgslsmith_sub_u32(24269u, 1u), u_input.c, vec3<bool>(true, true, true)), vec4<f32>(511f, -597f, _wgslsmith_f_op_f32(f32(-1f) * -776f), 410f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(684f, 2789f, 378f), vec3<f32>(-125f, 729f, 2488f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -1345f, 1000f), vec3<f32>(729f, -1082f, -486f))))), Struct_2(Struct_1(u_input.b.zxx, ~global4[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_sub_u32(0u, u_input.a), 1u, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-815f, -199f, 1600f, -296f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, 353f, -246f)))), _wgslsmith_mod_i32(32158i, u_input.b.x), _wgslsmith_sub_u32(reverseBits(u_input.a), 24932u));
    global1 = u_input.b << (min(select(~(~vec4<u32>(u_input.c, u_input.a, var_0.b.x, u_input.a)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(53025u, 55815u, var_0.e, 19321u)), firstLeadingBit(vec4<u32>(47530u, 40326u, var_0.c.a.a.c, 1u))), !var_0.c.b.a.e.x), vec4<u32>(~u_input.c << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u), u_input.a, ~u_input.a << (~u_input.a % 32u), u_input.a >> (var_0.b.x % 32u))) % vec4<u32>(32u));
    global3 = var_0.e;
    return 1u ^ func_2(-1499f, vec4<bool>(all(!vec2<bool>(var_0.c.a.a.e.x, var_0.c.a.a.e.x)), true, false, false), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, var_0.c.a.a.a.x)), ~var_0.c.b.a.a.yx));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(func_2(_wgslsmith_f_op_f32(-arg_1.c.x), vec4<bool>(false, false, arg_0.a, arg_1.a.e.x), vec2<i32>(2147483647i, -24365i)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.a.d, u_input.a), vec4<u32>(1u, u_input.c, arg_1.a.d, u_input.c)), _wgslsmith_mod_u32(u_input.a, ~arg_1.a.d), ~(~4020u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(56454u, u_input.c, u_input.a, u_input.a), vec4<u32>(arg_1.a.b.x, 0u, arg_1.a.d, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, arg_1.a.c, 1u, arg_1.a.d), select(vec4<u32>(u_input.c, 65168u, arg_1.a.c, 28332u), vec4<u32>(u_input.c, u_input.c, arg_1.a.d, 30111u), vec4<bool>(arg_0.a, arg_0.a, false, true))))), ~(vec4<u32>(15946u << (u_input.c % 32u), func_3(), u_input.a, select(u_input.c, arg_1.a.c, false)) | vec4<u32>(u_input.c, ~u_input.a, _wgslsmith_mult_u32(1553u, arg_1.a.c), max(0u, arg_1.a.b.x))));
    var var_0 = 27143u;
    let var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(arg_1.a.b.x, 27u)], vec2<u32>(arg_1.a.c, u_input.a)), 4294967295u), min(~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(87563u, arg_1.a.d), arg_1.a.b)), ~(~_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(1u, 27u)], vec2<u32>(arg_1.a.d, 1u)))));
    global3 = max(u_input.a, func_3());
    var var_2 = Struct_5((21422u | ~func_2(arg_1.c.x, vec4<bool>(arg_0.a, true, false, false), arg_1.a.a.xy)) ^ 4294967295u, _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(min(vec3<u32>(var_1.x, arg_1.a.b.x, 1u), vec3<u32>(1u, 1u, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1.a.d, u_input.c), vec3<u32>(u_input.a, var_1.x, u_input.a))), ~vec3<u32>(86963u, ~4294967295u, 91171u)), Struct_3(Struct_2(Struct_1(arg_1.a.a, reverseBits(vec2<u32>(1u, 1u)), ~u_input.c, ~1u, arg_1.a.e), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1034f, 1132f, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(arg_1.c + vec3<f32>(arg_1.b.x, -1553f, arg_1.c.x))), arg_1), -firstTrailingBit(2147483647i) << (((arg_1.a.d | 33943u) & var_1.x) % 32u), ~(~(~(~20033u))));
    return arg_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    global1 = select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-10569i, 2147483647i, _wgslsmith_clamp_i32(-3804i, global1.x, -423i), global1.x), -min(u_input.b, vec4<i32>(u_input.b.x, 26630i, -9922i, -13938i))), vec4<i32>(_wgslsmith_div_i32(1i, reverseBits(-15303i)), _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_add_i32(-11739i, global1.x)) >> (45517u % 32u), 0i, global1.x), arg_1.a.e.x);
    global4 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 27>();
    global4 = array<vec2<u32>, 19>();
    var var_0 = 1u;
    return min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(55847u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.c, 1u, arg_1.a.d, u_input.a)) << (firstTrailingBit(vec4<u32>(1u, 82769u, 4294967295u, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(83404u, arg_1.a.b.x, arg_1.a.c, 1u)), min(vec4<u32>(26060u, arg_1.a.c, u_input.a, arg_1.a.d) ^ vec4<u32>(arg_1.a.d, arg_1.a.c, 1u, 0u), ~vec4<u32>(u_input.c, 0u, 1u, 75192u))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.c, u_input.a, 69273u, 4294967295u), vec4<u32>(3791u, 32022u, 4294967295u, arg_1.a.d)))), _wgslsmith_div_u32(14992u, abs(arg_1.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(u_input.a, 4294967295u >> (func_4(1000f, Struct_2(func_1(Struct_4(false), Struct_2(Struct_1(vec3<i32>(global1.x, global1.x, u_input.b.x), global4[_wgslsmith_index_u32(4294967295u, 19u)], u_input.c, 0u, vec3<bool>(false, true, true)), vec4<f32>(1000f, 362f, 360f, 511f), vec3<f32>(-133f, 625f, -467f))), _wgslsmith_div_vec4_f32(vec4<f32>(701f, -514f, -479f, 236f), vec4<f32>(-430f, 190f, -1000f, -206f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2281f, 2526f, 891f)))) % 32u), u_input.c);
    let var_1 = countOneBits(u_input.b.x);
    global2 = u_input.b.x;
    global1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(251f, -1336f, -706f) + vec3<f32>(-640f, -764f, -1312f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1466f, 1388f, 203f)), func_1(Struct_4(true), Struct_2(Struct_1(vec3<i32>(7541i, -6957i, var_1), global0[_wgslsmith_index_u32(u_input.a, 27u)], u_input.c, 22127u, vec3<bool>(false, true, true)), vec4<f32>(-491f, 327f, 1106f, 878f), vec3<f32>(1369f, -105f, 1558f))).e)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1628f, 340f, 1361f) - vec3<f32>(-1000f, -394f, 353f))) + vec3<f32>(844f, _wgslsmith_f_op_f32(675f + 543f), -978f))), vec3<f32>(1f, 1f, 1f)));
    global1 = vec4<i32>(global1.x, abs(-u_input.b.x), -2147483647i, select(~2147483647i, -max(-4018i, var_1), ~u_input.c < _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 3186u, u_input.a)), reverseBits(vec3<u32>(u_input.c, 38973u, 13804u)))));
    var_0 = countOneBits(select(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.c, u_input.a), _wgslsmith_sub_u32(max(u_input.c, 1u), func_3())), _wgslsmith_mult_u32(~u_input.a, 1u), any(vec4<bool>(false, true, true, 1334f == var_2.x))));
    var var_3 = global1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_u32(u_input.a, u_input.c) | u_input.c) >> (4294967295u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global1.x, global1.x), 1i), u_input.b.yy), firstTrailingBit(~vec4<u32>(32305u, 0u, 0u, 4294967295u)) << (~reverseBits(vec4<u32>(u_input.a, 63828u, u_input.c, u_input.c)) % vec4<u32>(32u)));
}

