struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, 42717u, Struct_2(Struct_1(vec2<f32>(-1402f, -1051f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<f32>(1054f, -891f), vec2<i32>(-1i, 0i)), vec2<u32>(17750u, 50737u), vec4<f32>(1327f, -418f, 517f, 580f), Struct_1(vec2<f32>(-385f, -1502f), vec2<i32>(-50246i, 0i))), vec4<bool>(true, true, true, true));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<f32>(-435f, 565f), vec2<i32>(1i, 1i)), Struct_1(vec2<f32>(-1000f, 1748f), vec2<i32>(7048i, -1i)), vec2<u32>(4294967295u, 18476u), vec4<f32>(1437f, -1000f, 1000f, -2090f), Struct_1(vec2<f32>(-939f, 1500f), vec2<i32>(23847i, -1i))), Struct_2(Struct_1(vec2<f32>(-523f, 1000f), vec2<i32>(-1i, 44832i)), Struct_1(vec2<f32>(810f, -621f), vec2<i32>(736i, 25519i)), vec2<u32>(1u, 1u), vec4<f32>(-961f, 1000f, -235f, 2751f), Struct_1(vec2<f32>(-523f, -1340f), vec2<i32>(-1i, 0i))), Struct_2(Struct_1(vec2<f32>(1731f, 818f), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<f32>(-1346f, 950f), vec2<i32>(2147483647i, 0i)), vec2<u32>(1u, 1u), vec4<f32>(-2653f, -1494f, -397f, 964f), Struct_1(vec2<f32>(-1233f, 420f), vec2<i32>(2147483647i, -424i))), Struct_2(Struct_1(vec2<f32>(-322f, -105f), vec2<i32>(-13914i, -72619i)), Struct_1(vec2<f32>(683f, 173f), vec2<i32>(0i, -1i)), vec2<u32>(1u, 1505u), vec4<f32>(189f, 102f, 1000f, -964f), Struct_1(vec2<f32>(393f, -589f), vec2<i32>(-47487i, 2147483647i))), Struct_2(Struct_1(vec2<f32>(-929f, -1546f), vec2<i32>(5009i, -1i)), Struct_1(vec2<f32>(196f, -1167f), vec2<i32>(1i, 35413i)), vec2<u32>(0u, 4294967295u), vec4<f32>(-1000f, -1080f, 1253f, 127f), Struct_1(vec2<f32>(-670f, -1146f), vec2<i32>(i32(-2147483648), 0i))), Struct_2(Struct_1(vec2<f32>(-1232f, -1230f), vec2<i32>(18568i, 59986i)), Struct_1(vec2<f32>(1486f, 1049f), vec2<i32>(-6368i, -1i)), vec2<u32>(4294967295u, 1u), vec4<f32>(-2017f, 1073f, -1245f, 461f), Struct_1(vec2<f32>(-674f, 105f), vec2<i32>(0i, -1i))), Struct_2(Struct_1(vec2<f32>(1000f, -1312f), vec2<i32>(30729i, 46755i)), Struct_1(vec2<f32>(-846f, -277f), vec2<i32>(i32(-2147483648), -69630i)), vec2<u32>(40092u, 5515u), vec4<f32>(-498f, 158f, 1000f, 637f), Struct_1(vec2<f32>(-565f, -665f), vec2<i32>(1i, -1i))), Struct_2(Struct_1(vec2<f32>(2261f, 214f), vec2<i32>(16608i, 2147483647i)), Struct_1(vec2<f32>(544f, 972f), vec2<i32>(-1i, 61618i)), vec2<u32>(14747u, 112543u), vec4<f32>(-1312f, -619f, 1613f, 540f), Struct_1(vec2<f32>(-734f, -1681f), vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(vec2<f32>(-867f, -338f), vec2<i32>(i32(-2147483648), -21061i)), Struct_1(vec2<f32>(-469f, 257f), vec2<i32>(i32(-2147483648), -47756i)), vec2<u32>(7466u, 37526u), vec4<f32>(-1401f, -339f, 1093f, 975f), Struct_1(vec2<f32>(635f, -975f), vec2<i32>(-14529i, 0i))), Struct_2(Struct_1(vec2<f32>(1700f, 315f), vec2<i32>(-1i, -8777i)), Struct_1(vec2<f32>(-2020f, 233f), vec2<i32>(47773i, -1i)), vec2<u32>(0u, 1u), vec4<f32>(-983f, -442f, 2410f, 683f), Struct_1(vec2<f32>(-817f, 642f), vec2<i32>(1i, 0i))), Struct_2(Struct_1(vec2<f32>(2088f, -1222f), vec2<i32>(14327i, 22068i)), Struct_1(vec2<f32>(-1000f, -209f), vec2<i32>(i32(-2147483648), -1i)), vec2<u32>(15348u, 13304u), vec4<f32>(1230f, 509f, 844f, 473f), Struct_1(vec2<f32>(-1000f, -1272f), vec2<i32>(-1i, -16337i))), Struct_2(Struct_1(vec2<f32>(-1000f, 878f), vec2<i32>(-158i, -1i)), Struct_1(vec2<f32>(835f, 1611f), vec2<i32>(15085i, -11465i)), vec2<u32>(10189u, 1u), vec4<f32>(1000f, 1455f, -1648f, 1655f), Struct_1(vec2<f32>(664f, 1855f), vec2<i32>(-3748i, -34881i))), Struct_2(Struct_1(vec2<f32>(1000f, -1000f), vec2<i32>(-7562i, 45162i)), Struct_1(vec2<f32>(-582f, -1247f), vec2<i32>(-10251i, -38351i)), vec2<u32>(4294967295u, 1u), vec4<f32>(-1000f, 732f, -119f, 378f), Struct_1(vec2<f32>(-1045f, -1558f), vec2<i32>(-19594i, 2147483647i))), Struct_2(Struct_1(vec2<f32>(1016f, -1285f), vec2<i32>(0i, 2147483647i)), Struct_1(vec2<f32>(-180f, -484f), vec2<i32>(-1i, 2147483647i)), vec2<u32>(29183u, 1u), vec4<f32>(-1259f, -2069f, 948f, -1672f), Struct_1(vec2<f32>(-795f, 751f), vec2<i32>(1i, 100540i))), Struct_2(Struct_1(vec2<f32>(-392f, 141f), vec2<i32>(-41243i, 1i)), Struct_1(vec2<f32>(-1498f, 177f), vec2<i32>(-717i, 0i)), vec2<u32>(4294967295u, 124572u), vec4<f32>(1723f, 1856f, 533f, -179f), Struct_1(vec2<f32>(-243f, -916f), vec2<i32>(1i, -27741i))), Struct_2(Struct_1(vec2<f32>(-226f, 412f), vec2<i32>(-4103i, -32731i)), Struct_1(vec2<f32>(-612f, 1389f), vec2<i32>(-21020i, -1i)), vec2<u32>(3083u, 0u), vec4<f32>(1000f, 558f, -420f, -1000f), Struct_1(vec2<f32>(-208f, -703f), vec2<i32>(0i, -1i))), Struct_2(Struct_1(vec2<f32>(596f, 1015f), vec2<i32>(1i, 16213i)), Struct_1(vec2<f32>(-164f, 1039f), vec2<i32>(-1i, 2147483647i)), vec2<u32>(39530u, 0u), vec4<f32>(-1000f, 1000f, -154f, -112f), Struct_1(vec2<f32>(101f, 548f), vec2<i32>(-26143i, 0i))), Struct_2(Struct_1(vec2<f32>(-622f, 1013f), vec2<i32>(-6970i, 11709i)), Struct_1(vec2<f32>(-413f, 1098f), vec2<i32>(-76032i, i32(-2147483648))), vec2<u32>(0u, 4294967295u), vec4<f32>(-889f, -348f, 289f, -1582f), Struct_1(vec2<f32>(1000f, -2251f), vec2<i32>(-37862i, -37425i))), Struct_2(Struct_1(vec2<f32>(607f, 679f), vec2<i32>(28443i, 2147483647i)), Struct_1(vec2<f32>(-1108f, -1246f), vec2<i32>(2147483647i, 0i)), vec2<u32>(4294967295u, 0u), vec4<f32>(-623f, -289f, 449f, 621f), Struct_1(vec2<f32>(1712f, -464f), vec2<i32>(-9187i, 0i))), Struct_2(Struct_1(vec2<f32>(281f, 893f), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<f32>(-818f, 818f), vec2<i32>(28091i, 0i)), vec2<u32>(63327u, 1u), vec4<f32>(494f, 687f, -2135f, -257f), Struct_1(vec2<f32>(1181f, -825f), vec2<i32>(1i, 1i))), Struct_2(Struct_1(vec2<f32>(571f, 1000f), vec2<i32>(1i, -5560i)), Struct_1(vec2<f32>(253f, -1494f), vec2<i32>(41192i, -1i)), vec2<u32>(41621u, 10657u), vec4<f32>(340f, -575f, -2096f, 1692f), Struct_1(vec2<f32>(188f, -3104f), vec2<i32>(0i, 27929i))), Struct_2(Struct_1(vec2<f32>(-2297f, -2377f), vec2<i32>(-1i, 64266i)), Struct_1(vec2<f32>(391f, -678f), vec2<i32>(-24093i, 26586i)), vec2<u32>(27342u, 57747u), vec4<f32>(755f, -1158f, 850f, -620f), Struct_1(vec2<f32>(-886f, -745f), vec2<i32>(-47185i, 83539i))), Struct_2(Struct_1(vec2<f32>(-390f, -1456f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<f32>(-641f, -1468f), vec2<i32>(0i, 5485i)), vec2<u32>(17235u, 62076u), vec4<f32>(872f, -1119f, 1000f, -675f), Struct_1(vec2<f32>(2052f, -802f), vec2<i32>(-1i, -52951i))), Struct_2(Struct_1(vec2<f32>(-2219f, 1643f), vec2<i32>(1i, 12136i)), Struct_1(vec2<f32>(-879f, -534f), vec2<i32>(29705i, 0i)), vec2<u32>(4294967295u, 5139u), vec4<f32>(-1441f, -1000f, 855f, 942f), Struct_1(vec2<f32>(1750f, -1378f), vec2<i32>(-41384i, -15559i))), Struct_2(Struct_1(vec2<f32>(1060f, -120f), vec2<i32>(2147483647i, 19931i)), Struct_1(vec2<f32>(-1041f, -367f), vec2<i32>(1i, 7462i)), vec2<u32>(28239u, 1u), vec4<f32>(-553f, -592f, -796f, -370f), Struct_1(vec2<f32>(-531f, 685f), vec2<i32>(-19106i, 8288i))));

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-1i, -6395i, -72103i, 1i), vec4<i32>(-49534i, 2147483647i, 0i, 2147483647i), vec4<i32>(34888i, -26641i, 0i, 0i), vec4<i32>(-54341i, 44692i, 24849i, 1i), vec4<i32>(-10973i, 1i, 1i, -1i), vec4<i32>(0i, 0i, -1i, -54397i), vec4<i32>(53741i, -8815i, 2147483647i, 0i), vec4<i32>(36702i, 247i, 28052i, -28363i), vec4<i32>(0i, 16462i, -34049i, 0i));

