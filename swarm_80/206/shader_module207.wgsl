struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = array<vec2<bool>, 4>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1065f)), -447f);
    global0 = array<vec2<bool>, 4>();
    let var_1 = arg_3;
    let var_2 = -var_1.c.x;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> u32 {
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    global0 = array<vec2<bool>, 4>();
    return arg_0.a;
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(46520u, _wgslsmith_sub_u32(15706u, u_input.b.x) | 1u, u_input.a.x)), abs(u_input.b.xxx));
    global0 = array<vec2<bool>, 4>();
    let var_1 = 2524u;
    var var_2 = -_wgslsmith_sub_i32(-35935i >> (1u % 32u), arg_0.x);
    let var_3 = -812f;
    return StorageBuffer(select(arg_0.xz, u_input.d, select(vec2<bool>(true, func_2(vec4<bool>(false, true, false, true), vec2<f32>(928f, var_3), u_input.d.x, Struct_1(0u, var_1, u_input.e, vec2<f32>(var_3, var_3)))), global0[_wgslsmith_index_u32(~func_3(Struct_1(36211u, var_1, vec4<i32>(-482i, 0i, arg_0.x, u_input.e.x), vec2<f32>(var_3, 241f)), 990f, 20992u), 4u)], select(vec2<bool>(true, true), select(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], global0[_wgslsmith_index_u32(u_input.c, 4u)], true), false))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >> (u_input.c % 32u);
    var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) + 1f), 525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f + -852f)) * 1015f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1190f * -149f) - -704f) + _wgslsmith_f_op_f32(min(-228f, -533f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-599f, -542f, 256f, 530f) + vec4<f32>(175f, -772f, 1000f, -544f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, 457f, 1000f, 310f))))));
    global0 = array<vec2<bool>, 4>();
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_1(u_input.e);
}

