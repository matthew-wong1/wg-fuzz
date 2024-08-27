struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, vec4<f32>(-1878f, 733f, -2156f, 846f), vec4<i32>(1i, 28687i, -1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(-1133f, -186f, 1047f, -257f), vec4<i32>(1i, i32(-2147483648), 15523i, 17482i), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(275f, 1161f, -1000f, 1968f), vec4<i32>(20524i, 2147483647i, -4520i, -3065i), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(-1082f, 1485f, 2121f, 259f), vec4<i32>(-1i, 0i, -1i, -1i), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(1000f, 575f, -665f, -1018f), vec4<i32>(-23286i, 1i, i32(-2147483648), -12268i), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(374f, 549f, 573f, -557f), vec4<i32>(i32(-2147483648), -24352i, 0i, 2147483647i), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(1218f, -503f, -317f, 434f), vec4<i32>(0i, 0i, 33054i, 1i), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(-995f, 1319f, -2057f, 268f), vec4<i32>(-47733i, 206i, 1i, -21737i), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(-1902f, -541f, 394f, 557f), vec4<i32>(i32(-2147483648), -1i, -10475i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(false, vec4<f32>(988f, 141f, 1094f, -732f), vec4<i32>(i32(-2147483648), 1i, -2643i, -1i), vec2<bool>(false, false)), Struct_1(false, vec4<f32>(-134f, -541f, 226f, 690f), vec4<i32>(43632i, 7972i, 0i, -14570i), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(158f, -1578f, -1584f, -1038f), vec4<i32>(36178i, 1i, -1i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(false, vec4<f32>(-416f, 2135f, 1000f, 401f), vec4<i32>(2147483647i, 39190i, -1i, 0i), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(1918f, -2125f, 534f, 1776f), vec4<i32>(-60418i, 53639i, 89527i, 1i), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(1038f, -1970f, -965f, 2077f), vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(1533f, -1268f, -154f, -1127f), vec4<i32>(14707i, 16178i, 1i, -38905i), vec2<bool>(true, false)), Struct_1(false, vec4<f32>(-778f, 677f, 710f, -1218f), vec4<i32>(i32(-2147483648), 23307i, i32(-2147483648), -77980i), vec2<bool>(false, true)), Struct_1(true, vec4<f32>(176f, -429f, -588f, 1546f), vec4<i32>(40687i, -1i, -41332i, 1i), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(1000f, -1397f, 1612f, -1410f), vec4<i32>(25178i, -39025i, 4423i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(-896f, -1358f, 2024f, -1000f), vec4<i32>(i32(-2147483648), -1i, -12437i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(965f, 2475f, 1000f, 533f), vec4<i32>(-97541i, 53363i, -29015i, -1i), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(171f, 1000f, 668f, -106f), vec4<i32>(0i, -42381i, -11599i, -7248i), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(2411f, -309f, 2044f, -1000f), vec4<i32>(-4465i, i32(-2147483648), -15475i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(true, vec4<f32>(1106f, -309f, 208f, -1262f), vec4<i32>(-69214i, 0i, 45025i, 2147483647i), vec2<bool>(true, true)), Struct_1(false, vec4<f32>(128f, -380f, 773f, -519f), vec4<i32>(0i, -1i, 18789i, -35754i), vec2<bool>(false, true)), Struct_1(false, vec4<f32>(-446f, -332f, -305f, 1000f), vec4<i32>(1i, -6435i, -15540i, i32(-2147483648)), vec2<bool>(true, true)), Struct_1(false, vec4<f32>(809f, -200f, 840f, 328f), vec4<i32>(-16628i, -1i, i32(-2147483648), -45936i), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(143f, -845f, 1000f, 1177f), vec4<i32>(-31561i, -6055i, 44796i, -1i), vec2<bool>(true, false)), Struct_1(true, vec4<f32>(-1804f, 1164f, 239f, -165f), vec4<i32>(1i, 2147483647i, 2147483647i, -12574i), vec2<bool>(false, false)), Struct_1(true, vec4<f32>(1069f, 501f, 178f, 882f), vec4<i32>(11296i, -8470i, 8252i, -29037i), vec2<bool>(false, false)));

var<private> global3: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, 12853u) ^ u_input.c.x, 30u)];
    let var_1 = Struct_1(_wgslsmith_clamp_u32(reverseBits(89682u) << (_wgslsmith_mod_u32(86173u, u_input.c.x) % 32u), ~_wgslsmith_add_u32(u_input.a.x, 12017u), 4294967295u) >= ~u_input.a.x, var_0.b, vec4<i32>(19880i, 6196i, -_wgslsmith_mult_i32(u_input.e, arg_0.c.x), u_input.b.x), !var_0.d);
    let var_2 = var_0.b.xx;
    var var_3 = vec3<bool>(false, var_0.d.x & (arg_0.b.x < _wgslsmith_f_op_f32(f32(-1f) * -147f)), any(select(vec4<bool>(true, true, var_0.d.x, true), select(vec4<bool>(arg_0.a, var_1.d.x, false, true), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.a, true, false, false)), vec4<bool>(all(arg_0.d), true, true, var_0.b.x == 151f))));
    var var_4 = ~(~u_input.d);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~1u, ~24693u << ((u_input.a.x | 0u) % 32u)), ~vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), u_input.a.x)) >> (u_input.a % vec3<u32>(32u));
}

