struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    global0 = array<bool, 32>();
    global2 = array<vec2<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a.xx), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(964f * 237f)))) - _wgslsmith_f_op_f32(abs(749f))));
}

