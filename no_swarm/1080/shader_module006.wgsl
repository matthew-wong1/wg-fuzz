struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-244f - 278f) * _wgslsmith_f_op_f32(f32(-1f) * -1592f))))));
    let var_1 = !(true | (1i == (_wgslsmith_dot_vec4_i32(vec4<i32>(-9480i, 16629i, -2147483647i, -1i), vec4<i32>(50609i, 1i, 1i, -10200i)) | reverseBits(-33102i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 719f, var_0), vec3<f32>(var_0, 1000f, var_0))), vec3<f32>(var_0, -413f, 995f), any(!vec3<bool>(var_1, var_1, var_1))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 846f) * var_0)), var_0, -122f));
    let x = u_input.a;
    s_output = StorageBuffer(((-vec3<i32>(-2147483647i, -26790i, 45961i) | (vec3<i32>(2147483647i, 12164i, -5149i) >> (vec3<u32>(29761u, u_input.b, 0u) % vec3<u32>(32u)))) << ((vec3<u32>(u_input.b, u_input.a, 1u) << (~vec3<u32>(u_input.b, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) & countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i) >> (vec3<u32>(u_input.b, u_input.a, u_input.b) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2)) * _wgslsmith_f_op_vec3_f32(-var_2))));
}

