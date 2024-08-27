struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(30958u, 0u, vec2<i32>(-24015i, 35181i), vec3<i32>(17905i, -1i, 34579i), vec2<f32>(-535f, -2464f));

var<private> global2: vec3<f32>;

var<private> global3: bool = true;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(u_input.a, 9751u, 34810u)))));
}

