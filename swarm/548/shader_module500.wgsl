struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 898i;

var<private> global1: array<u32, 19>;

var<private> global2: array<i32, 3> = array<i32, 3>(-10975i, -1i, 16661i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 19>();
    global1 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-527f, 1000f, 334f, -905f), vec4<f32>(-339f, -1168f, 1495f, 209f), false)), vec4<f32>(397f, -3553f, -298f, 2261f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-655f, 748f, -743f, -306f), vec4<f32>(497f, 982f, 165f, 1349f)) - vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-796f, 1168f, -1506f, -464f))))), select(any(vec4<bool>(true, false, true, false)), true, max(-2147483647i, -2147483647i) <= u_input.a.x))) - vec4<f32>(883f, _wgslsmith_f_op_f32(ceil(874f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 541f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-272f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -1800f);
}

