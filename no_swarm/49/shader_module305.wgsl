struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(41731u, 5877u, 4294967295u, 0u));

var<private> global1: vec2<u32> = vec2<u32>(53909u, 19309u);

var<private> global2: i32;

var<private> global3: vec2<u32>;

var<private> global4: array<vec4<f32>, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<u32> {
    global3 = _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, 1u), ~vec2<u32>(53050u, 77693u))), abs(abs(vec2<u32>(4870u, firstLeadingBit(global3.x)))));
    global0 = array<vec4<u32>, 1>();
    return vec2<u32>(global3.x, global1.x);
}

fn func_2() -> vec4<bool> {
    global3 = ~(~(~func_3(_wgslsmith_f_op_f32(-1000f - -347f), 1i)));
    let var_0 = vec2<i32>(select(1i, min(_wgslsmith_dot_vec4_i32(~vec4<i32>(-867i, 10476i, -1i, 0i), min(vec4<i32>(1i, -1i, -25142i, -1i), vec4<i32>(0i, 15003i, -1i, -7447i))), abs(0i)), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(~31500i, 1i, firstLeadingBit(15411i)), _wgslsmith_sub_i32(abs(~(-23935i)), -_wgslsmith_sub_i32(-53458i, 21909i))));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(global3.x, _wgslsmith_div_u32(1u, ~16302u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.b, global3.x), vec3<u32>(global1.x, 12577u, 0u)))), ~_wgslsmith_add_u32(max(global3.x, ~global3.x), global1.x));
    var var_2 = countOneBits(global0[_wgslsmith_index_u32(global1.x, 1u)]) | global0[_wgslsmith_index_u32(27639u, 1u)];
    var_2 = ~vec4<u32>(~4294967295u, 40468u, u_input.b << (0u % 32u), ~_wgslsmith_add_u32(1u, 0u));
    return !vec4<bool>(all(vec2<bool>(false, 4294967295u != u_input.a)), !((global1.x > u_input.a) && false), select(true, true, true) != true, 606f != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(max(-2397f, 468f)))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f * arg_3.a)))), arg_2.c));
    let var_1 = func_2();
    global3 = vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, global1.x, 1u, arg_1.x)), abs(vec4<u32>(arg_1.x, 0u, u_input.a, global3.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, global1.x), 4294967295u, 0u), abs(abs(global0[_wgslsmith_index_u32(10402u, 1u)])))), select(_wgslsmith_add_u32(arg_1.x, global3.x), func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_add_i32(-8092i, _wgslsmith_dot_vec2_i32(vec2<i32>(41734i, -57493i), vec2<i32>(1i, 1i)))).x, !arg_2.b.d.x));
    global4 = array<vec4<f32>, 22>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1160f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -629f)))))));
    return 0i;
}

fn func_4(arg_0: bool) -> f32 {
    global2 = 1i;
    let var_0 = select(vec3<bool>(true, arg_0, true), select(vec3<bool>(func_2().x, true, arg_0), select(select(func_2().ywx, !vec3<bool>(arg_0, false, arg_0), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), select(vec3<bool>(true, false, true), func_2().wxx, true), !vec3<bool>(arg_0, arg_0, arg_0)), all(select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, true, arg_0), !vec3<bool>(false, false, arg_0)))), !arg_0);
    global0 = array<vec4<u32>, 1>();
    var var_1 = vec2<u32>(global1.x, ~_wgslsmith_add_u32(global1.x, u_input.b));
    var var_2 = vec4<bool>(!(false & (var_0.x & func_2().x)), true, arg_0, false);
    return -758f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_i32(-1i, -46417i);
    global1 = ~(~max(max(vec2<u32>(global3.x, global1.x) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(31305u, 4294967295u), vec2<u32>(28200u, u_input.b))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global3.x, 1u)), vec2<u32>(0u, global1.x))));
    global2 = select(~(~select(max(1325i, -2147483647i), countOneBits(-70008i), u_input.a > global1.x)), -17773i, select(false, true, any(vec4<bool>(true, true, false, true)) | true) & (!all(vec4<bool>(false, true, true, false)) && true));
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, false))), any(vec3<bool>(false, true, true)) && any(vec3<bool>(true, false, false))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_1(1u, vec2<u32>(u_input.a, 0u), Struct_3(552f, Struct_1(vec2<f32>(985f, -153f), vec3<bool>(false, true, false), 659f, vec4<bool>(false, true, false, false), vec4<f32>(-102f, -691f, -510f, 695f)), -1203f), Struct_3(649f, Struct_1(vec2<f32>(981f, 304f), vec3<bool>(true, true, false), 551f, vec4<bool>(true, false, false, false), global4[_wgslsmith_index_u32(28009u, 22u)]), 2287f)) == _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 21609i, -33315i), vec3<i32>(-23005i, 0i, -18853i)))), _wgslsmith_f_op_f32(f32(-1f) * -826f))));
    let var_2 = vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))) != -989f, all(!vec2<bool>(var_1.x >= 815f, 301f > var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-443f)) + var_1.x), 285f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 1501f))), _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(global3.x, 22u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(u_input.b, 22u)] * vec4<f32>(var_1.x, -427f, var_1.x, -2336f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(2258f, -646f)), _wgslsmith_f_op_f32(abs(var_1.x)), 705f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1890f, var_1.x)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, -941f, -801f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1059f, var_1.x))))))), -select(select(vec2<i32>(-16114i, -85990i), ~vec2<i32>(2147483647i, 43258i), var_2.x), vec2<i32>(1i, 1i), func_2().yz), var_1.x);
}

