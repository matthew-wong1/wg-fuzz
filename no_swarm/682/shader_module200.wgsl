struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn func_1() -> vec3<f32> {
    var var_0 = abs(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(13257u, 28781u), vec2<u32>(25385u, 91784u), vec2<u32>(27342u, 0u)) << (~vec2<u32>(5860u, 18879u) % vec2<u32>(32u)), vec2<u32>(~4294967295u, 1u), true));
    let var_1 = vec4<u32>(var_0.x, 30623u, ~(~var_0.x), _wgslsmith_mult_u32(~max(20888u, var_0.x ^ var_0.x), _wgslsmith_mod_u32(countOneBits(var_0.x), _wgslsmith_div_u32(0u ^ var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(var_0.x, 4294967295u))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -1049f))) + 1117f)) - _wgslsmith_f_op_f32(139f - -1116f));
    global0 = array<Struct_1, 23>();
    var_0 = var_1.zw;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1948f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(135f - var_2)), 1191f)), vec3<f32>(var_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-var_2))), -327f));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> StorageBuffer {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = global0[_wgslsmith_index_u32(arg_1.x, 23u)];
    global0 = array<Struct_1, 23>();
    let var_1 = 4294967295u;
    return StorageBuffer(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(-1000f, 1315f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1575f, _wgslsmith_f_op_f32(-1725f - _wgslsmith_div_f32(718f, -870f)), 767f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2343f, 578f, -1218f) + vec3<f32>(318f, -761f, 483f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-189f, -349f, -3235f) + vec3<f32>(-313f, -1860f, -178f)) - _wgslsmith_f_op_vec3_f32(func_1())))), vec3<u32>(41904u, ~4294967295u, ~60453u));
}

