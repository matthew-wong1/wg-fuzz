struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global1: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(65675u), Struct_4(1u), Struct_4(1u), Struct_4(0u), Struct_4(1u), Struct_4(0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.d.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1826f, _wgslsmith_div_f32(-727f, -965f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2397f, 2085f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-543f, -266f)))), vec2<f32>(1f, 1f)))));
}

