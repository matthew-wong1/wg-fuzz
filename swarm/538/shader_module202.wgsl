struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(647f, -435f, -210f), vec3<f32>(1205f, -466f, 129f), vec3<f32>(-1000f, -338f, -1826f), vec3<f32>(-1693f, -824f, 443f), vec3<f32>(182f, -645f, -875f), vec3<f32>(-265f, -490f, -1823f), vec3<f32>(474f, -1690f, 1000f), vec3<f32>(349f, 728f, 1203f), vec3<f32>(802f, 720f, 251f), vec3<f32>(-2104f, 886f, -399f), vec3<f32>(1036f, 269f, 2552f), vec3<f32>(-1862f, -1555f, -362f), vec3<f32>(1312f, 1267f, -476f), vec3<f32>(276f, 1497f, -358f), vec3<f32>(1000f, -1684f, 603f), vec3<f32>(1635f, 1000f, -320f), vec3<f32>(556f, 138f, 799f), vec3<f32>(1477f, 634f, 1412f), vec3<f32>(467f, 325f, -146f), vec3<f32>(-559f, -1362f, -2218f), vec3<f32>(1776f, 1183f, -878f), vec3<f32>(-482f, -783f, -2015f));

var<private> global1: array<Struct_2, 30>;

var<private> global2: f32 = -743f;

var<private> global3: array<bool, 12>;

