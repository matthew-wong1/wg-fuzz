struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.a.x > ~(~_wgslsmith_mult_i32(reverseBits(2147483647i), max(-13508i, 1i)));
    global0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.x));
    return !(!(!select(vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(true, var_0, var_0, false)), any(vec3<bool>(var_0, var_0, var_0)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = vec2<f32>(-1725f, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(arg_2.x * arg_1.b))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-953f, global0.x) * arg_2.wx));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_1.b))));
    return func_3();
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 1010f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-417f, 234f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1517f, 273f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -581f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1096f), vec2<f32>(915f, 494f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1259f, global0.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1585f, -1639f), vec2<f32>(-1649f, global0.x))))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.a.x;
    global0 = vec2<f32>(_wgslsmith_div_f32(991f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -201f), global0.x)))), -803f);
    global0 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(var_0, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(select(818f, -1938f, true)))), Struct_1(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-697f, _wgslsmith_f_op_f32(global0.x * global0.x), global0.x, _wgslsmith_f_op_f32(min(-1000f, global0.x)))))), Struct_1(_wgslsmith_add_i32(1i, u_input.a.x) ^ ~reverseBits(u_input.a.x), 1586f), Struct_1(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1685f, global0.x)))))), Struct_1(~u_input.a.x, -1511f)));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-41607i, i32(-1i) * -1i, -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, u_input.a.x, 0i), u_input.a))), global0.x);
    var var_2 = Struct_1(-_wgslsmith_div_i32(~(i32(-1i) * -9263i), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), u_input.b) % 32u)), _wgslsmith_f_op_f32(-global0.x));
    return vec3<bool>(any(vec2<bool>(true, true)), !any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !any(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.x)), -318f, all(func_1()) | func_3().x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))) + 1000f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_vec2_f32(func_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -919f <= global0.x), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -35490i) | u_input.a, -vec4<i32>(35158i, u_input.a.x, 40161i, u_input.a.x)), -624f), Struct_1(_wgslsmith_div_i32(u_input.a.x << (u_input.b.x % 32u), u_input.a.x << (u_input.b.x % 32u)), 503f), Struct_1(_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), var_0))).x, -1516f, _wgslsmith_f_op_f32(-var_0), global0.x);
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-508f)), var_1.x, true))), -421f), _wgslsmith_f_op_f32(var_1.x * global0.x), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0)))));
    var var_2 = Struct_1(1i, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global0.x)));
    var var_3 = vec3<f32>(1321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1628f, var_2.b) - _wgslsmith_div_f32(global0.x, -875f))))), -686f);
    let var_4 = Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, -var_2.a), -var_2.a) | ~(-21696i), _wgslsmith_f_op_f32(1144f - _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, true, true, true), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(true, true, true, false), Struct_1(-2147483647i, -1000f), Struct_1(1i, 101f), Struct_1(1i, 1000f))).x), Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_f32(ceil(var_2.b))), Struct_1(_wgslsmith_div_i32(20622i, var_2.a), var_2.b))).x));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(968f - var_3.x) + _wgslsmith_f_op_f32(select(-234f, 1834f, false))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(var_4.b + var_3.x)), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-35228i >> (_wgslsmith_mod_u32(~0u, (1u >> (u_input.b.x % 32u)) << (29932u % 32u)) % 32u), -vec4<i32>(var_4.a ^ 3770i, -2147483647i, -var_4.a, countOneBits(1i)) | min(-abs(u_input.a), vec4<i32>(var_2.a, ~1i, 7893i, var_4.a & -8049i)));
}

