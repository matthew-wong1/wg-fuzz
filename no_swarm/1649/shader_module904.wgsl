struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<u32> {
    return countOneBits(vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = !vec2<bool>(true, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_1 = Struct_3(arg_0.c.x, Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, u_input.a.x, 1556i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.a.x, -11826i, -14067i), vec3<i32>(-1i, arg_1.c.a.x, 0i))), Struct_1(~vec4<u32>(1u, arg_0.c.x, 1u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.b.a.x, ~arg_0.c.x, arg_0.b.a.x << (arg_0.b.a.x % 32u), _wgslsmith_mod_u32(arg_1.a, arg_1.c.c.x)), vec4<u32>(abs(arg_1.c.c.x), 4294967295u, ~arg_0.b.a.x, ~20548u), vec4<u32>(4294967295u, arg_1.a, 20617u, ~26995u)), abs(1i), arg_0.e), arg_0);
    return -1198f;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> f32 {
    global0 = array<vec3<i32>, 16>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1276f * 777f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2733f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(global0[_wgslsmith_index_u32(~arg_0, 16u)], Struct_1(vec4<u32>(arg_0, 27015u, 44694u, arg_0)), max(vec4<u32>(49138u, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(arg_0, 19546u, 15660u, 17942u) | vec4<u32>(arg_2.x, 33921u, 0u, arg_2.x)), _wgslsmith_mod_i32(u_input.a.x & u_input.a.x, abs(u_input.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-271f, -2881f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-737f, -124f))))), Struct_3(arg_2.x, Struct_2(firstTrailingBit(vec3<i32>(0i, 8120i, 2147483647i)), Struct_1(vec4<u32>(arg_0, 0u, 38739u, 4294967295u)), func_3(u_input.a.x, vec3<bool>(false, arg_1.x, false)), -1i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(897f, 1241f)))), Struct_2(global0[_wgslsmith_index_u32(~arg_0, 16u)], Struct_1(vec4<u32>(93911u, arg_2.x, arg_0, 4294967295u)), firstLeadingBit(vec4<u32>(arg_0, 21910u, 0u, 57572u)), -2147483647i, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-773f, 843f), vec2<f32>(133f, -950f))))), _wgslsmith_f_op_f32(select(429f, _wgslsmith_f_op_f32(f32(-1f) * -186f), (true != arg_1.x) && true)))) * _wgslsmith_f_op_f32(abs(916f)));
    var_0 = -100f;
    var var_1 = -1000f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(-28352i, _wgslsmith_mod_i32(u_input.a.x, -20461i & _wgslsmith_mult_i32(u_input.a.x, 8248i))), countOneBits(abs(_wgslsmith_add_i32(-1i, u_input.a.x)) | -33550i), countOneBits(~u_input.a.x));
    global0 = array<vec3<i32>, 16>();
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -firstLeadingBit(u_input.a.x)), var_0.x), -abs(~var_0.x >> (countOneBits(arg_0) % 32u)));
    var var_3 = arg_1.x;
    return Struct_2(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(~arg_0, 16u)], var_0), Struct_1(vec4<u32>(select(countOneBits(1u), arg_0, true), arg_0, 14128u, 1u)), vec4<u32>(0u, _wgslsmith_add_u32(~select(arg_0, 1u, false), firstLeadingBit(39106u) | (arg_0 | arg_0)), min(_wgslsmith_div_u32(20104u, ~1u), ~48369u ^ _wgslsmith_mod_u32(49202u, arg_0)), reverseBits(arg_0)), u_input.a.x, _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 1526f), _wgslsmith_f_op_vec2_f32(trunc(arg_1)), true)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1798f, arg_2.b.e.x)) * -2066f), _wgslsmith_f_op_f32(303f * _wgslsmith_f_op_f32(-1311f - arg_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.e.x)));
    var var_1 = func_5(func_5(13315u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b.e.x, var_0.x), var_0.yx, false)), var_0.xy, arg_3 == arg_3))), _wgslsmith_f_op_f32(-2484f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e.x))))).c.x, _wgslsmith_f_op_vec2_f32(round(var_0.xz)), _wgslsmith_f_op_f32(sign(214f))).b;
    let var_2 = vec2<u32>(arg_0.b.a.x ^ arg_1.a.x, 0u | (~23120u | select(0u, arg_2.b.c.x, false)));
    var_1 = Struct_1(~vec4<u32>(max(var_1.a.x, arg_2.a) | _wgslsmith_mod_u32(4294967295u, 17454u), var_1.a.x << ((68609u << (arg_0.b.a.x % 32u)) % 32u), ~(6733u & arg_1.a.x), _wgslsmith_dot_vec4_u32(~var_1.a, countOneBits(arg_2.b.c))));
    var var_3 = vec4<bool>(true, select(any(vec3<bool>(true, any(vec4<bool>(true, arg_3, false, false)), arg_3)), arg_3, all(select(vec3<bool>(true, arg_3, arg_3), !vec3<bool>(arg_3, arg_3, true), all(vec4<bool>(true, true, false, arg_3))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.b.e.x, _wgslsmith_div_f32(arg_2.c.e.x, -1349f)))) == _wgslsmith_f_op_f32(-arg_2.c.e.x), arg_3);
    return -u_input.a.x;
}

