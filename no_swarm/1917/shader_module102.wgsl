struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-823f, 326f, 838f), -1066f, -1000f);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy);
}

