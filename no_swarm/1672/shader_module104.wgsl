struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
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

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, false), 365i, 0u, 4294967295u), Struct_2(vec2<bool>(false, true), -38604i, 47493u, 100451u), Struct_2(vec2<bool>(false, true), 0i, 4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1712f, -1387f, -1000f, -2137f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, 746f, 1033f, 320f) - vec4<f32>(-532f, 1019f, 161f, 1419f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 594f, -1000f, -1000f) + vec4<f32>(687f, 376f, -323f, 730f)))))), global1.b.b);
}

