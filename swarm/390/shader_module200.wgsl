struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2202f, -1308f, -334f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, -492f, 839f))) * vec3<f32>(_wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(ceil(-372f))), _wgslsmith_f_op_f32(-207f - 466f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-457f, -186f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(511f * 1000f), _wgslsmith_f_op_f32(select(-1417f, 1398f, false))), true)) + 1f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(956f)), _wgslsmith_f_op_f32(516f - 1584f), all(vec3<bool>(true, false, false))))), -429f), Struct_1(vec4<bool>(!select(false, true, true), min(u_input.a.x, 1067u) >= u_input.a.x, any(vec2<bool>(false, false)), true), _wgslsmith_sub_vec4_u32((u_input.a << (u_input.a % vec4<u32>(32u))) | ~vec4<u32>(u_input.d, 44324u, u_input.d, u_input.d), u_input.a), -1i, !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-680f, -1864f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1017f, -684f)))))), !select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(false, false, true))), u_input.b.x <= (i32(-1i) * -10263i)));
    var var_1 = ~vec2<u32>(u_input.d, 3334u);
    let var_2 = !var_0.d.a;
    let var_3 = Struct_1(select(select(vec4<bool>(!var_2.x, !var_2.x, true, all(var_2.yz)), select(select(vec4<bool>(var_0.d.a.x, var_0.e.x, false, var_0.e.x), vec4<bool>(var_2.x, var_2.x, true, false), var_2), vec4<bool>(true, false, true, true), all(var_2)), true), vec4<bool>(any(vec3<bool>(true, true, true)), true, var_2.x, any(var_2.xxw)), !var_0.d.d.x), abs(abs(~var_0.d.b)), var_0.d.c, var_2.xzz, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.d.e))))));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.x, _wgslsmith_f_op_f32(f32(-1f) * -704f), -297f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.e.x - var_3.e.x), 1198f)) - -1737f)), var_0.a.yy, Struct_1(!select(select(var_2, var_0.d.a, true), !vec4<bool>(var_0.e.x, false, true, var_0.d.a.x), !vec4<bool>(var_3.a.x, true, false, true)), ~u_input.a, var_3.c, vec3<bool>(false, !var_2.x, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_div_f32(468f, 609f))))), vec2<bool>(var_0.d.d.x, var_2.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -1342f);
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 * arg_3.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), arg_0)))), arg_3.yw, Struct_1(vec4<bool>(!any(vec3<bool>(false, false, true)), false, any(vec3<bool>(false, true, false)) | true, select(true, false, true)), ~vec4<u32>(1u << (arg_1.x % 32u), ~0u, arg_2.x, u_input.d | 2519u), 27273i, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), all(vec4<bool>(false, true, false, true))), _wgslsmith_div_vec2_f32(arg_3.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2391f, -970f)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, true, false))), vec2<bool>(true, any(vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-1i) * -(u_input.b.zw ^ u_input.b.wz), u_input.b.xz), u_input.b.yx, min(~(-reverseBits(vec2<i32>(-1i, u_input.c))), vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -11801i, var_0.d.c), vec3<i32>(var_0.d.c, 1i, 0i), false), -vec3<i32>(-23237i, -26848i, 23948i)), _wgslsmith_div_i32(countOneBits(var_0.d.c), var_0.d.c))));
    let var_2 = var_0.d;
    let var_3 = true;
    let var_4 = ~abs(_wgslsmith_mod_u32(0u, ~1u));
    return all(!(!vec3<bool>(true, var_2.b.x > u_input.d, true)));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = select(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1096f)), ~abs(abs(vec3<u32>(948u, u_input.d, u_input.d))), ~(~vec4<u32>(32664u, 0u, 4294967295u, 1u) ^ ~vec4<u32>(u_input.d, u_input.d, u_input.a.x, 44056u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(842f, -1344f, 1219f, 169f), vec4<f32>(-481f, 753f, 818f, -955f), true))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-980f, -1011f, 1310f, 304f))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-438f, _wgslsmith_f_op_f32(min(938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(632f, -1579f))))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(abs(358f))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)), var_1.x)) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-933f - var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(250f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(276f)))))), _wgslsmith_f_op_f32(select(-523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(ceil(-790f)))), all(!(!vec4<bool>(var_0.x, var_0.x, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) + _wgslsmith_f_op_vec2_f32(sign(var_1))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -322f) + var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1146f)), true)))), Struct_1(vec4<bool>(!any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), func_4(var_1.x, u_input.a.wzz, vec4<u32>(4294967295u, u_input.d, 1u, 4294967295u), vec4<f32>(-2438f, -667f, -103f, var_1.x)) & var_0.x, all(vec3<bool>(true, true, false)), true), u_input.a, u_input.b.x, select(vec3<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec3<bool>(var_0.x, all(vec2<bool>(var_0.x, true)), u_input.c != -60450i), any(!vec4<bool>(true, true, var_0.x, var_0.x))), var_1), vec2<bool>(!var_0.x | ((var_0.x & true) || true), true));
    var var_3 = max(~(~u_input.b.wzy >> (vec3<u32>(min(u_input.d, 4294967295u), var_2.d.b.x, ~78475u) % vec3<u32>(32u))), u_input.b.yxz);
    var var_4 = var_2.a.x;
    return var_2.d.b.x;
}

