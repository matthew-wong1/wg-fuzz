struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: vec2<i32> = vec2<i32>(0i, 9212i);

var<private> global2: u32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1224f);
}

