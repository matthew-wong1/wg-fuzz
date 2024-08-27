struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, -1i != u_input.d.x), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-572f, 1447f, -1000f), vec3<f32>(-1106f, 1000f, 878f))))))), _wgslsmith_div_f32(-1343f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1552f, _wgslsmith_f_op_f32(f32(-1f) * -712f))), 1f)), 1u);
}

