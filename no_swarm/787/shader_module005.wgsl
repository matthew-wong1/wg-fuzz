struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(Struct_1(-1442f, vec4<f32>(-429f, 436f, 634f, -1000f), vec3<bool>(true, false, true), true), vec2<f32>(-252f, 181f), vec3<i32>(0i, 2147483647i, 0i), Struct_1(-564f, vec4<f32>(-518f, -408f, -429f, -270f), vec3<bool>(false, false, false), true))), Struct_3(Struct_2(Struct_1(-1154f, vec4<f32>(311f, 658f, 101f, 1242f), vec3<bool>(true, false, true), false), vec2<f32>(682f, 934f), vec3<i32>(-10726i, -28779i, 18105i), Struct_1(351f, vec4<f32>(401f, 1629f, 1000f, -1000f), vec3<bool>(true, false, false), true))), Struct_3(Struct_2(Struct_1(1115f, vec4<f32>(2117f, 278f, -1299f, 1481f), vec3<bool>(true, false, false), true), vec2<f32>(2151f, 412f), vec3<i32>(28087i, 3365i, -29274i), Struct_1(-261f, vec4<f32>(-606f, 571f, 491f, 1183f), vec3<bool>(false, true, false), false))), Struct_3(Struct_2(Struct_1(-730f, vec4<f32>(731f, -771f, -1241f, 1629f), vec3<bool>(false, false, false), true), vec2<f32>(228f, -110f), vec3<i32>(-40549i, -1i, 70509i), Struct_1(-3043f, vec4<f32>(-732f, -2141f, 1291f, -1057f), vec3<bool>(true, false, true), true))), Struct_3(Struct_2(Struct_1(319f, vec4<f32>(1000f, 243f, 766f, 2054f), vec3<bool>(false, true, true), true), vec2<f32>(1122f, 403f), vec3<i32>(-13898i, 2147483647i, -29552i), Struct_1(-1170f, vec4<f32>(-275f, 987f, -154f, 536f), vec3<bool>(false, true, true), false))), Struct_3(Struct_2(Struct_1(-1419f, vec4<f32>(-143f, -1705f, 339f, 1066f), vec3<bool>(false, false, false), false), vec2<f32>(537f, -1773f), vec3<i32>(-1i, 2147483647i, 29011i), Struct_1(-1000f, vec4<f32>(-132f, 1000f, -1161f, 583f), vec3<bool>(false, false, true), true))), Struct_3(Struct_2(Struct_1(-2074f, vec4<f32>(-199f, -1000f, -506f, 1000f), vec3<bool>(false, true, true), false), vec2<f32>(-645f, -1398f), vec3<i32>(10235i, 8951i, 1i), Struct_1(1710f, vec4<f32>(-108f, -3063f, 667f, -376f), vec3<bool>(false, false, false), true))), Struct_3(Struct_2(Struct_1(272f, vec4<f32>(-944f, -327f, -520f, -172f), vec3<bool>(false, true, true), true), vec2<f32>(-707f, -693f), vec3<i32>(i32(-2147483648), 2147483647i, -43139i), Struct_1(-203f, vec4<f32>(-353f, 1741f, 492f, -603f), vec3<bool>(false, true, false), false))), Struct_3(Struct_2(Struct_1(1412f, vec4<f32>(498f, 231f, 714f, -330f), vec3<bool>(false, true, false), false), vec2<f32>(977f, 163f), vec3<i32>(17692i, -1i, i32(-2147483648)), Struct_1(-448f, vec4<f32>(-213f, 1000f, 235f, 1079f), vec3<bool>(false, true, true), true))), Struct_3(Struct_2(Struct_1(1000f, vec4<f32>(-1144f, -148f, 1000f, 490f), vec3<bool>(true, true, false), true), vec2<f32>(879f, 335f), vec3<i32>(-35491i, 0i, 48403i), Struct_1(200f, vec4<f32>(-690f, -1000f, 1868f, 2255f), vec3<bool>(true, false, true), false))), Struct_3(Struct_2(Struct_1(267f, vec4<f32>(1615f, 125f, 1436f, -318f), vec3<bool>(false, true, true), false), vec2<f32>(703f, -502f), vec3<i32>(56862i, 38514i, 2147483647i), Struct_1(-171f, vec4<f32>(-1329f, -362f, 401f, 701f), vec3<bool>(true, false, false), false))), Struct_3(Struct_2(Struct_1(552f, vec4<f32>(-158f, -386f, 1279f, -825f), vec3<bool>(true, false, true), true), vec2<f32>(1588f, -557f), vec3<i32>(-58436i, 1i, 2147483647i), Struct_1(308f, vec4<f32>(380f, 774f, -193f, -537f), vec3<bool>(false, false, true), false))), Struct_3(Struct_2(Struct_1(-148f, vec4<f32>(567f, -1493f, -689f, 1696f), vec3<bool>(false, true, true), true), vec2<f32>(-335f, 656f), vec3<i32>(-9191i, i32(-2147483648), -1i), Struct_1(-870f, vec4<f32>(1000f, 1859f, 218f, -951f), vec3<bool>(false, false, true), true))), Struct_3(Struct_2(Struct_1(-894f, vec4<f32>(-1506f, -161f, -1696f, -187f), vec3<bool>(false, true, false), true), vec2<f32>(1000f, -2803f), vec3<i32>(-5029i, i32(-2147483648), 1019i), Struct_1(1304f, vec4<f32>(-706f, -713f, 968f, -2165f), vec3<bool>(false, true, true), false))), Struct_3(Struct_2(Struct_1(112f, vec4<f32>(-301f, -1635f, 1520f, 636f), vec3<bool>(true, true, true), true), vec2<f32>(-704f, -1697f), vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_1(1605f, vec4<f32>(-540f, 1669f, -419f, 1000f), vec3<bool>(true, true, false), false))), Struct_3(Struct_2(Struct_1(-1718f, vec4<f32>(-1077f, -1872f, 776f, 329f), vec3<bool>(false, true, false), false), vec2<f32>(-277f, 1105f), vec3<i32>(1288i, i32(-2147483648), i32(-2147483648)), Struct_1(1146f, vec4<f32>(-1605f, -460f, -320f, -874f), vec3<bool>(false, true, true), true))), Struct_3(Struct_2(Struct_1(-1119f, vec4<f32>(1000f, -1599f, 404f, 1227f), vec3<bool>(true, false, false), true), vec2<f32>(152f, 148f), vec3<i32>(i32(-2147483648), 1i, 2147483647i), Struct_1(483f, vec4<f32>(166f, -256f, -909f, -166f), vec3<bool>(true, true, true), false))), Struct_3(Struct_2(Struct_1(102f, vec4<f32>(-1000f, 1051f, -130f, -1875f), vec3<bool>(true, true, false), false), vec2<f32>(-1000f, -1061f), vec3<i32>(-43893i, -1i, i32(-2147483648)), Struct_1(2031f, vec4<f32>(-212f, 246f, -790f, 360f), vec3<bool>(false, false, false), false))), Struct_3(Struct_2(Struct_1(-337f, vec4<f32>(-214f, -1760f, 651f, 202f), vec3<bool>(false, false, true), false), vec2<f32>(-1000f, 1906f), vec3<i32>(3339i, 31941i, 31432i), Struct_1(-1059f, vec4<f32>(1079f, 1462f, 388f, -615f), vec3<bool>(true, false, false), true))));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = u_input.b.x;
    global0 = array<bool, 26>();
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_1.a))))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f * 1096f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-441f - arg_1.a))), arg_1.a), vec3<bool>(false, !all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), global0[_wgslsmith_index_u32(57658u, 26u)] || any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)]))), !any(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(57781u, 26u)], global0[_wgslsmith_index_u32(45158u, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)])))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(903f + arg_1.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1220f, -924f, -436f, -829f), vec4<f32>(-1951f, 1435f, -377f, 662f))))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 26u)])), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(arg_1.a, arg_1.a), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 259f) * vec2<f32>(290f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(356f, -419f), vec2<f32>(3029f, -244f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)), false))), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, u_input.b.x, 24356i), vec3<i32>(var_0, u_input.b.x, -31333i))) << (u_input.a.wyz % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1883f, arg_1.a, -309f, arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, 540f, arg_1.a, arg_1.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(27613u, 43717u, u_input.c.x, arg_0.x), u_input.a), 26u)])), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], true)), false, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]))), select(true, 7484u >= arg_0.x, true))), _wgslsmith_f_op_f32(round(625f)), Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, -363f, arg_1.a, 381f), vec4<f32>(2139f, arg_1.a, arg_1.a, arg_1.a)))), select(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 26u)], true), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec3<bool>(false, true, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 26u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], true, true))), !(!global0[_wgslsmith_index_u32(arg_0.x, 26u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1514f, -755f) + vec2<f32>(arg_1.a, 477f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1532f, -701f)))), reverseBits(abs(vec3<i32>(var_0, 3386i, u_input.b.x))), Struct_1(-1186f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a, arg_1.a, arg_1.a, -1946f), vec4<f32>(252f, -1277f, 1346f, 1000f)))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, false), global0[_wgslsmith_index_u32(36531u, 26u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 26u)], false), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)])), all(vec2<bool>(false, true)))), ~u_input.b.x);
    var_1 = Struct_4(var_1.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(var_1.c - 1842f)), vec4<f32>(_wgslsmith_f_op_f32(step(var_1.d.b.x, var_1.c)), _wgslsmith_div_f32(143f, -333f), arg_1.a, var_1.d.d.b.x), !(!vec3<bool>(var_1.b.a.d, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)])), any(vec2<bool>(true, var_1.d.d.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1222f, 613f)) - vec2<f32>(var_1.a.a, 335f)) * vec2<f32>(357f, 352f)), vec3<i32>(_wgslsmith_clamp_i32(var_1.d.c.x, u_input.b.x, var_1.b.c.x), var_1.d.c.x, ~2147483647i) ^ ~vec3<i32>(var_1.d.c.x, var_1.d.c.x, var_1.d.c.x), var_1.d.d), _wgslsmith_f_op_f32(var_1.d.d.b.x + arg_1.a), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, var_1.c, arg_1.a, -645f)), select(!vec3<bool>(global0[_wgslsmith_index_u32(32795u, 26u)], true, var_1.d.a.c.x), var_1.a.c, select(vec3<bool>(var_1.a.d, var_1.b.a.c.x, true), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_1.a.d), false)), select(all(vec2<bool>(var_1.d.a.c.x, false)), false && var_1.d.a.c.x, true)), _wgslsmith_f_op_vec2_f32(var_1.b.a.b.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_1.c) - _wgslsmith_f_op_vec2_f32(exp2(var_1.d.b)))), max(var_1.b.c, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_1.b.c, vec3<i32>(10205i, var_0, var_1.e)), var_1.b.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.a.b, !(!var_1.a.c), any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, false, global0[_wgslsmith_index_u32(1u, 26u)])))), var_0);
    let var_2 = Struct_3(var_1.b);
    return countOneBits(vec3<u32>(~u_input.c.x, u_input.c.x, 52438u));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: f32) -> vec2<f32> {
    var var_0 = arg_2.a.c.x;
    return vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(select(arg_0.a, arg_3, arg_2.a.d.c.x)))), -1073f);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> i32 {
    var var_0 = Struct_5(_wgslsmith_div_f32(759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-1571f * 114f))));
    let var_1 = _wgslsmith_clamp_i32(~arg_0.a.c.x, 0i, arg_0.a.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-813f * -357f) - arg_0.a.a.b.x)), vec4<bool>(true, true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(5671u, 26u)], false)), global0[_wgslsmith_index_u32(16283u, 26u)] & true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.c.x, u_input.c.x, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(func_3(u_input.c, Struct_5(var_0.a)), ~vec3<u32>(0u, u_input.c.x, 45776u)), u_input.a.yxy)), 19u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_1)))), arg_0.a.d.b.x))));
    var var_3 = select(!select(arg_0.a.d.c.zx, arg_0.a.a.c.yx, arg_0.a.a.c.zx), vec2<bool>(select(arg_0.a.a.c.x, any(vec2<bool>(false, arg_0.a.a.c.x)), global0[_wgslsmith_index_u32(abs(27396u), 26u)]) & (u_input.b.x <= var_1), 0u > u_input.a.x), any(!(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], false), arg_0.a.a.c, vec3<bool>(arg_0.a.d.c.x, arg_0.a.a.d, global0[_wgslsmith_index_u32(0u, 26u)])))));
    let var_4 = 936f;
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_3, 19>();
    global0 = array<bool, 26>();
    var var_0 = vec2<bool>(u_input.c.x >= reverseBits(firstTrailingBit(45449u)), global0[_wgslsmith_index_u32(u_input.c.x, 26u)] || true);
    var var_1 = -(~u_input.b.x);
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(8981i, u_input.b.x, u_input.b.x), func_2(global1[_wgslsmith_index_u32(select(61918u, 16591u, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), 19u)], _wgslsmith_f_op_f32(-1748f - -643f)) | ~_wgslsmith_div_i32(1i, u_input.b.x)) & -(~vec2<i32>(u_input.b.x << (u_input.c.x % 32u), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1973f + -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, -1119f, -127f, 1546f) - vec4<f32>(-423f, -583f, -2122f, 868f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -546f, -561f, -1593f))))), select(vec3<bool>(true, true, true), vec3<bool>(!var_0.x, false, true), all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]))), all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 26u)], !var_0.x))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4(Struct_5(-446f), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], false, global0[_wgslsmith_index_u32(1u, 26u)], false), select(vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(26813u, 26u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true, false, false), vec4<bool>(true, false, var_0.x, var_0.x))), Struct_3(Struct_2(Struct_1(-440f, vec4<f32>(1025f, -472f, 2421f, -678f), vec3<bool>(true, false, false), var_0.x), vec2<f32>(1485f, -1332f), vec3<i32>(u_input.b.x, 2147483647i, var_2.x), Struct_1(319f, vec4<f32>(1000f, -1540f, 639f, 515f), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -976f))))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-242f, -614f), _wgslsmith_f_op_f32(-1262f * 185f), !var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -694f), var_0.x))), vec3<i32>(~_wgslsmith_mod_i32(-6729i, 1i), 1i, -(~(-1i))) | -_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, u_input.b.x, 2147483647i), ~vec3<i32>(var_2.x, -1i, u_input.b.x)), Struct_1(1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(630f, -140f, -1385f, -701f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, -2307f, -494f, -251f)), -1i >= var_2.x))), select(vec3<bool>(all(vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], true)), !var_0.x, var_0.x), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(42046u, 26u)]), ~u_input.a.x != u_input.c.x), !(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], var_0.x, false)) || !global0[_wgslsmith_index_u32(1u, 26u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_3, 19>();
    var var_1 = func_1();
    let var_2 = func_1();
    var var_3 = vec2<i32>(min(~firstLeadingBit(1i), _wgslsmith_div_i32(reverseBits(24509i), -u_input.b.x) & var_1.c.x), -(~_wgslsmith_mult_i32(abs(22323i), func_2(global1[_wgslsmith_index_u32(106529u, 19u)], var_1.d.a))));
    let var_4 = 50467i;
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(u_input.a), u_input.a, !(!vec4<bool>(var_2.d.d, var_1.a.c.x, false, var_2.d.d))), _wgslsmith_mult_u32(0u, 3294u), 0i);
}

