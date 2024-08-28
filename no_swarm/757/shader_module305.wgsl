struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(Struct_2(false, vec3<f32>(327f, -195f, -2303f), Struct_1(true, vec3<bool>(true, false, false)), 35471u, Struct_1(true, vec3<bool>(true, true, true))), Struct_2(false, vec3<f32>(1000f, 2434f, -990f), Struct_1(true, vec3<bool>(true, true, true)), 1u, Struct_1(true, vec3<bool>(false, true, true))), 1145u), Struct_5(Struct_2(false, vec3<f32>(321f, 261f, -1444f), Struct_1(false, vec3<bool>(false, false, true)), 1u, Struct_1(false, vec3<bool>(false, true, false))), Struct_2(false, vec3<f32>(231f, 826f, -525f), Struct_1(true, vec3<bool>(true, false, true)), 4294967295u, Struct_1(false, vec3<bool>(true, true, true))), 21689u), Struct_5(Struct_2(false, vec3<f32>(-1571f, -2485f, 1519f), Struct_1(true, vec3<bool>(true, true, true)), 3071u, Struct_1(false, vec3<bool>(true, false, false))), Struct_2(false, vec3<f32>(1320f, 914f, -1000f), Struct_1(true, vec3<bool>(false, true, true)), 1u, Struct_1(false, vec3<bool>(true, false, false))), 1u), Struct_5(Struct_2(true, vec3<f32>(-227f, -697f, -186f), Struct_1(true, vec3<bool>(true, false, true)), 1u, Struct_1(false, vec3<bool>(true, true, false))), Struct_2(true, vec3<f32>(-302f, 1000f, 394f), Struct_1(false, vec3<bool>(false, false, true)), 9462u, Struct_1(true, vec3<bool>(false, true, false))), 36557u), Struct_5(Struct_2(true, vec3<f32>(-617f, 825f, -1121f), Struct_1(false, vec3<bool>(false, false, true)), 37192u, Struct_1(false, vec3<bool>(false, true, false))), Struct_2(false, vec3<f32>(-161f, 411f, 449f), Struct_1(true, vec3<bool>(false, true, false)), 4294967295u, Struct_1(false, vec3<bool>(false, true, true))), 32410u), Struct_5(Struct_2(false, vec3<f32>(-973f, -363f, 1486f), Struct_1(true, vec3<bool>(true, false, false)), 0u, Struct_1(true, vec3<bool>(false, false, false))), Struct_2(false, vec3<f32>(-1963f, -632f, 1000f), Struct_1(true, vec3<bool>(true, true, false)), 4294967295u, Struct_1(true, vec3<bool>(true, true, true))), 0u), Struct_5(Struct_2(false, vec3<f32>(1769f, -250f, -2589f), Struct_1(true, vec3<bool>(false, true, true)), 4294967295u, Struct_1(true, vec3<bool>(false, false, true))), Struct_2(false, vec3<f32>(1158f, -199f, 1342f), Struct_1(false, vec3<bool>(true, false, true)), 7249u, Struct_1(true, vec3<bool>(true, true, true))), 56436u), Struct_5(Struct_2(true, vec3<f32>(711f, -1193f, 1622f), Struct_1(false, vec3<bool>(true, true, false)), 1u, Struct_1(true, vec3<bool>(false, false, true))), Struct_2(false, vec3<f32>(-265f, -532f, 1461f), Struct_1(false, vec3<bool>(true, false, false)), 1u, Struct_1(false, vec3<bool>(false, false, true))), 0u), Struct_5(Struct_2(false, vec3<f32>(757f, 362f, -955f), Struct_1(true, vec3<bool>(false, true, true)), 4294967295u, Struct_1(false, vec3<bool>(false, true, true))), Struct_2(false, vec3<f32>(288f, 153f, -824f), Struct_1(true, vec3<bool>(false, true, true)), 3279u, Struct_1(true, vec3<bool>(false, true, false))), 4294967295u), Struct_5(Struct_2(false, vec3<f32>(457f, 1833f, -376f), Struct_1(false, vec3<bool>(true, true, false)), 11589u, Struct_1(true, vec3<bool>(false, true, false))), Struct_2(true, vec3<f32>(-2484f, -1166f, -2244f), Struct_1(false, vec3<bool>(true, false, true)), 0u, Struct_1(true, vec3<bool>(true, true, true))), 8788u), Struct_5(Struct_2(false, vec3<f32>(1000f, -852f, 1191f), Struct_1(true, vec3<bool>(true, false, false)), 3830u, Struct_1(true, vec3<bool>(false, false, false))), Struct_2(false, vec3<f32>(-807f, -577f, 786f), Struct_1(true, vec3<bool>(false, false, false)), 30213u, Struct_1(true, vec3<bool>(false, true, true))), 0u), Struct_5(Struct_2(true, vec3<f32>(207f, -1220f, 2018f), Struct_1(true, vec3<bool>(false, true, false)), 1u, Struct_1(false, vec3<bool>(true, false, false))), Struct_2(false, vec3<f32>(1184f, -969f, -1278f), Struct_1(false, vec3<bool>(true, false, false)), 1u, Struct_1(false, vec3<bool>(false, true, false))), 0u), Struct_5(Struct_2(false, vec3<f32>(-579f, 206f, -2239f), Struct_1(false, vec3<bool>(true, false, true)), 1u, Struct_1(false, vec3<bool>(false, true, false))), Struct_2(true, vec3<f32>(947f, -1661f, -316f), Struct_1(false, vec3<bool>(false, true, true)), 1u, Struct_1(true, vec3<bool>(true, true, true))), 69093u), Struct_5(Struct_2(true, vec3<f32>(-1195f, 753f, 1000f), Struct_1(false, vec3<bool>(true, false, false)), 24469u, Struct_1(false, vec3<bool>(false, true, true))), Struct_2(true, vec3<f32>(-1151f, -1996f, -972f), Struct_1(false, vec3<bool>(false, true, true)), 0u, Struct_1(true, vec3<bool>(false, true, true))), 1u), Struct_5(Struct_2(false, vec3<f32>(-761f, 1323f, 1867f), Struct_1(true, vec3<bool>(true, true, true)), 1u, Struct_1(true, vec3<bool>(false, true, true))), Struct_2(true, vec3<f32>(-831f, 162f, -524f), Struct_1(false, vec3<bool>(false, false, true)), 1u, Struct_1(true, vec3<bool>(false, true, false))), 56867u), Struct_5(Struct_2(true, vec3<f32>(356f, -1453f, -2169f), Struct_1(true, vec3<bool>(false, false, true)), 1u, Struct_1(false, vec3<bool>(false, false, false))), Struct_2(false, vec3<f32>(1489f, -1304f, 1454f), Struct_1(false, vec3<bool>(true, false, false)), 0u, Struct_1(false, vec3<bool>(false, true, true))), 9351u), Struct_5(Struct_2(false, vec3<f32>(-466f, -552f, -820f), Struct_1(false, vec3<bool>(true, false, false)), 0u, Struct_1(false, vec3<bool>(false, false, false))), Struct_2(true, vec3<f32>(600f, -854f, -1000f), Struct_1(false, vec3<bool>(true, false, false)), 1u, Struct_1(true, vec3<bool>(true, false, false))), 1109u), Struct_5(Struct_2(true, vec3<f32>(-317f, -964f, 244f), Struct_1(false, vec3<bool>(false, false, true)), 4294967295u, Struct_1(true, vec3<bool>(true, false, true))), Struct_2(false, vec3<f32>(-1486f, -837f, -2033f), Struct_1(true, vec3<bool>(false, true, true)), 46855u, Struct_1(true, vec3<bool>(true, true, true))), 48384u), Struct_5(Struct_2(true, vec3<f32>(207f, 155f, 1144f), Struct_1(true, vec3<bool>(true, true, false)), 20513u, Struct_1(false, vec3<bool>(false, false, false))), Struct_2(false, vec3<f32>(-412f, 133f, -1764f), Struct_1(true, vec3<bool>(true, false, true)), 12308u, Struct_1(true, vec3<bool>(false, false, true))), 1u), Struct_5(Struct_2(false, vec3<f32>(200f, -810f, -656f), Struct_1(true, vec3<bool>(true, false, false)), 0u, Struct_1(false, vec3<bool>(true, true, false))), Struct_2(true, vec3<f32>(1000f, -669f, -881f), Struct_1(false, vec3<bool>(true, true, false)), 3551u, Struct_1(false, vec3<bool>(true, false, true))), 4294967295u), Struct_5(Struct_2(true, vec3<f32>(-946f, 858f, -1525f), Struct_1(false, vec3<bool>(false, true, false)), 12000u, Struct_1(true, vec3<bool>(true, false, true))), Struct_2(false, vec3<f32>(1323f, 676f, -920f), Struct_1(false, vec3<bool>(false, true, true)), 17454u, Struct_1(false, vec3<bool>(true, true, false))), 4294967295u), Struct_5(Struct_2(true, vec3<f32>(922f, -201f, 830f), Struct_1(false, vec3<bool>(true, true, false)), 51753u, Struct_1(false, vec3<bool>(true, false, true))), Struct_2(true, vec3<f32>(-871f, -182f, 484f), Struct_1(false, vec3<bool>(true, true, true)), 25893u, Struct_1(false, vec3<bool>(true, false, true))), 4294967295u), Struct_5(Struct_2(false, vec3<f32>(1071f, 581f, -2669f), Struct_1(false, vec3<bool>(false, true, true)), 0u, Struct_1(true, vec3<bool>(false, true, false))), Struct_2(false, vec3<f32>(-658f, -263f, 1582f), Struct_1(true, vec3<bool>(false, false, false)), 5883u, Struct_1(false, vec3<bool>(false, true, false))), 115494u), Struct_5(Struct_2(true, vec3<f32>(-486f, 128f, -1693f), Struct_1(false, vec3<bool>(false, false, false)), 4294967295u, Struct_1(false, vec3<bool>(false, false, true))), Struct_2(true, vec3<f32>(-1095f, 397f, -1525f), Struct_1(true, vec3<bool>(true, false, true)), 0u, Struct_1(false, vec3<bool>(true, true, true))), 0u), Struct_5(Struct_2(false, vec3<f32>(-257f, -1000f, 663f), Struct_1(true, vec3<bool>(false, true, true)), 0u, Struct_1(false, vec3<bool>(false, true, true))), Struct_2(false, vec3<f32>(-691f, 912f, -605f), Struct_1(false, vec3<bool>(true, true, false)), 4294967295u, Struct_1(true, vec3<bool>(false, false, true))), 1u), Struct_5(Struct_2(false, vec3<f32>(-854f, 422f, -477f), Struct_1(false, vec3<bool>(false, false, false)), 5754u, Struct_1(true, vec3<bool>(false, false, false))), Struct_2(true, vec3<f32>(120f, -978f, -591f), Struct_1(true, vec3<bool>(true, true, true)), 11066u, Struct_1(true, vec3<bool>(false, true, false))), 36222u), Struct_5(Struct_2(false, vec3<f32>(2436f, -433f, 892f), Struct_1(false, vec3<bool>(true, true, false)), 4294967295u, Struct_1(true, vec3<bool>(false, true, true))), Struct_2(false, vec3<f32>(-695f, -277f, 226f), Struct_1(true, vec3<bool>(false, false, true)), 0u, Struct_1(false, vec3<bool>(false, false, true))), 1u), Struct_5(Struct_2(true, vec3<f32>(393f, -1089f, -1273f), Struct_1(false, vec3<bool>(false, false, false)), 40658u, Struct_1(true, vec3<bool>(true, true, true))), Struct_2(true, vec3<f32>(-596f, -2308f, -1543f), Struct_1(false, vec3<bool>(false, true, false)), 4294967295u, Struct_1(true, vec3<bool>(true, false, true))), 0u), Struct_5(Struct_2(true, vec3<f32>(1000f, -226f, -168f), Struct_1(false, vec3<bool>(true, false, false)), 2751u, Struct_1(true, vec3<bool>(true, true, true))), Struct_2(false, vec3<f32>(-819f, 896f, 785f), Struct_1(true, vec3<bool>(false, true, false)), 59387u, Struct_1(true, vec3<bool>(true, false, false))), 13349u), Struct_5(Struct_2(true, vec3<f32>(1573f, 1586f, 845f), Struct_1(false, vec3<bool>(false, false, false)), 1u, Struct_1(true, vec3<bool>(true, true, true))), Struct_2(true, vec3<f32>(-668f, 647f, -1012f), Struct_1(false, vec3<bool>(true, true, false)), 0u, Struct_1(true, vec3<bool>(false, true, false))), 3497u), Struct_5(Struct_2(true, vec3<f32>(674f, -123f, 239f), Struct_1(false, vec3<bool>(false, false, false)), 0u, Struct_1(false, vec3<bool>(true, true, false))), Struct_2(false, vec3<f32>(353f, 757f, -1075f), Struct_1(false, vec3<bool>(true, true, false)), 65494u, Struct_1(false, vec3<bool>(false, false, false))), 39993u), Struct_5(Struct_2(false, vec3<f32>(-502f, 1097f, 436f), Struct_1(true, vec3<bool>(false, false, true)), 1u, Struct_1(true, vec3<bool>(true, false, false))), Struct_2(false, vec3<f32>(158f, 534f, 301f), Struct_1(false, vec3<bool>(true, false, false)), 0u, Struct_1(false, vec3<bool>(false, false, false))), 22426u));

