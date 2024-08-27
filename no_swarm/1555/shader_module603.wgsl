struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<f32> = vec2<f32>(1298f, -1113f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 1059f)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1336f, global1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(0u, (u_input.a ^ 39985u) << (~u_input.a % 32u))));
}

