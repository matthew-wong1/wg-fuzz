struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1084f, 4294967295u, vec4<u32>(20409u, 6020u, 0u, 0u)), Struct_1(319f, 24683u, vec4<u32>(4294967295u, 25397u, 0u, 62385u)), vec2<bool>(false, false), Struct_1(-470f, 1u, vec4<u32>(32607u, 4294967295u, 64561u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(110f, 2147483647i, 34466i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-716f))));
}

