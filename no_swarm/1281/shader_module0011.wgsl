struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_clamp_i32(350i << (arg_1 % 32u), i32(-1i) * -7532i, -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(180f)))), _wgslsmith_f_op_f32(f32(-1f) * -1004f))), 171f, 1850f) - vec3<f32>(-419f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -385f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1215f, _wgslsmith_f_op_f32(234f + 918f))))));
    var var_2 = var_0;
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>) -> f32 {
    let var_0 = func_2(Struct_1(u_input.a.x & 21310i), ~8592u);
    global0 = array<vec2<u32>, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-607f)) + _wgslsmith_f_op_f32(ceil(-1928f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-815f + 1262f), -508f, all(arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(173f, 1708f), vec2<f32>(1145f, 1113f))) * vec2<f32>(-1593f, -1563f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-176f, 1152f)))), _wgslsmith_f_op_f32(751f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-101f * -1000f), _wgslsmith_f_op_f32(round(298f))))));
    var var_2 = select(select(arg_1, arg_1, vec3<bool>((arg_0.x & arg_0.x) && any(vec4<bool>(arg_2.x, true, arg_0.x, arg_2.x)), arg_0.x | arg_0.x, any(!vec2<bool>(arg_2.x, arg_1.x)))), select(vec3<bool>(true, true, false), !(!select(arg_2.wxy, arg_2.xyz, vec3<bool>(arg_1.x, false, arg_0.x))), !vec3<bool>(true, arg_2.x, true)), select(vec3<bool>(select(arg_0.x, arg_2.x, !arg_2.x), any(vec3<bool>(arg_1.x, false, true)), false), !(!vec3<bool>(false, arg_2.x, false)), false));
    let var_3 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -876f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = func_2(arg_0, 1u);
    global0 = array<vec2<u32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(func_3(vec2<bool>(~var_0.a <= 1i, ~firstLeadingBit(511i) <= -var_0.a), vec3<bool>(all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, select(false, false, false))), false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))), vec4<bool>(false, false, any(vec2<bool>(true, 1156f > arg_1.x)), true && any(vec3<bool>(true, false, false)))));
    let var_2 = func_2(arg_0, ~0u);
    var_1 = 1043f;
    return ~(~(~(~arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    let var_0 = ~vec4<u32>(17547u, _wgslsmith_mult_u32(0u, func_1(Struct_1(u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2025f, 699f)), ~vec3<u32>(38849u, 0u, 4294967295u))), ~(~abs(24397u)), 4294967295u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(235f)), _wgslsmith_f_op_f32(930f * 276f))), _wgslsmith_f_op_f32(-1909f - _wgslsmith_f_op_f32(min(314f, -1578f))))), _wgslsmith_f_op_f32(f32(-1f) * -713f), 549f);
    let var_2 = func_2(func_2(Struct_1(u_input.a.x >> (reverseBits(var_0.x) % 32u)), var_0.x), ~56615u);
    var var_3 = Struct_1(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(vec2<i32>(~(-49206i), -2147483647i), countOneBits(-vec2<i32>(2147483647i, var_2.a))));
}