var<private> global4: array<vec4<bool>, 17>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -arg_2.a.a.d.x, abs(0i), _wgslsmith_mod_i32(1i, -(-1i ^ u_input.c.x))), arg_2.a.e.d.wxw);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(293f, _wgslsmith_f_op_f32(-arg_0.x))), arg_2.a.b.x));
    var var_2 = arg_0.x;
    global4 = array<vec4<bool>, 17>();
    return Struct_2(arg_2.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-881f, arg_0.x, arg_0.x))), arg_2.a.d, any(global4[_wgslsmith_index_u32(u_input.d.x, 17u)]))))), arg_2.a.a, _wgslsmith_f_op_vec3_f32(abs(arg_0.xww)), arg_2.a.a);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> u32 {
    global2 = 1054f;
    global3 = array<bool, 12>();
    let var_0 = !select(!global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.d.zyz, vec3<u32>(4469u, u_input.d.x, 4294967295u))), 17u)], !global4[_wgslsmith_index_u32(~u_input.a, 17u)], !arg_0.c.a.b);
    let var_1 = select(global4[_wgslsmith_index_u32(~(~max(~0u, u_input.d.x)), 17u)], var_0, !(!select(var_0, var_0, !var_0.x)));
    let var_2 = var_0.xw;
    return ~(~u_input.d.x);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_5(Struct_2(func_2(vec4<f32>(-513f, -424f, -376f, _wgslsmith_f_op_f32(min(644f, 472f))), vec2<bool>(u_input.b >= 0i, u_input.d.x > 0u), Struct_5(func_2(vec4<f32>(1529f, -318f, -1240f, 2040f), vec2<bool>(arg_0, false), Struct_5(Struct_2(Struct_1(vec2<f32>(-947f, -1032f), false, global0[_wgslsmith_index_u32(0u, 22u)], vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec3<f32>(1128f, -992f, 242f), Struct_1(vec2<f32>(3304f, 2537f), true, vec3<f32>(173f, 484f, -699f), vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.b)), global0[_wgslsmith_index_u32(4829u, 22u)], Struct_1(vec2<f32>(-888f, 225f), arg_0, global0[_wgslsmith_index_u32(4294967295u, 22u)], vec4<i32>(4272i, 1i, u_input.c.x, -1i))), vec3<bool>(true, false, arg_0))), !vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 12u)], false))).c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 22u)]))), vec3<f32>(_wgslsmith_f_op_f32(trunc(658f)), func_2(vec4<f32>(-1127f, -839f, 662f, -457f), vec2<bool>(false, arg_0), Struct_5(global1[_wgslsmith_index_u32(arg_1, 30u)], vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(12015u, 12u)], arg_0))).c.c.x, _wgslsmith_f_op_f32(round(-1051f))))), func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(f32(-1f) * -698f), 1f), !select(vec2<bool>(global3[_wgslsmith_index_u32(arg_2, 12u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 12u)]), global3[_wgslsmith_index_u32(22326u, 12u)]), Struct_5(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], !vec3<bool>(global3[_wgslsmith_index_u32(59139u, 12u)], arg_0, true))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(899f, 794f, 113f) + vec3<f32>(-403f, -668f, 1000f)))), func_2(vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(-1887f)), 944f, _wgslsmith_f_op_f32(max(1119f, 129f))), select(vec2<bool>(arg_0, global3[_wgslsmith_index_u32(u_input.a, 12u)]), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_0, global3[_wgslsmith_index_u32(arg_2, 12u)])), vec2<bool>(arg_0, true)), Struct_5(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], vec3<bool>(global3[_wgslsmith_index_u32(1u, 12u)], arg_0, global3[_wgslsmith_index_u32(arg_2, 12u)]))).a), vec3<bool>(true, all(!vec2<bool>(arg_0, true)), global3[_wgslsmith_index_u32(func_3(Struct_4(-1000f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(422f, 320f, -331f, -1000f), vec4<f32>(-711f, 549f, -279f, 363f))), Struct_2(Struct_1(vec2<f32>(204f, 575f), false, vec3<f32>(-1000f, -666f, 889f), vec4<i32>(-1i, 1i, u_input.c.x, 2147483647i)), vec3<f32>(1869f, -1000f, -1640f), Struct_1(vec2<f32>(453f, 1047f), false, global0[_wgslsmith_index_u32(1u, 22u)], vec4<i32>(u_input.c.x, -1i, u_input.b, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 22u)], Struct_1(vec2<f32>(-830f, 1056f), true, vec3<f32>(772f, 1376f, -814f), vec4<i32>(-1i, 18095i, u_input.c.x, 18022i))), func_2(vec4<f32>(451f, -713f, -1621f, 1793f), vec2<bool>(arg_0, arg_0), Struct_5(global1[_wgslsmith_index_u32(arg_1, 30u)], vec3<bool>(arg_0, true, global3[_wgslsmith_index_u32(arg_1, 12u)]))).a), -1264f, Struct_5(func_2(vec4<f32>(399f, 512f, 673f, 399f), vec2<bool>(global3[_wgslsmith_index_u32(arg_1, 12u)], false), Struct_5(global1[_wgslsmith_index_u32(59453u, 30u)], vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(arg_1, 12u)], true))), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(global3[_wgslsmith_index_u32(66780u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], false, true))), ~0i), 12u)]));
    var var_1 = u_input.d.xzx;
    let var_2 = var_0.a.a.d.x;
    var var_3 = -6162i;
    var var_4 = -1207f;
    return -var_0.a.e.d;
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f + 1399f) + -1000f), 376f)))));
    global2 = -290f;
    let var_0 = _wgslsmith_sub_vec4_i32(func_4(!(!any(vec3<bool>(false, global3[_wgslsmith_index_u32(57845u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]))), 1u, func_3(Struct_4(_wgslsmith_f_op_f32(max(570f, 164f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(958f, -2164f, -1135f, -408f))), func_2(vec4<f32>(584f, 1000f, -843f, 1000f), vec2<bool>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_5(Struct_2(Struct_1(vec2<f32>(596f, -1648f), global3[_wgslsmith_index_u32(u_input.d.x, 12u)], global0[_wgslsmith_index_u32(0u, 22u)], vec4<i32>(u_input.c.x, u_input.b, 19779i, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a, 22u)], Struct_1(vec2<f32>(348f, 153f), false, vec3<f32>(-2202f, -1651f, -885f), vec4<i32>(arg_0.x, arg_0.x, 1533i, 1i)), vec3<f32>(-365f, 448f, -191f), Struct_1(vec2<f32>(942f, 1000f), global3[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], vec4<i32>(arg_0.x, 0i, u_input.c.x, arg_0.x))), vec3<bool>(true, false, false))), Struct_1(vec2<f32>(1031f, -1022f), true, vec3<f32>(245f, 295f, 859f), vec4<i32>(-1i, arg_0.x, -22003i, 15379i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-234f)), _wgslsmith_f_op_f32(-493f + -1157f)), Struct_5(global1[_wgslsmith_index_u32(~u_input.a, 30u)], select(vec3<bool>(true, true, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.d.x, 12u)]))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -12177i), _wgslsmith_mod_i32(-63034i, u_input.b), -1i))), -vec4<i32>(~arg_0.x << (u_input.a % 32u), u_input.c.x ^ u_input.c.x, arg_0.x, -16977i));
    global3 = array<bool, 12>();
    var var_1 = Struct_3(vec3<i32>(~(~4630i), min(reverseBits(-6934i), select(-16770i, -u_input.b, true)), select(max(u_input.c.x, var_0.x), -8604i, global3[_wgslsmith_index_u32(~(u_input.d.x | u_input.d.x), 12u)])), 33155u, func_2(vec4<f32>(_wgslsmith_f_op_f32(1f - 2148f), -117f, -330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1333f + 852f) * _wgslsmith_f_op_f32(sign(-1758f)))), !select(select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)]), false), vec2<bool>(true, true), true != global3[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_5(Struct_2(Struct_1(vec2<f32>(-296f, -1000f), global3[_wgslsmith_index_u32(u_input.d.x, 12u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], var_0), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], vec3<f32>(-154f, 439f, -496f)), Struct_1(vec2<f32>(-989f, 424f), global3[_wgslsmith_index_u32(u_input.a, 12u)], vec3<f32>(-1000f, 837f, -173f), vec4<i32>(u_input.b, var_0.x, u_input.b, -17488i)), vec3<f32>(830f, -1348f, -1515f), Struct_1(vec2<f32>(-1225f, -865f), global3[_wgslsmith_index_u32(u_input.a, 12u)], vec3<f32>(125f, -285f, 488f), vec4<i32>(0i, -2147483647i, arg_0.x, u_input.b))), vec3<bool>(true, true, true))));
    return Struct_5(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(983f, 1185f, -1112f, -199f)))), select(select(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 12u)]), !vec2<bool>(true, var_1.c.a.b), !vec2<bool>(global3[_wgslsmith_index_u32(38673u, 12u)], global3[_wgslsmith_index_u32(71934u, 12u)])), select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 12u)], global3[_wgslsmith_index_u32(u_input.d.x, 12u)]), vec2<bool>(true, true), true), false), Struct_5(var_1.c, !vec3<bool>(global3[_wgslsmith_index_u32(26287u, 12u)], global3[_wgslsmith_index_u32(49896u, 12u)], var_1.c.a.b))), !select(select(!vec3<bool>(var_1.c.e.b, false, false), select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.a.b, var_1.c.c.b, true), vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_1.b, 12u)])), select(vec3<bool>(global3[_wgslsmith_index_u32(var_1.b, 12u)], true, var_1.c.e.b), vec3<bool>(false, false, var_1.c.e.b), var_1.c.e.b)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.c.a.b), var_1.c.c.b), all(vec3<bool>(var_1.c.a.b, true, var_1.c.c.b))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.e.a), arg_0.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(194f * arg_1.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -1841f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(841f)) + _wgslsmith_f_op_f32(-949f + arg_1.a.x)), arg_1.c.x), global0[_wgslsmith_index_u32(select(1u, firstLeadingBit(select(u_input.a, 1u, false)), global3[_wgslsmith_index_u32(reverseBits(0u), 12u)]), 22u)]), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -arg_1.d, vec4<i32>(_wgslsmith_sub_i32(abs(-2147483647i), u_input.c.x), abs(-14680i << (u_input.a % 32u)), arg_1.d.x, -2147483647i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1138f, arg_1.a.x)))), !any(arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -324f, _wgslsmith_f_op_f32(f32(-1f) * -550f)))), abs(func_1(vec2<i32>(u_input.b, -557i)).a.e.d) << (~(~countOneBits(u_input.d)) % vec4<u32>(32u)));
    let var_1 = -(~(~_wgslsmith_mult_i32(arg_0.a.a.d.x, u_input.b))) > ((u_input.b | arg_1.d.x) >> (u_input.a % 32u));
    let var_2 = Struct_5(func_1(vec2<i32>(28590i, min(45348i, var_0.d.x))).a, select(vec3<bool>(true, false, arg_0.a.e.b), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1552f))) != _wgslsmith_f_op_f32(-arg_0.a.a.c.x)));
    let var_3 = Struct_4(-191f, vec4<f32>(-1000f, 771f, arg_0.a.a.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -271f)))))), global1[_wgslsmith_index_u32(u_input.a, 30u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.a.d.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -1791f) - var_0.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.d.x * -1000f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1413f - 1309f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x) * _wgslsmith_f_op_f32(arg_1.c.x - -411f)), 570f), arg_1.d >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 1u, 51613u, u_input.d.x), ~u_input.d) % vec4<u32>(32u))));
    return func_1(vec2<i32>(1i, -_wgslsmith_div_i32(reverseBits(var_0.d.x), -2147483647i))).a.a;
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.a, arg_1.c.xz)));
    let var_1 = _wgslsmith_div_u32(~52292u, (1u ^ (1u ^ reverseBits(u_input.a))) >> (1u % 32u));
    var var_2 = arg_1.d.x;
    let var_3 = func_1(vec2<i32>(_wgslsmith_div_i32(13870i, 11499i), func_4(true, _wgslsmith_div_u32(1u, var_1), u_input.d.x).x));
    let var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 76836u, abs(0u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1, var_1, 1u), ~u_input.d.wxz), _wgslsmith_clamp_vec3_u32(u_input.d.xwz, u_input.d.zyy, countOneBits(u_input.d.xzy))));
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 12>();
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) * 590f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(529f)))))), _wgslsmith_f_op_f32(func_6(255f, func_5(func_1(vec2<i32>(1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, 263f) * vec2<f32>(758f, -728f)), true, func_1(vec2<i32>(u_input.c.x, u_input.b)).a.b, vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -2147483647i)))))));
    global4 = array<vec4<bool>, 17>();
    var var_0 = select(_wgslsmith_mod_vec2_u32(reverseBits(countOneBits(u_input.d.wy | vec2<u32>(1u, 1u))), ~u_input.d.xw), _wgslsmith_sub_vec2_u32(firstLeadingBit(abs(~u_input.d.yw)), u_input.d.zx), 46873u >= u_input.a);
    var_0 = ~u_input.d.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(10374u, 22u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1052f), 1f, 1f) * _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(24029u, 22u)])))));
}

