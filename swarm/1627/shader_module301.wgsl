struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec3<i32>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~65564u), max(abs(~vec2<u32>(26998u, 21824u)), vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(31444u, 0u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), ~firstTrailingBit(3469u))), ~vec4<u32>(1u, 1u, 1u, 1u), 0u);
}

