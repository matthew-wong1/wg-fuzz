struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(40899i, 48854i, 0i, -7036i), vec4<i32>(i32(-2147483648), 11798i, 20085i, -11480i), vec4<i32>(2147483647i, -1i, 55373i, 1i), vec4<i32>(19831i, 0i, -1i, 29457i), vec4<i32>(1i, 2147483647i, -57853i, -31615i), vec4<i32>(35783i, -7825i, 36929i, -3353i), vec4<i32>(1i, 1i, -22995i, -34646i), vec4<i32>(-29663i, 13077i, 2147483647i, -1i), vec4<i32>(-36902i, 55035i, 0i, 45337i), vec4<i32>(-1i, 2147483647i, 0i, -1i), vec4<i32>(1i, 53281i, 0i, i32(-2147483648)), vec4<i32>(0i, -38100i, -36172i, 2147483647i), vec4<i32>(-6816i, 2147483647i, 2147483647i, -1i), vec4<i32>(-1i, 2147483647i, 3671i, -2690i), vec4<i32>(-1160i, 4650i, 3675i, -1i), vec4<i32>(1i, -49172i, -1i, 31293i), vec4<i32>(-58479i, 2147483647i, i32(-2147483648), 2541i), vec4<i32>(1i, -13828i, 1i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 4378i, 1i), vec4<i32>(1i, 2147483647i, 31153i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -58377i, i32(-2147483648), 1i), vec4<i32>(0i, 3599i, -31663i, 0i), vec4<i32>(-26155i, -16398i, 36075i, -3323i), vec4<i32>(-47638i, 1i, 41495i, 0i), vec4<i32>(2147483647i, i32(-2147483648), 0i, -13175i), vec4<i32>(i32(-2147483648), -50226i, -21587i, 21498i), vec4<i32>(-1i, 0i, -47500i, -15635i), vec4<i32>(2147483647i, i32(-2147483648), -7878i, i32(-2147483648)), vec4<i32>(1i, -13472i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -27109i, 13814i, 1i));

var<private> global1: f32 = 844f;

var<private> global2: array<Struct_2, 24>;

