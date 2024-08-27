struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

@compute
@workgroup_size(1)
fn main() {
    global0 = ~countOneBits(vec3<i32>(-73665i, u_input.c.x, ~firstTrailingBit(global0.x)));
    global0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, ~min(~vec4<u32>(u_input.d.x, 0u, u_input.a, 4294967295u), vec4<u32>(u_input.b, ~4294967295u, ~u_input.d.x, 1u)));
}

