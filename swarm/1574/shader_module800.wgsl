struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1311f) + vec2<f32>(-1665f, -2042f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(150f, 672f))))));
    var var_1 = vec2<bool>(false, false);
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, var_0.x)));
    let var_2 = !vec3<bool>(false, any(!(!vec2<bool>(var_1.x, true))), var_1.x);
    var var_3 = u_input.b.x;
    let var_4 = 2861i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, 33747u, 1u, 1u), firstTrailingBit(~vec2<u32>(~u_input.a.x, 1u << (1u % 32u))), u_input.b.x);
}

