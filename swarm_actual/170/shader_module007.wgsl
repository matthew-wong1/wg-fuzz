struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: Struct_4 = Struct_4(1315f);

var<private> global2: f32 = 323f;

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(global1.a);
}

