struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_1(-1i, vec2<i32>(-35218i, -9022i), vec2<f32>(-741f, 358f), 1i), vec3<f32>(-1254f, -641f, 1116f), Struct_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(-2174i, vec2<i32>(-13217i, 32966i), vec2<f32>(-912f, -424f), i32(-2147483648)), vec2<f32>(883f, -109f)), vec4<bool>(false, true, true, true), -41450i, vec3<i32>(1i, -29372i, -11307i))), Struct_4(Struct_1(-19677i, vec2<i32>(i32(-2147483648), -22135i), vec2<f32>(207f, -1775f), 0i), vec3<f32>(-687f, 469f, -1000f), Struct_3(Struct_2(vec4<bool>(false, false, true, false), Struct_1(-58644i, vec2<i32>(-3957i, 1i), vec2<f32>(485f, -327f), -52683i), vec2<f32>(-215f, 2322f)), vec4<bool>(true, false, true, false), -71099i, vec3<i32>(21i, 2147483647i, 2147483647i))), Struct_4(Struct_1(51216i, vec2<i32>(0i, -20023i), vec2<f32>(-478f, 206f), -14962i), vec3<f32>(-163f, 1777f, -2172f), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(-1i, vec2<i32>(2147483647i, 1i), vec2<f32>(915f, 277f), 1i), vec2<f32>(-259f, -453f)), vec4<bool>(true, true, true, false), -1i, vec3<i32>(48677i, 2147483647i, 2147483647i))), Struct_4(Struct_1(1317i, vec2<i32>(1i, 29529i), vec2<f32>(570f, 508f), 1i), vec3<f32>(-1405f, 1000f, 1950f), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(-1i, vec2<i32>(254i, -1i), vec2<f32>(1259f, 349f), 40662i), vec2<f32>(1268f, 442f)), vec4<bool>(true, true, true, false), 2147483647i, vec3<i32>(i32(-2147483648), 2147483647i, 16287i))), Struct_4(Struct_1(0i, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-622f, 795f), 2147483647i), vec3<f32>(-272f, 175f, -724f), Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(-1i, vec2<i32>(-1i, -1i), vec2<f32>(1528f, 571f), 12982i), vec2<f32>(434f, -924f)), vec4<bool>(true, false, false, false), 2147483647i, vec3<i32>(24470i, 388i, 2147483647i))), Struct_4(Struct_1(-35583i, vec2<i32>(-12120i, -36628i), vec2<f32>(701f, -2079f), 1i), vec3<f32>(-1565f, 1429f, -1933f), Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(-14432i, vec2<i32>(1i, 8819i), vec2<f32>(-250f, 488f), -22168i), vec2<f32>(-436f, -1599f)), vec4<bool>(true, true, true, false), -4570i, vec3<i32>(0i, i32(-2147483648), 1i))), Struct_4(Struct_1(-38867i, vec2<i32>(15333i, 17730i), vec2<f32>(-1191f, -864f), -72360i), vec3<f32>(1325f, -389f, -962f), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(0i, vec2<i32>(-21446i, -20979i), vec2<f32>(371f, -1618f), -1i), vec2<f32>(351f, 688f)), vec4<bool>(false, false, false, false), -1i, vec3<i32>(i32(-2147483648), -1i, -14741i))), Struct_4(Struct_1(-33132i, vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-2884f, 1036f), 1i), vec3<f32>(-224f, -1831f, 2907f), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(55349i, vec2<i32>(13258i, 0i), vec2<f32>(-459f, 1000f), 1i), vec2<f32>(1145f, 533f)), vec4<bool>(true, false, false, false), -93160i, vec3<i32>(1i, 0i, 1i))), Struct_4(Struct_1(-4015i, vec2<i32>(35779i, 1i), vec2<f32>(-789f, -739f), -12564i), vec3<f32>(1051f, -550f, 248f), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(-1i, vec2<i32>(i32(-2147483648), -33615i), vec2<f32>(425f, 428f), 38442i), vec2<f32>(1783f, 1152f)), vec4<bool>(true, true, false, false), 1i, vec3<i32>(i32(-2147483648), 1i, 1i))), Struct_4(Struct_1(2147483647i, vec2<i32>(9606i, -1i), vec2<f32>(-1344f, -999f), 26727i), vec3<f32>(393f, 479f, -333f), Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, -26098i), vec2<f32>(2443f, -472f), -9084i), vec2<f32>(-214f, 1000f)), vec4<bool>(true, true, true, true), -1i, vec3<i32>(17369i, -46280i, 1053i))), Struct_4(Struct_1(1906i, vec2<i32>(-1i, 16019i), vec2<f32>(287f, 1259f), 0i), vec3<f32>(-1000f, 936f, -1076f), Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(i32(-2147483648), vec2<i32>(-66597i, -1i), vec2<f32>(1000f, -600f), i32(-2147483648)), vec2<f32>(-168f, 1000f)), vec4<bool>(false, false, true, false), 1i, vec3<i32>(-31640i, 1i, 16635i))), Struct_4(Struct_1(-24675i, vec2<i32>(-25415i, -1i), vec2<f32>(119f, 1002f), 27168i), vec3<f32>(1432f, 2861f, -1369f), Struct_3(Struct_2(vec4<bool>(false, true, true, true), Struct_1(31384i, vec2<i32>(-32889i, 1i), vec2<f32>(-323f, 336f), 0i), vec2<f32>(-1635f, 417f)), vec4<bool>(true, false, false, true), -1i, vec3<i32>(14817i, -15337i, 0i))), Struct_4(Struct_1(2147483647i, vec2<i32>(20410i, 559i), vec2<f32>(924f, -1000f), -1i), vec3<f32>(2362f, -997f, -533f), Struct_3(Struct_2(vec4<bool>(false, true, true, false), Struct_1(i32(-2147483648), vec2<i32>(33670i, i32(-2147483648)), vec2<f32>(161f, -3386f), 17908i), vec2<f32>(1588f, -459f)), vec4<bool>(false, true, false, false), 21313i, vec3<i32>(-1i, -1i, 13201i))), Struct_4(Struct_1(0i, vec2<i32>(-39094i, 74404i), vec2<f32>(-806f, -1622f), 0i), vec3<f32>(484f, 1000f, 684f), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(-33523i, vec2<i32>(63434i, 30693i), vec2<f32>(-185f, 1323f), -1i), vec2<f32>(225f, -228f)), vec4<bool>(false, false, true, true), -7557i, vec3<i32>(37853i, i32(-2147483648), -22696i))), Struct_4(Struct_1(10583i, vec2<i32>(1i, i32(-2147483648)), vec2<f32>(-499f, 408f), 2049i), vec3<f32>(-381f, 442f, -1296f), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(9745i, vec2<i32>(i32(-2147483648), -1i), vec2<f32>(-1936f, -153f), -649i), vec2<f32>(-231f, -1000f)), vec4<bool>(false, true, false, true), 17756i, vec3<i32>(-35527i, 0i, -1i))), Struct_4(Struct_1(-5925i, vec2<i32>(3841i, -1i), vec2<f32>(1677f, -596f), -48872i), vec3<f32>(-495f, 1000f, -1448f), Struct_3(Struct_2(vec4<bool>(false, false, true, false), Struct_1(-1i, vec2<i32>(-47579i, -41972i), vec2<f32>(1216f, -682f), i32(-2147483648)), vec2<f32>(-1299f, 728f)), vec4<bool>(true, false, false, false), 2147483647i, vec3<i32>(28875i, -1i, 20772i))), Struct_4(Struct_1(0i, vec2<i32>(34711i, -17686i), vec2<f32>(-1479f, -246f), -1i), vec3<f32>(-462f, 327f, -1000f), Struct_3(Struct_2(vec4<bool>(true, false, false, true), Struct_1(2147483647i, vec2<i32>(-30006i, 25926i), vec2<f32>(-1102f, 626f), -11623i), vec2<f32>(198f, 765f)), vec4<bool>(false, true, true, true), -30711i, vec3<i32>(22839i, -9636i, -4023i))), Struct_4(Struct_1(1i, vec2<i32>(2147483647i, -26108i), vec2<f32>(-876f, 756f), 13288i), vec3<f32>(418f, 210f, -296f), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(0i, vec2<i32>(i32(-2147483648), -29082i), vec2<f32>(811f, -1225f), 32298i), vec2<f32>(696f, 702f)), vec4<bool>(true, false, false, false), -29402i, vec3<i32>(8932i, -21262i, i32(-2147483648)))), Struct_4(Struct_1(i32(-2147483648), vec2<i32>(-107961i, -31190i), vec2<f32>(-1000f, 2206f), -1i), vec3<f32>(416f, 202f, 475f), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(0i, vec2<i32>(4991i, 1i), vec2<f32>(1201f, 2217f), -1i), vec2<f32>(628f, 293f)), vec4<bool>(false, false, false, false), 2147483647i, vec3<i32>(24074i, 31831i, 17466i))), Struct_4(Struct_1(1i, vec2<i32>(-34366i, 0i), vec2<f32>(-406f, -1000f), 2503i), vec3<f32>(1000f, 1380f, -1164f), Struct_3(Struct_2(vec4<bool>(false, true, false, false), Struct_1(-745i, vec2<i32>(1i, 31394i), vec2<f32>(-159f, 1545f), -1i), vec2<f32>(-287f, 950f)), vec4<bool>(true, true, false, true), i32(-2147483648), vec3<i32>(1i, i32(-2147483648), -1i))), Struct_4(Struct_1(2147483647i, vec2<i32>(24292i, -47813i), vec2<f32>(-584f, 436f), 14122i), vec3<f32>(-338f, -1965f, 514f), Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(0i, vec2<i32>(9356i, 51846i), vec2<f32>(-1483f, 465f), -34786i), vec2<f32>(-930f, 185f)), vec4<bool>(true, false, false, false), -1i, vec3<i32>(-6124i, i32(-2147483648), -1i))), Struct_4(Struct_1(1i, vec2<i32>(-1i, i32(-2147483648)), vec2<f32>(-1991f, 1105f), 29180i), vec3<f32>(-640f, 500f, -1587f), Struct_3(Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1i, vec2<i32>(2147483647i, 0i), vec2<f32>(239f, -1257f), 39408i), vec2<f32>(623f, -1000f)), vec4<bool>(false, false, true, true), 0i, vec3<i32>(2147483647i, i32(-2147483648), -34623i))), Struct_4(Struct_1(-74027i, vec2<i32>(2147483647i, 1i), vec2<f32>(1121f, -1623f), i32(-2147483648)), vec3<f32>(879f, 963f, -451f), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(0i, vec2<i32>(5231i, 4402i), vec2<f32>(-834f, 1535f), -11672i), vec2<f32>(1000f, -293f)), vec4<bool>(true, false, true, false), 1i, vec3<i32>(23075i, 24106i, i32(-2147483648)))), Struct_4(Struct_1(i32(-2147483648), vec2<i32>(-19654i, -26352i), vec2<f32>(-2448f, 1856f), -1i), vec3<f32>(124f, 1746f, -1000f), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(109565i, vec2<i32>(i32(-2147483648), 1i), vec2<f32>(-618f, -210f), -22791i), vec2<f32>(932f, 346f)), vec4<bool>(true, true, false, false), -25838i, vec3<i32>(-1i, -1i, 1i))));

