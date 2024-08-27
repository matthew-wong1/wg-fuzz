struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(Struct_1(-2032f, 32476i, vec2<u32>(0u, 11042u), 22483i, vec4<f32>(726f, 1111f, -508f, -1770f))), Struct_1(-1000f, 16595i, vec2<u32>(34529u, 8255u), 14388i, vec4<f32>(-1850f, -1136f, 630f, -1000f)), 38175u, 39773u), Struct_4(Struct_2(Struct_1(1161f, -2034i, vec2<u32>(77144u, 1u), 1i, vec4<f32>(-204f, -1086f, 594f, -116f))), Struct_1(-1329f, -40680i, vec2<u32>(0u, 8967u), -19374i, vec4<f32>(-864f, 1929f, -231f, -2030f)), 11984u, 32178u), Struct_4(Struct_2(Struct_1(-1125f, -1i, vec2<u32>(0u, 0u), 3457i, vec4<f32>(-653f, 1201f, 445f, -1034f))), Struct_1(1046f, -47914i, vec2<u32>(1u, 7861u), i32(-2147483648), vec4<f32>(487f, 683f, 707f, 1159f)), 4294967295u, 31426u), Struct_4(Struct_2(Struct_1(-846f, -1i, vec2<u32>(74342u, 63197u), 2147483647i, vec4<f32>(711f, -1148f, -485f, -1430f))), Struct_1(549f, 1i, vec2<u32>(2371u, 0u), 1i, vec4<f32>(-377f, -991f, -1504f, -2122f)), 73116u, 1u), Struct_4(Struct_2(Struct_1(-763f, -1i, vec2<u32>(2286u, 4294967295u), -53551i, vec4<f32>(-178f, 101f, -394f, 322f))), Struct_1(-1535f, -60144i, vec2<u32>(13112u, 37812u), -2454i, vec4<f32>(506f, 1000f, 1051f, -1000f)), 1u, 1u), Struct_4(Struct_2(Struct_1(428f, i32(-2147483648), vec2<u32>(13108u, 4294967295u), 2147483647i, vec4<f32>(129f, 1864f, 446f, -449f))), Struct_1(-620f, 45687i, vec2<u32>(63720u, 43914u), 0i, vec4<f32>(-189f, 640f, -681f, -751f)), 1u, 20377u), Struct_4(Struct_2(Struct_1(-2423f, -27533i, vec2<u32>(32043u, 0u), 18160i, vec4<f32>(837f, 269f, 355f, 514f))), Struct_1(-820f, 67186i, vec2<u32>(4294967295u, 44902u), -1i, vec4<f32>(498f, 1248f, -205f, -1231f)), 1u, 4294967295u), Struct_4(Struct_2(Struct_1(-987f, 2147483647i, vec2<u32>(40489u, 103089u), 57558i, vec4<f32>(1280f, -1000f, -1364f, 888f))), Struct_1(-459f, -89134i, vec2<u32>(4294967295u, 28911u), -77533i, vec4<f32>(483f, 1153f, 225f, 990f)), 9831u, 1u), Struct_4(Struct_2(Struct_1(690f, i32(-2147483648), vec2<u32>(76240u, 12532u), -1i, vec4<f32>(2026f, -354f, -1385f, 537f))), Struct_1(-1296f, -22855i, vec2<u32>(30153u, 0u), 18120i, vec4<f32>(104f, -399f, 722f, 274f)), 49085u, 64300u), Struct_4(Struct_2(Struct_1(-1491f, 1i, vec2<u32>(1u, 37546u), -48072i, vec4<f32>(-927f, -1127f, 185f, -1287f))), Struct_1(-545f, 2147483647i, vec2<u32>(45332u, 83816u), 1i, vec4<f32>(191f, 2443f, -866f, 299f)), 4294967295u, 4294967295u), Struct_4(Struct_2(Struct_1(-1148f, 0i, vec2<u32>(4294967295u, 25057u), -12665i, vec4<f32>(347f, 1035f, 1087f, 297f))), Struct_1(-226f, 7515i, vec2<u32>(22388u, 1u), -79299i, vec4<f32>(-1373f, 1384f, 1116f, -368f)), 0u, 10766u), Struct_4(Struct_2(Struct_1(-793f, -16041i, vec2<u32>(4294967295u, 1u), 0i, vec4<f32>(-1502f, 713f, 868f, -654f))), Struct_1(348f, 28737i, vec2<u32>(0u, 27079u), 2147483647i, vec4<f32>(1000f, -1934f, -1121f, 886f)), 55600u, 4294967295u), Struct_4(Struct_2(Struct_1(699f, 39530i, vec2<u32>(1u, 103075u), 0i, vec4<f32>(-618f, 1002f, -512f, 1000f))), Struct_1(1000f, -24257i, vec2<u32>(0u, 4294967295u), -14667i, vec4<f32>(-2276f, 1000f, 164f, -952f)), 19145u, 1u), Struct_4(Struct_2(Struct_1(-183f, 25000i, vec2<u32>(13340u, 34625u), 1i, vec4<f32>(-1169f, -915f, 1000f, 354f))), Struct_1(750f, -1i, vec2<u32>(22110u, 1u), -1i, vec4<f32>(-1157f, 428f, -582f, 583f)), 33999u, 32876u), Struct_4(Struct_2(Struct_1(-435f, -2407i, vec2<u32>(0u, 26678u), 28244i, vec4<f32>(663f, 893f, 1200f, -965f))), Struct_1(-737f, -6225i, vec2<u32>(13478u, 3865u), i32(-2147483648), vec4<f32>(625f, 339f, -1155f, -1691f)), 8139u, 4294967295u), Struct_4(Struct_2(Struct_1(-1631f, -58554i, vec2<u32>(89394u, 4294967295u), 24971i, vec4<f32>(1843f, 540f, -1310f, 1598f))), Struct_1(489f, 12038i, vec2<u32>(70979u, 53457u), 14744i, vec4<f32>(1000f, 811f, 650f, -695f)), 38177u, 1u), Struct_4(Struct_2(Struct_1(266f, 1665i, vec2<u32>(4294967295u, 19029u), 1i, vec4<f32>(-874f, -1301f, 214f, -2009f))), Struct_1(952f, -17502i, vec2<u32>(1u, 0u), -38849i, vec4<f32>(-223f, 436f, 104f, 461f)), 21585u, 80744u), Struct_4(Struct_2(Struct_1(1000f, 1i, vec2<u32>(0u, 29843u), -32390i, vec4<f32>(300f, 1061f, -907f, 985f))), Struct_1(-256f, -18189i, vec2<u32>(19013u, 26804u), -43665i, vec4<f32>(-1458f, 1660f, -618f, 537f)), 4294967295u, 4294967295u), Struct_4(Struct_2(Struct_1(1000f, 13837i, vec2<u32>(0u, 75875u), 763i, vec4<f32>(498f, -564f, 660f, 297f))), Struct_1(603f, 22271i, vec2<u32>(1u, 0u), -8897i, vec4<f32>(-281f, -1974f, -760f, -1431f)), 145015u, 36288u), Struct_4(Struct_2(Struct_1(173f, 2147483647i, vec2<u32>(0u, 1u), 2008i, vec4<f32>(3513f, 2144f, 2660f, 221f))), Struct_1(1000f, -8618i, vec2<u32>(0u, 9660u), -1i, vec4<f32>(-1566f, 1536f, -1948f, -916f)), 0u, 48417u), Struct_4(Struct_2(Struct_1(1440f, 17367i, vec2<u32>(40327u, 4294967295u), 0i, vec4<f32>(2594f, 780f, -1055f, 738f))), Struct_1(-718f, 2147483647i, vec2<u32>(4294967295u, 4294967295u), i32(-2147483648), vec4<f32>(-508f, 559f, 1034f, -1170f)), 0u, 50521u), Struct_4(Struct_2(Struct_1(-278f, -81096i, vec2<u32>(1u, 4294967295u), 1i, vec4<f32>(-234f, -155f, -1244f, 303f))), Struct_1(178f, 45935i, vec2<u32>(1u, 0u), 21804i, vec4<f32>(-1211f, -671f, 1000f, -252f)), 24476u, 1u), Struct_4(Struct_2(Struct_1(-1863f, -1i, vec2<u32>(4294967295u, 1u), 0i, vec4<f32>(375f, 836f, -1183f, 520f))), Struct_1(421f, -1i, vec2<u32>(2890u, 1u), 20464i, vec4<f32>(-1139f, -666f, -1119f, -837f)), 4294967295u, 107599u), Struct_4(Struct_2(Struct_1(-231f, -1i, vec2<u32>(0u, 1u), 32746i, vec4<f32>(222f, -599f, 210f, -377f))), Struct_1(-1332f, 23966i, vec2<u32>(10661u, 21320u), 23623i, vec4<f32>(-1899f, 514f, 1405f, 387f)), 1u, 59426u), Struct_4(Struct_2(Struct_1(858f, 65033i, vec2<u32>(19757u, 0u), 2147483647i, vec4<f32>(817f, 130f, 1202f, 1121f))), Struct_1(-169f, -40473i, vec2<u32>(37620u, 0u), -1i, vec4<f32>(-534f, 1000f, -473f, -307f)), 1u, 22813u), Struct_4(Struct_2(Struct_1(-260f, 1i, vec2<u32>(1u, 1u), -27731i, vec4<f32>(1000f, 1000f, 322f, 191f))), Struct_1(103f, 0i, vec2<u32>(0u, 9309u), 1581i, vec4<f32>(794f, -917f, -932f, 677f)), 45491u, 74799u), Struct_4(Struct_2(Struct_1(257f, -51359i, vec2<u32>(281u, 11000u), 0i, vec4<f32>(-1935f, -1815f, -271f, 1381f))), Struct_1(-1580f, 1i, vec2<u32>(0u, 4294967295u), -38405i, vec4<f32>(-1575f, 512f, -814f, -771f)), 0u, 0u), Struct_4(Struct_2(Struct_1(3078f, 17598i, vec2<u32>(0u, 0u), i32(-2147483648), vec4<f32>(-310f, -152f, -239f, -286f))), Struct_1(512f, 1i, vec2<u32>(31673u, 90573u), -16754i, vec4<f32>(-731f, 998f, 1902f, -1621f)), 1u, 46746u), Struct_4(Struct_2(Struct_1(-515f, 398i, vec2<u32>(4294967295u, 12890u), -1i, vec4<f32>(-644f, 1000f, 598f, -2298f))), Struct_1(1000f, 11300i, vec2<u32>(56410u, 4294967295u), 6245i, vec4<f32>(729f, 1000f, 891f, 244f)), 1u, 35192u));

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(1000f, 2147483647i, vec2<u32>(58763u, 1u), 19154i, vec4<f32>(990f, -276f, -2376f, -855f))), Struct_1(296f, 1i, vec2<u32>(4294967295u, 4294967295u), i32(-2147483648), vec4<f32>(-410f, 1000f, 404f, -1068f)), 1u, 4466u);

