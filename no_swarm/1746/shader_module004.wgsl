struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<vec2<i32>, 28>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(416f - _wgslsmith_f_op_f32(ceil(-1281f))), 512f, !any(vec4<bool>(false, false, true, false)))), -1000f)) - _wgslsmith_f_op_f32(-321f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1848f))), -258f)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) * _wgslsmith_f_op_f32(select(-729f, 319f, true))), _wgslsmith_f_op_f32(ceil(-2515f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(329f - 469f), _wgslsmith_f_op_f32(1000f - -1508f))), -1500f)), -(reverseBits(abs(vec4<i32>(u_input.d.x, -1i, -1i, u_input.d.x))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(31i, u_input.d.x, 1i, -27745i), ~vec4<i32>(-43753i, -61110i, u_input.d.x, u_input.d.x))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(807f + -2127f), 1171f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(514f * -1023f) + _wgslsmith_f_op_f32(-998f + 715f)), -1004f, -1239f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1065f, -1000f, -1000f, 542f)))), firstTrailingBit(_wgslsmith_clamp_i32(~(-u_input.d.x), 2147483647i, countOneBits(~u_input.d.x))), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1794u & u_input.a.x, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(3807u, 30u)]));
    let var_1 = ~vec4<u32>(reverseBits(67487u), 38446u, _wgslsmith_dot_vec3_u32(~u_input.c, u_input.a), ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(2702u, 30u)], 30u)] & u_input.e.x);
    var var_2 = ~(~(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.e, 30u)], var_0.e) & _wgslsmith_div_u32(~1u, u_input.c.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(max(-522f, _wgslsmith_f_op_f32(exp2(var_0.a.x))))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(914f - _wgslsmith_f_op_f32(func_2(var_0.b.yxx, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 24532u, 20723u, 1u), var_1)))), var_0.c.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.b ^ vec4<i32>(0i, var_0.d, var_0.b.x, 1i), var_0.b << (var_1 % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(-30086i, 18409i), 25079i, -u_input.d.x, ~var_0.d)) >> (~var_1 % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-var_0.c), i32(-1i) * -1i, abs(u_input.c.x));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = array<u32, 30>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1509f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.e.x, 30u)], global0[_wgslsmith_index_u32(26697u, 30u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(111579u, 30u)], 30u)], 30u)], 30u)]) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), u_input.b | u_input.c.zx), 30u)], vec4<u32>(u_input.a.x, ~(~abs(21095u)), 18421u >> (_wgslsmith_add_u32(u_input.e.x, u_input.b.x) % 32u), ~abs(1u)), func_1(), Struct_1(min(~u_input.a, select(vec3<u32>(84292u, global0[_wgslsmith_index_u32(1u, 30u)], 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(129295u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.c.x), u_input.c, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 4294967295u, 1u)), any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1109f))), _wgslsmith_div_f32(-1354f, _wgslsmith_f_op_f32(1886f - 1119f))))));
    global1 = array<vec2<i32>, 28>();
    global1 = array<vec2<i32>, 28>();
    let var_1 = ~(~vec2<i32>(~_wgslsmith_div_i32(-1i, u_input.d.x), ~u_input.d.x));
    global0 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c.x) + -419f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - 929f)), u_input.d.x, vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-var_0.c.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(389f - var_0.c.c.x))))), 1233f));
}

