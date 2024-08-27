struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    return 1i;
}

fn func_2() -> Struct_2 {
    var var_0 = min(35396u, 4294967295u);
    var var_1 = vec4<i32>(2147483647i, firstLeadingBit(~(-19058i)), -1i, func_3() | -2147483647i);
    var var_2 = Struct_3(u_input.a.x, ~_wgslsmith_mult_u32(1u, min(38234u, 1u & u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1862f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(424f)), 767f, _wgslsmith_f_op_f32(1046f + -1188f), _wgslsmith_f_op_f32(min(-1324f, -821f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-440f, -558f, -809f, -1546f))))))))));
    var_1 = -(~vec4<i32>(~1i, var_1.x, var_1.x, reverseBits(var_1.x) & var_1.x));
    var var_3 = Struct_4(Struct_2(Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, false)), _wgslsmith_f_op_f32(trunc(919f)) > var_2.e.x, _wgslsmith_f_op_f32(step(-645f, var_2.c)), ~_wgslsmith_add_u32(u_input.a.x, var_2.a), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, false), select(false, false, true)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(select(~(-vec2<i32>(39174i, -66762i)), vec2<i32>(min(18938i, -17738i), countOneBits(8340i)), any(select(arg_1.a.a.e.xw, vec2<bool>(arg_1.b.x, true), arg_1.b.xy))), firstLeadingBit(vec2<i32>(max(2147483647i, -46506i), min(-2147483647i, 44653i)))), vec2<i32>(~(-2147483647i), ~(-29305i)));
    var var_1 = Struct_5(func_2(), Struct_1(vec2<bool>(_wgslsmith_f_op_f32(floor(315f)) < _wgslsmith_f_op_f32(max(373f, 2388f)), true), !(~arg_1.a.a.d < 21946u), arg_1.a.a.c, 4294967295u, vec4<bool>(arg_1.b.x, false, any(!arg_1.a.a.e), 2147483647i == ~var_0.x)), ~max(u_input.a.wzy << (u_input.a.zxy % vec3<u32>(32u)), ~vec3<u32>(152281u, arg_1.a.a.d, arg_1.a.a.d)) << (firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.yxx, u_input.a.zxz)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(-firstLeadingBit(vec3<i32>(4106i, -1i, var_0.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -1i, -1i), vec3<i32>(-2147483647i, 2147483647i, -21155i))) ^ ((vec3<i32>(var_0.x, var_0.x, var_0.x) | abs(vec3<i32>(var_0.x, 2147483647i, var_0.x))) >> (vec3<u32>(_wgslsmith_div_u32(28075u, 35251u), arg_1.a.a.d << (62461u % 32u), ~39906u) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a.c)) - 359f);
    let var_3 = ~_wgslsmith_div_i32(-1007i, -(~var_0.x));
    var var_4 = -abs(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, -1i, var_3, -1i), vec4<i32>(var_0.x, var_0.x, 17750i, var_0.x) ^ vec4<i32>(58940i, var_3, var_3, 21408i)), vec4<i32>(0i, min(var_1.d.x, var_0.x), var_0.x, abs(var_3))));
    return ~0u;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(func_2(), !vec3<bool>(!arg_1.a.a.x, true, ~4294967295u >= ~arg_2.a.d));
    let var_1 = arg_2.a.e;
    var var_2 = vec4<bool>(arg_2.a.e.x, _wgslsmith_f_op_f32(357f - -1196f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(145f, 351f)) + var_0.a.a.c) * arg_2.a.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c + 512f) - _wgslsmith_f_op_f32(trunc(-2862f))))) > 180f, (~4294967295u != ~_wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(arg_1.a.d, 1u))) & (arg_1.a.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1705f - var_0.a.a.c))));
    let var_3 = Struct_3(70520u, ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -405f)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.a.a.d, 1u ^ u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.zy, u_input.a.zy)), 0u, reverseBits(~var_0.a.a.d), ~_wgslsmith_dot_vec4_u32(vec4<u32>(148251u, 1u, arg_2.a.d, arg_0), ~vec4<u32>(u_input.a.x, 1u, arg_2.a.d, 0u))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(561f, _wgslsmith_f_op_f32(var_0.a.a.c - var_0.a.a.c))))), _wgslsmith_f_op_f32(-987f * _wgslsmith_f_op_f32(-arg_1.a.c)), _wgslsmith_f_op_f32(-405f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2107f * -378f))))));
    var_2 = !(!var_1);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, (1i | _wgslsmith_clamp_i32(1i, -8685i, -2147483647i)) | firstTrailingBit(16660i << (u_input.a.x % 32u))), vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-18578i, max(-7195i, 2147483647i))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-19907i, -1i), vec2<i32>(2147483647i, -1867i)), (vec2<i32>(9998i, 6642i) >> (var_3.d.wy % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -54608i), vec2<i32>(-1319i, -1i))), 1i));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<i32>(func_5(func_4(_wgslsmith_dot_vec3_u32(min(u_input.a.zwy, u_input.a.zwz), u_input.a.xxz), Struct_4(func_2(), vec3<bool>(false, true, false))), Struct_2(func_2().a), func_2()), _wgslsmith_mod_i32(-1i, -func_5(func_4(68361u, Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), false, 332f, 7592u, vec4<bool>(false, true, false, false))), vec3<bool>(true, false, false))), func_2(), func_2())));
    var_0 = _wgslsmith_add_vec2_i32(abs(vec2<i32>(-var_0.x, var_0.x)), vec2<i32>(2147483647i, 38367i)) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 59239u, 4294967295u, u_input.a.x), u_input.a) | ~vec4<u32>(67805u, 1u, u_input.a.x, 1u), max(~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), u_input.a)), ~91676u) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f))), -929f)));
    let var_2 = u_input.a.x;
    var_0 = countOneBits(vec2<i32>(-(abs(var_0.x) << (func_4(u_input.a.x, Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), true, 618f, 1u, vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true))) % 32u)), min(-(var_0.x | 2147483647i), reverseBits(select(var_0.x, -12518i, true)))));
    return Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)) && select(false, true, true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true), !(!(!select(false, true, true))), var_1, min(~(~9795u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_2, 4294967295u, 19978u), vec4<u32>(24335u, var_2, u_input.a.x, u_input.a.x)) & ~var_2, ~3580u << (_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(54050u, var_2)) % 32u), any(vec4<bool>(true, false, false, false)))), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, false));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + arg_2.c))) * func_1().c);
    var var_1 = ~1i;
    var var_2 = _wgslsmith_div_i32(i32(-1i) * -521i, ~(-17264i));
    var_0 = _wgslsmith_f_op_f32(sign(arg_1.c));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-223f, 1014f, arg_2.c, arg_1.c), vec4<f32>(-772f, 273f, arg_0.c, arg_0.c)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_1.c, arg_2.c, -856f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1.c, arg_0.c, 843f)))))));
    return func_2();
}

