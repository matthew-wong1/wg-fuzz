struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<u32>(0u, 85432u), vec2<f32>(-703f, 290f), true, true);

var<private> global1: Struct_3 = Struct_3(true, true, vec2<bool>(true, false));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<bool>(false, true), Struct_1(107635u, vec2<u32>(40080u, 1u), vec2<f32>(412f, -445f), true, true), Struct_1(0u, vec2<u32>(20256u, 44750u), vec2<f32>(-1065f, 1253f), true, false), Struct_1(0u, vec2<u32>(4294967295u, 0u), vec2<f32>(-913f, 117f), true, false), Struct_1(4294967295u, vec2<u32>(39852u, 0u), vec2<f32>(1723f, 329f), false, false)), Struct_2(vec2<bool>(true, true), Struct_1(91748u, vec2<u32>(1u, 1u), vec2<f32>(-141f, 142f), false, false), Struct_1(25992u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1520f, -768f), true, false), Struct_1(39315u, vec2<u32>(1u, 4294967295u), vec2<f32>(134f, -2223f), false, false), Struct_1(44069u, vec2<u32>(26845u, 4294967295u), vec2<f32>(-484f, 1319f), false, true)), Struct_2(vec2<bool>(true, true), Struct_1(0u, vec2<u32>(4294967295u, 63303u), vec2<f32>(-1138f, 919f), true, false), Struct_1(46595u, vec2<u32>(56770u, 33778u), vec2<f32>(-1443f, 245f), false, true), Struct_1(1u, vec2<u32>(1u, 91636u), vec2<f32>(555f, -705f), true, false), Struct_1(1u, vec2<u32>(0u, 15767u), vec2<f32>(1186f, -396f), false, false)), Struct_2(vec2<bool>(false, true), Struct_1(19990u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1052f, 614f), false, true), Struct_1(36303u, vec2<u32>(0u, 1u), vec2<f32>(553f, 448f), false, true), Struct_1(1u, vec2<u32>(29242u, 53132u), vec2<f32>(-276f, -1606f), false, true), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), vec2<f32>(-1000f, -317f), false, false)), Struct_2(vec2<bool>(true, false), Struct_1(29943u, vec2<u32>(0u, 63463u), vec2<f32>(749f, 394f), true, false), Struct_1(0u, vec2<u32>(66645u, 20851u), vec2<f32>(332f, 571f), true, false), Struct_1(13522u, vec2<u32>(1u, 1u), vec2<f32>(-1008f, -299f), false, false), Struct_1(25268u, vec2<u32>(95352u, 1u), vec2<f32>(846f, 2238f), true, true)), Struct_2(vec2<bool>(false, false), Struct_1(43741u, vec2<u32>(4294967295u, 86551u), vec2<f32>(-1806f, 1322f), false, true), Struct_1(1u, vec2<u32>(1u, 66613u), vec2<f32>(295f, 461f), true, true), Struct_1(47882u, vec2<u32>(1156u, 54935u), vec2<f32>(401f, 1000f), true, false), Struct_1(57105u, vec2<u32>(2709u, 1u), vec2<f32>(1215f, -418f), true, true)), Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, vec2<u32>(10420u, 42306u), vec2<f32>(1456f, 657f), true, true), Struct_1(44096u, vec2<u32>(0u, 117350u), vec2<f32>(1812f, 406f), true, false), Struct_1(0u, vec2<u32>(0u, 73342u), vec2<f32>(1088f, -327f), true, false), Struct_1(1u, vec2<u32>(84041u, 20106u), vec2<f32>(790f, -1566f), false, false)), Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, vec2<u32>(6379u, 28952u), vec2<f32>(1000f, -278f), true, true), Struct_1(0u, vec2<u32>(4294967295u, 32401u), vec2<f32>(-112f, 367f), true, false), Struct_1(116934u, vec2<u32>(35249u, 85370u), vec2<f32>(570f, 410f), false, false), Struct_1(4294967295u, vec2<u32>(0u, 0u), vec2<f32>(827f, 1368f), true, false)), Struct_2(vec2<bool>(true, true), Struct_1(1u, vec2<u32>(77569u, 42620u), vec2<f32>(1188f, -371f), true, false), Struct_1(63713u, vec2<u32>(13494u, 4341u), vec2<f32>(-175f, -578f), true, true), Struct_1(20080u, vec2<u32>(52964u, 4294967295u), vec2<f32>(-1000f, 435f), false, false), Struct_1(59494u, vec2<u32>(4294967295u, 8911u), vec2<f32>(316f, -1095f), false, false)), Struct_2(vec2<bool>(true, true), Struct_1(9421u, vec2<u32>(0u, 0u), vec2<f32>(-332f, 376f), true, true), Struct_1(1u, vec2<u32>(0u, 1u), vec2<f32>(-579f, -927f), true, false), Struct_1(1u, vec2<u32>(1u, 6812u), vec2<f32>(224f, -968f), false, false), Struct_1(0u, vec2<u32>(84976u, 1366u), vec2<f32>(-226f, -913f), false, true)), Struct_2(vec2<bool>(false, true), Struct_1(30835u, vec2<u32>(0u, 107375u), vec2<f32>(288f, -622f), false, true), Struct_1(29176u, vec2<u32>(0u, 1u), vec2<f32>(-1000f, 914f), true, true), Struct_1(32122u, vec2<u32>(1u, 4294967295u), vec2<f32>(582f, 1206f), true, false), Struct_1(49794u, vec2<u32>(4294967295u, 1u), vec2<f32>(-937f, -2379f), false, true)), Struct_2(vec2<bool>(false, true), Struct_1(13039u, vec2<u32>(4294967295u, 1u), vec2<f32>(-1000f, -1158f), true, false), Struct_1(4294967295u, vec2<u32>(0u, 41138u), vec2<f32>(-124f, 2493f), true, true), Struct_1(0u, vec2<u32>(4294967295u, 73336u), vec2<f32>(-176f, 532f), false, true), Struct_1(44751u, vec2<u32>(1u, 4294967295u), vec2<f32>(1000f, 375f), false, false)), Struct_2(vec2<bool>(false, true), Struct_1(4155u, vec2<u32>(41259u, 21398u), vec2<f32>(-1048f, 1590f), true, false), Struct_1(6939u, vec2<u32>(2674u, 23765u), vec2<f32>(-1326f, 1435f), false, false), Struct_1(4294967295u, vec2<u32>(1u, 0u), vec2<f32>(-2055f, -331f), true, true), Struct_1(36689u, vec2<u32>(10708u, 4294967295u), vec2<f32>(1000f, 1249f), true, false)), Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, vec2<u32>(472u, 72651u), vec2<f32>(-1073f, -533f), true, false), Struct_1(1u, vec2<u32>(29692u, 10628u), vec2<f32>(1350f, 1092f), true, false), Struct_1(30962u, vec2<u32>(69237u, 1858u), vec2<f32>(-226f, -146f), false, true), Struct_1(0u, vec2<u32>(12845u, 1u), vec2<f32>(1061f, 875f), false, true)), Struct_2(vec2<bool>(true, false), Struct_1(0u, vec2<u32>(70106u, 35452u), vec2<f32>(498f, -1386f), true, false), Struct_1(4294967295u, vec2<u32>(1u, 1u), vec2<f32>(-1218f, -495f), false, true), Struct_1(9862u, vec2<u32>(22433u, 1u), vec2<f32>(-694f, -1613f), true, true), Struct_1(1865u, vec2<u32>(26318u, 4294967295u), vec2<f32>(-870f, 316f), false, false)), Struct_2(vec2<bool>(true, false), Struct_1(126470u, vec2<u32>(0u, 35440u), vec2<f32>(143f, 1480f), false, false), Struct_1(4294967295u, vec2<u32>(1u, 4294967295u), vec2<f32>(-1585f, -1302f), true, false), Struct_1(4294967295u, vec2<u32>(38310u, 64154u), vec2<f32>(-1898f, -1000f), true, false), Struct_1(4294967295u, vec2<u32>(1u, 0u), vec2<f32>(1328f, 420f), false, true)), Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, vec2<u32>(46866u, 4294967295u), vec2<f32>(-390f, 602f), false, false), Struct_1(16113u, vec2<u32>(0u, 32108u), vec2<f32>(-359f, -329f), true, false), Struct_1(77608u, vec2<u32>(22036u, 0u), vec2<f32>(-1000f, -603f), true, false), Struct_1(0u, vec2<u32>(4294967295u, 29480u), vec2<f32>(-953f, 767f), true, false)), Struct_2(vec2<bool>(false, true), Struct_1(1298u, vec2<u32>(37267u, 31739u), vec2<f32>(2150f, 247f), true, true), Struct_1(4294967295u, vec2<u32>(4294967295u, 88993u), vec2<f32>(834f, 208f), false, false), Struct_1(24467u, vec2<u32>(0u, 0u), vec2<f32>(1193f, -1241f), false, false), Struct_1(28224u, vec2<u32>(1u, 1u), vec2<f32>(1175f, 733f), true, true)), Struct_2(vec2<bool>(true, true), Struct_1(1u, vec2<u32>(1u, 4294967295u), vec2<f32>(-137f, -1742f), false, false), Struct_1(0u, vec2<u32>(1u, 91509u), vec2<f32>(-941f, -1982f), true, false), Struct_1(4294967295u, vec2<u32>(0u, 10247u), vec2<f32>(-205f, 489f), false, true), Struct_1(42465u, vec2<u32>(112922u, 40715u), vec2<f32>(-315f, 486f), true, true)), Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, vec2<u32>(4294967295u, 43941u), vec2<f32>(-542f, 584f), true, false), Struct_1(4294967295u, vec2<u32>(0u, 4294967295u), vec2<f32>(-1285f, 136f), false, true), Struct_1(0u, vec2<u32>(76335u, 0u), vec2<f32>(-1402f, 859f), false, true), Struct_1(9760u, vec2<u32>(1u, 4294967295u), vec2<f32>(1391f, 799f), false, true)), Struct_2(vec2<bool>(false, false), Struct_1(70970u, vec2<u32>(16875u, 21319u), vec2<f32>(1539f, -1153f), false, true), Struct_1(0u, vec2<u32>(0u, 1u), vec2<f32>(-1055f, 506f), false, true), Struct_1(55123u, vec2<u32>(0u, 4294967295u), vec2<f32>(753f, 557f), true, false), Struct_1(0u, vec2<u32>(1314u, 0u), vec2<f32>(521f, 213f), true, true)), Struct_2(vec2<bool>(false, false), Struct_1(22346u, vec2<u32>(81099u, 0u), vec2<f32>(144f, 1000f), true, false), Struct_1(83686u, vec2<u32>(33682u, 0u), vec2<f32>(-1245f, 2214f), true, false), Struct_1(19298u, vec2<u32>(4989u, 3865u), vec2<f32>(750f, -308f), true, false), Struct_1(70179u, vec2<u32>(0u, 0u), vec2<f32>(-157f, 354f), false, false)), Struct_2(vec2<bool>(false, false), Struct_1(29335u, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1138f, -121f), true, false), Struct_1(1u, vec2<u32>(1u, 31132u), vec2<f32>(111f, -1000f), true, true), Struct_1(58820u, vec2<u32>(1u, 5653u), vec2<f32>(1171f, 373f), true, true), Struct_1(0u, vec2<u32>(91444u, 19380u), vec2<f32>(247f, 566f), true, false)));

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    return 4294967295u | ~(~abs(u_input.c) & _wgslsmith_add_u32(~6858u, _wgslsmith_sub_u32(global0.a, 0u)));
}

