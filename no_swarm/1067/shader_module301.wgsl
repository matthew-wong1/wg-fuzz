struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> u32 {
    let var_0 = all(!vec3<bool>(all(vec4<bool>(false, false, false, false)), true | (u_input.b >= u_input.b), true));
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    let var_1 = 12997u;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2197f - -1255f) - _wgslsmith_f_op_f32(-1000f - 601f))), _wgslsmith_div_f32(-1024f, _wgslsmith_f_op_f32(select(963f, 1157f, true))), 1222f, -202f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f + -606f) - _wgslsmith_f_op_f32(ceil(-266f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -131f))), 1430f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(681f)))))));
    return reverseBits(~var_1);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> bool {
    return func_2() < u_input.b;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = array<vec4<i32>, 27>();
    return select(select(arg_1, min(~(~arg_1), ~arg_1), true), ~(~vec3<u32>(~0u, firstTrailingBit(97546u), ~u_input.b)), true);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    return Struct_1(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_0, arg_1), arg_1), !vec3<bool>(arg_0, false, arg_1), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), arg_0)), vec3<bool>(any(vec4<bool>(true, false, arg_0, arg_0)), !arg_0, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(all(vec2<bool>(all(vec2<bool>(true, true)), true)), any(vec4<bool>(true, all(vec3<bool>(true, true, true)), func_1(select(false, true, true), ~vec4<u32>(58933u, u_input.b, u_input.b, 50385u), true, _wgslsmith_f_op_f32(f32(-1f) * -541f)), true)), func_3(0i, vec3<u32>(~50223u, ~u_input.b, ~u_input.b)));
    global0 = array<vec4<i32>, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-553f, 383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-774f, _wgslsmith_f_op_f32(round(849f))))), 776f));
    var var_2 = u_input.b;
    global0 = array<vec4<i32>, 27>();
    let var_3 = var_0;
    let var_4 = 0i;
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(6611u, 8128u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) << (vec4<u32>(5935u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 53993u, u_input.b, 0u), ~vec4<u32>(77275u, u_input.b, 81090u, u_input.b))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(59782u, u_input.b, u_input.b, u_input.b)), abs(~vec4<u32>(1u, 4294967295u, 0u, u_input.b)))), var_1.xw);
}

