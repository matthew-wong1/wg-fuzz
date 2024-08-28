struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(i32(-2147483648), vec4<f32>(108f, -691f, -1721f, 1679f), 1i, vec3<u32>(0u, 1u, 1u), 33004u), Struct_3(2147483647i, vec4<f32>(-1409f, 325f, 465f, 768f), 39533i, vec3<u32>(0u, 1u, 1u), 1u), Struct_3(-38270i, vec4<f32>(-799f, 146f, -789f, 1000f), 1i, vec3<u32>(107387u, 0u, 4294967295u), 61188u), Struct_3(-1i, vec4<f32>(1089f, -1296f, 1000f, -2037f), -1i, vec3<u32>(1u, 34330u, 48692u), 28297u), Struct_3(i32(-2147483648), vec4<f32>(-1000f, 540f, 239f, -2114f), i32(-2147483648), vec3<u32>(0u, 43618u, 4294967295u), 1u), Struct_3(515i, vec4<f32>(-927f, 1311f, 1000f, 606f), 22485i, vec3<u32>(4294967295u, 8265u, 1u), 4294967295u), Struct_3(i32(-2147483648), vec4<f32>(2563f, -1578f, -454f, 690f), 2987i, vec3<u32>(1u, 0u, 0u), 1u), Struct_3(i32(-2147483648), vec4<f32>(-1255f, 286f, -1000f, -384f), -27336i, vec3<u32>(12366u, 4294967295u, 24771u), 0u), Struct_3(0i, vec4<f32>(292f, 438f, 1218f, 936f), 2147483647i, vec3<u32>(0u, 4294967295u, 45627u), 1u), Struct_3(2147483647i, vec4<f32>(1190f, 1000f, 668f, -1374f), -1i, vec3<u32>(15311u, 49497u, 4294967295u), 28464u), Struct_3(2147483647i, vec4<f32>(-275f, 699f, -544f, -390f), 1i, vec3<u32>(7006u, 35007u, 1u), 0u), Struct_3(1i, vec4<f32>(-757f, 1210f, -351f, -748f), 8908i, vec3<u32>(78546u, 4294967295u, 4294967295u), 6469u), Struct_3(-1i, vec4<f32>(135f, 1190f, 227f, -431f), -24715i, vec3<u32>(75823u, 5348u, 1u), 1u), Struct_3(-1i, vec4<f32>(-1000f, 352f, -1784f, 1038f), -1i, vec3<u32>(64836u, 57982u, 0u), 16866u), Struct_3(2147483647i, vec4<f32>(-704f, 474f, -956f, -2056f), 1i, vec3<u32>(0u, 26503u, 4294967295u), 4294967295u), Struct_3(-39607i, vec4<f32>(-721f, 167f, -1399f, -1009f), 0i, vec3<u32>(36501u, 68559u, 22443u), 105176u), Struct_3(1i, vec4<f32>(-1590f, -1320f, 1052f, -322f), 0i, vec3<u32>(8028u, 21710u, 25491u), 0u), Struct_3(-11430i, vec4<f32>(-415f, 514f, -1473f, 131f), -28493i, vec3<u32>(30347u, 0u, 15260u), 4294967295u), Struct_3(-1i, vec4<f32>(870f, 1754f, -231f, -575f), -43819i, vec3<u32>(1u, 0u, 4294967295u), 25175u), Struct_3(-6166i, vec4<f32>(-1294f, -954f, -708f, -1210f), 3814i, vec3<u32>(24296u, 4737u, 1u), 4294967295u), Struct_3(1i, vec4<f32>(-752f, 2245f, -787f, 895f), 2147483647i, vec3<u32>(4294967295u, 4891u, 1u), 4294967295u), Struct_3(0i, vec4<f32>(-277f, 1157f, -819f, 597f), i32(-2147483648), vec3<u32>(78316u, 4294967295u, 43370u), 0u), Struct_3(i32(-2147483648), vec4<f32>(617f, 1872f, -457f, 1000f), 3445i, vec3<u32>(0u, 1270u, 14207u), 4294967295u), Struct_3(-7759i, vec4<f32>(1526f, -1023f, -1000f, -1000f), 0i, vec3<u32>(1053u, 0u, 42437u), 1u));

