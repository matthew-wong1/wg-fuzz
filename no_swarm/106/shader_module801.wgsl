struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(433f, -1000f, -1124f, -204f, 1540f, 760f, -280f, -556f, 2115f, -1371f, 394f, 1108f, -788f, 1315f, 119f, -672f, -1134f, -1000f, -1082f, -894f, 1495f, 380f, -954f, -415f, -193f, 249f, -606f, -353f, -2787f, -1000f, -1131f, -1341f);

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-374f, -1169f, -134f, 924f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 97479u), 67078u));

var<private> global3: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(-1097i, Struct_2(vec4<f32>(-273f, -1111f, 728f, -123f), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 29095u), 0u)), -159f, vec3<f32>(770f, 1777f, 1216f)), Struct_5(-1i, Struct_2(vec4<f32>(-441f, 1173f, -1000f, 842f), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(30829u, 15178u), 12385u)), -392f, vec3<f32>(1144f, -514f, 824f)), Struct_5(38242i, Struct_2(vec4<f32>(-1873f, -453f, -123f, 119f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(1u, 0u), 1u)), -1747f, vec3<f32>(383f, 1483f, -2290f)), Struct_5(-1i, Struct_2(vec4<f32>(1943f, -952f, -2744f, -1057f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(0u, 4294967295u), 1u)), -420f, vec3<f32>(-193f, -1654f, -1016f)), Struct_5(-1i, Struct_2(vec4<f32>(-1019f, -267f, -1000f, 468f), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(1u, 66601u), 45247u)), 308f, vec3<f32>(374f, -1000f, 1305f)), Struct_5(54765i, Struct_2(vec4<f32>(-559f, -305f, 508f, -1000f), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 0u), 4294967295u)), -858f, vec3<f32>(650f, -653f, 1061f)), Struct_5(-1i, Struct_2(vec4<f32>(-798f, -1017f, -730f, 884f), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(0u, 1u), 1u)), 110f, vec3<f32>(-886f, 1099f, -841f)), Struct_5(-8516i, Struct_2(vec4<f32>(750f, 463f, 505f, -411f), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(79071u, 0u), 0u)), -1575f, vec3<f32>(-671f, 708f, -1000f)), Struct_5(50258i, Struct_2(vec4<f32>(-1415f, 768f, -881f, -1895f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 4294967295u), 0u)), 1189f, vec3<f32>(-1073f, 534f, -647f)), Struct_5(-4225i, Struct_2(vec4<f32>(-688f, -456f, 120f, -1143f), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(36273u, 0u), 0u)), 1000f, vec3<f32>(743f, -1176f, 792f)), Struct_5(31680i, Struct_2(vec4<f32>(-1387f, -251f, 926f, 530f), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(61891u, 0u), 1u)), 1557f, vec3<f32>(1269f, -262f, 941f)), Struct_5(-1i, Struct_2(vec4<f32>(-246f, 258f, 1943f, 1892f), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(56231u, 1431u), 0u)), 1346f, vec3<f32>(106f, 469f, -981f)), Struct_5(i32(-2147483648), Struct_2(vec4<f32>(1403f, 1852f, -298f, -1287f), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 4294967295u), 208u)), 1435f, vec3<f32>(671f, 1000f, -481f)), Struct_5(0i, Struct_2(vec4<f32>(-494f, 463f, -215f, 506f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 1u), 16372u)), 990f, vec3<f32>(763f, -373f, -399f)), Struct_5(1i, Struct_2(vec4<f32>(202f, 1401f, 1453f, 611f), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(4294967295u, 35841u), 4294967295u)), -390f, vec3<f32>(1393f, 1000f, 452f)), Struct_5(-2899i, Struct_2(vec4<f32>(-731f, 1852f, 710f, 1317f), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(100199u, 0u), 0u)), 1570f, vec3<f32>(668f, -336f, 359f)), Struct_5(0i, Struct_2(vec4<f32>(-854f, -1242f, 357f, -208f), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(0u, 26402u), 99475u)), -1000f, vec3<f32>(742f, 768f, 340f)), Struct_5(71423i, Struct_2(vec4<f32>(-284f, -313f, -1497f, -299f), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(66303u, 1u), 4294967295u)), 1000f, vec3<f32>(677f, 612f, -464f)), Struct_5(43774i, Struct_2(vec4<f32>(-128f, -241f, 1161f, 942f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, 35943u), 6838u)), -1568f, vec3<f32>(818f, 170f, -1211f)), Struct_5(24773i, Struct_2(vec4<f32>(327f, 1000f, -1297f, 1445f), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(33203u, 332u), 4294967295u)), -757f, vec3<f32>(1355f, -754f, -444f)), Struct_5(4174i, Struct_2(vec4<f32>(143f, 371f, 1735f, -239f), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 58127u), 95066u)), -622f, vec3<f32>(446f, -776f, 1000f)), Struct_5(36281i, Struct_2(vec4<f32>(-701f, 1139f, 617f, 950f), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(43894u, 9851u), 0u)), 501f, vec3<f32>(-535f, -1421f, -380f)), Struct_5(21348i, Struct_2(vec4<f32>(-856f, -113f, -1038f, -1070f), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(55028u, 36499u), 0u)), 121f, vec3<f32>(617f, 177f, -145f)), Struct_5(2147483647i, Struct_2(vec4<f32>(1083f, -1507f, 839f, -310f), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 58895u), 5491u)), 766f, vec3<f32>(-488f, -858f, 688f)), Struct_5(1i, Struct_2(vec4<f32>(563f, -674f, 760f, 1000f), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 28972u), 30620u)), 1045f, vec3<f32>(753f, 583f, -240f)), Struct_5(-1i, Struct_2(vec4<f32>(1069f, 445f, -1133f, 1835f), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(1u, 52080u), 109706u)), 205f, vec3<f32>(-1798f, 506f, 408f)), Struct_5(13611i, Struct_2(vec4<f32>(-972f, -672f, -107f, 732f), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(1u, 23387u), 4294967295u)), 402f, vec3<f32>(809f, 1381f, 181f)), Struct_5(i32(-2147483648), Struct_2(vec4<f32>(308f, 1000f, -1593f, 1000f), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 94222u), 4294967295u)), 1000f, vec3<f32>(-145f, 1444f, 326f)));

