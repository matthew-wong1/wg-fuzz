struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1937f);
    var var_1 = global0[_wgslsmith_index_u32(min(0u, 1u), 25u)];
    global0 = array<vec3<f32>, 25>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 25u)];
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), u_input.a.x);
}

