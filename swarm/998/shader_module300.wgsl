struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<f32, 16> = array<f32, 16>(527f, -507f, 866f, 397f, 568f, -159f, -654f, -1575f, -864f, 213f, 535f, 1415f, 870f, 735f, 934f, -447f);

var<private> global2: array<vec3<bool>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(610f, Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 4581u) | u_input.a.x, u_input.d), 25u)], 37825u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -648f))), var_0.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(378f)), _wgslsmith_div_f32(-572f, global1[_wgslsmith_index_u32(4294967295u, 16u)]))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-614f + 294f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1532f - var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-291f)) + _wgslsmith_f_op_f32(min(var_1.a, var_1.a))) + var_1.a), global1[_wgslsmith_index_u32(~var_1.b.b & var_0.b.b, 16u)]) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a, 1825f)), _wgslsmith_f_op_f32(-140f * var_1.a), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1081f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1430f, 324f, var_1.a, var_1.a))))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_0.b.a.x, true, true), vec4<bool>(true, arg_0.a, false, arg_0.a)), vec4<bool>(false, false, 28483i > u_input.e.x, !var_1.b.a.x), vec4<bool>(4294967295u > var_1.b.b, 136132u <= var_1.b.b, var_1.b.a.x, true)))));
    global0 = var_2.x;
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)), Struct_2(vec3<bool>(true, var_1.b.a.x, arg_0.a), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36117u, 1u, u_input.a.x), u_input.b), _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(var_1.b.b, 1u))))));
    return true;
}

fn func_2() -> vec2<bool> {
    global2 = array<vec3<bool>, 25>();
    var var_0 = ~abs(-2147483647i);
    let var_1 = ~_wgslsmith_mult_u32(~57421u, _wgslsmith_dot_vec2_u32(~u_input.a.zy, ~u_input.b.yx) << (1u % 32u));
    var var_2 = !all(!select(select(global2[_wgslsmith_index_u32(u_input.c, 25u)], global2[_wgslsmith_index_u32(24896u, 25u)], true), global2[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)], global2[_wgslsmith_index_u32(var_1, 25u)]));
    let var_3 = Struct_1(true);
    return vec2<bool>(var_3.a, all(vec2<bool>(!select(false, var_3.a, var_3.a), func_3(var_3))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec3<bool>, 25>();
    var var_0 = u_input.a.yx;
    return Struct_1(!(select(any(arg_0), global1[_wgslsmith_index_u32(1u, 16u)] > -1433f, false) & (u_input.e.x == u_input.e.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = func_4(select(vec2<bool>(arg_0, arg_0), select(select(!vec2<bool>(arg_0, arg_0), func_2(), vec2<bool>(false, false)), vec2<bool>(false, true), func_2()), vec2<bool>(u_input.e.x < -u_input.e.x, func_2().x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(max(~arg_2, abs(u_input.a.x)), 16u)], -1031f)), Struct_2(global2[_wgslsmith_index_u32(arg_2, 25u)], 99500u));
    global1 = array<f32, 16>();
    global2 = array<vec3<bool>, 25>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(34578u, 16u)], global1[_wgslsmith_index_u32(arg_2, 16u)], 119f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, global1[_wgslsmith_index_u32(174063u, 16u)], -1347f))) + vec3<f32>(_wgslsmith_div_f32(325f, global1[_wgslsmith_index_u32(u_input.c, 16u)]), _wgslsmith_f_op_f32(692f + 965f), _wgslsmith_div_f32(arg_1.x, global1[_wgslsmith_index_u32(arg_2, 16u)]))), vec3<f32>(global1[_wgslsmith_index_u32(46103u, 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f - -962f)), _wgslsmith_f_op_f32(f32(-1f) * -463f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1226f, -417f, -650f), vec3<f32>(-1510f, -1026f, arg_3.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 1256f, global1[_wgslsmith_index_u32(4294967295u, 16u)])))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(466f, -1172f, arg_1.x), vec3<f32>(1441f, -808f, arg_3.x))))))));
    return _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, arg_2, u_input.a.x, 44475u), vec4<u32>(923u, arg_2, 28190u, 4294967295u)) ^ vec4<u32>(4294967295u, arg_2, u_input.a.x, 11744u), (vec4<u32>(arg_2, u_input.d, u_input.c, 4294967295u) | vec4<u32>(arg_2, u_input.b.x, 0u, arg_2)) | ~vec4<u32>(u_input.b.x, 39675u, arg_2, 12423u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2, 17421u, 0u, 52652u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 104065u, 1u, 0u), vec4<u32>(110872u, arg_2, u_input.c, arg_2))), vec4<u32>(~0u, reverseBits(u_input.a.x), ~27145u, countOneBits(arg_2))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_2 {
    global2 = array<vec3<bool>, 25>();
    var var_0 = func_4(vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(sign(arg_1.wz)), Struct_2(vec3<bool>(!all(vec4<bool>(false, true, false, true)), true, true), min(_wgslsmith_add_u32(~u_input.d, 4294967295u), 4294967295u)));
    var var_1 = !(!select(all(vec4<bool>(true, true, true, true)), false, global1[_wgslsmith_index_u32(~48906u, 16u)] >= 1231f));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1000f))));
    var var_2 = arg_2.xz;
    return Struct_2(!vec3<bool>((arg_2.x <= 1u) & var_0.a, var_0.a, u_input.d <= 1u), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-933f, func_5(~func_1(-217f < global1[_wgslsmith_index_u32(0u, 16u)], vec2<f32>(-383f, 1341f), u_input.d | u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, global1[_wgslsmith_index_u32(56319u, 16u)]) * vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], 267f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], -475f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)], 424f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 16u)], -128f, global1[_wgslsmith_index_u32(u_input.d, 16u)], global1[_wgslsmith_index_u32(u_input.d, 16u)])))), vec4<u32>(1u, u_input.b.x, ~0u, 27742u << (1u % 32u))));
    global0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    global1 = array<f32, 16>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-311f, var_0.a))), Struct_2(!select(!global2[_wgslsmith_index_u32(u_input.d, 25u)], vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), !var_0.b.a.x), ~_wgslsmith_div_u32(max(var_0.b.b, 0u), var_0.b.b)));
    let var_2 = -375f;
    global2 = array<vec3<bool>, 25>();
    let var_3 = var_0.b.a.x || !(!(!all(vec3<bool>(false, var_0.b.a.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(u_input.e.x, u_input.e.x), -1i, -2147483647i), _wgslsmith_f_op_f32(var_0.a + 1451f), u_input.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(select(-17350i, 28312i, false), _wgslsmith_div_i32(u_input.e.x, 41837i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, u_input.e.x), vec3<i32>(-3758i, u_input.e.x, u_input.e.x))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.e.x, -1i, u_input.e.x), -vec3<i32>(14809i, u_input.e.x, -30405i))));
}

