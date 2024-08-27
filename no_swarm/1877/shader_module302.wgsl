struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(22728u, 21367u), -1057f, vec3<bool>(true, false, false), 1000f, vec2<f32>(212f, -1000f));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_3, 4>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~global1.a);
}

