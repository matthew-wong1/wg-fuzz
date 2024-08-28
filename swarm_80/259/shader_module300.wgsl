struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(18765i, -53212i, 5769i);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_add_i32(max(u_input.a, ~(global0.x & select(26116i, 24659i, false))), global0.x);
    global1 = array<Struct_1, 12>();
    let var_1 = Struct_1(arg_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(966f)))), 2202f)));
    let var_3 = ~_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.b, firstLeadingBit(u_input.d.x))), _wgslsmith_clamp_u32(u_input.b & u_input.b, _wgslsmith_sub_u32(reverseBits(u_input.b), ~0u), u_input.d.x));
    return vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, countOneBits(var_3)), vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 60726u, 63507u), vec3<u32>(var_3, u_input.d.x, 22484u)), u_input.b & 1u, max(4934u, var_3)))), _wgslsmith_add_u32(var_3, _wgslsmith_div_u32(~(~u_input.b), var_3)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(func_3(Struct_1(vec4<bool>(false, false, false, false)), global1[_wgslsmith_index_u32(6323u, 12u)]) & vec3<u32>(arg_1, 1u, arg_1), ~(vec3<u32>(38060u, arg_1, arg_1) >> (vec3<u32>(arg_2, 1u, 4294967295u) % vec3<u32>(32u)))), vec3<u32>(u_input.d.x, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, 82844u, 850u), vec4<u32>(u_input.d.x, 0u, 1u, u_input.b)))) ^ vec3<u32>(~arg_2, ~27716u, ~u_input.b);
    var var_1 = !select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true));
    let var_2 = 1i;
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(-abs(-vec2<i32>(var_2, 0i)), -_wgslsmith_div_vec2_i32(~vec2<i32>(arg_0, arg_0), -vec2<i32>(arg_0, -298i))), var_2, u_input.c.x);
    var var_3 = var_0;
    return Struct_1(vec4<bool>(true == var_1.x, any(select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)))), var_1.x, select(true, var_1.x | false, true) & false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    return 53078u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~vec2<u32>(func_4(func_2(2147483647i << (u_input.b % 32u), _wgslsmith_mult_u32(u_input.d.x, 4294967295u), 1u), func_2(max(global0.x, 2147483647i), _wgslsmith_mult_u32(u_input.b, u_input.d.x), u_input.b), func_2(-12360i, u_input.d.x, select(u_input.b, 4078u, true)), abs(_wgslsmith_dot_vec3_i32(u_input.c.wxz, u_input.c.xwy))), func_4(func_2(select(global0.x, global0.x, arg_1.x), u_input.d.x, u_input.d.x), global1[_wgslsmith_index_u32(4294967295u, 12u)], func_2(1i, u_input.b, 12491u), -2147483647i));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1568f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1464f, _wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(-117f - -1000f))))));
    global1 = array<Struct_1, 12>();
    let var_2 = i32(-1i) * -14415i;
    var var_3 = func_2(countOneBits(u_input.a), ~func_4(global1[_wgslsmith_index_u32(var_0.x ^ u_input.b, 12u)], global1[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_div_u32(81255u, 1716u), 12u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(2652u, _wgslsmith_mod_u32(u_input.b, 41631u)), 12u)], var_2), var_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(49653u, 12u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -323f));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(!var_0.a.xz, var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(841f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1430f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1748f, var_1.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-722f, 312f)))))));
    var var_3 = Struct_1(vec4<bool>(false, !((-3334i < global0.x) || (var_0.a.x || var_0.a.x)), false & !all(vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a.xx)));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), var_1.x));
    let var_4 = Struct_1(!(!(!func_2(global0.x, u_input.d.x, 54684u).a)));
    var var_5 = -u_input.c.x;
    global0 = abs(-u_input.c.wxx) >> (vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.d, vec2<u32>(u_input.b, 1u))), max(15500u, u_input.b), func_3(func_2(global0.x & 0i, ~37709u, ~4294967295u), var_4).x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(40397u, 33661u, 46676u, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.b))), ~u_input.d.x), func_3(Struct_1(vec4<bool>(true, var_3.a.x, var_4.a.x, false)), func_2(firstLeadingBit(26697i), u_input.b, ~u_input.b)).x, ~u_input.b));
}

