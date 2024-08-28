struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_1(77137i), vec3<i32>(3366i, -1i, -1i), Struct_3(0u, -167f, vec4<f32>(-700f, 349f, 235f, -1405f), 50732i, false), 2147483647i, -26858i), Struct_4(Struct_1(25312i), vec3<i32>(-39979i, -12850i, 1i), Struct_3(63841u, 130f, vec4<f32>(1505f, -325f, -929f, -1071f), -9518i, true), 1i, -4369i), Struct_4(Struct_1(1i), vec3<i32>(2147483647i, 16528i, 2147483647i), Struct_3(54425u, -210f, vec4<f32>(-1499f, -502f, -819f, -765f), 1883i, false), 9794i, 27427i), Struct_4(Struct_1(-5215i), vec3<i32>(-7045i, 3621i, i32(-2147483648)), Struct_3(41250u, -562f, vec4<f32>(1885f, 1023f, 711f, 1282f), 5108i, false), 19571i, 0i), Struct_4(Struct_1(i32(-2147483648)), vec3<i32>(45920i, i32(-2147483648), -1i), Struct_3(1u, 828f, vec4<f32>(-1000f, 421f, 593f, -1000f), 32857i, true), 2147483647i, -1i), Struct_4(Struct_1(1i), vec3<i32>(2147483647i, 17264i, 2147483647i), Struct_3(5817u, 1221f, vec4<f32>(1316f, -305f, 145f, 2773f), -1i, true), i32(-2147483648), i32(-2147483648)), Struct_4(Struct_1(-1i), vec3<i32>(-24351i, 19312i, -26604i), Struct_3(0u, -1517f, vec4<f32>(324f, -500f, -823f, 1352f), 0i, true), i32(-2147483648), -35591i), Struct_4(Struct_1(-30891i), vec3<i32>(5887i, 16705i, -45186i), Struct_3(22565u, 110f, vec4<f32>(330f, -735f, -1000f, 1165f), 2147483647i, false), i32(-2147483648), 0i), Struct_4(Struct_1(-77i), vec3<i32>(12711i, 1i, 1i), Struct_3(0u, -1000f, vec4<f32>(-336f, 1063f, 333f, 1020f), 1i, true), i32(-2147483648), 0i), Struct_4(Struct_1(-37685i), vec3<i32>(2147483647i, 2275i, 0i), Struct_3(1u, -1190f, vec4<f32>(570f, 1413f, 2147f, 704f), 2147483647i, true), -1i, 1i), Struct_4(Struct_1(-24198i), vec3<i32>(-1i, 7287i, i32(-2147483648)), Struct_3(0u, 1035f, vec4<f32>(1946f, -695f, -1635f, -1126f), 2147483647i, false), 51709i, -1i), Struct_4(Struct_1(1i), vec3<i32>(0i, 24793i, 1i), Struct_3(4294967295u, -597f, vec4<f32>(-196f, 366f, 1270f, 1651f), 1i, false), 1i, 11264i), Struct_4(Struct_1(-42621i), vec3<i32>(37207i, 1i, -34321i), Struct_3(35916u, -208f, vec4<f32>(1236f, 1462f, 104f, 1270f), 14500i, false), 31295i, 3426i), Struct_4(Struct_1(32882i), vec3<i32>(i32(-2147483648), 36635i, 2147483647i), Struct_3(4294967295u, -591f, vec4<f32>(-213f, -243f, 1085f, -272f), -1i, true), -23956i, 16540i), Struct_4(Struct_1(0i), vec3<i32>(38525i, 2147483647i, i32(-2147483648)), Struct_3(4294967295u, -2622f, vec4<f32>(106f, 1380f, 850f, -692f), 13467i, true), i32(-2147483648), 13684i), Struct_4(Struct_1(7691i), vec3<i32>(35579i, -1i, -6373i), Struct_3(1u, -666f, vec4<f32>(533f, 552f, -584f, -359f), -1i, true), 19869i, 2147483647i), Struct_4(Struct_1(2147483647i), vec3<i32>(4049i, 2147483647i, i32(-2147483648)), Struct_3(0u, -775f, vec4<f32>(1499f, 1454f, 263f, -873f), 2147483647i, false), 2147483647i, 2147483647i), Struct_4(Struct_1(20146i), vec3<i32>(-32230i, 1i, -33873i), Struct_3(103250u, -217f, vec4<f32>(-913f, -1939f, 419f, -486f), 1i, false), 2147483647i, 2147483647i), Struct_4(Struct_1(-35347i), vec3<i32>(-21551i, -1i, -27791i), Struct_3(1u, -805f, vec4<f32>(1332f, -361f, -144f, -952f), -1i, false), i32(-2147483648), -17702i), Struct_4(Struct_1(41623i), vec3<i32>(36972i, -18547i, -1i), Struct_3(8183u, 733f, vec4<f32>(-1037f, -1700f, 1053f, -655f), 10171i, false), 0i, -8734i), Struct_4(Struct_1(1i), vec3<i32>(-20470i, -57001i, -1i), Struct_3(1u, 1100f, vec4<f32>(-1412f, 681f, 203f, -703f), 0i, false), 0i, 1i), Struct_4(Struct_1(2147483647i), vec3<i32>(-4799i, -1i, 0i), Struct_3(14485u, -966f, vec4<f32>(-1000f, -911f, -313f, -939f), 0i, false), 2147483647i, -1i), Struct_4(Struct_1(-6108i), vec3<i32>(0i, 2147483647i, 0i), Struct_3(1u, -371f, vec4<f32>(2075f, 1454f, -1000f, 623f), 3492i, true), -2923i, i32(-2147483648)), Struct_4(Struct_1(-1i), vec3<i32>(-49511i, -6134i, -40542i), Struct_3(46742u, 1000f, vec4<f32>(589f, 1120f, -1159f, -1063f), 1i, false), 31544i, 2147483647i), Struct_4(Struct_1(-1i), vec3<i32>(0i, 48771i, 2147483647i), Struct_3(4294967295u, -345f, vec4<f32>(831f, -1000f, 2188f, 706f), 1i, true), -1i, 31735i), Struct_4(Struct_1(2147483647i), vec3<i32>(-35178i, 1i, -18650i), Struct_3(20253u, -1611f, vec4<f32>(1277f, 642f, -2055f, 1000f), 1i, false), 2147483647i, 31825i), Struct_4(Struct_1(-1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), Struct_3(13373u, -1105f, vec4<f32>(-655f, 1031f, 188f, 423f), i32(-2147483648), true), i32(-2147483648), 18639i), Struct_4(Struct_1(2147483647i), vec3<i32>(0i, -36854i, -26547i), Struct_3(1u, -1321f, vec4<f32>(-621f, -280f, 1610f, 482f), 2147483647i, true), 1i, 36682i), Struct_4(Struct_1(i32(-2147483648)), vec3<i32>(-49547i, -75486i, 2147483647i), Struct_3(10765u, 601f, vec4<f32>(-473f, 1397f, -1000f, -800f), i32(-2147483648), true), 2147483647i, -1i));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<i32, 32> = array<i32, 32>(2147483647i, 0i, 1i, -7206i, 2147483647i, 74517i, -19893i, 2147483647i, 25977i, -1i, -1i, 707i, 1291i, 4638i, -35734i, 2147483647i, -35873i, i32(-2147483648), 2147483647i, -587i, -37876i, -2811i, -1i, i32(-2147483648), 13550i, 0i, -3569i, i32(-2147483648), 0i, 13354i, 24072i, 12839i);

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 877f)), arg_0.a);
    global3 = array<i32, 32>();
    let var_1 = -firstLeadingBit(-select(-arg_2, ~vec3<i32>(-28606i, 3681i, 2147483647i), true));
    let var_2 = true;
    global1 = array<Struct_4, 29>();
    return arg_2.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 17>();
    let var_0 = u_input.c;
    global0 = array<vec2<u32>, 17>();
    var var_1 = _wgslsmith_f_op_f32(round(global4.x));
    var var_2 = true;
    return Struct_1(reverseBits(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(28423u, 32u)] ^ global3[_wgslsmith_index_u32(var_0, 32u)], ~u_input.a) ^ abs(func_3(Struct_4(Struct_1(-1i), vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(39095u, 32u)], 1i), Struct_3(1u, -1081f, vec4<f32>(global4.x, global4.x, global4.x, -1239f), -2147483647i, false), 73590i, -31414i), Struct_5(global4.ww, Struct_1(-15286i)), vec3<i32>(global3[_wgslsmith_index_u32(20499u, 32u)], 1i, u_input.a), Struct_5(global4.zy, Struct_1(2147483647i))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xx - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 268f)), _wgslsmith_f_op_vec2_f32(-arg_0.ww), global2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.c.zz + _wgslsmith_f_op_vec2_f32(global4.xx - arg_0.xx)))), arg_1.a);
    var var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~abs(4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 46356u, 4294967295u) | vec4<u32>(0u, 35857u, arg_1.c.a, u_input.c), vec4<u32>(0u, arg_3.c.a, u_input.c, 9283u))), ~_wgslsmith_mod_u32(u_input.b | min(1u, 64404u), u_input.c));
    global4 = vec4<f32>(885f, _wgslsmith_f_op_f32(-arg_3.c.b), var_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1295f)), _wgslsmith_f_op_f32(trunc(var_0.a.x))))));
    var var_2 = -664f;
    let var_3 = vec2<i32>(~2147483647i, max(global3[_wgslsmith_index_u32(select(~73657u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(11653u, arg_3.c.a), vec2<u32>(arg_3.c.a, 66723u))), ~arg_1.d >= min(14852i, -7227i)), 32u)], abs(_wgslsmith_sub_i32(0i, reverseBits(14458i)))));
    return Struct_1(i32(-1i) * -10765i);
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1090f, global4.x, global4.x, global4.x) * vec4<f32>(526f, -935f, global4.x, global4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, -173f, global4.x, -448f) - vec4<f32>(-371f, global4.x, 1583f, global4.x)))))), Struct_4(func_2(), ~vec3<i32>(abs(global3[_wgslsmith_index_u32(5976u, 32u)]), u_input.a, -1i), Struct_3(abs(1u), -1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, 647f, 494f, -161f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, 373f, global4.x) * vec4<f32>(global4.x, -1001f, global4.x, 2680f))), max(9557i, abs(1i)), !(2635u == u_input.b)), abs(func_2().a), i32(-1i) * -1i), func_2(), global1[_wgslsmith_index_u32(abs(6192u), 29u)]);
    global4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, _wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(global4.x + global4.x), 560f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(-global4.x)), vec4<f32>(_wgslsmith_div_f32(1395f, -1100f), _wgslsmith_f_op_f32(ceil(-296f)), _wgslsmith_f_op_f32(global4.x - global4.x), 1000f)))), true));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x)))) - vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1000f, global4.x)), 1527f)), func_2());
    global0 = array<vec2<u32>, 17>();
    var var_2 = global2.x;
    return _wgslsmith_add_vec2_i32(vec2<i32>(~min(-1i, reverseBits(-1i)), var_1.b.a), vec2<i32>(_wgslsmith_sub_i32(-39217i, _wgslsmith_mult_i32(~var_1.b.a, var_0.a ^ global3[_wgslsmith_index_u32(80889u, 32u)])), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec4<f32>(-1385f, 717f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-930f + global4.x)))) - -420f));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1366f, global4.x))))));
    var var_1 = _wgslsmith_div_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(~global3[_wgslsmith_index_u32(u_input.c, 32u)], _wgslsmith_mod_i32(2147483647i, u_input.a)), vec2<i32>(-global3[_wgslsmith_index_u32(u_input.c, 32u)], global3[_wgslsmith_index_u32(u_input.c, 32u)]), max(func_1(), ~vec2<i32>(13735i, -1i))), min(~vec2<i32>(40662i, -90411i) & (vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(0i, u_input.a), ~1i))), firstTrailingBit(-_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(u_input.a, -1i))));
    global1 = array<Struct_4, 29>();
    let var_2 = global4.zyx;
    global1 = array<Struct_4, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1763f + var_2.x)), ~1u);
}

