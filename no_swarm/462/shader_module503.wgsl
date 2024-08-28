struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(141f - 112f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) + _wgslsmith_div_f32(1215f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-453f)))), ~(vec4<u32>(1u, 1u, 1u, firstTrailingBit(1u)) | ~max(vec4<u32>(4294967295u, 41495u, 1u, 0u), vec4<u32>(112426u, 73501u, 44805u, 1u))), u_input.c.yxx);
}

