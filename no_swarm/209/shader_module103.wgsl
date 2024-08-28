struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19>;

var<private> global1: bool = true;

var<private> global2: array<u32, 30> = array<u32, 30>(1u, 1u, 80470u, 1808u, 4294967295u, 0u, 42558u, 8554u, 51408u, 120748u, 36269u, 0u, 0u, 0u, 40764u, 29055u, 1u, 53057u, 0u, 30591u, 1u, 0u, 56609u, 98459u, 34094u, 4294967295u, 42232u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> vec4<bool> {
    return select(vec4<bool>(true, true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)] != u_input.a.x)), true), !vec4<bool>(any(vec3<bool>(true, false, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(136405u, u_input.a.x, 35792u), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]) > global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 36522u), 30u)], !any(vec3<bool>(true, false, false)), true), vec4<bool>(true, false, true, all(vec3<bool>(true, true, true))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    global0 = array<vec3<u32>, 19>();
    let var_0 = vec3<i32>(-14339i, ~abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, 4325i), arg_1)), ~arg_0);
    global0 = array<vec3<u32>, 19>();
    global0 = array<vec3<u32>, 19>();
    let var_1 = all(!vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, false, all(vec3<bool>(true, true, true))));
    return -3452i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = array<vec3<u32>, 19>();
    var var_0 = i32(-1i) * -9032i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 217f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, 739f)))));
    global1 = arg_0;
    global0 = array<vec3<u32>, 19>();
    return Struct_1(vec3<i32>(_wgslsmith_mult_i32(-23800i, -18241i) & firstTrailingBit(func_3(0i, vec3<i32>(-13775i, -1i, 24398i))), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-35900i, -1i), vec2<i32>(-4172i, -1i)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(831f)))), _wgslsmith_f_op_f32(abs(106f)))), vec2<i32>(1i, -1i), 28530u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(any(func_1()));
    global0 = array<vec3<u32>, 19>();
    var var_1 = var_0;
    let var_2 = !vec2<bool>(!(max(-33726i, var_0.c.x) > 1074i), 58552u <= ~firstLeadingBit(u_input.a.x));
    var var_3 = 0u;
    var var_4 = func_2(true);
    let var_5 = var_0;
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, -288f, -561f) + vec3<f32>(var_1.b, -920f, -147f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, var_5.b, 334f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1145f, -1148f, -980f) * vec3<f32>(var_5.b, var_4.b, var_4.b)))));
    let var_7 = -abs(_wgslsmith_sub_i32(-18001i >> (var_0.d % 32u), var_1.c.x)) > ~(~_wgslsmith_div_i32(reverseBits(47069i), 11796i >> (u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_4.d, 0u, ~50852u), countOneBits(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.d, 30u)], 30u)], 19u)], vec3<u32>(global2[_wgslsmith_index_u32(3464u, 30u)], 1u, 0u)))), min(global0[_wgslsmith_index_u32(var_4.d, 19u)], ~(~vec3<u32>(var_1.d, 22709u, var_5.d)))));
}