var<private> global3: array<bool, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(firstLeadingBit(~4294967295u), u_input.b.x), abs(u_input.b.x << (_wgslsmith_mod_u32(arg_2.x, 4294967295u) % 32u))), 1i, select(!all(vec2<bool>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], global3[_wgslsmith_index_u32(63175u, 11u)])) != any(vec2<bool>(true, true)), all(select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(global3[_wgslsmith_index_u32(52585u, 11u)], true), global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), !vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 11u)]), select(vec2<bool>(true, global3[_wgslsmith_index_u32(2248u, 11u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_2.x, 11u)], global3[_wgslsmith_index_u32(0u, 11u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 11u)])))), true), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_2.x), 11u)], ~select(1u, ~_wgslsmith_dot_vec3_u32(arg_2, arg_2), true));
    let var_1 = var_0.a;
    global2 = array<Struct_2, 24>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(889f - 1348f));
    global2 = array<Struct_2, 24>();
    return max(_wgslsmith_sub_u32(u_input.b.x, select(~(~arg_2.x), var_0.e >> (0u % 32u), any(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 11u)], true), vec4<bool>(false, var_0.d, false, global3[_wgslsmith_index_u32(75089u, 11u)]), global3[_wgslsmith_index_u32(var_1.a, 11u)])))), 19366u);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(func_3(vec2<f32>(-145f, -286f), u_input.a.x, vec3<u32>(0u, u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, 12120u), 1u), vec3<u32>(15948u, 7628u, u_input.b.x & 0u)));
    global3 = array<bool, 11>();
    global2 = array<Struct_2, 24>();
    var var_1 = ~(vec4<u32>(66141u, _wgslsmith_sub_u32(select(0u, 4294967295u, false), var_0.x), reverseBits(1u), func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-686f, 515f), vec2<f32>(639f, -990f))), _wgslsmith_mod_i32(u_input.a.x, 1i), vec3<u32>(u_input.b.x, u_input.b.x, 0u) >> (vec3<u32>(7172u, 1u, var_0.x) % vec3<u32>(32u)))) | countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, 12101u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 90295u), firstTrailingBit(vec4<u32>(81347u, u_input.b.x, u_input.b.x, u_input.b.x)))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(459f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-887f)), _wgslsmith_f_op_f32(381f * -1954f)), _wgslsmith_f_op_f32(f32(-1f) * -934f)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, min(var_0.x, var_0.x ^ u_input.b.x) >> (u_input.b.x % 32u)), 24u)]);
    return _wgslsmith_add_u32(var_1.x, 0u);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1168f)));
    let var_0 = ~_wgslsmith_mult_u32(4294967295u, ~u_input.b.x & 40563u) > countOneBits(select(0u, func_2(true), !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1577u, 4294967295u), 11u)]));
    let var_1 = u_input.b.xx >> (((vec2<u32>(u_input.b.x, ~0u) << (abs(u_input.b.xx ^ u_input.b.yx) % vec2<u32>(32u))) ^ abs(~u_input.b.zz & (vec2<u32>(147977u, u_input.b.x) ^ vec2<u32>(1u, 45586u)))) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -169f), 697f, true)), 1f));
    var var_2 = (abs(u_input.b.zz) ^ vec2<u32>(abs(0u), 34138u)) ^ _wgslsmith_mod_vec2_u32(u_input.b.zz, _wgslsmith_mult_vec2_u32(countOneBits(u_input.b.yx), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, 1u)), _wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(42685u, 26084u)))));
    return _wgslsmith_dot_vec3_u32(countOneBits(reverseBits(~vec3<u32>(1u, 1109u, var_2.x))), ~select(select(~u_input.b, u_input.b, !vec3<bool>(var_0, global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_mult_vec3_u32(u_input.b, ~vec3<u32>(var_1.x, u_input.b.x, var_1.x)), vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 11u)], true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(1u, ~(~34845u) ^ func_1(vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(min(abs(u_input.b.x ^ 1u), _wgslsmith_dot_vec3_u32(min(u_input.b, vec3<u32>(u_input.b.x, 1u, 1u)), u_input.b)), u_input.b.x ^ ~(u_input.b.x & u_input.b.x)));
    var_0 = _wgslsmith_add_vec2_u32(~(~u_input.b.yy), ~min(max(~u_input.b.zx, vec2<u32>(73890u, u_input.b.x) | u_input.b.zz), u_input.b.zz));
    var_0 = select(u_input.b.yy, vec2<u32>(~reverseBits(5470u), u_input.b.x), global3[_wgslsmith_index_u32(~func_2(global3[_wgslsmith_index_u32(~74486u, 11u)] || (global3[_wgslsmith_index_u32(u_input.b.x, 11u)] && false)), 11u)]);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~var_0.x), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x)), 24u)];
    let var_2 = var_1.a;
    var var_3 = ~var_1.e;
    let var_4 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, _wgslsmith_div_i32(u_input.a.x, -16909i), var_1.b << (_wgslsmith_sub_u32(u_input.b.x, 4294967295u) % 32u), var_1.b), vec4<i32>(0i | u_input.a.x, var_1.b, var_1.b, -var_1.b) >> ((countOneBits(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 24591u)) << ((vec4<u32>(4294967295u, var_2.b, 64807u, 53474u) | vec4<u32>(0u, var_0.x, 4294967295u, 27299u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(633f, 379f) * vec2<f32>(-1193f, -142f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 2168f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-848f, 881f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 606f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(448f, 233f), vec2<f32>(1267f, -456f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, -942f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-765f - 831f), 140f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1672f, 441f) - vec2<f32>(-1000f, 1181f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(886f, 488f) + vec2<f32>(-723f, 1028f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~func_2(var_1.d), var_1.e, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 1u), 10503u | var_1.a.b, var_2.b)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_5.x)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2200f, 971f)))), -246f, var_5.x));
}

