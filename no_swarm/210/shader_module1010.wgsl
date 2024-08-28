struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -460f;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(vec2<i32>(~(-27304i), -64189i))));
}

