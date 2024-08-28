struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = max((arg_0.a.xx | abs(arg_0.d.yx ^ arg_0.d.yz)) ^ vec2<i32>(abs(firstLeadingBit(2147483647i)), ~select(u_input.b.x, 2147483647i, arg_1)), _wgslsmith_add_vec2_i32(abs(arg_0.a.zx), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(46418i, -8057i), vec2<i32>(arg_0.a.x, -36778i))) << (abs(~vec2<u32>(55727u, 37531u)) % vec2<u32>(32u))));
    var var_1 = arg_0.b;
    global0 = !arg_1 || !(!any(vec2<bool>(arg_1, arg_1)));
    return arg_0.e;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec3<i32>(u_input.b.x, -2147483647i, _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, 51411i), min(-42553i, u_input.b.x)) | select(_wgslsmith_add_i32(0i, 1i), u_input.b.x, true)), _wgslsmith_f_op_f32(1218f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, 336f, 1004f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(774f, 1000f, -1319f), vec3<f32>(600f, 2350f, -222f), true))))), ~_wgslsmith_div_vec3_i32(vec3<i32>(func_3(Struct_1(vec3<i32>(u_input.b.x, -61299i, u_input.b.x), -1000f, vec3<f32>(-391f, 1000f, -356f), vec3<i32>(u_input.b.x, u_input.b.x, 15385i), u_input.b.x), false), 12774i, -u_input.b.x), (vec3<i32>(42i, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.d.x, 12722u, u_input.d.x) % vec3<u32>(32u))) ^ select(vec3<i32>(-2147483647i, -64088i, 29330i), vec3<i32>(u_input.b.x, -35367i, u_input.b.x), true)), _wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(-46349i, u_input.b.x, u_input.b.x, -1i)), min(vec4<i32>(14289i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1752i, -5078i, 28117i, u_input.b.x))) & vec4<i32>(~u_input.b.x, -u_input.b.x, -39382i, -4198i ^ u_input.b.x), ~abs(vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = Struct_3(Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.c.x + 752f), var_0.c, -(~var_0.a), max(min(1i, u_input.b.x), _wgslsmith_sub_i32(-1i, var_0.a.x))), vec2<bool>(true, true), Struct_1(vec3<i32>(u_input.b.x, -2591i, abs(18045i)), _wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_vec3_f32(select(var_0.c, var_0.c, any(vec3<bool>(true, false, true)))), -vec3<i32>(u_input.b.x, 37600i, u_input.b.x), max(-1i, ~21093i)), u_input.d.yy, min(abs(~u_input.d.x), u_input.c.x)), _wgslsmith_f_op_f32(189f + var_0.b));
    var_1 = _wgslsmith_f_op_f32(max(1523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2299f, var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -430f)), false)))));
    var var_3 = var_2.a;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_3.d, var_3.d, var_3.d), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.e, 4294967295u), vec2<u32>(1u, 25256u)), vec2<u32>(var_3.e, var_2.a.e), u_input.d.zz >> (var_2.a.d % vec2<u32>(32u))), ~vec2<u32>(0u, u_input.e.x)), ~vec2<u32>(u_input.a, ~var_2.a.d.x)), u_input.c.xy);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1439f) + 489f), _wgslsmith_div_f32(-583f, -1000f)) * arg_1.c));
    let var_1 = select(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yy), vec2<u32>(arg_3.e, 24060u)), ~arg_0.x << (_wgslsmith_dot_vec4_u32(u_input.e, u_input.e) % 32u)), 0u, true);
    let var_2 = Struct_3(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1357f, arg_1.b)) + _wgslsmith_f_op_f32(sign(arg_1.b))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)))));
    var var_3 = u_input.d.x;
    var var_4 = ~firstLeadingBit(vec4<u32>(~(~arg_3.e), u_input.d.x, countOneBits(min(arg_3.d.x, var_2.a.d.x)), ~1u));
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    var var_0 = true;
    let var_1 = select(vec3<u32>(1u, func_4(~(~u_input.e.www), arg_3.c, _wgslsmith_f_op_f32(ceil(-840f)) >= arg_0.a.c.x, Struct_2(Struct_1(arg_3.a.d, arg_0.c.b, arg_3.c.c, arg_0.c.d, arg_3.c.d.x), arg_3.b, func_4(u_input.d, arg_3.a, true, arg_0).a, arg_3.d, 6437u)).d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20066u), vec2<u32>(arg_1, 4294u))), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(0u) ^ ~arg_0.d.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.e, 4294967295u), 20120u), 61204u << (firstTrailingBit(arg_3.e) % 32u)), ~reverseBits(~vec3<u32>(u_input.d.x, arg_1, 1u))), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(arg_0.b.x, false, arg_2.x), vec3<bool>(false, false, false), vec3<bool>(arg_3.b.x, arg_3.b.x, arg_2.x)), !vec3<bool>(arg_3.b.x, arg_3.b.x, true)), !vec3<bool>(arg_0.b.x, true, true), !(!arg_2.x)), vec3<bool>(arg_3.b.x, all(select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_0.b.x, arg_2.x, arg_0.b.x), true)), true), _wgslsmith_f_op_f32(sign(arg_0.a.c.x)) != -1640f));
    let var_2 = arg_0.d;
    global1 = _wgslsmith_div_u32(~(_wgslsmith_div_u32(abs(arg_1), 5171u << (1u % 32u)) ^ 4294967295u), ~arg_0.e);
    var_0 = !func_4(min(firstLeadingBit(~vec3<u32>(arg_1, 383u, var_1.x)), reverseBits(u_input.c.zyy)), func_4(_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.e, 18730u, arg_1), max(var_1, vec3<u32>(0u, 9242u, 4294967295u))), func_4(u_input.e.yzz, Struct_1(vec3<i32>(u_input.b.x, arg_3.a.d.x, 0i), 1000f, vec3<f32>(1680f, 352f, -1046f), arg_0.c.d, arg_3.a.d.x), true, func_4(vec3<u32>(0u, 0u, u_input.a), Struct_1(vec3<i32>(arg_0.a.a.x, -2147483647i, 17425i), -1154f, vec3<f32>(1235f, arg_3.a.c.x, 1352f), vec3<i32>(u_input.b.x, 0i, 1i), 5996i), arg_2.x, arg_0)).a, select(all(vec4<bool>(arg_2.x, true, true, arg_0.b.x)), true, arg_3.c.e == u_input.b.x), func_4(vec3<u32>(var_2.x, arg_0.d.x, var_2.x), Struct_1(arg_3.a.d, 781f, vec3<f32>(arg_3.c.c.x, 778f, arg_3.a.c.x), vec3<i32>(arg_0.a.d.x, 1i, 47248i), 25775i), true, Struct_2(arg_3.a, arg_0.b, Struct_1(vec3<i32>(arg_3.a.a.x, -1i, arg_3.c.d.x), arg_0.c.c.x, arg_3.c.c, arg_0.c.a, -1i), u_input.c.yx, 1u))).a, true, arg_3).b.x;
    return arg_0.b.x;
}