var<private> global4: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(1i, -23579i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-17077i, -12456i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, -18220i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, 9730i), vec2<i32>(-1i, 1i), vec2<i32>(-1175i, 13271i), vec2<i32>(1i, -1803i), vec2<i32>(-51854i, 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_5) -> bool {
    var var_0 = arg_3;
    var var_1 = arg_1;
    var_1 = Struct_1(vec4<bool>(!arg_3.b.b.a.x, !(!any(global2.b.a.zw)), true, !global2.b.a.x & global2.b.a.x), vec2<u32>(~(~(var_0.b.b.c << (0u % 32u))), 4294967295u), ~(~1u));
    global3 = array<Struct_5, 28>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2078f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 32u)], -341f), _wgslsmith_f_op_f32(abs(-571f))), vec3<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), arg_3.b.a.x, _wgslsmith_f_op_f32(ceil(-867f))), true)), global2.a.zzz), var_0.d, select(var_1.a.xww, vec3<bool>(true, all(arg_3.b.b.a.yw), arg_3.b.b.a.x), global1.b.a.yxx)));
    return false;
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(-43153i, -13326i), 23540i, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(-1i, u_input.a, -17752i))), _wgslsmith_sub_i32(i32(-1i) * -9249i, u_input.a & u_input.a)), -u_input.a));
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a.x, 366f), global1.a.x, global1.b.a.x)), global1.a.x, global0[_wgslsmith_index_u32(~(~48219u), 32u)], -1781f)), Struct_1(vec4<bool>(false, u_input.a == 2147483647i, func_3(1u, global2.b, global0[_wgslsmith_index_u32(countOneBits(arg_0), 32u)], Struct_5(var_0.x, Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global1.a.x, global0[_wgslsmith_index_u32(0u, 32u)], 341f), Struct_1(global1.b.a, global1.b.b, 11296u)), global1.a.x, vec3<f32>(1000f, 440f, -2038f))), 4294967295u < max(global2.b.c, global2.b.c)), global2.b.b, global2.b.c));
    let var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, var_0.x), u_input.a), 2147483647i)) >> (21779u % 32u);
    var var_2 = global3[_wgslsmith_index_u32(global2.b.c, 28u)];
    let var_3 = ~arg_0;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-529f + _wgslsmith_f_op_f32(ceil(1163f)))))), _wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1222f))))));
}

fn func_1(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = true;
    let var_1 = arg_0.b;
    let var_2 = 1012f;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) + _wgslsmith_f_op_f32(func_2(0u)))))))));
    var var_4 = 4294967295u;
    return select(global1.b.a.yw, vec2<bool>(any(vec4<bool>(false, false, global1.b.a.x | global2.b.a.x, any(global1.b.a.wz))), select(_wgslsmith_add_i32(1636i, u_input.a) == (i32(-1i) * -25837i), all(vec2<bool>(global1.b.a.x, global1.b.a.x)) & var_0, !(!global2.b.a.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a.yww;
    global4 = array<vec2<i32>, 11>();
    let var_1 = select(vec2<bool>(true, false), func_1(global3[_wgslsmith_index_u32(~1u, 28u)]), vec2<bool>((~u_input.a ^ (u_input.a >> (4294967295u % 32u))) < (-41109i & _wgslsmith_mult_i32(u_input.a, 9573i)), any(!global1.b.a.yy)));
    var var_2 = !(!select(!(!vec4<bool>(var_1.x, var_1.x, false, true)), vec4<bool>(global1.b.a.x, false || var_1.x, true, true), true));
    let var_3 = Struct_1(global1.b.a, ~(~abs(vec2<u32>(global1.b.b.x, global2.b.b.x))), 19595u);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(global1.a)), global1.b);
    global4 = array<vec2<i32>, 11>();
    let var_5 = ~global2.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(17246i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global2.a.x)), global2.a.x))), _wgslsmith_f_op_f32(-101f * _wgslsmith_f_op_f32(select(347f, var_0.x, var_4.b.a.x))), -937f), -543f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2.a), vec4<f32>(_wgslsmith_f_op_f32(min(846f, 434f)), global0[_wgslsmith_index_u32(~var_4.b.b.x, 32u)], 608f, var_0.x))), vec4<f32>(-1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0u))), global2.a.x, -1159f))), var_4.b.c);
}