var<private> global4: array<vec3<u32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    global2 = array<Struct_1, 8>();
    return firstLeadingBit(_wgslsmith_sub_i32(-44045i, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -global0.c.b.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global0.c.b.b.x, global0.c.a.b.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = -max(vec3<i32>(-2147483647i << (reverseBits(arg_1.c.c.x) % 32u), _wgslsmith_mult_i32(abs(arg_0.b.x), firstLeadingBit(arg_1.c.b.b.x)), -arg_1.c.a.b.x), ~(-vec3<i32>(arg_0.b.x, global0.c.a.b.x, 8014i) & -vec3<i32>(global0.c.b.b.x, -44135i, global0.c.e.b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 528f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global0.c.a.a.x))))) * arg_1.c.b.a)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 25u)];
    var var_3 = select(select(vec3<bool>(global0.a, !(arg_1.a || false), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(1i, arg_1.c.b.b.x, var_2.b.b.x)) > _wgslsmith_clamp_i32(34639i, -1i, -19849i)), select(global0.d.yzy, vec3<bool>(true, all(global0.d), all(vec4<bool>(true, true, true, arg_1.a))), true), global0.d.zyw), global0.d.xzz, vec3<bool>(~(~arg_1.c.c.x) >= 68097u, true & arg_1.a, arg_1.a));
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(2147483647i, arg_1.c.a.b.x), var_2.a.b.x, arg_0.b.x, firstTrailingBit(2147483647i));
    return arg_1;
}

