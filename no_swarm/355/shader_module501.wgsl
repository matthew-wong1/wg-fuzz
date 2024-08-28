struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<vec4<f32>, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_dot_vec2_i32(-vec2<i32>(17363i, -7422i), ~vec2<i32>(-14938i, -2147483647i))));
}

