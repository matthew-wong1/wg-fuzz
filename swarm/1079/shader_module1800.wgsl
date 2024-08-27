struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(false, 0i, vec4<f32>(-115f, 897f, 174f, 1168f), -1i), vec3<i32>(-1i, -28621i, 0i), Struct_1(true, -1i, vec4<f32>(242f, 359f, 608f, -1530f), 0i), vec2<bool>(true, false)), Struct_2(Struct_1(true, 79684i, vec4<f32>(1149f, 1191f, 1523f, -1000f), 1i), vec3<i32>(13743i, 1i, 1i), Struct_1(false, -71723i, vec4<f32>(-394f, 1112f, -1000f, -1000f), 68194i), vec2<bool>(true, true)), Struct_2(Struct_1(false, -1i, vec4<f32>(1191f, 246f, 798f, -794f), 0i), vec3<i32>(2147483647i, -1i, 34526i), Struct_1(false, 38074i, vec4<f32>(820f, 530f, 1082f, -109f), 48405i), vec2<bool>(false, true)), Struct_2(Struct_1(false, i32(-2147483648), vec4<f32>(-1093f, -1259f, -1543f, 1425f), 9283i), vec3<i32>(1i, -42205i, 46890i), Struct_1(false, i32(-2147483648), vec4<f32>(-1113f, 435f, 1813f, -1000f), 29305i), vec2<bool>(false, true)), Struct_2(Struct_1(true, 2147483647i, vec4<f32>(-1806f, 812f, 1036f, 1574f), i32(-2147483648)), vec3<i32>(0i, 1i, 2147483647i), Struct_1(false, -65956i, vec4<f32>(-1314f, -268f, -1461f, -792f), 0i), vec2<bool>(true, false)), Struct_2(Struct_1(true, -13057i, vec4<f32>(-547f, -270f, 661f, -964f), -41294i), vec3<i32>(-5830i, 1i, 1i), Struct_1(true, i32(-2147483648), vec4<f32>(-739f, -688f, 1305f, -1269f), 1i), vec2<bool>(false, true)), Struct_2(Struct_1(true, -61248i, vec4<f32>(-129f, -403f, -1927f, -1078f), 2147483647i), vec3<i32>(0i, 2147483647i, -79529i), Struct_1(false, 1i, vec4<f32>(1659f, -368f, -501f, -1000f), i32(-2147483648)), vec2<bool>(false, false)), Struct_2(Struct_1(false, i32(-2147483648), vec4<f32>(-897f, -311f, -309f, -788f), 6592i), vec3<i32>(-1i, 0i, i32(-2147483648)), Struct_1(true, i32(-2147483648), vec4<f32>(1370f, -507f, 542f, 162f), i32(-2147483648)), vec2<bool>(true, false)), Struct_2(Struct_1(true, 1i, vec4<f32>(1350f, 619f, -181f, 575f), 0i), vec3<i32>(2147483647i, 22753i, 1i), Struct_1(true, 51090i, vec4<f32>(1039f, -417f, -678f, -379f), 62899i), vec2<bool>(false, false)), Struct_2(Struct_1(true, 6452i, vec4<f32>(1388f, -225f, -266f, -251f), 1i), vec3<i32>(26760i, -56606i, 1i), Struct_1(true, 1i, vec4<f32>(966f, 1140f, -666f, 1429f), 0i), vec2<bool>(false, false)), Struct_2(Struct_1(true, 17550i, vec4<f32>(738f, 1000f, 975f, -2011f), 3291i), vec3<i32>(0i, 1i, 2147483647i), Struct_1(true, 45623i, vec4<f32>(357f, -712f, -1242f, 435f), 69295i), vec2<bool>(true, false)), Struct_2(Struct_1(true, 0i, vec4<f32>(-1386f, -1207f, 1000f, 1014f), 57218i), vec3<i32>(-1i, -3418i, -1i), Struct_1(false, -1i, vec4<f32>(-474f, 1538f, -1150f, 691f), -35385i), vec2<bool>(false, true)), Struct_2(Struct_1(false, 15288i, vec4<f32>(-1013f, -792f, 190f, 1568f), 2147483647i), vec3<i32>(-22107i, 1i, 1i), Struct_1(false, 0i, vec4<f32>(-1119f, -902f, -906f, 1284f), -11187i), vec2<bool>(true, false)), Struct_2(Struct_1(false, 0i, vec4<f32>(-1389f, -1283f, -623f, -167f), i32(-2147483648)), vec3<i32>(12417i, -1i, -3429i), Struct_1(false, -66149i, vec4<f32>(386f, -333f, 567f, 435f), 22721i), vec2<bool>(false, true)), Struct_2(Struct_1(true, i32(-2147483648), vec4<f32>(-1025f, 1215f, -154f, 2222f), 0i), vec3<i32>(29846i, 2147483647i, 0i), Struct_1(false, 57633i, vec4<f32>(-252f, -191f, -877f, -887f), -17312i), vec2<bool>(false, true)), Struct_2(Struct_1(false, -7898i, vec4<f32>(-1000f, 1076f, -351f, 641f), 15923i), vec3<i32>(-1i, -32005i, -1388i), Struct_1(false, 0i, vec4<f32>(322f, -3803f, 904f, -1304f), 2147483647i), vec2<bool>(false, false)), Struct_2(Struct_1(false, -21321i, vec4<f32>(-266f, -395f, 929f, 1779f), 9941i), vec3<i32>(1i, 1i, 30132i), Struct_1(false, -41134i, vec4<f32>(1741f, -267f, -701f, 916f), 0i), vec2<bool>(true, false)), Struct_2(Struct_1(false, -7584i, vec4<f32>(-556f, 708f, 683f, 623f), i32(-2147483648)), vec3<i32>(-1169i, 2147483647i, i32(-2147483648)), Struct_1(true, 2147483647i, vec4<f32>(-117f, -1000f, -119f, -188f), -1i), vec2<bool>(false, true)), Struct_2(Struct_1(true, -1i, vec4<f32>(315f, -336f, 622f, 901f), -28638i), vec3<i32>(8615i, 21765i, -33801i), Struct_1(true, 2147483647i, vec4<f32>(1391f, -686f, -982f, 296f), i32(-2147483648)), vec2<bool>(true, true)), Struct_2(Struct_1(true, -48037i, vec4<f32>(-1000f, -145f, -218f, -419f), 2147483647i), vec3<i32>(1i, -1i, 32154i), Struct_1(false, -78685i, vec4<f32>(598f, -2395f, -307f, 136f), 39313i), vec2<bool>(false, true)), Struct_2(Struct_1(true, 6216i, vec4<f32>(250f, -2060f, -216f, 130f), -9473i), vec3<i32>(3734i, -19621i, 10792i), Struct_1(false, 0i, vec4<f32>(-153f, 934f, -1175f, 1000f), 2147483647i), vec2<bool>(true, false)), Struct_2(Struct_1(true, 1i, vec4<f32>(-333f, 1592f, -1387f, -839f), -16198i), vec3<i32>(1i, i32(-2147483648), -1i), Struct_1(false, 306i, vec4<f32>(1716f, -646f, -365f, 586f), i32(-2147483648)), vec2<bool>(true, false)), Struct_2(Struct_1(false, 30349i, vec4<f32>(1000f, 1882f, 160f, -1654f), -7896i), vec3<i32>(2147483647i, 2147483647i, 13608i), Struct_1(true, 12240i, vec4<f32>(763f, -1000f, 1000f, 1471f), -71648i), vec2<bool>(true, false)), Struct_2(Struct_1(false, 9248i, vec4<f32>(-1000f, 771f, 292f, -374f), i32(-2147483648)), vec3<i32>(-17808i, 1i, -19458i), Struct_1(true, -8383i, vec4<f32>(1362f, -652f, -613f, 1859f), -22848i), vec2<bool>(true, true)), Struct_2(Struct_1(true, -714i, vec4<f32>(464f, -658f, -683f, -1000f), i32(-2147483648)), vec3<i32>(-37125i, 0i, 0i), Struct_1(false, -56923i, vec4<f32>(737f, -1179f, -451f, -1241f), 18442i), vec2<bool>(true, false)), Struct_2(Struct_1(true, 2147483647i, vec4<f32>(607f, -518f, 674f, 1903f), 0i), vec3<i32>(-1i, i32(-2147483648), 1i), Struct_1(false, -1i, vec4<f32>(430f, 1386f, 1000f, -459f), 31942i), vec2<bool>(false, true)), Struct_2(Struct_1(false, 16607i, vec4<f32>(1504f, 552f, 1393f, 827f), 2147483647i), vec3<i32>(-18173i, 30664i, 0i), Struct_1(true, 27014i, vec4<f32>(-1066f, 192f, -1287f, -977f), 6584i), vec2<bool>(false, true)), Struct_2(Struct_1(false, 39749i, vec4<f32>(-422f, -2252f, 1214f, -2001f), 9879i), vec3<i32>(31212i, 1i, -20516i), Struct_1(true, -6563i, vec4<f32>(-1000f, 1043f, -810f, -1566f), i32(-2147483648)), vec2<bool>(false, true)), Struct_2(Struct_1(false, -17153i, vec4<f32>(2472f, 1117f, -244f, 2583f), i32(-2147483648)), vec3<i32>(12832i, 2147483647i, 4155i), Struct_1(true, 2557i, vec4<f32>(-370f, -143f, -935f, 169f), 2147483647i), vec2<bool>(false, false)), Struct_2(Struct_1(false, 0i, vec4<f32>(-1419f, 606f, -941f, 978f), -1i), vec3<i32>(2147483647i, 19279i, 0i), Struct_1(true, -22595i, vec4<f32>(442f, -677f, 868f, 126f), 30207i), vec2<bool>(false, true)), Struct_2(Struct_1(true, 41715i, vec4<f32>(454f, 350f, -1149f, 985f), -1i), vec3<i32>(i32(-2147483648), -77057i, 22699i), Struct_1(true, i32(-2147483648), vec4<f32>(230f, -747f, 1590f, -1000f), 19407i), vec2<bool>(false, true)));

