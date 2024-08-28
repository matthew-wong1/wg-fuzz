struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(-912f, 18648i, vec2<f32>(690f, 108f), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(23436u, 0u, 0u, 71223u))), Struct_2(260f, -40661i, vec2<f32>(-220f, 1336f), Struct_1(vec4<u32>(9176u, 11865u, 0u, 0u)), Struct_1(vec4<u32>(61663u, 1u, 4294967295u, 4294967295u)))), Struct_3(Struct_2(-489f, -1i, vec2<f32>(-2097f, -1768f), Struct_1(vec4<u32>(0u, 59573u, 116671u, 38762u)), Struct_1(vec4<u32>(0u, 17279u, 96793u, 1u))), Struct_2(-566f, i32(-2147483648), vec2<f32>(598f, 1249f), Struct_1(vec4<u32>(16739u, 60657u, 74715u, 1u)), Struct_1(vec4<u32>(38024u, 1u, 1u, 16572u)))), Struct_3(Struct_2(-3041f, 17449i, vec2<f32>(-1000f, 602f), Struct_1(vec4<u32>(1u, 32401u, 4294967295u, 1u)), Struct_1(vec4<u32>(27404u, 4294967295u, 74996u, 48690u))), Struct_2(1551f, i32(-2147483648), vec2<f32>(182f, -1850f), Struct_1(vec4<u32>(27936u, 4294967295u, 29761u, 44635u)), Struct_1(vec4<u32>(0u, 52868u, 0u, 4099u)))), Struct_3(Struct_2(-1445f, 15078i, vec2<f32>(-977f, -1000f), Struct_1(vec4<u32>(4294967295u, 78656u, 0u, 25954u)), Struct_1(vec4<u32>(102672u, 91853u, 9392u, 1u))), Struct_2(-215f, i32(-2147483648), vec2<f32>(-493f, -773f), Struct_1(vec4<u32>(37965u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(64724u, 19602u, 34667u, 38644u)))), Struct_3(Struct_2(4270f, 1i, vec2<f32>(725f, 1000f), Struct_1(vec4<u32>(102349u, 22274u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 23621u, 4294967295u, 1u))), Struct_2(-523f, i32(-2147483648), vec2<f32>(3208f, 1295f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 68316u)), Struct_1(vec4<u32>(0u, 51218u, 0u, 19197u)))), Struct_3(Struct_2(-680f, 2147483647i, vec2<f32>(-1615f, 1013f), Struct_1(vec4<u32>(39281u, 100234u, 14739u, 4294967295u)), Struct_1(vec4<u32>(71916u, 58624u, 4294967295u, 0u))), Struct_2(-392f, -36313i, vec2<f32>(186f, 1222f), Struct_1(vec4<u32>(1u, 4294967295u, 8927u, 0u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 25129u)))), Struct_3(Struct_2(-654f, -50215i, vec2<f32>(-1223f, -418f), Struct_1(vec4<u32>(4294967295u, 84802u, 38834u, 54682u)), Struct_1(vec4<u32>(4294967295u, 41478u, 3721u, 1u))), Struct_2(2022f, 1i, vec2<f32>(292f, 1013f), Struct_1(vec4<u32>(2333u, 18715u, 6221u, 0u)), Struct_1(vec4<u32>(0u, 65074u, 4294967295u, 0u)))), Struct_3(Struct_2(-1021f, 30396i, vec2<f32>(-1049f, -116f), Struct_1(vec4<u32>(0u, 4294967295u, 25182u, 132954u)), Struct_1(vec4<u32>(0u, 56130u, 31565u, 19399u))), Struct_2(767f, 2147483647i, vec2<f32>(-521f, -750f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 11101u)), Struct_1(vec4<u32>(1u, 91188u, 74617u, 37633u)))), Struct_3(Struct_2(633f, 2147483647i, vec2<f32>(-1855f, -1728f), Struct_1(vec4<u32>(45958u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(3252u, 35660u, 0u, 74159u))), Struct_2(987f, i32(-2147483648), vec2<f32>(1000f, 1452f), Struct_1(vec4<u32>(1u, 90196u, 42030u, 41732u)), Struct_1(vec4<u32>(1u, 1u, 66149u, 72933u)))), Struct_3(Struct_2(-1260f, 18399i, vec2<f32>(1601f, 1000f), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 8452u)), Struct_1(vec4<u32>(4294967295u, 7935u, 36011u, 17006u))), Struct_2(-449f, -1i, vec2<f32>(-751f, -1284f), Struct_1(vec4<u32>(54180u, 55456u, 104972u, 58092u)), Struct_1(vec4<u32>(4294967295u, 1u, 25992u, 1u)))), Struct_3(Struct_2(1899f, -22435i, vec2<f32>(-1000f, 1844f), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 52654u, 0u, 4294967295u))), Struct_2(-1723f, -9218i, vec2<f32>(-111f, 399f), Struct_1(vec4<u32>(75310u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 68091u, 29524u, 4294967295u)))), Struct_3(Struct_2(107f, -28430i, vec2<f32>(-2281f, 560f), Struct_1(vec4<u32>(0u, 23821u, 69105u, 6425u)), Struct_1(vec4<u32>(54483u, 112492u, 49719u, 931u))), Struct_2(247f, -21472i, vec2<f32>(849f, -2226f), Struct_1(vec4<u32>(67698u, 1u, 0u, 16480u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11583u)))), Struct_3(Struct_2(221f, 33383i, vec2<f32>(-2175f, 453f), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(vec4<u32>(43652u, 57704u, 54597u, 80205u))), Struct_2(727f, 2351i, vec2<f32>(582f, -691f), Struct_1(vec4<u32>(4294967295u, 3365u, 28213u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 68625u)))));

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 2370u, 97007u, 7689u)), Struct_1(vec4<u32>(30920u, 4294967295u, 30867u, 59881u)), Struct_1(vec4<u32>(24429u, 52635u, 4294967295u, 16u)), Struct_1(vec4<u32>(22147u, 1u, 1u, 104334u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(56475u, 55413u, 0u, 0u)), Struct_1(vec4<u32>(1807u, 1u, 38852u, 1u)), Struct_1(vec4<u32>(1u, 1u, 0u, 14442u)), Struct_1(vec4<u32>(1u, 45987u, 1u, 17339u)), Struct_1(vec4<u32>(37842u, 0u, 960u, 17574u)), Struct_1(vec4<u32>(39929u, 0u, 4294967295u, 81621u)), Struct_1(vec4<u32>(4294967295u, 29531u, 30359u, 12632u)), Struct_1(vec4<u32>(4294967295u, 1u, 56968u, 1u)), Struct_1(vec4<u32>(2320u, 27900u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 54262u, 72503u, 4294967295u)), Struct_1(vec4<u32>(18276u, 0u, 10384u, 0u)), Struct_1(vec4<u32>(93318u, 57243u, 9394u, 49353u)), Struct_1(vec4<u32>(1u, 4294967295u, 14050u, 42519u)), Struct_1(vec4<u32>(18974u, 15611u, 43610u, 0u)), Struct_1(vec4<u32>(0u, 0u, 59542u, 6761u)), Struct_1(vec4<u32>(4294967295u, 1u, 37198u, 9645u)), Struct_1(vec4<u32>(22937u, 0u, 72790u, 0u)), Struct_1(vec4<u32>(4294967295u, 1u, 10124u, 17527u)));

