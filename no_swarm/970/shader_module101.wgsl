struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(7812i, -(~(-13815i)) >> (1u % 32u)), u_input.a ^ ~_wgslsmith_div_u32(~u_input.a, 46497u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), -firstLeadingBit(firstTrailingBit(i32(-1i) * -1i)));
}

