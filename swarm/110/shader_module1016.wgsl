struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: i32;

var<private> global2: u32 = 14803u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = Struct_1(vec3<f32>(-258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(860f - var_0.a.x) - 1737f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), 1013f))));
    global0 = array<Struct_1, 29>();
    let var_2 = 1523f;
    var var_3 = u_input.b.x;
    let var_4 = _wgslsmith_add_u32(u_input.a.x, min(_wgslsmith_mod_u32(u_input.d, u_input.b.x), _wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(~4294967295u, u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~max(_wgslsmith_mod_u32(4294967295u, u_input.a.x), var_4 ^ 4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.b.x, var_4), u_input.d)), _wgslsmith_f_op_f32(-728f * -715f));
}