var<private> global3: array<vec4<f32>, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global0 = global2[_wgslsmith_index_u32(u_input.c.x, 24u)];
    var var_0 = ~76745u;
    let var_1 = Struct_1(global0.a);
    return 2220f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    var var_0 = !any(vec4<bool>(!all(vec3<bool>(true, true, false)), true, 54846u >= ~arg_1.b.e.a.x, false));
    let var_1 = global0.a.yw;
    global2 = array<Struct_1, 24>();
    let var_2 = vec4<bool>(false, any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), false)), false, any(vec3<bool>(u_input.b != u_input.b, true, true)));
    var var_3 = _wgslsmith_f_op_f32(339f * arg_1.b.c.x);
    return true;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_3, 13>();
    global3 = array<vec4<f32>, 9>();
    var var_0 = select(!vec2<bool>(true, 6827i >= min(0i, u_input.b)), vec2<bool>(true, select(false, all(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, true)))), vec2<bool>(true, true));
    var var_1 = select(vec2<bool>(!var_0.x, !var_0.x), !select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x), select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), false))), vec2<bool>(true, true));
    let var_2 = !vec2<bool>(true, func_4(vec4<f32>(-1064f, -255f, _wgslsmith_f_op_f32(func_3(vec2<bool>(true, var_0.x))), 1318f), global1[_wgslsmith_index_u32(4294967295u, 13u)]));
    return global0.a.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: f32) -> bool {
    let var_0 = Struct_4(abs(abs(8555i)) << ((_wgslsmith_div_u32(firstTrailingBit(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(73220u, arg_1, u_input.a.x, 0u))) ^ 2236u) % 32u), !(!(!(!vec4<bool>(arg_2, arg_2, false, arg_2)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(1u, 9u)], vec4<f32>(-1342f, -1000f, arg_3, arg_3))), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(121u, 9u)] * vec4<f32>(-1849f, arg_3, -1000f, arg_3))))))));
    var var_1 = Struct_1(~(~vec4<u32>(~0u, reverseBits(1u), u_input.c.x, ~0u)));
    let var_2 = firstTrailingBit(var_1.a.yxz | abs(global0.a.xxx)) << (vec3<u32>(var_1.a.x, arg_1, ~(~(~68240u))) % vec3<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(var_1.a, ~var_1.a, ~vec4<u32>(2001u, var_1.a.x, arg_0.x, 25002u) & ~firstTrailingBit(vec4<u32>(0u, 62467u, u_input.d.x, 60466u))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-2046f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f - arg_3)) - 1f)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b), firstLeadingBit(2147483647i), 9772i), -35626i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -10852i) << (~var_3.a.yw % vec2<u32>(32u)), -vec2<i32>(-20691i, u_input.b) ^ abs(vec2<i32>(-2147483647i, 1i)))), _wgslsmith_div_vec2_f32(var_0.c.yw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.zw))) + var_0.c.xw)), var_3, Struct_1(select(_wgslsmith_clamp_vec4_u32(~var_1.a, _wgslsmith_mult_vec4_u32(var_3.a, var_3.a), vec4<u32>(arg_0.x, var_2.x, var_1.a.x, 0u)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_1.a.x, 9988u, 71346u)), ~var_3.a), var_0.b)));
    return false;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = ~_wgslsmith_div_u32(arg_2.x, 4294967295u);
    global2 = array<Struct_1, 24>();
    let var_1 = global2[_wgslsmith_index_u32(abs(global0.a.x), 24u)];
    var var_2 = arg_0;
    let var_3 = vec3<u32>(var_1.a.x, 32831u, ~countOneBits(_wgslsmith_mult_u32(global0.a.x & 4294967295u, countOneBits(u_input.c.x))));
    return !(!func_5(~min(arg_1.xw, global0.a.zy), func_2(global2[_wgslsmith_index_u32(countOneBits(var_3.x), 24u)]), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-886f * 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(_wgslsmith_div_i32(5019i, ~_wgslsmith_mod_i32(-36838i, u_input.b)), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, global0.a.x), global0.a.x, ~4294967295u, 4294967295u) >> (global0.a % vec4<u32>(32u)), ~global0.a.ywy);
    global1 = array<Struct_3, 13>();
    var var_1 = _wgslsmith_mod_i32(1i, abs(22207i));
    var_0 = true;
    let var_2 = global1[_wgslsmith_index_u32(16347u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u));
}

