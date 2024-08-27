struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(Struct_1(true, vec4<f32>(225f, 861f, -389f, 591f), vec3<f32>(1188f, 1000f, 189f)), Struct_1(false, vec4<f32>(388f, -1490f, -644f, 412f), vec3<f32>(-1332f, 504f, 647f)), true), vec4<bool>(true, false, true, true), Struct_2(Struct_1(true, vec4<f32>(455f, 1716f, -523f, 993f), vec3<f32>(851f, 851f, -2202f)), Struct_1(false, vec4<f32>(-1000f, -527f, -473f, -237f), vec3<f32>(353f, -891f, -319f)), false)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-140f, 259f, 923f, 1044f), vec3<f32>(-1000f, 221f, 1000f)), Struct_1(true, vec4<f32>(-1234f, -948f, -1080f, 131f), vec3<f32>(730f, -411f, 1745f)), true), vec4<bool>(false, true, false, true), Struct_2(Struct_1(false, vec4<f32>(200f, 495f, 1085f, 1690f), vec3<f32>(-1000f, -417f, 380f)), Struct_1(false, vec4<f32>(1359f, 1000f, -1410f, -1643f), vec3<f32>(-1023f, 402f, 409f)), false)), Struct_3(Struct_2(Struct_1(false, vec4<f32>(2324f, 1000f, -1000f, 936f), vec3<f32>(-1792f, -812f, -1000f)), Struct_1(false, vec4<f32>(506f, -1014f, -376f, -1909f), vec3<f32>(-1659f, -574f, -352f)), true), vec4<bool>(false, false, true, false), Struct_2(Struct_1(true, vec4<f32>(1000f, 1627f, -563f, 435f), vec3<f32>(491f, 143f, -468f)), Struct_1(true, vec4<f32>(-980f, 366f, -1133f, -1141f), vec3<f32>(220f, -1000f, -974f)), true)), Struct_3(Struct_2(Struct_1(false, vec4<f32>(-228f, -1023f, 1380f, -468f), vec3<f32>(692f, -1136f, -1779f)), Struct_1(false, vec4<f32>(1567f, -1271f, 1000f, -809f), vec3<f32>(-1987f, 1058f, -566f)), false), vec4<bool>(true, true, true, true), Struct_2(Struct_1(true, vec4<f32>(312f, 400f, -450f, 522f), vec3<f32>(131f, 2022f, -652f)), Struct_1(true, vec4<f32>(872f, 1304f, 1187f, 408f), vec3<f32>(-1667f, 1934f, 528f)), true)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(1217f, -411f, -116f, 1167f), vec3<f32>(530f, 1186f, -475f)), Struct_1(false, vec4<f32>(-560f, -739f, -175f, -1081f), vec3<f32>(104f, -371f, -2293f)), true), vec4<bool>(false, false, true, false), Struct_2(Struct_1(true, vec4<f32>(-1133f, -203f, -1926f, -1076f), vec3<f32>(-1932f, 868f, -1000f)), Struct_1(true, vec4<f32>(1504f, 483f, 1783f, -380f), vec3<f32>(-150f, -197f, -722f)), true)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-436f, 403f, -2017f, -650f), vec3<f32>(107f, -1000f, 939f)), Struct_1(false, vec4<f32>(-893f, 835f, 287f, 1000f), vec3<f32>(1366f, 2356f, -555f)), false), vec4<bool>(true, false, true, false), Struct_2(Struct_1(true, vec4<f32>(1000f, 689f, 1124f, -1061f), vec3<f32>(-1254f, -501f, 472f)), Struct_1(false, vec4<f32>(-743f, -615f, 988f, 284f), vec3<f32>(1376f, 701f, -1000f)), false)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-968f, -421f, -686f, -254f), vec3<f32>(-651f, -503f, -893f)), Struct_1(false, vec4<f32>(-784f, -435f, -1358f, 211f), vec3<f32>(878f, 416f, -1000f)), true), vec4<bool>(false, true, true, false), Struct_2(Struct_1(false, vec4<f32>(-719f, 2164f, -1487f, 1554f), vec3<f32>(-739f, 711f, -731f)), Struct_1(false, vec4<f32>(-1107f, 125f, -187f, -1508f), vec3<f32>(843f, -251f, -1400f)), false)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-922f, 743f, 2828f, 1126f), vec3<f32>(1000f, 1000f, 1000f)), Struct_1(false, vec4<f32>(347f, -1000f, -912f, -1000f), vec3<f32>(-1069f, -1002f, 907f)), false), vec4<bool>(true, true, false, false), Struct_2(Struct_1(true, vec4<f32>(-2731f, -103f, 607f, -471f), vec3<f32>(-1858f, 287f, 738f)), Struct_1(false, vec4<f32>(-109f, -1000f, 1238f, -546f), vec3<f32>(-376f, 1000f, -909f)), false)), Struct_3(Struct_2(Struct_1(true, vec4<f32>(-780f, -619f, -321f, 1046f), vec3<f32>(-426f, 1000f, 474f)), Struct_1(false, vec4<f32>(503f, 124f, -280f, -2222f), vec3<f32>(1122f, -421f, -440f)), true), vec4<bool>(false, true, false, false), Struct_2(Struct_1(false, vec4<f32>(-1372f, -676f, -1408f, 798f), vec3<f32>(-2589f, 874f, 158f)), Struct_1(true, vec4<f32>(-193f, 129f, -455f, 412f), vec3<f32>(454f, 1770f, -1000f)), true)), Struct_3(Struct_2(Struct_1(false, vec4<f32>(-1000f, -967f, -505f, -752f), vec3<f32>(603f, -178f, 1359f)), Struct_1(true, vec4<f32>(-921f, -559f, -1012f, 139f), vec3<f32>(-1930f, 1941f, 1612f)), true), vec4<bool>(false, true, false, true), Struct_2(Struct_1(true, vec4<f32>(-708f, 1633f, -842f, 251f), vec3<f32>(-594f, -423f, 1689f)), Struct_1(true, vec4<f32>(467f, 147f, -449f, -1073f), vec3<f32>(609f, -1899f, -1976f)), true)), Struct_3(Struct_2(Struct_1(false, vec4<f32>(433f, 780f, 216f, -238f), vec3<f32>(2180f, -503f, -193f)), Struct_1(true, vec4<f32>(-357f, 866f, -528f, -621f), vec3<f32>(220f, 1064f, 262f)), false), vec4<bool>(true, true, false, true), Struct_2(Struct_1(false, vec4<f32>(-1196f, -1000f, 1983f, -1146f), vec3<f32>(-1396f, 126f, -1129f)), Struct_1(true, vec4<f32>(-894f, -2419f, -1000f, 1690f), vec3<f32>(-3497f, -1961f, -139f)), true)), Struct_3(Struct_2(Struct_1(false, vec4<f32>(-831f, -827f, -1000f, 156f), vec3<f32>(-402f, 612f, -945f)), Struct_1(false, vec4<f32>(-1423f, 1292f, -907f, -2568f), vec3<f32>(117f, -980f, -745f)), true), vec4<bool>(true, false, true, true), Struct_2(Struct_1(true, vec4<f32>(344f, -731f, 1000f, -1707f), vec3<f32>(1171f, 132f, -103f)), Struct_1(true, vec4<f32>(-1264f, -2400f, -103f, 202f), vec3<f32>(1079f, -957f, -1118f)), true)));

