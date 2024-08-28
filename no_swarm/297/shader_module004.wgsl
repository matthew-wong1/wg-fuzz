struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = !(!all(vec4<bool>(false, true, false, true))) | true;
    let var_1 = Struct_1(~min(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~4294967295u, ~18870u, ~82790u, 1u)), ~reverseBits(~0u), 1u);
    let var_2 = 162f;
    var var_3 = Struct_2(~(~(~var_1.a.yz & var_1.a.wz)), select(vec3<bool>(true, true, !all(vec2<bool>(false, true))), vec3<bool>(false, false, true), select(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, false)), select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, false)), !vec3<bool>(var_0, var_0, var_0)), all(!vec3<bool>(true, var_0, false)))), vec3<bool>(true, _wgslsmith_mod_i32(26846i & u_input.a, ~(-8972i)) <= (i32(-1i) * -59630i), true), ~var_1.a.wyz, Struct_1(vec4<u32>(~24748u, ~1u, _wgslsmith_mod_u32(4670u, var_1.a.x), 1u) & var_1.a, var_1.b, firstTrailingBit(_wgslsmith_mult_u32(abs(var_1.b), var_1.a.x))));
    let var_4 = Struct_3(abs(vec4<i32>(-1i, 9300i & _wgslsmith_add_i32(-33981i, u_input.a), -u_input.a, select(-30199i, u_input.a, true) ^ max(u_input.a, u_input.a))));
    return ~firstTrailingBit(var_4.a);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~28692u), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(65432u, 0u), vec2<u32>(arg_1.x, 7091u)) ^ firstLeadingBit(vec2<u32>(arg_1.x, 2908u))) | vec2<u32>(~(~arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 61704u), countOneBits(vec4<u32>(28641u, arg_1.x, 4294967295u, arg_1.x)))));
    var var_1 = ~vec4<i32>(-18395i, abs(~(-53025i)), _wgslsmith_add_i32(abs(~50039i), arg_3 | arg_3), 21979i);
    var_1 = select(func_3(), ~min(vec4<i32>(-2147483647i, _wgslsmith_div_i32(var_1.x, 19867i), reverseBits(7886i), -56456i), vec4<i32>(firstLeadingBit(-1i), func_3().x, -33540i, u_input.a)), arg_0);
    var_1 = vec4<i32>(~(-(~(-u_input.a))), u_input.a, u_input.a, u_input.a << (_wgslsmith_mod_u32(56666u & min(arg_1.x, arg_1.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(4294967295u, var_0.x)), firstTrailingBit(arg_1.x))) % 32u));
    var_1 = vec4<i32>(select(max(_wgslsmith_div_i32(23062i >> (arg_1.x % 32u), u_input.a), _wgslsmith_div_i32(-5823i, _wgslsmith_clamp_i32(u_input.a, 2147483647i, arg_3))), 2147483647i, arg_0), firstTrailingBit(i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, var_1.x, arg_3)), countOneBits(1i), _wgslsmith_div_i32(2147483647i | _wgslsmith_mult_i32(-10121i, 0i | u_input.a), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(68830i, 1i, 45449i, u_input.a), vec4<i32>(arg_3, 10949i, u_input.a, 16574i)))));
    return ~_wgslsmith_clamp_u32(arg_1.x, firstTrailingBit(4294967295u), arg_1.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = select(vec2<bool>(true, all(vec3<bool>(all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), all(vec2<bool>(true, false))))), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), vec2<bool>(true, true), all(vec4<bool>(true, false, true, false))), true), true);
    var var_1 = arg_1;
    let var_2 = -2147483647i;
    let var_3 = arg_1.a.x;
    let var_4 = !select(select(!var_0, !select(vec2<bool>(var_0.x, var_0.x), var_0, var_0), var_0.x), var_0, var_0.x);
    return Struct_2(countOneBits(vec2<u32>(~(~1812u), arg_0 << (21434u % 32u))), vec3<bool>(any(vec4<bool>(var_0.x, any(vec4<bool>(true, var_4.x, var_4.x, true)), all(var_4), true)), var_4.x, any(vec4<bool>(var_0.x || var_0.x, all(vec3<bool>(false, var_4.x, var_0.x)), false, true))), select(select(!vec3<bool>(false, var_0.x, var_4.x), vec3<bool>(true, select(true, false, false), var_4.x), !(var_0.x && var_4.x)), !(!select(vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_4.x))), select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.x, var_4.x, false)), !select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_4.x), vec3<bool>(var_0.x, var_0.x, true)))), ~vec3<u32>(21616u, arg_0, arg_0), Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0, arg_0), firstLeadingBit(arg_0)), arg_0, arg_0 ^ (arg_0 ^ arg_0), arg_0), ~(~arg_0), 0u));
}