fn func_7(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_3(func_2().a.d, firstLeadingBit(u_input.a.x), arg_0.a.c, vec4<u32>(u_input.a.x, func_1().d, func_4(55557u, Struct_4(Struct_2(arg_0.a), func_2().a.e.zzz)), u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1344f, arg_0.a.c, arg_0.a.c, arg_0.a.c)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.c, arg_0.a.c, -739f, -2115f), vec4<f32>(arg_0.a.c, arg_0.a.c, 537f, 540f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, 302f, arg_0.a.c, 266f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.c, arg_0.a.c, arg_0.a.c, arg_0.a.c), vec4<f32>(arg_0.a.c, -1045f, 826f, arg_0.a.c))))));
    var_0 = Struct_3(0u, 1u, 311f, _wgslsmith_sub_vec4_u32((vec4<u32>(3925u, 21937u, var_0.d.x, var_0.b) ^ u_input.a) >> (var_0.d % vec4<u32>(32u)), ~(~(var_0.d >> (u_input.a % vec4<u32>(32u))))), var_0.e);
    var var_1 = Struct_4(arg_0, !arg_0.a.e.ywz);
    let var_2 = 1u;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-251f, func_1().c, false)), func_6(Struct_1(func_1().e.zw, ~0u >= ~var_0.d.x, var_1.a.a.c, _wgslsmith_dot_vec2_u32(vec2<u32>(11968u, var_2), u_input.a.yw), vec4<bool>(true, func_2().a.b, var_1.a.a.e.x, var_1.a.a.e.x)), Struct_1(vec2<bool>(arg_0.a.e.x & var_1.a.a.e.x, false), var_1.b.x, -1306f, 4294967295u, vec4<bool>(false, !var_1.b.x, true, false)), var_1.a.a).a.c);
    return -func_3();
}