var<private> global2: array<vec4<bool>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = vec4<bool>(any(vec3<bool>(false, !all(vec3<bool>(true, arg_1, true)), true & (132f < arg_3))), !(!arg_1), arg_0.a, arg_1);
    global0 = array<vec2<f32>, 4>();
    global0 = array<vec2<f32>, 4>();
    var var_1 = -min(u_input.b.xy, _wgslsmith_add_vec2_i32(u_input.b.zz, countOneBits(-u_input.b.xy)));
    var var_2 = false;
    return _wgslsmith_f_op_f32(floor(arg_3));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1164f * -2155f) + 460f), -1113f, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a > u_input.a, vec4<f32>(685f, -1351f, 630f, -1685f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -598f, 1342f))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), vec2<f32>(-702f, -1000f), 840f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f + 1000f) - _wgslsmith_f_op_f32(ceil(-924f))) + _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, -1648f, -196f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, 3506f, 391f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-713f, -1377f, 723f), vec3<f32>(-502f, 105f, 148f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-572f, 465f, -227f) + vec3<f32>(-165f, 1808f, -1000f)))), true))));
    let var_1 = Struct_1(any(!global2[_wgslsmith_index_u32(u_input.e, 5u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1625f, var_0.c.x, -219f, var_0.b.x))) + var_0.b))), vec3<f32>(_wgslsmith_f_op_f32(2962f - _wgslsmith_div_f32(1729f, _wgslsmith_f_op_f32(abs(var_0.b.x)))), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), 476f));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-446f, var_1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = true;
    var var_1 = Struct_3(Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-328f, arg_1, arg_2, arg_2), _wgslsmith_div_vec4_f32(vec4<f32>(326f, 479f, 391f, 846f), vec4<f32>(1000f, 654f, -658f, -352f)), any(vec3<bool>(true, var_0, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, -333f, -171f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 632f, 239f)))), Struct_1(false, vec4<f32>(arg_1, 1f, _wgslsmith_div_f32(arg_3.x, arg_1), arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -488f, arg_1) - vec3<f32>(-369f, 1156f, arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1561f, 364f, arg_3.x)))), select(_wgslsmith_f_op_f32(arg_2 + arg_3.x) == _wgslsmith_f_op_f32(f32(-1f) * -2495f), false, !(!var_0))), global2[_wgslsmith_index_u32(u_input.c.x, 5u)], Struct_2(Struct_1(any(vec4<bool>(var_0, false, var_0, var_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, -452f, 555f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1460f, arg_1, arg_1))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_2, arg_3.x), vec3<f32>(1384f, arg_1, arg_1)))), Struct_1(arg_1 <= _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-154f, arg_3.x, arg_2, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, 837f, 815f), vec3<f32>(arg_2, -153f, arg_3.x))), arg_0 < _wgslsmith_add_i32(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -28657i, u_input.b.x, arg_0), vec4<i32>(u_input.b.x, arg_0, arg_0, u_input.b.x)))));
    let var_2 = u_input.d.zz;
    let var_3 = Struct_2(var_1.c.a, var_1.a.a, true);
    var var_4 = all(var_1.b.zww) && any(select(select(select(vec4<bool>(var_3.a.a, var_0, true, true), var_1.b, var_3.a.a), vec4<bool>(var_3.a.a, true, var_0, var_0), var_0), !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, 0u), 5u)], !global2[_wgslsmith_index_u32(4294967295u, 5u)]));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b.b.x, arg_2, -554f), var_3.a.b.xwz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, 2097f, arg_1)))) + _wgslsmith_f_op_vec3_f32(var_3.a.b.www - var_1.c.a.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_3.a.b.xyz * var_1.c.b.c))), var_1.b.yyz)), vec3<f32>(_wgslsmith_f_op_f32(round(var_1.c.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1611f, arg_3.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1577f - var_1.c.a.b.x) - _wgslsmith_f_op_f32(select(arg_3.x, 1093f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(511f, 1457f, true)) + _wgslsmith_f_op_f32(-311f + arg_3.x)))), !vec3<bool>(!all(var_1.b.wz), any(!var_1.b.yy), true)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(arg_0, Struct_1(!all(!vec2<bool>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(103f, -1232f, arg_0.b.x, 502f), arg_0.b)))), vec3<f32>(-186f, 217f, 163f)), arg_0.a);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = func_5(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(903f, 1886f, -870f, 693f))))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_clamp_i32(u_input.a ^ u_input.a, -2147483647i, u_input.b.x << (87274u % 32u)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_3(Struct_1(false, vec4<f32>(-412f, 168f, 1154f, 700f), vec3<f32>(-1378f, 1173f, 1528f)), any(vec2<bool>(arg_0, true)), vec2<f32>(1554f, 1000f), _wgslsmith_f_op_f32(step(-186f, 173f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1286f)), _wgslsmith_f_op_f32(-969f + -1352f))))));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x));
    let var_3 = Struct_4(select(vec4<bool>(true, all(!vec2<bool>(var_0.c, false)), true, ~u_input.b.x >= _wgslsmith_mult_i32(-1i, u_input.a)), vec4<bool>(!func_5(Struct_1(true, vec4<f32>(199f, 541f, var_2, var_2), var_0.b.c)).c, arg_0, func_5(func_5(var_0.a).b).b.a, arg_0), any(vec3<bool>(true, var_0.c || true, true))), Struct_3(func_5(Struct_1(arg_0, var_0.a.b, _wgslsmith_f_op_vec3_f32(abs(var_0.b.c)))), vec4<bool>(true, true, arg_0, !(-1000f != var_2)), Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 157f, -1122f, var_0.b.b.x)), var_0.b.c), func_5(var_0.b).a, any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(var_0.b.a, arg_0, false), arg_0)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false != arg_0, !arg_0), select(!vec3<bool>(true, false, var_0.b.a), select(vec3<bool>(true, arg_0, true), vec3<bool>(false, true, arg_0), false), var_1.x != var_1.x))));
    var var_4 = vec4<i32>(firstTrailingBit(abs(select(-u_input.a, -2147483647i, arg_0 != true))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(21871i, 47726i, -2147483647i, u_input.a) & vec4<i32>(u_input.a, 1i, 2147483647i, 1i), ~abs(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.b.x))), u_input.b.x, 47186i);
    return var_3.b.c;
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 12u)];
    global1 = array<Struct_3, 12>();
    global2 = array<vec4<bool>, 5>();
    let var_1 = u_input.b.x;
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~19933u, ~(~u_input.d.x)), select(36396u, 2295u, var_0.b.x)), 5u)], Struct_3(func_1(4294967295u != ~u_input.e, u_input.c), vec4<bool>(!any(var_0.b.xyz), true, arg_0 >= ~arg_0, var_0.b.x), func_1(var_0.c.c, u_input.c << (~u_input.c % vec4<u32>(32u)))), !all(var_0.b));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(func_5(var_2.b.c.b).a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.c.b.c.x, var_2.b.c.b.c.x, 1270f, -1000f) * var_2.b.a.b.b)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.c.b.b.x, 1295f, -1377f, -1150f))), var_0.c.a.b)), !(!select(vec4<bool>(false, true, arg_1.c, true), var_2.a, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_sub_u32(24991u, u_input.d.x) << (4294967295u % 32u));
    let var_1 = -u_input.b.zy;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(1755f, _wgslsmith_f_op_f32(step(1684f, 1519f))) <= _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-841f, -933f, 395f, -150f)))) - _wgslsmith_f_op_vec4_f32(func_6(max(1u, u_input.e), func_1(false, u_input.c)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1511f * 907f), 1146f, _wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<bool>(false, all(vec3<bool>(true, true, true)), true)))), func_1(true, (u_input.c & u_input.c) >> ((~vec4<u32>(16683u, var_0, var_0, var_0) >> (select(vec4<u32>(var_0, 4294967295u, var_0, 4294967295u), u_input.c, false) % vec4<u32>(32u))) % vec4<u32>(32u))).b, (~(~u_input.e) | _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), 1u)) >= min(9827u, 1u));
    global0 = array<vec2<f32>, 4>();
    global2 = array<vec4<bool>, 5>();
    var_2 = func_1(true, u_input.c);
    var var_3 = Struct_1(_wgslsmith_clamp_u32(10348u, u_input.c.x, abs(~1u)) > _wgslsmith_mult_u32(~(~0u), _wgslsmith_clamp_u32(var_0, ~u_input.d.x, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.b.x, -2646f, _wgslsmith_f_op_f32(var_2.b.b.x - var_2.b.c.x), _wgslsmith_f_op_f32(max(1163f, var_2.a.c.x)))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(-54140i, var_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(347f, var_2.b.c.x) * vec2<f32>(897f, var_2.b.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-478f, var_2.b.b.x)))))).x, var_2.a.b.x, var_2.b.b.x));
    let var_4 = min(-74353i, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(~(-1i), max(u_input.b.x, var_1.x)), abs(var_4)), _wgslsmith_mod_i32(-17637i, 1i)));
}