fn func_1() -> u32 {
    global0 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.a.x, global0.c.e.a.x)))))), vec2<i32>(global0.c.a.b.x | func_2(), -1i)), Struct_3(global0.d.x, u_input.a, Struct_2(Struct_1(global0.c.a.a, -vec2<i32>(-26829i, -1i)), Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.c.d.yz, vec2<f32>(141f, global0.c.b.a.x), vec2<bool>(global0.a, global0.d.x))), global0.c.b.b), ~_wgslsmith_div_vec2_u32(global0.c.c, vec2<u32>(4294967295u, global0.c.c.x)), _wgslsmith_f_op_vec4_f32(select(global0.c.d, _wgslsmith_f_op_vec4_f32(-global0.c.d), global0.c.a.b.x > global0.c.a.b.x)), global0.c.e), vec4<bool>(true, false, true, u_input.a == _wgslsmith_mult_u32(51812u, global0.c.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -243f));
    let var_0 = 12302u > u_input.a;
    global4 = array<vec3<u32>, 10>();
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.c.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.d) * _wgslsmith_f_op_vec4_f32(min(global0.c.d, global0.c.d))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.d.x, 367f, arg_1.a.x, 1369f), arg_2.c.d, arg_2.a)))))))));
    var var_1 = Struct_3(false, 88217u, Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, -426f)), arg_1.a), vec2<i32>(firstTrailingBit(2147483647i), 1i)), Struct_1(var_0.yy, vec2<i32>(arg_1.b.x, -2147483647i)), arg_3, global0.c.d, Struct_1(vec2<f32>(269f, _wgslsmith_f_op_f32(select(arg_1.a.x, global0.c.a.a.x, global0.a))), min(vec2<i32>(arg_2.c.b.b.x, -54990i), vec2<i32>(-1i, global0.c.a.b.x)))), !select(func_3(arg_2.c.a, func_3(Struct_1(vec2<f32>(var_0.x, -959f), arg_1.b), arg_2, arg_2.c.d.x), -2061f).d, !select(arg_2.d, vec4<bool>(global0.d.x, true, true, false), global0.d), vec4<bool>(!global0.d.x, !arg_2.a, global0.d.x, false)));
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.ww)), vec2<i32>(global0.c.b.b.x, func_2())), func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.x, 0u, arg_2.b) >> (vec4<u32>(1u, 1u, 126888u, arg_0) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 15136u, 1u, 127431u)), arg_0, 70398u), 8u)], Struct_3(true, ~(~global0.b), func_3(Struct_1(vec2<f32>(var_0.x, -407f), vec2<i32>(1i, arg_2.c.b.b.x)), func_3(Struct_1(var_1.c.d.xx, arg_1.b), arg_2, -1218f), _wgslsmith_div_f32(184f, 321f)).c, vec4<bool>(true, global0.d.x, false, !var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * -1319f)), _wgslsmith_f_op_f32(-arg_2.c.e.a.x)).c.e;
    var var_3 = var_0.xzz;
    let var_4 = arg_2.a | var_1.d.x;
    return func_3(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zx, var_3.zx, vec2<bool>(var_1.d.x, false))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, global0.c.e.a.x), vec2<f32>(arg_1.a.x, var_2.a.x), true))), vec2<i32>(~var_1.c.b.b.x, -arg_1.b.x)), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.a.x)))))).c.a, func_3(Struct_1(vec2<f32>(arg_1.a.x, 205f), vec2<i32>(38347i, var_2.b.x) | (vec2<i32>(45111i, 10892i) << (vec2<u32>(global0.c.c.x, 10235u) % vec2<u32>(32u)))), arg_2, 772f), 1000f).c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 10>();
    global3 = array<vec4<i32>, 9>();
    global4 = array<vec3<u32>, 10>();
    var var_0 = Struct_3(true, ~countOneBits(_wgslsmith_mult_u32(0u, 0u & u_input.a)), func_4(~func_1(), Struct_1(vec2<f32>(-697f, _wgslsmith_f_op_f32(736f + global0.c.a.a.x)), vec2<i32>(-2147483647i | global0.c.a.b.x, ~88919i)), Struct_3(!global0.a, global0.c.c.x, Struct_2(Struct_1(global0.c.e.a, global0.c.b.b), func_3(Struct_1(global0.c.d.xy, global0.c.b.b), Struct_3(false, u_input.a, global0.c, vec4<bool>(global0.d.x, false, true, false)), global0.c.e.a.x).c.e, ~vec2<u32>(u_input.a, global0.c.c.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.a.a.x, 516f, global0.c.d.x, -395f))), func_3(Struct_1(vec2<f32>(global0.c.a.a.x, -1620f), vec2<i32>(1i, 0i)), Struct_3(global0.d.x, 4294967295u, global1[_wgslsmith_index_u32(global0.c.c.x, 25u)], global0.d), global0.c.b.a.x).c.e), global0.d), vec2<u32>(1u, ~global0.b | firstTrailingBit(57076u))), select(vec4<bool>(true, global0.d.x | !global0.d.x, global0.d.x | true, false), vec4<bool>(any(!vec4<bool>(global0.d.x, global0.a, global0.d.x, global0.a)), any(vec3<bool>(true, true, global0.a)), !(!global0.d.x), !(!global0.a)), global0.d));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.d));
    var var_2 = _wgslsmith_f_op_f32(ceil(-910f));
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(81554u, _wgslsmith_mult_u32(1u, abs(func_3(global2[_wgslsmith_index_u32(global0.c.c.x, 8u)], Struct_3(var_0.a, var_0.b, Struct_2(Struct_1(var_0.c.a.a, var_0.c.a.b), global0.c.b, vec2<u32>(var_0.c.c.x, u_input.a), vec4<f32>(1759f, var_1.x, -1000f, 314f), global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global0.d.x, var_0.d.x, true, global0.d.x)), 718f).b))), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.c.e.b.x, max(-1i | min(30032i << (u_input.a % 32u), i32(-1i) * -2147483647i), max(firstTrailingBit(~0i), (var_0.c.b.b.x & var_0.c.e.b.x) & _wgslsmith_mult_i32(-35788i, 0i))));
}

