struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1179f, true, Struct_2(true), vec3<u32>(1u, 10262u, 24289u), Struct_2(false));

var<private> global1: array<Struct_3, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-1006f, _wgslsmith_f_op_f32(-644f * _wgslsmith_f_op_f32(f32(-1f) * -164f)));
}

