struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 21>;

var<private> global2: array<i32, 25> = array<i32, 25>(i32(-2147483648), i32(-2147483648), 0i, 1i, 2147483647i, -1i, 5139i, 52121i, 0i, -1i, 1i, i32(-2147483648), 2147483647i, 35403i, 1i, 5819i, 0i, 2147483647i, 2147483647i, -1i, 30744i, -30266i, -1i, i32(-2147483648), 21441i);

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: array<Struct_2, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    global2 = array<i32, 25>();
    global2 = array<i32, 25>();
    var var_0 = Struct_1(arg_1.e.x, all(select(vec3<bool>(false, true, arg_1.a), !vec3<bool>(true, true, arg_1.e.x), true)), all(!vec3<bool>(all(vec3<bool>(arg_1.b, false, true)), !arg_1.a, true)), 1315f, !(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(arg_1.e.x, false), arg_1.e, arg_1.e))));
    let var_1 = global1[_wgslsmith_index_u32(~5866u, 21u)];
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(select(~106582u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 46654u, u_input.d, u_input.d), vec4<u32>(19393u, 80207u, u_input.d, 27087u)), true) | _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(55864u, 1u, 14031u), vec3<u32>(u_input.d, 4294967295u, 0u))), ~(~_wgslsmith_mult_u32(u_input.d, 4294967295u))), 21u)];
    return Struct_2(arg_1);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    global3 = array<vec4<i32>, 28>();
    var var_0 = _wgslsmith_mod_i32(countOneBits(select(-32608i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 25u)] ^ u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(8114i, 1i, u_input.b), vec3<i32>(-6630i, 3415i, 31139i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -31422i, -1i), u_input.c) != -2147483647i)), -11336i);
    global3 = array<vec4<i32>, 28>();
    global2 = array<i32, 25>();
    let var_1 = !(!vec3<bool>(~44645u <= _wgslsmith_mod_u32(u_input.d, u_input.d), true, arg_1.a.c));
    return arg_1;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> i32 {
    global0 = ~_wgslsmith_div_u32(u_input.d, u_input.d);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_1 = func_3(func_2(-(~u_input.c & ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 25u)], 19274i, u_input.a)), Struct_1((false && arg_0.x) & false, arg_0.x, all(arg_0), -962f, arg_0.yx)), Struct_3(Struct_1(all(arg_0), !arg_0.x, false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 977f, false)), _wgslsmith_f_op_f32(f32(-1f) * -495f)), func_2(-vec3<i32>(0i, 1i, global2[_wgslsmith_index_u32(16887u, 25u)]), func_2(u_input.c, Struct_1(arg_0.x, arg_0.x, true, 1189f, arg_0.xx)).a).a.e), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, arg_1.x, var_0, var_0) * vec4<f32>(arg_1.x, arg_1.x, -672f, 1800f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1719f, var_0, arg_1.x))))));
    var_1 = func_3(Struct_2(Struct_1(false, false, false, -587f, !vec2<bool>(false, arg_0.x))), Struct_3(var_1.a, 24258u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(arg_1.x, arg_1.x, var_1.a.d, arg_1.x)) * var_1.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_1.c.wzw - _wgslsmith_f_op_vec3_f32(var_1.c.wxy * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(-845f - 1000f), _wgslsmith_div_f32(arg_1.x, -430f)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~89591u) ^ ~u_input.d;
    global0 = u_input.d & 1u;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -112f)));
    global0 = u_input.d;
    global1 = array<Struct_2, 21>();
    global2 = array<i32, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(-1914f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_0, var_0, var_0)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 104f, var_0, -469f) * vec4<f32>(-1173f, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 2769f, -572f, -767f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f + -1463f) * var_0), _wgslsmith_f_op_f32(max(var_0, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(trunc(1831f)))));
    global2 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 25u)], u_input.b), vec3<u32>(_wgslsmith_clamp_u32(u_input.d, u_input.d, ~u_input.d), u_input.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(137559u, 7069u)) << (~vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), vec2<u32>(~u_input.d, u_input.d & u_input.d))), func_1(vec3<bool>(true, true, true), var_1.ywz), vec4<i32>(-2147483647i >> (u_input.d % 32u), u_input.c.x, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, -20364i, u_input.c.x), global3[_wgslsmith_index_u32(u_input.d, 28u)]) | u_input.c.x), _wgslsmith_dot_vec3_i32(select(u_input.c, vec3<i32>(1i, -49912i, global2[_wgslsmith_index_u32(1u, 25u)]) ^ u_input.c, false), u_input.c)));
}

