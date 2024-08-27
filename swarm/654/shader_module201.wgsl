struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(0u, Struct_1(-987f, vec2<i32>(0i, 0i), -67090i, vec4<i32>(13342i, 21233i, -20264i, -35941i)), Struct_1(-207f, vec2<i32>(31258i, 1i), -62523i, vec4<i32>(-45929i, 2147483647i, -26067i, 40404i)), 4294967295u, vec2<u32>(0u, 4294967295u)), Struct_2(13146u, Struct_1(-264f, vec2<i32>(-3377i, 2147483647i), 1i, vec4<i32>(64728i, -6122i, -24559i, 0i)), Struct_1(-446f, vec2<i32>(i32(-2147483648), 5100i), 39221i, vec4<i32>(-15907i, -1i, -11769i, -40431i)), 0u, vec2<u32>(19231u, 67816u)), Struct_2(4836u, Struct_1(-1559f, vec2<i32>(2147483647i, i32(-2147483648)), -1i, vec4<i32>(0i, 0i, -33683i, 26015i)), Struct_1(-1280f, vec2<i32>(2147483647i, -36498i), i32(-2147483648), vec4<i32>(-52172i, i32(-2147483648), -27839i, 1i)), 8945u, vec2<u32>(4294967295u, 26460u)), Struct_2(49712u, Struct_1(-1647f, vec2<i32>(1i, i32(-2147483648)), 1i, vec4<i32>(0i, -1i, -29356i, 10121i)), Struct_1(1081f, vec2<i32>(1i, -3055i), 39902i, vec4<i32>(-1i, 1i, -1i, 55419i)), 4294967295u, vec2<u32>(15641u, 4294967295u)), Struct_2(31236u, Struct_1(2032f, vec2<i32>(22053i, 13927i), 7125i, vec4<i32>(9439i, i32(-2147483648), -15537i, i32(-2147483648))), Struct_1(-1549f, vec2<i32>(27108i, 56555i), -1i, vec4<i32>(-1i, -1i, 26852i, 12752i)), 1u, vec2<u32>(0u, 0u)), Struct_2(1u, Struct_1(1063f, vec2<i32>(-15796i, -33419i), i32(-2147483648), vec4<i32>(2147483647i, -1i, 9551i, 1i)), Struct_1(-771f, vec2<i32>(-37250i, -29188i), 2147483647i, vec4<i32>(-56389i, 0i, 0i, 38369i)), 47180u, vec2<u32>(4294967295u, 4294967295u)), Struct_2(78843u, Struct_1(-485f, vec2<i32>(-1i, -1i), 2147483647i, vec4<i32>(i32(-2147483648), 14833i, -38456i, 0i)), Struct_1(276f, vec2<i32>(70212i, 2147483647i), 39548i, vec4<i32>(i32(-2147483648), i32(-2147483648), 33045i, 88061i)), 2040u, vec2<u32>(1u, 1u)), Struct_2(23925u, Struct_1(-183f, vec2<i32>(1i, -1i), -28474i, vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i)), Struct_1(1103f, vec2<i32>(0i, -1i), 8850i, vec4<i32>(2147483647i, 31231i, 2147483647i, -50345i)), 0u, vec2<u32>(4294967295u, 0u)), Struct_2(46786u, Struct_1(504f, vec2<i32>(6775i, -1i), -2717i, vec4<i32>(0i, i32(-2147483648), 21596i, 0i)), Struct_1(276f, vec2<i32>(26781i, 26317i), 1i, vec4<i32>(0i, 0i, 16617i, -8713i)), 49205u, vec2<u32>(0u, 16983u)), Struct_2(78138u, Struct_1(318f, vec2<i32>(i32(-2147483648), 73622i), -1i, vec4<i32>(-864i, 2147483647i, -1i, -45199i)), Struct_1(1444f, vec2<i32>(-38636i, -2666i), 0i, vec4<i32>(4208i, -56046i, 24683i, -15956i)), 99642u, vec2<u32>(4294967295u, 10256u)), Struct_2(0u, Struct_1(-648f, vec2<i32>(-1i, 1i), -37548i, vec4<i32>(5612i, 0i, i32(-2147483648), -37547i)), Struct_1(-245f, vec2<i32>(-47917i, 25723i), -2473i, vec4<i32>(33573i, 2147483647i, -1i, 333i)), 25823u, vec2<u32>(14434u, 0u)), Struct_2(112087u, Struct_1(-1146f, vec2<i32>(-32400i, i32(-2147483648)), -34107i, vec4<i32>(-15452i, 0i, 1i, -1i)), Struct_1(-749f, vec2<i32>(i32(-2147483648), -18669i), 7381i, vec4<i32>(i32(-2147483648), 8117i, 0i, -5794i)), 0u, vec2<u32>(0u, 1u)), Struct_2(4294967295u, Struct_1(-1000f, vec2<i32>(-10078i, 2147483647i), 1i, vec4<i32>(22905i, 2147483647i, -11845i, -1i)), Struct_1(681f, vec2<i32>(0i, -1i), 28483i, vec4<i32>(14195i, -1i, 1i, 2147483647i)), 0u, vec2<u32>(4294967295u, 0u)), Struct_2(1u, Struct_1(1191f, vec2<i32>(38446i, 80431i), -27961i, vec4<i32>(12236i, -1i, 11177i, -38188i)), Struct_1(131f, vec2<i32>(-18906i, 61639i), 1i, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 1i)), 92894u, vec2<u32>(103301u, 108859u)), Struct_2(0u, Struct_1(762f, vec2<i32>(i32(-2147483648), 0i), -35218i, vec4<i32>(-41793i, -1i, 1i, 0i)), Struct_1(114f, vec2<i32>(i32(-2147483648), 0i), -78112i, vec4<i32>(1i, -34370i, -12348i, -1i)), 38907u, vec2<u32>(1u, 25908u)), Struct_2(0u, Struct_1(747f, vec2<i32>(-1i, 5166i), 1596i, vec4<i32>(-39989i, 1i, -6827i, -20107i)), Struct_1(-729f, vec2<i32>(0i, i32(-2147483648)), 585i, vec4<i32>(-1i, 9628i, 22845i, 2147483647i)), 20326u, vec2<u32>(81836u, 118262u)), Struct_2(31673u, Struct_1(579f, vec2<i32>(16814i, -48922i), 2147483647i, vec4<i32>(24985i, 2147483647i, -21554i, 6463i)), Struct_1(986f, vec2<i32>(-30940i, i32(-2147483648)), -24593i, vec4<i32>(0i, i32(-2147483648), -61535i, -58383i)), 1u, vec2<u32>(0u, 0u)), Struct_2(1u, Struct_1(647f, vec2<i32>(8247i, i32(-2147483648)), 1i, vec4<i32>(39135i, -1i, 5846i, 0i)), Struct_1(-1000f, vec2<i32>(2147483647i, 18895i), 0i, vec4<i32>(-45798i, -63619i, 25797i, -36053i)), 47129u, vec2<u32>(4294967295u, 4294967295u)), Struct_2(0u, Struct_1(784f, vec2<i32>(-22677i, -38251i), i32(-2147483648), vec4<i32>(-35654i, i32(-2147483648), i32(-2147483648), -1i)), Struct_1(-915f, vec2<i32>(-13200i, 2147483647i), 53644i, vec4<i32>(9313i, -10097i, -24687i, -1i)), 23310u, vec2<u32>(32893u, 40898u)), Struct_2(21109u, Struct_1(1328f, vec2<i32>(-51732i, 2147483647i), -12173i, vec4<i32>(-17805i, -2902i, -42188i, 2147483647i)), Struct_1(-214f, vec2<i32>(-46582i, 72343i), -11450i, vec4<i32>(35016i, 39951i, -24921i, -60914i)), 85930u, vec2<u32>(18491u, 1u)), Struct_2(0u, Struct_1(-1570f, vec2<i32>(0i, -7496i), -10233i, vec4<i32>(-1i, -5036i, 22733i, 0i)), Struct_1(-1195f, vec2<i32>(2147483647i, 1i), 1i, vec4<i32>(2147483647i, -39816i, 6520i, 2147483647i)), 47534u, vec2<u32>(38581u, 7079u)), Struct_2(1u, Struct_1(-564f, vec2<i32>(15282i, i32(-2147483648)), 56319i, vec4<i32>(-1i, 2147483647i, 1i, 5890i)), Struct_1(473f, vec2<i32>(13727i, 2147483647i), -31350i, vec4<i32>(2147483647i, i32(-2147483648), -4619i, 1i)), 1u, vec2<u32>(1u, 0u)), Struct_2(4294967295u, Struct_1(129f, vec2<i32>(2147483647i, 3563i), 0i, vec4<i32>(2147483647i, 1i, 0i, 0i)), Struct_1(1122f, vec2<i32>(0i, -25204i), -1i, vec4<i32>(i32(-2147483648), -64468i, 0i, 0i)), 95866u, vec2<u32>(0u, 25805u)), Struct_2(4294967295u, Struct_1(-415f, vec2<i32>(52619i, -47805i), 0i, vec4<i32>(27828i, i32(-2147483648), -18148i, 9220i)), Struct_1(624f, vec2<i32>(-22523i, 0i), 1i, vec4<i32>(2147483647i, 9184i, 0i, 11177i)), 1u, vec2<u32>(41475u, 4294967295u)), Struct_2(29700u, Struct_1(-1614f, vec2<i32>(-25449i, -6571i), 0i, vec4<i32>(-1i, 0i, 363i, i32(-2147483648))), Struct_1(-1034f, vec2<i32>(0i, -24404i), -44903i, vec4<i32>(0i, 1i, -1i, 7018i)), 0u, vec2<u32>(4294967295u, 0u)));

