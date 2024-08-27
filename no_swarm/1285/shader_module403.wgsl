struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_4,
    d: vec3<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 46949u, 4294967295u);

var<private> global1: vec2<f32> = vec2<f32>(-157f, 483f);

var<private> global2: array<i32, 17> = array<i32, 17>(-24397i, 1i, 1i, 0i, 4010i, 21047i, 1i, 2147483647i, 1i, 1i, 3715i, -63012i, 52998i, 32636i, 11451i, 10980i, -52258i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1483f), 879i, ~global0.x);
}

