struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32> = vec2<f32>(1016f, 777f);

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-(~countOneBits(vec3<i32>(-6971i, -15504i, -94734i))));
    let x = u_input.a;
    s_output = StorageBuffer(1651f);
}

