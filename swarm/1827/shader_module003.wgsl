struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1117f, -228f);

var<private> global1: i32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -1i))), ~countOneBits(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))));
}

