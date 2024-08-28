struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(42446u, 9470u, 1u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<i32>(72969i, 1i), vec3<u32>(global0.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~global0.x, 684u ^ u_input.a.x), 23024u), ~1u), 194f, -2822i);
}

