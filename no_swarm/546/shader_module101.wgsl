struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, _wgslsmith_f_op_f32(max(311f, -552f)), _wgslsmith_f_op_f32(floor(169f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-777f, 197f, -1304f) * vec3<f32>(538f, 1511f, -1104f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(309f, -1227f, -181f) + vec3<f32>(128f, 1591f, 1000f)))))), 10542i);
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    return select(!vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1100f) > _wgslsmith_f_op_f32(sign(1054f)), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], true, true, false))), !(!select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(arg_0.x, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], global0[_wgslsmith_index_u32(75394u, 10u)]), vec2<bool>(false, true)), true)), vec2<bool>(!global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(12359u, arg_0.x), arg_0.x), 10u)], !((arg_0.x >> (0u % 32u)) > 56706u)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<bool, 10>();
    let var_0 = !(!(!func_3(vec3<u32>(1u, 1u, 90862u))));
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(ceil(arg_1.zzy)), arg_0);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, arg_3, -608f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.x, 1250f, 275f)))) + vec3<f32>(arg_2.x, _wgslsmith_div_f32(1485f, 640f), _wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    global0 = array<bool, 10>();
    let var_1 = -arg_0.x;
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    return func_2(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, var_0.a.x, -2090f, arg_3) * vec4<f32>(136f, arg_2.x, var_0.a.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -691f, 2335f, var_0.a.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, arg_3, var_0.a.x, arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, -5879i)), min(vec2<i32>(0i, u_input.a), vec2<i32>(2147483647i, -27101i))), _wgslsmith_mult_i32(-u_input.a, 20493i)), 8352u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-137f - -1313f)))), -801f);
    global0 = array<bool, 10>();
    let var_1 = vec4<bool>(all(vec3<bool>(true, var_0.a.x != var_0.a.x, global0[_wgslsmith_index_u32(~0u, 10u)])), !(!all(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]))), any(select(vec3<bool>(global0[_wgslsmith_index_u32(select(12279u, 0u, global0[_wgslsmith_index_u32(0u, 10u)]), 10u)], true, true), vec3<bool>(true, true, true), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, 1208i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(var_0.b, u_input.a) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), -reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b, 40265i), vec2<i32>(-64577i, -24241i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), func_2(-52342i, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)).a.x), var_0.a.xx, true)) - vec2<f32>(func_2(_wgslsmith_mult_i32(50803i, -21534i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(519f, -726f, var_0.a.x, var_0.a.x)))).a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1386f * var_0.a.x))))));
}

