struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> bool {
    var var_0 = vec3<bool>(any(select(vec2<bool>(true, all(vec4<bool>(false, true, false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(569f, -448f) + _wgslsmith_f_op_f32(trunc(757f)))) <= _wgslsmith_f_op_f32(ceil(-1000f)), false);
    var var_1 = Struct_5(Struct_4(u_input.e, true, Struct_2(Struct_1(true, vec4<bool>(false, true, true, var_0.x), arg_0)), Struct_2(Struct_1(!var_0.x, !vec4<bool>(var_0.x, false, false, var_0.x), -70759i | u_input.d.x)), !(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), (vec2<u32>(~u_input.a.x, _wgslsmith_div_u32(4294967295u, 1u)) ^ ~(vec2<u32>(52027u, 0u) & u_input.a.yw)) | ~u_input.a.yy, Struct_2(Struct_1(all(vec3<bool>(var_0.x, var_0.x, false)) && (var_0.x || var_0.x), vec4<bool>(select(false, false, true), var_0.x, any(vec4<bool>(false, true, true, var_0.x)), var_0.x), 0i)), Struct_2(Struct_1(select(var_0.x, true, var_0.x) | select(var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, !var_0.x, true), arg_1.x)));
    var var_2 = _wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(f32(-1f) * -523f));
    var_1 = Struct_5(Struct_4(var_1.b.x, var_1.d.a.a, var_1.d, Struct_2(var_1.d.a), select(var_1.c.a.b, select(!var_1.a.d.a.b, var_1.d.a.b, select(var_1.d.a.b, var_1.c.a.b, var_0.x)), !select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, false, true), true))), _wgslsmith_mult_vec2_u32(countOneBits(~var_1.b), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), u_input.a.yz)) & _wgslsmith_add_vec2_u32(u_input.a.wx, abs(vec2<u32>(1u, u_input.e)))), var_1.d, Struct_2(var_1.d.a));
    var_0 = !(!vec3<bool>(var_0.x, -392f != _wgslsmith_f_op_f32(floor(-174f)), var_0.x));
    return !var_1.d.a.b.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_mult_i32(12306i, abs(firstTrailingBit(arg_2 & (0i ^ u_input.c))));
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1177f)), _wgslsmith_f_op_f32(-2207f - -547f))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(749f, -912f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1423f)), _wgslsmith_div_f32(156f, _wgslsmith_f_op_f32(abs(-1000f))))));
    var var_4 = arg_0.c;
    return select(select(false, var_4.a.a, var_4.a.a && all(!vec4<bool>(var_1, true, arg_0.c.a.a, false))), all(vec4<bool>(true, all(!vec3<bool>(true, false, var_4.a.b.x)), true, false)), any(arg_0.e.wzx));
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<bool>(any(vec2<bool>(false, false)), func_4(Struct_4(abs(u_input.e), func_3(~u_input.c, vec4<i32>(1i, u_input.d.x, 1i, u_input.d.x) & vec4<i32>(u_input.d.x, 2147483647i, 0i, u_input.d.x)), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), u_input.c)), Struct_2(Struct_1(true, vec4<bool>(false, false, false, true), -4090i)), vec4<bool>(false, false, true, true)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, u_input.e)), u_input.a.x), -_wgslsmith_div_i32(countOneBits(1i), ~u_input.c)), true, !(!(!func_3(2147483647i, vec4<i32>(2147483647i, -1i, -13866i, u_input.d.x)))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(3296u, u_input.b), vec2<u32>(_wgslsmith_clamp_u32(u_input.e, u_input.a.x, u_input.b) >> (u_input.b % 32u), ~(u_input.e ^ 13002u)), abs(abs(reverseBits(vec2<u32>(u_input.a.x, u_input.e))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1400f + -1139f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -566f), -122f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(917f, -278f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(661f * 476f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-256f)))) - 1470f)));
    var var_2 = var_0;
    var var_3 = ~u_input.b;
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(reverseBits(u_input.c), max(-38581i, -26487i)), countOneBits(-u_input.c), u_input.d.x, -reverseBits(-34767i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 8638i, 11528i), abs(vec4<i32>(1i, 1i, u_input.d.x, 0i))) & abs(firstLeadingBit(-vec4<i32>(1i, 12754i, 2147483647i, -1i))));
    return Struct_4(~1u, any(!select(select(vec4<bool>(false, true, var_0.x, true), var_0, var_0.x), select(var_0, var_0, vec4<bool>(var_2.x, true, var_2.x, var_0.x)), false)), Struct_2(Struct_1(u_input.a.x > (u_input.b ^ u_input.a.x), select(select(var_0, var_0, var_0), !var_0, u_input.b <= var_1.a.x), u_input.d.x)), Struct_2(Struct_1(var_2.x, select(select(var_0, var_0, var_0), select(vec4<bool>(false, var_0.x, var_2.x, var_2.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, false, var_0.x, false)), select(var_0, var_0, var_2.x)), abs(_wgslsmith_sub_i32(-1i, var_4)))), var_0);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_clamp_u32(~(~u_input.a.x), 0u, arg_1.a), arg_1.e.x, func_2().c, func_2().c, !vec4<bool>(any(!vec3<bool>(true, false, arg_1.c.a.b.x)), false, any(vec4<bool>(true, true, arg_1.b, arg_1.d.a.a)), arg_1.c.a.a));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f))))));
    let var_2 = Struct_5(func_2(), abs(vec2<u32>(abs(21642u), _wgslsmith_div_u32(4294967295u, 75390u)) & u_input.a.xz), Struct_2(var_0.c.a), Struct_2(func_2().c.a));
    let var_3 = -899f;
    var var_4 = vec2<f32>(var_3, 450f);
    return func_2().d.a;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = arg_1.b;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(38634i, -25503i, _wgslsmith_sub_i32(~arg_1.c << (_wgslsmith_sub_u32(arg_0.x, 4294967295u) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(u_input.c, -1i)), u_input.c << (14773u % 32u))), 0i), select(vec4<i32>(u_input.d.x, ~1i, firstTrailingBit(-1i), _wgslsmith_mod_i32(-1i, 21379i)) << (u_input.a % vec4<u32>(32u)), abs(vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(0i, arg_1.c), 2464i, -u_input.c)), all(!(!var_0.zzz))));
    let var_2 = Struct_4(reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, arg_0.x), ~u_input.a.ww)), any(!var_0.wwx), func_2().d, Struct_2(func_2().c.a), !select(vec4<bool>(false, true, func_5(vec3<f32>(1851f, -1000f, 1246f), Struct_4(u_input.a.x, arg_1.b.x, Struct_2(arg_1), Struct_2(arg_1), vec4<bool>(arg_3, true, false, arg_1.b.x))).b.x, true), !var_0, var_0));
    let var_3 = _wgslsmith_f_op_f32(-695f * 137f);
    var var_4 = Struct_5(var_2, arg_0.yx, var_2.c, func_2().c);
    return min(_wgslsmith_clamp_u32(17441u, arg_2, select(var_2.a, 37232u, any(var_2.c.a.b.zzw)) & _wgslsmith_mult_u32(abs(u_input.a.x), u_input.b)), ~arg_0.x);
}

