struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(-11030i, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(select(-138f, 373f, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-604f, -325f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, -1282f) * var_0.a.d)))), vec4<f32>(-397f, -523f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.d), -810f)), 634f), ~(u_input.b.zyw ^ u_input.b.yxx), u_input.b.x);
}

