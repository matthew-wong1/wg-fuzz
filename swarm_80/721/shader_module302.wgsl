struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: array<vec3<bool>, 8>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> bool {
    global0 = array<vec3<bool>, 8>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1701f);
    global0 = array<vec3<bool>, 8>();
    var var_1 = arg_0;
    let var_2 = vec3<bool>(true, all(vec4<bool>(true, false, !arg_1, any(var_1.b.e))), abs(i32(-1i) * -arg_0.b.d) != ~abs(arg_0.b.d));
    return all(!global0[_wgslsmith_index_u32(4294967295u, 8u)]);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<i32> {
    global0 = array<vec3<bool>, 8>();
    var var_0 = arg_3.x;
    let var_1 = arg_0;
    var_0 = true;
    var var_2 = Struct_2(func_3(Struct_3(_wgslsmith_mod_vec3_u32(u_input.d, u_input.d), arg_2), true | arg_2.e.x, -20392i, vec2<u32>(25161u, select(0u, 0u, false))) | !(arg_2.b.a == arg_1.a), arg_1, _wgslsmith_div_u32(u_input.d.x, 0u), -2147483647i, select(vec4<bool>(_wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, false)) < -655f, firstTrailingBit(0u) >= 52554u, any(arg_2.e), _wgslsmith_mult_i32(var_1.x, -73889i) != arg_2.d), select(select(vec4<bool>(arg_2.a, false, arg_3.x, arg_2.a), vec4<bool>(true, false, arg_2.a, true), any(arg_3)), vec4<bool>(true, true, true, true), any(arg_2.e.zw)), any(!arg_2.e)));
    return -var_1.wx;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    return -_wgslsmith_add_i32(u_input.c.x, _wgslsmith_clamp_i32(~(~5499i), _wgslsmith_dot_vec2_i32(~u_input.c, func_2(vec4<i32>(u_input.e, u_input.c.x, u_input.c.x, -1i), Struct_1(arg_0.x), Struct_2(true, Struct_1(arg_0.x), 63613u, u_input.e, vec4<bool>(true, true, true, true)), vec3<bool>(false, false, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -47413i, u_input.c.x, 0i) & vec4<i32>(u_input.b, u_input.e, u_input.c.x, -1i), max(vec4<i32>(u_input.c.x, 65283i, -72066i, u_input.a), vec4<i32>(u_input.b, 12209i, -10413i, u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(437f, 1f, _wgslsmith_f_op_f32(323f * -415f)));
    let var_1 = 1894f;
    global0 = array<vec3<bool>, 8>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-530f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1033f, var_1)))))));
    var var_3 = all(select(!vec4<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(4294967295u != _wgslsmith_dot_vec4_u32(vec4<u32>(7548u, u_input.d.x, 0u, 0u), vec4<u32>(1u, 4294967295u, 46069u, 89355u)), true, !func_3(Struct_3(vec3<u32>(3211u, 56048u, 58636u), Struct_2(true, Struct_1(var_2.a), u_input.d.x, var_0, vec4<bool>(false, false, false, true))), true, -12722i, u_input.d.xx), true)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(164f)) + 1496f), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3043f + _wgslsmith_f_op_f32(var_1 - var_2.a)))));
    var_4 = -279f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(~73152u, max(12048u, ~u_input.d.x)), vec2<u32>(1u, u_input.d.x)));
}

