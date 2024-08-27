struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 1u), vec2<u32>(31544u, 41195u), vec2<u32>(69254u, 0u), vec2<u32>(47858u, 4294967295u), vec2<u32>(1010u, 1922u), vec2<u32>(0u, 1u), vec2<u32>(33558u, 4294967295u), vec2<u32>(4294967295u, 9579u), vec2<u32>(0u, 7260u), vec2<u32>(11853u, 1u), vec2<u32>(23421u, 17394u), vec2<u32>(0u, 57651u), vec2<u32>(33630u, 4294967295u), vec2<u32>(0u, 25797u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 12792u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(16427u, 1316u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 22252u), vec2<u32>(1u, 113142u), vec2<u32>(42788u, 24181u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = vec4<f32>(-782f, 1022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-107f, -1684f)) * _wgslsmith_f_op_f32(f32(-1f) * -561f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f - _wgslsmith_f_op_f32(max(524f, -153f))) - _wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1326f * -1000f), _wgslsmith_f_op_f32(abs(-1059f)))))));
    global1 = array<vec2<u32>, 24>();
    var var_1 = min(-1i, countOneBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.b, u_input.a.x, u_input.b) & vec4<i32>(u_input.b, u_input.b, -28611i, 1i)), select(vec4<i32>(u_input.b, u_input.a.x, -2147483647i, u_input.b), vec4<i32>(u_input.a.x, -27368i, u_input.a.x, u_input.a.x), false) | vec4<i32>(-1i, u_input.a.x, u_input.a.x, 31985i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1407f - _wgslsmith_f_op_f32(f32(-1f) * -1236f)), _wgslsmith_f_op_f32(ceil(-987f)), (_wgslsmith_sub_u32(31713u, 26449u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19033u, 1u, 1u), vec4<u32>(0u, 4294967295u, 11020u, 0u))) >= _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 0u), ~vec3<u32>(62384u, 12999u, 37689u)))) * _wgslsmith_f_op_f32(ceil(396f)));
    let var_3 = 940f;
    return firstTrailingBit(_wgslsmith_div_u32(~1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(47949u, 0u, 24228u << (1u % 32u)), 64890u)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: bool) -> i32 {
    global0 = all(vec4<bool>(true, true, false, true));
    var var_0 = Struct_1(u_input.b ^ ~u_input.a.x, vec4<u32>(_wgslsmith_add_u32(~arg_0, func_3()), _wgslsmith_div_u32(arg_0, 26707u), _wgslsmith_dot_vec4_u32(~vec4<u32>(108886u, arg_0, 3632u, 106930u), _wgslsmith_clamp_vec4_u32(vec4<u32>(92360u, 24029u, 14169u, arg_0), vec4<u32>(975u, arg_0, 4294967295u, 1u), vec4<u32>(77593u, arg_0, arg_0, arg_0))), _wgslsmith_div_u32(arg_0, arg_0)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(50247u, ~arg_0, arg_0, select(1u, 61844u, true)), ~(~vec4<u32>(arg_0, 36645u, 1u, arg_0)), vec4<u32>(~arg_0, 98779u, arg_0, arg_0)));
    var var_1 = select(select(!vec3<bool>(-20221i <= var_0.a, !arg_1, false), select(vec3<bool>(false, arg_1, arg_1), !vec3<bool>(arg_1, arg_2, false), vec3<bool>(true, !arg_2, arg_2)), arg_2), select(!select(select(vec3<bool>(arg_2, arg_1, arg_1), vec3<bool>(false, arg_2, arg_1), vec3<bool>(false, arg_1, true)), !vec3<bool>(true, false, arg_1), select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_1, true, arg_2), arg_1)), select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, arg_2 != false), true), !(!(!vec3<bool>(true, arg_1, false)))), !arg_2);
    let var_2 = ~vec3<i32>(_wgslsmith_mod_i32(-2147483647i, var_0.a), u_input.b, _wgslsmith_div_i32(~u_input.a.x, u_input.a.x ^ _wgslsmith_sub_i32(-1i, 1i)));
    var var_3 = Struct_3(vec4<bool>(true, arg_2, true & arg_2, !arg_1));
    return _wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(var_0.a, _wgslsmith_mult_i32(-18040i, _wgslsmith_dot_vec3_i32(var_2, vec3<i32>(var_2.x, 21648i, u_input.b))), abs(43250i))), select(-_wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.x, 0i), 1i), ~(~7647i), select(all(select(vec3<bool>(arg_2, arg_1, false), vec3<bool>(var_3.a.x, var_3.a.x, true), var_3.a.xzx)), true, all(select(var_3.a.xxz, vec3<bool>(true, var_1.x, false), var_3.a.wzy)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_4 {
    global0 = -2147483647i < u_input.b;
    global1 = array<vec2<u32>, 24>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(1711f, _wgslsmith_div_f32(2919f, -1205f)), 1185f, _wgslsmith_f_op_f32(-1f)), abs(arg_1.b), arg_1, Struct_1(arg_2 & _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 30i), vec2<i32>(-27799i, 1i)), 0i), ~arg_1.b), vec3<u32>(_wgslsmith_mod_u32(abs(~23205u), ~(~arg_1.b.x)), arg_1.b.x, func_3()));
    let var_1 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(min(-1206f, _wgslsmith_f_op_f32(step(var_0.a.x, 364f)))), var_0.a.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1345f, -1253f, var_0.a.x), vec3<f32>(var_0.a.x, 258f, -781f)))) - _wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 1772f, 1000f))), true)))), abs(_wgslsmith_clamp_vec4_u32(var_0.c.b, arg_1.b, var_0.b)), arg_1, Struct_1(1i, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.x, arg_1.b.x, var_0.e.x, var_0.b.x), vec4<u32>(var_0.b.x, 24416u, var_0.c.b.x, arg_1.b.x)), ~vec4<u32>(4294967295u, 39384u, 0u, 0u)), min(vec4<u32>(22655u, 66766u, arg_1.b.x, arg_1.b.x) << (vec4<u32>(0u, var_0.e.x, var_0.d.b.x, var_0.c.b.x) % vec4<u32>(32u)), vec4<u32>(1184u, 4294967295u, 1u, 1636u)))), abs(arg_1.b.zxx) | firstLeadingBit(arg_1.b.yww));
    return Struct_4(~(~select(vec3<i32>(arg_1.a, arg_2, 69789i) << (vec3<u32>(var_0.b.x, arg_1.b.x, var_0.d.b.x) % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, u_input.a.x, arg_2), true)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(select(arg_1.a, -1i, false), var_0.c.a, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(23054i, -2147483647i, var_0.d.a)), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(0u, arg_1.b.x, 43835u, 11259u)), ~(~var_0.b))), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-403f * -1150f), -267f), _wgslsmith_f_op_f32(round(-264f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 532f) * _wgslsmith_f_op_f32(exp2(var_0.a.x)))), vec4<u32>(~arg_1.b.x << (_wgslsmith_mod_u32(84862u, 6141u) % 32u), 0u, ~(~1u), 1144u), Struct_1(var_0.c.a, select(var_0.c.b, ~vec4<u32>(var_0.b.x, var_0.b.x, 0u, arg_1.b.x), true)), Struct_1(_wgslsmith_div_i32(~0i, countOneBits(-16885i)), firstTrailingBit(firstLeadingBit(vec4<u32>(5065u, 4294967295u, 4294967295u, var_0.d.b.x)))), ~vec3<u32>(~arg_1.b.x, select(1u, 75706u, arg_3), ~var_0.e.x)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    var var_0 = vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))) | !any(vec2<bool>(true, true)), true, true, ((arg_0.b.b.x ^ firstLeadingBit(3024u)) << (firstTrailingBit(~arg_1.b.b.x) % 32u)) < arg_1.b.b.x);
    var var_1 = _wgslsmith_f_op_f32(-918f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)));
    return all(vec3<bool>(_wgslsmith_div_i32(u_input.b, u_input.a.x) < _wgslsmith_add_i32(18226i, ~arg_0.c.d.a), true, !all(vec2<bool>(var_0.x, false))));
}

