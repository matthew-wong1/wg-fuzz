struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_1;
    var var_1 = Struct_2(arg_1.e.e.x, countOneBits(vec2<i32>(-1i, -2147483647i)), true, ~(~(var_0.d ^ arg_2.e.c.x) << (arg_2.e.c.x % 32u)), arg_3.e);
    var_1 = arg_3;
    var var_2 = Struct_1(1i, 884f, vec2<u32>(1u, firstLeadingBit(~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), -567f, _wgslsmith_div_f32(-1715f, var_1.e.d.x)), _wgslsmith_f_op_vec3_f32(-arg_3.e.d))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.e.d)) - vec3<f32>(-1000f, -1104f, -876f)))), select(vec4<bool>(arg_2.e.e.x, all(vec3<bool>(false, arg_1.a, false)), ~arg_3.d >= select(777u, arg_2.d, arg_1.a), any(!vec3<bool>(true, true, arg_2.a))), select(var_0.e.e, select(arg_1.e.e, select(var_1.e.e, vec4<bool>(true, true, arg_2.e.e.x, var_1.e.e.x), var_1.e.e), !arg_1.e.e), select(select(arg_3.e.e, vec4<bool>(var_1.c, false, true, arg_1.a), true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, arg_1.c))), true));
    var var_3 = 16849u;
    return vec4<bool>(!all(select(vec4<bool>(true, var_2.e.x, var_0.e.e.x, var_0.c), !vec4<bool>(false, false, arg_3.c, var_1.c), any(vec4<bool>(var_0.a, arg_3.e.e.x, true, arg_2.c)))), true, var_0.c, !(all(vec4<bool>(arg_3.c, arg_1.e.e.x, arg_1.a, arg_1.e.e.x)) && !arg_2.e.e.x));
}

