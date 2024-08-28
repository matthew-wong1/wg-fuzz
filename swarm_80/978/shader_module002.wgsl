struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(280f, 1000f, 373f), vec3<f32>(-179f, 870f, 302f), vec3<f32>(-580f, -1471f, -1404f), vec3<f32>(-1406f, -928f, 538f), vec3<f32>(1543f, 1000f, -1428f), vec3<f32>(585f, -1000f, -193f), vec3<f32>(1005f, -628f, -1389f), vec3<f32>(-544f, 1832f, -744f), vec3<f32>(-1317f, -683f, -191f), vec3<f32>(-1363f, 1440f, 527f), vec3<f32>(-830f, 144f, 631f), vec3<f32>(930f, -1000f, -1219f), vec3<f32>(1012f, -853f, 795f), vec3<f32>(-335f, -1000f, 1371f), vec3<f32>(492f, 368f, 772f), vec3<f32>(-138f, -136f, 419f));

var<private> global3: array<vec3<bool>, 15>;

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec3<i32>(9310i, -5136i, i32(-2147483648)), 15650i), vec3<u32>(4294967295u, 1u, 71220u), -42828i, true, Struct_1(vec3<i32>(-4801i, -54386i, 1i), -15858i)), Struct_2(Struct_1(vec3<i32>(-29238i, 1i, 0i), 15899i), vec3<u32>(66338u, 23606u, 1u), i32(-2147483648), true, Struct_1(vec3<i32>(34400i, -38842i, 1i), 1i)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global3 = array<vec3<bool>, 15>();
    global2 = array<vec3<f32>, 16>();
    let var_0 = global0.d && global0.d;
    global1 = array<Struct_2, 5>();
    global4 = array<Struct_2, 2>();
    return _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_add_i32(~global0.e.b, _wgslsmith_div_i32(-29379i, 1i)), max(arg_0.a.x, arg_0.b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    global4 = array<Struct_2, 2>();
    global1 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global0.b.x, 1u, u_input.a.x, global0.b.x), vec4<u32>(52221u, 4294967295u, arg_2.x, 34965u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 88065u, global0.b.x, 4294967295u), vec4<u32>(global0.b.x, global0.b.x, 41923u, u_input.a.x))), vec4<u32>(41464u, arg_2.x, reverseBits(arg_2.x), 9752u)), vec4<u32>(countOneBits(1u), global0.b.x, ~global0.b.x, _wgslsmith_mult_u32(~4294967295u, max(0u, u_input.a.x)))), _wgslsmith_mult_u32(~_wgslsmith_div_u32(arg_2.x, min(0u, u_input.b)), global0.b.x));
    var var_1 = global0.e;
    let var_2 = arg_0.d && all(vec4<bool>(u_input.b != abs(arg_0.b.x), true, all(vec2<bool>(false, arg_0.d)), !global0.d));
    return arg_1;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_2, 5>();
    global3 = array<vec3<bool>, 15>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1913f + -500f)), global0.b.zz)) + 1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-101f, 1000f, 149f, -970f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 232f, 162f, 334f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-192f, -1269f, -1462f, -1778f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1089f, 577f, -2079f, 1203f))), global0.d & true)))));
    global4 = array<Struct_2, 2>();
    return global0.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global3 = array<vec3<bool>, 15>();
    global2 = array<vec3<f32>, 16>();
    global0 = Struct_2(func_2(~vec3<i32>(global0.c, ~arg_2.b.a.x, 26566i)), reverseBits(vec3<u32>(u_input.b, 0u, u_input.b) | abs(vec3<u32>(arg_0, u_input.b, 80734u))), global0.e.b, !((2147483647i > ~arg_2.a) && global0.d), global0.e);
    var var_0 = 2147483647i;
    var var_1 = arg_2.b;
    return func_2(countOneBits(vec3<i32>(-1i) * -arg_2.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global2 = array<vec3<f32>, 16>();
    var var_1 = abs(vec3<i32>(20552i, _wgslsmith_mod_i32(0i, 0i & global0.a.b), 24708i) << (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(1357u, global0.b.x, 26859u)), 24294u), ~_wgslsmith_div_u32(u_input.a.x, 28640u), 0u) % vec3<u32>(32u)));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-521f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(321f, -416f), -1422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f * -1212f)), _wgslsmith_f_op_f32(-130f + _wgslsmith_f_op_f32(f32(-1f) * -145f))))));
    let var_4 = select(!vec4<bool>(global0.d, func_1(global0.e) >= (0i >> (global0.b.x % 32u)), true, !var_2), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(global0.d, global0.d, global0.d, global0.d)), vec4<bool>(1u < max(global0.b.x, 0u), false, !(var_3.x < -1294f), false), vec4<bool>(!global0.d, false, select(all(vec4<bool>(false, true, var_2, var_2)), global0.d, true), global0.d)), func_1(Struct_1(~global0.e.a, _wgslsmith_div_i32(24058i, 2147483647i))) > 1i);
    var_0 = func_4(global0.b.x, func_2(vec3<i32>(65391i, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_1.x, var_1.x), var_1.x), _wgslsmith_add_i32(global0.e.a.x, _wgslsmith_sub_i32(global0.a.b, -1i)))), Struct_3(_wgslsmith_mult_i32(firstTrailingBit(56879i), -_wgslsmith_clamp_i32(var_0.b, 58024i, 0i)), func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, var_0.a.x, var_1.x), vec3<i32>(1i, 1i, var_1.x)) & vec3<i32>(1213i, global0.c, -2147483647i))), var_3.x);
    var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(~min(global0.e.a, vec3<i32>(global0.c, var_1.x, -1i)), select(var_0.a, _wgslsmith_mult_vec3_i32(global0.e.a, vec3<i32>(var_0.b, 0i, 2401i)), select(global3[_wgslsmith_index_u32(global0.b.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], var_4.zyz))), -var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a));
}

