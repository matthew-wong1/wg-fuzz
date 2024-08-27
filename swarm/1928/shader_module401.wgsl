struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(709f)) - _wgslsmith_f_op_f32(f32(-1f) * -218f)))));
    var_0 = Struct_1(1f);
    let var_1 = 61654u;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_u32(min(95103u, var_1), 23650u) ^ var_1), ~(~(vec3<u32>(70299u, 1u, 76556u) << (min(vec3<u32>(0u, u_input.e, 67294u), vec3<u32>(82502u, var_1, 4558u)) % vec3<u32>(32u)))), ~vec3<u32>(~5898u ^ firstLeadingBit(var_1), 5421u, 4294967295u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-387f, var_0.a, -1552f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a) + vec3<f32>(var_0.a, var_0.a, var_0.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, 1014f, var_0.a), vec3<f32>(-863f, 2402f, -991f))))));
}