var<private> global2: array<i32, 23> = array<i32, 23>(-67622i, -1i, -67363i, -1i, 25062i, 5217i, i32(-2147483648), 0i, -77795i, 1i, 1i, 40594i, 42281i, 17794i, 42299i, 20261i, 1i, 0i, 1i, i32(-2147483648), 1i, -3750i, 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> u32 {
    global0 = array<Struct_4, 29>();
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1449f, 221f)), arg_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)))));
    var_1 = 857f;
    global0 = array<Struct_4, 29>();
    return ~(~reverseBits(select(arg_1.a.c.x, u_input.a.x, false)));
}

fn func_2() -> i32 {
    global2 = array<i32, 23>();
    let var_0 = max(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(8214u, 35145u, u_input.a.x) | u_input.a.zzw, ~vec3<u32>(u_input.c, 54705u, 15717u)) << ((vec3<u32>(u_input.a.x, 18695u, 1u) << (u_input.a.wwy % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(~u_input.a.x, 4294967295u), _wgslsmith_add_u32(1u, global1.b.c.x), _wgslsmith_mult_u32(func_3(-u_input.b, Struct_2(Struct_1(global1.a.a.e.x, -1i, global1.a.a.c, -72574i, vec4<f32>(-381f, global1.b.a, global1.a.a.a, global1.b.e.x))), global0[_wgslsmith_index_u32(~global1.b.c.x, 29u)], -1279f), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.b.c.x, u_input.a.x), u_input.a.x | global1.d))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(global1.a.a.e.ywz));
    let var_2 = global0[_wgslsmith_index_u32(1u >> (abs(select(~1u, ~75323u, false | (1727f < var_1.x))) % 32u), 29u)];
    let var_3 = u_input.b;
    return (_wgslsmith_dot_vec3_i32(u_input.b, firstTrailingBit(vec3<i32>(1i, var_2.a.a.b, var_2.a.a.b) << (vec3<u32>(global1.b.c.x, global1.c, var_2.d) % vec3<u32>(32u)))) ^ _wgslsmith_sub_i32(-(global2[_wgslsmith_index_u32(var_0.x, 23u)] >> (u_input.a.x % 32u)), 0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 47430u, 82007u, var_0.x), vec4<u32>(16139u, 35156u, 1u, 34963u)) % 32u))) ^ global1.a.a.d;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_2(arg_1.a.a);
    var_0 = Struct_2(var_0.a);
    let var_1 = select(~28612u, 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global1.a.a.e.x)))) < 1450f);
    global1 = global0[_wgslsmith_index_u32(arg_1.d, 29u)];
    global2 = array<i32, 23>();
    return -vec4<i32>(-countOneBits(u_input.b.x), -3174i, max(arg_3, reverseBits(var_0.a.b)) << (var_0.a.c.x % 32u), ~func_2());
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = any(vec3<bool>(arg_3, true, arg_3));
    let var_1 = !select(select(select(vec4<bool>(false, arg_3, arg_3, true), select(vec4<bool>(true, false, false, arg_3), vec4<bool>(arg_3, false, false, false), false), true), select(vec4<bool>(arg_3, true, arg_3, true), select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(true, arg_3, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, arg_3)), vec4<bool>(false, arg_3, true, true)), any(!vec3<bool>(true, false, arg_3))), select(!select(vec4<bool>(arg_3, true, false, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, true, arg_3)), vec4<bool>(all(vec2<bool>(false, arg_3)), arg_3, arg_3, arg_3), select(!vec4<bool>(true, false, arg_3, true), select(vec4<bool>(false, arg_3, false, false), vec4<bool>(arg_3, true, true, false), vec4<bool>(arg_3, arg_3, arg_3, true)), arg_3)), !arg_3);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(global1.a.a.e.zz)))), vec2<f32>(_wgslsmith_f_op_f32(-1516f - global1.b.e.x), global1.b.a)))));
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.a.e.x, 1556f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.e.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(327f, _wgslsmith_div_f32(global1.a.a.e.x, _wgslsmith_f_op_f32(round(global1.b.e.x))))) * var_2.x));
    return vec4<bool>(var_1.x, false | var_1.x, true | all(vec2<bool>(true, any(vec3<bool>(false, arg_3, arg_3)))), u_input.b.x != 0i);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(~(~1u), 29u)];
    let var_0 = !func_5(u_input.a.yzw, vec4<u32>(firstTrailingBit(global1.d), global1.a.a.c.x, arg_0.a.c.x, reverseBits(arg_0.a.c.x)), func_4(select(vec3<bool>(arg_3.x, true, arg_3.x), arg_3, arg_3), global0[_wgslsmith_index_u32(61394u, 29u)], vec2<f32>(1824f, -351f), func_2()) ^ abs(-vec4<i32>(global2[_wgslsmith_index_u32(11377u, 23u)], u_input.b.x, arg_0.a.d, -42906i)), all(arg_3));
    var var_1 = vec4<u32>(u_input.c, global1.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.c.x, ~global1.d, 1u, 1u), firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(26423u, u_input.a.x, 59189u, 8311u)))) % 32u), ~(~123613u) & select(arg_0.a.c.x, ~u_input.a.x, var_0.x), ~131963u);
    let var_2 = -arg_0.a.d;
    let var_3 = var_0;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 23>();
    var var_0 = !(!any(vec2<bool>(all(vec4<bool>(false, false, false, false)), false)));
    var var_1 = func_1(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1120f))))), global1.a.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(373f)) - 1000f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a.a), _wgslsmith_f_op_f32(global1.a.a.a - global1.b.e.x)) * global1.b.e.x)), vec3<bool>(!(true && all(vec4<bool>(true, true, false, true))), true, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(634f * global1.a.a.a), -1297f));
    global0 = array<Struct_4, 29>();
    var_1 = global1.a.a;
    var var_3 = any(func_5(u_input.a.zwx, u_input.a, -vec4<i32>(global1.a.a.b, 1i, var_1.d, _wgslsmith_mod_i32(var_1.b, var_1.d)), false).zww);
    let x = u_input.a;
    s_output = StorageBuffer(-global2[_wgslsmith_index_u32(u_input.c ^ (0u & ~var_1.c.x), 23u)], ~func_1(global1.a, _wgslsmith_f_op_f32(-var_1.e.x), -1866f, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)).c.x, global1.a.a.e);
}