fn func_5(arg_0: i32) -> Struct_3 {
    let var_0 = 502f;
    var var_1 = Struct_2(Struct_1(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, any(vec3<bool>(true, true, true))), vec4<u32>(max(u_input.d, u_input.d << (0u % 32u)), u_input.a.x | 4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.d), 1u), firstTrailingBit(24316u)), arg_0, vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), Struct_1(select(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), ~vec4<u32>(func_2(23112i), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(41030u, 1u, 1u, 0u)), u_input.a.x ^ 28229u, 35770u), ~1i, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(865f, -751f)))))), vec2<bool>(~0u < ~_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.wz), all(vec3<bool>(true, true, true))));
    var var_2 = Struct_2(var_1.b, Struct_1(select(select(!vec4<bool>(true, var_1.b.a.x, true, true), select(vec4<bool>(var_1.b.a.x, true, var_1.b.d.x, false), var_1.b.a, false), var_1.b.a.x), !vec4<bool>(false, false, false, var_1.c.x), vec4<bool>(var_1.b.d.x, any(var_1.c), true && var_1.c.x, false)), min(~var_1.b.b, ~var_1.a.b), u_input.b.x, vec3<bool>(true, true, false), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(-265f))), _wgslsmith_f_op_f32(abs(var_1.a.e.x)))), var_1.c);
    var var_3 = Struct_2(Struct_1(select(var_2.a.a, !select(vec4<bool>(var_2.b.a.x, true, true, false), var_2.a.a, var_2.c.x), vec4<bool>(all(vec4<bool>(var_2.a.a.x, var_2.a.a.x, true, false)), true, true, var_1.c.x)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 23400u, 1u, 49264u), ~u_input.a), select(vec4<u32>(0u, 1u, var_2.a.b.x, var_1.a.b.x), ~var_1.a.b, !var_1.b.d.x)), firstLeadingBit(i32(-1i) * -2147483647i), !vec3<bool>(var_1.b.d.x, var_1.b.d.x, !var_1.b.d.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1268f, 879f))))))), Struct_1(select(select(!var_2.b.a, vec4<bool>(true, var_1.b.a.x, var_2.c.x, true), !var_1.b.a), var_1.a.a, select(vec4<bool>(true, var_2.c.x, var_1.a.d.x, false), !var_1.a.a, vec4<bool>(var_2.a.d.x, var_2.b.d.x, var_1.c.x, false))), reverseBits(~var_1.a.b), -2147483647i, var_1.b.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.a.e))) - var_2.b.e)), !(!(!select(var_2.a.d.yy, var_1.c, var_2.b.a.x))));
    var_2 = Struct_2(Struct_1(!vec4<bool>(var_2.b.c != 2147483647i, !var_2.a.d.x, !var_3.c.x, all(var_2.b.a.xxy)), var_1.a.b, firstLeadingBit(~(~u_input.c)), vec3<bool>(var_2.c.x | (var_3.a.e.x < 1000f), true & var_2.a.a.x, any(select(vec3<bool>(true, var_3.c.x, var_3.b.d.x), var_1.b.a.wyx, var_3.a.a.zyx))), _wgslsmith_div_vec2_f32(var_2.b.e, var_2.a.e)), Struct_1(select(var_1.b.a, vec4<bool>(4294967295u >= var_2.b.b.x, true, true, true), true), var_3.a.b, 0i, vec3<bool>(u_input.d == var_1.b.b.x, true, false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.e.x)), _wgslsmith_f_op_f32(var_2.b.e.x + 168f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1401f, -1033f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_2.a.e.x))), select(var_1.c, select(vec2<bool>(true, true), var_2.c, true), true)))), var_1.a.a.zx);
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.x, var_2.a.e.x, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(139f, -899f, 171f) + vec3<f32>(var_2.a.e.x, var_0, 948f)))), vec3<f32>(207f, var_1.a.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0))))), var_1.a.e.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.b.e.x)), var_2.b.e.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1197f, 343f), vec2<f32>(-150f, var_0), vec2<bool>(var_1.c.x, var_3.b.a.x))), vec2<f32>(var_1.b.e.x, var_0), var_2.b.d.x | var_1.a.a.x)), var_1.b.e)), vec2<bool>(true, true))), Struct_1(!var_2.a.a, ~var_3.a.b, 1i, var_2.a.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_1.b.e.x)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(895f, var_1.a.e.x), var_3.a.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, var_2.a.e.x)))))), !select(select(vec2<bool>(var_2.a.a.x, var_2.c.x), !var_1.a.a.yx, select(vec2<bool>(var_3.b.a.x, var_1.b.a.x), var_3.c, vec2<bool>(false, true))), vec2<bool>(!var_1.b.d.x, var_3.b.d.x), var_1.a.a.xx));
}