fn func_2(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 30u)];
    var var_1 = global1[_wgslsmith_index_u32(0u, 27u)];
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, ~func_3(Struct_1(var_0.a, var_0.b, var_1.c, vec2<bool>(var_0.d.x, var_0.a)))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 76381u), u_input.a.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, u_input.d), vec2<u32>(u_input.c.x, 26223u))), min(arg_0.zz, vec2<u32>(4294967295u, 1u))), u_input.d), vec3<u32>(1u & u_input.d, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.x << (38500u % 32u), arg_0.x), arg_0.x), 1u));
    var var_3 = var_0.b.xwy;
    let var_4 = min(vec4<u32>(25627u, _wgslsmith_clamp_u32(34171u, ~u_input.a.x, arg_0.x), ~29699u, arg_0.x), u_input.c);
    return -(((vec4<i32>(-1i) * -var_0.c) >> (_wgslsmith_div_vec4_u32(~var_4, select(vec4<u32>(7244u, 31251u, 14032u, u_input.d), var_4, vec4<bool>(var_0.a, true, true, true))) % vec4<u32>(32u))) | vec4<i32>(var_0.c.x, u_input.e, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, var_0.c.x, u_input.b.x), var_0.c.xzx), ~_wgslsmith_div_i32(20058i, 16233i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1090f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.x + -2967f), 334f))))));
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.zy);
    let var_0 = arg_2.b.xw;
    global0 = arg_1.b.zw;
    global1 = array<Struct_1, 27>();
    return vec4<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(max(51306i, -20037i), -2147483647i), vec2<i32>(u_input.e, ~arg_3.x))), min(func_2(u_input.c.xyy).x | -58436i, 1i), -select(arg_2.c.x, _wgslsmith_mult_i32(arg_3.x, arg_3.x) ^ (i32(-1i) * -73758i), true), ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0.x, -35458i), ~0i), arg_2.c.x ^ 1i));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global3 = select(!arg_1.d.x, arg_1.d.x, true);
    var var_0 = func_4(vec4<i32>(~1i ^ (abs(u_input.b.x) << ((4294967295u >> (u_input.c.x % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(-func_2(u_input.a), ~reverseBits(vec4<i32>(u_input.e, -1i, 28248i, arg_1.c.x))), u_input.b.x, -44986i), Struct_1(all(!vec3<bool>(arg_1.a, arg_1.a, false)), arg_1.b, arg_1.c << (countOneBits(vec4<u32>(arg_2, u_input.d, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), select(select(vec2<bool>(true, arg_1.d.x), vec2<bool>(arg_1.a, arg_1.a), select(arg_1.d, arg_1.d, arg_1.a)), select(!vec2<bool>(true, arg_1.a), select(arg_1.d, arg_1.d, arg_1.d), true), false)), global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 30u)], -vec3<i32>(-2147483647i, -28284i, 1i));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1819f, arg_1.b.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(-1367f, arg_1.b.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, -128f, arg_1.b.x, 442f)))) - vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(sign(arg_1.b.x)), _wgslsmith_f_op_f32(step(arg_1.b.x, 905f)), _wgslsmith_f_op_f32(step(global0.x, 1516f))))), ~(arg_1.c | vec4<i32>(~(-30601i), abs(1i), -1i, _wgslsmith_mod_i32(0i, arg_1.c.x))), !select(!select(vec2<bool>(false, false), arg_1.d, arg_1.a), !arg_1.d, arg_1.d));
    var var_2 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * var_1.b.x))));
    var var_3 = global2[_wgslsmith_index_u32(1u, 30u)];
    return Struct_1(!(arg_2 != _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, u_input.c), select(u_input.c, u_input.c, arg_1.a))), _wgslsmith_f_op_vec4_f32(max(var_3.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1901f, 178f, -1122f, arg_1.b.x), vec4<f32>(var_3.b.x, var_1.b.x, -278f, 160f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, arg_0.x, var_3.b.x, -410f) + var_3.b))))))), vec4<i32>(var_3.c.x, -var_1.c.x, -2147483647i, -37145i), vec2<bool>(true, false));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global3 = any(vec3<bool>(false, true, !(!select(false, arg_1, false))));
    global3 = true;
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c) >> (abs(u_input.c) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(u_input.c, ~(u_input.c << (vec4<u32>(u_input.a.x, u_input.d, 44436u, u_input.c.x) % vec4<u32>(32u)))));
    var var_1 = (u_input.c | u_input.c) & u_input.c;
    global2 = array<Struct_1, 30>();
    return vec4<u32>(countOneBits(_wgslsmith_mult_u32(~36095u, u_input.c.x)), 56664u, u_input.d, _wgslsmith_sub_u32(~4294967295u, max(u_input.d, ~85608u & var_0)));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global3 = arg_2.a;
    var var_0 = !any(!(!(!vec4<bool>(true, arg_2.d.x, true, true))));
    var var_1 = ~vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(abs(arg_2.c.x)), -2147483647i), ~arg_2.c.x, func_1(arg_2.b.wz, func_1(_wgslsmith_div_vec2_f32(arg_2.b.yx, arg_2.b.wy), func_1(arg_2.b.yz, Struct_1(arg_2.d.x, vec4<f32>(global0.x, -575f, arg_2.b.x, 883f), arg_2.c, arg_2.d), arg_0.x), arg_1), 7483u).c.x);
    var_0 = !arg_2.a;
    let var_2 = vec2<f32>(global0.x, -227f);
    return StorageBuffer(reverseBits(~func_3(func_1(var_2, global2[_wgslsmith_index_u32(0u, 30u)], 0u)).x), var_2.x, vec2<f32>(global0.x, -1298f), vec2<i32>(arg_2.c.x, max(func_4(vec4<i32>(429i, arg_2.c.x, arg_2.c.x, -2147483647i), global2[_wgslsmith_index_u32(func_3(Struct_1(arg_2.a, vec4<f32>(var_2.x, global0.x, 664f, -757f), vec4<i32>(-39249i, 2147483647i, 42238i, -1i), arg_2.d)).x, 30u)], global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 27u)]).x, 27u)], u_input.b).x, arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -232f;
    global2 = array<Struct_1, 30>();
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = func_6(func_5(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-569f, var_0)))), global1[_wgslsmith_index_u32(1u, 27u)], u_input.c.x), all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), ~_wgslsmith_sub_u32(u_input.d & abs(0u), _wgslsmith_mod_u32(~u_input.c.x, 0u)), global1[_wgslsmith_index_u32(~(~(~u_input.d)), 27u)]);
}