fn func_1() -> vec4<f32> {
    global0 = array<vec3<i32>, 16>();
    var var_0 = -(~func_6(func_5(4294967295u, vec2<f32>(1020f, 417f), _wgslsmith_f_op_f32(func_2(1u, vec2<bool>(false, true), vec2<u32>(11867u, 10189u)))), Struct_1(vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(4294967295u, func_5(1u, vec2<f32>(1920f, -1000f), 765f), Struct_2(vec3<i32>(13136i, u_input.a.x, 1i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 21622u)), vec4<u32>(4294967295u, 97911u, 1u, 4294967295u), -1i, vec2<f32>(1887f, -1000f))), select(true, true, true)));
    var_0 = -(func_6(func_5(~70656u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1174f, -499f) + vec2<f32>(-363f, 430f)), -705f), func_5(4294967295u >> (0u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-657f, -1340f)), -272f).b, Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(79079u, 1u), vec2<u32>(1u, 79757u)), Struct_2(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), Struct_1(vec4<u32>(0u, 33708u, 18046u, 0u)), vec4<u32>(1u, 0u, 0u, 1u), u_input.a.x, vec2<f32>(1068f, -799f)), func_5(23979u, vec2<f32>(-1000f, -767f), 519f)), !any(vec4<bool>(true, false, true, true))) << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(68017u, 0u), vec2<u32>(1u, 4294967295u))) % 32u));
    var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a.x, select(~select(u_input.a.x, 2147483647i, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -16190i, 0i), -vec4<i32>(-16316i, u_input.a.x, u_input.a.x, u_input.a.x)), true)), _wgslsmith_mod_i32(u_input.a.x & (i32(-1i) * -5961i), 8129i));
    var_0 = func_6(func_5(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, 1000f)))) - _wgslsmith_f_op_vec2_f32(max(func_5(37810u, vec2<f32>(1047f, 1613f), -1222f).e, func_5(34649u, vec2<f32>(1000f, -788f), -2045f).e))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-691f, -1047f, true))))), func_5(~func_5(func_3(-2147483647i, vec3<bool>(true, false, false)).x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-745f, -549f), vec2<f32>(600f, -1159f))), 390f).b.a.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, -351f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-234f, 1000f), vec2<f32>(-1017f, 284f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1055f, -1026f) * vec2<f32>(1439f, 1168f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-233f, _wgslsmith_f_op_f32(-1000f - -1044f)), 1f))).b, Struct_3(0u, func_5(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-470f - 1459f), 2514f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(438f - -596f), _wgslsmith_f_op_f32(-501f - 157f), true))), Struct_2(vec3<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x >> (0u % 32u)), Struct_1(~vec4<u32>(1u, 4294967295u, 80204u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), -2147483647i, vec2<f32>(func_5(4574u, vec2<f32>(665f, -260f), 1651f).e.x, _wgslsmith_f_op_f32(f32(-1f) * -130f)))), all(vec3<bool>(true, true, true)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(553f, 1982f, 757f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-189f, 1801f, -1013f, 745f))) - vec4<f32>(-2551f, 814f, _wgslsmith_f_op_f32(f32(-1f) * -609f), -1000f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(654f, 1674f, -528f, 1401f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, 325f, 1763f, -1104f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -440f) - _wgslsmith_div_f32(483f, 2519f)), _wgslsmith_f_op_f32(abs(2265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(290f, -546f), _wgslsmith_f_op_f32(f32(-1f) * -194f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(782f, _wgslsmith_f_op_f32(ceil(725f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(56408u, vec2<bool>(false, false), vec2<u32>(1u, 67025u))) * -1109f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-334f + -1925f), -1970f)), _wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1086f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1738f, 1829f), -1004f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1()))))));
    let var_1 = ~vec2<u32>(max(countOneBits(~4294967295u), max(_wgslsmith_div_u32(4294967295u, 4294967295u), ~0u)), firstLeadingBit(_wgslsmith_mod_u32(max(8000u, 103375u), 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(539f * 2215f);
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 877f, var_2, 681f) * vec4<f32>(var_0.x, var_0.x, var_2, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, -1271f, 449f, var_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, var_0.x, var_2, var_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_0.x, -697f, -435f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_0.x, -1333f, -1000f), vec4<f32>(1462f, 1108f, -1199f, var_0.x), false)), any(vec2<bool>(true, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 907f, -335f, 550f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1578f, var_0.x, var_2)), vec4<f32>(var_0.x, -488f, var_2, 1037f))))), vec4<f32>(var_2, -911f, _wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = func_5(func_5(~40041u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.xz - _wgslsmith_div_vec2_f32(vec2<f32>(-543f, -393f), vec2<f32>(var_0.x, 444f))))), -1430f).b.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2), var_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-491f * _wgslsmith_f_op_f32(-367f - -541f))))))).b;
    var var_4 = !select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xzz);
}

