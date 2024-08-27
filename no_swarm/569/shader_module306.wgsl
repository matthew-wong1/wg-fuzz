struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(62926u, Struct_1(vec4<i32>(1i, 29045i, 14622i, -1i), vec4<u32>(4294967295u, 2865u, 12232u, 52809u), vec3<f32>(670f, -1237f, 635f), false), false, Struct_1(vec4<i32>(i32(-2147483648), 46037i, 1i, -1i), vec4<u32>(1u, 0u, 0u, 0u), vec3<f32>(-1023f, -1364f, 557f), true), Struct_1(vec4<i32>(1i, -43756i, -29624i, -12638i), vec4<u32>(1u, 27562u, 4294967295u, 0u), vec3<f32>(2063f, -1248f, -103f), false)), Struct_2(1u, Struct_1(vec4<i32>(55693i, -1i, 56667i, -19594i), vec4<u32>(40023u, 0u, 15303u, 0u), vec3<f32>(2439f, -562f, 964f), true), false, Struct_1(vec4<i32>(0i, -23886i, 1i, 0i), vec4<u32>(40704u, 0u, 1u, 20676u), vec3<f32>(680f, -477f, 1507f), true), Struct_1(vec4<i32>(-1i, 0i, -1i, 7375i), vec4<u32>(0u, 1u, 46556u, 34066u), vec3<f32>(-1021f, -321f, -718f), false)), Struct_2(20504u, Struct_1(vec4<i32>(39238i, 1i, 0i, -54728i), vec4<u32>(4294967295u, 109859u, 9487u, 716u), vec3<f32>(-1736f, 1245f, 1512f), true), false, Struct_1(vec4<i32>(0i, -1i, 1407i, i32(-2147483648)), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec3<f32>(-645f, -106f, -775f), false), Struct_1(vec4<i32>(-10675i, 1i, -1i, 2147483647i), vec4<u32>(69174u, 11944u, 4294967295u, 1u), vec3<f32>(1368f, 355f, -563f), true)), Struct_2(1u, Struct_1(vec4<i32>(i32(-2147483648), 1i, -1656i, 11081i), vec4<u32>(31162u, 1u, 122678u, 1u), vec3<f32>(-1277f, -967f, 1000f), false), true, Struct_1(vec4<i32>(-10556i, -5032i, i32(-2147483648), 5962i), vec4<u32>(28803u, 25800u, 0u, 1u), vec3<f32>(-1000f, 124f, 375f), true), Struct_1(vec4<i32>(0i, 1i, 2147483647i, 2147483647i), vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<f32>(1000f, -1059f, -1252f), true)), Struct_2(15854u, Struct_1(vec4<i32>(406i, -1i, 51083i, -1042i), vec4<u32>(1994u, 12399u, 1u, 4294967295u), vec3<f32>(-1667f, -2021f, 1000f), true), false, Struct_1(vec4<i32>(-1i, 46738i, 2147483647i, 18835i), vec4<u32>(45524u, 114102u, 0u, 0u), vec3<f32>(-413f, -1922f, 438f), false), Struct_1(vec4<i32>(-58324i, 0i, 30619i, 2147483647i), vec4<u32>(0u, 29985u, 4294967295u, 1u), vec3<f32>(912f, -479f, 652f), false)), Struct_2(34254u, Struct_1(vec4<i32>(11759i, 11668i, -31618i, -35016i), vec4<u32>(1u, 77848u, 87018u, 4294967295u), vec3<f32>(-283f, 567f, -496f), true), true, Struct_1(vec4<i32>(1i, 2147483647i, 26833i, i32(-2147483648)), vec4<u32>(1u, 26872u, 0u, 19273u), vec3<f32>(-1022f, -2061f, 1000f), true), Struct_1(vec4<i32>(-34849i, -1i, 16335i, 0i), vec4<u32>(46929u, 32575u, 27254u, 17354u), vec3<f32>(1130f, 1417f, 1432f), true)), Struct_2(1u, Struct_1(vec4<i32>(0i, 0i, 2147483647i, 49694i), vec4<u32>(1u, 26594u, 38302u, 76740u), vec3<f32>(1036f, 2363f, -1000f), false), false, Struct_1(vec4<i32>(i32(-2147483648), -2041i, -19809i, 34672i), vec4<u32>(26637u, 61636u, 4294967295u, 5153u), vec3<f32>(1000f, -2754f, 1275f), true), Struct_1(vec4<i32>(30600i, -1i, 2147483647i, i32(-2147483648)), vec4<u32>(0u, 1u, 4294967295u, 47796u), vec3<f32>(-371f, 448f, 801f), false)), Struct_2(29640u, Struct_1(vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec4<u32>(82768u, 1u, 40410u, 1u), vec3<f32>(-1535f, -184f, -104f), false), true, Struct_1(vec4<i32>(-29171i, 1i, i32(-2147483648), 19331i), vec4<u32>(1u, 1u, 25804u, 4294967295u), vec3<f32>(1000f, -500f, -914f), true), Struct_1(vec4<i32>(2147483647i, 0i, 1i, -29855i), vec4<u32>(30575u, 0u, 5886u, 1u), vec3<f32>(-484f, 627f, -105f), false)), Struct_2(18925u, Struct_1(vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), vec4<u32>(0u, 18714u, 4294967295u, 22977u), vec3<f32>(-1037f, -925f, 1545f), true), false, Struct_1(vec4<i32>(11083i, 1i, -74994i, -15219i), vec4<u32>(1u, 23647u, 0u, 85248u), vec3<f32>(-523f, 531f, -1202f), false), Struct_1(vec4<i32>(8620i, 1i, i32(-2147483648), 34367i), vec4<u32>(1u, 0u, 4294967295u, 0u), vec3<f32>(259f, 616f, -327f), false)), Struct_2(10111u, Struct_1(vec4<i32>(31976i, i32(-2147483648), -18520i, 0i), vec4<u32>(65932u, 21933u, 0u, 32251u), vec3<f32>(-1008f, 878f, 718f), true), true, Struct_1(vec4<i32>(7809i, 2147483647i, -15755i, 1i), vec4<u32>(40790u, 0u, 1u, 22676u), vec3<f32>(-1308f, 523f, -223f), true), Struct_1(vec4<i32>(i32(-2147483648), 0i, -40847i, 36809i), vec4<u32>(36942u, 37144u, 1u, 0u), vec3<f32>(379f, 738f, -886f), false)), Struct_2(53557u, Struct_1(vec4<i32>(0i, -80708i, -28540i, -45385i), vec4<u32>(1u, 0u, 22533u, 22712u), vec3<f32>(610f, 690f, 582f), false), false, Struct_1(vec4<i32>(0i, -69430i, -26371i, 23761i), vec4<u32>(0u, 22901u, 70880u, 1u), vec3<f32>(-174f, 975f, 152f), true), Struct_1(vec4<i32>(10632i, 0i, 2147483647i, i32(-2147483648)), vec4<u32>(20096u, 4294967295u, 0u, 1u), vec3<f32>(381f, 415f, 2029f), false)), Struct_2(54599u, Struct_1(vec4<i32>(1i, 18695i, i32(-2147483648), 6652i), vec4<u32>(1u, 43847u, 1u, 0u), vec3<f32>(-1572f, 935f, 1632f), true), false, Struct_1(vec4<i32>(5505i, 16623i, 15746i, 2147483647i), vec4<u32>(1u, 1u, 0u, 0u), vec3<f32>(-1000f, -218f, 1000f), false), Struct_1(vec4<i32>(2147483647i, 18383i, -1i, 1i), vec4<u32>(28911u, 0u, 47651u, 79569u), vec3<f32>(-2519f, 868f, 1000f), false)), Struct_2(28596u, Struct_1(vec4<i32>(-14938i, -3264i, -82312i, i32(-2147483648)), vec4<u32>(0u, 135423u, 55623u, 33952u), vec3<f32>(1039f, -1191f, -1000f), false), false, Struct_1(vec4<i32>(0i, -28938i, i32(-2147483648), 28505i), vec4<u32>(4294967295u, 6234u, 11604u, 6148u), vec3<f32>(-1620f, 192f, -236f), false), Struct_1(vec4<i32>(-2630i, 34895i, -1i, 0i), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec3<f32>(-1054f, 1306f, 835f), true)), Struct_2(39451u, Struct_1(vec4<i32>(94800i, i32(-2147483648), -33518i, 39019i), vec4<u32>(0u, 0u, 3419u, 0u), vec3<f32>(-1000f, 441f, 260f), true), false, Struct_1(vec4<i32>(i32(-2147483648), 1i, 54088i, -1i), vec4<u32>(27508u, 4294967295u, 1u, 9996u), vec3<f32>(1055f, -333f, -775f), false), Struct_1(vec4<i32>(2147483647i, 15442i, 2147483647i, 1i), vec4<u32>(27294u, 59305u, 15819u, 1u), vec3<f32>(299f, 1184f, 273f), false)), Struct_2(1u, Struct_1(vec4<i32>(1i, 26377i, 30306i, 2147483647i), vec4<u32>(4294967295u, 1u, 0u, 1u), vec3<f32>(3331f, 863f, -242f), false), false, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, -14407i), vec4<u32>(4294967295u, 0u, 1u, 35797u), vec3<f32>(534f, 174f, 1059f), false), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -6892i, -1i), vec4<u32>(0u, 43406u, 0u, 0u), vec3<f32>(164f, -1000f, 792f), false)), Struct_2(1u, Struct_1(vec4<i32>(-56837i, i32(-2147483648), 15396i, -38287i), vec4<u32>(0u, 29198u, 54356u, 4294967295u), vec3<f32>(549f, 240f, -183f), false), false, Struct_1(vec4<i32>(12838i, i32(-2147483648), 10546i, -18424i), vec4<u32>(2530u, 20947u, 37388u, 24501u), vec3<f32>(-1593f, 267f, 651f), false), Struct_1(vec4<i32>(3891i, 20626i, 1i, 2147483647i), vec4<u32>(1u, 33552u, 4294967295u, 4294967295u), vec3<f32>(304f, 1331f, -381f), true)), Struct_2(1u, Struct_1(vec4<i32>(0i, -21255i, -6316i, 2147483647i), vec4<u32>(49046u, 44649u, 40178u, 4294967295u), vec3<f32>(175f, -959f, -215f), true), true, Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 1i, 30859i), vec4<u32>(1u, 7685u, 4294967295u, 0u), vec3<f32>(-1935f, 224f, 1960f), true), Struct_1(vec4<i32>(1i, 45578i, 0i, -42905i), vec4<u32>(0u, 1u, 4294967295u, 5976u), vec3<f32>(937f, -380f, 500f), true)), Struct_2(2181u, Struct_1(vec4<i32>(-73488i, 6204i, 69446i, -20363i), vec4<u32>(4294967295u, 125152u, 1u, 0u), vec3<f32>(1317f, 1807f, -620f), false), true, Struct_1(vec4<i32>(59426i, 1i, -1i, 0i), vec4<u32>(64117u, 13662u, 41578u, 50439u), vec3<f32>(468f, 1207f, -282f), true), Struct_1(vec4<i32>(-30271i, 0i, -4474i, 2147483647i), vec4<u32>(0u, 35170u, 54458u, 4294967295u), vec3<f32>(-515f, -255f, 256f), true)), Struct_2(0u, Struct_1(vec4<i32>(2147483647i, 53779i, 1i, -3003i), vec4<u32>(17944u, 16908u, 4294967295u, 0u), vec3<f32>(-801f, -1669f, 840f), false), false, Struct_1(vec4<i32>(-1982i, -3866i, -14787i, 2147483647i), vec4<u32>(11237u, 1u, 6168u, 90318u), vec3<f32>(820f, 662f, -949f), true), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -1i), vec4<u32>(1u, 52146u, 0u, 1u), vec3<f32>(375f, 827f, 1465f), false)), Struct_2(1u, Struct_1(vec4<i32>(1i, -76825i, 0i, 39789i), vec4<u32>(4294967295u, 0u, 14899u, 4294967295u), vec3<f32>(1000f, -1038f, -969f), false), false, Struct_1(vec4<i32>(30526i, 1i, 2147483647i, 2147483647i), vec4<u32>(5931u, 56470u, 0u, 0u), vec3<f32>(701f, 522f, 1465f), true), Struct_1(vec4<i32>(29912i, 40794i, 2147483647i, 11889i), vec4<u32>(4294967295u, 1u, 0u, 0u), vec3<f32>(-1465f, -452f, -2498f), true)));