fn func_1() -> Struct_1 {
    global0 = !func_5(func_4(vec3<u32>(4294967295u, abs(u_input.c.x), func_2()), Struct_1(-vec3<i32>(0i, 1i, -1i), 1000f, vec3<f32>(367f, 204f, 1201f), abs(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), 1i), all(vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<i32>(1i, 1i, 0i), -1192f, vec3<f32>(864f, -1353f, -1701f), vec3<i32>(u_input.b.x, u_input.b.x, -35456i), u_input.b.x), vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.b.x, 0i, u_input.b.x), -331f, vec3<f32>(979f, -758f, 331f), vec3<i32>(u_input.b.x, -1i, -25968i), 10896i), _wgslsmith_div_vec2_u32(u_input.e.xx, u_input.e.wx), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.e.x, u_input.d.x), u_input.e))), 0u, !vec2<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, true))), func_4(u_input.e.wzz, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(-60734i, 0i, 32389i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(floor(1512f)), vec3<f32>(376f, 503f, -638f), vec3<i32>(1i, u_input.b.x, -1i) >> (vec3<u32>(107258u, 65337u, 1u) % vec3<u32>(32u)), 1i), true, func_4(vec3<u32>(99693u, 6429u, 1u), Struct_1(vec3<i32>(69042i, 34569i, -2147483647i), -158f, vec3<f32>(1807f, 305f, -628f), vec3<i32>(11071i, u_input.b.x, 2147483647i), 14152i), false, func_4(vec3<u32>(22952u, u_input.d.x, u_input.e.x), Struct_1(vec3<i32>(u_input.b.x, 4342i, 2147483647i), -1209f, vec3<f32>(610f, 600f, 812f), vec3<i32>(u_input.b.x, -20343i, u_input.b.x), -1i), true, Struct_2(Struct_1(vec3<i32>(7743i, u_input.b.x, u_input.b.x), -404f, vec3<f32>(906f, 2002f, -1000f), vec3<i32>(6012i, u_input.b.x, 13665i), u_input.b.x), vec2<bool>(false, false), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), -1400f, vec3<f32>(-652f, -115f, 364f), vec3<i32>(u_input.b.x, 0i, u_input.b.x), -38601i), vec2<u32>(u_input.e.x, 64420u), u_input.d.x)))));
    let var_0 = ~u_input.d.x;
    global1 = 35368u;
    let var_1 = Struct_1(max(~vec3<i32>(firstTrailingBit(u_input.b.x), 52918i >> (1u % 32u), ~u_input.b.x), vec3<i32>(-28473i, 15646i, -2147483647i)), -977f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1100f, _wgslsmith_f_op_f32(-1597f + -1585f)), _wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(f32(-1f) * -541f)), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-895f, 2028f, 1576f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, 361f, 220f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(392f, 354f, -531f), vec3<f32>(2488f, -1164f, 1136f), false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(596f, 961f)), _wgslsmith_div_f32(-429f, -477f))) < _wgslsmith_f_op_f32(665f * -1399f))), min(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -vec3<i32>(u_input.b.x, u_input.b.x, -3513i)), func_4(u_input.d, func_4(u_input.c.xyx, Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), 2194f, vec3<f32>(-1347f, -693f, 562f), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), 2147483647i), true, Struct_2(Struct_1(vec3<i32>(30343i, u_input.b.x, u_input.b.x), 1523f, vec3<f32>(1000f, -260f, -1969f), vec3<i32>(8713i, u_input.b.x, u_input.b.x), u_input.b.x), vec2<bool>(true, true), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 1256f, vec3<f32>(-467f, -1050f, 979f), vec3<i32>(u_input.b.x, u_input.b.x, 0i), u_input.b.x), u_input.e.wx, var_0)).a, false, Struct_2(Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 4957i), -1893f, vec3<f32>(1152f, 1246f, -2193f), vec3<i32>(3738i, -2147483647i, u_input.b.x), u_input.b.x), vec2<bool>(false, true), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), 2131f, vec3<f32>(-630f, 282f, 159f), vec3<i32>(u_input.b.x, 6126i, u_input.b.x), -1i), u_input.d.zz, u_input.a)).c.a, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, 0i), ~vec3<i32>(-37725i, u_input.b.x, -12030i))), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(43929i, u_input.b.x)), firstTrailingBit(u_input.b)), u_input.b.x)), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(1539f * 577f), 1126f, -1507f)));
    return func_4(vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.d, abs(vec3<u32>(u_input.c.x, 1u, 34569u))), u_input.c.x, _wgslsmith_add_u32(var_0, 11257u)), Struct_1(vec3<i32>(0i, -6793i, abs(u_input.b.x)), 380f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b - var_2.x), -184f, _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, -912f, -1060f))))), ~var_1.a, min(min(1i, var_1.a.x), u_input.b.x)), !(!func_5(Struct_2(Struct_1(var_1.a, 638f, var_2, vec3<i32>(-2147483647i, u_input.b.x, 2147483647i), u_input.b.x), vec2<bool>(true, true), var_1, vec2<u32>(0u, u_input.c.x), u_input.e.x), firstLeadingBit(u_input.e.x), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_2(var_1, vec2<bool>(false, false), Struct_1(vec3<i32>(1i, u_input.b.x, -2147483647i), 541f, var_2, vec3<i32>(var_1.e, -1i, var_1.e), var_1.e), vec2<u32>(u_input.d.x, 24175u), 4294967295u))), func_4(vec3<u32>(4294967295u, 29074u, 2374u), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.a, var_1.d), countOneBits(0i), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + -1459f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.c.x, 928f))), var_1.d, var_1.a.x ^ var_1.a.x), !(15682i < var_1.a.x) & true, Struct_2(var_1, vec2<bool>(true, true), var_1, ~u_input.c.xx, 35459u))).c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(12885u, u_input.a)), _wgslsmith_add_u32(15378u, u_input.a)) & abs(49928u);
    let var_1 = -arg_1.d.x;
    var var_2 = !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), any(vec3<bool>(true, false, true)) || true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), func_5(Struct_2(Struct_1(arg_0.d, arg_1.c.x, arg_1.c, arg_1.a, -1i), vec2<bool>(true, true), Struct_1(vec3<i32>(arg_0.e, arg_0.a.x, u_input.b.x), arg_0.b, vec3<f32>(arg_1.b, arg_0.c.x, -630f), vec3<i32>(arg_0.d.x, -25032i, -1i), arg_0.d.x), u_input.c.yw, u_input.d.x), _wgslsmith_add_u32(u_input.a, u_input.c.x), vec2<bool>(true, true), Struct_2(arg_0, vec2<bool>(false, false), arg_1, vec2<u32>(1u, 33748u), u_input.e.x))), select(vec4<bool>(true, select(false, false, true), true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))));
    let var_3 = var_2.x;
    let var_4 = 1u;
    return func_4(_wgslsmith_mod_vec3_u32(~vec3<u32>(func_4(vec3<u32>(0u, 59048u, 4294967295u), Struct_1(arg_1.a, arg_0.c.x, arg_1.c, arg_0.a, u_input.b.x), true, Struct_2(arg_1, vec2<bool>(var_2.x, true), Struct_1(vec3<i32>(25230i, -2147483647i, -45270i), arg_0.c.x, arg_1.c, vec3<i32>(-46330i, -24003i, -2147483647i), var_1), u_input.c.ww, var_4)).d.x, var_4, u_input.a), ~firstTrailingBit(~vec3<u32>(21209u, var_4, 31693u))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1971f), arg_0.c, func_4(~u_input.c.wxw, Struct_1(-arg_0.d, _wgslsmith_f_op_f32(-417f + arg_0.b), vec3<f32>(arg_1.c.x, arg_0.c.x, 667f), vec3<i32>(-2147483647i, -18950i, 0i), _wgslsmith_div_i32(arg_1.e, 42762i)), true, func_4(vec3<u32>(var_4, 46399u, 4294967295u), arg_1, var_2.x && false, Struct_2(Struct_1(arg_0.d, -301f, arg_0.c, arg_1.d, var_1), var_2.zz, arg_1, vec2<u32>(66715u, u_input.d.x), 0u))).a.d, func_1().d.x), var_2.x, Struct_2(arg_0, !vec2<bool>(any(vec4<bool>(var_2.x, true, true, true)), false), func_4(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, u_input.d.x, 1u)), func_4(u_input.d, func_1(), any(vec2<bool>(var_2.x, false)), func_4(u_input.d, arg_1, var_2.x, Struct_2(arg_0, var_2.yx, arg_0, vec2<u32>(u_input.a, var_4), u_input.c.x))).a, false, Struct_2(arg_0, vec2<bool>(true, false), func_4(u_input.e.xxw, arg_0, var_2.x, Struct_2(Struct_1(arg_0.d, arg_0.b, arg_0.c, vec3<i32>(var_1, 21262i, 1i), var_1), var_2.xz, arg_1, vec2<u32>(4294967295u, var_4), var_4)).c, ~u_input.c.zy, _wgslsmith_div_u32(38088u, 4294967295u))).a, u_input.e.xz, var_4));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -u_input.b.x;
    global1 = ~(~u_input.c.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_1.d.x, u_input.d.x), ~u_input.c.x, select(arg_1.d.x, 47163u, arg_1.b.x), _wgslsmith_add_u32(arg_1.d.x, 0u)), select(vec4<u32>(18629u, 0u, u_input.e.x, arg_1.e), ~vec4<u32>(4294967295u, u_input.c.x, 69991u, 1u), !vec4<bool>(arg_1.b.x, arg_1.b.x, false, false))) % 32u);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(293f))) * arg_0.x), _wgslsmith_f_op_f32(-func_4(_wgslsmith_clamp_vec3_u32(~vec3<u32>(49771u, 0u, 1u), vec3<u32>(arg_1.d.x, u_input.a, u_input.e.x), firstLeadingBit(vec3<u32>(67976u, arg_1.e, 22323u))), Struct_1(-vec3<i32>(-2147483647i, u_input.b.x, 1i), arg_1.c.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.b, arg_1.c.c.x, arg_0.x) - arg_1.c.c), ~vec3<i32>(arg_1.a.a.x, -19753i, arg_1.a.e), reverseBits(u_input.b.x)), true, arg_1).a.c.x), select(_wgslsmith_mod_u32(1u, ~41580u) <= ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(17943u, 28981u, arg_1.d.x, u_input.d.x)), true, false)));
    var var_2 = _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(24064i >> (0u % 32u), u_input.b.x), 0i, -85372i), max(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.a.d, vec3<i32>(arg_1.c.a.x, -15056i, 2147483647i)), arg_1.a.d & vec3<i32>(3086i, 0i, -6572i)), 1i, u_input.b.x), select(abs(~vec3<i32>(-1i, -2147483647i, arg_1.c.d.x)), arg_1.c.a, !(!arg_1.b.x))));
    var var_3 = var_2.x;
    return func_4(abs(~(abs(vec3<u32>(arg_1.d.x, 0u, 0u)) ^ u_input.c.yyx)), arg_1.a, !all(select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, true, arg_1.b.x, false), arg_1.b.x), !vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), 1600f != arg_0.x)), func_6(func_1(), Struct_1(countOneBits(vec3<i32>(-2147483647i, arg_1.a.e, 14423i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(round(arg_1.a.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.c) - _wgslsmith_f_op_vec3_f32(select(arg_1.c.c, vec3<f32>(arg_1.c.c.x, -1000f, arg_1.a.c.x), true))), -arg_1.c.d, func_1().d.x))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(588f, -1343f))))))), func_6(Struct_1(vec3<i32>(u_input.b.x, 5340i ^ u_input.b.x, 9564i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(557f)) - _wgslsmith_div_f32(-1000f, 1329f)), vec3<f32>(948f, 1068f, _wgslsmith_f_op_f32(select(-741f, -1000f, true))), vec3<i32>(~u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 3860i), -1i | u_input.b.x), min(min(48661i, u_input.b.x), _wgslsmith_mod_i32(-11552i, -2147483647i))), func_1()));
    var var_1 = ~vec4<u32>(~u_input.a, _wgslsmith_add_u32(53435u, firstTrailingBit(4294967295u)), select(u_input.c.x, min(u_input.e.x, 0u), any(vec4<bool>(true, false, false, true))), ~(~4294967295u)) << (firstLeadingBit(~(u_input.c | vec4<u32>(u_input.e.x, u_input.a, 37722u, u_input.e.x)) & u_input.e) % vec4<u32>(32u));
    global0 = !func_4(_wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, u_input.a, 0u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, var_1.x), vec3<u32>(51974u, var_1.x, var_1.x)), var_1.xwx, var_1.yzx)), Struct_1(~(~var_0.d), _wgslsmith_f_op_f32(round(var_0.b)), var_0.c, var_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(10483i, -2147483647i, -33763i), var_0.d), var_0.a)), !any(vec4<bool>(false, true, false, false)), func_4(u_input.c.xxx, func_6(var_0, Struct_1(var_0.d, 985f, var_0.c, vec3<i32>(u_input.b.x, var_0.d.x, u_input.b.x), var_0.a.x)).c, func_5(func_6(Struct_1(vec3<i32>(-31718i, var_0.a.x, 11990i), 1943f, vec3<f32>(365f, var_0.c.x, var_0.c.x), var_0.d, -4828i), var_0), var_1.x, vec2<bool>(true, true), Struct_2(Struct_1(var_0.a, -973f, vec3<f32>(-827f, 1078f, -144f), vec3<i32>(u_input.b.x, var_0.e, -2147483647i), var_0.a.x), vec2<bool>(false, false), Struct_1(var_0.a, var_0.c.x, vec3<f32>(var_0.b, var_0.c.x, var_0.c.x), var_0.a, var_0.d.x), var_1.yw, 4294967295u)), func_6(func_4(u_input.c.zxy, var_0, false, Struct_2(var_0, vec2<bool>(true, true), Struct_1(vec3<i32>(var_0.e, var_0.a.x, -53507i), var_0.c.x, vec3<f32>(-241f, -635f, -978f), vec3<i32>(31126i, var_0.e, 14210i), 2147483647i), var_1.wy, var_1.x)).a, Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0.c.x, vec3<f32>(605f, -354f, var_0.c.x), vec3<i32>(-47171i, u_input.b.x, u_input.b.x), 2147483647i)))).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-countOneBits(var_0.a.yz), firstLeadingBit(~reverseBits(u_input.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, var_0.c.x, var_0.c.x, var_0.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1202f, var_0.b, 1641f, var_0.b))))), vec4<f32>(-720f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(trunc(var_0.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b, var_0.b), 1902f)), var_0.c.x))), 1000f, -2147483647i, vec2<u32>(~33434u, 26987u));
}

