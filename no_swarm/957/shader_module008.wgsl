struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 290f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(-1000f + -1483f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()));
}

