struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(-195f, false, Struct_2(2286f, Struct_1(1u), Struct_1(1u)), Struct_1(59032u), vec4<f32>(101f, 591f, 706f, 1061f)), Struct_3(893f, false, Struct_2(-1836f, Struct_1(0u), Struct_1(4294967295u)), Struct_1(6808u), vec4<f32>(-2036f, 873f, -683f, 1022f)), Struct_3(1000f, true, Struct_2(984f, Struct_1(4294967295u), Struct_1(56149u)), Struct_1(0u), vec4<f32>(241f, 2253f, 448f, 269f)), Struct_3(-710f, true, Struct_2(1000f, Struct_1(1u), Struct_1(89344u)), Struct_1(0u), vec4<f32>(360f, -1561f, -482f, 1968f)), Struct_3(696f, true, Struct_2(-1289f, Struct_1(73843u), Struct_1(1u)), Struct_1(60520u), vec4<f32>(311f, 718f, -1974f, -375f)), Struct_3(-1344f, true, Struct_2(472f, Struct_1(35096u), Struct_1(4294967295u)), Struct_1(1u), vec4<f32>(-578f, -577f, 498f, -345f)), Struct_3(-796f, true, Struct_2(-1759f, Struct_1(4294967295u), Struct_1(4294967295u)), Struct_1(1u), vec4<f32>(-1490f, -222f, -131f, -285f)), Struct_3(944f, true, Struct_2(-552f, Struct_1(1u), Struct_1(95993u)), Struct_1(0u), vec4<f32>(170f, 316f, -137f, -3074f)));

