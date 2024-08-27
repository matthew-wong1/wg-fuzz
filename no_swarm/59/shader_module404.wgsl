struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -306f, -306f, 1065f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) - _wgslsmith_f_op_f32(-1668f - 547f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1874f, 604f, -1007f, -1496f), vec4<f32>(1085f, -927f, -585f, 1154f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2026f, 1339f, 246f, -1482f))))), ~(i32(-1i) * -u_input.a.x) | ~43686i);
}

