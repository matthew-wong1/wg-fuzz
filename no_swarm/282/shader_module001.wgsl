struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 379f;

var<private> global1: array<vec3<bool>, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1233f;
    global1 = array<vec3<bool>, 2>();
    global1 = array<vec3<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -1956f, var_0, -1366f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, var_0, var_0, var_0))))))), -select(-u_input.b, -2147483647i, true), vec3<u32>(~62035u, 34014u, 1u), firstLeadingBit(max(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a, u_input.b)), firstLeadingBit(vec3<i32>(u_input.b, 53171i, u_input.a))), vec3<i32>(1336i, -1i, -13368i) & vec3<i32>(u_input.a, -13356i, 34723i))));
}

