struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec4<f32>(1012f, -1346f, -1518f, 2695f), true, vec4<u32>(29847u, 1407u, 4294967295u, 14414u)), vec2<f32>(-758f, 1000f), vec3<u32>(1u, 1u, 0u), Struct_3(vec2<f32>(-424f, -1171f), vec3<bool>(true, true, false), Struct_2(vec4<u32>(0u, 0u, 48879u, 0u), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec4<f32>(100f, 507f, 993f, 678f), false, vec4<u32>(1u, 66723u, 0u, 1u))))), Struct_5(Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec4<f32>(-565f, 559f, -306f, 428f), false, vec4<u32>(0u, 13125u, 4294967295u, 23213u)), vec2<f32>(-1354f, 2870f), vec3<u32>(40946u, 1u, 74157u), Struct_3(vec2<f32>(1389f, 168f), vec3<bool>(false, true, false), Struct_2(vec4<u32>(23694u, 0u, 22066u, 1u), vec3<u32>(1u, 15750u, 1u), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, false), vec4<f32>(1757f, -1717f, 541f, -1399f), true, vec4<u32>(1u, 32553u, 4294967295u, 78845u))))), Struct_5(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec4<f32>(-1326f, -212f, 217f, -1546f), false, vec4<u32>(1u, 17313u, 1u, 26154u)), vec2<f32>(-1055f, 421f), vec3<u32>(14741u, 1u, 0u), Struct_3(vec2<f32>(2177f, 1243f), vec3<bool>(true, false, false), Struct_2(vec4<u32>(4294967295u, 0u, 48230u, 0u), vec3<u32>(0u, 4294967295u, 43188u), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec4<f32>(742f, -1923f, -431f, 704f), false, vec4<u32>(30282u, 45195u, 37429u, 1u))))), Struct_5(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec4<f32>(1254f, -1000f, -883f, 476f), true, vec4<u32>(13007u, 1u, 4294967295u, 1u)), vec2<f32>(-516f, 574f), vec3<u32>(5520u, 104983u, 44151u), Struct_3(vec2<f32>(212f, -1452f), vec3<bool>(false, true, true), Struct_2(vec4<u32>(9048u, 4294967295u, 1u, 6202u), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec4<f32>(452f, -168f, -1000f, 540f), true, vec4<u32>(0u, 0u, 79665u, 17399u))))), Struct_5(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec4<f32>(364f, 1492f, -1139f, -219f), true, vec4<u32>(4294967295u, 4294967295u, 103481u, 14867u)), vec2<f32>(-1722f, -879f), vec3<u32>(0u, 11376u, 24623u), Struct_3(vec2<f32>(-429f, 587f), vec3<bool>(false, false, true), Struct_2(vec4<u32>(27750u, 0u, 0u, 0u), vec3<u32>(0u, 4294967295u, 1u), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, true), vec4<f32>(597f, -1284f, 1112f, -278f), true, vec4<u32>(0u, 1u, 4294967295u, 1u))))), Struct_5(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec4<f32>(-1000f, -274f, 686f, 1158f), false, vec4<u32>(55343u, 12852u, 9313u, 4294967295u)), vec2<f32>(1297f, 864f), vec3<u32>(4294967295u, 15356u, 29788u), Struct_3(vec2<f32>(140f, -701f), vec3<bool>(false, true, false), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 34211u), vec3<u32>(4294967295u, 76620u, 1u), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec4<f32>(-115f, -420f, 246f, 557f), true, vec4<u32>(0u, 0u, 8134u, 1u))))), Struct_5(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec4<f32>(-236f, -178f, 1577f, 626f), false, vec4<u32>(0u, 24589u, 20914u, 4294967295u)), vec2<f32>(453f, 1201f), vec3<u32>(48379u, 55311u, 13112u), Struct_3(vec2<f32>(-112f, 660f), vec3<bool>(true, false, true), Struct_2(vec4<u32>(1u, 4294967295u, 7305u, 1u), vec3<u32>(26199u, 27517u, 13831u), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec4<f32>(1034f, 821f, 699f, 152f), false, vec4<u32>(145272u, 1u, 12058u, 1u))))), Struct_5(Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(false, false), vec4<f32>(-697f, -374f, -613f, -648f), true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), vec2<f32>(-1813f, -202f), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_3(vec2<f32>(-701f, 897f), vec3<bool>(false, false, false), Struct_2(vec4<u32>(16119u, 11970u, 1u, 4294967295u), vec3<u32>(26948u, 8089u, 112252u), Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec4<f32>(207f, -1010f, 358f, 1146f), true, vec4<u32>(10057u, 4294967295u, 1u, 4294967295u))))), Struct_5(Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, false), vec4<f32>(153f, -1016f, 718f, 586f), true, vec4<u32>(4294967295u, 1u, 32887u, 1u)), vec2<f32>(1362f, -661f), vec3<u32>(18767u, 0u, 4294967295u), Struct_3(vec2<f32>(1621f, 281f), vec3<bool>(false, true, false), Struct_2(vec4<u32>(87632u, 59404u, 31549u, 17226u), vec3<u32>(4294967295u, 1u, 68438u), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec4<f32>(1360f, -1327f, -1060f, 1000f), false, vec4<u32>(30501u, 1u, 0u, 1816u))))), Struct_5(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec4<f32>(1291f, 816f, 115f, 387f), false, vec4<u32>(53949u, 4294967295u, 0u, 1u)), vec2<f32>(1806f, 183f), vec3<u32>(0u, 15912u, 17901u), Struct_3(vec2<f32>(-385f, -1431f), vec3<bool>(true, false, false), Struct_2(vec4<u32>(0u, 0u, 9176u, 49675u), vec3<u32>(1u, 45343u, 0u), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, true), vec4<f32>(510f, -776f, 816f, 1111f), true, vec4<u32>(1u, 23258u, 1u, 34132u))))), Struct_5(Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(true, true), vec4<f32>(-1802f, -861f, -912f, 557f), false, vec4<u32>(17689u, 0u, 1724u, 8095u)), vec2<f32>(342f, -163f), vec3<u32>(0u, 1u, 21015u), Struct_3(vec2<f32>(-1392f, 2407f), vec3<bool>(false, false, true), Struct_2(vec4<u32>(0u, 4294967295u, 17994u, 18874u), vec3<u32>(22243u, 0u, 57032u), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec4<f32>(819f, 117f, -1000f, -2393f), false, vec4<u32>(0u, 32182u, 4885u, 4294967295u))))), Struct_5(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec4<f32>(-1308f, 1420f, 286f, 318f), false, vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), vec2<f32>(-1837f, 254f), vec3<u32>(12155u, 0u, 38267u), Struct_3(vec2<f32>(680f, 612f), vec3<bool>(true, true, true), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 43442u), vec3<u32>(18495u, 1u, 65933u), Struct_1(vec4<bool>(false, true, true, false), vec2<bool>(false, false), vec4<f32>(-799f, 778f, -880f, -1073f), true, vec4<u32>(3964u, 4294967295u, 1u, 15213u))))));