fn func_1() -> u32 {
    var var_0 = vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, 21599u) >> (u_input.b % 32u), u_input.a.x), _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.wz, true), vec2<u32>(~0u, reverseBits(u_input.b)))), select(u_input.b, 0u, true));
    var_0 = vec3<u32>(u_input.b, func_6(~vec3<u32>(select(35626u, u_input.e, true), ~36234u, ~1u), func_5(vec3<f32>(456f, _wgslsmith_div_f32(1000f, 1101f), _wgslsmith_f_op_f32(-1815f + 1717f)), func_2()), 1u, func_5(vec3<f32>(1f, 1f, 1f), Struct_4(~u_input.a.x, 4294967295u >= var_0.x, func_2().c, func_2().d, vec4<bool>(true, true, true, true))).a), _wgslsmith_div_u32(u_input.b, u_input.a.x));
    var_0 = u_input.a.wxw;
    let var_1 = 167f;
    var var_2 = func_2().c.a;
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 24002u, 80813u, 1u) << (vec4<u32>(57991u, u_input.a.x, u_input.e, u_input.b) % vec4<u32>(32u))), u_input.a), u_input.a), 23009u);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(-2024f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-656f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(f32(-1f) * -150f)), arg_1.d.a.a != (arg_0.x > -2147483647i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1034f, -400f) * -524f) - -631f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(1320f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) * -504f)))));
    var var_1 = ~u_input.e;
    let var_2 = (firstTrailingBit(u_input.a.ywx) & firstTrailingBit(vec3<u32>(1u, ~u_input.b, ~0u))) ^ vec3<u32>(~(~arg_1.a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x, _wgslsmith_add_u32(u_input.e, 14842u)), select(_wgslsmith_mult_vec3_u32(u_input.a.ywy, u_input.a.zzw), _wgslsmith_div_vec3_u32(u_input.a.wyw, vec3<u32>(arg_1.b.x, 11346u, u_input.e)), vec3<bool>(arg_1.a.e.x, false, arg_2.x))), ~countOneBits(arg_1.b.x));
    let var_3 = arg_1.a;
    var var_4 = var_0.yx;
    return var_3.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_mult_vec3_i32(max(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, -24454i), u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, 2147483647i) >> (u_input.a.wyw % vec3<u32>(32u)), vec3<i32>(u_input.c, 2147483647i, u_input.c), u_input.d)), u_input.d), Struct_5(Struct_4(func_1(), true, Struct_2(Struct_1(true, vec4<bool>(true, false, false, false), 2147483647i)), Struct_2(func_5(vec3<f32>(482f, 272f, -205f), Struct_4(u_input.a.x, true, Struct_2(Struct_1(true, vec4<bool>(false, true, true, false), -8609i)), Struct_2(Struct_1(true, vec4<bool>(true, false, false, true), 31521i)), vec4<bool>(false, true, true, false)))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), ~(~_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.b))), func_2().c, Struct_2(func_5(vec3<f32>(-966f, 1979f, -585f), func_2()))), select(!func_5(vec3<f32>(2647f, -1620f, 602f), Struct_4(0u, false, Struct_2(Struct_1(false, vec4<bool>(false, true, false, true), -912i)), Struct_2(Struct_1(true, vec4<bool>(true, true, false, true), 25525i)), vec4<bool>(false, false, false, false))).b, func_2().e, vec4<bool>(false, false, (u_input.d.x >= -1i) && true, all(vec4<bool>(true, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, select(u_input.e ^ 63499u, ~u_input.b, true)), max(select(u_input.a.yx, u_input.a.wx, vec2<bool>(var_0.a, var_0.b.x)) & ~u_input.a.wz, u_input.a.wz & abs(u_input.a.xx))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-114f + _wgslsmith_f_op_f32(max(-571f, -280f)))))), reverseBits(~u_input.e));
}

