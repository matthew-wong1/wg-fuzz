struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = (arg_0.c | arg_2) << (select(_wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_mod_u32(arg_3.b.b, 4294967295u)), ~select(_wgslsmith_sub_u32(4294967295u, u_input.b), max(38543u, 1u), any(vec4<bool>(true, true, true, false))), !arg_3.b.a) % 32u);
    var_0 = select(-8453i, 1i, true);
    let var_1 = countOneBits(-vec2<i32>(~13745i, _wgslsmith_clamp_i32(arg_2, -2147483647i, 28620i))) | _wgslsmith_sub_vec2_i32(firstLeadingBit(~firstTrailingBit(vec2<i32>(arg_0.a.x, -1i))), ~arg_3.a.zw & ~_wgslsmith_div_vec2_i32(arg_0.a.yz, arg_0.a.zx));
    var_0 = _wgslsmith_sub_i32(arg_2, arg_0.c | arg_2);
    let var_2 = arg_3;
    return vec4<bool>((_wgslsmith_dot_vec3_i32(abs(var_2.a.zxz), var_2.a.zzx >> (vec3<u32>(arg_3.b.b, 0u, u_input.b) % vec3<u32>(32u))) & -16748i) <= firstTrailingBit(_wgslsmith_add_i32(reverseBits(-1i), 19152i)), arg_0.b.a, false, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = abs(u_input.a.x & ~12068u);
    var var_1 = !vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false))), all(func_3(Struct_3(vec4<i32>(-2147483647i, arg_1, arg_1, 37858i), Struct_1(false, 4294967295u), -1i), ~23035u, -2147483647i, Struct_3(vec4<i32>(-2147483647i, 2147483647i, arg_1, 28071i), Struct_1(false, 0u), arg_2))), _wgslsmith_f_op_f32(892f * 425f) >= _wgslsmith_f_op_f32(arg_0.x * arg_0.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(465f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-928f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))));
    let var_3 = true;
    var_1 = select(vec3<bool>(!var_3, var_1.x, var_3), func_3(Struct_3(min(~vec4<i32>(arg_2, arg_2, arg_1, 3221i), vec4<i32>(14908i, arg_1, arg_2, arg_1)), Struct_1(true, abs(u_input.b)), arg_1), 51235u, countOneBits(35735i) << (u_input.a.x % 32u), Struct_3(vec4<i32>(arg_2, i32(-1i) * -6876i, abs(-1i), arg_2), Struct_1(true, 2771u & u_input.a.x), firstTrailingBit(0i))).zwz, !(!select(func_3(Struct_3(vec4<i32>(arg_1, -2147483647i, arg_1, 0i), Struct_1(false, u_input.a.x), arg_1), 32868u, arg_2, Struct_3(vec4<i32>(2306i, 0i, 0i, arg_2), Struct_1(false, u_input.a.x), arg_2)).xyx, vec3<bool>(var_1.x, false, var_1.x), var_1.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f) + _wgslsmith_f_op_f32(-var_2.x)))), arg_0.x)), var_2.x);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, _wgslsmith_f_op_f32(f32(-1f) * -983f), -1204f, _wgslsmith_f_op_f32(-2849f + -1711f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<f32>(-1000f, -1045f, -996f, 655f), 5322i, -15133i)), _wgslsmith_f_op_f32(1000f * -406f), _wgslsmith_f_op_f32(877f + 731f), _wgslsmith_div_f32(716f, -547f)) * vec4<f32>(_wgslsmith_f_op_f32(1000f - 738f), _wgslsmith_f_op_f32(1023f + -804f), _wgslsmith_f_op_f32(761f + -716f), _wgslsmith_f_op_f32(-706f - -503f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(784f, var_0.x, 1481f, 1081f) * vec4<f32>(var_0.x, -391f, var_0.x, var_0.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, var_0.x, var_0.x, 684f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<f32>(583f, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(sign(723f)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1540f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 173f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 797f, var_0.x) - vec4<f32>(var_0.x, -576f, -1269f, -1027f))))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -785f), 2013f))), vec4<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), !(abs(u_input.a.x) <= (u_input.b | u_input.b)), false, !func_3(Struct_3(vec4<i32>(-37071i, 1i, 1i, 2147483647i), Struct_1(true, u_input.b), -18277i), ~0u, 1i, Struct_3(vec4<i32>(-4605i, 0i, -40650i, 1i), Struct_1(false, 1u), 327i)).x)));
    var var_1 = true;
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-(i32(-1i) * -6642i), ~1i), min(firstLeadingBit(~vec2<i32>(1i, -38531i)), vec2<i32>(max(1i, 40071i), 0i)) & -((vec2<i32>(0i, -1i) >> (u_input.a % vec2<u32>(32u))) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    return !select(!(!func_3(Struct_3(vec4<i32>(var_2.x, -1i, var_2.x, -23951i), Struct_1(true, u_input.b), var_2.x), u_input.a.x, var_2.x, Struct_3(vec4<i32>(var_2.x, var_2.x, var_2.x, 33888i), Struct_1(false, 0u), var_2.x)).yy), func_3(Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(63798i, var_2.x, var_2.x, -2147483647i), vec4<i32>(var_2.x, -1i, var_2.x, var_2.x)), Struct_1(true, u_input.a.x), ~2147483647i), 45294u, _wgslsmith_div_i32(~var_2.x, 1i), Struct_3(vec4<i32>(var_2.x, -30653i, -36497i, var_2.x) & vec4<i32>(var_2.x, 1i, -2147483647i, var_2.x), Struct_1(true, u_input.b), var_2.x)).yx, false);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(select(-2147483647i, -1i, arg_0.x), ~(-16731i)) ^ -2147483647i, 0i);
    var var_1 = _wgslsmith_f_op_f32(1175f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_2 = 658f;
    var_1 = _wgslsmith_f_op_f32(floor(-474f));
    return Struct_1(true | arg_0.x, select(~u_input.a.x ^ _wgslsmith_add_u32(1u, ~u_input.b), u_input.b, true || (true | arg_0.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = Struct_4(vec3<u32>(0u, u_input.b, 1u << (~arg_1.b % 32u)) | vec3<u32>(1u, u_input.b, u_input.a.x), vec4<bool>(!any(vec4<bool>(arg_0.a, false, true, false)), arg_1.a, !any(vec3<bool>(arg_0.a, arg_1.a, arg_0.a)), true), ~min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 0u), vec3<u32>(1u, u_input.b, 1u)) & (vec3<u32>(arg_0.b, 1u, arg_0.b) << (vec3<u32>(arg_0.b, 20190u, 54592u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(arg_0.b, 25035u, 0u)))));
    var var_1 = !all(!(!func_3(Struct_3(vec4<i32>(10946i, 31291i, 11780i, arg_2), Struct_1(arg_0.a, 13227u), arg_2), var_0.c.x, -2147483647i, Struct_3(vec4<i32>(arg_2, arg_2, 1i, -1i), Struct_1(true, 4294967295u), 26041i))));
    var_1 = func_3(Struct_3(_wgslsmith_div_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-20841i, arg_2, 2147483647i, -10819i), vec4<i32>(arg_2, 1i, 1i, arg_2)), ~vec4<i32>(19686i, arg_2, 33063i, arg_2)), vec4<i32>(_wgslsmith_sub_i32(arg_2, arg_2), -2147483647i ^ arg_2, abs(1i), -62664i)), arg_1, arg_2 >> (firstTrailingBit(_wgslsmith_clamp_u32(1u, arg_1.b, arg_0.b)) % 32u)), ~(~1u), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(select(arg_2, arg_2, true), firstLeadingBit(0i)), arg_2), Struct_3(-select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, -38263i, 41757i, 32370i), vec4<i32>(arg_2, -13503i, -31204i, -1309i)), reverseBits(vec4<i32>(-2147483647i, arg_2, arg_2, arg_2)), vec4<bool>(arg_1.a, arg_0.a, true, false)), Struct_1(false || all(var_0.b.wyz), ~1u), 2147483647i)).x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(_wgslsmith_dot_vec3_i32((vec3<i32>(-1i, 1i, 2147483647i) >> (vec3<u32>(u_input.b, u_input.a.x, 4294967295u) % vec3<u32>(32u))) >> ((vec3<u32>(u_input.a.x, u_input.b, 3398u) ^ vec3<u32>(10172u, 0u, u_input.b)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(2912i, -27343i, -2147483647i), vec3<i32>(-1i, 5062i, -2147483647i)) | select(vec3<i32>(6591i, 0i, -2147483647i), vec3<i32>(-1i, -2147483647i, -26365i), true)));
    let var_1 = firstLeadingBit(var_0);
    var var_2 = Struct_1(func_5(func_4(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), func_1(), vec2<bool>(true, true))), Struct_1(any(vec4<bool>(false, false, false, true)), 4294967295u), -(~0i) << (_wgslsmith_div_u32(u_input.b, ~4294967295u) % 32u)), _wgslsmith_mod_u32(22u, select(4294967295u, ~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), any(vec4<bool>(false, true, false, true)))));
    var_2 = func_4(vec2<bool>(var_2.a, true));
    let var_3 = Struct_1(all(vec4<bool>(var_2.a, true, 1u <= (var_2.b ^ 4294967295u), true)), ~firstTrailingBit(~4294967295u) & ~max(select(var_2.b, u_input.b, false), u_input.b));
    let var_4 = ~(~vec3<u32>(~0u, 37687u, _wgslsmith_add_u32(_wgslsmith_add_u32(2830u, var_3.b), ~var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2611f)))), firstLeadingBit(abs(_wgslsmith_sub_u32(u_input.b, 18592u & var_3.b))), var_4.x, _wgslsmith_mult_u32(~_wgslsmith_add_u32(~35375u, 1u), var_2.b));
}

