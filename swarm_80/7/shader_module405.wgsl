struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    global0 = array<f32, 5>();
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 63370u, 15942u), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f - -409f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + global1.x), _wgslsmith_f_op_f32(-arg_0), -433f)))))));
    global0 = array<f32, 5>();
    var var_0 = global2[_wgslsmith_index_u32(16503u, 20u)];
    global2 = array<Struct_1, 20>();
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(191f - 550f), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22181u, 39343u), ~vec3<u32>(4294967295u, 73245u, 0u)), 5u)])), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, global1.x), var_0.a)), _wgslsmith_f_op_f32(min(389f, 1000f)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-669f, arg_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(14052u, 5u)], -385f, false)) + _wgslsmith_f_op_f32(sign(-495f)))), -1248f));
    global0 = array<f32, 5>();
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1472f), _wgslsmith_f_op_f32(721f * arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -420f, 255f)))) - vec3<f32>(global1.x, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f + 1168f) + _wgslsmith_f_op_f32(step(var_0.a, -419f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(579f))))), arg_0.a, -334f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(334f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), arg_0.a, -232f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 996f, global1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-159f + 1555f), -1000f, 298f)))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, abs(41254u)), 1u) << (1u % 32u), 0u), 20u)];
    return vec4<bool>(true, any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), global0[_wgslsmith_index_u32(31751u, 5u)] != 381f)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), true), true)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false), !any(vec2<bool>(true, false))), vec4<bool>(false, true, all(vec4<bool>(true, true, false, true)), !(arg_1 != arg_3)), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), func_2(global2[_wgslsmith_index_u32(0u, 20u)]), any(vec3<bool>(false, true, false)))));
    var var_1 = Struct_1(2603f);
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global2 = array<Struct_1, 20>();
    return reverseBits(~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9205u, 1u, 13799u, 34760u), vec4<u32>(29767u, 119310u, 35798u, 1u)), 1u, 28027u) & 25283u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, func_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], -611f, -1078f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(3926u, 5u)], vec4<i32>(u_input.a, 2869i, -1i, 6009i), -891f))), ~1u, 1u), firstTrailingBit(abs(reverseBits(select(vec4<u32>(57231u, 4524u, 67814u, 0u), vec4<u32>(1u, 80918u, 12713u, 31147u), false)))), ~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1089f, global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 5u)] - -232f) + -1614f)) * global1.x));
    let var_2 = false | ((-2147483647i << (var_0.x % 32u)) > -(~u_input.a));
    let var_3 = select(var_2, 2147483647i == u_input.a, var_2);
    let var_4 = ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(var_0), var_0, countOneBits(vec4<u32>(var_0.x, 4294967295u, 940u, var_0.x) >> (var_0 % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_4.x, 24274u, ~_wgslsmith_mod_u32(var_4.x, 13425u)), _wgslsmith_div_f32(global1.x, global1.x));
}

