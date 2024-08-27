struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_3(58779u, vec3<bool>(true, true, false), vec2<u32>(41324u, 14543u)), 0u, 0u), Struct_4(Struct_3(0u, vec3<bool>(false, true, true), vec2<u32>(20410u, 55395u)), 60345u, 6099u), Struct_4(Struct_3(4294967295u, vec3<bool>(true, true, true), vec2<u32>(4294967295u, 101132u)), 55412u, 4294967295u), Struct_4(Struct_3(26538u, vec3<bool>(true, false, false), vec2<u32>(1u, 64659u)), 24817u, 1u), Struct_4(Struct_3(42976u, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u)), 37239u, 8461u), Struct_4(Struct_3(4294967295u, vec3<bool>(true, true, false), vec2<u32>(1u, 1u)), 4549u, 0u), Struct_4(Struct_3(1086u, vec3<bool>(false, false, true), vec2<u32>(7719u, 0u)), 50902u, 1u), Struct_4(Struct_3(44711u, vec3<bool>(false, true, false), vec2<u32>(10292u, 4294967295u)), 27985u, 0u), Struct_4(Struct_3(6494u, vec3<bool>(false, false, true), vec2<u32>(54164u, 0u)), 1u, 79750u), Struct_4(Struct_3(51420u, vec3<bool>(false, false, true), vec2<u32>(16749u, 33866u)), 57468u, 101221u), Struct_4(Struct_3(0u, vec3<bool>(true, false, true), vec2<u32>(0u, 4294967295u)), 1u, 4453u), Struct_4(Struct_3(0u, vec3<bool>(true, true, true), vec2<u32>(4294967295u, 70945u)), 21466u, 43453u), Struct_4(Struct_3(1u, vec3<bool>(true, true, true), vec2<u32>(55432u, 37742u)), 13847u, 0u), Struct_4(Struct_3(47041u, vec3<bool>(false, true, true), vec2<u32>(4294967295u, 4294967295u)), 1u, 4294967295u), Struct_4(Struct_3(30561u, vec3<bool>(true, false, true), vec2<u32>(22323u, 275u)), 76829u, 38254u), Struct_4(Struct_3(1u, vec3<bool>(false, false, false), vec2<u32>(0u, 0u)), 1u, 25729u));