var<private> global1: array<vec2<u32>, 3>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(-339f, false, Struct_2(229f, Struct_1(46004u), Struct_1(38036u)), Struct_1(4294967295u), vec4<f32>(1724f, 1170f, 500f, -412f)), Struct_3(916f, true, Struct_2(-1642f, Struct_1(20129u), Struct_1(31171u)), Struct_1(0u), vec4<f32>(2161f, 356f, 238f, -423f)), Struct_3(209f, false, Struct_2(-1204f, Struct_1(50359u), Struct_1(5461u)), Struct_1(1u), vec4<f32>(1930f, -571f, -1724f, 292f)), Struct_3(-435f, true, Struct_2(569f, Struct_1(1u), Struct_1(20779u)), Struct_1(71166u), vec4<f32>(182f, -1406f, -643f, -332f)), Struct_3(-237f, true, Struct_2(1410f, Struct_1(38211u), Struct_1(5520u)), Struct_1(1u), vec4<f32>(427f, -754f, 433f, 518f)), Struct_3(2236f, false, Struct_2(-1356f, Struct_1(7341u), Struct_1(10608u)), Struct_1(3484u), vec4<f32>(1347f, 242f, -1000f, -1001f)), Struct_3(1000f, false, Struct_2(-531f, Struct_1(20879u), Struct_1(1u)), Struct_1(46909u), vec4<f32>(669f, 672f, -673f, 497f)), Struct_3(-2311f, true, Struct_2(556f, Struct_1(1u), Struct_1(1u)), Struct_1(18288u), vec4<f32>(964f, -993f, -889f, 742f)), Struct_3(980f, false, Struct_2(1674f, Struct_1(5301u), Struct_1(1u)), Struct_1(128434u), vec4<f32>(-2001f, -716f, 1152f, -554f)), Struct_3(-1095f, true, Struct_2(2276f, Struct_1(32695u), Struct_1(25523u)), Struct_1(1u), vec4<f32>(1526f, -741f, 666f, -1000f)), Struct_3(972f, false, Struct_2(322f, Struct_1(55707u), Struct_1(0u)), Struct_1(66173u), vec4<f32>(1000f, -1043f, 895f, -178f)), Struct_3(1942f, false, Struct_2(-1767f, Struct_1(18335u), Struct_1(1u)), Struct_1(90139u), vec4<f32>(595f, -1424f, 158f, 806f)), Struct_3(350f, true, Struct_2(772f, Struct_1(4294967295u), Struct_1(4294967295u)), Struct_1(41605u), vec4<f32>(-918f, -1834f, 124f, 1203f)), Struct_3(-664f, false, Struct_2(340f, Struct_1(30477u), Struct_1(11602u)), Struct_1(23945u), vec4<f32>(995f, 1134f, -558f, 1800f)), Struct_3(450f, false, Struct_2(-490f, Struct_1(0u), Struct_1(7172u)), Struct_1(4294967295u), vec4<f32>(295f, 248f, 614f, 816f)), Struct_3(-186f, false, Struct_2(733f, Struct_1(29819u), Struct_1(0u)), Struct_1(0u), vec4<f32>(684f, -936f, -206f, 908f)), Struct_3(-570f, false, Struct_2(314f, Struct_1(29448u), Struct_1(0u)), Struct_1(4294967295u), vec4<f32>(203f, -1548f, 967f, 852f)), Struct_3(-1245f, true, Struct_2(-1819f, Struct_1(83611u), Struct_1(60866u)), Struct_1(8543u), vec4<f32>(-1685f, 1337f, 334f, 1000f)), Struct_3(472f, false, Struct_2(261f, Struct_1(4294967295u), Struct_1(0u)), Struct_1(0u), vec4<f32>(151f, -308f, -363f, -204f)), Struct_3(811f, true, Struct_2(1087f, Struct_1(0u), Struct_1(0u)), Struct_1(3613u), vec4<f32>(-1000f, 157f, 196f, -309f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)])), ~(u_input.a >> (47220u % 32u))), global1[_wgslsmith_index_u32(~(~4294967295u), 3u)]));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = 56383u ^ firstLeadingBit(u_input.a);
    global2 = array<Struct_3, 20>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f - -248f) - _wgslsmith_f_op_f32(abs(226f)))))), func_2(), func_2());
    global0 = array<Struct_3, 8>();
    let var_2 = global2[_wgslsmith_index_u32(arg_0.x, 20u)];
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec3<f32> {
    global2 = array<Struct_3, 20>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(~0u), 3u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(530f, -490f, -298f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.c.a, -669f, arg_1.a) - arg_3.e.yxy)) * arg_3.e.wyx)));
    var_0 = vec2<u32>(abs(~145115u), 17589u);
    var var_2 = arg_1;
    return _wgslsmith_div_vec3_f32(arg_3.e.xyx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -3167f, 737f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1349f, var_1.x, 269f) + vec3<f32>(378f, arg_1.a, -679f))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + 664f), _wgslsmith_f_op_f32(var_1.x * 656f), 1942f))), arg_3.e.xyz, arg_3.b)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = false;
    global2 = array<Struct_3, 20>();
    var var_1 = vec4<u32>(~u_input.a, ~_wgslsmith_div_u32(38385u ^ u_input.a, u_input.a), countOneBits(4294967295u), 22003u) | ~vec4<u32>(u_input.a, select(u_input.a, u_input.a, var_0 & var_0), ~u_input.a, ~4794u);
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_3, arg_3), arg_3);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), !(!arg_1.x), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f)), func_2(), func_3(vec3<u32>(_wgslsmith_sub_u32(var_1.x, 41190u), firstLeadingBit(1u), 50246u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.yz, vec2<f32>(arg_0.x, arg_2.x))) - arg_2.yz))), func_2(), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1697f) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f * arg_0.x)))), -1096f, arg_0.x));
    return var_3.c;
}

