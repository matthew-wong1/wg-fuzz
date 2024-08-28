struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
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
    var var_0 = vec4<f32>(857f, 839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -739f))))), 291f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f + -1234f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(470f, 1434f)))), _wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(465f + 186f)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(u_input.a), -17243i));
}

