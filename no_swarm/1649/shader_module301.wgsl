struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: array<Struct_4, 22>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: Struct_3;

var<private> global4: array<i32, 30> = array<i32, 30>(-1i, -9426i, -2965i, -28685i, i32(-2147483648), -48937i, 1i, 0i, -1i, -8600i, 2312i, -5291i, 24589i, 0i, -16447i, 1i, 9499i, 1i, 20184i, 44980i, -18112i, -1i, -18632i, 43447i, i32(-2147483648), 2147483647i, 33498i, 22726i, -1i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.yw));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1249f), global3.b.x));
    global3 = Struct_3(global3.a ^ vec2<i32>(global4[_wgslsmith_index_u32(15220u, 30u)] << (1u % 32u), -39597i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b - global3.b) * _wgslsmith_f_op_vec4_f32(global3.b * global3.b))))), vec3<bool>(true, true, true), true);
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    return global3.a.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = vec2<bool>(select(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.b.x)) - _wgslsmith_f_op_f32(126f * global3.b.x)) >= _wgslsmith_f_op_f32(floor(336f)), ~(72431u ^ u_input.b) < arg_0), !(_wgslsmith_mult_i32(max(-2147483647i, global3.a.x), func_3()) >= _wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, -22373i, 8326i, 0i), vec4<i32>(u_input.a.x, global3.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = select(!(!vec4<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(var_0.x, global3.d, global3.d, true)), false, var_0.x)), !(!select(!vec4<bool>(var_0.x, global3.d, true, var_0.x), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(global3.d, var_0.x, global3.d, false), vec4<bool>(true, true, true, true)), !var_0.x)), false);
    global4 = array<i32, 30>();
    global2 = array<Struct_1, 25>();
    var var_2 = select(~(global3.a << (firstLeadingBit(vec2<u32>(24475u, u_input.d) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) % vec2<u32>(32u))), ~vec2<i32>(-2147483647i, -38075i), false);
    return ~(min(~firstLeadingBit(u_input.d), 4294967295u) | 1u);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_4, 22>();
    let var_0 = ~vec3<u32>(~41223u, func_2(~32944u, _wgslsmith_f_op_f32(-251f * 676f), 20021u) | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 49814u, 1u), vec4<u32>(u_input.c, 45732u, arg_1, u_input.d))), ~arg_1);
    global2 = array<Struct_1, 25>();
    global3 = Struct_3((_wgslsmith_mod_vec2_i32(abs(global3.a), vec2<i32>(-11605i, u_input.a.x) << (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u))) & min(vec2<i32>(-71695i, 16421i), -vec2<i32>(u_input.a.x, u_input.a.x))) << (reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), var_0.zz)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.b.x, 521f, arg_0.x, 2447f))) * vec4<f32>(_wgslsmith_f_op_f32(arg_3.x * global3.b.x), global3.b.x, arg_0.x, _wgslsmith_f_op_f32(step(-151f, 427f))))), global3.c, global3.d);
    let var_1 = Struct_3(~select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xy, vec2<i32>(-34277i, u_input.a.x)), select(u_input.a.yz, vec2<i32>(u_input.a.x, global3.a.x), vec2<bool>(true, global3.d))), ~global3.a, global3.c.xx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(304f, global3.b.x) + arg_0.x), 1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1172f, -1261f) * 1401f)), global3.b, !(!(!vec4<bool>(arg_2, false, true, false))))), select(global3.c, select(global3.c, !select(global3.c, vec3<bool>(global3.c.x, arg_2, true), vec3<bool>(global3.c.x, global3.c.x, arg_2)), vec3<bool>(all(vec4<bool>(global3.d, arg_2, arg_2, global3.c.x)), select(arg_2, arg_2, global3.c.x), !global3.d)), vec3<bool>(all(vec3<bool>(global3.c.x, arg_2, true)), arg_2, global3.d)), false);
    return 34430u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 30>();
    global4 = array<i32, 30>();
    global0 = array<Struct_4, 30>();
    let var_0 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.wy) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(572f, -124f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, 866f))))), abs(u_input.d), global3.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global3.b.x, global3.b.x)), _wgslsmith_div_f32(global3.b.x, 1013f), global3.b.x)))), 30u)];
    let var_1 = ~u_input.b;
    let var_2 = vec2<i32>(global4[_wgslsmith_index_u32(var_1, 30u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(6734u, 8526u, 58395u, var_1)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, var_1, 12950u, 0u), reverseBits(vec4<u32>(0u, u_input.b, 1u, 4294967295u)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, var_1, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 101874u, 0u, u_input.d), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.b), vec4<u32>(29077u, 4294967295u, 81014u, 12703u)))), 30u)]);
    let var_3 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1, 15234u, var_1, 12756u), vec4<u32>(16609u, ~4294967295u, _wgslsmith_div_u32(var_1, 5708u), ~u_input.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, 54824u, u_input.b), ~vec4<u32>(u_input.c, u_input.b, 26314u, 0u), vec4<u32>(82734u, u_input.b, var_1, 1u)));
    var var_4 = 0u;
    var var_5 = 575f;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, ~(~min(var_3.wxx, var_3.xzw)), ~func_2(u_input.b, var_0.c.x, u_input.b), max(~vec2<u32>(_wgslsmith_mod_u32(var_1, 4294967295u), 0u << (var_3.x % 32u)), ~_wgslsmith_mult_vec2_u32(var_3.yx, var_3.yz)), -689f);
}

