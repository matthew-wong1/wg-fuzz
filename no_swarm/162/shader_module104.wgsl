struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_div_i32(~arg_0, ~(~arg_0) & -firstTrailingBit(arg_0)) >> (min(_wgslsmith_div_u32(u_input.a, 35944u), ~(~(~u_input.a))) % 32u);
    let var_1 = select(vec4<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), false)), any(vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false)))), any(vec3<bool>(true, true, true)), false), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, false, false), true), vec4<bool>(arg_0 >= -34998i, true, false, any(vec3<bool>(false, true, true))), (2146f >= arg_3) | all(vec4<bool>(false, false, false, true))), vec4<bool>(1195f >= _wgslsmith_f_op_f32(ceil(-2136f)), select(false, true, true), true, any(vec2<bool>(true, true))), vec4<bool>(!any(vec2<bool>(true, true)), false, true, !any(vec3<bool>(true, false, true)))), vec4<bool>(any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true)), any(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), any(vec4<bool>(false, arg_2.x == arg_2.x, -2147483647i >= var_0, arg_3 >= -692f))));
    let var_2 = arg_3;
    var var_3 = abs(-2147483647i);
    var var_4 = countOneBits(38298u);
    return ~var_0;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1022f, -260f, 699f)) + vec3<f32>(1f, 1f, 1f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 182f)), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    var var_1 = Struct_2(2147483647i, -(~firstLeadingBit(vec2<i32>(2147483647i, 0i))) | ~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(1i, 13126i)), -vec2<i32>(1499i, -15146i), vec2<i32>(-18988i, -1i)), vec2<i32>(reverseBits(-func_3(1i, u_input.a, vec4<u32>(u_input.a, 46296u, 1u, u_input.a), -1851f)), -1i));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_2), 1438f, -1000f);
    return _wgslsmith_clamp_i32(firstLeadingBit(var_1.c.x), -2147483647i, -_wgslsmith_add_i32(~(i32(-1i) * -29563i), var_1.c.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = Struct_3(Struct_1(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(41759i, -37161i, arg_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, 2147483647i, arg_0.b.x, arg_0.c.x)), vec4<i32>(arg_0.a, -7891i, -1i, -44524i) >> (vec4<u32>(51046u, 30892u, 73759u, 1u) % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, -4016i), arg_0.c) ^ _wgslsmith_sub_i32(arg_0.c.x, func_2()), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(170f, arg_1))), arg_1)), vec3<u32>(~_wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, 0u, 1u)), _wgslsmith_mult_u32(u_input.a, ~u_input.a) ^ (_wgslsmith_sub_u32(u_input.a, u_input.a) ^ 83122u), 4294967295u), !vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4641u, 28964u, 4294967295u), vec4<u32>(1u, 26844u, 4294967295u, 4294967295u)) > ~21044u, true & (u_input.a != u_input.a)));
    var var_1 = (firstTrailingBit(var_0.b) & (abs(vec3<u32>(u_input.a, u_input.a, u_input.a)) | (firstTrailingBit(vec3<u32>(23912u, 72851u, var_0.b.x)) | var_0.b))) ^ _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(70010u, u_input.a, 48256u)), var_0.b);
    var_1 = var_0.b;
    let var_2 = Struct_3(Struct_1(max(var_0.a.a, vec4<i32>(1i, _wgslsmith_dot_vec4_i32(var_0.a.a, vec4<i32>(var_0.a.a.x, 5630i, -20848i, -5475i)), _wgslsmith_mod_i32(arg_0.b.x, -58188i), countOneBits(29519i))), _wgslsmith_add_i32(var_0.a.b, var_0.a.b), vec2<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1296f * -943f) + _wgslsmith_f_op_f32(trunc(arg_1))))), var_0.b, select(var_0.c, !var_0.c, true));
    let var_3 = var_1.x;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(7702i, -2147483647i, 22592i)), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, -10094i, 2147483647i, 1i), vec4<i32>(24821i, 2147483647i, 13778i, 16313i)), vec4<i32>(1i, 1i, 1i, 1i)), func_1(Struct_2(-38111i, vec2<i32>(21883i, -34462i), vec2<i32>(0i, -2327i)), 1000f)), -_wgslsmith_div_vec3_i32(select(vec3<i32>(0i, 0i, -2147483647i), vec3<i32>(0i, -1i, -2147483647i), false), vec3<i32>(33529i, 14998i, -2147483647i) << (vec3<u32>(u_input.a, u_input.a, 89485u) % vec3<u32>(32u)))));
    var_0 = vec3<i32>(firstLeadingBit(-func_3(var_0.x, u_input.a, vec4<u32>(u_input.a, u_input.a, 1u, 55196u), -1114f)) << (~abs(firstLeadingBit(1u)) % 32u), select(var_0.x, _wgslsmith_mult_i32(max(var_0.x, var_0.x), countOneBits(var_0.x)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), var_0.x);
    var var_1 = _wgslsmith_sub_vec3_i32(~select(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(14336i, 2147483647i, 1841i)), vec3<i32>(-2147483647i, 0i, ~22450i), vec3<bool>(true, true, true)), ~vec3<i32>(27306i, _wgslsmith_add_i32(var_0.x, var_0.x), var_0.x) ^ ((vec3<i32>(-2147483647i, -28338i, var_0.x) << (firstLeadingBit(vec3<u32>(u_input.a, 40436u, 14395u)) % vec3<u32>(32u))) >> (vec3<u32>(32901u, 1u, u_input.a) % vec3<u32>(32u))));
    var var_2 = Struct_2(var_1.x, var_1.zz, vec2<i32>(2147483647i, var_1.x));
    var_1 = vec3<i32>(var_0.x, func_3(2147483647i, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(40050u, u_input.a), u_input.a ^ 1527u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), min(u_input.a, u_input.a))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 26763u, 1u, 19389u), ~vec4<u32>(u_input.a, 0u, 0u, 40093u)), _wgslsmith_f_op_f32(min(1f, 1000f))), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(4346i, var_0.x, -1i), vec3<i32>(1i, -44905i, -1i)) ^ max(vec3<i32>(var_1.x, var_0.x, var_2.a), _wgslsmith_mod_vec3_i32(vec3<i32>(17080i, var_1.x, var_0.x), vec3<i32>(var_2.c.x, var_0.x, var_2.b.x))), min(vec3<i32>(i32(-1i) * -2147483647i, var_1.x, func_3(1i, 0u, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 406f)), select(select(vec3<i32>(var_1.x, var_0.x, var_2.a), vec3<i32>(35100i, var_0.x, -2147483647i), vec3<bool>(true, true, false)), -vec3<i32>(var_2.a, var_1.x, 6330i), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, firstTrailingBit(~reverseBits(-18201i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i >> (u_input.a % 32u), _wgslsmith_div_i32(1i, var_2.c.x), var_0.x, i32(-1i) * -71491i), vec4<i32>(var_1.x, var_2.a, -21025i, var_0.x) >> (vec4<u32>(1u, 4294967295u, u_input.a, 10597u) % vec4<u32>(32u)), vec4<i32>(~var_1.x, var_0.x, var_2.c.x, -2147483647i)) << ((reverseBits(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) | vec4<u32>(~48805u, 1u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~u_input.a)) % vec4<u32>(32u)), 57526i, -vec4<i32>(-2147483647i, -var_2.c.x | var_1.x, -4532i, abs(var_2.b.x)));
}

