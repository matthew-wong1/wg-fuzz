struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    let var_0 = ~vec2<i32>(-48293i, -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, arg_2, 631f)))))), vec3<f32>(-387f, -2082f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(557f)) - _wgslsmith_div_f32(-1000f, arg_2)), arg_2)), select(select(vec3<bool>(arg_1.a, any(vec2<bool>(true, arg_1.a)), arg_1.a & arg_1.a), vec3<bool>(false, select(arg_1.a, false, arg_1.a), true), vec3<bool>(45549u <= u_input.a.x, false, true)), vec3<bool>(true, arg_1.a, false), !vec3<bool>(arg_2 != arg_0, all(vec2<bool>(arg_1.a, arg_1.a)), any(vec4<bool>(arg_1.a, false, false, arg_1.a))))));
    var var_2 = -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, var_0.x, var_0.x) | vec3<i32>(var_0.x, var_0.x, 39141i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(49473i, -37189i, -8757i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(u_input.a.x, 1u, 48778u)) % vec3<u32>(32u)), vec3<i32>(var_0.x, 21290i, var_0.x) & (vec3<i32>(1i, 21884i, var_0.x) >> (vec3<u32>(31858u, u_input.a.x, 26166u) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 5426i, var_0.x), firstTrailingBit(vec3<i32>(var_0.x, -1i, var_0.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-881f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-626f, _wgslsmith_f_op_f32(abs(1213f)))), _wgslsmith_f_op_f32(-var_1.x)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, -517f, _wgslsmith_div_f32(arg_0, arg_2)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, arg_2))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.x, arg_2)), _wgslsmith_f_op_f32(step(1626f, -736f)), arg_1.a | true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(arg_2 * arg_2), -1668f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 830f, -729f) * vec3<f32>(arg_0, arg_2, 202f)), vec3<f32>(arg_2, 1455f, arg_0)))))));
    return _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(~19847u, 55150u, 0u), u_input.a.x, 4294967295u), _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(u_input.a.x, 1u, 4294967295u) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 27210u), vec3<u32>(4294967295u, 0u, 0u)), ~(~vec3<u32>(u_input.a.x, 1u, u_input.a.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3((firstTrailingBit(2147483647i) ^ 2147483647i) | ~1i, ~_wgslsmith_add_vec3_u32(func_3(-1000f, Struct_1(false), -652f), select(vec3<u32>(76019u, 32785u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 41260u), vec3<bool>(true, false, false))) | vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(62058u, 915u, ~u_input.a.x), 0u | (4294967295u ^ u_input.a.x)));
    let var_1 = select(var_0.b.x, u_input.a.x & u_input.a.x, true);
    let var_2 = abs(((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 63271u), vec2<u32>(1u, var_1)) & var_0.b.x) | u_input.a.x) << (_wgslsmith_dot_vec2_u32(var_0.b.zx, vec2<u32>(0u, _wgslsmith_div_u32(u_input.a.x, var_0.b.x))) % 32u));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(745f, -1678f, -1144f, -741f))))))), true, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(var_0.a), var_0.a, ~1i, abs(60066i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, 31609i, 41906i, 0i) << (vec4<u32>(4294967295u, var_0.b.x, 75600u, var_1) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-17919i, -2147483647i, 1i, 846i), vec4<i32>(1i, var_0.a, -5049i, -1i))))));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(2147483647i, select(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(4682u, u_input.a.x, u_input.a.x), vec3<u32>(0u, 62041u, 72500u), false), vec3<u32>(54124u, 0u, u_input.a.x)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, 80712u, 0u), vec3<u32>(21794u, u_input.a.x, 1u)), _wgslsmith_f_op_f32(min(497f, _wgslsmith_f_op_f32(1273f - arg_0.a.x))) == 955f));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(-1i, var_0.a, -102875i)), vec3<i32>(min(abs(var_0.a), 2147483647i), arg_1.c.x, -17486i)), -22218i);
    let var_2 = u_input.a.x;
    let var_3 = ~var_0.b.x;
    var var_4 = var_0.b;
    return Struct_1(select(false, arg_1.b, _wgslsmith_mult_i32(-78455i, var_1.x) > min(~var_1.x, arg_1.c.x)));
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = true;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(575f, arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x))))));
    var var_2 = vec4<f32>(-1259f, 1377f, _wgslsmith_f_op_f32(-var_1.x), arg_0.x);
    let var_3 = Struct_4(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2287f, arg_0.x, var_1.x, -469f), vec4<f32>(457f, 315f, var_1.x, 1310f))))), true, reverseBits(select(vec4<i32>(1i, 0i, -1210i, 0i), vec4<i32>(0i, 2147483647i, -31197i, 2147483647i), false))), func_2()), Struct_1(!func_2().b), select(!vec3<bool>(true, u_input.a.x <= u_input.a.x, -143f >= arg_0.x), !vec3<bool>(true, 429f <= var_2.x, true), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x <= u_input.a.x), func_4(Struct_2(vec4<f32>(-766f, var_1.x, var_1.x, var_2.x), true, vec4<i32>(-3555i, 1i, 28402i, -349i)), func_2()).a)), Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), -306f != var_2.x))), func_4(Struct_2(func_2().a, true, vec4<i32>(-1i, ~0i, max(31747i, 24912i), ~(-37243i))), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(558f, -1329f, var_2.x, var_2.x)), vec4<f32>(arg_0.x, var_1.x, var_1.x, arg_0.x))), true, ~abs(vec4<i32>(-2147483647i, -24677i, 14682i, -60897i)))));
    return var_1.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = select(!vec2<bool>(arg_2.a, !(arg_1.x <= arg_1.x)), select(select(vec2<bool>(arg_2.a && arg_2.a, all(vec2<bool>(true, false))), select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), arg_2.a & false), vec2<bool>(arg_2.a, arg_2.a)), !select(!vec2<bool>(arg_2.a, false), vec2<bool>(false, arg_2.a), true), true), select(!vec2<bool>(func_4(Struct_2(vec4<f32>(-610f, -658f, 1197f, -1916f), arg_2.a, vec4<i32>(184i, -85071i, -9748i, 18495i)), Struct_2(vec4<f32>(1238f, -2118f, 1051f, 654f), arg_2.a, vec4<i32>(9396i, 2147483647i, 1i, 1i))).a, arg_2.a || arg_2.a), select(vec2<bool>(arg_2.a != arg_2.a, false), select(vec2<bool>(true, true), vec2<bool>(arg_2.a, true), !arg_2.a), true), vec2<bool>(arg_2.a, true)));
    let var_1 = vec4<bool>(false, 34957u <= arg_1.x, true, var_0.x);
    var var_2 = all(select(vec3<bool>(var_1.x, true & func_4(Struct_2(vec4<f32>(1614f, -650f, -1000f, -1652f), var_0.x, vec4<i32>(21353i, -2147483647i, -17469i, -2147483647i)), Struct_2(vec4<f32>(-123f, -853f, -1586f, 1000f), true, vec4<i32>(0i, 0i, 1i, 0i))).a, func_4(Struct_2(vec4<f32>(-315f, -387f, 872f, 1042f), var_0.x, vec4<i32>(-18651i, 0i, -4901i, -2147483647i)), Struct_2(vec4<f32>(237f, -1331f, -749f, 321f), false, vec4<i32>(2147483647i, 23236i, -1i, 1i))).a | true), select(!vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(arg_2.a, 43377u >= u_input.a.x, func_4(Struct_2(vec4<f32>(-1559f, 134f, 518f, -630f), true, vec4<i32>(-13616i, -45150i, 12620i, -2800i)), Struct_2(vec4<f32>(-1000f, 1000f, 2068f, -1315f), var_1.x, vec4<i32>(1i, -21295i, -20892i, -1i))).a), true), true));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(269f)) - _wgslsmith_f_op_f32(1122f * 1000f)) * -1888f), -555f)) < _wgslsmith_f_op_f32(f32(-1f) * -654f);
    let var_3 = var_1.xxw;
    return min(~41330u, ~_wgslsmith_div_u32(32197u, min(53121u, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(select(u_input.a.x, reverseBits(firstLeadingBit(select(u_input.a.x, 69050u, false))), false), u_input.a.x >> (_wgslsmith_dot_vec2_u32(u_input.a, select(u_input.a >> (vec2<u32>(u_input.a.x, 11204u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 63934u), select(vec2<bool>(false, true), vec2<bool>(true, false), true))) % 32u), u_input.a.x, func_5(select(~vec3<u32>(u_input.a.x, 0u, 62815u), ~min(vec3<u32>(11696u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 4294967295u)), true), vec2<u32>(u_input.a.x, 45601u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1820f) < _wgslsmith_f_op_f32(func_1(vec3<f32>(-1000f, 755f, 1437f))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 52860i), vec2<i32>(-1i, 1i)), vec2<i32>(-2147483647i, _wgslsmith_add_i32(0i, -29705i))) << (u_input.a.x % 32u), _wgslsmith_sub_vec3_u32(~var_0.yxz, var_0.yyz));
    let var_2 = vec3<u32>(var_1.b.x << (abs(u_input.a.x) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 4400u, u_input.a.x)), vec3<u32>(u_input.a.x, 44173u, abs(u_input.a.x))), ~u_input.a.x), firstLeadingBit(~(~var_0.x)));
    var var_3 = Struct_5(-2236f, ~22731i, Struct_4(func_4(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(2311f, 1000f, 820f, 2762f), vec4<f32>(-1170f, -706f, -890f, -476f)), all(vec3<bool>(false, true, false)), -vec4<i32>(var_1.a, var_1.a, var_1.a, 2147483647i)), func_2()), func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, 611f, -1749f, 1016f)), true, _wgslsmith_div_vec4_i32(vec4<i32>(-59160i, 23256i, -15689i, 2147483647i), vec4<i32>(38682i, var_1.a, var_1.a, 4819i))), Struct_2(vec4<f32>(-985f, -606f, 1000f, 995f), true, vec4<i32>(2147483647i, var_1.a, var_1.a, var_1.a))), vec3<bool>(true != (var_1.a > var_1.a), true, any(vec3<bool>(false, false, true))), func_4(func_2(), Struct_2(vec4<f32>(104f, -179f, -1569f, 1313f), true, _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, var_1.a, -2147483647i, var_1.a), vec4<i32>(var_1.a, var_1.a, -1i, 47224i)))), Struct_1(true)));
    var_3 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a - var_3.a)), min(0i, var_3.b), var_3.c);
    let var_4 = Struct_4(Struct_1(!(var_3.a <= _wgslsmith_f_op_f32(trunc(1000f)))), var_3.c.e, vec3<bool>(all(select(select(vec4<bool>(var_3.c.d.a, var_3.c.d.a, var_3.c.a.a, false), vec4<bool>(false, var_3.c.b.a, var_3.c.e.a, true), vec4<bool>(var_3.c.a.a, var_3.c.e.a, var_3.c.d.a, false)), select(vec4<bool>(var_3.c.d.a, var_3.c.b.a, var_3.c.a.a, false), vec4<bool>(var_3.c.a.a, true, true, false), vec4<bool>(var_3.c.b.a, true, false, true)), var_3.c.c.x)), true, true && !any(vec4<bool>(var_3.c.c.x, var_3.c.e.a, true, true))), var_3.c.e, Struct_1(select(func_4(func_2(), func_2()).a, false, var_1.b.x >= (u_input.a.x ^ u_input.a.x))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * 299f)), _wgslsmith_f_op_f32(-146f - _wgslsmith_f_op_f32(floor(var_3.a))), _wgslsmith_f_op_f32(sign(var_3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1707f)) + _wgslsmith_f_op_f32(-1816f * _wgslsmith_f_op_f32(min(-633f, var_3.a)))), var_5.x)), abs(min(select(u_input.a << (var_0.ww % vec2<u32>(32u)), ~var_2.zy, any(vec4<bool>(false, var_4.e.a, var_3.c.d.a, var_4.d.a))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(var_0.x, 34982u)), var_0.ww))));
}

