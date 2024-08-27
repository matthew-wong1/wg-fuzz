struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = select(reverseBits(-20818i) != u_input.a, true, (all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)) & all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))) || !(_wgslsmith_f_op_f32(sign(-785f)) < _wgslsmith_f_op_f32(select(165f, 552f, false))));
    let var_1 = _wgslsmith_div_f32(2235f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(283f)))))));
    let var_2 = Struct_2(Struct_1(select(u_input.d, u_input.c, vec4<bool>(true, true, true, true)), false, false, any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), max(vec4<i32>(u_input.a, -1i, u_input.a, 0i) | vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) | select(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), -vec4<i32>(-5182i, 1i, u_input.a, u_input.a), any(vec3<bool>(false, true, false)))), vec3<bool>(u_input.c.x > _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23805u, u_input.e.x, 62118u), u_input.d), ~u_input.d.x), !(!select(true, false, true)), all(vec3<bool>(true, true, any(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, var_1, var_1, -2408f)), vec4<f32>(329f, var_1, 1197f, var_1))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-398f, var_1, var_1, var_1), vec4<f32>(-480f, var_1, 682f, var_1)))))), Struct_1(vec4<u32>(u_input.d.x, select(0u, u_input.b, true) ^ u_input.e.x, ~max(u_input.b, 1u), ~5845u), any(vec2<bool>(true, true)) & true, true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -4567i, -2147483647i), -vec4<i32>(-20799i, u_input.a, u_input.a, 20036i)), 21513i, firstTrailingBit(31092i), ~(-1i))));
    var_0 = select(!(!(!(var_2.d.d == var_2.d.c))), var_2.a.b, true);
    let var_3 = -(i32(-1i) * -1i);
    return 1u;
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(select(abs(u_input.c), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.b, u_input.c.x, 27112u, 4294967295u)) | abs(vec4<u32>(0u, 4294967295u, u_input.e.x, u_input.c.x)), true), !(select(u_input.e.x, 1u, false) < func_3()), true, !(u_input.b >= u_input.c.x) | (-u_input.a < ~u_input.a), reverseBits(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -47345i, 1i), _wgslsmith_add_i32(2906i, u_input.a), _wgslsmith_mod_i32(u_input.a, u_input.a), -29718i))), vec3<bool>(false, _wgslsmith_add_i32(-2147483647i, max(-1i, 1854i)) < u_input.a, all(vec4<bool>(true, u_input.a < u_input.a, 4294967295u >= u_input.e.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_f_op_f32(f32(-1f) * -1308f)), _wgslsmith_f_op_f32(1f + -1466f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-917f, 663f))), 395f)), Struct_1(~countOneBits(~vec4<u32>(u_input.e.x, u_input.d.x, 4902u, u_input.d.x)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a >= u_input.a)), !(!(u_input.c.x <= u_input.d.x)), false, -vec4<i32>(u_input.a, 0i, u_input.a, u_input.a) | ~firstTrailingBit(vec4<i32>(1i, u_input.a, 1i, -16339i))));
    let var_1 = select(var_0.d.b, true, all(vec4<bool>(var_0.d.d, false, all(vec4<bool>(false, false, true, var_0.a.c)), var_0.d.d)));
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~var_0.a.a.x), ~max(u_input.d.x, 3133u), ~u_input.e.x, _wgslsmith_clamp_u32(104692u, abs(var_0.d.a.x), abs(0u))), vec4<u32>(~36174u, ~(~u_input.e.x), ~firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u) & var_0.a.a.xx, vec2<u32>(var_0.d.a.x, 4294967295u)))), all(vec2<bool>(true, true)), var_1, var_0.d.b, var_0.a.e);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, -331f) * _wgslsmith_f_op_f32(-var_0.c.x))))));
    return ~var_3.a.yy;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_5 {
    var var_0 = vec2<u32>(select(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_0.x, arg_1.x), vec4<u32>(0u, 4294967295u, arg_1.x, u_input.e.x)), true), max(~u_input.c.x & _wgslsmith_sub_u32(u_input.c.x, 4294967295u), ~4294967295u)) >> (_wgslsmith_sub_vec2_u32(arg_1, firstTrailingBit(u_input.c.zz)) % vec2<u32>(32u));
    let var_1 = Struct_4(~vec4<u32>(1u, _wgslsmith_add_u32(arg_1.x, arg_1.x), max(arg_0.x & 33652u, select(u_input.e.x, 1u, false)), 1u), Struct_2(Struct_1(reverseBits(vec4<u32>(var_0.x, 238u, 1u, 1u)), true, !all(vec4<bool>(true, false, false, false)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true)), vec4<i32>(max(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(-43031i, u_input.a)), _wgslsmith_mod_i32(-30357i, -2147483647i), ~(-2147483647i))), vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-398f, 614f, 340f, -1711f), vec4<f32>(-1317f, -1969f, -478f, -1235f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, 136f, 1000f, 919f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-686f, 1934f, 1196f, 194f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))))), Struct_1(select(~arg_0, vec4<u32>(0u, arg_0.x, 25649u, 55260u), true), true, true, true, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 6787i, 22535i), vec4<i32>(1i, 0i, u_input.a, 0i)))), _wgslsmith_mult_vec2_u32(~arg_0.xw & ~vec2<u32>(22624u, u_input.e.x), arg_1));
    let var_2 = Struct_5(1573f);
    var var_3 = firstTrailingBit(_wgslsmith_mult_i32(min(_wgslsmith_mult_i32(-var_1.b.a.e.x, -36343i), 2147483647i), -_wgslsmith_sub_i32(-var_1.b.d.e.x, countOneBits(var_1.b.a.e.x))));
    var var_4 = vec3<f32>(2575f, -1015f, -506f);
    return Struct_5(_wgslsmith_f_op_f32(var_1.b.c.x + 726f));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5) -> Struct_2 {
    let var_0 = func_4(~u_input.d | u_input.d, _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 3342u), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.b, 37936u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(735f)) - _wgslsmith_f_op_f32(floor(709f))), -256f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -682f)), var_0.a))));
    let var_2 = !(_wgslsmith_div_f32(169f, _wgslsmith_f_op_f32(sign(-976f))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    var var_3 = vec2<u32>(~u_input.e.x, u_input.e.x);
    var_3 = ~vec2<u32>(1u, u_input.c.x);
    return Struct_2(Struct_1(~u_input.d, true, !var_2, !(var_2 && true), arg_0 & ~(vec4<i32>(32884i, arg_0.x, arg_0.x, -6885i) | vec4<i32>(u_input.a, u_input.a, 8731i, -2147483647i))), vec3<bool>(var_2, true, all(vec3<bool>(any(vec3<bool>(false, var_2, true)), arg_0.x > 1i, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_vec4_f32(select(var_1, vec4<f32>(960f, -1054f, 1051f, 1000f), vec4<bool>(var_2, var_2, false, var_2)))))))), Struct_1(~vec4<u32>(var_3.x | u_input.b, _wgslsmith_clamp_u32(var_3.x, u_input.b, 4294967295u), u_input.b, ~u_input.d.x), (arg_1.a < _wgslsmith_f_op_f32(-519f - var_1.x)) | (!var_2 & !var_2), false, !(-2147483647i <= _wgslsmith_mod_i32(u_input.a, -1i)), (vec4<i32>(239i, arg_0.x, u_input.a, -26273i) ^ abs(arg_0)) << (vec4<u32>(~u_input.c.x, u_input.e.x >> (u_input.b % 32u), u_input.e.x, var_3.x >> (var_3.x % 32u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = func_5(~arg_0.e, func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(~56168u, reverseBits(4294967295u), ~arg_0.a.x, u_input.c.x >> (4294967295u % 32u)), u_input.c), (func_2() << (abs(u_input.e.yy) % vec2<u32>(32u))) << (firstLeadingBit(vec2<u32>(u_input.d.x, 62990u)) % vec2<u32>(32u))));
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1690f), func_5(arg_0.e, Struct_5(226f)).c.x <= var_0.c.x)), var_0.c.x), -1686f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1051f, _wgslsmith_f_op_f32(418f + 316f), 182f)))) + _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<u32>(u_input.e.x, u_input.d.x, u_input.e.x, 21758u) ^ vec4<u32>(u_input.b, u_input.c.x, u_input.e.x, u_input.b), _wgslsmith_dot_vec3_u32(u_input.c.xyz, u_input.e) == _wgslsmith_sub_u32(15829u, u_input.c.x), false, true, -vec4<i32>(37745i, u_input.a, -3452i, 31030i)))));
    let var_1 = select(!(!func_5(vec4<i32>(u_input.a, u_input.a, u_input.a, 33302i), func_4(u_input.c, u_input.c.xz)).b), func_5(vec4<i32>(max(~(-1i), abs(1i)), u_input.a, 0i, max(firstTrailingBit(25305i), u_input.a)), func_4(vec4<u32>(0u, u_input.b, u_input.b, u_input.d.x) << (u_input.d % vec4<u32>(32u)), u_input.c.zw)).b, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.b), vec3<u32>(1u, u_input.c.x, 8373u)) != 393u, any(vec2<bool>(true, u_input.e.x < 4294967295u)), true));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), false)), _wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))), !func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(33129i, 1i, -1948i, 1i), vec4<i32>(25263i, -38350i, 0i, u_input.a)), Struct_5(var_0.x)).d.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * -630f), var_0.x, var_1.x)) * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-250f - -134f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), var_0.x);
    let var_3 = Struct_5(_wgslsmith_f_op_f32(ceil(-1221f)));
    let var_4 = Struct_4(vec4<u32>(36025u, ~abs(_wgslsmith_clamp_u32(u_input.d.x, 0u, 0u)), u_input.e.x, u_input.c.x), func_5(~vec4<i32>(min(u_input.a, u_input.a), ~u_input.a, u_input.a >> (u_input.c.x % 32u), 1i), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(446f, var_0.x) + var_3.a))), vec2<u32>(func_5(vec4<i32>(u_input.a, i32(-1i) * -3804i, _wgslsmith_mod_i32(u_input.a, -2147483647i), ~u_input.a), func_4(vec4<u32>(0u, u_input.b, u_input.d.x, 16419u) >> (vec4<u32>(15981u, u_input.d.x, u_input.c.x, 4166u) % vec4<u32>(32u)), u_input.d.zy << (u_input.d.zw % vec2<u32>(32u)))).d.a.x, u_input.d.x));
    let var_5 = Struct_4(vec4<u32>(var_4.b.d.a.x, ~0u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 16626u), ~u_input.d.xy), ~var_4.a.x, countOneBits(_wgslsmith_sub_u32(u_input.c.x, 0u) << (u_input.d.x % 32u))), Struct_2(var_4.b.a, select(!vec3<bool>(false, false, var_1.x), func_5(var_4.b.d.e, func_4(vec4<u32>(var_4.c.x, 1u, var_4.a.x, 24603u), vec2<u32>(22383u, u_input.b))).b, !(!vec3<bool>(false, false, var_4.b.b.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1232f)), func_5(_wgslsmith_add_vec4_i32(-vec4<i32>(var_4.b.a.e.x, var_4.b.d.e.x, u_input.a, var_4.b.d.e.x), vec4<i32>(2147483647i, u_input.a, -1i, var_4.b.d.e.x)), Struct_5(_wgslsmith_div_f32(-1514f, -663f))).a), u_input.c.wx);
    var var_6 = var_4.b;
    let var_7 = ~1282u;
    var_6 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, countOneBits(func_5(var_4.b.d.e, func_4(var_6.a.a, var_5.a.xy)).d.e.x)));
}

