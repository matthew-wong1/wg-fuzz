struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    var var_0 = Struct_1(u_input.a.x, u_input.d.zz, ~(~4294967295u), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x & u_input.c.x, -2147483647i, ~u_input.a.x), vec3<i32>(u_input.c.x << (4294967295u % 32u), ~u_input.c.x, abs(u_input.a.x))), u_input.c, all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1422f, -163f)) + -624f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1923f - 1441f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) * _wgslsmith_f_op_f32(f32(-1f) * -265f)), true)), true || any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)))));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x << (u_input.d.x % 32u), var_0.b.x), firstTrailingBit(u_input.d.yy));
    let var_3 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -673f)))), 14548u, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f))));
}

