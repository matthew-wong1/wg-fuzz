struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(614f, -1000f, vec2<f32>(-1000f, -1950f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-247f, -662f, 1000f)), Struct_1(vec2<bool>(false, true), vec3<f32>(-893f, 484f, -509f)), vec4<u32>(1u, 12710u, 22363u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<f32>(357f, 515f, 580f)))), Struct_3(-649f, -195f, vec2<f32>(500f, -1085f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1224f, 407f, -2098f)), Struct_1(vec2<bool>(true, true), vec3<f32>(892f, -282f, 750f)), vec4<u32>(0u, 1u, 4294967295u, 120699u), Struct_1(vec2<bool>(true, true), vec3<f32>(-1064f, -143f, 1093f)))), Struct_3(-117f, 1142f, vec2<f32>(1000f, -159f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-167f, -2111f, -197f)), Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, 181f, 799f)), vec4<u32>(41749u, 117798u, 25151u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<f32>(991f, -476f, 1103f)))), Struct_3(-362f, -1063f, vec2<f32>(564f, 129f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-805f, 144f, -515f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-2139f, 1242f, -867f)), vec4<u32>(1u, 1u, 10033u, 19808u), Struct_1(vec2<bool>(false, true), vec3<f32>(-1118f, -1505f, -1000f)))), Struct_3(-216f, -694f, vec2<f32>(1160f, 397f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(151f, 317f, 1225f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1542f, -1157f, 1000f)), vec4<u32>(40673u, 73091u, 1u, 16681u), Struct_1(vec2<bool>(false, false), vec3<f32>(-1150f, -522f, -120f)))), Struct_3(-1022f, -217f, vec2<f32>(-1131f, -1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1000f, -1156f, 1387f)), Struct_1(vec2<bool>(false, true), vec3<f32>(677f, -805f, -209f)), vec4<u32>(73031u, 0u, 61311u, 0u), Struct_1(vec2<bool>(false, true), vec3<f32>(1000f, 192f, 1000f)))), Struct_3(1631f, -628f, vec2<f32>(585f, -1000f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-965f, 1196f, -2490f)), Struct_1(vec2<bool>(true, false), vec3<f32>(1000f, -749f, -164f)), vec4<u32>(1361u, 0u, 1u, 34202u), Struct_1(vec2<bool>(false, true), vec3<f32>(1544f, 250f, -937f)))), Struct_3(604f, 749f, vec2<f32>(-868f, 1602f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-578f, 626f, -1986f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-222f, 861f, -500f)), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<f32>(1748f, 276f, 716f)))), Struct_3(-1058f, -1307f, vec2<f32>(-887f, 1413f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-1258f, -811f, 1222f)), Struct_1(vec2<bool>(true, false), vec3<f32>(439f, -339f, -1000f)), vec4<u32>(26351u, 1u, 0u, 1u), Struct_1(vec2<bool>(true, false), vec3<f32>(844f, 486f, -1000f)))), Struct_3(-1381f, -1000f, vec2<f32>(-246f, -218f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1374f, 1940f, 2368f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-748f, -426f, -645f)), vec4<u32>(0u, 4294967295u, 1u, 0u), Struct_1(vec2<bool>(false, false), vec3<f32>(-321f, -437f, -270f)))), Struct_3(-227f, 2052f, vec2<f32>(348f, -1590f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-491f, 238f, -2455f)), Struct_1(vec2<bool>(true, false), vec3<f32>(355f, -551f, -339f)), vec4<u32>(42546u, 1u, 3453u, 4294967295u), Struct_1(vec2<bool>(false, false), vec3<f32>(304f, -1172f, 1000f)))), Struct_3(-1197f, -273f, vec2<f32>(479f, 1000f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1366f, 2110f, 1417f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-1004f, 1137f, -1146f)), vec4<u32>(47609u, 20028u, 0u, 0u), Struct_1(vec2<bool>(false, true), vec3<f32>(-1016f, -442f, 411f)))), Struct_3(548f, -1090f, vec2<f32>(1000f, -1081f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, 1242f, -210f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-2156f, 117f, 1147f)), vec4<u32>(4294967295u, 0u, 98435u, 90176u), Struct_1(vec2<bool>(true, false), vec3<f32>(1589f, 1577f, -355f)))), Struct_3(1054f, -281f, vec2<f32>(-1314f, 1000f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-866f, -388f, 117f)), Struct_1(vec2<bool>(true, false), vec3<f32>(-207f, 557f, 370f)), vec4<u32>(4294967295u, 25935u, 1u, 17373u), Struct_1(vec2<bool>(false, false), vec3<f32>(-1320f, -491f, 150f)))), Struct_3(-487f, -1980f, vec2<f32>(-547f, -1000f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-176f, -106f, 986f)), Struct_1(vec2<bool>(false, false), vec3<f32>(1000f, -1208f, 490f)), vec4<u32>(0u, 32750u, 0u, 17861u), Struct_1(vec2<bool>(true, true), vec3<f32>(306f, -682f, 1241f)))), Struct_3(285f, 2371f, vec2<f32>(1000f, -402f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(239f, 1438f, -1497f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-397f, 406f, -584f)), vec4<u32>(8413u, 0u, 72894u, 68981u), Struct_1(vec2<bool>(false, true), vec3<f32>(-948f, -600f, -242f)))), Struct_3(-434f, -215f, vec2<f32>(1624f, -440f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-316f, 407f, 969f)), Struct_1(vec2<bool>(false, true), vec3<f32>(685f, -1219f, -306f)), vec4<u32>(4294967295u, 0u, 3613u, 1u), Struct_1(vec2<bool>(true, false), vec3<f32>(763f, 714f, 231f)))), Struct_3(-751f, -210f, vec2<f32>(680f, -563f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1389f, 1000f, 637f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-914f, 1410f, 472f)), vec4<u32>(2817u, 24494u, 7361u, 4294967295u), Struct_1(vec2<bool>(false, true), vec3<f32>(-909f, -814f, 306f)))), Struct_3(1449f, 681f, vec2<f32>(-1399f, -588f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<f32>(419f, -1000f, 683f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-212f, 480f, -1000f)), vec4<u32>(6401u, 0u, 82433u, 0u), Struct_1(vec2<bool>(false, false), vec3<f32>(-748f, 308f, -296f)))), Struct_3(914f, 659f, vec2<f32>(-336f, 170f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(1262f, 332f, 502f)), Struct_1(vec2<bool>(false, false), vec3<f32>(1546f, -1000f, -182f)), vec4<u32>(11395u, 1u, 4294967295u, 46352u), Struct_1(vec2<bool>(false, false), vec3<f32>(-405f, 437f, -1022f)))), Struct_3(127f, 363f, vec2<f32>(-495f, 267f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(844f, -665f, 388f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-1089f, 1317f, 886f)), vec4<u32>(0u, 4294967295u, 51928u, 4294967295u), Struct_1(vec2<bool>(true, true), vec3<f32>(-283f, -1203f, -695f)))), Struct_3(408f, 608f, vec2<f32>(887f, 549f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-732f, -2448f, -123f)), Struct_1(vec2<bool>(false, false), vec3<f32>(-2002f, -1423f, -182f)), vec4<u32>(51645u, 1253u, 1u, 12240u), Struct_1(vec2<bool>(true, true), vec3<f32>(-945f, 467f, 505f)))), Struct_3(-651f, -348f, vec2<f32>(1326f, 948f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-1868f, 1187f, 201f)), Struct_1(vec2<bool>(true, true), vec3<f32>(-642f, 2761f, 203f)), vec4<u32>(0u, 4801u, 19027u, 45831u), Struct_1(vec2<bool>(false, false), vec3<f32>(448f, -1936f, 1000f)))), Struct_3(-1567f, -352f, vec2<f32>(1118f, 2507f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<f32>(-1010f, 154f, 509f)), Struct_1(vec2<bool>(true, true), vec3<f32>(1103f, 331f, 1050f)), vec4<u32>(4294967295u, 0u, 116819u, 4294967295u), Struct_1(vec2<bool>(false, true), vec3<f32>(395f, -1927f, -766f)))));

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(70986u, 1u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(0u, 39755u, 2842u), vec3<u32>(15827u, 29485u, 99727u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    global1 = array<vec3<u32>, 4>();
    global0 = array<Struct_3, 24>();
    var var_0 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.c.x >> (_wgslsmith_div_u32(min(1647u, u_input.a.x), ~u_input.d.x) % 32u)), _wgslsmith_clamp_i32(-30500i, ~(-reverseBits(-7877i)), u_input.b.x), _wgslsmith_dot_vec2_i32(~u_input.b.yy & _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, u_input.c), -u_input.c, -vec2<i32>(u_input.c.x, u_input.b.x)), max(-vec2<i32>(-2365i, u_input.c.x), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -2147483647i), ~2147483647i))), firstLeadingBit(-select(0i, _wgslsmith_dot_vec3_i32(u_input.b.xwy, vec3<i32>(u_input.c.x, 0i, 1i)), true)));
    var var_1 = vec3<u32>(~13533u & (u_input.d.x ^ max(max(u_input.a.x, u_input.e.x), 0u)), 24743u, 33299u);
    var var_2 = Struct_4(firstTrailingBit(u_input.b.x), Struct_2(Struct_1(arg_0.zx, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, -507f, -807f))))), Struct_1(vec2<bool>(true, true), _wgslsmith_div_vec3_f32(vec3<f32>(-1108f, -800f, -1222f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1076f, -1282f, 1000f)))), u_input.e, Struct_1(!arg_0.wz, vec3<f32>(-592f, _wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_div_f32(759f, 802f)))), !select(vec2<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, false)), var_0.x <= var_0.x), arg_0.zx, false), global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
    return vec2<bool>(true, all(vec2<bool>(true, !(var_2.d.a <= 569f))));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x)), 557f)))), Struct_1(!(!func_3(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1468f, -1211f), vec3<f32>(1f, 1f, 1f))))), u_input.e, Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1027f, 549f, false)))), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)))));
    global0 = array<Struct_3, 24>();
    let var_1 = reverseBits(~vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), ~1u)));
    return !var_0.d.a.x;
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(-2056f))), arg_1)) > arg_0, false, (u_input.c.x & u_input.c.x) > _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-3796i, u_input.c.x, u_input.c.x), min(u_input.b.x, ~(-52641i))), !(!(_wgslsmith_f_op_f32(abs(arg_0)) < _wgslsmith_f_op_f32(max(arg_0, 2251f)))));
    global0 = array<Struct_3, 24>();
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), u_input.d.x);
    var var_2 = 4639i;
    var var_3 = global0[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    return Struct_1(select(var_0.xx, vec2<bool>(arg_1 & var_0.x, var_3.d.d.a.x), all(select(vec4<bool>(var_3.d.b.a.x, false, var_0.x, var_3.d.a.a.x), vec4<bool>(var_0.x, true, arg_1, true), !var_3.d.b.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.d.b.b)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_3.d.a.b))))));
}

fn func_1() -> vec2<i32> {
    global1 = array<vec3<u32>, 4>();
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    let var_0 = Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2196f), _wgslsmith_f_op_f32(ceil(-1099f)), -549f))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f * -1089f)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-228f, -741f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1555f, -1791f))), u_input.c.x)), vec4<u32>(~u_input.e.x >> (u_input.e.x % 32u), u_input.a.x, ~(~u_input.a.x), abs(u_input.e.x)) >> (_wgslsmith_mult_vec4_u32(~(~u_input.e), ~u_input.e) % vec4<u32>(32u)), func_4(-528f, true));
    let var_1 = -u_input.b.zxz;
    return ~abs(-vec2<i32>(_wgslsmith_add_i32(-57101i, -6293i), _wgslsmith_div_i32(1i, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.e.x), u_input.d.yz), vec2<u32>(4294967295u, 48811u)), 20396u, 1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(85021u ^ u_input.a.x, ~u_input.d.x), 1u)));
    var var_1 = !(!vec4<bool>(!all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, false)) | true, true));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