var<private> global2: array<f32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~select(49695u, 57991u, arg_0.x), 30812u >> (1u % 32u)), 23u)]) > global2[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(40777u, 23u)], 276f, -1346f, 1138f) + vec4<f32>(global2[_wgslsmith_index_u32(43772u, 23u)], 1504f, 131f, 124f)) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -163f, -1954f, global2[_wgslsmith_index_u32(4294967295u, 23u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(476f, global2[_wgslsmith_index_u32(32057u, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)], 1000f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, 2046f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(33345u, 23u)], -380f, -1228f, global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<f32>(331f, global2[_wgslsmith_index_u32(10116u, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)], -721f), vec4<bool>(false, arg_0.x, true, arg_0.x))), vec4<bool>(arg_0.x, arg_0.x, true, true)))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 572f))))), _wgslsmith_f_op_f32(142f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b.x, 23u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~1u, 23u)])))), global2[_wgslsmith_index_u32(71933u, 23u)]));
    var var_1 = Struct_4(arg_0.x, 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_0.wyz, vec3<f32>(-296f, 1794f, global2[_wgslsmith_index_u32(u_input.a, 23u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-212f, global2[_wgslsmith_index_u32(u_input.c.x, 23u)]) - _wgslsmith_f_op_f32(-419f * var_0.x)))), Struct_1(select(select(!vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), !(!vec2<bool>(true, arg_0.x)), arg_0.wz), ~_wgslsmith_mult_u32(select(u_input.c.x, 55506u, arg_0.x), 1u), arg_0, ~(~(u_input.c ^ u_input.b.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))));
    var var_2 = Struct_4(false, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(1i, var_1.b, var_1.b, var_1.b) ^ vec4<i32>(var_1.b, 2550i, 1i, -1i)), vec4<i32>(~2147483647i, i32(-1i) * -2147483647i, ~var_1.b, 9004i & var_1.b)), -reverseBits(vec4<i32>(var_1.b, var_1.b, var_1.b, var_1.b)) >> (~u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -778f, var_1.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(807f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], -1412f), vec3<f32>(-724f, var_1.d, -1334f)), select(var_1.e.c.xwy, vec3<bool>(true, true, false), arg_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_1.e.e), arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f * var_1.e.e) * -1474f)), var_1.e);
    var var_3 = true;
    return 4177u;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    global0 = arg_3.x;
    var var_0 = vec4<i32>(1i, 1i, 1i, 1i);
    var var_1 = _wgslsmith_div_vec3_u32(~(~u_input.b.www) << (_wgslsmith_mult_vec3_u32(u_input.b.zyz, abs(vec3<u32>(1u, arg_0, u_input.a)) >> ((u_input.b.xww >> (vec3<u32>(arg_1.a.d.x, arg_1.a.d.x, arg_1.a.b) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(0u, reverseBits(~0u), 124358u));
    let var_2 = !(!arg_1.b);
    global2 = array<f32, 23>();
    return -var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global2 = array<f32, 23>();
    global1 = array<Struct_3, 24>();
    global1 = array<Struct_3, 24>();
    var var_0 = Struct_3(func_4(_wgslsmith_clamp_u32(func_3(select(vec4<bool>(arg_0.x, arg_2.c.x, arg_2.c.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_2.a.x, false), false)), 100595u, ~_wgslsmith_div_u32(u_input.b.x, 22459u)), Struct_5(arg_2, false), arg_0.x, !vec2<bool>(arg_2.a.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(351f, arg_1)), global2[_wgslsmith_index_u32(arg_2.b, 23u)], _wgslsmith_f_op_f32(floor(720f)), arg_1) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(855f, arg_1, 123f, 1395f), vec4<f32>(arg_2.e, arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 1002f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1048f, arg_1, 1323f, arg_2.e) * vec4<f32>(929f, 780f, 664f, arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(-arg_1), 1342f, global2[_wgslsmith_index_u32(20991u, 23u)]))), ~_wgslsmith_mult_i32(-1i, 1i), select(vec3<u32>(u_input.c.x, 4294967295u, abs(u_input.b.x)), select(u_input.b.yxw, _wgslsmith_div_vec3_u32(abs(u_input.b.wzw), u_input.b.wzw & vec3<u32>(0u, 4294967295u, 3554u)), true), false), _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(4294967295u, max(u_input.a, ~4294967295u))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(1u, 0u), (0u | (_wgslsmith_sub_u32(arg_2.d.x, var_0.d.x) | abs(78289u))) & 4294967295u, _wgslsmith_div_u32(~(~u_input.c.x), u_input.a | func_3(vec4<bool>(arg_2.c.x, true, arg_2.a.x, false))) >> ((~var_0.e & 43619u) % 32u)), 24u)];
    return vec3<bool>(arg_0.x, arg_0.x, arg_2.c.x);
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = select(func_2(arg_0.e.a, -1426f, arg_0.e), !select(arg_0.e.c.wxx, func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 23u)] - -2074f), arg_0.e), true), false);
    global0 = var_0.x;
    var var_1 = !func_2(vec2<bool>(var_0.x, true), 1188f, Struct_1(!select(arg_0.e.a, var_0.yz, arg_0.e.a), (u_input.b.x | arg_0.e.d.x) ^ select(1u, u_input.a, false), select(vec4<bool>(true, false, arg_0.e.c.x, var_0.x), select(arg_0.e.c, vec4<bool>(var_0.x, true, var_0.x, false), true), var_0.x), _wgslsmith_mult_vec2_u32(arg_0.e.d, reverseBits(arg_0.e.d)), arg_0.c.x)).x;
    var var_2 = func_2(!func_2(vec2<bool>(-205f <= global2[_wgslsmith_index_u32(arg_0.e.d.x, 23u)], all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.c.x, 23u)], global2[_wgslsmith_index_u32(38988u, 23u)]), _wgslsmith_f_op_f32(114f - global2[_wgslsmith_index_u32(u_input.c.x, 23u)]), any(arg_0.e.c))), arg_0.e).xy, -993f, Struct_1(func_2(vec2<bool>(false, true), global2[_wgslsmith_index_u32(31251u, 23u)], Struct_1(select(vec2<bool>(true, arg_0.a), arg_0.e.c.zy, var_0.x), _wgslsmith_mod_u32(u_input.a, 0u), !vec4<bool>(false, arg_0.a, var_0.x, arg_0.e.c.x), ~arg_0.e.d, _wgslsmith_f_op_f32(f32(-1f) * -463f))).zz, ~(~firstLeadingBit(u_input.b.x)), select(!select(arg_0.e.c, vec4<bool>(arg_0.a, true, arg_0.a, var_0.x), arg_0.e.c), !select(arg_0.e.c, vec4<bool>(arg_0.a, false, var_0.x, var_0.x), arg_0.e.c.x), arg_0.e.a.x), vec2<u32>(~_wgslsmith_sub_u32(arg_0.e.d.x, 4294967295u), 65653u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-126f)), global2[_wgslsmith_index_u32(32630u, 23u)])))).zx;
    global1 = array<Struct_3, 24>();
    return select(func_2(!select(vec2<bool>(arg_0.a, false), func_2(var_0.zy, arg_0.d, Struct_1(vec2<bool>(arg_0.e.a.x, false), 1u, vec4<bool>(false, true, var_2.x, false), vec2<u32>(u_input.c.x, u_input.c.x), -1000f)).xy, var_0.yz), _wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(-arg_0.c.x)), arg_0.e).xx, var_0.yz, func_2(vec2<bool>(var_0.x || false, any(select(vec2<bool>(true, true), var_0.xy, var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(274f)) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)] - 1000f)), -861f)), Struct_1(vec2<bool>(true, var_0.x), arg_0.e.d.x << (max(29335u, 16358u) % 32u), arg_0.e.c, firstTrailingBit(~vec2<u32>(u_input.c.x, 41105u)), 850f)).xz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 24>();
    var var_0 = !(!(!func_1(Struct_4(false, -2031i, vec3<f32>(-196f, global2[_wgslsmith_index_u32(13179u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), global2[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(vec2<bool>(false, false), u_input.a, vec4<bool>(false, false, false, false), vec2<u32>(u_input.c.x, 19483u), global2[_wgslsmith_index_u32(4294967295u, 23u)])))));
    let var_1 = global2[_wgslsmith_index_u32(~1u, 23u)];
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(u_input.b.xyx, max(~u_input.b.xzy, u_input.b.yyw)), firstLeadingBit(firstTrailingBit(9238i)), vec2<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(45957i, 19572i, 2147483647i), vec3<i32>(-1997i, -16761i, 28856i)), _wgslsmith_clamp_i32(-58263i, 26286i, -47807i), true), -38321i) << (~_wgslsmith_mod_vec2_u32(~vec2<u32>(26366u, 81314u), vec2<u32>(u_input.b.x, 0u)) % vec2<u32>(32u)), 0i, Struct_1(!select(vec2<bool>(var_0.x, var_0.x), func_1(Struct_4(var_0.x, -2147483647i, vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)], -519f), global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(vec2<bool>(false, var_0.x), 50316u, vec4<bool>(true, false, var_0.x, true), vec2<u32>(0u, 4294967295u), global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))), func_2(vec2<bool>(false, false), -1594f, Struct_1(vec2<bool>(var_0.x, false), u_input.b.x, vec4<bool>(true, var_0.x, var_0.x, true), u_input.c, -545f)).x), u_input.a, !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), !var_0.x, !var_0.x, !var_0.x), ~countOneBits(vec2<u32>(0u, u_input.a)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 23u)])));
    var var_3 = Struct_4(any(var_2.e.c) & any(var_2.e.a), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_2.b, 71402i), -53031i, 20278i ^ var_2.c.x, var_2.b >> (u_input.c.x % 32u)), firstTrailingBit(vec4<i32>(var_2.c.x, 2147483647i, var_2.d, var_2.c.x)), -(~vec4<i32>(var_2.d, var_2.c.x, var_2.d, var_2.b))), max(vec4<i32>(1i, func_4(4294967295u, Struct_5(Struct_1(var_2.e.c.wx, u_input.c.x, vec4<bool>(true, false, var_2.e.a.x, var_2.e.c.x), vec2<u32>(13840u, 19886u), global2[_wgslsmith_index_u32(4294967295u, 23u)]), false), var_0.x, var_2.e.c.xz), i32(-1i) * -49994i, max(-4069i, -19966i)), max(vec4<i32>(51336i, 2147483647i, 2147483647i, var_2.c.x) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.c.x, 17070i, var_2.c.x, 13843i), vec4<i32>(0i, -1i, -2147483647i, var_2.c.x), vec4<i32>(-1i, var_2.d, 34188i, var_2.c.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, -867f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.e.e))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e.e * _wgslsmith_f_op_f32(step(122f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.a, 23u)])))), -170f), Struct_1(vec2<bool>(true, var_0.x), abs(~u_input.a), select(select(vec4<bool>(var_0.x, var_0.x, true, false), var_2.e.c, var_2.d >= var_2.b), var_2.e.c, var_2.e.c), countOneBits(vec2<u32>(var_2.e.b, 73316u)) & (select(u_input.c, vec2<u32>(33010u, 93037u), vec2<bool>(false, false)) >> ((var_2.e.d & var_2.e.d) % vec2<u32>(32u))), _wgslsmith_f_op_f32(var_2.e.e * -667f)));
    var var_4 = global1[_wgslsmith_index_u32(28769u, 24u)];
    var var_5 = vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.b.x, var_3.e.b), _wgslsmith_dot_vec2_u32(var_4.d.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_3.e.d.x, 44418u))), var_2.a), ~(~(~var_4.d))), 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.e.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.e)), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~_wgslsmith_mod_u32(1u, 21144u), 1u), var_2.c, vec2<f32>(_wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.e.e, 679f)))), global2[_wgslsmith_index_u32(11518u, 23u)]));
}

