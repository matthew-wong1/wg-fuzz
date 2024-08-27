struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(select(reverseBits(vec3<i32>(min(1i, u_input.b.x), -1i >> (u_input.a % 32u), u_input.b.x)), abs(vec3<i32>(_wgslsmith_div_i32(arg_0, u_input.b.x), 1i, select(u_input.b.x, u_input.b.x, true))), !any(vec2<bool>(true, true))), vec3<i32>(min(firstTrailingBit(-11197i), -13141i), arg_0, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, 2147483647i, 1i), ~vec4<i32>(-26663i, u_input.b.x, 1i, 31910i)), ~u_input.b.x)));
    var var_1 = select(vec3<u32>(max(_wgslsmith_sub_u32(19219u, countOneBits(u_input.c)), _wgslsmith_div_u32(1u, u_input.a) | _wgslsmith_mult_u32(u_input.c, 11267u)), u_input.a, ~abs(u_input.a ^ 22102u)), min(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 59264u, u_input.a)), ~abs(vec3<u32>(10702u, 1u, u_input.a)), reverseBits(~vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(~select(1u, 32096u, false), ~u_input.c, ~min(u_input.a, u_input.a))), any(vec4<bool>(true, !any(vec4<bool>(false, true, false, false)), true, true)));
    var var_2 = _wgslsmith_add_u32(firstLeadingBit(var_1.x), ~_wgslsmith_mult_u32(~u_input.c >> (~var_1.x % 32u), u_input.c));
    var_1 = _wgslsmith_add_vec3_u32(reverseBits(~_wgslsmith_div_vec3_u32(~vec3<u32>(9403u, 35097u, 24724u), _wgslsmith_div_vec3_u32(vec3<u32>(44688u, u_input.a, u_input.c), vec3<u32>(u_input.c, var_1.x, 1u)))), ~firstLeadingBit(_wgslsmith_div_vec3_u32(min(vec3<u32>(var_1.x, 1u, u_input.c), vec3<u32>(4294967295u, 4294967295u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 47522u, u_input.c), vec3<u32>(4294967295u, 34668u, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1096f, 395f, 915f), vec3<f32>(-484f, -1448f, -494f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1452f, -1124f, -1374f))), vec3<f32>(-348f, _wgslsmith_f_op_f32(-938f + 1000f), -515f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-516f)), _wgslsmith_f_op_f32(sign(-1245f)), _wgslsmith_f_op_f32(1584f + -166f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1955f, -632f, -508f)))))));
    return select(vec4<bool>(countOneBits(u_input.c) < 1u, select((1u > var_1.x) & all(vec2<bool>(true, true)), true, ~77381u > var_1.x), true, true), select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true))), true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(any(vec4<bool>(true, true, false, true)) != (711f == var_3.x), !all(vec3<bool>(false, true, true)), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + var_3.x))) < var_3.x));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = Struct_3(select(-select(vec4<i32>(1i, 18173i, arg_1.b.b, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b.x, -31629i, arg_1.b.d.x), vec4<i32>(arg_1.e, 58706i, arg_1.e, 1i), vec4<i32>(u_input.b.x, -1i, -2147483647i, arg_1.e)), select(vec4<bool>(false, arg_1.c.x, false, arg_1.c.x), arg_1.c, false)), ~firstTrailingBit(vec4<i32>(arg_1.e, u_input.b.x, arg_1.a.x, u_input.b.x)), !arg_1.c), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), -1037f)))));
    let var_1 = Struct_4(-firstLeadingBit(u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -813f)), firstLeadingBit(_wgslsmith_sub_i32(-1i, u_input.b.x >> (39028u % 32u))), u_input.b.x, arg_1.b.d), var_0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2305f, var_0.c.x)) + vec2<f32>(arg_0, 1021f)))), firstLeadingBit((countOneBits(arg_1.a.x) | ~arg_1.a.x) & ~_wgslsmith_clamp_i32(1i, arg_1.e, 16172i)));
    var var_2 = reverseBits(-_wgslsmith_mult_vec4_i32(var_0.a ^ vec4<i32>(var_1.e, arg_1.e, arg_1.b.d.x, var_0.a.x), max(vec4<i32>(arg_1.e, 27143i, -11560i, var_0.a.x), var_0.a))) ^ max(~(~(~var_0.a)), var_0.a);
    var_2 = ~min(firstTrailingBit(~countOneBits(var_0.a)), vec4<i32>(u_input.b.x, select(u_input.b.x, 39196i, u_input.a > u_input.c), -(var_2.x & 2147483647i), var_0.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a.a, var_1.d.x, -416f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, arg_1.b.a.a, 385f)))))));
    return !func_3(_wgslsmith_mod_i32(var_0.a.x, _wgslsmith_add_i32(1107i, -1i)));
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_4(min(_wgslsmith_mod_vec2_i32(~u_input.b | reverseBits(vec2<i32>(u_input.b.x, 1i)), abs(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b))), select(u_input.b, u_input.b, vec2<bool>(true, true)) & abs(vec2<i32>(u_input.b.x, 0i))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1405f * _wgslsmith_f_op_f32(abs(-887f)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 0i, 59344i, 2147483647i)) & 0i, ~(u_input.b.x << (u_input.c % 32u))), -(i32(-1i) * -55994i), vec3<i32>(-1i ^ (u_input.b.x >> (u_input.c % 32u)), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_sub_i32(-8499i, 8423i)), ~u_input.b.x)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_4(u_input.b, Struct_2(Struct_1(112f), -18487i, u_input.b.x, select(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(7876i, u_input.b.x, u_input.b.x), vec3<bool>(true, false, false))), func_3(~68915i), vec2<f32>(_wgslsmith_f_op_f32(trunc(732f)), _wgslsmith_f_op_f32(-267f + -886f)), ~(~(-11876i)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1015f, 1554f, false)), _wgslsmith_f_op_f32(-525f - 217f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, 215f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1646f, 1286f) * vec2<f32>(-1655f, -717f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(145f, 802f) + vec2<f32>(1435f, 674f))))))), firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-55265i, u_input.b.x), 48284i), 1i)));
    var_0 = _wgslsmith_mult_i32(~reverseBits(_wgslsmith_add_i32(u_input.b.x, var_1.a.x) | firstLeadingBit(-16592i)), u_input.b.x);
    var_0 = var_1.b.b;
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(-21163i, u_input.b.x, u_input.b.x) << (u_input.a % 32u), var_1.b.c, u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(select(max(u_input.b, u_input.b), vec2<i32>(-12965i, 2147483647i), false), vec2<i32>(reverseBits(1980i), -u_input.b.x)), _wgslsmith_clamp_i32(1i, u_input.b.x, var_1.a.x)));
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> Struct_4 {
    var var_0 = vec3<f32>(1941f, func_2().d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-188f)) + _wgslsmith_f_op_f32(1123f + -1177f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 1000f, arg_2.a)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a, var_0.x, arg_1.d.x), vec3<f32>(1278f, var_0.x, arg_0.b.a.a)))))), vec3<f32>(arg_1.d.x, 490f, _wgslsmith_f_op_f32(-666f * -710f))));
    let var_1 = !arg_0.c;
    var var_2 = func_2();
    let var_3 = arg_1.a.x;
    return Struct_4(max(vec2<i32>(arg_1.b.b, -2147483647i & arg_1.b.d.x), -(-vec2<i32>(u_input.b.x, var_3) & _wgslsmith_mult_vec2_i32(arg_1.b.d.zx, arg_0.a))), var_2.b, arg_1.c, _wgslsmith_f_op_vec2_f32(var_2.d - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)))), _wgslsmith_dot_vec2_i32(vec2<i32>(41380i, ~u_input.b.x << (~u_input.a % 32u)), vec2<i32>(arg_1.a.x, -1i)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_5(func_2(), Struct_4(~vec2<i32>(-u_input.b.x, ~u_input.b.x), Struct_2(func_2().b.a, ~(u_input.b.x >> (52952u % 32u)), u_input.b.x, vec3<i32>(1i, ~2147483647i, ~9129i)), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1030f, -747f), _wgslsmith_f_op_f32(round(-311f)))), Struct_4(abs(vec2<i32>(u_input.b.x, 0i)), func_2().b, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(884f, -544f) + vec2<f32>(-1589f, -725f)), -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1060f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1830f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, -1196f)))), ~u_input.b.x), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) - -1000f)))));
    let var_1 = func_2().b.a;
    var var_2 = func_2();
    let var_3 = Struct_3(firstTrailingBit(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-26942i, var_0.a.x, var_2.e, var_0.e), vec4<i32>(0i, var_2.a.x, u_input.b.x, var_0.a.x)))), var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))));
    var_2 = func_5(var_0, var_0, Struct_1(1099f));
    return func_2().b.a;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = -425f;
    var var_1 = !arg_2.b.x;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, arg_1.a, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1890f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-706f + _wgslsmith_f_op_f32(f32(-1f) * -268f))), !arg_2.b.x & false));
    let var_2 = ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, u_input.b.x, 0i) & vec3<i32>(-31678i, u_input.b.x, arg_2.a.x), vec3<i32>(29345i, arg_2.a.x, 2147483647i)), abs(arg_2.a.x)) ^ 0i;
    var_0 = arg_0;
    return Struct_3(select(vec4<i32>(~var_2, 0i, ~func_5(Struct_4(arg_2.a.wx, Struct_2(Struct_1(-633f), u_input.b.x, 52124i, vec3<i32>(44777i, 2147483647i, 0i)), arg_2.b, vec2<f32>(-1000f, 1000f), 0i), Struct_4(vec2<i32>(u_input.b.x, u_input.b.x), Struct_2(arg_1, arg_2.a.x, 38906i, arg_2.a.xzy), vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_2.b.x), arg_2.c, -2147483647i), Struct_1(arg_2.c.x)).e, _wgslsmith_dot_vec4_i32(max(arg_2.a, arg_2.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_2, u_input.b.x, u_input.b.x, -2147483647i), arg_2.a))), max(_wgslsmith_mod_vec4_i32(arg_2.a, vec4<i32>(18751i, u_input.b.x, 2147483647i, arg_2.a.x)), firstTrailingBit(vec4<i32>(u_input.b.x, arg_2.a.x, -21259i, u_input.b.x)) ^ vec4<i32>(var_2, 32182i, arg_2.a.x, 1i)), false), !func_4(_wgslsmith_div_f32(844f, _wgslsmith_f_op_f32(f32(-1f) * -1296f)), Struct_4(countOneBits(vec2<i32>(arg_2.a.x, -67021i)), func_5(Struct_4(vec2<i32>(2147483647i, u_input.b.x), Struct_2(arg_1, 63932i, u_input.b.x, vec3<i32>(arg_2.a.x, u_input.b.x, 31374i)), vec4<bool>(arg_2.b.x, false, false, arg_2.b.x), arg_2.c, u_input.b.x), Struct_4(vec2<i32>(arg_2.a.x, 1i), Struct_2(Struct_1(arg_0), arg_2.a.x, arg_2.a.x, vec3<i32>(828i, -2147483647i, var_2)), arg_2.b, arg_2.c, 2147483647i), arg_1).b, select(vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_2.b.x), vec4<bool>(true, false, true, false), vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_2.c.x) + vec2<f32>(-1000f, 695f)), i32(-1i) * -26975i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_2.c, arg_2.c)), arg_2.c)))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> vec4<bool> {
    var var_0 = -463f;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.c)) >> ((~vec4<u32>(u_input.c, u_input.c, 4951u, 27882u) >> ((vec4<u32>(u_input.a, 0u, 4294967295u, u_input.c) ^ vec4<u32>(u_input.a, u_input.c, 37934u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u & u_input.a, u_input.a, 81156u)), u_input.c, u_input.a);
    var_1 = vec3<u32>(~(~u_input.c), abs(min(43204u, _wgslsmith_dot_vec2_u32(var_1.zy, abs(var_1.xx)))), _wgslsmith_mult_u32(12304u, ~((var_1.x >> (var_1.x % 32u)) << (0u % 32u))));
    var var_2 = vec2<u32>(~4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), reverseBits(~u_input.c), ~(35867u | var_1.x))));
    var var_3 = vec3<u32>(firstLeadingBit(u_input.c), 18504u >> (_wgslsmith_sub_u32(u_input.a ^ 17062u, 0u) % 32u), var_1.x);
    return vec4<bool>(true, arg_1.c.x && func_2().c.x, -214f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(563f, 828f)), 1993f, false))), false || !func_4(_wgslsmith_f_op_f32(-arg_1.d.x), Struct_4(u_input.b, arg_2.b, arg_0.b, vec2<f32>(-146f, arg_1.b.a.a), 18881i)).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(any(vec3<bool>(true, false, true)), true, false));
    let var_1 = !(!(!vec3<bool>(var_0, u_input.b.x > u_input.b.x, var_0)));
    var var_2 = Struct_3(-_wgslsmith_div_vec4_i32(vec4<i32>(-7338i, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -6631i)) << (abs(vec4<u32>(40146u, ~54835u, countOneBits(39842u), _wgslsmith_clamp_u32(1u, u_input.c, u_input.c))) % vec4<u32>(32u)), !select(select(select(vec4<bool>(true, var_0, false, true), vec4<bool>(true, var_0, var_1.x, var_0), vec4<bool>(false, var_1.x, true, var_1.x)), select(vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, false, true, false), var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), select(!vec4<bool>(true, false, var_1.x, var_1.x), select(vec4<bool>(var_0, var_1.x, var_1.x, var_0), vec4<bool>(true, var_0, var_1.x, var_1.x), vec4<bool>(var_0, var_0, var_0, var_0)), var_1.x), true), vec2<f32>(-188f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-763f * _wgslsmith_f_op_f32(trunc(1088f))), _wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(920f - -923f)))));
    var_2 = Struct_3(var_2.a, var_2.b, vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))));
    var_2 = Struct_3(var_2.a, func_7(func_6(_wgslsmith_div_f32(var_2.c.x, -386f), func_1(vec4<u32>(u_input.a, 32843u, u_input.a, 1u)), Struct_3(~vec4<i32>(var_2.a.x, -1i, var_2.a.x, -21469i), func_3(0i), _wgslsmith_f_op_vec2_f32(floor(var_2.c)))), func_2(), Struct_4(_wgslsmith_add_vec2_i32(u_input.b, ~u_input.b), func_5(func_2(), Struct_4(var_2.a.zz, Struct_2(Struct_1(2433f), 25379i, 0i, var_2.a.xyw), var_2.b, var_2.c, var_2.a.x), Struct_1(var_2.c.x)).b, var_2.b, var_2.c, ~(var_2.a.x | u_input.b.x)), !(!(!var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, -1603f) * func_1(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.a)).a), _wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x)))));
    var_2 = func_6(var_2.c.x, func_5(func_2(), func_5(Struct_4(max(vec2<i32>(-20861i, -21120i), vec2<i32>(39272i, -25567i)), Struct_2(Struct_1(var_2.c.x), var_2.a.x, 26426i, var_2.a.ywx), var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, var_2.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_2.a.x, var_2.a.x, var_2.a.x), var_2.a)), func_5(Struct_4(u_input.b, Struct_2(Struct_1(var_2.c.x), -2147483647i, -24456i, var_2.a.yzw), var_2.b, var_2.c, u_input.b.x), func_5(Struct_4(var_2.a.wy, Struct_2(Struct_1(1000f), u_input.b.x, 33502i, vec3<i32>(var_2.a.x, u_input.b.x, u_input.b.x)), vec4<bool>(true, var_2.b.x, var_2.b.x, var_1.x), vec2<f32>(894f, var_2.c.x), 45328i), Struct_4(u_input.b, Struct_2(Struct_1(var_2.c.x), u_input.b.x, u_input.b.x, var_2.a.yww), vec4<bool>(true, false, var_2.b.x, var_0), var_2.c, 0i), Struct_1(-146f)), func_1(vec4<u32>(0u, 865u, u_input.c, u_input.a))), func_1(~vec4<u32>(7745u, u_input.c, u_input.c, u_input.a))), Struct_1(var_2.c.x)).b.a, func_6(-275f, Struct_1(-2174f), func_6(-1774f, Struct_1(-912f), func_6(_wgslsmith_f_op_f32(var_2.c.x + 882f), Struct_1(var_2.c.x), Struct_3(var_2.a, vec4<bool>(false, true, var_1.x, var_2.b.x), var_2.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.a.x, var_2.a.x, u_input.b.x, -17877i) << (vec4<u32>(10700u, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, var_2.a.x, var_2.a.x, u_input.b.x), var_2.a)));
}