fn func_1() -> vec4<f32> {
    global3 = array<Struct_2, 23>();
    var var_0 = func_2(_wgslsmith_f_op_f32(step(-592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)))), vec4<u32>(_wgslsmith_mod_u32(reverseBits(global0.b.x), _wgslsmith_add_u32(23976u, 29058u)) >> (_wgslsmith_mod_u32(46102u, _wgslsmith_dot_vec3_u32(u_input.a.yzw, u_input.a.wzw)) % 32u), u_input.a.x, ~42819u, u_input.c));
    global4 = u_input.b.x;
    var var_1 = !(!(true & global0.d));
    let var_2 = global0.c.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(step(-252f, global0.c.x))), _wgslsmith_f_op_f32(2097f - _wgslsmith_f_op_f32(max(2578f, -1058f)))))), _wgslsmith_f_op_f32(645f + -1056f), _wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(645f + global0.c.x) + global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.c.x)) + _wgslsmith_f_op_f32(-global0.c.x))))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    global4 = 16405i;
    global4 = -(~u_input.b.x);
    let var_0 = 4294967295u;
    let var_1 = true;
    let var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(-2147483647i), u_input.b.x, i32(-1i) * -2147483647i), ~(-vec3<i32>(4191i, u_input.e, 1i)));
    return Struct_1(min(_wgslsmith_dot_vec3_u32(u_input.a.zxz ^ (u_input.a.yyx | vec3<u32>(0u, u_input.d.x, var_0)), vec3<u32>(abs(0u), reverseBits(103337u), 4294967295u)), 1u), vec2<u32>(~global0.b.x, 0u), global0.c, false, !(arg_0 != _wgslsmith_f_op_f32(-arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(global1.c, select(vec2<bool>(false, true), select(vec2<bool>(global0.e, false), vec2<bool>(true, global1.a), global2.x && global2.x), global1.c), global2.x), func_3(_wgslsmith_f_op_f32(global0.c.x + -314f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 780f, global0.c.x) + vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 470f)), vec4<f32>(-753f, global0.c.x, 177f, global0.c.x), true)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, -243f, global0.c.x, global0.c.x)))))), Struct_1(u_input.a.x | (1u | max(u_input.a.x, 8021u)), global0.b, _wgslsmith_f_op_vec2_f32(-global0.c), !global0.e, all(vec3<bool>(true, true, any(vec4<bool>(true, global0.d, false, global1.b))))), func_3(global0.c.x, vec4<f32>(-645f, _wgslsmith_f_op_f32(floor(-634f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1171f)) + _wgslsmith_f_op_f32(-global0.c.x)), -1439f)));
    var var_1 = Struct_2(select(!vec2<bool>(true, !var_0.c.e), global1.c, !global1.a), var_0.e, Struct_1(41909u, vec2<u32>(global0.b.x, ~var_0.c.b.x), _wgslsmith_f_op_vec2_f32(var_0.c.c * global0.c), global0.d, global1.a), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(648f)))) * 1000f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-199f, _wgslsmith_f_op_f32(ceil(245f)), -309f, _wgslsmith_f_op_f32(-var_0.c.c.x))))), Struct_1(func_2(_wgslsmith_f_op_vec4_f32(func_1()).x, u_input.a), vec2<u32>(1u, ~global0.a) | vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2488f, 1015f)) + var_0.b.c) * var_0.d.c), !any(select(vec3<bool>(true, global0.d, global2.x), vec3<bool>(global2.x, false, false), false)), _wgslsmith_f_op_f32(ceil(-332f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.c.x))));
    global0 = var_0.c;
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b.c.x, 108f))), _wgslsmith_f_op_f32(f32(-1f) * -168f)), u_input.a), reverseBits(countOneBits(4294967295u))), 23u)];
    var var_2 = Struct_2(!vec2<bool>(var_0.e.d, true), func_3(_wgslsmith_f_op_f32(floor(286f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c.x, 254f, var_1.c.c.x, var_1.b.c.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.e.c.x, var_0.e.c.x, var_1.c.c.x, var_1.c.c.x), vec4<f32>(911f, -173f, global0.c.x, global0.c.x), vec4<bool>(var_1.c.d, global1.c.x, global0.d, true))))))), Struct_1(~17195u, abs(firstLeadingBit(vec2<u32>(u_input.d.x, 25921u))), _wgslsmith_f_op_vec2_f32(max(global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.c.x, 236f) - var_1.d.c) + vec2<f32>(var_1.b.c.x, 1236f)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c.x) + _wgslsmith_div_f32(var_0.c.c.x, var_0.e.c.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c.x * 1267f), _wgslsmith_f_op_f32(-525f + var_0.e.c.x))), Struct_1(global0.b.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10349u, 3928u, 61555u, var_0.c.b.x), u_input.a), 54484u) & ~(vec2<u32>(0u, global0.b.x) ^ var_0.d.b), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), var_0.e.c.x), global0.c, global1.a)), true, true), var_0.c);
    var_2 = Struct_2(!vec2<bool>(true, !(!global0.d)), var_0.e, Struct_1(var_2.c.b.x, _wgslsmith_mult_vec2_u32(var_1.c.b & vec2<u32>(global0.b.x, global0.a), ~global0.b) | ~(~vec2<u32>(26423u, var_2.e.b.x)), var_1.d.c, true, global1.a), var_1.c, func_3(_wgslsmith_f_op_f32(-var_1.b.c.x), vec4<f32>(671f, var_0.c.c.x, var_1.d.c.x, _wgslsmith_f_op_f32(floor(global0.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1160f)) * _wgslsmith_f_op_f32(step(-126f, -1317f)))))));
}

