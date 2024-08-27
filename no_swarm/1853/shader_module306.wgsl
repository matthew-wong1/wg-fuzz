struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
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

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(54505u, 4294967295u, 4294967295u), vec3<u32>(21862u, 1u, 116422u), vec3<u32>(0u, 1u, 49466u), vec3<u32>(4294967295u, 1u, 77079u), vec3<u32>(18556u, 4294967295u, 17821u), vec3<u32>(61358u, 44261u, 15348u), vec3<u32>(103388u, 1u, 4294967295u), vec3<u32>(63815u, 35557u, 16994u), vec3<u32>(4294967295u, 22051u, 69970u), vec3<u32>(22769u, 0u, 0u), vec3<u32>(1u, 1u, 6726u), vec3<u32>(40206u, 0u, 4294967295u), vec3<u32>(1u, 47995u, 24209u), vec3<u32>(15453u, 0u, 0u), vec3<u32>(104574u, 0u, 0u), vec3<u32>(6675u, 0u, 27561u), vec3<u32>(0u, 4294967295u, 123696u));

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<u32>(47315u, 56035u, 4294967295u), vec3<i32>(-12758i, -45596i, 7898i), Struct_1(true, vec3<f32>(598f, -406f, 136f), 43417i, vec4<f32>(1059f, -719f, 428f, -1001f)), vec3<i32>(-1i, 14356i, -10765i)), Struct_3(vec3<u32>(68462u, 41458u, 1u), vec3<i32>(5304i, 18355i, 2806i), Struct_1(false, vec3<f32>(-660f, -2262f, 665f), 0i, vec4<f32>(-1105f, -321f, 1000f, 942f)), vec3<i32>(-20938i, -1i, -52715i)), Struct_3(vec3<u32>(54059u, 14047u, 23951u), vec3<i32>(1i, -25920i, 0i), Struct_1(true, vec3<f32>(-3274f, 1269f, 1000f), 2147483647i, vec4<f32>(-346f, 1000f, -542f, 585f)), vec3<i32>(1i, 0i, 0i)), Struct_3(vec3<u32>(52294u, 1u, 92407u), vec3<i32>(13558i, 20220i, -1i), Struct_1(true, vec3<f32>(-318f, 1000f, -439f), -76476i, vec4<f32>(514f, 1000f, -1581f, 703f)), vec3<i32>(i32(-2147483648), 2147483647i, 4178i)), Struct_3(vec3<u32>(19006u, 42407u, 4294967295u), vec3<i32>(0i, -5168i, 20512i), Struct_1(false, vec3<f32>(-1682f, 1602f, -1089f), -6506i, vec4<f32>(466f, 1140f, -1728f, -1263f)), vec3<i32>(-51637i, i32(-2147483648), -16742i)), Struct_3(vec3<u32>(53899u, 4294967295u, 4294967295u), vec3<i32>(-19960i, i32(-2147483648), -23208i), Struct_1(false, vec3<f32>(-1565f, 1000f, 435f), 0i, vec4<f32>(-1000f, -836f, -1028f, 2663f)), vec3<i32>(-32828i, i32(-2147483648), 20017i)), Struct_3(vec3<u32>(0u, 13801u, 34721u), vec3<i32>(9212i, 10155i, 0i), Struct_1(false, vec3<f32>(-2203f, -741f, -1669f), -20646i, vec4<f32>(-1065f, -401f, 2059f, -349f)), vec3<i32>(-41055i, 21088i, 13528i)), Struct_3(vec3<u32>(67679u, 97706u, 28181u), vec3<i32>(0i, -20590i, -17913i), Struct_1(false, vec3<f32>(-2024f, 1000f, 895f), -1i, vec4<f32>(307f, -391f, -1306f, 545f)), vec3<i32>(-15785i, 0i, 1i)), Struct_3(vec3<u32>(69049u, 23674u, 4294967295u), vec3<i32>(1i, 0i, 0i), Struct_1(true, vec3<f32>(591f, 179f, -1630f), 26957i, vec4<f32>(672f, 690f, -598f, 365f)), vec3<i32>(-1i, -8416i, 2147483647i)), Struct_3(vec3<u32>(26841u, 4294967295u, 5400u), vec3<i32>(2147483647i, 43260i, -48152i), Struct_1(false, vec3<f32>(-671f, 558f, -173f), 5911i, vec4<f32>(669f, -1587f, 155f, -922f)), vec3<i32>(0i, 29877i, -31641i)), Struct_3(vec3<u32>(4294967295u, 39779u, 1u), vec3<i32>(-8041i, 1i, -1161i), Struct_1(false, vec3<f32>(-621f, -594f, 844f), -30378i, vec4<f32>(-262f, -1073f, 883f, 1532f)), vec3<i32>(0i, i32(-2147483648), -43824i)), Struct_3(vec3<u32>(46050u, 22848u, 31896u), vec3<i32>(0i, -1i, -1i), Struct_1(true, vec3<f32>(1092f, -1274f, -1621f), 0i, vec4<f32>(-1458f, -564f, 1662f, -1313f)), vec3<i32>(18699i, 324i, 33910i)), Struct_3(vec3<u32>(45159u, 1u, 0u), vec3<i32>(-19747i, 4230i, -4602i), Struct_1(false, vec3<f32>(-1000f, -124f, -565f), 2147483647i, vec4<f32>(671f, -1744f, -1000f, -639f)), vec3<i32>(-31909i, 6480i, i32(-2147483648))), Struct_3(vec3<u32>(0u, 1u, 4294967295u), vec3<i32>(0i, -1i, i32(-2147483648)), Struct_1(false, vec3<f32>(473f, -166f, -1334f), 59084i, vec4<f32>(1026f, 2369f, 1045f, -885f)), vec3<i32>(2147483647i, 0i, 1i)), Struct_3(vec3<u32>(5094u, 1u, 45403u), vec3<i32>(1i, 1i, -1i), Struct_1(true, vec3<f32>(847f, -692f, 1637f), -39832i, vec4<f32>(-231f, -373f, 1000f, -231f)), vec3<i32>(12439i, 2147483647i, -63495i)), Struct_3(vec3<u32>(0u, 4652u, 41856u), vec3<i32>(43679i, 0i, -70776i), Struct_1(true, vec3<f32>(991f, 595f, 579f), 50904i, vec4<f32>(1639f, 664f, -1627f, -252f)), vec3<i32>(-2539i, 0i, -21472i)), Struct_3(vec3<u32>(1u, 1u, 20831u), vec3<i32>(-53889i, 0i, 2147483647i), Struct_1(true, vec3<f32>(1614f, 1644f, -1229f), -38290i, vec4<f32>(1000f, 201f, -970f, -1048f)), vec3<i32>(-47852i, -1i, -3842i)), Struct_3(vec3<u32>(24033u, 4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), -20851i, 0i), Struct_1(true, vec3<f32>(-252f, -358f, -160f), -8943i, vec4<f32>(2105f, 107f, -736f, 1000f)), vec3<i32>(0i, -35014i, 20432i)), Struct_3(vec3<u32>(22131u, 32760u, 4294967295u), vec3<i32>(2495i, -1609i, -9565i), Struct_1(false, vec3<f32>(-1595f, -1000f, -1027f), -3771i, vec4<f32>(1176f, 1000f, 706f, 821f)), vec3<i32>(-4773i, 50206i, 1i)), Struct_3(vec3<u32>(0u, 0u, 15614u), vec3<i32>(0i, 55137i, 34999i), Struct_1(true, vec3<f32>(388f, -2663f, -1375f), 1i, vec4<f32>(-148f, 1437f, 363f, -1084f)), vec3<i32>(i32(-2147483648), -1i, -28433i)), Struct_3(vec3<u32>(46657u, 0u, 0u), vec3<i32>(-9297i, -6118i, 0i), Struct_1(false, vec3<f32>(1062f, -1008f, -778f), -55479i, vec4<f32>(-934f, -738f, -432f, 291f)), vec3<i32>(-1i, -46866i, 2147483647i)));

