struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = vec3<i32>(max(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(2147483647i, 4123i, 34512i, 9216i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 2147483647i)) >> ((vec2<u32>(u_input.a, 85368u) | vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), -firstLeadingBit(vec2<i32>(-31317i, 21296i)))), firstTrailingBit(-1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(1i), 1i), i32(-1i) * -(21376i << (u_input.a % 32u))));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-1391f + 767f), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1183f, -1807f), _wgslsmith_f_op_vec2_f32(vec2<f32>(888f, -897f) * vec2<f32>(-1155f, -607f))))), vec2<u32>(u_input.a, min(_wgslsmith_add_u32(u_input.a, 4294967295u), min(u_input.a, 56499u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f - _wgslsmith_div_f32(-129f, 100f))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 393f))))), min(max(~vec2<u32>(u_input.a, 0u), max(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 54240u))), ~min(vec2<u32>(4294967295u, 42681u), vec2<u32>(25573u, u_input.a)))), Struct_3(Struct_2(-_wgslsmith_add_i32(2147483647i, -6992i), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), Struct_1(260f, all(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-138f, -1699f) + vec2<f32>(240f, -216f)), ~vec2<u32>(u_input.a, 0u)), Struct_1(998f, any(vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, -1323f)), vec2<u32>(0u, u_input.a))), Struct_1(362f, any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, 479f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, 414f)))), vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a)), var_0.x, select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), true)), _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.x, var_0.x, 16733i, var_0.x), reverseBits(reverseBits(vec4<i32>(var_0.x, -2147483647i, 16801i, var_0.x)))) & min(firstLeadingBit(vec4<i32>(var_0.x, var_0.x, -17913i, 2147483647i) << (vec4<u32>(4294967295u, 4294967295u, 8616u, 0u) % vec4<u32>(32u))), vec4<i32>(~var_0.x, var_0.x & -50248i, 2147483647i, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1540f, -1000f)), -1551f), _wgslsmith_f_op_f32(abs(-309f)))), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, -650f) * vec2<f32>(-872f, -704f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(360f, 1505f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-691f, 125f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-226f, 950f))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), select(select(vec2<u32>(8614u, 23955u), ~vec2<u32>(49122u, u_input.a), true), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, 1u)), min(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u))), all(vec3<bool>(true, false, false)))));
    var var_2 = _wgslsmith_f_op_f32(var_1.c.a.d.a * _wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f + var_1.e.c.x) * _wgslsmith_f_op_f32(-var_1.e.c.x)) + -180f))));
    var_2 = 161f;
    var_2 = var_1.a.c.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, 542f, _wgslsmith_f_op_f32(f32(-1f) * -974f), var_1.b.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a, var_1.a.a, 651f, var_1.a.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(1256f - -1541f), var_1.e.c.x, _wgslsmith_f_op_f32(var_1.c.b.a - -776f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(242f, var_1.e.c.x, var_1.a.a, 1263f), vec4<f32>(var_1.c.a.d.c.x, 865f, 388f, -2115f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, var_1.a.c.x, var_1.a.c.x, 1529f))))));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2579f, 1225f), -438f)) - 844f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f - -1036f) * _wgslsmith_div_f32(692f, 269f))), _wgslsmith_f_op_f32(max(-1042f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1108f * 928f), 786f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(511f - 857f) - -793f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2456f, -1026f, 1300f, -340f), vec4<f32>(-2383f, 2071f, -1612f, 517f))))))));
    let var_1 = _wgslsmith_div_f32(1439f, var_0.x);
    var_0 = vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -472f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(-(~_wgslsmith_sub_i32(1i, 68509i)), ~(~firstLeadingBit(23086i))), 1i << ((_wgslsmith_sub_u32(_wgslsmith_div_u32(3416u, 8087u), u_input.a) ^ 0u) % 32u), -abs(~abs(-11577i)));
    let var_3 = max(~(-1i), abs(~0i));
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 117f), _wgslsmith_f_op_f32(min(var_1, -714f))))) + -1227f));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(-1i) * -(~vec2<i32>(20770i, 0i));
    let var_1 = var_0.x;
    let var_2 = ~vec2<u32>(15900u, arg_1.d.d.x);
    return arg_1.c;
}