fn func_1() -> vec3<bool> {
    global2 = array<Struct_3, 20>();
    let var_0 = Struct_1(~(~_wgslsmith_div_u32(0u, 4294967295u)));
    let var_1 = true & select(true, true, true);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)), var_1, func_5(_wgslsmith_f_op_vec3_f32(func_4(var_0, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -427f), func_2(), var_0), Struct_2(_wgslsmith_f_op_f32(-231f * 119f), func_2(), func_3(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec2<f32>(-985f, 124f))), Struct_3(-1765f, true, Struct_2(-1260f, var_0, var_0), func_3(vec3<u32>(0u, u_input.a, var_0.a), vec2<f32>(-360f, -1103f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(290f, -780f, 1400f, 342f)))))), !(!vec4<bool>(var_1, var_1, var_1, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-694f, -451f, 1000f) - vec3<f32>(-466f, -560f, -740f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(298f, -1457f, -292f))))), ~_wgslsmith_add_i32(0i, -4234i)), var_0, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f + -585f)), _wgslsmith_f_op_f32(-1399f - _wgslsmith_f_op_f32(1000f * -1681f)), _wgslsmith_f_op_f32(-1195f - _wgslsmith_f_op_f32(min(2152f, 533f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, -648f, 1416f, 638f) * vec4<f32>(-131f, 618f, 141f, -806f))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(-868f * 320f), 1063f, -2100f)))));
    let var_3 = var_2.e.xxz;
    return !select(vec3<bool>(true, any(vec3<bool>(var_2.b, true, var_2.b)), !(!var_2.b)), !select(!vec3<bool>(var_1, false, var_1), select(vec3<bool>(false, var_1, false), vec3<bool>(var_2.b, var_2.b, false), false), true), select(!vec3<bool>(var_1, false, false), vec3<bool>(true, true, false | var_1), !select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(false, var_1, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 3>();
    var var_0 = vec4<bool>(false, any(func_1()), func_1().x, true);
    let var_1 = func_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(u_input.a), func_5(vec3<f32>(-965f, 1321f, 2338f), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec3<f32>(2107f, 461f, 1471f), -2147483647i), func_5(vec3<f32>(-238f, -667f, -1555f), vec4<bool>(false, var_0.x, var_0.x, false), vec3<f32>(181f, 1000f, -1128f), -4921i), Struct_3(-808f, true, Struct_2(1000f, Struct_1(u_input.a), Struct_1(u_input.a)), Struct_1(u_input.a), vec4<f32>(249f, 1347f, 707f, -534f)))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-470f + 533f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1076f, -254f), _wgslsmith_f_op_f32(round(1670f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f), _wgslsmith_f_op_f32(f32(-1f) * -1522f)), -464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f)))), !(!(!vec4<bool>(true, true, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1072f, -478f, -208f), vec3<f32>(-841f, -175f, 1092f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), 400f, _wgslsmith_div_f32(322f, 1757f)))), 1i).a;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-1607f)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(19284u), Struct_2(var_1, Struct_1(u_input.a), Struct_1(0u)), Struct_2(-734f, Struct_1(u_input.a), Struct_1(25834u)), Struct_3(-680f, true, Struct_2(var_1, Struct_1(u_input.a), Struct_1(u_input.a)), Struct_1(50521u), vec4<f32>(var_1, -182f, var_1, var_1)))).x)), _wgslsmith_f_op_f32(1667f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f * var_1)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -305f, 241f, var_1) - vec4<f32>(1345f, var_1, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1371f, _wgslsmith_f_op_f32(106f - 1409f), _wgslsmith_f_op_f32(-var_1), -2134f)), false)), var_1 <= var_1));
    global0 = array<Struct_3, 8>();
    var var_3 = func_5(vec3<f32>(_wgslsmith_div_f32(-186f, var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * var_2.x), _wgslsmith_f_op_f32(-var_2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(!var_0.x, false, any(vec4<bool>(false, false, false, var_0.x))), var_0.x), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -13820i), abs(vec3<i32>(-1i, -2147483647i, 2147483647i))) & max(20011i << (u_input.a % 32u), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(8189i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(var_3.c, Struct_2(var_1, Struct_1(59215u), var_3.b), func_5(var_2.xwx, vec4<bool>(false, var_0.x, true, true), vec3<f32>(var_2.x, 239f, var_2.x), -11785i), Struct_3(var_2.x, var_0.x, Struct_2(207f, Struct_1(u_input.a), Struct_1(0u)), var_3.b, vec4<f32>(var_1, -190f, var_3.a, 931f)))).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, var_1)))))), -(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-3351i, -16510i), vec2<i32>(0i, -42309i)))));
}

