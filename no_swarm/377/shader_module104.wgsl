struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: u32 = 1u;

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = reverseBits(u_input.a.x);
    var var_1 = !vec4<bool>(arg_0.x, any(select(vec2<bool>(arg_0.x, arg_0.x), select(arg_0, arg_0, vec2<bool>(false, arg_0.x)), !vec2<bool>(arg_0.x, arg_0.x))), arg_0.x, all(!(!vec2<bool>(arg_0.x, false))));
    global2 = array<vec2<bool>, 4>();
    let var_2 = u_input.a.x;
    global2 = array<vec2<bool>, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * 292f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1722f)) - _wgslsmith_f_op_f32(f32(-1f) * -210f))))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false)));
    global2 = array<vec2<bool>, 4>();
    var var_1 = Struct_1(-20272i ^ (u_input.b.x >> ((_wgslsmith_add_u32(u_input.a.x, 49324u) >> (24857u % 32u)) % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(abs(var_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1408f) + _wgslsmith_f_op_f32(-1215f - -174f))), 1775f));
    var var_3 = Struct_1(select(countOneBits(1i), (var_1.a ^ ~0i) << (firstLeadingBit(reverseBits(u_input.a.x)) % 32u), true));
    return u_input.b.x;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = 5340u;
    let var_2 = var_1;
    global2 = array<vec2<bool>, 4>();
    global0 = array<vec4<u32>, 10>();
    return Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -var_0, u_input.b.x, firstLeadingBit(-(~var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~36402u;
    var var_0 = func_1(-716f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(256f, -515f), _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_f_op_f32(select(-672f, 1483f, true)), 2270f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, -792f, -1000f, -2245f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(803f, 705f, 117f, -381f) + vec4<f32>(829f, 223f, -448f, 923f)), true))))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(9100i, 25845i, 2147483647i), ~vec3<i32>(2147483647i, -1i, var_0.a)), -(u_input.b & vec3<i32>(-8758i, var_0.a, var_0.a))) & -2147483647i, -var_0.a, 65869i);
    global1 = u_input.a.x;
    var var_2 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f + -1231f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2304f)))), !(71278u != u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false))) * -1099f)), _wgslsmith_f_op_f32(step(167f, 476f)), _wgslsmith_f_op_f32(-1f), 1f));
    var var_3 = Struct_1(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1652f)) - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-704f, 858f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f * -995f)));
}

