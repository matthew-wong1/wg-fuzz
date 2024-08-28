struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
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

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(52263u, 4294967295u, 0u));

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, false, false, true, true, false, false, false, true, false, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    return countOneBits(19160u);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> u32 {
    global0 = array<vec3<u32>, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1444f - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(select(arg_1.a, -538f, arg_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, 922f), vec3<f32>(-613f, -1000f, arg_1.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-667f, -2636f, -541f), vec3<f32>(-1537f, 578f, 1183f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 341f, arg_1.a) + vec3<f32>(arg_1.a, arg_1.a, -309f)))))));
    let var_1 = arg_1;
    let var_2 = true;
    global0 = array<vec3<u32>, 1>();
    return min(_wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(13417u, 10161u)), arg_3, u_input.a), abs(_wgslsmith_dot_vec3_u32(select(~u_input.b.wxx, max(u_input.b.wzw, vec3<u32>(38826u, 0u, 1u)), arg_2), firstLeadingBit(vec3<u32>(arg_3, 1u, 60316u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~abs(vec2<u32>(73524u, func_3(-vec4<i32>(-2147483647i, -2147483647i, -54666i, 58810i), arg_0, false, u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(247f * arg_1.a), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1146f)), _wgslsmith_div_f32(752f, 1521f))), 1421f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a)), arg_1.a, 709f)))));
    let var_2 = vec2<u32>(var_0.x, var_0.x ^ ~(firstTrailingBit(var_0.x) >> (u_input.c % 32u)));
    global1 = array<bool, 14>();
    global0 = array<vec3<u32>, 1>();
    return func_1(32513i, !select(vec3<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 14u)])), global1[_wgslsmith_index_u32(u_input.a, 14u)] || global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(var_0.x, 14u)]), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(var_2.x, 14u)]))), vec2<bool>(true, global1[_wgslsmith_index_u32(0u | _wgslsmith_add_u32(1u << (var_2.x % 32u), 4294967295u), 14u)]), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~114484u), (~(~u_input.d) << (_wgslsmith_mult_u32(0u, func_1(32130i, vec3<bool>(global1[_wgslsmith_index_u32(16473u, 14u)], false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]), 38268u)) % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(Struct_1(-586f), Struct_1(632f)), ~1u, _wgslsmith_mod_u32(51794u, u_input.a), ~4294967295u), u_input.b), u_input.b.x);
    var var_1 = abs(~(-2147483647i));
    global1 = array<bool, 14>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(553f, -121f, 1418f), vec3<f32>(-571f, -1457f, 539f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(var_0.x, 14u)], global1[_wgslsmith_index_u32(41987u, 14u)]))))), vec3<f32>(-437f, 485f, _wgslsmith_f_op_f32(-742f * -1261f)), all(!vec3<bool>(global1[_wgslsmith_index_u32(61312u, 14u)], false, true))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f + -228f)), _wgslsmith_f_op_f32(sign(542f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, 141f, 243f))))))));
    var var_3 = -1013f;
    var_1 = firstLeadingBit(_wgslsmith_add_i32(-(~reverseBits(-5802i)), -firstTrailingBit(-13122i)));
    let x = u_input.a;
    s_output = StorageBuffer(412f);
}

