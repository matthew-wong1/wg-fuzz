struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(18610i, 2572u, Struct_1(true, vec3<f32>(-251f, -881f, -1525f), vec2<u32>(11101u, 58752u), -1i, vec4<f32>(-504f, -103f, -1137f, 741f)), vec3<i32>(0i, 0i, -1i), Struct_2(0u)), Struct_3(56371i, 0u, Struct_1(true, vec3<f32>(161f, -389f, -1482f), vec2<u32>(0u, 32869u), 2147483647i, vec4<f32>(786f, -1253f, 311f, -741f)), vec3<i32>(i32(-2147483648), 65769i, 27083i), Struct_2(4294967295u)), Struct_3(2147483647i, 52187u, Struct_1(true, vec3<f32>(1273f, -226f, -1715f), vec2<u32>(24773u, 4294967295u), -43681i, vec4<f32>(1261f, 1000f, 1364f, 490f)), vec3<i32>(-15360i, -27158i, 0i), Struct_2(32232u)), Struct_3(71868i, 26353u, Struct_1(true, vec3<f32>(284f, 155f, -411f), vec2<u32>(0u, 46914u), 1i, vec4<f32>(-582f, 1000f, -1350f, 2935f)), vec3<i32>(11685i, -7623i, -50654i), Struct_2(1u)), Struct_3(2147483647i, 46003u, Struct_1(false, vec3<f32>(-1101f, 358f, -1354f), vec2<u32>(64901u, 3936u), i32(-2147483648), vec4<f32>(743f, -615f, -2411f, 1074f)), vec3<i32>(-1346i, 0i, 10148i), Struct_2(4294967295u)), Struct_3(-51831i, 52001u, Struct_1(false, vec3<f32>(-1182f, 2062f, -420f), vec2<u32>(4294967295u, 4963u), -27986i, vec4<f32>(-443f, -2279f, -260f, -339f)), vec3<i32>(-17349i, -9712i, 1i), Struct_2(0u)), Struct_3(0i, 31827u, Struct_1(true, vec3<f32>(1000f, -477f, -245f), vec2<u32>(32040u, 21152u), 38107i, vec4<f32>(-744f, 1000f, 673f, 1669f)), vec3<i32>(-1i, 12574i, 16514i), Struct_2(0u)), Struct_3(-65035i, 1u, Struct_1(false, vec3<f32>(-153f, -113f, -504f), vec2<u32>(1u, 0u), 2147483647i, vec4<f32>(267f, 245f, 377f, 445f)), vec3<i32>(33016i, 59771i, 10624i), Struct_2(1u)), Struct_3(2147483647i, 1u, Struct_1(true, vec3<f32>(298f, 726f, -167f), vec2<u32>(0u, 1u), -7993i, vec4<f32>(-2193f, 147f, -120f, 704f)), vec3<i32>(-21200i, 1i, 27667i), Struct_2(0u)), Struct_3(1i, 58261u, Struct_1(true, vec3<f32>(331f, -614f, -198f), vec2<u32>(25319u, 45784u), 0i, vec4<f32>(1034f, -1000f, -531f, 815f)), vec3<i32>(1i, -25231i, 53858i), Struct_2(120506u)), Struct_3(2147483647i, 0u, Struct_1(false, vec3<f32>(-1000f, 169f, 194f), vec2<u32>(4294967295u, 23696u), 2147483647i, vec4<f32>(-525f, -537f, -479f, -1487f)), vec3<i32>(50026i, -43488i, 30464i), Struct_2(1u)), Struct_3(-16304i, 0u, Struct_1(true, vec3<f32>(3011f, 1000f, -123f), vec2<u32>(1u, 0u), 2147483647i, vec4<f32>(387f, 1657f, -162f, -775f)), vec3<i32>(-27706i, -1i, i32(-2147483648)), Struct_2(1u)), Struct_3(2147483647i, 1u, Struct_1(false, vec3<f32>(-529f, -2139f, 1489f), vec2<u32>(0u, 1u), 1i, vec4<f32>(736f, 499f, -438f, 308f)), vec3<i32>(i32(-2147483648), 1i, -30048i), Struct_2(1u)), Struct_3(30205i, 18885u, Struct_1(false, vec3<f32>(475f, 303f, -1032f), vec2<u32>(20260u, 1u), 13679i, vec4<f32>(-419f, 484f, -2530f, 1189f)), vec3<i32>(2147483647i, i32(-2147483648), -1i), Struct_2(26374u)), Struct_3(57764i, 74885u, Struct_1(true, vec3<f32>(649f, -185f, 386f), vec2<u32>(0u, 23845u), 18081i, vec4<f32>(-678f, 553f, -1000f, 1838f)), vec3<i32>(31871i, 5759i, 31490i), Struct_2(50614u)), Struct_3(-57482i, 4294967295u, Struct_1(false, vec3<f32>(760f, 639f, -1416f), vec2<u32>(0u, 0u), i32(-2147483648), vec4<f32>(-1444f, 225f, 232f, 385f)), vec3<i32>(i32(-2147483648), -20810i, 17193i), Struct_2(57605u)), Struct_3(26009i, 38743u, Struct_1(false, vec3<f32>(-198f, -1215f, 1496f), vec2<u32>(22245u, 1u), 1i, vec4<f32>(-1019f, 1086f, 129f, 1658f)), vec3<i32>(-1i, -1i, -44849i), Struct_2(1u)), Struct_3(0i, 1u, Struct_1(true, vec3<f32>(-1000f, 360f, -1000f), vec2<u32>(1u, 8164u), 0i, vec4<f32>(2621f, -749f, -1000f, -1000f)), vec3<i32>(-30409i, -23274i, -1160i), Struct_2(4294967295u)), Struct_3(0i, 1u, Struct_1(false, vec3<f32>(654f, -641f, 338f), vec2<u32>(4294967295u, 0u), 0i, vec4<f32>(-208f, 1000f, 1411f, 432f)), vec3<i32>(23524i, i32(-2147483648), 37170i), Struct_2(52088u)), Struct_3(-1i, 2016u, Struct_1(true, vec3<f32>(-279f, 348f, 1625f), vec2<u32>(0u, 0u), 10505i, vec4<f32>(-935f, -445f, 353f, -941f)), vec3<i32>(51530i, 0i, 5542i), Struct_2(32419u)), Struct_3(2147483647i, 67379u, Struct_1(false, vec3<f32>(-1244f, -1535f, 1361f), vec2<u32>(101521u, 0u), -2424i, vec4<f32>(1000f, -1210f, 2001f, 1000f)), vec3<i32>(54659i, i32(-2147483648), 2147483647i), Struct_2(28663u)), Struct_3(1i, 38464u, Struct_1(true, vec3<f32>(-1242f, -1148f, 1307f), vec2<u32>(1u, 4294967295u), -10028i, vec4<f32>(-1770f, -457f, 408f, -2665f)), vec3<i32>(3119i, -39074i, 2147483647i), Struct_2(4294967295u)), Struct_3(-7804i, 60079u, Struct_1(false, vec3<f32>(178f, 1609f, 699f), vec2<u32>(68759u, 0u), -22523i, vec4<f32>(403f, 1802f, 1531f, -173f)), vec3<i32>(77236i, 49294i, 2147483647i), Struct_2(4294967295u)), Struct_3(-1i, 0u, Struct_1(false, vec3<f32>(353f, -253f, -1975f), vec2<u32>(85469u, 4294967295u), -27530i, vec4<f32>(-436f, -1937f, 1227f, 1053f)), vec3<i32>(0i, -1602i, 0i), Struct_2(47959u)), Struct_3(26826i, 1u, Struct_1(true, vec3<f32>(542f, -1360f, 2272f), vec2<u32>(14861u, 16244u), -17191i, vec4<f32>(799f, 626f, -1024f, 349f)), vec3<i32>(10218i, -68518i, 3977i), Struct_2(0u)), Struct_3(1i, 4294967295u, Struct_1(false, vec3<f32>(2912f, -141f, 839f), vec2<u32>(10692u, 15240u), 45413i, vec4<f32>(-501f, 1226f, -919f, -558f)), vec3<i32>(-5379i, 1i, 0i), Struct_2(24716u)), Struct_3(0i, 66480u, Struct_1(false, vec3<f32>(-1000f, 801f, 1874f), vec2<u32>(6814u, 4294967295u), 7635i, vec4<f32>(1912f, 243f, -384f, 1688f)), vec3<i32>(2147483647i, -1i, -36834i), Struct_2(48412u)));

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(1026f, -1348f, -3599f), vec2<u32>(19969u, 34921u), 2147483647i, vec4<f32>(167f, 307f, 147f, 816f));