var<private> global1: u32 = 62431u;

var<private> global2: array<i32, 26>;

var<private> global3: array<Struct_2, 7>;

var<private> global4: array<vec4<i32>, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(countOneBits(vec4<u32>(28640u, 4294967295u, u_input.b.x, 25834u))), ~vec4<u32>(97157u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, 13137u, 1u), vec4<u32>(u_input.b.x, 69925u, 4294967295u, u_input.b.x)), vec4<u32>(reverseBits(1u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x, 4294967295u))) << (1u % 32u), 7u)];
    global1 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(var_0.d.c.x - _wgslsmith_f_op_f32(f32(-1f) * -880f));
    let var_2 = var_0.d;
    let var_3 = !select(vec4<bool>(!arg_0, false, true, _wgslsmith_add_i32(u_input.a, 1i) >= var_2.a.x), !vec4<bool>(select(false, var_0.d.d, true), true, arg_0, true), vec4<bool>(false, false, true || arg_0, true));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.c)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(u_input.b.x, Struct_1(select(firstTrailingBit(global4[_wgslsmith_index_u32(~44917u, 28u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> (firstTrailingBit(35098u) % 32u), 28u)], all(vec4<bool>(true, true, false, true)) | (u_input.a < global2[_wgslsmith_index_u32(u_input.b.x, 26u)])), min(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x))) >> (vec4<u32>(select(u_input.b.x, u_input.b.x, true), countOneBits(24500u), 1315u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1698f, 551f, 135f))))), !any(vec3<bool>(false, true, true))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), all(vec2<bool>(true, false))), vec3<bool>(true, true, u_input.a < global2[_wgslsmith_index_u32(u_input.b.x, 26u)]), true)), Struct_1(firstTrailingBit(abs(global4[_wgslsmith_index_u32(4294967295u, 28u)])) >> ((~vec4<u32>(1u, 26674u, u_input.b.x, u_input.b.x) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 66257u, u_input.b.x, 87836u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), ~(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) & firstLeadingBit(vec4<u32>(31688u, u_input.b.x, 45789u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(696f, 1066f)), _wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(select(359f, -838f, false))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(1000f))))), true), Struct_1(global4[_wgslsmith_index_u32(u_input.b.x, 28u)], ~vec4<u32>(u_input.b.x, ~u_input.b.x, ~1u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(-270f, 612f)), 175f, 1608f))), true));
    let var_1 = var_0.b;
    let var_2 = var_0.b;
    global4 = array<vec4<i32>, 28>();
    var var_3 = var_0.e;
    return select(vec3<bool>(true, !var_0.b.d, var_2.d), select(!vec3<bool>(select(var_1.d, var_3.d, var_1.d), true, all(vec4<bool>(true, true, var_0.e.d, var_0.c))), vec3<bool>(var_0.d.d, false == var_1.d, !var_3.d), !vec3<bool>(var_0.e.d, any(vec3<bool>(false, var_3.d, var_2.d)), !var_2.d)), true);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, 1189f, 181f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(887f, -1357f, -1000f)))), _wgslsmith_f_op_vec3_f32(func_2(true))), vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 26u)] >= -66273i, true)))));
    global4 = array<vec4<i32>, 28>();
    var var_1 = vec3<bool>(true, true, true);
    var_1 = !func_3();
    var var_2 = max(_wgslsmith_div_vec2_i32(countOneBits(~(~vec2<i32>(u_input.a, u_input.a))), vec2<i32>(1i, -17508i | -u_input.a)), -(~(-firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], -2147483647i)))));
    return StorageBuffer(vec4<u32>(u_input.b.x, 75764u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(74964u, 1u, u_input.b.x, 47042u)), u_input.b.x ^ u_input.b.x) | ~min(0u, 3447u), u_input.b.x), firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b << ((vec3<u32>(u_input.b.x, 71018u, 1u) | u_input.b) % vec3<u32>(32u)))), 47376u, select(u_input.b.xx << (u_input.b.zz % vec2<u32>(32u)), ~vec2<u32>(~u_input.b.x, 0u), func_3().x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1660f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1395f, 1585f, -1893f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(543f * 714f), _wgslsmith_f_op_f32(-150f + 792f), 1232f, -193f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-245f, var_0.x, -1278f, var_0.x) * vec4<f32>(-715f, var_0.x, 680f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

