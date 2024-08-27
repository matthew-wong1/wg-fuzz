struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = -8220i;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~19565u >> (0u % 32u));
    let var_1 = global0.zy;
    var var_2 = ~var_0.a & _wgslsmith_sub_u32(var_0.a, var_0.a);
    global2 = vec2<bool>(!(all(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, false), true)) || (var_1.x < global0.x)), false);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(651f)), _wgslsmith_f_op_f32(230f + 424f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(621f, -998f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + vec2<f32>(747f, 594f));
    let var_4 = firstLeadingBit(vec2<u32>(~1u, var_0.a));
    var_0 = Struct_5(~var_4.x ^ ~(_wgslsmith_div_u32(14122u, var_4.x) >> (~0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, abs(8346u), _wgslsmith_mod_u32(var_0.a, ~0u)), abs(vec3<u32>(_wgslsmith_sub_u32(var_0.a, 1u), ~var_0.a & var_4.x, ~90842u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f * -540f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1583f)))), global0.yx, vec4<i32>(u_input.a, ~var_1.x, i32(-1i) * -1406i, global0.x));
}