var<private> global1: Struct_4;

var<private> global2: Struct_3;

var<private> global3: array<u32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_5) -> vec2<i32> {
    global3 = array<u32, 28>();
    var var_0 = vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -4006i, -28312i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-61494i, -1i), -18911i), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, global1.c.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-41509i, -4709i, 2147483647i, -2147483647i), vec4<i32>(-52934i, 9557i, -1i, global1.a.b.x)), global1.a.a)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(40315i, -14121i), vec2<i32>(0i, global1.c.c | global2.c)));
    let var_1 = Struct_4(Struct_1(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, global1.c.c, 44467i), -2147483647i), vec2<i32>(-12574i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global1.a.a, u_input.a), global2.d) >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(458f, global2.a.c.x) * _wgslsmith_f_op_vec2_f32(select(global1.a.c, vec2<f32>(1209f, global1.c.a.c.x), global2.a.a.wx))))), max(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.x, global2.a.b.b.x, -475i), _wgslsmith_mod_i32(-2147483647i, 5995i), ~1i), firstTrailingBit(13046i >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47198u, 28u)], 28u)] % 32u)))), arg_0.b, global1.c);
    return -firstLeadingBit(global2.d.zx);
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = global2.a;
    let var_1 = global2.d.xy;
    var var_2 = global1.c;
    var var_3 = global1.c.c;
    var var_4 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42812u >> ((~1u >> (global3[_wgslsmith_index_u32(reverseBits(countOneBits(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46266u, 28u)], 28u)]))), 28u)] % 32u)) % 32u), 28u)], 24u)];
    return Struct_1(32142i, func_3(Struct_5(firstTrailingBit(~vec3<u32>(4658u, 61720u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])), arg_1.b, !vec3<bool>(arg_1.c.b.x, var_2.b.x, false))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.c) + _wgslsmith_f_op_vec2_f32(-arg_1.b.yx))))), _wgslsmith_sub_i32(2147483647i, ~var_1.x));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_f32(round(global1.b.x)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(32913u, global3[_wgslsmith_index_u32(35708u, 28u)]), ~44309u), 28u)], 28u)], 28u)], 24u)]);
    global3 = array<u32, 28>();
    let var_1 = vec2<i32>(-67935i, reverseBits(_wgslsmith_mult_i32(1i, 2147483647i)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.a.b.c.x))) * _wgslsmith_div_f32(global2.a.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1148f))) + -461f)));
    var var_1 = select(vec2<bool>((reverseBits(27819i) <= global2.c) || false, true), !vec2<bool>(true, func_1(Struct_2(vec4<bool>(global1.c.a.a.x, global2.b.x, global2.b.x, global2.a.a.x), Struct_1(global2.d.x, global2.a.b.b, vec2<f32>(1015f, -290f), u_input.a), global1.b.zy))), 2274f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.b.c.x, global2.a.c.x, true)) + -277f));
    let var_2 = Struct_3(global1.c.a, global2.b, countOneBits(func_3(Struct_5(~vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec3_f32(trunc(global1.b)), !vec3<bool>(global2.a.a.x, global1.c.a.a.x, global1.c.a.a.x))).x), -vec3<i32>(global2.d.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.a.b.d, -25887i), reverseBits(0i)), u_input.b));
    let var_3 = !(!((all(global1.c.a.a.zx) & global2.b.x) || false));
    var var_4 = global2.a;
    global3 = array<u32, 28>();
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2.a.b.d, i32(-1i) * -45635i, -62563i, i32(-1i) * -10458i) ^ ((vec4<i32>(-49680i, 1740i, 2147483647i, var_2.a.b.d) & ~vec4<i32>(global1.c.a.b.a, -8138i, 2147483647i, -50785i)) | max(-vec4<i32>(26108i, 16292i, global2.d.x, var_2.c), vec4<i32>(global2.a.b.d, -2147483647i, -20785i, global2.a.b.a) ^ vec4<i32>(0i, 1i, -1i, u_input.a))), vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(71806u, 28u)], 49716u), vec2<u32>(4159u, 93709u))), global3[_wgslsmith_index_u32(34791u, 28u)] & ~global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72008u, 28u)], 28u)], 28u)], 28u)], global3[_wgslsmith_index_u32(16611u, 28u)], global3[_wgslsmith_index_u32(70781u, 28u)]), 28u)]), func_3(Struct_5(~vec3<u32>(39054u, 40825u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(global1.b - vec3<f32>(var_2.a.b.c.x, 1449f, 214f))), !select(global2.b.wzy, vec3<bool>(global2.a.a.x, global1.c.b.x, var_4.a.x), vec3<bool>(false, true, var_2.a.a.x)))).x);
}

