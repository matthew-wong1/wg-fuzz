struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<u32, 20> = array<u32, 20>(1u, 33017u, 1u, 64385u, 4294967295u, 4294967295u, 29564u, 6685u, 0u, 13878u, 1u, 11699u, 24242u, 1u, 1u, 0u, 42865u, 0u, 5666u, 1u);

var<private> global2: array<vec3<f32>, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42829u, 20u)], 24u)];
    let var_1 = min(~max(vec4<i32>(i32(-1i) * -46519i, 7974i, -2147483647i, _wgslsmith_mod_i32(-1i, -1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 0i, -8035i), vec4<i32>(-1i, u_input.d.x, -1i, 1i)), min(vec4<i32>(u_input.d.x, -2147483647i, -1i, -12315i), vec4<i32>(-600i, u_input.d.x, -12437i, u_input.d.x)))), _wgslsmith_mod_vec4_i32(-vec4<i32>(18981i, 39510i, u_input.d.x, u_input.d.x), -vec4<i32>(0i, 5918i, u_input.d.x, u_input.d.x)) & ~(firstTrailingBit(vec4<i32>(-3830i, u_input.d.x, u_input.d.x, u_input.d.x)) & -vec4<i32>(-20163i, u_input.d.x, -36825i, -60592i)));
    let var_2 = abs(-var_1);
    global1 = array<u32, 20>();
    global0 = array<f32, 24>();
    return u_input.d.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 3u)]));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(8313i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(func_3(), _wgslsmith_dot_vec3_i32(vec3<i32>(-2755i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 0i))), 0i)), u_input.d.x);
    let var_2 = Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, false, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, true), true)), select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, false), arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, true))));
    let var_3 = Struct_1(!vec4<bool>(select(!arg_0.x, !arg_0.x, true), true, true, any(!var_2.a.wyw)));
    let var_4 = 74955u;
    return var_3;
}

fn func_1() -> Struct_1 {
    global2 = array<vec3<f32>, 3>();
    let var_0 = Struct_1(vec4<bool>(true, true, true, true));
    let var_1 = func_2(var_0.a.xw);
    let var_2 = ~_wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, u_input.b.x), ~u_input.b) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~20862u, 20u)], 20u)], 1u, u_input.b.x, u_input.a.x << (0u % 32u)));
    let var_3 = vec2<bool>(var_1.a.x, false);
    return func_2(!select(vec2<bool>(var_0.a.x, var_3.x), vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 20u)] < 18768u, any(var_3)), select(var_1.a.zx, select(vec2<bool>(var_0.a.x, false), var_3, var_0.a.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    let var_0 = ~1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(3352u, 24u)]))))), global0[_wgslsmith_index_u32(29021u & global1[_wgslsmith_index_u32(u_input.c, 20u)], 24u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_f_op_f32(trunc(1371f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-308f)), _wgslsmith_f_op_f32(f32(-1f) * -1765f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(465f, var_1.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 24u)]))))));
    var var_2 = func_1();
    global2 = array<vec3<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<u32>(_wgslsmith_add_u32(1u, 0u), countOneBits(30813u), ~u_input.a.x & _wgslsmith_add_u32(global1[_wgslsmith_index_u32(915u, 20u)] | u_input.c, _wgslsmith_mult_u32(39385u, 0u))), u_input.a.x);
}

