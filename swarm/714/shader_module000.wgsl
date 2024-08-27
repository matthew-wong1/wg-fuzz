struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(0i, 556i, -18989i), vec3<i32>(1i, 75289i, 1i), vec3<i32>(0i, 33790i, i32(-2147483648)), vec3<i32>(-19763i, -3914i, i32(-2147483648)), vec3<i32>(94081i, 1i, -44251i), vec3<i32>(1i, 4197i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-32791i, 61440i, 31795i), vec3<i32>(3077i, 7022i, -38453i), vec3<i32>(-14311i, -3781i, i32(-2147483648)), vec3<i32>(0i, 0i, -1i), vec3<i32>(14993i, -23852i, -17255i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(~u_input.d, vec4<i32>(2147483647i, u_input.d.x, u_input.a, u_input.d.x), u_input.d) << (abs(arg_1) % vec4<u32>(32u)), vec3<f32>(-2814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x))), global0.x)), Struct_1(max(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, -3480i, -63846i), vec4<i32>(u_input.a, 495i, 2147483647i, 1i)), vec4<i32>(-1i, 2147483647i, -2147483647i, 1i)), vec4<i32>(u_input.d.x, -10739i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(u_input.d.x, -2147483647i, -1i)), max(-1i, 53824i))), _wgslsmith_f_op_vec3_f32(select(global0.zxx, vec3<f32>(-921f, global0.x, 1853f), select(select(vec3<bool>(true, arg_2, true), vec3<bool>(true, false, false), arg_0.x), !vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_2))))), ~(~u_input.c >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, 89732u, arg_1.x), ~1u, 40744u) % 32u)), false, 1383f);
    var var_1 = 0u;
    let var_2 = select(vec3<i32>(6199i, _wgslsmith_dot_vec2_i32(u_input.d.xw, var_0.a.a.wx), var_0.c >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), ~arg_1.x) % 32u)), -(vec3<i32>(var_0.b.a.x, 1i, ~39820i) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, arg_1.x), arg_1.xxw, arg_1.ywy) % vec3<u32>(32u))), vec3<bool>(~reverseBits(u_input.c) <= u_input.d.x, u_input.c != countOneBits(u_input.d.x), true));
    var var_3 = arg_2;
    return 654f;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, global0.x) + vec2<f32>(global0.x, global0.x))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -943f))));
    var_0 = global0.zw;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), ~arg_0, false)), _wgslsmith_f_op_f32(step(-1000f, 681f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(-591f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * 454f))) * vec4<f32>(_wgslsmith_div_f32(111f, global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1000f) - _wgslsmith_f_op_f32(max(-1000f, -609f)))), _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.ww * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-294f, -465f)), true))));
    var var_2 = u_input.d.zzw;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-824f)))));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-vec4<i32>(-66549i & u_input.a, ~0i, arg_1, ~(-2147483647i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.wwz))), _wgslsmith_f_op_vec3_f32(-global0.wyz)))), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_1, u_input.c, u_input.a), -u_input.d), (vec4<i32>(arg_1, arg_1, u_input.d.x, 1i) | u_input.d) << ((vec4<u32>(24640u, 4294967295u, u_input.b, 1u) & vec4<u32>(u_input.e, u_input.b, u_input.e, 94089u)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * global0.x), arg_0)), _wgslsmith_f_op_f32(func_2(vec4<u32>(120692u, 4294967295u, u_input.b, u_input.e))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(global0.x)))))), ~u_input.c, true, _wgslsmith_div_f32(2256f, arg_0));
    global1 = array<vec3<i32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1f, -1126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1871f + var_0.a.b.x) * _wgslsmith_div_f32(var_0.b.b.x, 2357f)) + _wgslsmith_f_op_f32(var_0.b.b.x * var_0.e))));
    global1 = array<vec3<i32>, 12>();
    var var_2 = _wgslsmith_f_op_f32(var_0.b.b.x * -510f);
    return Struct_2(var_0.b, var_0.b, 18413i, true, 147f);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_5(-58182i << (~4294967295u % 32u), any(vec2<bool>(true, arg_2.d)));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(func_4(0i, 1010f, func_1(arg_0.b.b.x, ~22837i), _wgslsmith_f_op_f32(func_2(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.b, 0u, u_input.e), vec4<u32>(u_input.e, u_input.b, 4294967295u, 4294967295u))))).b.a, arg_0.a.b);
    let var_1 = Struct_3(arg_0.b, func_4(1i, _wgslsmith_f_op_f32(-arg_3.e), arg_3, -1377f));
    global1 = array<vec3<i32>, 12>();
    var var_2 = false;
    let var_3 = Struct_5(arg_3.a.a.x, var_1.b.d);
    return !(var_1.b.d && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -371f;
    global0 = vec4<f32>(global0.x, -688f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -562f)), _wgslsmith_f_op_f32(max(1226f, _wgslsmith_div_f32(global0.x, global0.x))));
    var_0 = global0.x;
    let var_1 = select(vec3<bool>((_wgslsmith_clamp_i32(11425i, u_input.d.x, u_input.a) == u_input.c) & false, all(vec3<bool>(true, true, true)), func_5(func_4(~(-2147483647i), 1936f, func_1(global0.x, 16446i), -661f), global0.x, min(u_input.d, vec4<i32>(2147483647i, u_input.d.x, u_input.c, u_input.a)), Struct_2(func_4(2147483647i, -222f, Struct_2(Struct_1(vec4<i32>(u_input.a, -2147483647i, -34210i, -85648i), vec3<f32>(-830f, 160f, 361f)), Struct_1(vec4<i32>(65352i, u_input.d.x, -32027i, u_input.d.x), vec3<f32>(933f, global0.x, global0.x)), 28738i, true, 1731f), -1601f).b, func_4(1i, 279f, Struct_2(Struct_1(u_input.d, global0.yzw), Struct_1(vec4<i32>(u_input.d.x, u_input.a, 1i, 0i), vec3<f32>(global0.x, global0.x, global0.x)), 2147483647i, false, -1149f), -592f).b, _wgslsmith_sub_i32(-1i, -1i), any(vec3<bool>(true, false, false)), _wgslsmith_div_f32(global0.x, 278f)))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true));
    let var_2 = _wgslsmith_sub_vec3_u32(~(vec3<u32>(0u, u_input.e, 89959u) >> ((vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(4294967295u, u_input.b, 65443u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 65015u, u_input.e, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(1u, 45570u, 2870u, u_input.e), vec4<u32>(5095u, 4294967295u, 1931u, 1u))), u_input.b, 24942u)) & _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u << (u_input.e % 32u), ~u_input.b, ~39874u), min(vec3<u32>(u_input.e, u_input.e, 1u) ^ vec3<u32>(u_input.b, 0u, 20433u), ~vec3<u32>(u_input.e, 0u, 4294967295u)), vec3<bool>(true, var_1.x, u_input.a > u_input.c)), vec3<u32>(abs(u_input.b) ^ 23309u, _wgslsmith_mult_u32(1u, u_input.e ^ u_input.b), _wgslsmith_clamp_u32(1u >> (0u % 32u), _wgslsmith_mult_u32(u_input.e, 13614u), ~0u)));
    global1 = array<vec3<i32>, 12>();
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(914f, global0.x, global0.x, -2127f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 489f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -1204f, -516f, -847f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 966f)))));
    var var_3 = Struct_4(Struct_2(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d.x, 2147483647i, 13929i), func_1(global0.x, 58479i).a.a), -403f, func_1(global0.x, min(0i, 4380i)), global0.x).a, Struct_1(vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 262f, 556f))), -(~(-27367i & u_input.a)), true, global0.x), Struct_3(Struct_1(vec4<i32>(~(-1i), 2147483647i, u_input.c, firstLeadingBit(u_input.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0.xzx)), _wgslsmith_f_op_vec3_f32(floor(global0.xxz)), select(var_1, var_1, false)))), Struct_2(func_1(_wgslsmith_f_op_f32(floor(-1107f)), -34404i).b, func_4(select(-1i, 19972i, true), global0.x, func_4(2147483647i, global0.x, Struct_2(Struct_1(vec4<i32>(-1i, u_input.c, u_input.d.x, -13446i), vec3<f32>(-873f, 212f, global0.x)), Struct_1(u_input.d, vec3<f32>(global0.x, -552f, 916f)), u_input.c, var_1.x, 747f), -1053f), _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, u_input.b, u_input.b, var_2.x)))).a, u_input.d.x, !var_1.x | any(vec4<bool>(true, false, false, var_1.x)), global0.x)), vec4<bool>(true, false, all(var_1), true), Struct_3(func_4(_wgslsmith_dot_vec3_i32(u_input.d.zxw, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, u_input.d.x), vec3<i32>(0i, u_input.d.x, u_input.a))), _wgslsmith_div_f32(func_4(-2147483647i, -126f, Struct_2(Struct_1(vec4<i32>(1i, 1i, u_input.d.x, -12065i), global0.wyy), Struct_1(vec4<i32>(1i, u_input.a, u_input.d.x, u_input.d.x), global0.wyz), u_input.a, true, -632f), 2122f).b.b.x, _wgslsmith_f_op_f32(-global0.x)), func_4(-8264i, _wgslsmith_f_op_f32(floor(-1147f)), Struct_2(Struct_1(vec4<i32>(0i, 21668i, u_input.a, 1i), vec3<f32>(-516f, -1743f, global0.x)), Struct_1(vec4<i32>(u_input.a, u_input.c, -2147483647i, 2147483647i), vec3<f32>(global0.x, global0.x, global0.x)), u_input.d.x, var_1.x, global0.x), _wgslsmith_f_op_f32(select(-221f, global0.x, var_1.x))), global0.x).b, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(766f, global0.x)) * 352f), u_input.c)), 37932u);
    var var_4 = _wgslsmith_add_i32(-1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~97707u >> (1u % 32u), 12u)], -u_input.d.zz, abs(3158i));
}

