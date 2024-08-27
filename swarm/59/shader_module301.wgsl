struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-271f, -785f, 1953f);

var<private> global1: array<bool, 27>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec2<u32>, 5>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(true, false), 462f, 0u), Struct_1(vec2<bool>(true, true), -1000f, 16320u), Struct_1(vec2<bool>(true, true), -156f, 17554u), Struct_1(vec2<bool>(false, true), -825f, 28550u), Struct_1(vec2<bool>(false, false), 1039f, 1u), Struct_1(vec2<bool>(false, false), -358f, 0u), Struct_1(vec2<bool>(false, false), 470f, 0u), Struct_1(vec2<bool>(true, true), 1000f, 27744u), Struct_1(vec2<bool>(false, false), -1092f, 1u), Struct_1(vec2<bool>(false, true), 1000f, 0u), Struct_1(vec2<bool>(true, true), -1094f, 0u), Struct_1(vec2<bool>(false, true), -2561f, 4294967295u), Struct_1(vec2<bool>(true, false), -1519f, 30462u), Struct_1(vec2<bool>(false, false), 1260f, 55928u), Struct_1(vec2<bool>(false, false), -2901f, 1u), Struct_1(vec2<bool>(true, false), -923f, 45768u), Struct_1(vec2<bool>(false, false), 2041f, 1u), Struct_1(vec2<bool>(false, true), -816f, 4294967295u), Struct_1(vec2<bool>(true, false), 2439f, 1u), Struct_1(vec2<bool>(true, true), -553f, 0u), Struct_1(vec2<bool>(true, true), 306f, 8548u), Struct_1(vec2<bool>(false, false), 1054f, 1u), Struct_1(vec2<bool>(true, true), -1690f, 102111u), Struct_1(vec2<bool>(true, true), 1016f, 4294967295u), Struct_1(vec2<bool>(false, true), 438f, 63303u), Struct_1(vec2<bool>(false, true), 746f, 1u), Struct_1(vec2<bool>(true, true), 1100f, 36021u), Struct_1(vec2<bool>(true, true), 1877f, 57077u), Struct_1(vec2<bool>(true, false), -496f, 6075u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 61360u, u_input.b) | vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(1u, u_input.b, 40531u)), 27u)], true);
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), global2.x, _wgslsmith_f_op_f32(-global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(1323f, -1281f))) + _wgslsmith_f_op_f32(select(global2.x, global2.x, var_0.x))), -1844f, _wgslsmith_f_op_f32(step(248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))));
    var var_1 = global4[_wgslsmith_index_u32(1u, 29u)];
    global1 = array<bool, 27>();
    let var_2 = Struct_1(!vec2<bool>(true, any(select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(var_1.c, 27u)], true, false), vec4<bool>(true, var_0.x, true, var_0.x), global1[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))))), u_input.b);
    global3 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global2.xz, 834f);
}

