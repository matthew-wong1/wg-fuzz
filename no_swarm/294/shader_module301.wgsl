struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), 332f), 4294967295u, firstLeadingBit(88131u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1761f)))));
}

