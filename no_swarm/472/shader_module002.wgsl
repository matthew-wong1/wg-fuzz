struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec3<f32>(-498f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-304f))), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(arg_0 + arg_0))));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    var var_1 = _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.b.x, 1u) & 4294967295u) ^ u_input.c.x;
    var_1 = u_input.a.x;
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_3.a, arg_3.a)), vec3<f32>(arg_0.a, arg_3.a, arg_0.a), -855f <= arg_3.a))))));
    let var_1 = arg_3;
    let var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(8673i, -19474i << (u_input.a.x % 32u)), vec2<i32>(2147483647i, arg_3.e.x)) << (_wgslsmith_add_vec2_u32(vec2<u32>(~arg_2, firstTrailingBit(arg_2) ^ func_3(414f)), ~u_input.a.xz) % vec2<u32>(32u));
    let var_3 = u_input.b.zx;
    global0 = array<i32, 25>();
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = -(-global0[_wgslsmith_index_u32(func_2(Struct_1(arg_0.a, 0i, false, true, vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 25u)], 69416i, arg_0.e.x)), arg_0.d, 38129u, Struct_1(arg_0.a, arg_0.b, true, true, arg_0.e)), 25u)] & 0i) | ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, global0[_wgslsmith_index_u32(5586u, 25u)] ^ 1i), select(max(arg_0.e.wy, vec2<i32>(global0[_wgslsmith_index_u32(38021u, 25u)], arg_0.e.x)), arg_0.e.wx, vec2<bool>(false, arg_0.c)));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a)))), 578f));
    return arg_0.e.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec2<bool>(!(u_input.a.x > u_input.a.x), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), any(vec2<bool>(true, true))), select(vec2<bool>(true, false), vec2<bool>(true, true), !all(vec2<bool>(false, true))));
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(func_1(Struct_1(-1012f, 2147483647i | global0[_wgslsmith_index_u32(u_input.b.x, 25u)], false, var_0.x, vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) << (vec4<u32>(u_input.c.x, u_input.a.x, 43567u, 48851u) % vec4<u32>(32u)))), select(max(_wgslsmith_div_vec2_i32(vec2<i32>(25720i, global0[_wgslsmith_index_u32(u_input.c.x, 25u)]), vec2<i32>(-23521i, 7266i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(115627u, 25u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 2147483647i), vec2<i32>(-57334i, global0[_wgslsmith_index_u32(29339u, 25u)]))), _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(28134u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(var_0.x, false)), vec2<i32>(global0[_wgslsmith_index_u32(0u, 25u)], -2147483647i)), var_0.x)), vec2<i32>(_wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(u_input.c.x, 25u)], min(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -58152i) << (u_input.a.x % 32u)), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), ~(~var_1), u_input.b.x);
}

