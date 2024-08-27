struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(450f, -472f, 1000f, 724f, 988f, 937f, 417f, 1408f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<f32> {
    var var_0 = vec3<u32>(~abs(u_input.c) << (1u % 32u), _wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_0, u_input.c, arg_0), _wgslsmith_sub_vec4_u32(~vec4<u32>(38311u, u_input.c, 74553u, 15162u), max(vec4<u32>(42452u, 0u, 4294967295u, 4294967295u), vec4<u32>(arg_0, arg_0, arg_0, u_input.c))))), ~4294967295u);
    var var_1 = Struct_1(true, true | all(vec3<bool>(all(vec4<bool>(true, false, true, true)), true, false)), u_input.a, _wgslsmith_f_op_f32(ceil(arg_1)));
    var var_2 = i32(-1i) * -(-12584i ^ u_input.b.x);
    let var_3 = u_input.b.zx;
    let var_4 = Struct_1(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.a, var_1.b), var_1.b)) && !any(vec4<bool>(true, true, false, var_1.b)), var_1.b && (!all(vec2<bool>(false, var_1.b)) | var_1.a), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2042f, -503f, var_1.a)), 1509f)) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 29338u), vec2<u32>(u_input.c, arg_0)), ~(vec2<u32>(2783u, u_input.c) ^ var_0.yz)), 8u)]));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 8u)]), _wgslsmith_f_op_f32(-var_4.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-397f, global0[_wgslsmith_index_u32(1u, 8u)]), vec2<f32>(1641f, -793f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d, var_4.d))));
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~57662u, 8u)] - _wgslsmith_f_op_f32(abs(arg_1))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(~u_input.c, 8u)], arg_1)))));
    let var_1 = Struct_1(any(vec2<bool>(true, true)), all(vec2<bool>(all(vec2<bool>(true, true)), select(-1i > arg_0, all(vec2<bool>(true, false)), true))), min(u_input.b.x, arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, 166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f * arg_1))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(631f, _wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 8u)]), -737f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0.x, global0[_wgslsmith_index_u32(u_input.c, 8u)]))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1365f, -1274f, -1149f) - vec3<f32>(-2150f, 389f, 324f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1000f, 966f), vec3<f32>(var_1.d, 272f, -1420f), var_1.b))))))))));
    let var_3 = 11978u;
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(var_0));
    return all(vec3<bool>(!(!(!var_1.a)), all(vec3<bool>(true, true, true)), false));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    return Struct_1(arg_2.a, all(vec3<bool>(true, !all(vec3<bool>(arg_2.b, true, arg_0)), true)), ~arg_2.c, _wgslsmith_f_op_f32(-arg_2.d));
}

fn func_1() -> StorageBuffer {
    global0 = array<f32, 8>();
    let var_0 = func_4(true, firstTrailingBit(select(~u_input.c, firstLeadingBit(u_input.c), u_input.a <= -2147483647i) >> (23889u % 32u)), Struct_1(!(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 8u)], -772f)) == -724f), func_2(u_input.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1404f + global0[_wgslsmith_index_u32(u_input.c, 8u)])))), countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.xy << (vec2<u32>(u_input.c, 64418u) % vec2<u32>(32u)), abs(vec2<i32>(1i, u_input.b.x)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(u_input.c, u_input.c) << (2435u % 32u), 8u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31629u, 8u)] * global0[_wgslsmith_index_u32(u_input.c, 8u)]) * 531f))), min(-38217i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-u_input.a, -2147483647i), -20050i, 35117i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 8u)], 1719f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1033f, global0[_wgslsmith_index_u32(u_input.c, 8u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1223f, var_0.d)))))));
    let var_2 = select(vec4<bool>(var_0.a, any(select(vec2<bool>(true, true), !vec2<bool>(var_0.a, var_0.b), false)), !func_2(0i, -1176f), all(vec3<bool>(false, true, var_0.b))), vec4<bool>(false, !var_0.a, true, true), select(vec4<bool>(var_0.a, all(select(vec4<bool>(var_0.b, var_0.a, var_0.a, false), vec4<bool>(true, var_0.a, true, var_0.a), true)), true, !var_0.b), !select(select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(true, var_0.a, var_0.b, true), true), !vec4<bool>(var_0.b, var_0.b, true, true), true), !select(!vec4<bool>(var_0.a, var_0.b, var_0.b, var_0.b), select(vec4<bool>(var_0.a, var_0.b, false, true), vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(true, true, true, false)), 48935u != u_input.c)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c, ~(~u_input.c), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, 0u), 0u)), 15255u << (~(u_input.c & 4294967295u) % 32u), 4294967295u), vec3<u32>(_wgslsmith_add_u32(52708u, u_input.c) | u_input.c, countOneBits(select(u_input.c, u_input.c | 1u, true)), ~(~u_input.c)));
    return StorageBuffer(-((i32(-1i) * -40609i) >> ((~var_3 | var_3) % 32u)), var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 778f, 889f, 171f)))) * vec4<f32>(-589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -542f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = func_1();
}

