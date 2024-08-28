struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(909f, 4293u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, arg_1, global0.a)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1000f, -786f) + vec3<f32>(global0.a, -1448f, arg_3)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, arg_3, 269f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 318f, -1818f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, -697f, global0.a) + vec3<f32>(-856f, arg_1, global0.a))), (-17570i ^ u_input.a) > 19198i))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1647f))) + global0.a), global0.a, 1025f));
    var var_1 = ~(~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, -2147483647i, -33188i)) | ~vec4<i32>(16043i, u_input.a, u_input.a, -1i), firstTrailingBit(vec4<i32>(-22987i, u_input.a, -5244i, u_input.a)) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a) | ~vec4<i32>(u_input.a, 0i, -1i, u_input.a)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2083f + arg_3)), u_input.b);
    var_1 = firstTrailingBit(countOneBits(~min(select(vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a), vec4<i32>(2147483647i, var_1.x, u_input.a, 1i), true), vec4<i32>(u_input.a, -2147483647i, var_1.x, 2147483647i))));
    let var_3 = -686f;
    return vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_2), vec2<u32>(global0.b, arg_2)), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, arg_0), abs(select(vec2<u32>(arg_2, 1u), vec2<u32>(0u, 4294967295u), true)))), ~arg_2, max(u_input.b, 22928u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = select(func_3(1u, _wgslsmith_f_op_f32(global0.a + -1119f), ~countOneBits(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - global0.a) + -365f)), vec4<u32>(15611u, ~(~16102u), 48296u, ~69404u), true) >> (vec4<u32>(_wgslsmith_div_u32(global0.b, reverseBits(global0.b)), arg_0, 22446u, ~u_input.b) % vec4<u32>(32u));
    let var_1 = u_input.a ^ (~(_wgslsmith_div_i32(8039i, u_input.a) & u_input.a) << (var_0.x % 32u));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1866f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.a, global0.a)), -739f)))), 619f);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-163f + global0.a))) + _wgslsmith_f_op_f32(step(433f, _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.a)))));
    return Struct_1(2028f, arg_0);
}

fn func_1() -> vec4<bool> {
    let var_0 = global0.a;
    var var_1 = func_2(43855u, i32(-1i) * -32355i, _wgslsmith_mod_vec2_i32(abs(abs(vec2<i32>(u_input.a, u_input.a))), vec2<i32>(1i, ~u_input.a | 21026i)));
    return vec4<bool>(!(!any(vec2<bool>(true, true))) && any(vec2<bool>(true, true)), select(true, true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), !(!(u_input.b >= u_input.b)) && true, u_input.a <= _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(7526i, u_input.a, u_input.a, u_input.a), false), vec4<i32>(u_input.a, u_input.a, u_input.a, 8092i), vec4<bool>(false, true, true, false)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    global0 = func_2(~((~9046u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(34812u, 55732u, global0.b))) ^ ~(global0.b << (0u % 32u))), _wgslsmith_mod_i32(-2147483647i, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -1i), 19812i)), -vec2<i32>(~arg_1.x, select(-arg_1.x, ~u_input.a, false)));
    let var_0 = func_2(func_3(countOneBits(global0.b | 0u) >> ((~1u >> (global0.b % 32u)) % 32u), global0.a, ~func_2(~global0.b, ~u_input.a, arg_1).b, _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1932f, global0.a)) * global0.a))).x, abs(29580i), countOneBits(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, arg_1.x)), vec2<i32>(-29299i, arg_1.x) >> (vec2<u32>(12825u, global0.b) % vec2<u32>(32u))))));
    global0 = var_0;
    var var_1 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(11745u, global0.b, 1u), vec3<u32>(global0.b, 4294967295u, 4294967295u), true), reverseBits(abs(vec3<u32>(u_input.b, var_0.b, 0u))))), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.b, u_input.b), vec3<u32>(var_0.b, u_input.b, 2630u)))), ~(~50527u));
    var var_2 = _wgslsmith_f_op_f32(global0.a * func_2(var_1.x, -11438i, _wgslsmith_sub_vec2_i32(~arg_1, -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 777i), arg_1))).a);
    return func_2(firstTrailingBit(max(firstTrailingBit(var_0.b) << (_wgslsmith_div_u32(4294967295u, 1u) % 32u), func_2(~27125u, -1i, -arg_1).b)), arg_1.x, ~(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_1.x, -624i)), arg_1) | arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(vec3<bool>(!all(func_1()), !select(false, 1u != u_input.b, false), true), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, -2147483647i))) & vec2<i32>(max(reverseBits(u_input.a), 8338i), -2147483647i));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(global0.a)), ~(~countOneBits(~96431u)));
    global0 = Struct_1(var_0.a, 0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -762f, global0.a, global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -1034f, 308f, var_0.a))), func_1())))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1784f + _wgslsmith_f_op_f32(ceil(var_0.a))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1000f - var_0.a))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(select(1110f, func_4(vec3<bool>(false, false, true), -vec2<i32>(-1i, 29365i)).a, all(vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-467f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a, var_0.a, 663f), vec3<f32>(-1271f, var_1.x, -750f))))), u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 18023i)), vec2<i32>(u_input.a, -2147483647i)), -vec2<i32>(83853i, 9533i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(u_input.a, 10463i)))));
}

