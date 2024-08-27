struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global0 = false;
    let var_0 = vec3<i32>(-45749i, -(~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2367i, -17267i), ~vec2<i32>(2147483647i, 45076i))), 79083i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(946f, 249f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1952f, -1127f))), !any(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x))))));
    global0 = !arg_2.x;
    global1 = array<Struct_1, 27>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), arg_0));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = array<Struct_1, 27>();
    global0 = false;
    let var_0 = vec4<bool>(all(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), any(vec4<bool>(false, true, true, true)))), !(!any(vec2<bool>(true, true))) & (false && any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(func_1(-641f, Struct_1(select(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, 514u), false), 1u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), false);
    global0 = false;
    var var_1 = select(select(select(!select(var_0.xy, vec2<bool>(var_0.x, var_0.x), false), var_0.wy, any(var_0.wzz)), var_0.yz, false), vec2<bool>(any(vec3<bool>(true, false && var_0.x, false)), !(arg_0.x == _wgslsmith_f_op_f32(max(-1440f, arg_0.x)))), !(!var_0.yx));
    return 1297f;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global1 = array<Struct_1, 27>();
    let var_0 = ~arg_0.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(615f)), 1f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(func_3(vec3<f32>(124f, -1986f, var_1.x))), Struct_1(vec2<u32>(19415u, u_input.a), 4294967295u), vec3<bool>(true, true, true))) + 162f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -892f) + _wgslsmith_f_op_f32(-var_1.x))))));
    global1 = array<Struct_1, 27>();
    return vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-212f * -1658f), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_div_f32(-379f, var_1.x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * -1610f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 462f;
    var var_1 = Struct_1(~(~(~firstTrailingBit(vec2<u32>(u_input.a, u_input.a)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, u_input.a, ~u_input.a), ~(vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(12450u, u_input.a, u_input.a))));
    global1 = array<Struct_1, 27>();
    var var_2 = var_0;
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(-(~(-28392i)), ~0i);
    var var_4 = -34640i;
    let var_5 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(902f, Struct_1(vec2<u32>(var_1.b, u_input.a), var_1.b), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-610f, var_0), vec2<f32>(-574f, -502f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 624f) + vec2<f32>(-1053f, -1000f))))));
    global0 = true;
    let var_6 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(~abs(var_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 2497u), ~var_1.a))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-153f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(u_input.a, 27u)]))));
}

