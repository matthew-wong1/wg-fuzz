struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.c.x, reverseBits(~(~(~51355u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(231f - _wgslsmith_div_f32(1904f, -709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f))))));
    var var_2 = var_0.x;
    var var_3 = -firstLeadingBit(-((-2147483647i ^ u_input.b.x) ^ select(-28294i, -134i, true)));
    var var_4 = 8857u;
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-342f)), var_1.a));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-419f, -1600f), vec2<f32>(-487f, var_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -660f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0), u_input.b.xwz | vec3<i32>(2147483647i, _wgslsmith_mod_i32(-u_input.e.x, u_input.e.x), u_input.e.x));
}

