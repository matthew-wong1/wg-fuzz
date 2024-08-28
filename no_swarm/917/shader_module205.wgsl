struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~firstLeadingBit(~42587u), 27643u, global1.a, _wgslsmith_mult_u32(global1.a, ~_wgslsmith_clamp_u32(global1.a, global1.a, global1.a))));
}

