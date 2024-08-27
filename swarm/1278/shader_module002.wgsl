struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: array<i32, 12> = array<i32, 12>(1i, -4742i, 1i, -17725i, 1i, 21318i, -55786i, -18799i, 11839i, -32726i, -7796i, 5667i);

var<private> global2: vec4<u32> = vec4<u32>(1u, 31763u, 0u, 1u);

var<private> global3: vec2<u32> = vec2<u32>(1u, 41984u);

var<private> global4: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(13303u, 4294967295u), vec2<u32>(16384u, 1u), vec2<u32>(1u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.wx)))) + var_0.wz));
}

