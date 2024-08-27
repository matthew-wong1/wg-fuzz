struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 21994u, 4294967295u, 4294967295u), vec4<u32>(1u, 14983u, 1u, 0u), vec4<u32>(4294967295u, 0u, 43379u, 0u), vec4<u32>(18709u, 40851u, 4294967295u, 1u), vec4<u32>(0u, 33666u, 56224u, 3164u), vec4<u32>(1u, 51125u, 50984u, 11343u), vec4<u32>(7133u, 0u, 4294967295u, 0u), vec4<u32>(0u, 10512u, 21427u, 0u), vec4<u32>(64816u, 57767u, 1u, 0u), vec4<u32>(35652u, 6269u, 1u, 19839u), vec4<u32>(1u, 88556u, 67399u, 6160u), vec4<u32>(1u, 4294967295u, 34048u, 0u), vec4<u32>(22290u, 23183u, 147896u, 0u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(39979u, 8948u, 68205u, 46865u), vec4<u32>(49646u, 4294967295u, 24671u, 0u), vec4<u32>(1u, 1u, 0u, 43399u), vec4<u32>(39374u, 65333u, 8812u, 4294967295u), vec4<u32>(25388u, 1u, 0u, 4294967295u), vec4<u32>(5381u, 6635u, 17753u, 57238u), vec4<u32>(83318u, 8003u, 48468u, 1u), vec4<u32>(0u, 1645u, 4294967295u, 1u), vec4<u32>(41782u, 4294967295u, 1u, 34203u), vec4<u32>(4294967295u, 40224u, 47636u, 0u), vec4<u32>(0u, 59612u, 74696u, 4294967295u), vec4<u32>(36944u, 0u, 1u, 0u), vec4<u32>(0u, 0u, 18878u, 1u), vec4<u32>(30179u, 38965u, 4294967295u, 0u), vec4<u32>(15042u, 33731u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 293f, 1000f), vec3<f32>(339f, 1377f, 959f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1196f, 386f, -188f)))), any(vec3<bool>(false, true, arg_1)) & true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2164f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(f32(-1f) * -771f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, -805f, 417f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1209f, -957f, 2562f))))));
    let var_1 = var_0.a;
    global0 = array<u32, 10>();
    let var_2 = vec4<bool>(all(vec4<bool>(false, _wgslsmith_dot_vec2_u32(vec2<u32>(82957u, 87993u), vec2<u32>(u_input.a, 14246u)) >= ~0u, any(!vec4<bool>(false, arg_1, true, var_1.b)), false)), _wgslsmith_add_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(49592i, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(29641i, 54758i, -27498i), u_input.b))) < (i32(-1i) * -u_input.b.x), false & ((2147483647i << (global0[_wgslsmith_index_u32(8292u, 10u)] % 32u)) < (_wgslsmith_sub_i32(-12445i, u_input.b.x) << (arg_0 % 32u))), true);
    var var_3 = 1072u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(489f * 896f), _wgslsmith_f_op_f32(trunc(-1131f)))) + var_0.a.a.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)) - var_0.a.c.x))));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global1 = array<vec4<u32>, 31>();
    var var_0 = vec2<bool>(all(vec3<bool>(~global0[_wgslsmith_index_u32(4294967295u, 10u)] != ~global0[_wgslsmith_index_u32(0u, 10u)], any(vec3<bool>(true, true, true)), true)), true);
    var var_1 = abs(vec4<i32>(u_input.b.x, 2147483647i, 89637i, -39734i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(572f, 473f, 882f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1912f, 661f, 218f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-746f, 1287f, 209f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(447f, 1875f, -488f) + vec3<f32>(771f, -178f, -834f)))))), !all(vec3<bool>(any(vec3<bool>(false, true, var_0.x)), all(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(func_3(4294967295u >> (global0[_wgslsmith_index_u32(u_input.a, 10u)] % 32u), var_0.x)), all(vec4<bool>(false, false, var_0.x, false)) | !var_0.x)), 1f, _wgslsmith_f_op_f32(max(-381f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-122f * 1805f), -749f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    global0 = array<u32, 10>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))))));
    let var_1 = arg_1.b;
    var var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-var_2.a.x);
    return Struct_2(func_2());
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    global0 = array<u32, 10>();
    return !any(!(!(!vec2<bool>(arg_0.a.b, arg_2.a.b))));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-428f, 1307f, 915f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(220f, 191f, -1457f))))), func_5(func_4(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-336f, -760f, 550f))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1873f, 277f, -1059f), vec3<f32>(-240f, 1587f, -1503f), vec3<bool>(true, true, false)))), false), -1261f, func_4(func_4(func_4(Struct_1(vec3<f32>(1334f, 1568f, -1000f), true, vec3<f32>(573f, -709f, -515f)), Struct_1(vec3<f32>(2793f, 781f, -272f), true, vec3<f32>(-352f, 429f, -1011f)), true).a, func_4(Struct_1(vec3<f32>(274f, -894f, -1000f), false, vec3<f32>(-1262f, -865f, 1046f)), Struct_1(vec3<f32>(-1194f, -490f, -1000f), false, vec3<f32>(2420f, -557f, 1000f)), true).a, false).a, Struct_1(vec3<f32>(1000f, 1487f, -1000f), true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(463f, -419f, 579f)))), !all(vec3<bool>(true, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-1060f - _wgslsmith_f_op_f32(abs(-861f))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-150f * -1195f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-154f, 1178f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(2265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(530f)) - _wgslsmith_f_op_f32(f32(-1f) * -537f)), 1f));
    global0 = array<u32, 10>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) * var_0.c)), !all(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.b, true, false), select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, true, var_0.b), var_0.b))), _wgslsmith_div_vec3_f32(var_0.c, var_0.c));
    let var_2 = Struct_1(var_1.c, true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-401f, var_0.c.x, -539f), vec3<f32>(var_1.c.x, 133f, -1105f)))), _wgslsmith_f_op_vec3_f32(trunc(var_0.a)))), var_0.c, !(!(!vec3<bool>(false, false, var_1.b))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))))), _wgslsmith_f_op_f32(floor(var_0.c.x)));
    return _wgslsmith_f_op_f32(select(var_0.c.x, var_2.a.x, (u_input.b.x < -48203i) && select(!func_2().b, var_2.b, var_0.b)));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_u32(~(~30751u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.a, u_input.a), vec3<u32>(75050u, global0[_wgslsmith_index_u32(42016u, 10u)], 86681u), true), ~vec3<u32>(44548u, u_input.a, 4294967295u))) | _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a, 68644u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4146u, 10u)], 10u)], 9662u), vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 10u)]))));
    global1 = array<vec4<u32>, 31>();
    let var_1 = ~(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 1u, 4294967295u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(84877u, 10u)], u_input.a)))));
    var var_2 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-func_4(Struct_1(arg_0.zyz, arg_1.b, vec3<f32>(-168f, 286f, arg_0.x)), Struct_1(vec3<f32>(arg_1.c.x, -1000f, arg_0.x), arg_1.b, vec3<f32>(476f, arg_0.x, 605f)), false).a.c), select(arg_1.b, arg_1.b, true) & false, arg_1.a), arg_1, arg_1.b).a, arg_1, any(select(!vec2<bool>(arg_1.b, true), select(select(vec2<bool>(true, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), arg_1.b), !vec2<bool>(arg_1.b, false), vec2<bool>(true, true)), any(select(vec3<bool>(arg_1.b, true, false), vec3<bool>(true, arg_1.b, false), vec3<bool>(arg_1.b, arg_1.b, false))))));
    let var_3 = 6613i >> (u_input.a % 32u);
    return Struct_2(Struct_1(vec3<f32>(arg_1.c.x, 124f, -1372f), true, _wgslsmith_f_op_vec3_f32(-arg_0.xzz)));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = vec4<bool>(all(!(!select(vec2<bool>(true, arg_2.a.b), vec2<bool>(true, arg_1.a.b), vec2<bool>(true, true)))), !(arg_2.a.c.x <= arg_2.a.c.x), false, arg_2.a.b);
    global0 = array<u32, 10>();
    let var_1 = vec4<bool>(true, !(!var_0.x), true, true);
    global1 = array<vec4<u32>, 31>();
    global0 = array<u32, 10>();
    return StorageBuffer(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(29288u, false))), max(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, 5975i), min(select(u_input.b.x, u_input.b.x, false), u_input.b.x | u_input.b.x)), -2147483647i), ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 24864u, u_input.a) << (vec3<u32>(5323u, 4294967295u, global0[_wgslsmith_index_u32(47856u, 10u)]) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 10u)], 1u))), 10u)], ~(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a, u_input.a), 28462u) >> (~(~vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 31>();
    var var_0 = abs(-u_input.b.x);
    let var_1 = select(1u, _wgslsmith_mod_u32(46599u, (_wgslsmith_dot_vec3_u32(vec3<u32>(55269u, 0u, global0[_wgslsmith_index_u32(40649u, 10u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 4294967295u, 53221u)) & 1u) & ~(1u >> (0u % 32u))), true);
    global1 = array<vec4<u32>, 31>();
    let var_2 = true;
    let x = u_input.a;
    s_output = func_7(-1378f, func_6(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1705f - 627f)), func_4(func_2(), func_4(Struct_1(vec3<f32>(303f, -186f, -660f), true, vec3<f32>(-931f, -1591f, 723f)), Struct_1(vec3<f32>(-1138f, 1000f, 1519f), var_2, vec3<f32>(-2157f, -1087f, -731f)), var_2).a, true).a.a.x), Struct_1(func_4(Struct_1(vec3<f32>(682f, -203f, 280f), var_2, vec3<f32>(889f, -524f, -108f)), func_4(Struct_1(vec3<f32>(-812f, -738f, -2753f), var_2, vec3<f32>(260f, 1700f, 851f)), Struct_1(vec3<f32>(695f, -447f, -1698f), var_2, vec3<f32>(933f, 969f, 1272f)), false).a, select(var_2, true, var_2)).a.a, !any(vec2<bool>(true, var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, -525f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, 413f, 2565f)))), -vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 14807i, countOneBits(24814i))), func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -646f, -454f, -910f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1530f, 2013f, -757f, -1690f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(506f, -868f, 1000f, -1781f)), vec4<bool>(var_2, var_2, var_2, true))), select(!vec4<bool>(var_2, false, var_2, false), !vec4<bool>(false, var_2, false, false), !vec4<bool>(var_2, var_2, var_2, false)))), func_6(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 696f)), _wgslsmith_f_op_f32(abs(-567f)), _wgslsmith_f_op_f32(f32(-1f) * -779f), -1225f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, 1312f, 1202f)), var_2 && false, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1937f, -1075f, -1539f)))), select(vec3<i32>(u_input.b.x, 1i, -8605i), u_input.b, var_2 | false)).a, u_input.b));
}

