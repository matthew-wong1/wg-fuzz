struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = 876f;
    let var_1 = arg_2;
    let var_2 = Struct_1(-2147483647i <= -arg_1);
    var var_3 = Struct_1(true);
    var_3 = Struct_1(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(-2270f + 375f)))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.b > 25039i, any(vec4<bool>(false, false, false, true))), true)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f - -664f) * -710f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1000f, -1000f, 747f), -1i, 0u)))), 1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1401f))), false, any(vec4<bool>(select(false, false, false), true, true, any(vec2<bool>(true, true))))), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true), true));
    var_0 = vec4<bool>(true, var_0.x, true, false);
    var_0 = select(vec4<bool>(!var_0.x, select(52671u >= _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 26541u, 1u, arg_0.x), vec4<u32>(75695u, 1u, 1u, arg_0.x)), ~u_input.b >= firstTrailingBit(u_input.b), true), false, all(!var_0.xw)), !select(!(!vec4<bool>(true, var_0.x, var_0.x, false)), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true)), !var_0.x), !select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, false, false), true)), var_0.x);
    let var_1 = !(!(!(!select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x))));
    var var_2 = Struct_1(var_0.x);
    return select(var_1.xzx, !var_0.xyz, ((0u & ~arg_0.x) >= u_input.a.x) && true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> StorageBuffer {
    let var_0 = select(!select(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a)), true), !(!vec3<bool>(arg_0.a, true, true)), any(vec2<bool>(false, true))), select(func_2(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x))), !func_2(u_input.a), vec3<bool>(all(select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), arg_0.a)), true, (i32(-1i) * -1i) > ~u_input.b)), arg_0.a);
    let var_1 = Struct_1(!arg_0.a);
    let var_2 = abs(~arg_2);
    var var_3 = _wgslsmith_mod_u32(~22389u, _wgslsmith_mult_u32(4294967295u, abs(~arg_1.x ^ ~u_input.a.x)));
    var_3 = max(arg_1.x, 0u);
    return StorageBuffer(-16352i & (min(countOneBits(u_input.b), -arg_2) & _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, -2147483647i), vec2<i32>(1i, -2147483647i)), firstTrailingBit(-55066i))), max(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -15273i, var_2), vec3<i32>(22620i, u_input.b, arg_2))), -_wgslsmith_div_i32(i32(-1i) * -57852i, -1i)), vec2<f32>(-230f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-131f, 1392f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, _wgslsmith_f_op_f32(f32(-1f) * -796f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(true), vec4<u32>(0u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), firstLeadingBit(22977u)), ~u_input.a.x, 4294967295u), -2833i);
}