fn func_2() -> i32 {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    var var_0 = -vec4<i32>(-(~abs(1i)), i32(-1i) * -1i, 16713i, -1i);
    global0 = array<vec4<u32>, 10>();
    var var_1 = (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, var_0.x, select(-72747i, 1i, false)), var_0.xyz >> ((vec3<u32>(u_input.b.x, 1493u, 20361u) >> (u_input.c.xwz % vec3<u32>(32u))) % vec3<u32>(32u))) < ~(1i >> (u_input.d % 32u))) && all(!func_3(u_input.b.x, Struct_2(true, var_0.zy, true, 0u, Struct_1(u_input.e.x, -309f, vec2<u32>(4294967295u, 17937u), vec3<f32>(-473f, -1910f, -102f), vec4<bool>(true, true, false, false))), Struct_2(true, u_input.e.yy, false, 27406u, Struct_1(5253i, 1076f, vec2<u32>(93296u, u_input.b.x), vec3<f32>(216f, 1000f, -478f), vec4<bool>(false, true, true, false))), Struct_2(true, vec2<i32>(var_0.x, -21918i), true, 1u, Struct_1(var_0.x, -1179f, vec2<u32>(u_input.c.x, 1u), vec3<f32>(-695f, -853f, 1000f), vec4<bool>(true, false, true, false)))));
    return countOneBits(-u_input.e.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> vec2<i32> {
    return vec2<i32>(u_input.e.x, max(u_input.e.x ^ ~u_input.e.x, -func_2()));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = u_input.c.zxy;
    let var_2 = vec2<f32>(arg_1.e.d.x, _wgslsmith_f_op_f32(421f + _wgslsmith_f_op_f32(arg_1.e.b - _wgslsmith_f_op_f32(-arg_1.e.d.x))));
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    return Struct_2(reverseBits(_wgslsmith_clamp_i32(arg_0.x, 2147483647i, u_input.e.x)) == -(~u_input.e.x | u_input.e.x), u_input.e.yy, true, _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_1.e.c.x, 2215u), 12375u), 10155u), arg_1.e);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = func_4(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, u_input.e.x), arg_0.b), arg_0.b)), Struct_2(arg_0.a, vec2<i32>(1i, arg_0.e.a), false, u_input.c.x & 1u, arg_0.e), func_4(vec2<i32>(-1i) * -vec2<i32>(4124i, -2147483647i), Struct_2(arg_0.e.e.x == all(arg_0.e.e), max(~u_input.e.xx, _wgslsmith_add_vec2_i32(u_input.e.zz, vec2<i32>(46745i, 1i))), false, ~(~arg_0.e.c.x), arg_0.e), arg_0)).e;
    global0 = array<vec4<u32>, 10>();
    let var_1 = arg_0.e.a;
    var var_2 = _wgslsmith_f_op_f32(-429f * _wgslsmith_div_f32(arg_0.e.b, _wgslsmith_f_op_f32(-func_4(-arg_0.b, Struct_2(true, u_input.e.xy, arg_0.e.e.x, 66750u, arg_0.e), arg_0).e.b)));
    var var_3 = arg_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, func_5(func_4(_wgslsmith_clamp_vec2_i32(u_input.e.xx, func_1(vec4<bool>(false, false, false, false), false), vec2<i32>(u_input.e.x, u_input.e.x)), Struct_2(all(vec3<bool>(true, false, true)), u_input.e.yx, true, 34503u, Struct_1(u_input.e.x, -535f, u_input.a, vec3<f32>(607f, 1030f, -523f), vec4<bool>(true, false, true, true))), Struct_2(true, -u_input.e.yz, select(true, false, false), 1u, Struct_1(u_input.e.x, 106f, u_input.b, vec3<f32>(149f, 1674f, 1000f), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(243f + 779f)), false, true);
    let var_1 = Struct_1(~_wgslsmith_mult_i32(-20664i, i32(-1i) * -u_input.e.x), -207f, _wgslsmith_mod_vec2_u32(~firstTrailingBit(u_input.c.yy), _wgslsmith_mod_vec2_u32(~(~u_input.a), u_input.c.yx & min(vec2<u32>(0u, 1u), u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(236f, 2605f, false)), -314f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-234f, -1130f, false)), _wgslsmith_f_op_f32(max(-1451f, -640f)))))), select(vec4<bool>(all(func_4(u_input.e.zz, Struct_2(false, u_input.e.yx, true, u_input.d, Struct_1(u_input.e.x, 229f, u_input.b, vec3<f32>(219f, -935f, 312f), vec4<bool>(true, true, var_0.x, var_0.x))), Struct_2(false, vec2<i32>(-1i, u_input.e.x), var_0.x, u_input.a.x, Struct_1(u_input.e.x, -887f, vec2<u32>(u_input.b.x, 23474u), vec3<f32>(-879f, 2292f, -861f), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))).e.e), any(var_0.xw), func_5(Struct_2(true, vec2<i32>(2147483647i, u_input.e.x), false, 0u, Struct_1(u_input.e.x, 214f, u_input.c.wx, vec3<f32>(2311f, 824f, -1867f), vec4<bool>(true, false, var_0.x, true))), _wgslsmith_f_op_f32(-1308f - 915f)), func_5(Struct_2(true, vec2<i32>(u_input.e.x, u_input.e.x), true, u_input.d, Struct_1(u_input.e.x, 468f, vec2<u32>(46217u, u_input.b.x), vec3<f32>(842f, 427f, -309f), vec4<bool>(true, false, false, false))), -259f)), select(select(vec4<bool>(var_0.x, true, true, var_0.x), func_3(11812u, Struct_2(false, vec2<i32>(u_input.e.x, -2147483647i), var_0.x, u_input.c.x, Struct_1(-5805i, 122f, u_input.a, vec3<f32>(1000f, 408f, -1198f), vec4<bool>(false, false, var_0.x, true))), Struct_2(var_0.x, vec2<i32>(u_input.e.x, u_input.e.x), var_0.x, 18204u, Struct_1(0i, -1000f, u_input.b, vec3<f32>(723f, -652f, -1708f), vec4<bool>(true, var_0.x, false, true))), Struct_2(var_0.x, vec2<i32>(u_input.e.x, 1i), false, u_input.a.x, Struct_1(u_input.e.x, 3269f, u_input.b, vec3<f32>(-1200f, -990f, -460f), vec4<bool>(var_0.x, var_0.x, true, false)))), func_3(u_input.c.x, Struct_2(false, u_input.e.zy, var_0.x, 1u, Struct_1(0i, -341f, vec2<u32>(u_input.d, 47425u), vec3<f32>(-1000f, 630f, -308f), vec4<bool>(true, var_0.x, false, var_0.x))), Struct_2(var_0.x, vec2<i32>(0i, -2147483647i), var_0.x, 0u, Struct_1(2147483647i, -293f, u_input.a, vec3<f32>(1238f, -760f, -472f), vec4<bool>(false, var_0.x, false, false))), Struct_2(true, vec2<i32>(u_input.e.x, u_input.e.x), true, 0u, Struct_1(u_input.e.x, 1780f, vec2<u32>(22345u, u_input.b.x), vec3<f32>(147f, 529f, 1000f), vec4<bool>(true, false, true, true))))), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(!(!var_0.x), var_0.x, func_5(func_4(vec2<i32>(u_input.e.x, u_input.e.x), Struct_2(true, u_input.e.xx, var_0.x, 28090u, Struct_1(u_input.e.x, 1178f, vec2<u32>(1u, 10412u), vec3<f32>(1279f, -893f, 1088f), vec4<bool>(var_0.x, var_0.x, false, false))), Struct_2(var_0.x, u_input.e.zy, false, 60715u, Struct_1(u_input.e.x, 1000f, vec2<u32>(u_input.c.x, 1u), vec3<f32>(-186f, -605f, -733f), vec4<bool>(var_0.x, true, true, var_0.x)))), _wgslsmith_f_op_f32(ceil(1642f))), true)));
    var var_2 = var_1;
    let var_3 = var_1.e.x;
    var_0 = func_3(var_2.c.x, func_4(u_input.e.zx, func_4(max(u_input.e.yx >> (vec2<u32>(var_2.c.x, 75803u) % vec2<u32>(32u)), u_input.e.xy), func_4(u_input.e.xy, func_4(vec2<i32>(var_2.a, var_1.a), Struct_2(var_0.x, vec2<i32>(-45673i, u_input.e.x), true, 4294967295u, var_1), Struct_2(false, vec2<i32>(25771i, -40178i), false, u_input.a.x, Struct_1(var_1.a, -880f, var_1.c, var_1.d, vec4<bool>(true, var_0.x, var_2.e.x, false)))), Struct_2(false, u_input.e.zz, var_0.x, 1u, var_1)), func_4(~u_input.e.zz, Struct_2(true, u_input.e.zz, var_2.e.x, 0u, var_1), func_4(u_input.e.yz, Struct_2(var_0.x, vec2<i32>(-2647i, u_input.e.x), true, var_1.c.x, var_1), Struct_2(var_1.e.x, u_input.e.xy, false, 4000u, Struct_1(var_2.a, 844f, u_input.c.zw, vec3<f32>(var_2.d.x, var_2.d.x, -1140f), var_1.e))))), func_4(_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_1.a, -50837i), vec2<i32>(-31297i, 0i), vec2<i32>(-2147483647i, var_1.a) << (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u))), func_4(-u_input.e.zy, Struct_2(var_1.e.x, vec2<i32>(u_input.e.x, var_2.a), false, var_2.c.x, Struct_1(-2147483647i, -406f, vec2<u32>(55609u, var_1.c.x), vec3<f32>(var_1.d.x, -456f, var_1.d.x), vec4<bool>(var_1.e.x, var_3, var_0.x, var_3))), func_4(vec2<i32>(2147483647i, var_1.a), Struct_2(true, vec2<i32>(-42778i, u_input.e.x), var_1.e.x, 0u, var_1), Struct_2(var_2.e.x, vec2<i32>(var_2.a, -1i), var_0.x, var_1.c.x, Struct_1(-2147483647i, var_2.d.x, vec2<u32>(u_input.c.x, u_input.c.x), vec3<f32>(var_1.d.x, 446f, var_1.d.x), vec4<bool>(var_1.e.x, var_0.x, true, true))))), Struct_2(var_2.a < var_1.a, -vec2<i32>(8722i, -67387i), func_5(Struct_2(var_2.e.x, vec2<i32>(var_1.a, 35022i), var_3, 0u, Struct_1(var_1.a, 272f, vec2<u32>(var_2.c.x, var_1.c.x), vec3<f32>(-655f, -172f, 1773f), var_1.e)), -1764f), abs(2068u), Struct_1(2370i, -340f, vec2<u32>(var_1.c.x, var_1.c.x), var_1.d, var_1.e)))), func_4(func_4(-vec2<i32>(2147483647i, 0i), Struct_2(u_input.e.x == 30173i, _wgslsmith_sub_vec2_i32(vec2<i32>(-12630i, 2147483647i), vec2<i32>(var_1.a, u_input.e.x)), !var_3, var_1.c.x, func_4(vec2<i32>(u_input.e.x, 0i), Struct_2(var_0.x, u_input.e.zz, var_0.x, 1u, Struct_1(53923i, -972f, var_2.c, var_1.d, var_1.e)), Struct_2(var_2.e.x, u_input.e.yz, false, var_2.c.x, var_1)).e), func_4(vec2<i32>(var_1.a, u_input.e.x) >> (var_1.c % vec2<u32>(32u)), func_4(u_input.e.xy, Struct_2(false, u_input.e.yy, var_1.e.x, var_1.c.x, var_1), Struct_2(true, u_input.e.zy, false, var_2.c.x, var_1)), Struct_2(var_0.x, vec2<i32>(var_1.a, var_1.a), var_3, var_2.c.x, var_1))).b, func_4(_wgslsmith_mod_vec2_i32(-u_input.e.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a, u_input.e.x), u_input.e.zz)), Struct_2(var_2.c.x < u_input.c.x, vec2<i32>(var_2.a, var_2.a), var_2.b >= -670f, func_4(u_input.e.zx, Struct_2(var_3, u_input.e.zz, false, 4294967295u, var_1), Struct_2(var_2.e.x, vec2<i32>(30759i, 1i), var_2.e.x, var_2.c.x, Struct_1(-32410i, -471f, vec2<u32>(41936u, var_1.c.x), var_1.d, vec4<bool>(var_3, var_0.x, var_1.e.x, true)))).e.c.x, Struct_1(var_1.a, var_1.d.x, vec2<u32>(var_1.c.x, 4294967295u), var_2.d, vec4<bool>(var_2.e.x, var_2.e.x, false, var_1.e.x))), Struct_2(true, min(vec2<i32>(var_1.a, -1i), vec2<i32>(-1i, var_2.a)), func_4(vec2<i32>(-11008i, 0i), Struct_2(false, vec2<i32>(-21336i, u_input.e.x), true, 1u, Struct_1(-5146i, var_2.d.x, vec2<u32>(3626u, 1u), vec3<f32>(var_1.b, var_2.d.x, var_2.d.x), var_1.e)), Struct_2(true, u_input.e.xx, true, 4294967295u, Struct_1(-29909i, 545f, u_input.b, vec3<f32>(var_1.b, -1666f, -252f), var_2.e))).e.e.x, 4294967295u, Struct_1(var_1.a, -918f, var_2.c, vec3<f32>(-1000f, -599f, var_1.d.x), var_1.e))), func_4(countOneBits(u_input.e.yy) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.x, var_2.c.x), vec2<u32>(var_2.c.x, 16289u)) % vec2<u32>(32u)), func_4(firstLeadingBit(u_input.e.yz), func_4(vec2<i32>(45127i, var_1.a), Struct_2(var_2.e.x, u_input.e.xx, false, 0u, Struct_1(32372i, -1000f, var_1.c, var_1.d, vec4<bool>(var_0.x, true, true, false))), Struct_2(var_2.e.x, u_input.e.zy, var_3, u_input.a.x, Struct_1(u_input.e.x, var_2.d.x, u_input.b, vec3<f32>(var_1.d.x, 325f, -983f), vec4<bool>(var_3, true, true, false)))), func_4(vec2<i32>(var_2.a, var_1.a), Struct_2(false, vec2<i32>(1i, -1i), var_2.e.x, 4294967295u, Struct_1(60803i, var_2.d.x, u_input.c.zy, vec3<f32>(var_1.b, var_1.d.x, var_1.b), var_2.e)), Struct_2(var_3, vec2<i32>(1i, var_2.a), false, 56072u, var_1))), func_4(~vec2<i32>(0i, -2147483647i), Struct_2(var_3, u_input.e.zx, var_1.e.x, u_input.a.x, Struct_1(1i, var_2.d.x, var_1.c, var_1.d, var_2.e)), Struct_2(true, u_input.e.zx, true, u_input.c.x, var_1)))), func_4(vec2<i32>(51869i, -2147483647i), Struct_2(var_3, -_wgslsmith_add_vec2_i32(u_input.e.zz, vec2<i32>(var_1.a, -80532i)), !any(var_1.e), 0u, var_1), Struct_2(var_2.e.x, _wgslsmith_mult_vec2_i32(func_1(var_2.e, false), _wgslsmith_sub_vec2_i32(u_input.e.xz, u_input.e.zx)), func_5(Struct_2(var_3, vec2<i32>(-2147483647i, 2147483647i), var_0.x, 27596u, Struct_1(var_1.a, var_1.d.x, vec2<u32>(var_2.c.x, var_2.c.x), var_2.d, vec4<bool>(false, false, false, true))), 2636f), var_2.c.x, Struct_1(func_2(), -1000f, reverseBits(var_2.c), _wgslsmith_f_op_vec3_f32(-var_1.d), select(var_1.e, vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~17613u, 487f, ~0u);
}

