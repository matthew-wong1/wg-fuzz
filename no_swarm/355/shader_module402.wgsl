struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1088f;

var<private> global1: array<f32, 12> = array<f32, 12>(-207f, -365f, 888f, -283f, -405f, -553f, 877f, 201f, 1782f, 1813f, 236f, 1405f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 12>();
    let var_0 = 21837i;
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 10211u), ~vec3<u32>(10124u, 29658u, 37880u)), _wgslsmith_add_u32(u_input.a, 0u)), 27335u), 12u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(~(~u_input.a)), 1u), 12u)];
    let var_1 = 446f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~1u, u_input.a), _wgslsmith_div_u32(40267u, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f), global1[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1763f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1000f, 874f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], 139f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 308f, var_1)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 149f, global1[_wgslsmith_index_u32(4294967295u, 12u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, -459f) - vec3<f32>(var_1, var_1, -368f))))));
}

