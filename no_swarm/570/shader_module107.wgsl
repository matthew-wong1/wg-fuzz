struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, !all(vec2<bool>(true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

