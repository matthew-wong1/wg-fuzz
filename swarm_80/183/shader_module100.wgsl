struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(2183f, _wgslsmith_f_op_f32(201f - 855f), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