var<private> global1: array<f32, 31>;

var<private> global2: Struct_3;

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_5) -> f32 {
    global0 = array<Struct_5, 32>();
    let var_0 = (_wgslsmith_mult_i32(~(-33552i), u_input.d.x) <= -select(countOneBits(global2.b.x), -2147483647i, !global2.a)) & true;
    global0 = array<Struct_5, 32>();
    global2 = Struct_3(!(select(any(vec2<bool>(true, global2.a)), false && var_0, arg_1.x) != true), u_input.d, u_input.b);
    let var_1 = 1642f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + global3.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = (i32(-1i) * -61344i) | u_input.d.x;
    global3 = vec4<f32>(_wgslsmith_f_op_f32(sign(-330f)), -306f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(min(1u, 71731u), 33247u), max(firstLeadingBit(~global2.c), global2.c)), 31u)], global3.x);
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec3<bool>(false, false, global2.a)), vec3<bool>(true, true, arg_1), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 17773u), 32u)])), 1000f, global1[_wgslsmith_index_u32(global2.c, 31u)], _wgslsmith_f_op_f32(-824f + -483f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1082f + -1329f), -185f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(13301u, 31u)] + 1721f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(71910u, 31u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b & 30005u, 31u)]), _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1716f, 878f, _wgslsmith_div_f32(global3.x, global1[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -113f)) + vec4<f32>(-1000f, global3.x, _wgslsmith_f_op_f32(min(-153f, 1374f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] - -867f))))));
    var var_1 = u_input.b;
    let var_2 = ~countOneBits(~(~(~global2.b.xzz)));
    return Struct_1(true, vec3<bool>(787f <= _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~4294967295u, 31u)], _wgslsmith_f_op_f32(151f - global3.x)), all(vec2<bool>(any(vec3<bool>(arg_1, arg_1, global2.a)), true)), arg_1));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(true && !select(arg_1.a, arg_2.x, !arg_2.x), -u_input.d, min(_wgslsmith_mult_u32(u_input.b, ~0u) & 1u, 14625u));
    let var_1 = ~4773i;
    global2 = Struct_3(var_0.a, global2.b, 62703u);
    var var_2 = -1377f;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.b.x) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(657f, global1[_wgslsmith_index_u32(arg_1.d, 31u)])))) + vec2<f32>(_wgslsmith_f_op_f32(select(791f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + 355f) - _wgslsmith_f_op_f32(130f * global3.x)), global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c, 31u)] * global3.x)))));
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> bool {
    global2 = func_4(firstLeadingBit(reverseBits(~abs(arg_0.zy))), Struct_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global3.xyw * vec3<f32>(-421f, -1283f, 566f)), _wgslsmith_f_op_vec3_f32(abs(global3.zyx)), all(arg_1.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.wxx) * global3.xxw)), func_2(~vec2<i32>(-2147483647i, u_input.c.x), global2.a | true), ~4294967295u, arg_1), select(vec4<bool>(false, !any(vec4<bool>(false, true, false, true)), any(vec2<bool>(global2.a, false)), select(-23668i, global2.b.x, false) >= 1i), vec4<bool>(false, arg_1.b.x, all(!vec3<bool>(global2.a, true, global2.a)), true), !(global2.a || false) | false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(533f + 413f) * 168f)))));
    let var_0 = _wgslsmith_div_vec2_f32(global3.wy, global3.xz);
    return all(vec3<bool>(func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), ~vec2<i32>(arg_0.x, u_input.c.x)), true).b.x, true, func_2(reverseBits(vec2<i32>(-3901i, u_input.c.x)), any(vec3<bool>(arg_1.b.x, true, false))).b.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_3, 31u)], -385f, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, global3.x, global1[_wgslsmith_index_u32(55253u, 31u)]) - vec3<f32>(104f, global1[_wgslsmith_index_u32(arg_3, 31u)], global3.x)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global3.xxy)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_3, 31u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global2.c, 31u)], 275f)), -1159f)) + global3.xyw));
    var var_1 = reverseBits(firstTrailingBit(vec3<u32>(4294967295u, ~(~0u), u_input.a)));
    global2 = Struct_3(global2.a, vec4<i32>(-15866i, abs(_wgslsmith_add_i32(firstLeadingBit(-11389i), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-73166i, 10442i, -1i, global2.b.x)))), ~firstTrailingBit(arg_0.x), _wgslsmith_add_i32(-_wgslsmith_div_i32(u_input.c.x, -1i), _wgslsmith_sub_i32(-12068i, -40266i))), 1u);
    var var_2 = 16934u;
    var var_3 = func_4(-global2.b.xz & global2.b.yx, Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(global3.xwx)))), Struct_1(arg_1 <= 4294967295u, select(vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(false, false, true), vec3<bool>(global2.a, global2.a, global2.a), false), !vec3<bool>(global2.a, global2.a, arg_2))), 1u, func_2(vec2<i32>(firstLeadingBit(-23080i), ~2147483647i), true)), !(!vec4<bool>(true, !global2.a, func_1(arg_0.yxw, Struct_1(false, vec3<bool>(true, arg_2, global2.a)), var_1.yy, global2.c), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_3, 31u)], var_0.x)))), global3.x));
    return Struct_4(true, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 31u)])))), _wgslsmith_f_op_f32(-214f * -978f), -1711f, var_0.x), ~var_1.x, max(u_input.c.x, i32(-1i) * -arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global2.b, 4294967295u, select(!global2.a, true, func_1(abs(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-2474i, u_input.c.x, -2147483647i))), Struct_1(true, !vec3<bool>(false, global2.a, false)), ~vec2<u32>(global2.c, 1u), 4294967295u)), u_input.b);
    var var_1 = -(~reverseBits(global2.b.xxy));
    var var_2 = Struct_2(!(global2.b.x <= 1i), vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), global1[_wgslsmith_index_u32(~5082u, 31u)], global3.x), Struct_1(true, !select(!vec3<bool>(true, false, var_0.a), select(vec3<bool>(global2.a, global2.a, false), vec3<bool>(true, false, var_0.a), true), !vec3<bool>(true, true, var_0.a))), global2.c, Struct_1(global2.a, vec3<bool>(true, 925f == _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global2.c, 31u)])), func_4(abs(global2.b.wz), Struct_2(global2.a, global3.xxz, Struct_1(var_0.a, vec3<bool>(true, true, global2.a)), 22952u, Struct_1(true, vec3<bool>(false, false, global2.a))), !vec4<bool>(true, global2.a, global2.a, false), 283f).a)));
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))))));
    global1 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-u_input.d.x));
}

