struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(1i, 37161i, 1i), vec3<i32>(21686i, 52562i, 1i), vec3<i32>(-18504i, 0i, -19133i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(3703i, -16710i, 0i), vec3<i32>(-58445i, -301i, 39399i), vec3<i32>(37885i, 23244i, -17064i), vec3<i32>(49162i, 0i, 18954i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(7568i, 17552i, -22083i), vec3<i32>(2437i, -8437i, 29048i), vec3<i32>(i32(-2147483648), -1i, -18973i), vec3<i32>(5913i, 64111i, -1i), vec3<i32>(-1i, 0i, 57144i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(-11181i, -39482i, 58147i), vec3<i32>(99204i, 37180i, i32(-2147483648)), vec3<i32>(59329i, -1i, i32(-2147483648)), vec3<i32>(-42310i, -15472i, -54409i), vec3<i32>(i32(-2147483648), 11115i, -2489i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_4(u_input.b.x, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, 1u >= u_input.c.x, false, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), true), true), select(vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, true)), false, true), vec4<bool>(true, false, all(vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true))));
    let var_1 = u_input.b;
    return 1i;
}

fn func_2() -> vec3<i32> {
    let var_0 = ~(~(~vec2<i32>(20192i, -5105i))) & global0[_wgslsmith_index_u32(u_input.d.x, 3u)];
    global1 = array<vec3<i32>, 20>();
    global0 = array<vec2<i32>, 3>();
    var var_1 = Struct_4(~_wgslsmith_mod_i32(var_0.x, func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), u_input.c.yzw))), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, false, true));
    var_1 = Struct_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, -32133i) >> (u_input.c.xyx % vec3<u32>(32u)), vec3<i32>(var_1.a, u_input.b.x, var_1.a)) | -25620i, !var_1.b);
    return ~u_input.b.yzx;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: u32) -> StorageBuffer {
    global0 = array<vec2<i32>, 3>();
    let var_0 = ~select(6223u, ~79206u, arg_1.a.x);
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f - 1000f))))) + -101f);
    let var_3 = reverseBits(~func_2());
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(-200f)), _wgslsmith_f_op_f32(750f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -250f), -519f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1444f) * var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 20>();
    let var_0 = false;
    global0 = array<vec2<i32>, 3>();
    global0 = array<vec2<i32>, 3>();
    var var_1 = ~u_input.d.x;
    global0 = array<vec2<i32>, 3>();
    let x = u_input.a;
    s_output = func_1(1u, Struct_5(vec4<bool>(u_input.b.x >= 1i, !var_0, true, true)), u_input.c.x);
}

