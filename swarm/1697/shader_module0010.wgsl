struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1332f, 887f), _wgslsmith_f_op_f32(-908f + global0.b.b))))));
}