var<private> global1: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-286f, 1031f, 1000f), vec3<f32>(719f, 1061f, 1326f), vec3<f32>(-1319f, -561f, -150f), vec3<f32>(-1040f, 1741f, -1000f), vec3<f32>(-1718f, 236f, 283f), vec3<f32>(793f, -516f, -602f), vec3<f32>(297f, 802f, -1075f), vec3<f32>(-1000f, -493f, -436f), vec3<f32>(-533f, 2530f, 449f), vec3<f32>(341f, -784f, -759f), vec3<f32>(-517f, 773f, -1105f), vec3<f32>(434f, -857f, 917f));

var<private> global2: u32 = 14293u;

var<private> global3: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_3(countOneBits(~reverseBits(2820i)), vec3<bool>(true, true, true));
    global3 = array<vec2<bool>, 13>();
    let var_1 = false;
    global2 = _wgslsmith_dot_vec3_u32(select(~max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(22733u, u_input.e, u_input.e)), ~vec3<u32>(4294967295u, u_input.e, u_input.e)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(48964u, 48957u, 79684u)), _wgslsmith_div_vec3_u32(vec3<u32>(5690u, 4294967295u, 53600u), vec3<u32>(u_input.e, 15141u, 1u))), countOneBits(~vec3<u32>(u_input.e, 293u, 1u))), select(select(var_0.b, select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(false, var_1, var_1), var_1), select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(true, arg_0.a.a, var_1), vec3<bool>(true, var_0.b.x, false))), var_0.b, var_0.b)), vec3<u32>(abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, 21223u, 1u), vec4<u32>(u_input.e, 25635u, 1u, 142125u)))), 39462u, u_input.e));
    var var_2 = arg_0;
    return !(var_2.d.x || all(!vec2<bool>(true, arg_0.c.a)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    var var_1 = Struct_5(all(vec3<bool>((-31697i | var_0.b) == -32424i, true, !any(vec3<bool>(var_0.a, false, true)))), global0[_wgslsmith_index_u32(~(~arg_0.x), 31u)], _wgslsmith_f_op_f32(-211f + var_0.c.x));
    var_1 = Struct_5(all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, arg_2.a, false), arg_1), !select(vec3<bool>(var_0.a, false, arg_1), vec3<bool>(false, true, var_0.a), vec3<bool>(false, var_0.a, true)), !vec3<bool>(arg_2.a, false, arg_2.a))), Struct_2(Struct_1(true, -2147483647i, vec4<f32>(_wgslsmith_div_f32(var_0.c.x, arg_2.c.x), -1000f, _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(floor(var_1.b.c.c.x))), ~firstLeadingBit(arg_2.b)), firstLeadingBit(-u_input.d.zxx) & _wgslsmith_sub_vec3_i32(vec3<i32>(-52301i, var_0.b, var_1.b.a.d), vec3<i32>(u_input.c, u_input.a.x, -51354i)), Struct_1(var_1.b.d.x, arg_2.b, var_0.c, ~firstLeadingBit(u_input.c)), vec2<bool>(func_3(Struct_2(var_1.b.c, vec3<i32>(u_input.b.x, 34125i, -1i), Struct_1(true, var_1.b.a.b, vec4<f32>(-758f, 388f, arg_2.c.x, 507f), arg_2.d), vec2<bool>(var_1.a, var_0.a))), func_3(var_1.b))), var_0.c.x);
    var var_2 = vec2<bool>(all(vec3<bool>(any(select(vec3<bool>(arg_2.a, var_0.a, true), vec3<bool>(arg_1, true, var_1.a), vec3<bool>(var_0.a, false, true))), arg_1 || true, var_0.a)), var_0.a);
    var var_3 = select(arg_0.x, 93629u, false);
    return -191f;
}