var<private> global1: array<Struct_2, 10>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec3<u32>, 1>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = -abs(1i);
    let var_1 = 141482u;
    var var_2 = global0[_wgslsmith_index_u32(~0u, 12u)];
    let var_3 = _wgslsmith_mult_u32(~(~var_1), _wgslsmith_mod_u32(~var_1, 1u));
    var_2 = Struct_5(var_2.d.c.c, vec2<f32>(378f, _wgslsmith_f_op_f32(abs(arg_0.c.c.x))), ~((~vec3<u32>(arg_0.b.x, var_1, u_input.b) >> (vec3<u32>(0u, arg_0.b.x, 61021u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, arg_0.a.x, 1u), vec3<u32>(0u, 6221u, 1u)) % vec3<u32>(32u))), var_2.d);
    return any(vec2<bool>(false, !any(!var_2.a.a)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> Struct_4 {
    global1 = array<Struct_2, 10>();
    var var_0 = u_input.b;
    global2 = vec2<bool>(global2.x, all(!vec2<bool>(false, func_3(Struct_2(vec4<u32>(u_input.b, 0u, u_input.a.x, 1u), u_input.a.zxz, Struct_1(arg_2, arg_2.yx, vec4<f32>(1643f, -1145f, arg_1, 808f), arg_2.x, u_input.a))))));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(~(arg_0 << (1u % 32u)) | _wgslsmith_mult_u32(min(29435u, 20448u), max(4294967295u, arg_0))) ^ ~arg_0, 12u)];
    global1 = array<Struct_2, 10>();
    return Struct_4((u_input.c.x << (1u % 32u)) | ~(-1i), Struct_1(!vec4<bool>(all(vec2<bool>(arg_2.x, global2.x)), arg_2.x, global2.x & true, global2.x | global2.x), var_1.d.b.zy, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-375f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, var_1.d.a.x))), _wgslsmith_f_op_f32(var_1.d.c.c.c.x * _wgslsmith_div_f32(arg_1, var_1.a.c.x)), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(round(var_1.a.c.x)))), true, u_input.a), Struct_2(vec4<u32>(arg_0, 37556u, _wgslsmith_mult_u32(11971u, var_1.a.e.x), ~1u) ^ firstLeadingBit(abs(u_input.a)), var_1.c, Struct_1(select(vec4<bool>(var_1.a.b.x, global2.x, var_1.a.d, global2.x), var_1.d.c.c.a, global2.x), vec2<bool>(func_3(var_1.d.c), all(vec2<bool>(var_1.d.b.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, -158f, -1304f, 474f)), var_1.d.c.c.a.x, u_input.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = func_2(u_input.a.x, _wgslsmith_f_op_f32(floor(func_2(~4233u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c.c.c.x), -1121f)), vec4<bool>(all(vec4<bool>(arg_2.b.a.x, global2.x, false, true)), true, true, global2.x == arg_2.b.d)).c.c.c.x)), vec4<bool>(any(vec2<bool>(true, global2.x)), !(firstTrailingBit(arg_2.b.e.x) < ~0u), func_2(1u, _wgslsmith_f_op_f32(trunc(arg_1)), !arg_2.c.c.a).a == -1i, select(_wgslsmith_f_op_f32(exp2(arg_1)) >= 1352f, func_2(reverseBits(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -838f), vec4<bool>(global2.x, false, global2.x, true)).c.c.b.x, global2.x))).c.c;
    var var_1 = vec2<bool>(true, (arg_0.x == (~arg_2.a << ((arg_2.c.a.x | 56725u) % 32u))) && false);
    global1 = array<Struct_2, 10>();
    let var_2 = func_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, u_input.b, var_0.e.x, var_0.e.x), var_0.e | vec4<u32>(var_0.e.x, arg_2.c.c.e.x, 63349u, arg_2.c.a.x), var_0.a) ^ u_input.a, abs(vec4<u32>(17165u, arg_2.c.c.e.x, var_0.e.x, var_0.e.x) & vec4<u32>(arg_2.b.e.x, u_input.a.x, u_input.a.x, 26688u))), var_0.c.x, vec4<bool>(true || (false && func_3(Struct_2(vec4<u32>(u_input.b, 3640u, var_0.e.x, arg_2.b.e.x), global3[_wgslsmith_index_u32(arg_2.b.e.x, 1u)], var_0))), true, true, global2.x)).b;
    global3 = array<vec3<u32>, 1>();
    return Struct_1(!select(select(!var_0.a, var_2.a, !vec4<bool>(true, true, var_2.a.x, var_2.d)), vec4<bool>(!var_1.x, false, any(vec2<bool>(false, true)), false), any(vec3<bool>(true, true, var_0.d))), !(!func_2(~52563u, _wgslsmith_f_op_f32(-234f + -845f), !vec4<bool>(global2.x, false, true, true)).b.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(663f, var_2.c.x, -811f, -494f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, arg_1, 2089f, -1222f)))))), !any(!func_2(var_0.e.x, 1029f, vec4<bool>(var_0.b.x, false, arg_2.b.b.x, false)).b.a), firstLeadingBit(select(var_2.e << (vec4<u32>(arg_2.b.e.x, var_2.e.x, 4294967295u, u_input.b) % vec4<u32>(32u)), u_input.a, vec4<bool>(true, false, true, false))) | vec4<u32>(_wgslsmith_mod_u32(arg_2.c.c.e.x, 1u), var_0.e.x, firstLeadingBit(~15196u), 129704u));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.c.c.x), _wgslsmith_f_op_f32(867f * -203f))))), vec3<bool>(all(select(vec3<bool>(false, arg_1.c.c.d, arg_0.x), select(arg_1.b.a.zzz, arg_1.c.c.a.wyw, arg_1.b.a.xzw), select(arg_1.b.a.wxx, arg_1.b.a.xww, vec3<bool>(true, true, arg_0.x)))), arg_1.b.d, !(~u_input.b <= 0u)), func_2((u_input.a.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.e.x, 21856u, 37937u), arg_1.b.e.zwy)) << ((17368u << (1u % 32u)) % 32u), _wgslsmith_f_op_f32(step(func_4(u_input.c, 1f, Struct_4(u_input.c.x, arg_1.c.c, Struct_2(vec4<u32>(58285u, arg_1.b.e.x, 4294967295u, 1u), global3[_wgslsmith_index_u32(0u, 1u)], arg_1.b))).c.x, -1000f)), !(!(!vec4<bool>(arg_1.b.d, false, true, global2.x)))).c);
    let var_1 = u_input.a.zy;
    global3 = array<vec3<u32>, 1>();
    var var_2 = func_4(select(_wgslsmith_mod_vec4_i32(u_input.c, reverseBits(vec4<i32>(-2147483647i, -42473i, -4749i, u_input.c.x))), u_input.c, (arg_1.b.d & var_0.c.c.b.x) & true), -1682f, arg_1).d | (any(!vec4<bool>(var_0.c.c.b.x, false, false, true)) == true);
    let var_3 = func_4(~u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.c.c.c.x)), 919f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.b.c.x)))))), var_0.b.x)), arg_1);
    return arg_1.c.c.c;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_1(select(select(vec4<bool>(true, global2.x, 1408f >= arg_0, false), select(!vec4<bool>(global2.x, global2.x, global2.x, false), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(false, global2.x, true, true), vec4<bool>(true, false, true, false), vec4<bool>(global2.x, global2.x, global2.x, false))), select(!vec4<bool>(false, false, false, global2.x), vec4<bool>(true, global2.x, false, true), true)), vec4<bool>(true, u_input.c.x >= ~39399i, true, any(!vec2<bool>(true, global2.x))), all(vec2<bool>(true, global2.x))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(func_5(!vec2<bool>(arg_0 > arg_0, global2.x && false), Struct_4(-18478i, func_4(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i)), arg_0, func_2(34541u, arg_0, vec4<bool>(global2.x, true, global2.x, global2.x))), Struct_2(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(arg_1, 75234u, 63482u, u_input.a.x)), u_input.a.yzz, func_4(u_input.c, arg_0, Struct_4(u_input.c.x, Struct_1(vec4<bool>(false, global2.x, false, false), vec2<bool>(global2.x, global2.x), vec4<f32>(3600f, arg_0, arg_0, arg_0), true, u_input.a), global1[_wgslsmith_index_u32(u_input.a.x, 10u)])))))), max(countOneBits(8430i), 1i) <= abs(abs(~u_input.c.x)), u_input.a);
    global2 = vec2<bool>(true, true);
    let var_1 = Struct_5(func_2(u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -917f)), _wgslsmith_f_op_f32(730f + -1136f)), vec4<bool>(!global2.x, true, func_3(Struct_2(vec4<u32>(62908u, 1u, var_0.e.x, 47394u), u_input.a.wyw, Struct_1(var_0.a, vec2<bool>(true, global2.x), vec4<f32>(var_0.c.x, arg_0, 706f, arg_0), global2.x, vec4<u32>(5438u, arg_1, 31327u, 4294967295u)))), true)).b, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(ceil(var_0.c.x))), u_input.a.zxw, Struct_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(747f, -1000f), _wgslsmith_f_op_f32(ceil(arg_0))))), !vec3<bool>(var_0.b.x, global2.x, var_0.d), global1[_wgslsmith_index_u32(0u, 10u)]));
    global3 = array<vec3<u32>, 1>();
    global2 = vec2<bool>(false, true);
    return func_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(23779u, ~var_1.a.e.x), 37793u), _wgslsmith_f_op_f32(466f * 1895f), var_0.a);
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_5(arg_2.b.b, arg_2)).x, _wgslsmith_f_op_f32(floor(-2738f)))), arg_2.b.a.xwz, global1[_wgslsmith_index_u32(4294967295u, 10u)]);
    global1 = array<Struct_2, 10>();
    var var_1 = ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 33362u, arg_3.e.x, arg_2.b.e.x) | ~arg_2.b.e, ~func_2(arg_2.b.e.x, arg_3.c.x, vec4<bool>(arg_2.b.b.x, global2.x, false, var_0.c.c.b.x)).b.e, var_0.c.a));
    let var_2 = vec3<i32>(2147483647i, -reverseBits(1i), 9586i);
    global0 = array<Struct_5, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1322f, -2357f, var_0.b.x))))));
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> i32 {
    var var_0 = u_input.a.zw | u_input.a.wx;
    var var_1 = false & arg_3.x;
    global2 = vec2<bool>(!arg_3.x, !(!any(select(arg_3.ww, vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x)))));
    var var_2 = Struct_5(func_2(_wgslsmith_sub_u32(u_input.a.x, ~31173u), 906f, !(!arg_3)).b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1133f) + vec2<f32>(-384f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2527f, 1000f)))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1000f), vec2<f32>(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), arg_3.ww)), u_input.a.wxx, Struct_3(vec2<f32>(arg_1, _wgslsmith_f_op_vec4_f32(func_5(select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(true, global2.x), global2.x), func_2(15644u, arg_1, arg_3))).x), vec3<bool>(true, arg_3.x, !(false & global2.x)), global1[_wgslsmith_index_u32(var_0.x << (~62024u % 32u), 10u)]));
    var var_3 = func_1(_wgslsmith_f_op_f32(-var_2.b.x), 1u).c.c;
    return func_1(var_3.c.x, func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 22908u, 0u), _wgslsmith_div_vec4_u32(var_3.e, vec4<u32>(4878u, var_2.d.c.c.e.x, var_0.x, var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_3.c.x)), func_1(_wgslsmith_div_f32(953f, 338f), arg_2.x ^ 1u).b.a).b.e.x | _wgslsmith_div_u32(select(47046u, u_input.b, true), ~(1u ^ arg_0))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(false, global2.x);
    var var_0 = func_7(u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_6(firstLeadingBit(~u_input.c.yz), u_input.b & ~33749u, func_1(408f, _wgslsmith_mult_u32(u_input.b, 0u)), Struct_1(!vec4<bool>(global2.x, true, global2.x, true), func_1(-1485f, 4294967295u).c.c.b, func_4(vec4<i32>(u_input.c.x, -1i, 33263i, 37973i), -203f, Struct_4(1i, Struct_1(vec4<bool>(true, global2.x, global2.x, global2.x), vec2<bool>(false, global2.x), vec4<f32>(1643f, -143f, -1083f, -543f), false, u_input.a), global1[_wgslsmith_index_u32(4294967295u, 10u)])).c, false, vec4<u32>(u_input.b, 0u, 0u, 1u)))))), u_input.a.yw, vec4<bool>(!(!func_4(vec4<i32>(4406i, u_input.c.x, u_input.c.x, u_input.c.x), -302f, Struct_4(u_input.c.x, Struct_1(vec4<bool>(global2.x, false, false, global2.x), vec2<bool>(global2.x, global2.x), vec4<f32>(-1507f, 220f, 1515f, 1453f), global2.x, vec4<u32>(u_input.b, 1u, 1u, u_input.a.x)), Struct_2(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(vec4<bool>(global2.x, global2.x, false, false), vec2<bool>(false, false), vec4<f32>(-602f, 459f, 829f, 1006f), true, u_input.a)))).d), !(!global2.x) == false, all(!(!vec4<bool>(false, global2.x, global2.x, false))), global2.x));
    var var_1 = global0[_wgslsmith_index_u32(1u, 12u)];
    global1 = array<Struct_2, 10>();
    let var_2 = var_1.d;
    var var_3 = Struct_4(countOneBits(~(~_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x))), var_1.a, Struct_2(u_input.a, _wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_1.c.x, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_2.c.c.e.x, var_2.c.a.x), ~vec3<u32>(31080u, 0u, 36030u))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1460f)) + _wgslsmith_f_op_f32(-var_1.a.c.x)), 45640u).b));
    let var_4 = func_4(u_input.c, -474f, func_1(_wgslsmith_f_op_f32(-448f - 1000f), ~var_3.c.c.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(var_1.c.x), u_input.b, true), _wgslsmith_div_i32(u_input.c.x, -var_3.a), ~(-u_input.c.x), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.c.x, var_1.d.c.a.x), select(u_input.a, var_2.c.a, var_4.a)), _wgslsmith_sub_vec4_u32(var_1.a.e, var_1.a.e))));
}

