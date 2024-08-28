struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(arg_1), ~64621u, 4294967295u, 74559u), select(vec4<u32>(6599u, arg_1, arg_1, arg_1), ~vec4<u32>(0u, 30547u, arg_1, 1u), false), vec4<u32>(arg_1, 4294967295u, 65881u, ~arg_1))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~43480u, _wgslsmith_add_u32(18828u, 19320u)), ~(36475u ^ u_input.a), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1, arg_1), vec3<u32>(0u, arg_1, 56154u)), 19955u, -1i <= arg_3.x), arg_1), vec4<u32>(~106341u, firstTrailingBit(1u), firstLeadingBit(arg_1), reverseBits(_wgslsmith_mult_u32(26839u, arg_1)))));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_1 = -vec2<i32>(min(u_input.b, u_input.b), i32(-1i) * -6543i);
    let var_2 = Struct_3(Struct_1(select(!select(vec2<bool>(arg_2, global0[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.x, 2u)])), vec2<bool>(all(vec2<bool>(false, false)), !global0[_wgslsmith_index_u32(31121u, 2u)]), (1i << (arg_1 % 32u)) != var_1.x)), select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true && global0[_wgslsmith_index_u32(u_input.a, 2u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_2), vec2<bool>(false, arg_0)), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1 ^ u_input.a, 4294967295u, abs(0u)), 2u)]), select(select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), arg_0), !vec2<bool>(arg_0, false), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_0), false))));
    return false;
}

