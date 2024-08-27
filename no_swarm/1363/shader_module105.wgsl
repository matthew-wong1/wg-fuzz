struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    return select(min(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(39356u, 4294967295u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.a, 1u)), min(firstTrailingBit(u_input.b), abs(u_input.b))), u_input.d), vec3<u32>(~(~u_input.b.x), u_input.b.x, 25140u), any(vec2<bool>(all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)))));
}

fn func_2() -> u32 {
    global0 = array<vec4<bool>, 8>();
    let var_0 = vec2<i32>(~2147483647i, u_input.c);
    var var_1 = 84275u;
    var var_2 = _wgslsmith_dot_vec3_u32(func_3(_wgslsmith_sub_i32(-1i, var_0.x)), u_input.b) & 1u;
    var_2 = 1u;
    return u_input.a << (1u % 32u);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = !arg_2.a;
    var var_1 = !(!(!(!select(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.d.x, 8u)], arg_2.a.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_1)), arg_1)) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * arg_1), arg_1)), _wgslsmith_f_op_f32(min(-724f, _wgslsmith_div_f32(-2113f, arg_1))))));
    global0 = array<vec4<bool>, 8>();
    let var_3 = vec2<bool>(arg_2.a.x, true);
    return select(u_input.b.yz, vec2<u32>(~func_2() & abs(max(41638u, 1u)), u_input.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 8>();
    var var_0 = Struct_1(!vec2<bool>(false, u_input.c <= -u_input.c));
    global0 = array<vec4<bool>, 8>();
    var var_1 = _wgslsmith_div_vec2_u32(abs(~(func_1(vec3<bool>(var_0.a.x, true, var_0.a.x), 2439f, Struct_1(var_0.a)) & u_input.b.xx)), vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 43699u), _wgslsmith_mult_u32(1u, ~0u)));
    global0 = array<vec4<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz, vec4<i32>(u_input.c, _wgslsmith_div_i32(-79427i, 25828i), _wgslsmith_mod_i32(2147483647i, u_input.c), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1310f, 469f)), _wgslsmith_f_op_f32(429f + 196f))), -703f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(234f)))), u_input.b.zz);
}

