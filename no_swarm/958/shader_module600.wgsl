struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(219f + var_0.x))))), -1000f);
    let var_2 = Struct_4(vec3<bool>((abs(-7600i) < u_input.b.x) & (arg_0 & true), !(abs(u_input.b.x) < arg_2.d.c.x), arg_0), select(select(select(vec3<bool>(arg_0, false, false), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, true), true), true), !(!vec3<bool>(true, arg_0, true)), select(!vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0))), vec3<bool>(false, true, all(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, false), arg_0))), firstTrailingBit(arg_1 << (4294967295u % 32u)) <= ~u_input.a), arg_2.e, u_input.a);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.b.a), -855f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.c.a.a, -114f), _wgslsmith_f_op_f32(round(var_2.c.b.a)), false || var_2.b.x)), all(select(var_2.a.xy, var_2.a.xz, vec2<bool>(true, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + 1516f) - _wgslsmith_f_op_f32(-arg_2.a.x)))));
    return ~min(u_input.a, arg_1);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = Struct_4(!vec3<bool>(true, true, ~120507u <= ~u_input.a), !vec3<bool>(true, false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1486f - _wgslsmith_f_op_f32(1680f - 1000f)), ~(~arg_1)), Struct_1(720f, vec4<u32>(min(76460u, u_input.a), u_input.a, 4294967295u, ~arg_2)), firstLeadingBit(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xz), vec2<i32>(u_input.b.x, arg_0), vec2<bool>(false, true)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1923u, 40633u, 1u)), vec3<u32>(24350u, arg_1.x, arg_1.x)), u_input.a, _wgslsmith_sub_u32(arg_1.x, u_input.a)) << (~abs(_wgslsmith_dot_vec3_u32(arg_1.yzx, arg_1.zxz)) % 32u));
    var var_1 = Struct_1(_wgslsmith_div_f32(var_0.c.a.a, _wgslsmith_f_op_f32(select(-267f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.a, var_0.c.a.a)), var_0.b.x))), ~(~_wgslsmith_sub_vec4_u32(var_0.c.a.b ^ vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u), var_0.c.a.b)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(~u_input.a, reverseBits(arg_2), var_0.d), var_0.c.b.b.x, ~_wgslsmith_add_u32(u_input.a, 4294967295u)), _wgslsmith_mod_vec4_u32(var_1.b, var_1.b)));
    var var_2 = Struct_4(var_0.b, !vec3<bool>(!all(vec2<bool>(true, false)), !all(var_0.b), var_0.b.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(628f)), 1f, false)), vec4<u32>(reverseBits(u_input.a), ~4294967295u, 55430u, arg_2)), var_0.c.a, u_input.b.zz), ~1u);
    var var_3 = false;
    return _wgslsmith_mult_u32(reverseBits(~29998u) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.b.x, arg_1.x), min(vec2<u32>(var_2.c.a.b.x, 1u), vec2<u32>(45164u, var_2.c.b.b.x))), 0u);
}

fn func_2() -> u32 {
    var var_0 = ~(~vec3<u32>(~1u, ~63608u, u_input.a));
    var var_1 = u_input.b;
    var_0 = vec3<u32>(~var_0.x, func_4(i32(-1i) * -28545i, vec4<u32>(var_0.x, ~var_0.x, func_3(false, 13154u << (1u % 32u), Struct_3(vec2<f32>(132f, 2044f), Struct_1(164f, vec4<u32>(88901u, var_0.x, 0u, var_0.x)), u_input.a, Struct_2(Struct_1(-432f, vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.a)), Struct_1(-1019f, vec4<u32>(u_input.a, u_input.a, 5579u, 1744u)), u_input.b.wx), Struct_2(Struct_1(-800f, vec4<u32>(u_input.a, 56288u, 46690u, u_input.a)), Struct_1(295f, vec4<u32>(u_input.a, 0u, u_input.a, 1u)), vec2<i32>(-2147483647i, var_1.x)))), _wgslsmith_sub_u32(0u, var_0.x)), ~(~(var_0.x ^ 1u)), -2147483647i), 4294967295u);
    var_1 = min(select(~u_input.b, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b | vec4<i32>(var_1.x, 24341i, 18679i, u_input.b.x), vec4<i32>(-1i, -1i, 2147483647i, 0i)), _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), select(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, false, true, true), !all(vec4<bool>(false, false, true, true)))), vec4<i32>(_wgslsmith_mod_i32(8166i, -5682i), ~var_1.x, -18277i, ~firstTrailingBit(u_input.b.x)) | u_input.b);
    let var_2 = (~(~(~vec3<u32>(u_input.a, var_0.x, 12151u))) & select(~abs(vec3<u32>(4294967295u, var_0.x, var_0.x)), vec3<u32>(~15813u, u_input.a, var_0.x), vec3<bool>(true, true, true))) & _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(countOneBits(0u)), 11079u, var_0.x), vec3<u32>(1u, var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 38556u), var_0.yy), vec2<u32>(52692u, 51360u) & vec2<u32>(var_0.x, var_0.x))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 47350u, 4294967295u, 1u), vec4<u32>(4294967295u, var_0.x, 87219u, var_2.x)), _wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(var_0.x, 0u)), _wgslsmith_div_u32(0u, var_0.x)) << (~var_2 % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(var_0.x, 1u) << (var_2.x % 32u), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1986u, 41100u, var_2.x, var_0.x), ~vec4<u32>(u_input.a, var_2.x, 1u, 1u)))) ^ func_4(abs(1i), abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, u_input.a, 4294967295u, 13155u), vec4<u32>(var_2.x, 0u, u_input.a, var_2.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_2.x, var_2.x), vec4<u32>(1u, 1u, 70714u, var_2.x))), var_2.x, max(var_1.x, u_input.b.x));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, firstTrailingBit(_wgslsmith_div_u32(u_input.a, u_input.a)), u_input.a, _wgslsmith_div_u32(func_2(), ~u_input.a))), abs(~vec4<u32>(u_input.a, 0u, firstLeadingBit(0u), func_2())), _wgslsmith_div_vec4_u32(((vec4<u32>(u_input.a, 16212u, 95051u, u_input.a) >> (vec4<u32>(18067u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) | ~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)) | abs(min(vec4<u32>(u_input.a, 37622u, u_input.a, 15647u), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a))), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 17947u, 4294967295u, 52449u), vec4<u32>(24881u, 14298u, 7995u, 25397u)), vec4<u32>(46449u, u_input.a, 23594u, 25034u), 42334u != u_input.a) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))));
    var var_1 = -vec4<i32>(~(u_input.b.x ^ countOneBits(-33904i)), u_input.b.x | -abs(u_input.b.x), u_input.b.x, max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 2147483647i), u_input.b.x << (var_0.x % 32u)), max(u_input.b.x, 20088i)));
    var var_2 = func_2();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(ceil(-1978f))), _wgslsmith_f_op_f32(abs(-227f)));
    let var_4 = -323f;
    return firstLeadingBit(~func_4(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), var_0, 7408u, -32219i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(func_1(), u_input.a), firstLeadingBit(~func_1()), 0u, ~(~vec4<i32>(min(u_input.b.x, -2147483647i), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 14612i), abs(u_input.b.x), ~(-6461i))), u_input.b.x);
}

