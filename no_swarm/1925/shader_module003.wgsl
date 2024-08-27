struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(_wgslsmith_div_u32(u_input.c, 4294967295u) > 1u, true));
    var var_1 = false;
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