var<private> global1: bool = true;

var<private> global2: array<u32, 24> = array<u32, 24>(4294967295u, 32574u, 0u, 15994u, 3062u, 0u, 4294967295u, 0u, 4294967295u, 5892u, 1u, 4294967295u, 54424u, 8021u, 0u, 57441u, 0u, 1u, 72396u, 15894u, 126778u, 49225u, 68785u, 1u);

var<private> global3: array<f32, 16> = array<f32, 16>(1000f, 129f, -973f, 2207f, 157f, 1489f, -314f, -171f, 314f, 287f, -755f, 1004f, 1000f, 575f, -407f, -538f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global3 = array<f32, 16>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 25u)];
    global0 = array<Struct_2, 25>();
    var var_1 = var_0.a;
    let var_2 = firstLeadingBit(vec2<i32>((var_0.c.c & var_0.c.b.x) ^ var_0.b.d.x, _wgslsmith_clamp_i32(abs(2147483647i), _wgslsmith_dot_vec3_i32(var_0.b.d.xzz, vec3<i32>(0i, 962i, -2147483647i)), ~2147483647i)) >> (max(vec2<u32>(var_0.e.x, 22258u), _wgslsmith_sub_vec2_u32(var_0.e ^ var_0.e, ~var_0.e)) % vec2<u32>(32u)));
    return 5567u;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = vec2<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], ~_wgslsmith_sub_u32(19284u, firstTrailingBit(~global2[_wgslsmith_index_u32(4294967295u, 24u)])));
    let var_1 = 21993u;
    let var_2 = abs(~u_input.a & countOneBits(0u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 16u)], -1000f), 214f))), ~vec2<i32>(~(~5699i), 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 0u), vec4<u32>(global2[_wgslsmith_index_u32(115155u, 24u)], 0u, 1u, 11766u)) % 32u)), abs(select(select(countOneBits(13427i), 17246i, !arg_1.x), -12778i, arg_0)), select(vec4<i32>(-1i) * -vec4<i32>(14925i, 0i, 2699i, 0i), select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(54856i, 11762i, 0i, -38610i), vec4<i32>(2147483647i, -22273i, 14539i, 26631i), ~vec4<i32>(3019i, 2147483647i, 22048i, 1i)), vec4<bool>(arg_0, arg_1.x, true, false)), !(abs(var_0.x) < _wgslsmith_sub_u32(2334u, var_0.x))));
    var var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_3(), ~0u), 25u)];
    return ~(~_wgslsmith_sub_u32(~0u, 16445u));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global3 = array<f32, 16>();
    global1 = 3801u <= arg_0.d;
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a, 291f)) + global3[_wgslsmith_index_u32(func_2(true, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), 16u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(435f + arg_0.b.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], -107f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(742f, global3[_wgslsmith_index_u32(4294967295u, 16u)]) * vec2<f32>(arg_0.c.a, arg_0.b.a))))));
    var var_1 = ~54915u;
    return Struct_2(countOneBits(u_input.a), Struct_1(-1982f, arg_0.b.b, -47102i, vec4<i32>(-1i, -arg_0.c.c, 2758i, arg_0.c.b.x)), arg_0.b, func_3(), firstLeadingBit(select(_wgslsmith_mod_vec2_u32(vec2<u32>(27571u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.e.x)), ~vec2<u32>(u_input.a, 55803u), select(vec2<bool>(true, true), vec2<bool>(true, false), false))) >> (~_wgslsmith_sub_vec2_u32(~arg_0.e, firstLeadingBit(arg_0.e)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    global3 = array<f32, 16>();
    let var_0 = _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(76635u, 16u)]));
    var var_1 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~883u, firstTrailingBit(1u)) << (global2[_wgslsmith_index_u32(58007u, 24u)] % 32u), 1u, _wgslsmith_mult_u32(min(u_input.a, ~global2[_wgslsmith_index_u32(594u, 24u)]), 46391u)), 25u)]);
    global0 = array<Struct_2, 25>();
    var var_2 = true;
    var var_3 = countOneBits(_wgslsmith_mult_i32(var_1.c.b.x, ~(~(var_1.b.d.x >> (0u % 32u)))));
    var_2 = (i32(-1i) * -var_1.b.b.x) > select(-47928i >> (var_1.d % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_1.b.d.wy, min(~var_1.c.d.xy, var_1.b.d.zz)), _wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(40747u, 16u)])) <= _wgslsmith_f_op_f32(step(-1128f, var_0)));
    var var_4 = vec4<i32>(-(_wgslsmith_add_i32(var_1.b.c, var_1.b.d.x) >> (global2[_wgslsmith_index_u32(var_1.e.x, 24u)] % 32u)), func_1(Struct_2(1u, func_1(func_1(global0[_wgslsmith_index_u32(var_1.d, 25u)])).c, Struct_1(-296f, countOneBits(var_1.b.b), -2147483647i, select(vec4<i32>(var_1.b.d.x, -1i, 18946i, 66135i), vec4<i32>(-2147483647i, 1i, var_1.c.c, -12162i), vec4<bool>(true, true, true, false))), ~func_1(global0[_wgslsmith_index_u32(1u, 25u)]).e.x, var_1.e)).b.d.x, -var_1.b.c, _wgslsmith_sub_i32(_wgslsmith_add_i32(-49418i, ~1i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1858f - -398f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.d, 4549u, global2[_wgslsmith_index_u32(873u, 24u)]), vec4<u32>(75593u, 68133u, var_1.e.x, global2[_wgslsmith_index_u32(4294967295u, 24u)])), 16u)])))), _wgslsmith_mult_vec4_u32(max(vec4<u32>(global2[_wgslsmith_index_u32(28154u, 24u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.d, 24u)], 24u)], 1u), vec4<u32>(u_input.a, 1u, var_1.e.x, var_1.d)) & ~(~vec4<u32>(u_input.a, 4294967295u, var_1.e.x, var_1.a)), vec4<u32>(select(~global2[_wgslsmith_index_u32(u_input.a, 24u)], var_1.a, false), countOneBits(~18974u), firstTrailingBit(17273u), 0u)));
}

