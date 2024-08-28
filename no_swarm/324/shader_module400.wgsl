struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(0u, 4294967295u, vec3<u32>(22583u, 82766u, 25680u), vec3<f32>(257f, -1136f, 1357f)), Struct_5(1u, 4294967295u, vec3<u32>(39940u, 35631u, 0u), vec3<f32>(-247f, 822f, 374f)), Struct_5(41892u, 69020u, vec3<u32>(34132u, 50344u, 0u), vec3<f32>(1049f, 778f, 1713f)), Struct_5(92646u, 4294967295u, vec3<u32>(1u, 1u, 80958u), vec3<f32>(143f, 1422f, -384f)), Struct_5(4294967295u, 6017u, vec3<u32>(4294967295u, 24896u, 21084u), vec3<f32>(918f, -1103f, 1771f)), Struct_5(1u, 4115u, vec3<u32>(33938u, 33164u, 4294967295u), vec3<f32>(1358f, -472f, -495f)), Struct_5(4294967295u, 4294967295u, vec3<u32>(0u, 0u, 66111u), vec3<f32>(752f, 952f, -1492f)), Struct_5(1u, 22715u, vec3<u32>(4294967295u, 45609u, 4294967295u), vec3<f32>(988f, -176f, -1049f)), Struct_5(62775u, 4294967295u, vec3<u32>(4294967295u, 4294967295u, 9671u), vec3<f32>(-339f, -666f, 317f)), Struct_5(4294967295u, 45147u, vec3<u32>(0u, 1u, 81693u), vec3<f32>(-931f, 722f, 703f)), Struct_5(0u, 5908u, vec3<u32>(4294967295u, 0u, 30684u), vec3<f32>(-1256f, -1658f, 1238f)), Struct_5(13604u, 3633u, vec3<u32>(0u, 0u, 4294967295u), vec3<f32>(861f, -1928f, -202f)), Struct_5(36573u, 4294967295u, vec3<u32>(1u, 7203u, 1u), vec3<f32>(-240f, -462f, -929f)), Struct_5(24430u, 66849u, vec3<u32>(0u, 8301u, 0u), vec3<f32>(-1074f, -226f, 968f)), Struct_5(7541u, 0u, vec3<u32>(20508u, 11678u, 0u), vec3<f32>(-1022f, -102f, 815f)), Struct_5(1u, 4294967295u, vec3<u32>(24525u, 57875u, 4579u), vec3<f32>(-1415f, -366f, -1152f)), Struct_5(0u, 1098u, vec3<u32>(4294967295u, 65572u, 0u), vec3<f32>(-1000f, -300f, -551f)), Struct_5(0u, 4082u, vec3<u32>(0u, 1u, 4294967295u), vec3<f32>(-693f, -1000f, -510f)), Struct_5(49340u, 10322u, vec3<u32>(1u, 0u, 129812u), vec3<f32>(1517f, -662f, -877f)), Struct_5(17783u, 31381u, vec3<u32>(35341u, 31516u, 4294967295u), vec3<f32>(1797f, -573f, 947f)), Struct_5(18769u, 31904u, vec3<u32>(8363u, 0u, 61512u), vec3<f32>(-183f, -490f, 1041f)), Struct_5(46307u, 4294967295u, vec3<u32>(0u, 12051u, 45420u), vec3<f32>(-850f, 149f, 1096f)), Struct_5(72812u, 44972u, vec3<u32>(32310u, 4294967295u, 4294967295u), vec3<f32>(1000f, -787f, -178f)), Struct_5(64549u, 25403u, vec3<u32>(25934u, 72783u, 1u), vec3<f32>(1225f, 1000f, 994f)), Struct_5(54656u, 0u, vec3<u32>(4771u, 24467u, 4294967295u), vec3<f32>(172f, 259f, -1372f)), Struct_5(31659u, 0u, vec3<u32>(1u, 1u, 34977u), vec3<f32>(-754f, -1849f, -575f)), Struct_5(4294967295u, 0u, vec3<u32>(36375u, 65601u, 1u), vec3<f32>(-841f, -2160f, 298f)), Struct_5(29344u, 13719u, vec3<u32>(27417u, 4294967295u, 23596u), vec3<f32>(-2562f, 180f, 1000f)), Struct_5(49678u, 116848u, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<f32>(151f, -1000f, 510f)), Struct_5(44086u, 4991u, vec3<u32>(1695u, 4294967295u, 4294967295u), vec3<f32>(904f, -1049f, 1206f)), Struct_5(27681u, 0u, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-1271f, -1320f, -367f)));

