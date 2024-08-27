struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.b.x, _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, arg_3.b.x), arg_3.b, vec2<bool>(arg_3.d, true))), vec2<f32>(arg_3.b.x, arg_3.b.x))))), ~arg_3.c, true);
    let var_1 = firstLeadingBit(59881u);
    let var_2 = arg_3.d;
    let var_3 = vec4<i32>(var_0.a, 0i, -2147483647i, -1i);
    let var_4 = firstTrailingBit(arg_3.a);
    return arg_3.a;
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(~_wgslsmith_mod_i32(max(1i, -1i), max(-28204i, 659i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-138f, 775f), _wgslsmith_div_vec2_f32(vec2<f32>(-502f, -974f), vec2<f32>(2232f, 1000f)), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_f_op_f32(126f - 1218f))))), reverseBits(u_input.a), any(vec4<bool>(any(vec3<bool>(false, true, false)), _wgslsmith_mult_i32(-1i, -23041i) <= func_3(true, u_input.a, true, Struct_1(0i, vec2<f32>(1296f, -867f), 4294967295u, false)), !any(vec2<bool>(false, true)), 58077u != _wgslsmith_sub_u32(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(step(-657f, _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(min(-643f, var_0.b.x)))))));
    var_1 = var_0.b;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(546f, 825f, any(select(vec3<bool>(true, true, var_0.d), vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(false, true, true))))))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2285f), _wgslsmith_f_op_f32(sign(569f)), var_0.d && var_0.d)))));
    let var_3 = var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_2.x), var_3.b, var_3.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_0.b.x) * _wgslsmith_div_vec2_f32(var_3.b, var_0.b)), vec2<bool>(any(vec3<bool>(false, true, true)), true)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = false;
    return Struct_1(1i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))))), u_input.a, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = ~arg_3.c;
    let var_1 = _wgslsmith_f_op_f32(ceil(-877f));
    let var_2 = vec2<i32>(53251i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(max(-21788i, arg_1.a), arg_3.a), ~(vec2<i32>(arg_0.a, arg_3.a) & vec2<i32>(arg_1.a, arg_0.a)), !(!arg_2)), vec2<i32>(arg_3.a, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1764f, -1000f), arg_1.b)).a)));
    let var_3 = Struct_1(~arg_1.a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) * _wgslsmith_f_op_f32(f32(-1f) * -447f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) + var_1)), 929f), var_0, arg_1.d);
    let var_4 = vec3<i32>(~20861i, arg_3.a >> (var_0 % 32u), ~arg_3.a) | vec3<i32>(45362i, func_3(true, _wgslsmith_dot_vec4_u32(vec4<u32>(9151u, 1u, u_input.a, arg_3.c) | vec4<u32>(var_3.c, 4294967295u, 6714u, 4294967295u), ~vec4<u32>(0u, 1u, u_input.a, 1u)), true, Struct_1(_wgslsmith_dot_vec2_i32(var_2, var_2), vec2<f32>(-674f, 207f), 5835u, arg_2.x || arg_0.d)), 1i);
    return StorageBuffer(firstLeadingBit(firstLeadingBit(~vec4<i32>(0i, arg_0.a, arg_0.a, var_2.x))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true && any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), vec2<bool>(false, true || any(vec4<bool>(true, true, false, true))));
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, -1222f) + vec2<f32>(-271f, -391f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(551f, 647f) - vec2<f32>(-2318f, 1702f))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-172f, 2577f), vec2<f32>(-589f, -216f))))))), vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-127f)), _wgslsmith_f_op_f32(1439f - 368f)))));
}