var<private> global2: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(true, true, vec4<f32>(308f, 1747f, 1304f, 220f)), Struct_5(true, false, vec4<f32>(-288f, -489f, 338f, 780f)), Struct_5(true, false, vec4<f32>(-431f, 1000f, -1208f, 487f)), Struct_5(false, false, vec4<f32>(-1000f, -555f, -629f, -1444f)), Struct_5(false, true, vec4<f32>(132f, 987f, -123f, -375f)), Struct_5(false, false, vec4<f32>(581f, -1398f, -586f, -1460f)), Struct_5(true, false, vec4<f32>(-269f, 158f, -188f, 1727f)), Struct_5(false, true, vec4<f32>(824f, 879f, -1481f, -235f)), Struct_5(false, true, vec4<f32>(-106f, 1000f, -686f, -981f)), Struct_5(false, false, vec4<f32>(-277f, -751f, 822f, 278f)), Struct_5(true, true, vec4<f32>(401f, -274f, -1436f, -738f)), Struct_5(true, false, vec4<f32>(-954f, -327f, 1250f, 780f)), Struct_5(false, true, vec4<f32>(208f, -723f, 630f, -1439f)), Struct_5(false, true, vec4<f32>(1018f, 519f, -380f, -1690f)), Struct_5(false, true, vec4<f32>(-1826f, -472f, 1082f, -1866f)), Struct_5(false, false, vec4<f32>(157f, -1000f, 1481f, 779f)), Struct_5(true, true, vec4<f32>(681f, 1686f, -200f, 657f)), Struct_5(false, false, vec4<f32>(466f, -530f, 412f, 1109f)), Struct_5(true, true, vec4<f32>(-771f, -863f, -620f, -909f)), Struct_5(true, true, vec4<f32>(1076f, 285f, 689f, -1022f)), Struct_5(false, true, vec4<f32>(-103f, 2064f, 442f, 736f)), Struct_5(true, false, vec4<f32>(-1000f, 1000f, -254f, -1870f)), Struct_5(true, false, vec4<f32>(280f, -750f, -1262f, 343f)), Struct_5(true, true, vec4<f32>(2855f, 676f, -135f, 2204f)), Struct_5(false, false, vec4<f32>(-370f, -229f, -1200f, 1664f)), Struct_5(true, false, vec4<f32>(939f, -528f, 859f, 208f)), Struct_5(true, false, vec4<f32>(-1021f, -1000f, -416f, -1813f)), Struct_5(false, true, vec4<f32>(-1903f, -1000f, 1586f, -815f)), Struct_5(true, true, vec4<f32>(-134f, 1000f, 805f, 215f)), Struct_5(true, true, vec4<f32>(-1000f, 902f, 1719f, 320f)));

