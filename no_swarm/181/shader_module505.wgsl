struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0.d, max(firstTrailingBit(vec4<i32>(abs(-16923i), min(2147483647i, -23356i), 0i, u_input.b.x)), -vec4<i32>(global0.d, -13782i, 1i, u_input.b.x) | (firstLeadingBit(vec4<i32>(u_input.b.x, -1i, -22381i, 22217i)) | (vec4<i32>(u_input.d, -1149i, -37935i, global0.d) ^ vec4<i32>(u_input.d, -2147483647i, -2147483647i, global0.d)))));
}

