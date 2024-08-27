struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, -452f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(2130f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1431f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -286f)))), global0[_wgslsmith_index_u32(arg_0.b, 19u)]));
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var var_1 = max(u_input.b, arg_0.a.x);
    return ~(~u_input.a);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52774u, 19u)]), -351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)] - -231f)))));
    var var_1 = !(!(((arg_0 & arg_0) || (-1234f != global0[_wgslsmith_index_u32(1u, 19u)])) && !any(vec3<bool>(false, arg_0, arg_0))));
    let var_2 = true;
    var var_3 = Struct_2(Struct_1(-_wgslsmith_sub_i32(-u_input.b, u_input.b)));
    var var_4 = Struct_1(var_3.a.a);
    return ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 11723u, u_input.a.x, 3172u)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(-max(29907i, u_input.b) << (0u % 32u));
    let var_1 = vec3<u32>(u_input.a.x, 1u, u_input.a.x);
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    return global0[_wgslsmith_index_u32(max(~(25830u & _wgslsmith_mult_u32(0u << (u_input.a.x % 32u), 0u)), 4294967295u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -430f;
    global0 = array<f32, 19>();
    let var_1 = 18343u;
    var var_2 = max(72378i, u_input.b) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_3(vec4<i32>(1i, u_input.b, u_input.b, 57825i), 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1, var_1), u_input.a.xwx), 0i, firstLeadingBit(vec3<i32>(45967i, u_input.b, u_input.b))), abs(func_2(true))), firstLeadingBit(1127u << (~4294967295u % 32u))) % 32u);
    var var_3 = _wgslsmith_f_op_f32(func_3());
    var_2 = _wgslsmith_dot_vec3_i32(countOneBits((vec3<i32>(u_input.b, -2298i, -2147483647i) ^ vec3<i32>(0i, 1i, 0i)) & abs(countOneBits(vec3<i32>(-19796i, u_input.b, u_input.b)))), countOneBits(countOneBits(-(~vec3<i32>(41040i, u_input.b, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -159f), max(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, 55430i, 41516i)), vec4<i32>(u_input.b, u_input.b & -9077i, u_input.b, u_input.b ^ u_input.b)), vec4<i32>(countOneBits(u_input.b), -_wgslsmith_div_i32(u_input.b, u_input.b), -2121i, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(354f, global0[_wgslsmith_index_u32(var_1, 19u)])), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1, 19u)], var_0)), _wgslsmith_f_op_f32(-var_0), var_0))) - vec4<f32>(-188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 19u)])), global0[_wgslsmith_index_u32(var_1, 19u)]), -842f, 1266f)));
}

