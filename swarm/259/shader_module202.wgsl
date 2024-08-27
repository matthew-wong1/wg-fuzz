struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(360f, 363f, 171f), vec3<f32>(-438f, 1350f, -117f), vec3<f32>(319f, 233f, 811f), vec3<f32>(818f, -755f, -304f), vec3<f32>(2179f, -1968f, -289f), vec3<f32>(420f, 807f, -852f), vec3<f32>(1558f, -1000f, 470f), vec3<f32>(260f, 229f, -1775f));

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(23274i, i32(-2147483648), -12446i, 0i), vec4<i32>(-70429i, 2147483647i, -1i, -47688i), vec4<i32>(-21681i, -1i, -3982i, i32(-2147483648)), vec4<i32>(0i, -18453i, i32(-2147483648), -48065i), vec4<i32>(4557i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(49393i, -10916i, 0i, -5458i), vec4<i32>(-1i, 14243i, 20958i, 0i), vec4<i32>(0i, 13117i, 2147483647i, i32(-2147483648)), vec4<i32>(-31452i, 9586i, 1i, 2147483647i), vec4<i32>(3880i, -22276i, 2147483647i, 23238i), vec4<i32>(i32(-2147483648), i32(-2147483648), -16469i, -1i), vec4<i32>(40300i, 29221i, 10134i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 8414i, -1i, i32(-2147483648)), vec4<i32>(-19694i, 1i, -324i, -1i), vec4<i32>(2147483647i, 25394i, 0i, -31176i), vec4<i32>(5229i, -2435i, -1i, -28197i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 19629i), vec4<i32>(1i, -7255i, i32(-2147483648), 423i), vec4<i32>(-1i, 1i, 1i, -9170i), vec4<i32>(-4537i, -1i, 14382i, -30443i), vec4<i32>(1i, i32(-2147483648), 2147483647i, -66073i), vec4<i32>(-19385i, 1i, i32(-2147483648), 2563i), vec4<i32>(24557i, -4252i, 0i, -1i), vec4<i32>(-3382i, i32(-2147483648), 1i, -1i), vec4<i32>(61774i, 29555i, 1i, -17370i), vec4<i32>(-21308i, 1i, -1712i, -1423i), vec4<i32>(1i, i32(-2147483648), -20944i, -1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = 1f;
    global2 = array<vec4<i32>, 27>();
    let var_1 = vec3<bool>((var_0 <= _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(step(var_0, -564f)))) & !arg_0, !arg_0, arg_0);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) - vec4<f32>(var_0, var_0, -228f, -1000f)) * vec4<f32>(1345f, var_0, var_0, var_0)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-132f)), _wgslsmith_f_op_f32(ceil(var_0)), var_0, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) + vec4<f32>(var_0, var_0, var_0, 789f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 310f, -442f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, var_0))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1468f, var_0, var_0, -228f), vec4<f32>(var_0, -115f, -1000f, var_0))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0, var_0), -1462f, -806f, _wgslsmith_f_op_f32(ceil(var_0))), vec4<f32>(var_0, _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(select(-511f, 259f, false)), _wgslsmith_f_op_f32(sign(var_0)))), !any(var_1.zy) | !(u_input.c <= 9305u))), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 118f, -1000f, -334f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1423f, 1744f, var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 900f, var_0, var_0)))));
    let var_3 = _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(33859u, 0u, 1u)), vec3<u32>(u_input.c, 82868u, var_2.c)) | select(select(vec3<u32>(1u, var_2.c, 43501u), vec3<u32>(var_2.c, 54490u, u_input.c), var_1), ~vec3<u32>(1u, 18100u, u_input.e), select(var_1, var_1, var_1))), ~max(~reverseBits(vec3<u32>(29526u, 4294967295u, 0u)), ~vec3<u32>(2886u, 2018u, u_input.b)));
    return 0u;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 8>();
    var var_0 = func_3(true);
    let var_1 = arg_2;
    global1 = array<vec3<f32>, 8>();
    let var_2 = ~vec4<u32>(var_1.c, ~_wgslsmith_div_u32(~arg_0.x, 0u), max(9893u, u_input.b), ~min(~var_1.c, u_input.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(108f)), _wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x)))))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_1 {
    global2 = array<vec4<i32>, 27>();
    global0 = ~_wgslsmith_clamp_i32(130i, -2147483647i >> (1u % 32u), 1i);
    global2 = array<vec4<i32>, 27>();
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, -1797f, 922f, arg_1), vec4<f32>(arg_1, 1516f, arg_1, -1170f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2641f, -839f, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, arg_1, 801f, 264f))), false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, -1320f, -499f) + vec4<f32>(arg_1, -381f, arg_1, arg_1)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 433f), vec4<f32>(arg_1, -321f, 469f, arg_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, _wgslsmith_f_op_f32(min(197f, -659f)), -489f, 2019f))) + vec4<f32>(-557f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), arg_1, arg_1)), min(1u, u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 324f, -1125f, arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, 578f, arg_1))), vec4<f32>(-386f, -1000f, arg_1, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1175f - arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(49049u, u_input.c, 34792u), 27007i, Struct_1(vec4<f32>(arg_1, arg_1, -1728f, arg_1), vec4<f32>(-1319f, -576f, arg_1, arg_1), 66385u, vec4<f32>(1329f, arg_1, arg_1, -160f)))) - 2708f), 287f, _wgslsmith_f_op_f32(f32(-1f) * -1491f))));
    global1 = array<vec3<f32>, 8>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, arg_1, 2129f) * vec4<f32>(223f, 646f, -411f, 2125f))))), abs(_wgslsmith_sub_u32(u_input.b, var_0.c | max(var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.b), vec4<f32>(var_0.a.x, arg_1, arg_1, var_0.a.x))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -978f) + _wgslsmith_f_op_f32(973f + var_0.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - var_0.a.x), arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1470f)), _wgslsmith_f_op_f32(-708f * _wgslsmith_f_op_f32(floor(arg_1))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> f32 {
    var var_0 = func_4(!(!(109301i > u_input.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -646f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-567f, 1116f), _wgslsmith_f_op_f32(func_2(arg_1.zyw, u_input.a.x, Struct_1(vec4<f32>(-658f, -388f, 371f, 1253f), vec4<f32>(1000f, 1614f, -588f, 476f), u_input.b, vec4<f32>(-2776f, -1768f, 917f, -1246f))))))), all(select(arg_0, !arg_0, all(arg_0.yy))))), arg_0.x);
    var var_1 = vec2<bool>(!(var_0.c <= ~u_input.c), any(!vec4<bool>(!arg_0.x, all(vec4<bool>(true, arg_0.x, false, false)), all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(func_2(arg_1.zyw, firstTrailingBit(u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(func_2(vec3<u32>(26093u, arg_1.x, arg_1.x), 2147483647i, Struct_1(var_0.a, var_0.d, u_input.c, var_0.b))), var_0.b.x) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1150f, var_0.b.x, -1846f, 507f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, var_0.b.x, var_0.d.x, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, var_0.a.x, 947f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 146f, 700f, var_0.b.x)))), ~var_0.c << (_wgslsmith_add_u32(~4294967295u, func_3(arg_0.x)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.a.x, var_0.d.x, var_0.b.x))))));
    var var_3 = func_4(all(!select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, false, false, true), arg_0.x), !vec4<bool>(arg_0.x, var_1.x, true, true), select(vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, arg_0.x, false, var_1.x), true))), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))))), arg_0.x);
    let var_4 = !vec4<bool>(true, _wgslsmith_mult_u32(arg_1.x, func_3(true)) == max(_wgslsmith_mult_u32(16335u, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, var_0.c, 3497u), arg_1.yyy)), var_1.x, true);
    return _wgslsmith_f_op_f32(round(-400f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 27>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(852f * _wgslsmith_f_op_f32(f32(-1f) * -1246f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f + 129f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - -456f))), 451f, _wgslsmith_f_op_f32(trunc(271f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, 1191f, 290f, -1000f) - vec4<f32>(762f, -1423f, -1629f, -423f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2158f, 1299f, 927f, -387f) + vec4<f32>(-926f, 767f, 359f, 542f)))))), ~(~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1243f, -823f, -708f, -371f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f * -194f)), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.e, u_input.c, 30816u), vec4<u32>(4294967295u, u_input.c, u_input.e, 1u)))), _wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-727f - -254f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 8u)] - _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 8u)])) * vec3<f32>(var_0.d.x, 1f, -559f)))));
    let var_2 = var_1.x;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-var_2), var_0.a.x, _wgslsmith_f_op_f32(var_2 + var_1.x)))), var_0.b, u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-816f, _wgslsmith_f_op_f32(var_1.x - -159f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_0.a.x, 1044f))), var_0.a));
    var var_3 = ~abs(vec2<u32>(_wgslsmith_mod_u32(~var_0.c, ~51934u), 5107u));
    global1 = array<vec3<f32>, 8>();
    var var_4 = func_4(!all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true)), 1454f, any(!vec2<bool>(false, u_input.c <= 0u)));
    let var_5 = func_4(any(!vec3<bool>(true, select(true, false, true), true)), var_2, 0u <= var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-401f - -495f), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mod_i32(32477i, u_input.a.x), _wgslsmith_add_i32(-2147483647i, 31375i)), 76424u, 1u, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_4.c, 32419u), 4294967295u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.c, var_0.c, var_0.c)), vec3<u32>(u_input.c, 10263u, u_input.e) & vec3<u32>(0u, u_input.b, var_5.c)), 70267u, ~(u_input.b & 59393u)) | ~(~vec4<u32>(u_input.e, u_input.e, 1u, var_5.c) ^ ~vec4<u32>(50101u, var_3.x, 4294967295u, 4294967295u)));
}

