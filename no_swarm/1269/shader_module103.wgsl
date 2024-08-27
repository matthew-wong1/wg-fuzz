struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<bool> {
    global0 = _wgslsmith_dot_vec4_u32(select(abs(abs(vec4<u32>(1u, 1u, 1u, 1u))), ~max(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(23327u, 42274u, 11816u, 39554u))), vec4<bool>((u_input.c < -25952i) & true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), false, any(vec3<bool>(true, true, true)))), vec4<u32>(15397u, 1u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(49746u, 30142u, 4294967295u), vec3<u32>(1u, 1u, 1u)) % 32u), 1u, 39014u));
    global0 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 57334u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 1498u)), 53461u), _wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 143137u), vec4<u32>(67832u, 1u, 1u, 22274u))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -184f));
    global0 = 62449u;
    global0 = _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 80190u, 894u), vec3<u32>(40471u, 88392u, 4413u))) << (~0u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), ~1u, 31764u), vec3<u32>(1u, 1u, 1u)) ^ 1u, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8281u, 83169u, 0u), ~vec4<u32>(50132u, 54897u, 49078u, 47042u))));
    return !vec3<bool>(true, all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !all(vec4<bool>(false, false, true, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true, true, any(func_3()), all(vec2<bool>(false, !any(vec3<bool>(false, true, true)))));
    let var_1 = Struct_1(!var_0.zzx);
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c, u_input.e.x) | u_input.b.x, min(i32(-1i) * -6673i, _wgslsmith_add_i32(u_input.c, u_input.e.x))), abs(i32(-1i) * -83i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, -2147483647i, -52674i, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.e.x, -34213i, 2147483647i), reverseBits(u_input.b)))) > abs(1i);
    global0 = ~(~(~min(70232u, 1u) >> (countOneBits(11988u) % 32u)));
    var var_3 = vec2<u32>(firstTrailingBit(firstTrailingBit(reverseBits(4967u))) | ~1817u, _wgslsmith_add_u32(abs(abs(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(234u), ~44452u, 0u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u)), ~4294967295u, _wgslsmith_add_u32(12829u, 102371u)))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    return 1i;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, func_4(func_2(), !(-446f >= arg_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(770f, 638f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(109f, arg_2) * vec2<f32>(arg_2, arg_2))))), _wgslsmith_add_i32(-(~u_input.d.x) >> (~(arg_0.x >> (16907u % 32u)) % 32u), _wgslsmith_add_i32(firstLeadingBit(arg_1.x), _wgslsmith_div_i32(-1i, 11141i)) | firstTrailingBit(~arg_1.x)));
    var_0 = u_input.e.x;
    var var_1 = ~vec4<u32>(25212u, ~(~min(arg_0.x, arg_0.x)), arg_0.x, 1u);
    let var_2 = vec3<f32>(arg_2, 1001f, _wgslsmith_f_op_f32(arg_2 + -274f));
    let var_3 = vec2<i32>((firstTrailingBit(~u_input.b.x) >> (~0u % 32u)) << (arg_0.x % 32u), firstTrailingBit(arg_1.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(514f, arg_2)), _wgslsmith_f_op_f32(select(-224f, var_2.x, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(206f, arg_2, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(func_1(~vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(0i, u_input.d.x, -1i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-714f - 1002f) * -260f))) > -1545f);
    var var_1 = Struct_1(select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, true), func_3()), !(!func_3()), !func_3().x));
    let var_2 = Struct_1(vec3<bool>(true, any(select(vec4<bool>(var_1.a.x, var_1.a.x, false, false), select(vec4<bool>(var_0.x, true, false, var_1.a.x), vec4<bool>(false, true, true, var_1.a.x), var_1.a.x), true)), true));
    var var_3 = u_input.b;
    var_1 = var_2;
    var var_4 = -u_input.a;
    var var_5 = _wgslsmith_dot_vec3_u32(firstTrailingBit(select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 40593u), vec3<u32>(4294967295u, 1u, 353u)), vec3<u32>(29720u, 49509u, 1u), func_3()), ~abs(vec3<u32>(0u, 0u, 4294967295u)), any(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, var_2.a.x, var_1.a.x, var_0.x), vec4<bool>(var_2.a.x, var_0.x, false, true))))), ~(~select(max(vec3<u32>(0u, 38605u, 4294967295u), vec3<u32>(4294967295u, 31436u, 29446u)), ~vec3<u32>(4830u, 49758u, 8458u), vec3<bool>(var_0.x, false, true))));
    var_4 = _wgslsmith_div_i32(var_3.x, -(-abs(u_input.c) ^ -var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-372f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(582f, -893f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<u32>(38557u, 45945u), u_input.b, -470f)), 413f)), _wgslsmith_f_op_f32(abs(-1101f))));
}