fn func_2() -> Struct_3 {
    global0 = array<bool, 2>();
    var var_0 = u_input.a;
    var var_1 = Struct_3(Struct_1(vec2<bool>(true, any(!vec3<bool>(true, global0[_wgslsmith_index_u32(59922u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])))), !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(93853u, 2u)])), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]), true));
    return Struct_3(var_1.a, !vec2<bool>(select(global0[_wgslsmith_index_u32(abs(u_input.a), 2u)], func_3(var_1.a.a.x, 0u, true, vec4<i32>(32840i, -50798i, u_input.b, u_input.b)), true), true));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = all(func_2().b);
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, false, arg_0.x)))), func_2().a, u_input.a, vec2<bool>(!(!global0[_wgslsmith_index_u32(u_input.a, 2u)] != false), true), Struct_1(vec2<bool>(true, true)));
    var var_3 = Struct_4(arg_0, select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], !arg_0.x, arg_0.x | var_2.b.a.x), vec3<bool>(any(arg_0), var_2.a.a.x, global0[_wgslsmith_index_u32(6812u, 2u)]), select(vec3<bool>(var_2.b.a.x, global0[_wgslsmith_index_u32(4123u, 2u)], var_0.b.x), vec3<bool>(var_2.e.a.x, var_0.b.x, global0[_wgslsmith_index_u32(u_input.a, 2u)]), true)), arg_0, true), !select(!select(vec4<bool>(var_2.a.a.x, true, var_0.a.a.x, arg_0.x), vec4<bool>(arg_0.x, var_2.d.x, true, var_2.d.x), vec4<bool>(global0[_wgslsmith_index_u32(var_2.c, 2u)], true, true, false)), select(select(vec4<bool>(true, var_0.b.x, true, var_2.e.a.x), vec4<bool>(var_0.b.x, var_2.b.a.x, global0[_wgslsmith_index_u32(17384u, 2u)], arg_0.x), vec4<bool>(false, global0[_wgslsmith_index_u32(5118u, 2u)], true, global0[_wgslsmith_index_u32(10112u, 2u)])), !vec4<bool>(arg_0.x, var_2.b.a.x, false, false), !arg_0.x), var_0.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(664f, 1000f, 213f), vec3<f32>(865f, 565f, 315f))))))));
    var var_4 = Struct_2(Struct_1(vec2<bool>(!(!global0[_wgslsmith_index_u32(var_2.c, 2u)]), select(arg_0.x, true, var_0.b.x) || !global0[_wgslsmith_index_u32(var_2.c, 2u)])), var_0.a, var_2.c, !vec2<bool>(func_2().b.x, !var_0.a.a.x), var_2.b);
    return func_2().a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    global0 = array<bool, 2>();
    global1 = u_input.a;
    global1 = abs(countOneBits(~firstTrailingBit(~0u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-418f)))))));
    var var_1 = Struct_3(Struct_1(arg_1.zz), vec2<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 2u)]));
    return u_input.a;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(vec2<bool>(true, func_1(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_3, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)])).a.x)), vec2<bool>(global0[_wgslsmith_index_u32(61607u, 2u)], global0[_wgslsmith_index_u32(45769u, 2u)]));
    global1 = arg_0;
    var var_1 = Struct_4(select(select(select(vec3<bool>(false, false, var_0.b.x), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(25765u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(arg_3, 2u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], false)), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_0, 2u)]), vec3<bool>(false, true, var_0.b.x), vec3<bool>(global0[_wgslsmith_index_u32(79169u, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)], false))), vec3<bool>(true, !global0[_wgslsmith_index_u32(arg_0, 2u)], var_0.a.a.x), !select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, false), vec3<bool>(true, var_0.a.a.x, false))), vec3<bool>(true, var_0.a.a.x, _wgslsmith_f_op_f32(round(arg_2)) > 461f), vec3<bool>(true, (arg_1 <= 0i) && true, !var_0.a.a.x | (arg_0 < 24203u))), vec3<bool>(!var_0.a.a.x, true, !select(false, false, !var_0.b.x)), vec4<bool>(any(select(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<bool>(var_0.b.x, global0[_wgslsmith_index_u32(46863u, 2u)], var_0.a.a.x), vec3<bool>(var_0.a.a.x, global0[_wgslsmith_index_u32(71687u, 2u)], false)), select(vec3<bool>(true, var_0.a.a.x, true), vec3<bool>(false, global0[_wgslsmith_index_u32(8175u, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)]), vec3<bool>(var_0.b.x, true, global0[_wgslsmith_index_u32(u_input.a, 2u)])), global0[_wgslsmith_index_u32(u_input.a, 2u)] || false)), any(vec2<bool>(true, var_0.b.x)), false, func_2().b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-182f, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, -1166f, arg_2)))))));
    global0 = array<bool, 2>();
    let var_2 = var_1.a;
    return Struct_4(vec3<bool>(all(var_1.a.xy), func_3(true, _wgslsmith_add_u32(40767u, _wgslsmith_mod_u32(34735u, u_input.a)), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_3, u_input.a))), 2u)], min(vec4<i32>(-10763i, 1i, arg_1, -30710i), vec4<i32>(arg_1, -2147483647i, arg_1, -1i))), true), !select(vec3<bool>(false, !var_1.a.x, func_2().a.a.x), select(select(var_1.b, vec3<bool>(true, true, true), var_0.b.x), vec3<bool>(global0[_wgslsmith_index_u32(arg_3, 2u)], false, var_1.a.x), !var_1.b), var_0.b.x), !vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_3, 4294967295u), vec3<u32>(8447u, u_input.a, 18218u)), 2u)], any(var_1.c), all(var_2.yy), var_0.a.a.x && all(vec4<bool>(true, false, var_0.a.a.x, global0[_wgslsmith_index_u32(0u, 2u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)))), _wgslsmith_f_op_vec3_f32(-var_1.d), select(!select(var_1.c.xyx, var_1.a, vec3<bool>(var_2.x, true, global0[_wgslsmith_index_u32(arg_0, 2u)])), !select(vec3<bool>(false, var_1.a.x, false), var_1.b, false), var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~4294967295u, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -2091i, 17620i, u_input.b)), vec4<i32>(u_input.b & u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), 2147483647i)), vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(31252i, -30400i, 2147483647i), vec3<i32>(2147483647i, -52428i, u_input.b))), 0i, ~8313i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1299f)))))), func_4(vec4<i32>(12572i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -29160i, 114210i, -2147483647i), vec4<i32>(u_input.b, 9834i, 42079i, u_input.b)), u_input.b, 0i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(3977u, 2u)]), global0[_wgslsmith_index_u32(0u, 2u)]), select(vec3<bool>(false, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(53532u, 2u)]), false), global0[_wgslsmith_index_u32(0u, 2u)]), Struct_3(func_1(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]))) & 1u);
    let var_1 = _wgslsmith_div_u32(u_input.a, u_input.a);
    var var_2 = Struct_2(Struct_1(var_0.a.yx), Struct_1(vec2<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 2u)])), !(var_0.d.x < -1057f))), ~((~var_1 & _wgslsmith_add_u32(var_1, 47888u)) << (var_1 % 32u)), vec2<bool>(false, any(!select(var_0.c, var_0.c, var_0.c.x))), Struct_1(var_0.c.wz));
    global0 = array<bool, 2>();
    var var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~0u, 4294967295u), ~vec2<u32>(1u, var_1) | vec2<u32>(1u, var_1), ~reverseBits(vec2<u32>(0u, var_2.c)) & min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(64805u, 0u)), ~vec2<u32>(1u, u_input.a))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, min(6383u, 0u)), vec2<u32>(1u & var_2.c, var_2.c & var_1)), select(~((vec2<u32>(30002u, u_input.a) & vec2<u32>(4294967295u, var_2.c)) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_2.c), vec2<u32>(4294967295u, 110021u))), vec2<u32>(_wgslsmith_mult_u32(4294967295u, abs(var_2.c)), 0u), _wgslsmith_mult_u32(var_1 & var_1, var_1) != min(var_2.c, func_4(vec4<i32>(u_input.b, 1i, -37714i, 2147483647i), vec3<bool>(var_2.a.a.x, global0[_wgslsmith_index_u32(var_2.c, 2u)], false), Struct_3(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(109656u, 2u)])), var_2.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(-(vec4<i32>(u_input.b, -33698i, u_input.b, 0i) | vec4<i32>(-66375i, 0i, u_input.b, u_input.b)))));
}