var<private> global1: array<bool, 2>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<f32>(1531f, 798f), vec4<i32>(14224i, 2147483647i, 34189i, 0i), -2049f), Struct_1(vec2<f32>(466f, 908f), vec4<i32>(-67128i, 0i, 1i, -29494i), -1023f), true), Struct_2(Struct_1(vec2<f32>(-1007f, 1079f), vec4<i32>(-9259i, 2147483647i, 2147483647i, 18034i), 1357f), Struct_1(vec2<f32>(1000f, 1317f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 986i), 292f), true), Struct_2(Struct_1(vec2<f32>(-564f, -2015f), vec4<i32>(1i, 1i, 2147483647i, 2147483647i), -607f), Struct_1(vec2<f32>(172f, -2185f), vec4<i32>(i32(-2147483648), -33302i, -10002i, 2147483647i), -324f), true), Struct_2(Struct_1(vec2<f32>(117f, -1003f), vec4<i32>(1i, 13500i, 13087i, -8204i), -1609f), Struct_1(vec2<f32>(-451f, 106f), vec4<i32>(31104i, 0i, 0i, 53650i), 365f), true), Struct_2(Struct_1(vec2<f32>(1394f, -1463f), vec4<i32>(48356i, 1i, 2242i, 2147483647i), 770f), Struct_1(vec2<f32>(-494f, -2089f), vec4<i32>(-32851i, 2147483647i, -18952i, 2147483647i), -1794f), false), Struct_2(Struct_1(vec2<f32>(735f, -204f), vec4<i32>(-52448i, -53211i, 14293i, 2147483647i), -1406f), Struct_1(vec2<f32>(-547f, -170f), vec4<i32>(-21650i, -26912i, -35691i, 21276i), 1369f), true), Struct_2(Struct_1(vec2<f32>(-670f, -1154f), vec4<i32>(-12185i, 8094i, 19186i, -6732i), 440f), Struct_1(vec2<f32>(-208f, -948f), vec4<i32>(-8074i, 1i, i32(-2147483648), i32(-2147483648)), -1743f), true), Struct_2(Struct_1(vec2<f32>(-1167f, 851f), vec4<i32>(-1i, -1i, 12166i, 2147483647i), -494f), Struct_1(vec2<f32>(-923f, 1750f), vec4<i32>(22830i, 5719i, 0i, -1i), 556f), true), Struct_2(Struct_1(vec2<f32>(574f, -1136f), vec4<i32>(32125i, i32(-2147483648), i32(-2147483648), -1i), -2820f), Struct_1(vec2<f32>(1976f, 366f), vec4<i32>(-7598i, i32(-2147483648), -1i, -1i), -1559f), true), Struct_2(Struct_1(vec2<f32>(924f, -517f), vec4<i32>(1i, 58009i, 35142i, 7516i), 1969f), Struct_1(vec2<f32>(-2005f, -2233f), vec4<i32>(4185i, 2147483647i, -39719i, -28043i), -1857f), true), Struct_2(Struct_1(vec2<f32>(960f, -352f), vec4<i32>(11440i, 26963i, 2147483647i, -14753i), 1830f), Struct_1(vec2<f32>(454f, 210f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), -1307f), false), Struct_2(Struct_1(vec2<f32>(-968f, 497f), vec4<i32>(5180i, 1i, 1i, -3324i), 842f), Struct_1(vec2<f32>(1200f, 787f), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 21199i), -449f), true), Struct_2(Struct_1(vec2<f32>(732f, 205f), vec4<i32>(-84343i, 40756i, 2147483647i, 17101i), -214f), Struct_1(vec2<f32>(-534f, 1078f), vec4<i32>(-15542i, 2147483647i, i32(-2147483648), -52401i), 1724f), false), Struct_2(Struct_1(vec2<f32>(-1370f, 268f), vec4<i32>(-24048i, -1i, 5930i, i32(-2147483648)), -716f), Struct_1(vec2<f32>(-2355f, -365f), vec4<i32>(10471i, -7309i, 22282i, -1i), -1368f), false), Struct_2(Struct_1(vec2<f32>(499f, 1355f), vec4<i32>(4841i, -8113i, 46332i, 2147483647i), -719f), Struct_1(vec2<f32>(700f, 1000f), vec4<i32>(-12483i, i32(-2147483648), i32(-2147483648), -1i), -1840f), false), Struct_2(Struct_1(vec2<f32>(2072f, 246f), vec4<i32>(1i, -8009i, 21645i, 41312i), 227f), Struct_1(vec2<f32>(-1133f, -815f), vec4<i32>(-1i, 8352i, -513i, 2147483647i), 353f), true), Struct_2(Struct_1(vec2<f32>(676f, 1078f), vec4<i32>(-19665i, 59230i, 0i, -1i), -376f), Struct_1(vec2<f32>(-452f, -1749f), vec4<i32>(-34815i, -17070i, 2147483647i, i32(-2147483648)), -679f), true), Struct_2(Struct_1(vec2<f32>(-1972f, -1439f), vec4<i32>(-17706i, 50104i, 42837i, i32(-2147483648)), -1173f), Struct_1(vec2<f32>(-971f, 1013f), vec4<i32>(23035i, i32(-2147483648), 1i, 0i), 953f), false), Struct_2(Struct_1(vec2<f32>(1533f, -578f), vec4<i32>(0i, 3364i, i32(-2147483648), 54385i), -1140f), Struct_1(vec2<f32>(1498f, 298f), vec4<i32>(-1i, -65246i, 2147483647i, 0i), -497f), true), Struct_2(Struct_1(vec2<f32>(1000f, -1000f), vec4<i32>(7593i, -14576i, 0i, 0i), 137f), Struct_1(vec2<f32>(-146f, 608f), vec4<i32>(2147483647i, -1i, 9471i, 0i), -372f), false), Struct_2(Struct_1(vec2<f32>(-742f, -1002f), vec4<i32>(35083i, -32130i, 25421i, i32(-2147483648)), 116f), Struct_1(vec2<f32>(-686f, 611f), vec4<i32>(-1i, -6811i, 0i, 2147483647i), -1991f), true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = 893f;
    var var_1 = vec3<bool>(all(vec4<bool>(!global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_f_op_f32(sign(-1286f)) >= _wgslsmith_f_op_f32(-1000f - -911f), any(!vec4<bool>(false, global1[_wgslsmith_index_u32(3232u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], false)), true)), true, !(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -6888i), u_input.a.x) < 0i));
    global3 = array<Struct_2, 21>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 893f))))), vec4<i32>(19337i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -14399i), vec3<i32>(u_input.a.x, u_input.a.x, 8972i)), 0i, u_input.a.x), _wgslsmith_f_op_f32(select(532f, _wgslsmith_f_op_f32(select(-2351f, _wgslsmith_f_op_f32(-1145f - 176f), all(vec4<bool>(true, var_1.x, true, var_1.x)))), !(u_input.a.x <= 1398i)))), Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(1f * -1000f)), select(~vec4<i32>(42526i, u_input.a.x, -1i, u_input.a.x), countOneBits(-vec4<i32>(-26161i, u_input.a.x, u_input.a.x, 0i)), true || global1[_wgslsmith_index_u32(1u, 2u)]), 1761f), !(!global1[_wgslsmith_index_u32(11295u, 2u)]));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1947f - 470f), _wgslsmith_f_op_f32(exp2(var_2.a.a.x))))), _wgslsmith_f_op_f32(min(var_2.a.a.x, var_2.a.a.x)));
    return var_2.b.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    var var_0 = reverseBits(arg_0.c.x) >> (min(abs(4294967295u), ~4294967295u) % 32u);
    var var_1 = global0[_wgslsmith_index_u32(53794u, 16u)];
    var var_2 = 1u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1065f * -461f), -1000f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(565f, -922f)))), vec4<i32>(u_input.a.x & u_input.a.x, u_input.a.x ^ 1i, -15439i, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1344f, -198f), _wgslsmith_div_f32(849f, 1137f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(943f)), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x & u_input.a.x, 2147483647i, u_input.a.x, -u_input.a.x), vec4<i32>(1i, 0i, _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x), reverseBits(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f * -467f))), true);
    global0 = array<Struct_4, 16>();
    return var_3.b.c;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_3(1u, vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)]), vec2<u32>(4294967295u, 0u)), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), 727f))) * 838f);
    global1 = array<bool, 2>();
    let var_1 = Struct_4(Struct_3(0u, select(vec3<bool>(any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 2u)], false, true)), true, any(vec3<bool>(global1[_wgslsmith_index_u32(75462u, 2u)], global1[_wgslsmith_index_u32(9101u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], true, global1[_wgslsmith_index_u32(17692u, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(26611u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(8713u, 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(51318u, 2u)], true), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(37929u, 2u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 55926u, 0u), vec3<u32>(1u, 1u, 1u)), 2u)]), ~vec2<u32>(_wgslsmith_mult_u32(0u, 0u), firstLeadingBit(36934u))), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41016u, 35315u, 0u), vec3<u32>(1u, 1u, 4294967295u)), 1u >> (0u % 32u), 1u) | ~(~4294967295u)), _wgslsmith_mod_u32(~1u, 10288u));
    global0 = array<Struct_4, 16>();
    global0 = array<Struct_4, 16>();
    return Struct_3(~var_1.a.a, !select(!vec3<bool>(var_1.a.b.x, true, global1[_wgslsmith_index_u32(var_1.c, 2u)]), vec3<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 2u)], var_1.a.b.x, false)), var_1.a.b.x, any(var_1.a.b)), any(vec3<bool>(false, var_1.a.b.x, true)) & (u_input.a.x == -45850i)), ~vec2<u32>(var_1.b, _wgslsmith_div_u32(1u, ~0u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    global1 = array<bool, 2>();
    let var_0 = global0[_wgslsmith_index_u32(arg_1.a.c.x, 16u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1284f, -1320f, _wgslsmith_f_op_f32(-455f - -1948f), -1381f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(923f, 1386f, -1419f, -1000f), vec4<f32>(947f, 2000f, -1237f, 104f), vec4<bool>(false, var_0.a.b.x, global1[_wgslsmith_index_u32(55504u, 2u)], var_0.a.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1198f, -331f, 1106f, 841f)))), vec4<f32>(_wgslsmith_f_op_f32(step(339f, -2230f)), _wgslsmith_f_op_f32(-521f + -198f), _wgslsmith_f_op_f32(f32(-1f) * -936f), -1000f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, var_1.x, 1663f, 1549f) - vec4<f32>(1961f, 1559f, -551f, -1437f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1412f, -292f, -393f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, 1007f)))))));
    let var_2 = func_1();
    return Struct_1(var_1.zw, vec4<i32>(1i, countOneBits(_wgslsmith_div_i32(arg_0.x, u_input.a.x) << (var_2.c.x % 32u)), u_input.a.x, -(~(-1i & u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1403f, var_1.x) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) + -327f), !all(var_2.b))), _wgslsmith_f_op_f32(trunc(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -460f;
    var var_0 = func_4(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(8135i, u_input.a.x, -1849i), vec3<i32>(u_input.a.x, u_input.a.x, 13201i)), select(u_input.a.x, u_input.a.x >> (0u % 32u), false))), Struct_4(func_1(), 1u, (112297u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(94349u, 87747u), vec2<u32>(0u, 0u))) >> (1u % 32u)));
    let var_1 = vec3<bool>(global1[_wgslsmith_index_u32(~4294967295u, 2u)], func_4(vec2<i32>(u_input.a.x, var_0.b.x) ^ -var_0.b.xw, global0[_wgslsmith_index_u32(1u, 16u)]).b.x <= -max(0i, 1i), func_1().b.x);
    let var_2 = ~_wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(var_0.b, ~vec4<i32>(0i, 19612i, var_0.b.x, 0i)), vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -42035i), _wgslsmith_mod_i32(0i, var_0.b.x), -34387i) & ~vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_0.b.x));
    let var_3 = _wgslsmith_mult_u32(1u, 25829u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, var_0.c, var_0.a.x), vec3<f32>(847f, 628f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<f32>(-1206f, var_0.a.x, var_0.c))), var_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1560f, _wgslsmith_f_op_f32(1479f - var_0.c)))), 32316u);
}