fn func_1() -> Struct_1 {
    return func_4(func_2(), Struct_2(2147483647i, any(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_f_op_f32(floor(func_2().a)), all(vec2<bool>(false, false)), vec2<f32>(367f, -1220f), ~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 101639u), true)), Struct_1(_wgslsmith_div_f32(-573f, _wgslsmith_f_op_f32(-889f - 183f)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 781f))), firstTrailingBit(vec2<u32>(u_input.a, 60325u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, -157f, 1436f, 1432f) + vec4<f32>(-652f, 1198f, 515f, 1595f))))))));
    let var_1 = _wgslsmith_f_op_f32(661f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-730f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f - 125f) + 1040f)), -647f, false)));
    let var_2 = Struct_3(Struct_2(1i, true, func_1(), func_4(Struct_5(var_0.x), Struct_2(-2147483647i, true, Struct_1(-135f, false, var_0.xz, vec2<u32>(1347u, u_input.a)), Struct_1(1716f, false, vec2<f32>(2040f, 300f), vec2<u32>(4294967295u, 31790u))))), func_4(func_2(), Struct_2(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 38352i), vec3<i32>(2147483647i, 5640i, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -32439i), vec3<i32>(33063i, -2147483647i, 15319i))), func_4(Struct_5(var_0.x), Struct_2(-1i, false, Struct_1(var_1, false, vec2<f32>(var_0.x, var_1), vec2<u32>(u_input.a, u_input.a)), Struct_1(var_0.x, false, var_0.xy, vec2<u32>(0u, 28900u)))).b, func_4(Struct_5(var_1), Struct_2(-2147483647i, true, Struct_1(var_0.x, false, var_0.wx, vec2<u32>(1u, u_input.a)), Struct_1(var_1, true, vec2<f32>(var_1, -579f), vec2<u32>(u_input.a, 16299u)))), func_1())), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, ~(-2147483647i), -2147483647i, 35586i), select(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2147483647i, 4491i, -1i, 25620i), vec4<bool>(true, true, true, true)), reverseBits(~vec4<i32>(-2147483647i, 0i, -42478i, -2147483647i))), select(vec4<i32>(-2147483647i, -1898i, 0i, -2147483647i), ~vec4<i32>(-2147483647i, 0i, -21632i, -43119i), true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(func_4(func_2(), Struct_2(-32632i, true, Struct_1(var_1, false, vec2<f32>(-375f, var_1), vec2<u32>(9560u, u_input.a)), Struct_1(-417f, true, vec2<f32>(var_0.x, -339f), vec2<u32>(25572u, u_input.a)))).b, all(vec2<bool>(true, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), vec4<bool>(true, true, true, true)));
    let var_3 = (_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(17166i, var_2.a.a, var_2.c, 0i), ~vec4<i32>(var_2.c, var_2.c, var_2.c, -2147483647i)), vec4<i32>(~(-23380i), 1i, var_2.a.a, firstLeadingBit(-2147483647i))) ^ vec4<i32>(49232i, 0i, var_2.c, min(~0i, var_2.a.a))) ^ -vec4<i32>(var_2.c, ~var_2.c, -36138i, 2147483647i);
    var var_4 = Struct_2(1i, var_2.a.c.b, var_2.b, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 * 558f))))), (~1934i >= ~var_3.x) & true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3()).xx), vec2<u32>(var_2.b.d.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.b.d.x, 541u), _wgslsmith_add_u32(u_input.a, var_2.b.d.x)))));
    var_4 = Struct_2(_wgslsmith_clamp_i32(reverseBits(-var_3.x), _wgslsmith_add_i32(var_4.a, 1i), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(var_3, var_3), countOneBits(_wgslsmith_div_vec4_i32(var_3, var_3)))), false, func_1(), Struct_1(func_1().c.x, select(var_4.d.a <= 1225f, var_4.d.b, !(var_2.d.x | var_4.d.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.wz))), var_2.a.d.d));
    let var_5 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(-871f + var_2.b.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(7316i, var_4.a), var_3.yz) | -var_3.xx, ~(~vec2<i32>(2147483647i, var_2.a.a)))));
}