fn func_1() -> Struct_4 {
    global0 = func_5(func_4(true, Struct_1(u_input.a.x, vec4<u32>(~1u, 40884u, ~111681u, ~1u)), func_2(reverseBits(~1u), true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-214f - -1212f), -893f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-680f * -207f)))), func_4(false, Struct_1(-27455i, ~(~vec4<u32>(16792u, 4294967295u, 1u, 76089u))), u_input.a.x, true));
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.b), vec3<i32>(2147483647i, 35155i, -5589i)) & func_4(false, Struct_1(75118i, vec4<u32>(1u, 34102u, 7309u, 51757u)), -u_input.a.x, true).a, firstTrailingBit(vec3<i32>(u_input.b, u_input.a.x, u_input.b) << (vec3<u32>(27042u, 73976u, 0u) % vec3<u32>(32u))) >> (abs(~vec3<u32>(23164u, 4294967295u, 4294967295u)) % vec3<u32>(32u))), vec3<i32>(1i, u_input.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(-11340i, u_input.b), -1i)) << (vec3<u32>(~max(0u, 10565u), 0u, abs(~33944u)) % vec3<u32>(32u)));
    global1 = array<vec2<u32>, 24>();
    global0 = true;
    return Struct_4(var_0, Struct_1(-var_0.x & 1i, vec4<u32>(73287u, 1u, select(1u, ~17508u, true), 14610u)), Struct_2(vec3<f32>(493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_div_f32(-2083f, 618f)), _wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(88521u, 96552u, 1u, 50817u)), firstTrailingBit(~vec4<u32>(4294967295u, 1u, 68883u, 0u))), Struct_1(-1i, firstTrailingBit(vec4<u32>(0u, 8656u, 4294967295u, 4294967295u))), func_4(true, Struct_1(~u_input.b, max(vec4<u32>(19326u, 20794u, 0u, 16497u), vec4<u32>(0u, 36969u, 0u, 8439u))), -1i, !any(vec2<bool>(true, false))).c.c, vec3<u32>(1u, 1u, 1u)));
}

