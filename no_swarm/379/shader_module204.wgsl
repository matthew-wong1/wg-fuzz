struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
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

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var_0 = ~(~63542u);
    var_0 = u_input.b.x;
    let var_1 = 12042u;
    var_0 = firstLeadingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.zz));
}

