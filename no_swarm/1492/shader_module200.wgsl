struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
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

var<private> global0: array<f32, 1> = array<f32, 1>(-984f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, abs(abs(-vec2<i32>(46147i, 37258i))) ^ vec2<i32>(2839i, _wgslsmith_clamp_i32(~u_input.e.x, ~0i, u_input.e.x)));
}