fn func_6(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    return Struct_1(0i, ~arg_1.c.b);
}

fn func_7(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_1(-17736i, func_1().c.d.b >> ((arg_0.c.d.b | (~vec4<u32>(arg_0.c.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x) >> (~vec4<u32>(arg_0.b.b.x, 0u, arg_0.c.e.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global0 = false;
    var var_1 = var_0.b.x;
    var var_2 = arg_0;
    global1 = array<vec2<u32>, 24>();
    return func_4(true, arg_0.c.c, _wgslsmith_mod_i32(~abs(~0i), (_wgslsmith_dot_vec3_i32(var_2.a, vec3<i32>(-2147483647i, 17018i, arg_0.b.a)) >> (_wgslsmith_dot_vec2_u32(arg_0.b.b.xx, global1[_wgslsmith_index_u32(1u, 24u)]) % 32u)) & arg_0.c.d.a), !(!(!func_5(arg_0, arg_0)))).c;
}

fn func_8(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = ~abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, arg_1.d.a, arg_1.c.a, 62790i), ~vec4<i32>(u_input.a.x, -1i, u_input.b, arg_1.c.a)) | vec4<i32>(u_input.a.x, ~2147483647i, ~2147483647i, -arg_1.c.a));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(~10245i, min(~max(var_0.x, arg_1.d.a), 2147483647i), _wgslsmith_mult_i32(-(~u_input.b), arg_1.c.a)), firstLeadingBit(vec3<i32>(47916i, -15385i, _wgslsmith_clamp_i32(4044i, 1i, arg_1.c.a) >> (arg_1.e.x % 32u))));
    var var_2 = arg_1;
    let var_3 = func_4(false, func_4(func_6(true, Struct_4(vec3<i32>(-27513i, -3544i, 2147483647i), Struct_1(34586i, vec4<u32>(0u, 3152u, var_2.c.b.x, 0u)), Struct_2(vec3<f32>(var_2.a.x, -345f, var_2.a.x), arg_1.c.b, Struct_1(-2147483647i, vec4<u32>(arg_1.b.x, 1u, 1u, arg_1.d.b.x)), Struct_1(-28143i, vec4<u32>(66173u, 104066u, 1u, arg_1.d.b.x)), var_2.d.b.xyx))).a < ~(-27725i), Struct_1(1i, ~vec4<u32>(var_2.d.b.x, 69406u, 15017u, arg_1.e.x)), _wgslsmith_sub_i32(~5118i, func_4(true || arg_0.x, Struct_1(u_input.b, var_2.d.b), ~u_input.a.x, true).a.x), !(!select(arg_0.x, arg_0.x, false))).b, -(~arg_1.d.a ^ _wgslsmith_mod_i32(var_1.x | 26163i, 1i)), arg_0.x).c.c;
    global0 = any(!vec4<bool>(arg_0.x, all(arg_0), true, arg_0.x));
    return func_4(arg_0.x, Struct_1(max(696i, -1i), ~vec4<u32>(arg_1.e.x, min(57449u, 1u), 69576u, ~1u)), -2147483647i, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(vec2<bool>(true, false)));
    let var_1 = func_8(vec2<bool>(true, true), func_7(Struct_4(min(~vec3<i32>(1i, u_input.a.x, 14628i), min(vec3<i32>(-2147483647i, u_input.b, u_input.a.x), vec3<i32>(51264i, -2147483647i, u_input.a.x))), func_6(true, func_1()), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-778f, -368f, 124f)), func_4(true, Struct_1(u_input.a.x, vec4<u32>(54454u, 53611u, 1u, 89799u)), u_input.b, var_0.x).c.c.b, func_4(false, Struct_1(u_input.b, vec4<u32>(11325u, 14657u, 0u, 4294967295u)), u_input.a.x, var_0.x).c.d, Struct_1(2147483647i, vec4<u32>(38584u, 4294967295u, 28476u, 0u)), ~vec3<u32>(1u, 0u, 22095u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.c.a.zx);
    let var_3 = Struct_3(!select(select(vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false))), vec4<bool>(false, any(vec2<bool>(true, false)), true, select(true, true, true)), !vec4<bool>(true, var_0.x, true, var_0.x)));
    var var_4 = Struct_4(var_1.a, func_8(select(var_3.a.xy, vec2<bool>(var_0.x, var_0.x), !var_3.a.xz), Struct_2(var_1.c.a, select(min(var_1.c.c.b, vec4<u32>(var_1.b.b.x, var_1.b.b.x, 35848u, var_1.b.b.x)), firstTrailingBit(var_1.c.c.b), var_1.c.d.b.x != var_1.c.d.b.x), Struct_1(~var_1.a.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(43034u, 1u, var_1.b.b.x, 16851u), var_1.c.b, var_1.c.d.b)), func_4(all(vec2<bool>(var_3.a.x, var_3.a.x)), Struct_1(12278i, vec4<u32>(3388u, var_1.b.b.x, var_1.c.e.x, var_1.b.b.x)), -34989i, var_3.a.x).c.c, ~(~var_1.b.b.wzy))).c.d, func_1().c);
    var var_5 = var_4.c.a.x;
    var_4 = var_1;
    let var_6 = (_wgslsmith_dot_vec3_u32(var_4.c.c.b.zxy, firstTrailingBit(~var_1.c.e)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4056u, var_1.c.b.x, var_4.b.b.x, 23858u) << (var_1.b.b % vec4<u32>(32u)), vec4<u32>(13232u, min(1u, var_4.b.b.x), 20488u >> (var_1.b.b.x % 32u), _wgslsmith_div_u32(var_4.b.b.x, 0u)))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstLeadingBit(select(var_4.b.b.x, 52852u, var_0.x)), var_4.c.c.b.x), ~firstLeadingBit(max(var_1.b.b.wxz, vec3<u32>(var_1.c.b.x, var_4.c.d.b.x, 0u)))) % 32u);
    var_5 = 470f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))) * var_4.c.a.x)), reverseBits(~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_4.b.b.x), global1[_wgslsmith_index_u32(var_1.b.b.x, 24u)]) << (var_4.b.b.wz % vec2<u32>(32u)))));
}