var<private> global1: vec3<u32> = vec3<u32>(17922u, 90732u, 17038u);

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_1(vec4<bool>(true, false, true, true), vec3<i32>(i32(-2147483648), -24051i, -3391i), vec3<u32>(37877u, 0u, 4294967295u), vec3<u32>(15443u, 4294967295u, 80959u), 2147483647i), -562f, Struct_1(vec4<bool>(true, false, false, true), vec3<i32>(-58917i, -21788i, 2147483647i), vec3<u32>(53093u, 15755u, 8622u), vec3<u32>(4294967295u, 30898u, 1u), -2039i)), Struct_4(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(25021i, -5203i, -27129i), vec3<u32>(52948u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 29750u), 2147483647i), -1000f, Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(22144i, 8916i, 1i), vec3<u32>(0u, 0u, 42498u), vec3<u32>(18495u, 806u, 0u), 36597i)), Struct_4(Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(0i, -6021i, -10585i), vec3<u32>(4294967295u, 46841u, 54666u), vec3<u32>(1u, 0u, 60968u), -12650i), 899f, Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(41550i, -25542i, 6236i), vec3<u32>(68335u, 36010u, 1u), vec3<u32>(0u, 0u, 86976u), 11140i)), Struct_4(Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(-1i, -26808i, -34881i), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 53522u, 0u), i32(-2147483648)), 106f, Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(-11111i, i32(-2147483648), 3656i), vec3<u32>(4294967295u, 70991u, 17555u), vec3<u32>(4294967295u, 1u, 16117u), i32(-2147483648))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = select(vec3<bool>(false, true, max(u_input.a.x, abs(0i)) != 1i), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), vec3<bool>(select(false, false, all(vec4<bool>(true, true, true, false))), true, !any(vec2<bool>(true, false))), vec3<bool>(2147483647i < _wgslsmith_dot_vec2_i32(vec2<i32>(-12813i, 32742i), u_input.a), false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-242f, 1962f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f * -371f))) >= 1f);
    global2 = array<Struct_4, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(950f, 1491f, -1028f, -746f) + vec4<f32>(200f, 1383f, -468f, -106f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, -2360f, -1000f, -632f)))), select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), !vec4<bool>(var_0.x, true, var_0.x, true), select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x)))))));
    global1 = vec3<u32>(global1.x, 68547u, ~countOneBits(~0u));
    var var_2 = 18132u;
    return global1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = func_3() < _wgslsmith_dot_vec2_u32(~vec2<u32>(226u, ~global1.x), ~select(vec2<u32>(4294967295u, 100143u), global1.zx, true) & global1.yx);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(6059u, 99015u, _wgslsmith_mod_u32(global1.x, global1.x) | global1.x) >> (select(select(~vec3<u32>(35845u, global1.x, 11600u), firstTrailingBit(vec3<u32>(0u, 0u, global1.x)), false), ~(vec3<u32>(1u, global1.x, global1.x) >> (vec3<u32>(global1.x, global1.x, global1.x) % vec3<u32>(32u))), all(vec3<bool>(true, false, false))) % vec3<u32>(32u)), select(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 12291u), vec2<u32>(8310u, 0u)), global1.x) >> (~(~vec3<u32>(1513u, global1.x, 37320u)) % vec3<u32>(32u)), ~(~vec3<u32>(global1.x, global1.x, global1.x) | select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(global1.x, global1.x, global1.x), vec3<bool>(true, false, false))), vec3<bool>(!(global1.x <= 4757u), true, !any(vec4<bool>(true, true, true, true)))), max(vec3<u32>(global1.x, ~4294967295u, _wgslsmith_mod_u32(~global1.x, 19504u)), vec3<u32>(global1.x, ~min(1436u, global1.x), global1.x)));
    let var_2 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, all(vec4<bool>(true, false, false, false)))), vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), false, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), any(vec2<bool>(false, false))), select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    var var_3 = Struct_1(vec4<bool>(true, true, false, false), max(vec3<i32>(-39480i, u_input.a.x, u_input.a.x), abs(vec3<i32>(min(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(-1i, u_input.a.x), 2147483647i))), ~min(var_1, reverseBits(var_1)) & ~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global1.x, var_1.x), var_1) ^ ~var_1), ~((~var_1 ^ _wgslsmith_sub_vec3_u32(var_1, vec3<u32>(var_1.x, 75237u, var_1.x))) << (var_1 % vec3<u32>(32u))), -u_input.a.x);
    global0 = array<Struct_5, 31>();
    return Struct_1(select(vec4<bool>(false, any(vec4<bool>(var_2.x, var_3.a.x, true, true)), any(vec3<bool>(false, false, var_3.a.x)), var_2.x), select(vec4<bool>(true, true & var_3.a.x, false, true), !var_3.a, vec4<bool>(var_2.x, !var_3.a.x, var_3.a.x, true)), var_3.a), var_3.b, select(vec3<u32>(_wgslsmith_sub_u32(56325u, _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_3.c.x, var_1.x, 26209u))), countOneBits(global1.x ^ var_3.d.x), _wgslsmith_dot_vec3_u32(var_1 ^ vec3<u32>(var_3.d.x, global1.x, 33184u), vec3<u32>(4294967295u, var_3.c.x, var_1.x))), vec3<u32>(~abs(1u), 0u, ~(~var_1.x)), var_3.a.x), vec3<u32>(~reverseBits(var_1.x) | var_3.c.x, ~(~17555u), max(11668u, abs(global1.x))), u_input.a.x << (~9848u % 32u));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<bool> {
    global2 = array<Struct_4, 4>();
    global0 = array<Struct_5, 31>();
    var var_0 = Struct_4(func_2(), 1320f, arg_2);
    var var_1 = true | !func_2().a.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -364f) < arg_0;
    return vec2<bool>(abs(~(u_input.a.x | arg_2.e)) >= countOneBits(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(40576i, -77982i), var_0.a.e, -2147483647i)), false);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 0u, 5905u, arg_2.a.c.x), vec4<u32>(arg_2.a.d.x, global1.x, 2504u, 31697u) >> (vec4<u32>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x) % vec4<u32>(32u))), ~(~16833u)) >= arg_2.a.c.x;
    global2 = array<Struct_4, 4>();
    let var_1 = Struct_2(2041f, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_3.x, 2147483647i), arg_2.a.b.x), ~abs(arg_2.a.b.yz)));
    var var_2 = vec3<u32>(4294967295u, ~_wgslsmith_div_u32(select(25182u, 1u, any(vec4<bool>(arg_1.x, arg_2.a.a.x, true, arg_2.a.a.x))), func_2().d.x), 0u);
    let var_3 = _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))));
    return vec4<bool>(any(select(!vec4<bool>(true, arg_2.a.a.x, false, true), vec4<bool>(func_1(467f, vec4<bool>(true, false, arg_1.x, arg_2.a.a.x), arg_2.a).x, any(vec3<bool>(false, var_0, true)), true, !var_0), any(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, false, arg_1.x), true)))), !(!all(func_2().a.zz)), arg_1.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(select(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-133f, 264f)), func_1(2733f, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(u_input.a.x, 12361i, 23304i), vec3<u32>(1u, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 36865u), -22154i)), Struct_3(Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(1i, 46818i, -2147483647i), vec3<u32>(global1.x, 65586u, 1u), vec3<u32>(global1.x, 4294967295u, global1.x), -1i)), func_2().b), vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), true), vec3<i32>(i32(-1i) * -1i, -25374i, 0i), _wgslsmith_clamp_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.x, 57079u), vec3<u32>(75078u, 4294967295u, global1.x)), max(vec3<u32>(0u, global1.x, global1.x), vec3<u32>(global1.x, 3907u, 16273u)), vec3<bool>(false, false, false)), firstLeadingBit(vec3<u32>(global1.x, global1.x, global1.x)), ~abs(vec3<u32>(global1.x, 41457u, global1.x))), ~vec3<u32>(min(global1.x, global1.x), global1.x, ~23079u), -u_input.a.x | 2147483647i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)), select(0i, 72513i, true));
    let var_2 = select(!(!vec3<bool>(func_1(var_1.a, vec4<bool>(var_0.a.a.x, false, false, true), Struct_1(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.b, var_0.a.c, var_0.a.d, -1i)).x, true, func_2().a.x)), vec3<bool>(func_4(vec2<f32>(var_1.a, var_1.a), select(!vec2<bool>(true, var_0.a.a.x), func_4(vec2<f32>(var_1.a, var_1.a), var_0.a.a.yx, Struct_3(Struct_1(var_0.a.a, vec3<i32>(-2147483647i, u_input.a.x, var_1.b), vec3<u32>(var_0.a.d.x, 1u, 0u), vec3<u32>(global1.x, var_0.a.d.x, 6481u), u_input.a.x)), vec3<i32>(var_0.a.e, 2147483647i, var_1.b)).zy, func_1(1335f, var_0.a.a, Struct_1(var_0.a.a, vec3<i32>(1i, 0i, -2147483647i), var_0.a.d, vec3<u32>(68711u, 6724u, 0u), var_1.b)).x), Struct_3(Struct_1(vec4<bool>(var_0.a.a.x, true, true, var_0.a.a.x), vec3<i32>(-41247i, u_input.a.x, 0i), var_0.a.d, vec3<u32>(global1.x, 1u, global1.x), var_1.b)), vec3<i32>(~var_1.b, -1i >> (0u % 32u), reverseBits(-31848i))).x, true & func_2().a.x, select(!var_0.a.a.x || var_0.a.a.x, var_0.a.a.x || var_0.a.a.x, var_0.a.a.x)), !var_0.a.a.ywy);
    var var_3 = vec3<u32>(~51452u, (1u >> (var_0.a.c.x % 32u)) << (_wgslsmith_div_u32(global1.x & ~15015u, ~_wgslsmith_dot_vec3_u32(var_0.a.d, var_0.a.d)) % 32u), _wgslsmith_mult_u32(var_0.a.c.x, 60517u));
    let var_4 = Struct_5(~4778u, min(1u, 0u), func_2().d, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(547f, 1000f, var_1.a))))))));
    var var_5 = Struct_5(_wgslsmith_add_u32(18178u, ~global1.x), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36883u, 0u, 262u, 13230u), firstLeadingBit(vec4<u32>(global1.x, 0u, global1.x, 19376u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.b, 4294967295u, 0u, 6340u), vec4<u32>(36389u, var_0.a.c.x, 4294967295u, 75921u)))), var_0.a.c, vec3<f32>(914f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.d.x * 433f))));
    let var_6 = select(var_2, var_0.a.a.wyx, !(!vec3<bool>(!var_0.a.a.x, var_1.a <= 1002f, var_2.x)));
    var_0 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_2().e >> (countOneBits(_wgslsmith_add_u32(var_0.a.d.x, 1u)) % 32u), 1i), ~((_wgslsmith_add_u32(1u, 19447u) | _wgslsmith_mult_u32(global1.x, var_5.b)) ^ ~_wgslsmith_clamp_u32(45772u, var_4.b, 7625u)));
}