var<private> global2: vec3<i32> = vec3<i32>(1i, 4509i, 2147483647i);

var<private> global3: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    global1 = arg_1;
    var var_0 = ~_wgslsmith_mult_u32(arg_1.c.x, ~global1.c.x);
    global2 = reverseBits(vec3<i32>(global2.x, _wgslsmith_clamp_i32(~10022i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-3802i, 15281i, u_input.c, -47763i), vec4<i32>(27961i, arg_1.d, global2.x, global1.d)), max(-global1.d, ~global1.d)), u_input.c >> ((_wgslsmith_div_u32(4294967295u, 4294967295u) ^ ~u_input.a.x) % 32u)));
    global3 = !arg_0;
    let var_1 = select(select(vec2<bool>(false | (global1.a & arg_0), false), !(!select(vec2<bool>(false, global1.a), vec2<bool>(true, arg_1.a), vec2<bool>(false, global1.a))), any(vec3<bool>(all(vec3<bool>(arg_0, global1.a, arg_0)), global1.a, !arg_1.a))), vec2<bool>(all(vec3<bool>(!global1.a, true, global1.a)), all(select(select(vec2<bool>(arg_1.a, global1.a), vec2<bool>(global1.a, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(global1.a, false), arg_0 && arg_0))), !(!(!(!vec2<bool>(global1.a, true)))));
    return ~1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_1 {
    return Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.b.x, global1.b.x))), 502f, _wgslsmith_f_op_f32(f32(-1f) * -1070f)) * global1.e.zzx), vec2<u32>(~(~func_3(global1.a, Struct_1(global1.a, vec3<f32>(global1.b.x, -1000f, -734f), vec2<u32>(1u, arg_1.x), -47376i, vec4<f32>(512f, -815f, global1.e.x, global1.e.x)))), _wgslsmith_dot_vec4_u32(arg_1, min(~vec4<u32>(0u, global1.c.x, 4294967295u, 0u), u_input.a))), -2147483647i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1085f, -165f, global1.b.x, global1.b.x)))))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> i32 {
    global1 = func_2(-min(~vec4<i32>(-1i, 2147483647i, 23689i, -1i), select(vec4<i32>(global1.d, global2.x, -2147483647i, -11539i), vec4<i32>(global2.x, 891i, 2147483647i, global1.d), vec4<bool>(arg_2.x, false, global1.a, arg_1.x))) & ~(-(vec4<i32>(global1.d, 10989i, 0i, 2147483647i) << (vec4<u32>(global1.c.x, 25170u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.a.x, 1u), ~vec3<u32>(global1.c.x, global1.c.x, 4294967295u), arg_2.x && true), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, 53266u, 65320u) >> (u_input.a.zwz % vec3<u32>(32u)), u_input.a.xyw)), _wgslsmith_sub_u32(~(~4294967295u), ~(56936u & global1.c.x)), 1u << (u_input.a.x % 32u), u_input.a.x));
    var var_0 = Struct_4(arg_0, Struct_2(u_input.a.x), Struct_1(select(true, all(vec3<bool>(true, false, arg_1.x)), !(!arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1746f, 946f, -1143f))), ~select(vec2<u32>(0u, u_input.a.x) << (global1.c % vec2<u32>(32u)), ~vec2<u32>(0u, 5898u), select(arg_2.zz, vec2<bool>(global1.a, arg_1.x), arg_1.x)), -38507i, func_2(vec4<i32>(_wgslsmith_div_i32(-7399i, -31223i), -global1.d, 2147483647i, max(0i, global1.d)), reverseBits(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(global1.c.x, u_input.a.x, u_input.a.x, u_input.a.x)))).e), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + global1.b) - global1.e.yyy), vec3<f32>(-517f, _wgslsmith_f_op_f32(floor(-192f)), 856f), !all(vec3<bool>(false, global1.a, true)))), vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, 7926u), _wgslsmith_mod_u32(20659u, _wgslsmith_sub_u32(u_input.a.x, 4294967295u))), (-8347i & countOneBits(global2.x)) ^ -2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2169f, global1.b.x, _wgslsmith_f_op_f32(floor(136f)), arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.b.x, arg_0, -842f)), _wgslsmith_f_op_vec4_f32(ceil(global1.e))), select(select(vec4<bool>(false, true, arg_1.x, global1.a), vec4<bool>(true, arg_2.x, false, global1.a), arg_2.x), !vec4<bool>(arg_1.x, global1.a, true, arg_1.x), !arg_2.x)))), u_input.a.ywx ^ abs(vec3<u32>(62228u, 14641u, global1.c.x) >> (_wgslsmith_mod_vec3_u32(u_input.a.xzz, vec3<u32>(0u, 0u, 4294967295u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)));
    var var_2 = arg_2.xy;
    var var_3 = max(~reverseBits(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a, 47466u, u_input.a.x, 1u), vec4<u32>(31674u, u_input.a.x, u_input.a.x, 4294967295u)))), vec4<u32>(4294967295u, global1.c.x, ~(4294967295u >> (u_input.a.x % 32u)) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.c.x, 4294967295u, u_input.a.x, 0u), u_input.a), _wgslsmith_mod_u32(~func_3(global1.a, var_0.c), countOneBits(~u_input.a.x))));
    return 34027i;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    var var_0 = global1.a;
    var var_1 = u_input.a.x | 45980u;
    var_0 = true;
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~u_input.b, -2147483647i, abs(u_input.c)), u_input.b), _wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(u_input.c), abs(arg_0.d)), -1i)), reverseBits(vec3<i32>(~arg_0.d, func_2(-vec4<i32>(-2147483647i, 1i, u_input.b, global1.d), ~u_input.a).d, abs(1i))));
    global2 = vec3<i32>(arg_0.d, arg_0.d, reverseBits(9309i));
    return Struct_2(~15890u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(458f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f + global1.b.x) - _wgslsmith_f_op_f32(-global1.e.x)) * -307f));
    var var_1 = Struct_4(global1.b.x, func_4(Struct_1(all(!vec4<bool>(global1.a, false, true, false)), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(2564f, global1.e.x, 273f) + global1.e.wzy)), ~firstTrailingBit(u_input.a.xy), _wgslsmith_mult_i32(func_1(-263f, vec2<bool>(true, global1.a), vec3<bool>(global1.a, global1.a, true)), abs(global2.x)), global1.e), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.wwy), firstLeadingBit(vec3<u32>(u_input.a.x, 29404u, global1.c.x))) & u_input.a.zwy, Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e.xzx)), global1.c, global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.b.x, 101f, -534f) + global1.e))), Struct_4(2068f, Struct_2(28682u), func_2(vec4<i32>(1i, -2147483647i, 64645i, u_input.c), u_input.a), Struct_1(true, _wgslsmith_f_op_vec3_f32(floor(global1.b)), vec2<u32>(4294967295u, 16413u), ~global2.x, _wgslsmith_f_op_vec4_f32(global1.e - global1.e)), ~select(u_input.a.zzx, u_input.a.zyx, global1.a))), func_2(~_wgslsmith_mod_vec4_i32(-vec4<i32>(38314i, u_input.b, global1.d, global1.d), vec4<i32>(41161i, 36494i, 19483i, -36644i)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.c.x, global1.c.x, 29524u, 0u)), abs(u_input.a)), select(u_input.a.x, 63948u, global1.a), u_input.a.x)), func_2(-(~vec4<i32>(-39226i, u_input.b, -29389i, -31089i)), vec4<u32>(min(~35931u, reverseBits(19026u)), 36831u, u_input.a.x, ~44440u)), ~(~_wgslsmith_clamp_vec3_u32(u_input.a.wzx ^ vec3<u32>(u_input.a.x, u_input.a.x, 5108u), vec3<u32>(u_input.a.x, u_input.a.x, 6372u), vec3<u32>(21925u, 7301u, 104296u))));
    var var_2 = vec3<bool>(true, global1.a, !(func_2(vec4<i32>(u_input.b, var_1.c.d, 21194i, 1i), u_input.a).a && !var_1.c.a) && all(vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstLeadingBit(vec3<u32>(global1.c.x, 0u, 4294967295u))));
}

