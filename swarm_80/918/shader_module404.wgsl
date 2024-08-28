struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, false, true, true, true, false, true, true, true, true, true, true, true, true, false, false, false, true, true, true, false, false, false, true, false, true);

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(9047u, -942f, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-1000f, 224f, 330f, -357f)), false, vec2<f32>(614f, 590f)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-1275f, 1008f, 2273f, 712f))), Struct_4(16560u, 686f, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1270f, 1423f, -1000f, -859f)), true, vec2<f32>(-1891f, -808f)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(130f, 115f, 2315f, 1000f))), Struct_4(31930u, 1336f, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-1000f, -119f, -690f, -283f)), false, vec2<f32>(1880f, -1133f)), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(501f, 1416f, -1470f, -386f))), Struct_4(67825u, -503f, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-2133f, -782f, 1434f, 1452f)), false, vec2<f32>(1129f, -1000f)), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-257f, 316f, -1926f, 1093f))), Struct_4(1u, 1284f, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(1184f, 1000f, 701f, -134f)), false, vec2<f32>(-304f, 295f)), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(125f, 317f, -418f, 522f))), Struct_4(74993u, -497f, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(1000f, 1408f, -149f, -753f)), true, vec2<f32>(340f, 1354f)), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-649f, 1000f, 1581f, 928f))), Struct_4(4294967295u, -1327f, Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-1265f, -300f, -306f, 1371f)), true, vec2<f32>(-1000f, 883f)), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-134f, -187f, 645f, -110f))), Struct_4(14223u, 1746f, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-540f, -1937f, -847f, 745f)), true, vec2<f32>(381f, -753f)), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-889f, 674f, 1406f, 2810f))), Struct_4(33076u, 1741f, Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-814f, -348f, -815f, -1145f)), true, vec2<f32>(1176f, 704f)), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(739f, -1000f, 236f, 803f))), Struct_4(1u, -1134f, Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(-698f, -663f, -466f, 3039f)), false, vec2<f32>(731f, 1187f)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(376f, -461f, -973f, 986f))), Struct_4(4294967295u, 1271f, Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(611f, 880f, -1090f, 1000f)), true, vec2<f32>(-373f, -908f)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(165f, -563f, 1755f, 1642f))), Struct_4(27906u, -560f, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(693f, -917f, -111f, -232f)), true, vec2<f32>(-329f, -1107f)), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-2149f, -1230f, 1240f, -1121f))), Struct_4(4294967295u, 1580f, Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(1002f, -663f, 1044f, 918f)), false, vec2<f32>(1366f, -608f)), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(174f, 626f, -1000f, 1000f))), Struct_4(22776u, 1898f, Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(2248f, 993f, 944f, 1874f)), true, vec2<f32>(-1000f, -1000f)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-1505f, -1204f, -602f, 877f))), Struct_4(46921u, -1099f, Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-1000f, -263f, 134f, 451f)), true, vec2<f32>(1034f, 1000f)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(559f, -941f, -462f, 1957f))), Struct_4(1u, 508f, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1496f, -1681f, 296f, 1610f)), true, vec2<f32>(-991f, 203f)), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(287f, -1000f, 561f, 763f))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(select(arg_0.d.a, select(!(!vec4<bool>(arg_2.d.d.a.x, true, false, global0[_wgslsmith_index_u32(arg_2.a.a, 27u)])), select(vec4<bool>(true, true, true, global1.x), arg_2.a.c.a.a, vec4<bool>(true, arg_0.d.a.x, arg_0.c.b, arg_0.c.a.a.x)), vec4<bool>(arg_2.b.x > arg_2.c, false, all(vec3<bool>(global1.x, true, global1.x)), u_input.b.x == 31516u)), arg_0.c.a.a), vec4<f32>(arg_2.d.c.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1366f - -194f), _wgslsmith_div_f32(arg_0.b, arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1496f, -1000f)) - _wgslsmith_div_f32(arg_2.c, -644f))), _wgslsmith_f_op_f32(arg_0.d.b.x + -713f)));
    global1 = var_0.a.xyx;
    global2 = array<vec3<f32>, 11>();
    var var_1 = -u_input.a.x;
    var var_2 = countOneBits(arg_0.a << (_wgslsmith_add_u32(77704u, arg_2.d.a) % 32u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.d.b.yx)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), arg_0.c.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, arg_0.d.b.x)), arg_2.b.xx, arg_0.c.a.a.xy)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1530f)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    global1 = vec3<bool>(!global1.x, (any(vec3<bool>(true, true, true)) | !any(global1.yy)) == true, any(!(!vec4<bool>(global1.x, false, global1.x, global1.x))));
    let var_0 = u_input.d;
    let var_1 = ~(~(~firstTrailingBit(vec2<u32>(var_0, var_0)) | ~(vec2<u32>(3730u, u_input.b.x) << (u_input.b.zx % vec2<u32>(32u)))));
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_4) -> u32 {
    global4 = array<Struct_4, 16>();
    let var_0 = Struct_3(arg_2.d, Struct_2(arg_2.d, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-352f, -716f)))), _wgslsmith_f_op_vec2_f32(arg_2.d.b.zy - vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(arg_2.b - -1656f), arg_2.c.c.x, _wgslsmith_f_op_vec2_f32(func_3(global4[_wgslsmith_index_u32(4294967295u, 16u)], arg_1, Struct_5(global4[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(arg_2.a, 12u)], arg_2.c.c.x, arg_2), arg_2.c.a.a.zyw)))), -822f)));
    var var_1 = 1146f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1175f, _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(224f))))) + arg_2.d.b.x);
    global4 = array<Struct_4, 16>();
    return min(~20926u, _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b) ^ abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(48872u, u_input.d), vec2<u32>(arg_2.a, arg_2.a)), vec2<u32>(0u, 43809u))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~vec2<u32>(1u, ~func_2(-605f, vec4<i32>(u_input.a.x, 1i, -43675i, 31309i), Struct_4(u_input.d, 904f, Struct_2(Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), global3[_wgslsmith_index_u32(u_input.d, 12u)]), true, vec2<f32>(1016f, -2463f)), Struct_1(vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global1.x), global3[_wgslsmith_index_u32(1u, 12u)])))));
    global0 = array<bool, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-968f, _wgslsmith_f_op_vec2_f32(func_3(Struct_4(0u, 966f, Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], global1.x, true), vec4<f32>(-516f, -357f, 174f, 1041f)), global1.x, vec2<f32>(342f, 785f)), Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(83564u, 27u)], global1.x, global0[_wgslsmith_index_u32(u_input.d, 27u)]), global3[_wgslsmith_index_u32(var_0.x, 12u)])), vec4<i32>(-3049i, 0i, 1i, u_input.e), Struct_5(global4[_wgslsmith_index_u32(u_input.d, 16u)], vec4<f32>(-308f, -209f, 176f, -1000f), 165f, global4[_wgslsmith_index_u32(41928u, 16u)]), vec3<bool>(false, true, true))).x))))));
    let var_2 = !(!global1.zz);
    global1 = select(vec3<bool>(true, !(global0[_wgslsmith_index_u32(var_0.x, 27u)] != true), var_2.x), !vec3<bool>(all(vec4<bool>(false, false, global1.x, global0[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_mod_i32(u_input.c, u_input.e) < 0i, true), !vec3<bool>(any(select(var_2, vec2<bool>(global1.x, var_2.x), false)), u_input.a.x > -5371i, true));
    return Struct_1(!vec4<bool>(all(!vec3<bool>(false, var_2.x, global1.x)), false, global1.x, all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<bool>(var_2.x, false), var_2.x))), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -1904f)))), var_1.x));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_3(func_1(), arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global4[_wgslsmith_index_u32(u_input.d, 16u)], vec4<i32>(u_input.a.x, 2147483647i, -67015i, u_input.e) | vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.e), Struct_5(Struct_4(4294967295u, arg_0.b, Struct_2(Struct_1(arg_0.c.a.a, vec4<f32>(1055f, arg_0.c.a.b.x, -201f, arg_0.d.b.x)), false, vec2<f32>(-598f, arg_0.b)), Struct_1(arg_0.c.a.a, vec4<f32>(-761f, arg_0.c.a.b.x, -2100f, -194f))), vec4<f32>(-993f, 1000f, arg_0.c.c.x, 700f), arg_0.d.b.x, arg_0), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 27u)], arg_0.d.a.x))) + arg_0.c.a.b.yz)));
    var var_1 = vec3<i32>(u_input.c, -firstLeadingBit(_wgslsmith_sub_i32(0i, -24635i)), u_input.a.x);
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, min(0i, var_1.x), max(u_input.a.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), u_input.a)))), abs(vec3<i32>(26690i, var_1.x, 2147483647i) | vec3<i32>(firstLeadingBit(var_1.x), ~20808i, _wgslsmith_mod_i32(1i, 1i))));
    var_2 = -18328i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3110u;
    let var_1 = Struct_5(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~min(u_input.d, 4294967295u)), u_input.b.x), 16u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1215f, 491f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -117f), _wgslsmith_f_op_f32(f32(-1f) * -408f)))), -603f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-104f, -822f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * -1204f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f - 536f)), _wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_5(Struct_4(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) - -757f), Struct_2(func_1(), !global0[_wgslsmith_index_u32(53769u, 27u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1273f, -1063f))), Struct_1(!vec4<bool>(global1.x, true, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, -514f, 197f, -1045f)))), !vec2<bool>(func_1().a.x, true)));
    global3 = array<vec4<f32>, 12>();
    let var_2 = _wgslsmith_dot_vec4_u32(reverseBits(select(max(~vec4<u32>(4294967295u, 33474u, 1u, u_input.d), ~vec4<u32>(u_input.d, 79320u, 4294967295u, 11992u)), min(~vec4<u32>(var_1.d.a, u_input.b.x, u_input.b.x, 47230u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.a, var_1.d.a, var_1.a.a, 8746u), vec4<u32>(16379u, var_1.d.a, 4294967295u, var_1.d.a))), var_1.a.d.a.x)), abs(~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, 1u, u_input.d, u_input.d)), vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, 56907u) | vec4<u32>(var_1.d.a, u_input.b.x, u_input.b.x, var_1.d.a), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 0u))));
    global3 = array<vec4<f32>, 12>();
    var var_3 = vec2<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -27225i, -2147483647i), vec3<i32>(u_input.a.x, -14864i, -29548i))), 1i);
    global0 = array<bool, 27>();
    let var_4 = var_1.d.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<u32>(var_1.d.a, 17423u << (_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), u_input.b.yx)) % 32u), var_2, countOneBits(u_input.b.x)));
}