fn func_5(arg_0: Struct_2) -> i32 {
    let var_0 = 2147483647i;
    var var_1 = 0u ^ arg_0.e.c;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f - -731f) * _wgslsmith_f_op_f32(trunc(-1414f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-191f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -402f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(331f - -336f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2030f + -1215f)))))));
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~arg_0.d.x & ~arg_0.a.x), min(abs(66862u), 4294967295u), _wgslsmith_sub_u32(abs(102159u), ~(arg_0.a.x & 1u))), countOneBits(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.d.x, 81934u), arg_0.d))));
    return -1i;
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = func_5(func_4(func_2(u_input.a > 1i, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 15487u, 4294967295u), vec3<u32>(55222u, 41489u, 4294967295u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-139f, arg_2, 2727f, 973f), vec4<f32>(382f, arg_1, 239f, arg_2))), u_input.a) | ~func_2(true, vec3<u32>(4294967295u, 1u, 0u), vec4<f32>(-679f, 578f, arg_1, arg_1), arg_0.a.x), arg_0, arg_0.a.wzz, countOneBits(_wgslsmith_mult_i32(-4695i, 1i))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_add_u32(16714u, 0u), 45760u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 56424u), vec3<u32>(1u, 4294967295u, 1u))), ~(~vec4<u32>(1u, 0u, 1u, 0u))));
    var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), arg_1, -492f, _wgslsmith_f_op_f32(min(803f, _wgslsmith_f_op_f32(floor(arg_2)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1749f, 1402f, arg_2, -1689f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1, -135f, arg_1) + vec4<f32>(arg_1, -1610f, 1000f, arg_2))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1457f, 519f, 749f) + vec4<f32>(arg_1, arg_1, arg_1, 1155f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1, 214f, arg_1) - vec4<f32>(arg_1, arg_1, -348f, arg_2)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1219f)), arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(-151f)))), vec4<bool>(true, select(true, true, true), false, true))));
    var var_3 = arg_0;
    return 1531f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(717f, -1583f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(27978i, u_input.a, u_input.a, 1i)), -635f, 296f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f * -1267f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2465f, -1000f, 328f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1087f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1509f, 1000f))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(930f, _wgslsmith_f_op_f32(-var_0.x)))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -924f), vec3<f32>(701f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -548f), vec3<f32>(var_0.x, var_0.x, 268f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-467f, -574f, -706f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 798f, -131f), vec3<f32>(var_0.x, 789f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-544f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let var_1 = Struct_2(select(vec2<u32>(max(4294967295u, 1u), _wgslsmith_mult_u32(~0u, select(45324u, 4294967295u, false))), ~vec2<u32>(countOneBits(1u), 22028u), func_4(_wgslsmith_mult_u32(1u, ~38444u), Struct_3(vec4<i32>(1426i, u_input.a, -40251i, -55470i) << (vec4<u32>(64376u, 30013u, 21530u, 4294967295u) % vec4<u32>(32u))), vec3<i32>(-1i, u_input.a, u_input.a), 1i & (u_input.a & u_input.a)).b.yy), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), true), vec3<bool>(true, true, true)), !func_4(1u, Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 12474i, 1i), vec4<i32>(2147483647i, 1i, u_input.a, u_input.a))), vec3<i32>(30205i, abs(u_input.a), 1i), -25770i).c, _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(24805u, 2699u, 4294967295u), countOneBits(vec3<u32>(4294967295u, 4416u, 0u))), countOneBits(vec3<u32>(67018u, 1u, 1u))), func_4(firstLeadingBit(1u), Struct_3(vec4<i32>(0i, -39877i, u_input.a, select(-2147483647i, -41163i, false))), -vec3<i32>(-5355i, 26366i, 0i) ^ vec3<i32>(1i, u_input.a, _wgslsmith_sub_i32(-2147483647i, u_input.a)), select(~u_input.a, u_input.a >> (0u % 32u), true) >> (~59324u % 32u)).e);
    let var_2 = !any(!select(vec3<bool>(true, var_1.b.x, true), vec3<bool>(var_1.b.x, var_1.c.x, var_1.b.x), true));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 746f, 1657f) - vec3<f32>(var_0.x, 1007f, -132f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1256f, var_0.x, -292f))))));
    let var_3 = var_1;
    let var_4 = u_input.a;
    let var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-324f, 286f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), var_0.zx) + var_0.xz), vec2<bool>(var_4 >= -31164i, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 235f) * vec2<f32>(var_0.x, -772f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 465f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1869f, var_0.x, var_5.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1262f, -794f, 364f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(func_4(var_3.d.x, Struct_3(vec4<i32>(u_input.a, 2147483647i, var_4, u_input.a)), vec3<i32>(-1i, u_input.a, var_4), 0i).a.x, select(var_1.d.x, 4294967295u, false), min(var_1.d.x, var_1.a.x), _wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(35651u, 1u, var_1.e.b))) & vec4<u32>(~var_1.a.x, ~var_3.d.x, ~4294967295u, var_1.e.b << (0u % 32u))), -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, var_4), vec3<i32>(var_4, var_4, 95916i)) | (vec3<i32>(1i, var_4, 12235i) << (var_3.e.a.xwx % vec3<u32>(32u))), vec3<i32>(~27849i, _wgslsmith_clamp_i32(1i, u_input.a, u_input.a), 1i | u_input.a)), var_3.d, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(func_5(Struct_2(vec2<u32>(4294967295u, 39531u), vec3<bool>(var_2, var_1.c.x, var_2), vec3<bool>(false, var_3.c.x, true), vec3<u32>(var_3.a.x, 0u, 0u), Struct_1(var_3.e.a, 0u, 7867u))), -18257i, -17870i), func_3().wxx), abs(vec3<i32>(min(u_input.a, -2147483647i), -2147483647i, abs(2147483647i)))));
}

