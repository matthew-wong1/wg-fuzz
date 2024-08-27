struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(-6662i, 0i));

var<private> global1: bool = true;

var<private> global2: i32 = 27472i;

var<private> global3: array<Struct_1, 17>;

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(16542i, ~firstTrailingBit(u_input.d.zy));
}

