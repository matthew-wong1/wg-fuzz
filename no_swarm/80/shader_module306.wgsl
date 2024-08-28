struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec2<bool>(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0)))))) > arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0)))));
    global0 = u_input.d;
    global0 = 2147483647i;
    global0 = 50340i;
    return _wgslsmith_mult_u32(1u, reverseBits(12898u));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(~func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(130f - -201f), _wgslsmith_f_op_f32(2255f * 1000f)))));
    var var_1 = !vec2<bool>(arg_1.b, arg_0);
    let var_2 = true;
    let var_3 = Struct_1(max((arg_1.a >> (28576u % 32u)) | var_0.a, abs(~u_input.a)) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(11723u, 34206u)), 56560u, 13647u | u_input.a));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(685f, -178f, true)) + _wgslsmith_f_op_f32(floor(-353f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(534f))))) * 579f);
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    var var_0 = reverseBits(17603i);
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(select(34237u, firstLeadingBit(3372u), func_2(true, Struct_2(80915u, arg_1.x))), (arg_0.a ^ 80182u) & _wgslsmith_clamp_u32(u_input.a, u_input.a, 4626u)), 0u));
    var var_2 = arg_0;
    var var_3 = vec4<f32>(-180f, -1136f, 1680f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1958f)) * _wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(sign(-162f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -590f)))));
    var_0 = _wgslsmith_div_i32(u_input.c, ~_wgslsmith_div_i32(1i, min(962i & u_input.b.x, -u_input.d)));
    return -27683i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(4294967295u, !(!(any(vec4<bool>(false, false, false, true)) | (u_input.a <= 31681u))));
    let var_1 = var_0.b;
    var var_2 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_2.a, vec3<i32>(u_input.c, 10484i, u_input.c ^ func_1(Struct_2(29055u, var_0.b), vec4<bool>(var_0.b, true, var_0.b, false))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~var_2.a, _wgslsmith_mult_u32(var_2.a, var_0.a)), vec2<u32>(_wgslsmith_mod_u32(11135u, var_0.a), reverseBits(11284u))), firstLeadingBit(countOneBits(firstTrailingBit(vec2<u32>(4294967295u, 0u))))));
}