var<private> global3: array<Struct_2, 15>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = Struct_5(arg_2.c, arg_0.c.a, arg_2.b.d);
    let var_1 = !(!select(!select(vec3<bool>(arg_0.c.a, arg_2.c, true), vec3<bool>(false, arg_0.c.a, true), vec3<bool>(false, arg_2.c, var_0.b)), vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, arg_2.c, false, var_0.a)), var_0.b)));
    var var_2 = arg_0.c;
    global3 = array<Struct_2, 15>();
    let var_3 = Struct_4(arg_2.b, vec2<i32>(global4.x, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, -2147483647i)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, u_input.b.x), vec2<i32>(3792i, arg_0.c.c), true), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -12449i), arg_1.wx)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(182f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0.c.b.x))))), var_2.b.zy, !all(select(var_1.yx, vec2<bool>(true, false), true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * -943f)), _wgslsmith_f_op_f32(-190f - arg_2.a), 1000f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.b.x, var_2.d.x, var_0.c.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(994f, var_2.b.x, arg_0.c.b.x))))), _wgslsmith_f_op_vec3_f32(floor(var_2.b)), var_1))), arg_2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(arg_0.zyz * _wgslsmith_f_op_vec3_f32(-arg_0.zyx)), ~(-1i ^ _wgslsmith_mod_i32(u_input.b.x, reverseBits(global4.x))), _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-855f, arg_0.x, 1381f, arg_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-2022f * arg_0.x), _wgslsmith_div_f32(-332f, 1984f), arg_0.x))));
    global2 = array<Struct_5, 30>();
    global3 = array<Struct_2, 15>();
    global4 = u_input.a;
    global3 = array<Struct_2, 15>();
    return Struct_4(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(arg_0.x - 445f), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 21u)], u_input.a, global3[_wgslsmith_index_u32(9223u, 15u)], 1u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b))))), countOneBits(_wgslsmith_mult_i32(-1i, min(53153i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))), -675f, _wgslsmith_f_op_f32(-317f * 184f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1160f))))), max(~u_input.a.yx, abs(select(vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(2147483647i, 0i), var_0.a))), _wgslsmith_f_op_vec2_f32(-arg_0.ww), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_div_f32(var_0.d.x, -447f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(822f + arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1128f, arg_0.x))))), Struct_1(!(_wgslsmith_f_op_f32(-var_0.b.x) >= _wgslsmith_f_op_f32(-400f + -2085f)), arg_0.xzw, global4.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(arg_0.a.x, ~abs(arg_0.a.x));
    var var_1 = Struct_5(-1000f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1785f))))), false, arg_0.c.d);
    var var_2 = !arg_3.x;
    var var_3 = arg_0.c;
    var var_4 = ~abs(~(~firstLeadingBit(arg_0.a.x)));
    return func_2(var_3.d).a;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(global1[_wgslsmith_index_u32(~1u, 21u)], _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(456f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1659f)))))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1160f, 408f, -1000f, -497f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1384f, 1552f, 544f, 641f))))), vec2<bool>(!func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -374f, 366f, 127f) + vec4<f32>(1000f, -1732f, -1296f, -1000f))).e.a, !(!any(vec2<bool>(false, true)))));
    let var_1 = global1[_wgslsmith_index_u32(31097u, 21u)];
    let var_2 = _wgslsmith_div_vec2_u32(var_1.a.xy, var_1.a.zz);
    let var_3 = _wgslsmith_sub_u32(var_1.a.x, (1u >> (~var_1.a.x % 32u)) & var_1.a.x);
    let var_4 = _wgslsmith_mult_i32(var_0.c, var_0.c) < (var_0.c ^ 1i);
    return Struct_2(-376f, Struct_1(~var_2.x != var_1.a.x, vec3<f32>(var_1.c.d.x, var_1.c.b.x, 1640f), var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.b.x, var_1.c.d.x, 1f, _wgslsmith_f_op_f32(-var_1.c.d.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c.d) + _wgslsmith_f_op_vec4_f32(-var_0.d)))), (-global4.x >= 1i) | var_1.c.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1030f, -461f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.d.x, 164f), vec2<f32>(var_0.d.x, var_0.d.x), vec2<bool>(var_0.a, false)))) - _wgslsmith_f_op_vec2_f32(-var_0.d.zx)), select(any(vec2<bool>(true, var_1.c.a)) | true, all(select(vec2<bool>(var_1.c.a, var_0.a), vec2<bool>(var_1.c.a, var_4), vec2<bool>(var_0.a, var_0.a))), var_0.a | var_0.a))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 21>();
    let var_0 = vec2<bool>(true, false);
    global2 = array<Struct_5, 30>();
    let var_1 = func_1();
    global1 = array<Struct_3, 21>();
    let var_2 = 27589i;
    let var_3 = !any(!(!vec4<bool>(false, true, var_0.x, true))) & select(var_1.c, false && var_1.c, !(!var_1.c));
    global0 = array<vec3<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

