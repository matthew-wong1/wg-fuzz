struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(78965u, 1u, 0u, 4294967295u, 52386u, 4294967295u, 0u, 0u, 91413u);

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-277f, 1035f, 676f, 1323f), 0i, vec2<bool>(false, true), vec4<u32>(0u, 8894u, 4294967295u, 26730u), vec4<bool>(false, false, true, false));

var<private> global3: array<u32, 21>;

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, -1i);
}

