struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1986f * 306f)))), 359f, _wgslsmith_f_op_f32(f32(-1f) * -1481f), 1342f), ~(-u_input.c));
}