fn func_8(arg_0: i32, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = ~vec2<i32>(_wgslsmith_mod_i32((1i << (u_input.a.x % 32u)) << (~u_input.a.x % 32u), -func_5(51628u, Struct_2(Struct_1(vec2<bool>(false, false), false, -1000f, 4294967295u, vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec2<bool>(false, true), true, 408f, 90100u, vec4<bool>(false, false, true, false))))), -2147483647i);
    var var_1 = Struct_5(Struct_2(Struct_1(func_1().e.ww, !func_1().a.x, _wgslsmith_f_op_f32(-549f + -2123f), 56006u, select(func_2().a.e, vec4<bool>(true, true, true, true), func_1().a.x))), func_6(Struct_1(vec2<bool>(func_6(Struct_1(vec2<bool>(true, true), false, 948f, u_input.a.x, vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, false), false, 538f, 1u, vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, false), true, -1382f, 1u, vec4<bool>(false, false, false, true))).a.e.x, true), true, 813f, firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), func_6(func_1(), Struct_1(vec2<bool>(true, true), false, -1164f, 104427u, vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(true, false), true, 604f, 1u, vec4<bool>(true, true, true, true))).a.e), Struct_1(select(vec2<bool>(true, true), func_1().e.zx, func_2().a.a), (u_input.a.x > u_input.a.x) & all(vec3<bool>(false, true, false)), _wgslsmith_div_f32(-226f, _wgslsmith_f_op_f32(f32(-1f) * -1718f)), select(48466u, select(u_input.a.x, u_input.a.x, true), func_2().a.b), vec4<bool>(func_1().e.x, true, false, true)), func_2().a).a, ~u_input.a.xww, vec3<i32>(arg_1.x, abs(func_3()), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(arg_1.zyw, vec3<i32>(-2147483647i, 0i, var_0.x)) >> ((u_input.a.x << (0u % 32u)) % 32u))));
    var_1 = Struct_5(var_1.a, func_6(var_1.b, Struct_1(var_1.a.a.a, true, _wgslsmith_f_op_f32(step(var_1.a.a.c, _wgslsmith_f_op_f32(-var_1.a.a.c))), u_input.a.x, func_6(Struct_1(vec2<bool>(var_1.a.a.a.x, true), false, 1355f, 13023u, vec4<bool>(false, var_1.a.a.a.x, false, var_1.a.a.a.x)), func_6(Struct_1(vec2<bool>(false, var_1.a.a.b), var_1.a.a.e.x, var_1.b.c, 9374u, vec4<bool>(true, var_1.a.a.b, var_1.a.a.b, false)), var_1.b, Struct_1(vec2<bool>(false, true), var_1.a.a.e.x, 952f, 4294967295u, vec4<bool>(var_1.b.a.x, var_1.b.e.x, var_1.a.a.b, false))).a, func_2().a).a.e), var_1.b).a, u_input.a.wwy, vec3<i32>(~(~firstTrailingBit(-1093i)), _wgslsmith_mult_i32(~(~arg_1.x), _wgslsmith_mod_i32(-7433i, var_1.d.x) >> (~15719u % 32u)), var_0.x));
    var var_2 = !vec2<bool>(true, !(var_1.a.a.c >= -481f));
    var var_3 = Struct_3(abs(~u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, var_1.b.d), var_1.b.c, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, 280f, -281f, var_1.a.a.c) * vec4<f32>(var_1.a.a.c, 1628f, -1227f, 392f)))), vec4<f32>(var_1.a.a.c, _wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(842f * var_1.a.a.c), var_1.b.c))));
    return Struct_3(u_input.a.x, func_4(u_input.a.x, Struct_4(Struct_2(func_2().a), var_1.b.e.xxw)), _wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(-var_1.b.c))), ~countOneBits(~vec4<u32>(1u, 133369u, 98364u, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)), -219f, var_3.e.x, var_3.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(func_6(func_1(), func_2().a, func_1())), vec4<i32>(_wgslsmith_div_i32(38370i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(45215i, 31750i, -7656i, -35493i), vec4<i32>(0i, -81163i, 14697i, 0i), vec4<bool>(false, true, true, false)), ~vec4<i32>(2842i, -10171i, 31209i, 1i))), 22769i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, -20876i, 0i)), -vec4<i32>(-2147483647i, -13816i, -9661i, 2147483647i), vec4<i32>(0i, 0i, -2147483647i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), (select(-1i, -20775i, true) & 12686i) ^ -23489i));
    var_0 = func_8(~(~2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, ~min(-2147483647i, 2147483647i), -8278i >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)) % 32u), ~_wgslsmith_clamp_i32(2147483647i, 1i, -704i)), abs(~abs(vec4<i32>(15846i, -8775i, 48508i, -39703i)))));
    let var_1 = Struct_5(Struct_2(func_6(func_6(func_1(), func_6(Struct_1(vec2<bool>(true, false), true, var_0.e.x, 4294967295u, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, false), false, var_0.c, u_input.a.x, vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, true), true, -1766f, var_0.a, vec4<bool>(true, true, false, false))).a, Struct_1(vec2<bool>(false, true), true, 1456f, u_input.a.x, vec4<bool>(false, false, true, true))).a, Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true, _wgslsmith_f_op_f32(step(var_0.c, 958f)), ~19552u, func_2().a.e), Struct_1(func_2().a.e.zy, any(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(-var_0.e.x), 0u << (var_0.d.x % 32u), func_1().e)).a), Struct_1(vec2<bool>(false, true), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(309f, 1050f))) + _wgslsmith_f_op_f32(min(2090f, _wgslsmith_div_f32(var_0.c, var_0.e.x)))), ~var_0.a, !(!func_1().e)), select(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(32662u, var_0.d.x, 1038u), var_0.d.zxz)), ~u_input.a.yyx, abs(countOneBits(21253u)) > var_0.b), -countOneBits(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1718i, 1i, 1i), vec3<i32>(1081i, 20649i, -25098i), false), vec3<i32>(1i, 1i, 1i))));
    let var_2 = !(1u >= u_input.a.x);
    let var_3 = var_2;
    var var_4 = var_1.a.a;
    let var_5 = vec2<u32>(~select(select(~var_1.b.d, 17977u | var_0.b, true), 0u >> (var_0.d.x % 32u), var_3), (1u >> ((var_1.c.x & ~1u) % 32u)) & ~func_2().a.d);
    var_4 = func_6(Struct_1(var_1.b.e.yw, all(vec4<bool>(var_2 && var_1.a.a.a.x, false, false, true)), var_0.e.x, ~0u & _wgslsmith_add_u32(4294967295u, var_0.b), var_4.e), func_1(), var_1.a.a).a;
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u, var_1.a.a.d), -2147483647i);
}

