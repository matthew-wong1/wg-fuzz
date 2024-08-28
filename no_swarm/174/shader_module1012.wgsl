struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: f32 = -796f;

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-170f, 245f));

var<private> global2: array<u32, 1> = array<u32, 1>(1u);

var<private> global3: vec4<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_clamp_i32(-25373i, ~(-1i), max(0i, -4621i))));
}

