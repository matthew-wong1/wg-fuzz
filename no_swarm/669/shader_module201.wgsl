struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 7714u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 32991u, 5699u), vec3<u32>(38144u, 1u, 59393u), vec3<u32>(7403u, 1u, 0u), vec3<u32>(0u, 10761u, 0u), vec3<u32>(19394u, 0u, 4294967295u), vec3<u32>(82321u, 21214u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(35868u, 22130u, 0u));

var<private> global1: u32;

var<private> global2: vec3<i32> = vec3<i32>(1i, 2552i, 10989i);

var<private> global3: vec3<i32>;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx);
}

