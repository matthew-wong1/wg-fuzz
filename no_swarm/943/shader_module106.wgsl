struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: f32 = -1081f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.c.x, 17882u, _wgslsmith_mod_u32(0u, 89945u))), vec4<u32>(1u, 16656u, 79433u, _wgslsmith_div_u32(u_input.c.x ^ ~65346u, 0u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_2), true);
    global0 = array<vec2<bool>, 12>();
    var_0 = vec4<u32>(max(~(~127450u), abs(4294967295u | var_0.x) | max(_wgslsmith_add_u32(u_input.a.x, u_input.c.x), u_input.a.x)), u_input.c.x, 4294967295u, ~var_0.x);
    global1 = 523f;
    return -1000f;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<f32> {
    global1 = _wgslsmith_f_op_f32(step(-340f, _wgslsmith_f_op_f32(-908f * -1000f)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -419f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * 1219f)))) * _wgslsmith_f_op_f32(func_3(u_input.c.x > ~u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_1.b), arg_1.a))), _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(func_3(true, arg_1, 485f))));
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_1.a));
    global0 = array<vec2<bool>, 12>();
    var var_1 = -2147483647i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(458f, 209f))), vec2<f32>(-1000f, var_0))))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, 1355f)), _wgslsmith_f_op_vec2_f32(func_2(-1000f, Struct_1(669f, false), vec4<bool>(false, false, false, true))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1114f, -737f) * vec2<f32>(938f, -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(349f, 1000f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2087f, -872f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, 660f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-939f, 250f) - vec2<f32>(1181f, 562f)))), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1763f, 319f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, var_0.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-921f, -586f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -1000f), vec2<f32>(-1000f, var_0.x), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1029f, var_0.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-176f, _wgslsmith_f_op_f32(1725f + -840f)))), var_0.x), !(!(!(!global0[_wgslsmith_index_u32(u_input.a.x, 12u)])))));
    var var_1 = ~reverseBits(u_input.a.wy);
    let var_2 = _wgslsmith_f_op_f32(abs(var_0.x));
    global0 = array<vec2<bool>, 12>();
    return abs(i32(-1i) * -23025i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 174f;
    let var_0 = _wgslsmith_mult_i32(-_wgslsmith_mult_i32(~1i & _wgslsmith_dot_vec3_i32(u_input.b.xyx, vec3<i32>(-1i, 27633i, -1i)), u_input.b.x), abs(func_1(firstLeadingBit(vec2<i32>(u_input.b.x, 2147483647i)))) | firstTrailingBit(firstTrailingBit(u_input.b.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1570f + 168f))) - -1000f), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0, u_input.b.x, 2147483647i), 0i, _wgslsmith_f_op_f32(-var_1.a), ~u_input.a);
}