fn func_4(arg_0: vec4<f32>) -> Struct_5 {
    global0 = array<Struct_2, 31>();
    var var_0 = vec4<bool>(false, true, true || !any(vec3<bool>(true, true, true)), true);
    var var_1 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -42215i, -29429i), vec4<i32>(25521i, -7692i, 1i, 10989i)), -2147483647i & u_input.a.x), u_input.b.x) ^ _wgslsmith_mult_i32(u_input.a.x, u_input.a.x ^ u_input.d.x);
    let var_2 = Struct_5(func_3(Struct_2(Struct_1(!var_0.x, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(-arg_0), ~u_input.a.x), u_input.d.yyy, Struct_1(true, 1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 676f) * arg_0), max(0i, u_input.c)), select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), var_0.zw))), Struct_2(Struct_1(true, _wgslsmith_mod_i32(1i, ~u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(793f, arg_0.x, 1000f, -797f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, 1000f, 1285f, arg_0.x) * vec4<f32>(arg_0.x, 1261f, arg_0.x, 1158f))), _wgslsmith_clamp_i32(-u_input.b.x, u_input.d.x | u_input.a.x, ~u_input.c)), ~vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.a.x), 2147483647i, _wgslsmith_mod_i32(-1i, 64275i)), Struct_1(any(!vec3<bool>(false, var_0.x, var_0.x)), -2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(279f, arg_0.x, -448f, 1688f), vec4<f32>(1811f, 553f, -223f, 927f), true)) * vec4<f32>(arg_0.x, arg_0.x, 804f, arg_0.x)), -10497i), var_0.zw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-113f - 1000f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))))));
    var var_3 = firstTrailingBit(1i);
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> vec4<f32> {
    global2 = ~u_input.e;
    global0 = array<Struct_2, 31>();
    global3 = array<vec2<bool>, 13>();
    let var_0 = u_input.a.x;
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1923f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f * -275f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))), _wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(50181u, u_input.e, 4294967295u), false, Struct_1(false, var_0, vec4<f32>(367f, -837f, 356f, 1176f), -1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1421f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c * -218f))), _wgslsmith_f_op_f32(min(1395f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(593f, 141f, -1000f, -2847f), vec4<f32>(-323f, 261f, -424f, 1683f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1635f, -1000f, -903f, 1129f))))) * _wgslsmith_f_op_vec4_f32(func_1(u_input.c ^ u_input.d.x, global3[_wgslsmith_index_u32(29050u, 13u)])))));
    global0 = array<Struct_2, 31>();
    var var_1 = -704f;
    let var_2 = Struct_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 74542i, _wgslsmith_mult_i32(u_input.a.x, 0i)), vec3<i32>(_wgslsmith_mod_i32(u_input.c, -47917i), 2147483647i, u_input.d.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    var var_3 = true;
    var var_4 = min(0u, u_input.e);
    global1 = array<vec3<f32>, 12>();
    var var_5 = firstTrailingBit(u_input.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(-29688i, _wgslsmith_f_op_vec4_f32(func_1(abs(0i), select(select(select(global3[_wgslsmith_index_u32(1u, 13u)], vec2<bool>(var_2.b.x, false), vec2<bool>(var_2.b.x, var_2.b.x)), func_4(vec4<f32>(var_0.x, var_0.x, -815f, var_0.x)).b.d, var_2.b.x), global3[_wgslsmith_index_u32(4294967295u, 13u)], true))).xx);
}

