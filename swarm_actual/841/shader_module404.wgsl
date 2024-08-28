struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    let var_0 = global0.zzz;
    global0 = vec4<u32>(abs(4294967295u) << (_wgslsmith_add_u32(arg_0.c, arg_0.c) % 32u), ~(~_wgslsmith_mod_u32(1559u, ~global0.x)), var_0.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~arg_0.c), 4294967295u << (select(arg_0.c, var_0.x, arg_0.b) % 32u)), 0u | _wgslsmith_mult_u32(global0.x, arg_0.c)));
    let var_1 = arg_0.a;
    let var_2 = vec4<f32>(1027f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f))))), _wgslsmith_f_op_f32(round(-564f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(1614f * 250f)))))));
    let var_3 = select(vec3<bool>(arg_0.b, false, arg_0.b), !select(select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), !vec3<bool>(false, arg_0.b, true), arg_0.b && true), vec3<bool>(arg_0.b, true, select(arg_0.b, true, false)), select(vec3<bool>(true, arg_0.b, false), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.b, false, false), true), arg_0.b)), false);
    return var_3.x;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = vec2<u32>(select(1u, ~u_input.b, func_3(Struct_3(-13737i, true, 4294967295u), _wgslsmith_div_vec3_i32(vec3<i32>(9454i, u_input.c.x, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 54343i), vec3<i32>(u_input.c.x, -18928i, -19115i))))), 25055u);
    var var_1 = Struct_3(select(-57288i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c.x, -3003i), u_input.c.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1139f))))) > _wgslsmith_f_op_f32(f32(-1f) * -2146f), global0.x);
    var var_2 = _wgslsmith_f_op_f32(min(810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1546f - -1946f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1018f * 367f)), 798f), _wgslsmith_f_op_f32(abs(-1000f)))), -771f, Struct_1(select(firstLeadingBit(vec4<i32>(-11739i, 63768i, u_input.c.x, -6126i)) & vec4<i32>(var_1.a, -1i, u_input.c.x, -12825i), vec4<i32>(-15200i, 1i, -10152i, -3546i) >> (vec4<u32>(4294967295u, 2200u, 51044u, global0.x) % vec4<u32>(32u)), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1085f * 641f) - _wgslsmith_f_op_f32(select(1217f, 472f, true))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-275f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f - 345f))), vec4<u32>(var_0.x & _wgslsmith_dot_vec3_u32(global0.xwx, vec3<u32>(global0.x, global0.x, 1978u)), global0.x, 1u, ~22259u)), abs(-48088i));
    var_0 = ~var_3.c.c.zw;
    return abs(~0u);
}

fn func_1() -> vec4<u32> {
    global0 = select(vec4<u32>(global0.x >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.x, u_input.b, global0.x, u_input.b)), vec4<u32>(8632u, u_input.a, global0.x, 24249u)) % 32u), func_2(true) << (1u % 32u), _wgslsmith_mult_u32(select(abs(0u), global0.x, true), 7628u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 6283u), global0.yxx), u_input.a ^ ~1399u)), select(countOneBits(~countOneBits(vec4<u32>(36759u, u_input.b, u_input.b, 760u))), select(abs(~vec4<u32>(u_input.b, global0.x, global0.x, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(40104u, u_input.b, 4294967295u, u_input.a), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), func_3(Struct_3(u_input.c.x, false, 2174u), vec3<i32>(-2147483647i, u_input.c.x, -34237i) ^ vec3<i32>(0i, u_input.c.x, u_input.c.x))), vec4<bool>(true, true && any(vec3<bool>(false, false, true)), true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))), vec4<bool>((~u_input.c.x < ~u_input.c.x) | true, any(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, func_3(Struct_3(u_input.c.x, true, 33561u), vec3<i32>(u_input.c.x, -1i, -1i)), true)), true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)))));
    global0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, 27454u, 32723u, global0.x)), vec4<u32>(4294967295u, ~global0.x, ~u_input.a, _wgslsmith_div_u32(1u, u_input.b)), ~vec4<u32>(0u, global0.x, 1u, global0.x) ^ vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b)), vec4<u32>(global0.x, ~1u, 14436u, _wgslsmith_div_u32(global0.x, 0u << (1u % 32u)))), select(min(select(~vec4<u32>(u_input.b, 21182u, u_input.b, global0.x), vec4<u32>(32332u, global0.x, 1u, global0.x), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 4294967295u), firstLeadingBit(vec4<u32>(13302u, u_input.a, 1u, 7592u)))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 23361u, 6225u, 69278u)), vec4<u32>(~u_input.a, u_input.a, min(66580u, u_input.b), ~u_input.b)), false));
    global0 = vec4<u32>(~39172u, global0.x, global0.x, global0.x);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(862f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-104f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2670f + _wgslsmith_f_op_f32(max(-1216f, _wgslsmith_f_op_f32(f32(-1f) * -1192f)))) * 1f), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-943f, 530f))) * 1f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1357f + _wgslsmith_f_op_f32(exp2(var_0.x))));
    return reverseBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global0.x, 26403u, 1u, 62375u)), firstLeadingBit(vec4<u32>(global0.x, u_input.a, u_input.b, u_input.b)))) << (select(~(vec4<u32>(64929u, 32339u, 204u, 55909u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a, global0.x, 1u), vec4<u32>(0u, u_input.b, 1u, 4294967295u)) % vec4<u32>(32u))), select(vec4<u32>(countOneBits(u_input.a), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(16406u, 7636u, 41905u, global0.x), vec4<u32>(47447u, u_input.a, 26088u, 0u)), reverseBits(u_input.b)), vec4<u32>(~0u, u_input.a, 4294967295u >> (global0.x % 32u), ~4294967295u), true), true && !(var_0.x == var_0.x)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(func_1());
    let var_0 = Struct_3(-(_wgslsmith_mult_i32(-1i, u_input.c.x) << ((1u ^ ~global0.x) % 32u)), !(!((i32(-1i) * -64971i) != u_input.c.x)), max(30892u, func_2(!(global0.x > u_input.a))));
    let var_1 = var_0.b;
    global0 = vec4<u32>(firstTrailingBit(u_input.b), 4294967295u, 23606u, ~1u);
    var var_2 = _wgslsmith_f_op_f32(trunc(-223f));
    let var_3 = ~(abs(~var_0.c) << (_wgslsmith_add_u32(global0.x, var_0.c) % 32u)) ^ (_wgslsmith_mult_u32(var_0.c, 1u) ^ 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-744f, -374f), vec2<f32>(-216f, 1229f), vec2<bool>(false, var_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 313f)))))))), countOneBits(_wgslsmith_mult_i32(u_input.c.x, var_0.a)) ^ _wgslsmith_div_i32(-_wgslsmith_add_i32(48182i, 7124i), ~_wgslsmith_add_i32(var_0.a, 48324i)), vec2<i32>(var_0.a, ~(var_0.a >> (4294967295u % 32u))) & vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_0.a, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(44450i, u_input.c.x, u_input.c.x), vec3<i32>(0i, var_0.a, var_0.a)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), global0.x);
}

