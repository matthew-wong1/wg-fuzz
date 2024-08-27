struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = 220f;
    var var_1 = u_input.b | 0u;
    var_1 = 128126u;
    var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, -1254f)), -683f, -145f), _wgslsmith_f_op_vec3_f32(min(arg_2.b, vec3<f32>(445f, arg_2.b.x, arg_2.b.x)))))), _wgslsmith_f_op_vec3_f32(arg_2.b + arg_1.a));
    return min(~select(vec4<u32>(~4294967295u, u_input.b, 15717u, ~u_input.b), abs(countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 69148u))), !vec4<bool>(false, false, arg_0.x, arg_0.x)), select(firstLeadingBit(vec4<u32>(u_input.b, 33684u, u_input.b >> (4294967295u % 32u), _wgslsmith_mult_u32(0u, 88119u))), vec4<u32>(_wgslsmith_mod_u32(~75694u, 4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(45897u, 101008u, u_input.b), vec3<u32>(90764u, 35010u, u_input.b)), min(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 97439u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 0u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 32487u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), vec4<bool>(!(!arg_0.x), arg_0.x, arg_0.x, arg_0.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = Struct_3(!vec3<bool>(all(vec2<bool>(arg_1.e, arg_1.e)), true, 1i == ~arg_0), Struct_2(~vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -33194i), _wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x >> (u_input.b % 32u), u_input.a.x << (1u % 32u)), 3850u, arg_1.c, -1467f, true));
    var var_1 = _wgslsmith_mod_u32(~6818u, _wgslsmith_sub_u32(arg_2 & ~(arg_1.c.x & var_0.b.b), func_3(!select(vec4<bool>(var_0.b.e, true, arg_1.e, var_0.b.e), vec4<bool>(arg_1.e, arg_1.e, true, var_0.a.x), arg_1.e), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d, var_0.b.d, 1290f) - vec3<f32>(var_0.b.d, var_0.b.d, arg_1.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1787f, var_0.b.d, arg_1.d))), Struct_1(vec3<f32>(171f, var_0.b.d, 1109f), vec3<f32>(arg_1.d, var_0.b.d, 118f))).x));
    return 10294u != _wgslsmith_div_u32(4294967295u, ~firstTrailingBit(~42612u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = func_4(u_input.a.x, Struct_2(select(vec4<i32>(u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -7816i, -21643i, u_input.a.x)), ~u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 1i, 40675i) | vec4<i32>(u_input.a.x, -1i, -17961i, 2147483647i), min(vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x), u_input.a)), all(arg_3.www) && arg_3.x), arg_0.x, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, u_input.b ^ 1u, max(42941u, arg_0.x), _wgslsmith_add_u32(1u, 27004u)), func_3(arg_3, Struct_1(vec3<f32>(116f, 118f, 929f), vec3<f32>(-1353f, 2098f, 102f)), Struct_1(vec3<f32>(-231f, 1000f, -452f), vec3<f32>(1090f, -1405f, -1685f))) << (countOneBits(arg_1) % vec4<u32>(32u))), 574f, !all(vec3<bool>(true, true, arg_2))), ~(4294967295u >> (1u % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(671f, -1266f)))), 1245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)) * -761f), _wgslsmith_f_op_f32(ceil(1f))));
    let var_2 = Struct_2(u_input.a, _wgslsmith_sub_u32(max(37337u, firstTrailingBit(arg_0.x)), u_input.b), countOneBits(select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(56808u, 0u), vec2<u32>(22460u, 50507u)), 31067u, 0u, _wgslsmith_mult_u32(0u, arg_0.x)), vec4<u32>(firstLeadingBit(0u), ~arg_0.x, arg_0.x, _wgslsmith_mod_u32(arg_0.x, arg_1.x)), select(!arg_2, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1864f, 538f, false))), true);
    let var_3 = var_2;
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(875f, var_2.d, var_3.d, 1512f)))), vec4<f32>(-863f, _wgslsmith_f_op_f32(f32(-1f) * -332f), var_1.x, -537f), arg_3)))));
    return ~arg_1.x << ((~countOneBits(_wgslsmith_mult_u32(58091u, var_2.c.x)) | 13732u) % 32u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(func_2(vec2<u32>(4294967295u, arg_0.x), arg_0, false, vec4<bool>(true, true, false, true)), arg_0.x, ~5873u), ~arg_0.yzx);
    var_0 = ~(select(~(vec3<u32>(u_input.b, 0u, 58680u) >> (vec3<u32>(arg_0.x, 1u, u_input.b) % vec3<u32>(32u))), arg_0.zxy, true) ^ ~vec3<u32>(arg_0.x, var_0.x, 4294967295u));
    var_0 = ~_wgslsmith_div_vec3_u32(select(~vec3<u32>(0u, arg_0.x, 16120u), countOneBits(arg_0.yww), select(func_4(arg_1.x, Struct_2(u_input.a, 37305u, vec4<u32>(0u, 58048u, u_input.b, 4294967295u), -363f, true), var_0.x), true, false)), ~arg_0.yzw);
    var_0 = vec3<u32>(reverseBits(_wgslsmith_mult_u32(1u, arg_0.x)), ~35256u, 4294967295u);
    return false;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> vec2<u32> {
    var var_0 = 1i >> (_wgslsmith_mult_u32(~abs(~u_input.b), u_input.b) % 32u);
    let var_1 = Struct_2(select(vec4<i32>(u_input.a.x, 1i, -21080i, ~u_input.a.x ^ -1i), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~u_input.a), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -7366i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)), select(~u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true)), vec4<bool>(arg_1, all(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, true))), false, true)), ~u_input.b, _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(71548u, u_input.b, 1857u, 64556u), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, 2311u, u_input.b, u_input.b) << ((firstLeadingBit(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) | vec4<u32>(4294967295u, 1u, u_input.b, u_input.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1831f)) < arg_0.x);
    let var_2 = vec4<bool>(arg_1, !(!(false | all(vec2<bool>(false, arg_1)))), !any(select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(true, arg_1, true, arg_1), func_4(var_1.a.x, var_1, 0u))), true);
    let var_3 = vec4<f32>(360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.d)), _wgslsmith_f_op_f32(368f * var_1.d)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d)))) * arg_0.x), 178f, 1128f);
    let var_4 = ~_wgslsmith_mult_i32(u_input.a.x, -28957i);
    return ~vec2<u32>(firstTrailingBit(1u) ^ ~4294967295u, _wgslsmith_dot_vec4_u32(~var_1.c, func_3(vec4<bool>(var_1.e, false, true, var_2.x), Struct_1(arg_0.zwz, vec3<f32>(arg_0.x, -2572f, -1000f)), Struct_1(arg_0.wyw, var_3.zww))));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_3(vec3<bool>(arg_2.a.x, select(true, false, arg_2.b.e), arg_2.a.x), arg_2.b);
    var var_1 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2.b.e, true, false), select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, var_0.b.e), vec4<bool>(true, true, var_0.b.e, false), var_0.b.e)), select(select(vec4<bool>(arg_2.a.x, true, arg_2.b.e, arg_2.b.e), vec4<bool>(false, false, false, arg_2.a.x), var_0.b.e), !vec4<bool>(true, arg_2.a.x, var_0.a.x, true), !var_0.b.e), vec4<bool>(true, true, true, all(vec4<bool>(arg_2.b.e, false, arg_2.b.e, true)))), vec4<bool>(any(!vec3<bool>(arg_2.a.x, true, true)) != any(vec2<bool>(arg_2.a.x, var_0.b.e)), arg_2.b.e, any(var_0.a.zz), var_0.a.x), select(func_1(~(~arg_2.b.c), -(u_input.a.yw ^ var_0.b.a.zz)), true, !all(var_0.a)));
    var_0 = arg_2;
    var var_2 = abs(abs(-max(arg_2.b.a, vec4<i32>(u_input.a.x, 43581i, arg_1, 2147483647i))));
    var_1 = select(vec4<bool>(arg_2.a.x, (var_0.b.a.x < _wgslsmith_mult_i32(3670i, arg_1)) || (true || !arg_2.a.x), true, var_1.x), vec4<bool>(true, true, var_0.b.e | true, true), !(!vec4<bool>(true, false, var_0.b.d <= 821f, false)));
    return -651f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1014f, -982f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_div_vec4_f32(vec4<f32>(612f, 429f, -402f, 470f), vec4<f32>(1063f, -2070f, 616f, 922f)), func_1(vec4<u32>(34984u, 0u, u_input.b, u_input.b), vec2<i32>(51329i, -1i))), u_input.a.x, Struct_3(vec3<bool>(false, false, true), Struct_2(u_input.a, 3605u, vec4<u32>(19212u, u_input.b, 1u, 4294967295u), 529f, false)))))));
    var var_1 = true;
    let var_2 = Struct_2(firstTrailingBit(max(vec4<i32>(u_input.a.x, 2147483647i, -21251i, u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))) >> (vec4<u32>(1u << (u_input.b % 32u), 20687u, 4294967295u, _wgslsmith_sub_u32(1u, u_input.b) ^ firstLeadingBit(56040u)) % vec4<u32>(32u)), ~select(func_5(vec4<f32>(-1855f, -447f, -320f, 153f), false).x, u_input.b, true), vec4<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(16313u, u_input.b, 0u) ^ vec3<u32>(u_input.b, u_input.b, 1u)) ^ vec3<u32>(0u, 49524u, u_input.b), ~select(vec3<u32>(0u, 4294967295u, 78988u), vec3<u32>(u_input.b, 29442u, u_input.b), vec3<bool>(false, false, false))), _wgslsmith_add_u32(~u_input.b, abs(u_input.b)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.b, 1u), 1u), select(u_input.b, u_input.b, false)), -493f, true);
    let var_3 = Struct_3(!select(select(select(vec3<bool>(true, false, var_2.e), vec3<bool>(true, var_2.e, true), vec3<bool>(true, true, var_2.e)), vec3<bool>(false, false, var_2.e), select(vec3<bool>(var_2.e, true, false), vec3<bool>(true, var_2.e, var_2.e), vec3<bool>(var_2.e, var_2.e, var_2.e))), !vec3<bool>(var_2.e, false, false), select(!vec3<bool>(var_2.e, false, var_2.e), !vec3<bool>(var_2.e, var_2.e, false), vec3<bool>(var_2.e, var_2.e, var_2.e))), Struct_2(u_input.a, _wgslsmith_sub_u32(~u_input.b, ~countOneBits(var_2.b)), select(abs(select(var_2.c, vec4<u32>(var_2.b, var_2.c.x, u_input.b, u_input.b), vec4<bool>(true, var_2.e, var_2.e, var_2.e))), vec4<u32>(~u_input.b, ~0u, 40346u, ~var_2.c.x), select(select(vec4<bool>(var_2.e, var_2.e, var_2.e, var_2.e), vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_2.e, var_2.e)), !vec4<bool>(var_2.e, var_2.e, true, true), var_2.e)), _wgslsmith_f_op_f32(f32(-1f) * -1350f), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, var_2.e, var_2.e), vec4<bool>(var_2.e, var_2.e, var_2.e, var_2.e))) != !(!var_2.e)));
    let var_4 = vec2<bool>(all(vec3<bool>(true, true, select(false & var_3.a.x, var_2.b == 58443u, all(vec2<bool>(var_3.a.x, var_2.e))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a.x, ~_wgslsmith_mod_i32(1i, u_input.a.x)), _wgslsmith_div_f32(125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.d, var_2.d) * vec2<f32>(-2097f, var_2.d))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.b.d, -520f), vec2<f32>(-185f, 1825f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(487f, var_2.d) - vec2<f32>(var_2.d, var_2.d))))))), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_3.b.b, ~83766u), abs(select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 66909u), vec2<u32>(1u, 1u)), var_2.c.ww, select(var_4, var_3.a.yz, vec2<bool>(false, false))))), func_2(_wgslsmith_clamp_vec2_u32(var_2.c.zy, func_5(vec4<f32>(var_2.d, 751f, var_2.d, -660f), var_4.x), _wgslsmith_mult_vec2_u32(var_3.b.c.yw, vec2<u32>(0u, 0u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.b.b, u_input.b, u_input.b, u_input.b), var_2.c), var_2.e, vec4<bool>(var_4.x, true, var_4.x, !var_2.e)) | countOneBits(1u));
}