fn func_1() -> u32 {
    var var_0 = func_5((-u_input.b.x ^ 30254i) >> (func_2(firstTrailingBit(_wgslsmith_sub_i32(u_input.b.x, 2147483647i))) % 32u));
    var_0 = func_5(~u_input.c);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -410f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, 178f)))), 590f), Struct_1(func_5(var_0.d.c).d.a, _wgslsmith_mult_vec4_u32(u_input.a, ~(~vec4<u32>(0u, var_0.d.b.x, var_0.d.b.x, var_0.d.b.x))), -44519i, var_0.d.d, _wgslsmith_f_op_vec2_f32(-var_0.d.e)), func_5(select(-var_0.d.c, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 18595i), u_input.c), true)).e);
    let var_1 = u_input.a.yw;
    let var_2 = func_5(var_0.d.c);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_1(), 33596u) >> (~u_input.a.x % 32u);
    var var_1 = vec2<bool>(false, all(vec4<bool>(true, true, select(select(false, false, true), false, false), func_4(-1400f, u_input.a.xzy, max(u_input.a, vec4<u32>(var_0, var_0, u_input.d, u_input.d)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1371f, -858f, -1000f, 2266f)))))));
    var var_2 = -506f;
    var_2 = 1334f;
    var var_3 = 101481u;
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(-774f)), -1000f, -134f)))), _wgslsmith_f_op_f32(floor(-815f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, 928f))))) * func_5(-u_input.b.x).a.yx), Struct_1(select(vec4<bool>(var_1.x, true, all(vec2<bool>(false, true)), false), func_5(1i).d.a, all(select(vec2<bool>(true, var_1.x), vec2<bool>(true, false), var_1.x))), reverseBits(firstLeadingBit(~u_input.a)), ~(-_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.c)), vec3<bool>(false, true, true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2389f, 1023f))), _wgslsmith_f_op_f32(f32(-1f) * -483f))), vec2<bool>(!(!any(vec4<bool>(var_1.x, true, true, false))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)) * var_4.c.x), var_4.c.x), _wgslsmith_div_i32(~(-66328i), _wgslsmith_sub_i32(u_input.c, 1i) ^ 1i), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.a + vec3<f32>(var_4.a.x, var_4.a.x, var_4.d.e.x))), _wgslsmith_f_op_vec3_f32(-var_4.a), var_4.d.d)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-573f, _wgslsmith_f_op_f32(-1000f + 166f), _wgslsmith_f_op_f32(-var_4.a.x))))));
}

