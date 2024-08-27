struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 5>;

fn func_1(arg_0: bool, arg_1: Struct_4) -> StorageBuffer {
    global0 = array<i32, 13>();
    global2 = array<Struct_2, 5>();
    global0 = array<i32, 13>();
    return StorageBuffer(1u, ~(~3574u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(false, Struct_4(u_input.c, any(vec2<bool>(true, true)), true));
}

