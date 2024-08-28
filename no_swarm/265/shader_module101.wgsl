struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, ~2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1159f, -775f, -496f))))) - vec4<f32>(2348f, _wgslsmith_f_op_f32(sign(1265f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(854f, 1173f)), -363f)), 124f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(418f, var_1.x, -354f, var_1.x) - vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1595f, var_1.x, var_1.x, var_1.x) + vec4<f32>(-1159f, -1407f, 1757f, 243f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2570f, var_1.x, 1478f, -915f)))))));
    var var_3 = Struct_4(~vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), _wgslsmith_mod_u32(select(u_input.e, u_input.e, false), 4294967295u), ~(153007u | u_input.e), ~u_input.c.x), !(!vec2<bool>(all(vec3<bool>(false, true, false)), true)), Struct_2(Struct_1(u_input.c.x | abs(0u), firstTrailingBit(0u), select(vec3<i32>(var_0.x, 0i, u_input.a.x) << (u_input.c % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -44459i, var_0.x), true), ~vec2<u32>(14041u, 1u) >> (~u_input.d.zx % vec2<u32>(32u))), Struct_1(~13078u, abs(2200u) >> ((u_input.e ^ 1u) % 32u), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-25268i, 65715i, -33385i), vec3<i32>(var_0.x, -43544i, u_input.a.x), vec3<i32>(-65508i, 1522i, var_0.x)), -vec3<i32>(var_0.x, -2147483647i, var_0.x)), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.e, u_input.c.x), ~u_input.c.x)), 4294967295u, Struct_1(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.d.x, 0u), vec4<u32>(u_input.d.x, 39926u, u_input.c.x, 52749u)) & _wgslsmith_mult_u32(u_input.e, 4294967295u), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -1328i), ~vec3<i32>(var_0.x, var_0.x, u_input.a.x)), u_input.c.zx)), Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~1u, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 13877i, var_0.x, var_0.x), vec4<i32>(u_input.a.x, 38343i, 18771i, -7494i)), 15374i << (u_input.b % 32u), -1i >> (u_input.e % 32u)), reverseBits(u_input.c.xz) >> (~vec2<u32>(u_input.d.x, u_input.e) % vec2<u32>(32u))), Struct_1(~(~0u), u_input.b, -vec3<i32>(16158i, 2147483647i, -36214i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, u_input.a.x), vec3<i32>(2147483647i, var_0.x, u_input.a.x), vec3<i32>(2147483647i, -2147483647i, 1i)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 0u), u_input.c.zz) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.b, u_input.d.x))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(14291u, u_input.c.x)), ~_wgslsmith_clamp_vec2_u32(u_input.c.xy, u_input.d.xz, vec2<u32>(u_input.d.x, u_input.d.x))), Struct_1(35399u, ~(~u_input.c.x), vec3<i32>(i32(-1i) * -71534i, 1i, abs(u_input.a.x)), min(u_input.d.xz, u_input.c.xx))));
    let var_4 = _wgslsmith_div_vec3_i32(~var_3.d.a.c, -vec3<i32>(countOneBits(_wgslsmith_mult_i32(2147483647i, var_0.x)), i32(-1i) * -var_3.c.d.c.x, ~(~(-31231i))));
    return firstTrailingBit(u_input.d.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_u32(~1u, u_input.e), u_input.e, vec3<i32>(-2147483647i, _wgslsmith_add_i32(-1368i, u_input.a.x) << (func_3() % 32u), ~19014i), vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(3362u, 0u) >> (u_input.e % 32u))), Struct_1(u_input.d.x, u_input.e, vec3<i32>(1i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), _wgslsmith_mult_i32(-u_input.a.x, 1i)), ~_wgslsmith_add_vec2_u32(u_input.c.zz, firstTrailingBit(u_input.d.xx))), _wgslsmith_add_u32(21463u, u_input.d.x), Struct_1(4294967295u, ~(~(~u_input.d.x)), firstTrailingBit(abs(reverseBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)))), vec2<u32>(~4294967295u, ~_wgslsmith_sub_u32(u_input.e, u_input.d.x))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(224f)), 1844f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(353f, 242f, -901f), vec3<f32>(1295f, 1157f, -1799f)) + vec3<f32>(1200f, 674f, 442f))))), Struct_3(~u_input.a.x, var_0.d.c.x));
    var var_2 = Struct_4(~(~vec4<u32>(15396u, 1u, var_0.a.b, 2325u) ^ vec4<u32>(u_input.c.x, 0u, 46232u, 4294967295u)), select(!vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), Struct_2(Struct_1(~abs(0u), var_0.b.a, countOneBits(vec3<i32>(68648i, u_input.a.x, -1i)), var_0.d.d), var_0.a, ~var_0.b.b, var_0.a), Struct_2(var_0.a, Struct_1(_wgslsmith_sub_u32(firstLeadingBit(u_input.b), var_0.b.a | u_input.e), u_input.c.x, countOneBits(~vec3<i32>(var_1.b.b, 1i, -10341i)), ~var_0.d.d), select(~(0u | u_input.d.x), ~30613u, (i32(-1i) * -57660i) <= u_input.a.x), Struct_1(~_wgslsmith_div_u32(var_0.d.d.x, 0u), ~_wgslsmith_clamp_u32(1u, 52651u, u_input.b), var_0.a.c, u_input.c.xz)));
    let var_3 = Struct_4(abs(var_2.a), select(!var_2.b, vec2<bool>(abs(1u) <= _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -546f) <= var_1.a.x), false), Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.d.x, var_2.a.x << (u_input.c.x % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 29479u, 64157u), vec4<u32>(61434u, 86455u, var_0.c, var_2.d.c)), vec4<u32>(u_input.d.x, 8297u, 29409u, var_2.a.x) << (vec4<u32>(51764u, var_2.c.a.d.x, u_input.b, 34762u) % vec4<u32>(32u))), firstLeadingBit(select(var_0.d.c, vec3<i32>(2147483647i, -1i, 0i), true)), vec2<u32>(var_2.c.d.a, 49575u)), var_0.d, countOneBits(var_2.a.x), Struct_1(~34361u, min(max(var_2.a.x, var_2.a.x), _wgslsmith_sub_u32(u_input.d.x, 1u)), vec3<i32>(-var_2.d.d.c.x, var_2.c.a.c.x | 0i, var_2.d.d.c.x), ~firstTrailingBit(vec2<u32>(18168u, 1u)))), var_2.d);
    var_1 = Struct_5(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f - _wgslsmith_f_op_f32(max(891f, var_1.a.x))))), Struct_3(_wgslsmith_mod_i32(abs(reverseBits(var_0.b.c.x)), 2147483647i), -2811i));
    return -1574f;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(141f, -476f))) + -755f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1166f, 398f)) - _wgslsmith_f_op_f32(func_2())), 327f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1576f, 766f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(round(369f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1038f, 2352f) * vec2<f32>(-2111f, -649f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1161f, 356f), vec2<f32>(941f, -1942f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_1 = vec2<u32>(0u, u_input.b);
    let var_2 = u_input.c;
    var var_3 = Struct_3(-1i, ~_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, _wgslsmith_mod_i32(2147483647i, u_input.a.x)));
    return Struct_2(Struct_1(countOneBits(abs(var_1.x)) ^ 1u, firstLeadingBit(var_1.x), ~(~(~vec3<i32>(u_input.a.x, u_input.a.x, -96437i))), vec2<u32>(_wgslsmith_add_u32(~var_1.x, ~var_1.x), ~_wgslsmith_div_u32(var_1.x, 1u))), Struct_1(49130u, 1u, vec3<i32>(-(~u_input.a.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 37669i), vec2<i32>(var_3.a, 32557i)), 17565i), reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(40468u, 1u)))), var_2.x, Struct_1(8733u, 37043u, reverseBits(firstLeadingBit(vec3<i32>(u_input.a.x, var_3.b, 0i))) >> (var_2 % vec3<u32>(32u)), firstTrailingBit(u_input.d.yx)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = arg_0.c;
    var var_1 = func_1().b.c;
    var var_2 = !vec4<bool>(any(vec4<bool>(false, false, true, false)) | any(arg_0.b), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f + -1157f) * _wgslsmith_f_op_f32(floor(539f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(546f)), _wgslsmith_f_op_f32(f32(-1f) * -270f), arg_0.b.x)), any(vec3<bool>(all(arg_0.b), true, arg_0.b.x)));
    var var_3 = 914f;
    var_2 = select(select(!select(vec4<bool>(true, true, var_2.x, arg_0.b.x), !vec4<bool>(arg_0.b.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, false, var_2.x)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, var_2.x)), vec4<bool>(var_2.x, false, var_2.x, arg_0.b.x), !vec4<bool>(true, true, var_2.x, arg_0.b.x)), arg_0.b.x), vec4<bool>(arg_0.b.x, true, select(all(select(vec4<bool>(arg_0.b.x, true, false, true), vec4<bool>(arg_0.b.x, arg_0.b.x, var_2.x, false), true)), arg_0.b.x, true), var_2.x), true);
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(1594f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(312f + 1335f) - _wgslsmith_f_op_f32(ceil(-1378f))) + _wgslsmith_f_op_f32(round(-649f))), _wgslsmith_f_op_f32(trunc(-808f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-873f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_4((vec4<u32>(u_input.d.x, u_input.d.x, 13989u, 1u) & vec4<u32>(u_input.d.x, 1u, 61961u, u_input.c.x)) >> ((vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.e, u_input.e, 1u, u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<bool>(true, true), func_1(), func_1()), Struct_3(u_input.a.x & 11983i, 1689i))));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0));
    var var_3 = -firstTrailingBit(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-896f, -594f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_1.x)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(sign(-470f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 0u, ~(~max(vec2<u32>(4294967295u, 0u), u_input.c.yx)) ^ u_input.c.yy);
}

