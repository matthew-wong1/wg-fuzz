struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = countOneBits(arg_0.b.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.c.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.a.x, -1680f))))))));
    let var_2 = 38679u;
    var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) - -400f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-141f - var_1.a.x))) + arg_0.c.a));
    var var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-523f * _wgslsmith_f_op_f32(exp2(arg_0.c.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -185f))) + arg_0.a.x), -845f, -189f), ~(~(arg_0.b << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(77101u, var_2, arg_2), vec3<u32>(var_2, arg_2, 16133u)) % vec3<u32>(32u)))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-733f + _wgslsmith_f_op_f32(floor(1000f))), arg_0.a.x)));
    return vec2<bool>(true, arg_3.x);
}

fn func_3() -> vec2<bool> {
    var var_0 = select(u_input.b >= min(~(~3959u), 58139u), false, select((all(vec3<bool>(false, false, true)) || any(vec2<bool>(false, false))) && all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), true, u_input.c > ~(~u_input.c)));
    var var_1 = -_wgslsmith_mod_i32(countOneBits(13494i), u_input.c);
    var_1 = -40649i;
    var var_2 = max(vec3<i32>(_wgslsmith_mult_i32(u_input.c, -2147483647i) ^ reverseBits(0i), u_input.c, 2147483647i), reverseBits(-vec3<i32>(u_input.c, u_input.c, -1i)) ^ -(~vec3<i32>(u_input.c, u_input.c, 54956i))) | reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.c, -1i), 55910i, -71310i) | vec3<i32>(_wgslsmith_mult_i32(-9867i, u_input.c), -4187i, ~12428i));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(-442f, -711f, -1000f, 762f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, 707f, -440f, 644f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(527f, -575f, 340f, 2087f))))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-933f * 1095f), _wgslsmith_f_op_f32(max(1452f, -799f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -2049f)), _wgslsmith_div_f32(-299f, -2104f)))));
    return !select(vec2<bool>(true, !func_2(Struct_5(vec4<f32>(483f, -266f, var_3.x, var_3.x), vec3<i32>(u_input.c, u_input.c, 1i), Struct_4(var_3.ww)), u_input.c, 17968u, vec3<bool>(true, false, false)).x), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(false, false, false, false)), true), func_2(Struct_5(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x), vec3<i32>(-3676i, var_2.x, var_2.x), Struct_4(var_3.wz)), _wgslsmith_div_i32(u_input.c, 12164i), _wgslsmith_mult_u32(u_input.a, 0u), vec3<bool>(false, false, false))), true);
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> vec2<bool> {
    return select(!select(!func_2(Struct_5(vec4<f32>(arg_0.a.x, -1349f, arg_0.a.x, 1988f), vec3<i32>(0i, u_input.c, 3508i), Struct_4(vec2<f32>(212f, arg_0.a.x))), 48424i, 0u, vec3<bool>(arg_1, arg_1, arg_1)), vec2<bool>(true, all(vec4<bool>(false, false, arg_1, true))), false), func_3(), !(!vec2<bool>(true, 1107u >= u_input.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_5 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1186f, _wgslsmith_f_op_f32(-1266f + -787f))), -679f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1088f)), 232f) + -1073f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) - _wgslsmith_f_op_f32(ceil(870f))));
    var var_1 = abs(u_input.a) | (max(~_wgslsmith_div_u32(u_input.b, 4294967295u), ~_wgslsmith_mod_u32(9607u, u_input.a)) | 53728u);
    var var_2 = Struct_4(var_0);
    var_2 = Struct_4(var_0);
    var var_3 = 1876f;
    return Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.a.x, var_2.a.x, -605f, 1142f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_2.a.x, var_2.a.x, var_0.x, -1988f)))), vec4<f32>(var_0.x, -905f, _wgslsmith_f_op_f32(select(-1000f, var_0.x, false)), _wgslsmith_div_f32(-2081f, var_2.a.x)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(447f, var_2.a.x, 401f, var_2.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, -108f, 1000f, var_2.a.x), vec4<f32>(-547f, -411f, -301f, var_2.a.x)))))), ~firstLeadingBit(~(~vec3<i32>(u_input.c, u_input.c, 1i))), Struct_4(_wgslsmith_f_op_vec2_f32(min(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, var_0.x)) + _wgslsmith_f_op_vec2_f32(-var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(all(vec2<bool>(any(vec4<bool>(false, false, false, true)), u_input.c != -11211i)), false), min(firstLeadingBit(select(vec2<i32>(u_input.c, u_input.c) & vec2<i32>(31951i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, u_input.c)), func_1(Struct_4(vec2<f32>(-960f, -1000f)), true))), (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -55569i)) & min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(17385i, u_input.c))) ^ (-vec2<i32>(1i, -1i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.a, u_input.b, abs(_wgslsmith_add_u32(~2309u, firstTrailingBit(2262u)))), 26276u);
    var_0 = Struct_5(var_0.a, var_0.b, Struct_4(vec2<f32>(var_0.a.x, -421f)));
    var_0 = func_4(vec2<bool>(true, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(7799i, u_input.c, 2147483647i, -10826i), vec4<i32>(var_0.b.x, -1i, -58029i, -2147483647i)), vec4<i32>(5547i, 67107i, 0i, 0i) ^ vec4<i32>(-10272i, 28767i, 0i, var_0.b.x)) <= ~func_4(vec2<bool>(false, false), vec2<i32>(u_input.c, 1i)).b.x), (vec2<i32>(select(2147483647i, u_input.c, false), 20691i) & vec2<i32>(-2147483647i, min(-2147483647i, 23484i))) << (reverseBits(~firstTrailingBit(vec2<u32>(u_input.b, 28036u))) % vec2<u32>(32u)));
    var_0 = func_4(!(!vec2<bool>(1000f != var_0.c.a.x, func_2(Struct_5(var_0.a, vec3<i32>(var_0.b.x, var_0.b.x, -7138i), Struct_4(var_0.c.a)), var_0.b.x, var_1, vec3<bool>(false, true, true)).x)), firstLeadingBit(abs(abs(~var_0.b.zx))));
    var var_2 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(34034u, 0u, u_input.a), min(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(1u, 21449u, 1u))) >= 31126u, ~vec4<i32>(u_input.c, var_0.b.x, var_0.b.x, var_0.b.x));
    var var_3 = vec2<bool>(all(vec4<bool>(var_2.a, var_2.a & (-13180i > var_2.b.x), func_3().x, (true || var_2.a) | !var_2.a)), _wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-846f - -509f), _wgslsmith_f_op_f32(round(-114f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f * var_0.a.x))));
    var var_4 = abs(vec2<i32>(-1i) * -vec2<i32>(27743i, -66224i));
    let x = u_input.a;
    s_output = StorageBuffer(1429f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.a))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * var_0.c.a))))), _wgslsmith_f_op_f32(var_0.a.x + var_0.c.a.x), 1000f, reverseBits(_wgslsmith_sub_u32(0u, max(abs(var_1), ~4294967295u))));
}

