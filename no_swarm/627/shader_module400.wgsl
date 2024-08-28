struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<i32, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> u32 {
    global1 = array<i32, 15>();
    global1 = array<i32, 15>();
    let var_0 = vec3<u32>(3708u, abs(_wgslsmith_div_u32(u_input.b, 15286u)), 1u);
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -global1[_wgslsmith_index_u32(41252u, 15u)] << (select(u_input.b, 4294967295u, arg_1) % 32u)), _wgslsmith_mod_vec2_i32(u_input.a, -abs(vec2<i32>(arg_0, -10646i)))), -u_input.a, -vec2<i32>(-26524i, global1[_wgslsmith_index_u32(1u, 15u)]));
    let var_2 = -1114f;
    return var_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(func_3(u_input.a.x, arg_0.a.x, !any(arg_0.a)), _wgslsmith_mod_u32(arg_1, 0u << (u_input.b % 32u)) ^ ~arg_1));
    var var_1 = Struct_2(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_0.a, 15u)] < u_input.a.x, false)), arg_0.d, (~firstTrailingBit(43650i) | _wgslsmith_mod_i32(0i, -global1[_wgslsmith_index_u32(4294967295u, 15u)])) << (~(~(~0u)) % 32u), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1725f * arg_0.d.b.x), _wgslsmith_f_op_f32(-arg_0.d.a))), arg_0.b.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(select(781f, arg_0.b.b.x, arg_0.a.x)), _wgslsmith_f_op_f32(-833f - arg_0.d.b.x)))));
    global1 = array<i32, 15>();
    global0 = array<Struct_2, 32>();
    return Struct_1(-986f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.a, arg_0.b.a, arg_0.b.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2257f, var_1.b.b.x, 157f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(sign(615f)), _wgslsmith_f_op_f32(step(var_1.d.a, arg_0.d.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.b.a * -772f), _wgslsmith_f_op_f32(f32(-1f) * -1320f), 1257f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -abs(-(~(-1i))) & ~u_input.a.x;
    return arg_2;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(-1162f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(993f, 1284f, -2250f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, -1381f, -761f))), vec3<f32>(_wgslsmith_f_op_f32(321f + 111f), -1000f, _wgslsmith_div_f32(186f, -1502f)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-944f * 1047f), _wgslsmith_f_op_f32(f32(-1f) * -460f), -1634f)))));
    global1 = array<i32, 15>();
    global0 = array<Struct_2, 32>();
    var_0 = func_4(vec2<f32>(1f, _wgslsmith_f_op_f32(-1000f + var_0.a)), true, func_2(global0[_wgslsmith_index_u32(u_input.b, 32u)], ~26920u));
    var var_1 = Struct_2(vec4<bool>(true, true, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.b.x) - var_0.b.yx), true, func_4(vec2<f32>(759f, var_0.a), false, Struct_1(var_0.a, var_0.b))).b.x < -691f, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_div_f32(var_0.a, var_0.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) * -616f), _wgslsmith_f_op_f32(2704f * var_0.a), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, countOneBits(u_input.a.x), i32(-1i) * -29355i, _wgslsmith_sub_i32(-48800i, 1i)), select(vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(-19857i, 49426i), -global1[_wgslsmith_index_u32(u_input.b, 15u)]), ~vec4<i32>(-2147483647i, 1i, global1[_wgslsmith_index_u32(31800u, 15u)], arg_0.x) << (min(vec4<u32>(u_input.b, u_input.b, 66707u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 14353u, u_input.b)) % vec4<u32>(32u)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)))), func_2(Struct_2(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), Struct_1(_wgslsmith_div_f32(2003f, var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 982f, var_0.a))), 1i, Struct_1(-497f, _wgslsmith_f_op_vec3_f32(-var_0.b))), u_input.b));
    return Struct_3(_wgslsmith_div_u32(1u, ~u_input.b));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    var var_0 = reverseBits(1i);
    global0 = array<Struct_2, 32>();
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(9225i, 660i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-69228i, 0i, global1[_wgslsmith_index_u32(4294967295u, 15u)], -38739i), vec4<i32>(global1[_wgslsmith_index_u32(23608u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 0i, global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec4<bool>(false, arg_2, arg_2, arg_2)), vec4<i32>(2147483647i, u_input.a.x, global1[_wgslsmith_index_u32(81443u, 15u)], -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(22880u, 15u)], 26075i, -1655i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -4026i, 0i))), _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(global1[_wgslsmith_index_u32(56453u, 15u)], global1[_wgslsmith_index_u32(11209u, 15u)], u_input.a.x, 30155i), vec4<i32>(global1[_wgslsmith_index_u32(20084u, 15u)], 2147483647i, u_input.a.x, -1i), vec4<bool>(arg_2, false, true, arg_2)), vec4<i32>(-u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(11853u, 15u)] ^ u_input.a.x, _wgslsmith_sub_i32(21989i, 0i)), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)] << (7349u % 32u), global1[_wgslsmith_index_u32(0u, 15u)] | 30051i, u_input.a.x << (u_input.b % 32u), _wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(1776u, 15u)])))), firstTrailingBit(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(7609i, 14637i, u_input.a.x, u_input.a.x))));
    let var_1 = 50680i;
    let var_2 = Struct_1(839f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, 2309f)))), 741f)));
    return Struct_3(1u);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return ~(~_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(arg_1.a, 0u, 51600u, arg_2)), ~vec4<u32>(1u, arg_2, arg_2, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_clamp_u32(16466u, 40233u, 0u) & func_6(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), func_5(func_1(vec3<i32>(-55380i, global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a.x)), func_1(vec3<i32>(2147483647i, 2147483647i, 0i)), true), ~(~39978u)));
    let var_1 = select(_wgslsmith_mod_vec3_i32(min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, 4905i), select(vec3<i32>(-2147483647i, 1i, 20689i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], 5530i, -2147483647i), vec3<bool>(true, false, false)), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], -10637i, global1[_wgslsmith_index_u32(u_input.b, 15u)])), vec3<i32>(abs(global1[_wgslsmith_index_u32(var_0.a, 15u)]), u_input.a.x, -62602i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(4154i, global1[_wgslsmith_index_u32(46797u, 15u)], -1i) >> (vec3<u32>(var_0.a, var_0.a, u_input.b) % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], u_input.a.x, 1i) << (vec3<u32>(u_input.b, 20339u, var_0.a) % vec3<u32>(32u)), -vec3<i32>(global1[_wgslsmith_index_u32(0u, 15u)], 2147483647i, global1[_wgslsmith_index_u32(u_input.b, 15u)]))), vec3<i32>(-1i, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(var_0.a, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 39137i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-42439i, -2147483647i, global1[_wgslsmith_index_u32(29889u, 15u)]), min(vec3<i32>(global1[_wgslsmith_index_u32(47517u, 15u)], -82i, u_input.a.x), vec3<i32>(6183i, -2147483647i, -2147483647i))) ^ (i32(-1i) * -u_input.a.x)), true);
    var_0 = Struct_3(_wgslsmith_clamp_u32(var_0.a, countOneBits(var_0.a | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(46720u, 29706u, var_0.a))), 80407u));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(849f, -1036f, 1000f), vec3<f32>(-604f, -2226f, 874f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2262f, -470f, 2199f))))));
    var var_3 = func_2(global0[_wgslsmith_index_u32(~(~min(u_input.b, 0u >> (u_input.b % 32u))), 32u)], ~reverseBits(u_input.b));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 972f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1912f * -1167f), -1323f))), vec3<f32>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -616f)), var_2.x <= var_2.x, Struct_1(var_2.x, var_3.b)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_3.b.x)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))) != false)), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_add_u32(27337u, var_0.a), func_6(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, 57400u != var_0.a), func_5(Struct_3(var_0.a), Struct_3(var_0.a), true), 4294967295u)), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_0.a, 15u)], 1i));
}

