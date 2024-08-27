struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, 1049f, -347f, 1346f) * vec4<f32>(1852f, 749f, -2847f, -860f))))))));
    var var_1 = Struct_4(u_input.a.x, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(~vec4<u32>(44702u, 31555u, 1u, 0u)), vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 18290u), vec2<u32>(1u, 0u)), ~4294967295u)), vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4078u, 56793u), vec2<u32>(1u, 77439u))), 4294967295u, ~_wgslsmith_mult_u32(11865u, 1u), abs(min(73182u, 4294967295u)))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f * -1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, -392f, var_0.x, -1167f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1342f, 565f, var_0.x, -760f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1439f, var_0.x, -1000f, -609f)) + vec4<f32>(-471f, 409f, 484f, -1265f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, _wgslsmith_f_op_f32(var_0.x * 792f), _wgslsmith_f_op_f32(var_1.c.a - var_1.c.a), _wgslsmith_f_op_f32(-356f * -242f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1649f, 264f, var_1.c.a, -1895f), vec4<f32>(var_1.c.a, var_0.x, var_0.x, -490f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-666f, 960f, var_0.x, 645f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -429f, _wgslsmith_f_op_f32(f32(-1f) * -171f), var_0.x))), true))));
    var var_2 = Struct_1(_wgslsmith_div_f32(-1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-778f + -582f))));
    var_2 = Struct_1(var_0.x);
    return var_1.c.a;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f - -657f) - -1385f))), _wgslsmith_f_op_f32(f32(-1f) * -211f)));
    var var_1 = Struct_2(vec3<bool>(true, 4140u <= ~_wgslsmith_clamp_u32(52225u, 13018u, 48420u), true));
    let var_2 = vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(14554u, 4294967295u, 1u), ~2582u, countOneBits(1u), max(0u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, 11271u, 9703u, 4294967295u)))), ~(~_wgslsmith_mult_u32(~50150u, firstTrailingBit(108650u))), min(~1u, 0u));
    var var_3 = -16697i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(476f * var_0.x))) - var_0.x));
    return Struct_2(select(select(select(!var_1.a, select(vec3<bool>(var_1.a.x, false, var_1.a.x), var_1.a, false), select(vec3<bool>(true, false, var_1.a.x), var_1.a, var_1.a)), !(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(any(var_1.a.xz), 1u > var_2.x, true)), vec3<bool>(var_1.a.x, all(vec4<bool>(true, true, true, true)), all(select(var_1.a.zx, var_1.a.zy, vec2<bool>(true, var_1.a.x)))), all(!vec3<bool>(var_1.a.x, true, var_1.a.x)) || all(var_1.a.yz)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = 50565u;
    var_0 = 4294967295u;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 902f, 393f, -3006f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2785f, -704f, -939f, 579f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1627f, -102f, -738f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1621f, -358f, -254f, 1685f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-960f, 396f, 998f, -1090f)))))), -1727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -491f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1740f)) * -1171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, -1130f)))));
    let var_2 = arg_1.d.x;
    var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, !vec4<bool>(true, true, false, arg_1.b.a.x))))), -1188f, -1000f, var_1.c);
    return -1547f;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(select(vec3<bool>(all(vec2<bool>(true, true)), _wgslsmith_div_i32(-3979i, arg_1) >= countOneBits(arg_1), true), vec3<bool>(true, !select(false, false, false), arg_0 != arg_0), true));
    var var_1 = _wgslsmith_f_op_f32(step(381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1302f)) * _wgslsmith_f_op_f32(f32(-1f) * -573f)) + _wgslsmith_f_op_f32(func_4(all(var_0.a), Struct_3(~arg_1, func_2(), var_0, countOneBits(vec2<i32>(-1i, 2147483647i))))))));
    let var_2 = _wgslsmith_mult_vec2_u32(~firstLeadingBit(~vec2<u32>(arg_0, arg_0)) | ~(~(~vec2<u32>(4294967295u, 0u))), ~select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0, 4294967295u), vec2<u32>(22767u, 1u)), vec2<u32>(14263u, 14770u)), ~vec2<u32>(4294967295u, 70925u), true));
    let var_3 = Struct_5(vec4<f32>(1215f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, 243f)), -1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1296f, 1158f)) - -1411f)), -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -750f) + -1401f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(true, Struct_3(_wgslsmith_dot_vec3_i32(u_input.b.zyz, u_input.b.wwz), var_0, var_0, min(vec2<i32>(arg_1, -2147483647i), u_input.a)))))));
    var var_4 = reverseBits(min(u_input.b, ~_wgslsmith_add_vec4_i32(u_input.b & u_input.b, u_input.b)));
    return Struct_1(736f);
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.zx)) - arg_0.zz);
    let var_1 = Struct_4(arg_1, firstLeadingBit(arg_2.b), arg_2.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(f32(-1f) * -401f)));
    var var_3 = _wgslsmith_f_op_f32(floor(var_1.c.a));
    var var_4 = vec3<f32>(arg_2.c.a, _wgslsmith_f_op_f32(func_3()), var_1.c.a);
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-672f, var_1.c.a, var_4.x, var_1.c.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, arg_0.x, arg_0.x, -893f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_1.c.a, var_0.x, arg_2.c.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.a, 1406f, -1000f, 1341f), vec4<f32>(131f, var_1.c.a, arg_2.c.a, arg_2.c.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2.c.a, arg_0.x, 1678f))))), arg_0.x, _wgslsmith_f_op_f32(-155f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), arg_0.x);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_3(-select(~firstLeadingBit(arg_2), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.zxy), vec3<i32>(arg_2, arg_2, u_input.a.x) & u_input.b.xzz), false), func_2(), Struct_2(!vec3<bool>(true, all(vec2<bool>(false, true)), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, min(arg_2 | arg_2, 24284i)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.a), arg_2), u_input.a));
    let var_1 = countOneBits(-1i);
    let var_2 = reverseBits(~vec3<u32>(1u, 1u, 1u) | vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(22053u, 4294967295u)), 0u, 1u));
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1773f, -137f, 334f) - _wgslsmith_div_vec3_f32(arg_1.a.xxy, vec3<f32>(arg_0.b, -1108f, arg_0.b))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.d)), _wgslsmith_div_f32(arg_0.c, arg_0.d), _wgslsmith_f_op_f32(floor(arg_1.b))))), _wgslsmith_clamp_i32(-2147483647i & _wgslsmith_add_i32(var_0.d.x >> (var_2.x % 32u), -2147483647i << (0u % 32u)), arg_2, _wgslsmith_div_i32(countOneBits(1i), -13562i)), Struct_4(var_1, ~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 60111u, var_2.x, var_2.x), vec4<u32>(4294967295u, 1u, var_2.x, 56667u)) << (~vec4<u32>(var_2.x, var_2.x, 5864u, var_2.x) % vec4<u32>(32u))), func_1(var_2.x, 1i))).a;
    let var_4 = reverseBits(vec2<i32>(arg_2, -u_input.a.x));
    return Struct_4(-1i, max(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_2.x, var_2.x, 1u, var_2.x), vec4<u32>(var_2.x, var_2.x, 45246u, var_2.x), vec4<bool>(false, false, var_0.b.a.x, false)), vec4<u32>(var_2.x, var_2.x, var_2.x, 74196u)), ~firstLeadingBit(vec4<u32>(4294967295u, 1u, 78812u, var_2.x))) & firstTrailingBit(select(vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u) | vec4<u32>(var_2.x, 0u, 10613u, var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(var_0.c.a.x, false, true, true))), Struct_1(1184f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(431f, 183f, -695f), _wgslsmith_div_vec3_f32(vec3<f32>(1099f, -1000f, 1000f), vec3<f32>(-1008f, -1262f, -1428f)))), vec3<f32>(-593f, _wgslsmith_f_op_f32(floor(-1213f)), _wgslsmith_f_op_f32(min(2178f, 662f)))), ~u_input.b.x, Struct_4(1i, _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 88856u, 0u, 0u), select(vec4<u32>(4294967295u, 54320u, 4294967295u, 51100u), vec4<u32>(4294967295u, 26016u, 35777u, 1u), false), countOneBits(vec4<u32>(2848u, 16696u, 0u, 44633u))), func_1(~3444u, _wgslsmith_sub_i32(-1i, 24921i)))), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(floor(-731f)), -320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(453f, -186f)) + _wgslsmith_f_op_f32(742f * 1106f)), 208f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(988f)) * 114f), _wgslsmith_f_op_f32(-336f - 1002f)), 2571f, _wgslsmith_div_f32(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_div_f32(1000f, -735f)))), u_input.b.x);
    let var_1 = 22665u;
    let var_2 = u_input.b.x;
    var var_3 = _wgslsmith_f_op_f32(-func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, 434f, 1179f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.a), -334f, _wgslsmith_f_op_f32(1574f + var_0.c.a))), ~(-max(-2147483647i, -30964i)), func_6(Struct_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(193f, var_0.c.a, var_0.c.a, 158f))), _wgslsmith_f_op_f32(-var_0.c.a), 839f, _wgslsmith_f_op_f32(-var_0.c.a)), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a, 136f, var_0.c.a, var_0.c.a) - vec4<f32>(var_0.c.a, var_0.c.a, -654f, 1541f)), _wgslsmith_f_op_f32(round(var_0.c.a)), -269f, -193f), -40327i)).c);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.a, var_0.c.a, false)))), _wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a - -1698f) + _wgslsmith_f_op_f32(floor(var_0.c.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(869f, 1277f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, -904f))))));
    var var_5 = func_5(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_4.x)), -664f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a * var_0.c.a) - _wgslsmith_div_f32(var_0.c.a, 239f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), 0i, Struct_4(var_2, abs(~vec4<u32>(0u, 61890u, var_0.b.x, var_1)), func_1(~_wgslsmith_mult_u32(var_1, var_0.b.x), _wgslsmith_sub_i32(-var_0.a, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(420f, (select(min(vec2<i32>(2147483647i, 0i), u_input.b.zw), u_input.b.xy, true) | vec2<i32>(var_0.a, u_input.a.x ^ 22702i)) | ~(~(-vec2<i32>(-1i, var_0.a))));
}

