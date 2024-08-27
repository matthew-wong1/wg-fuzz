struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(-485f, vec4<u32>(35515u, 12816u, 44338u, 4294967295u), vec2<f32>(-487f, 1372f)), Struct_1(-915f, vec4<u32>(4294967295u, 45053u, 1u, 917u), vec2<f32>(1000f, -329f)), vec4<i32>(-228i, 1i, 0i, 1i), Struct_1(-1000f, vec4<u32>(0u, 1u, 1u, 0u), vec2<f32>(-1703f, -1598f))), Struct_2(Struct_1(-605f, vec4<u32>(1u, 14215u, 4294967295u, 71799u), vec2<f32>(-1489f, -889f)), Struct_1(728f, vec4<u32>(4294967295u, 6143u, 0u, 4294967295u), vec2<f32>(-1409f, -1208f)), vec4<i32>(-1i, -85735i, -14359i, 12753i), Struct_1(1206f, vec4<u32>(104020u, 4294967295u, 14678u, 1u), vec2<f32>(829f, -731f))), Struct_2(Struct_1(1000f, vec4<u32>(97864u, 0u, 1u, 0u), vec2<f32>(1495f, 1844f)), Struct_1(-208f, vec4<u32>(44266u, 49972u, 4294967295u, 8355u), vec2<f32>(1384f, -1674f)), vec4<i32>(0i, 1i, -1i, -28043i), Struct_1(1000f, vec4<u32>(76555u, 1u, 74806u, 90353u), vec2<f32>(-148f, -1727f))), Struct_2(Struct_1(-903f, vec4<u32>(4294967295u, 0u, 0u, 16524u), vec2<f32>(115f, -1398f)), Struct_1(-421f, vec4<u32>(53310u, 10932u, 1u, 1u), vec2<f32>(-824f, -684f)), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), Struct_1(519f, vec4<u32>(0u, 0u, 4294967295u, 5528u), vec2<f32>(655f, -1000f))), Struct_2(Struct_1(714f, vec4<u32>(4294967295u, 5882u, 1u, 4294967295u), vec2<f32>(731f, 451f)), Struct_1(839f, vec4<u32>(56883u, 669u, 88773u, 34337u), vec2<f32>(-461f, -1541f)), vec4<i32>(1i, -1i, -25643i, 2147483647i), Struct_1(981f, vec4<u32>(0u, 0u, 16264u, 35101u), vec2<f32>(-721f, 336f))), Struct_2(Struct_1(574f, vec4<u32>(0u, 39637u, 22280u, 30835u), vec2<f32>(-891f, -833f)), Struct_1(746f, vec4<u32>(35086u, 0u, 1u, 9479u), vec2<f32>(-1269f, 1000f)), vec4<i32>(1i, 32755i, 0i, 2147483647i), Struct_1(1336f, vec4<u32>(1u, 66539u, 1u, 1u), vec2<f32>(-1000f, -330f))), Struct_2(Struct_1(-648f, vec4<u32>(0u, 13618u, 1u, 4294967295u), vec2<f32>(-939f, -808f)), Struct_1(1182f, vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<f32>(-512f, -404f)), vec4<i32>(1i, i32(-2147483648), 9261i, 1i), Struct_1(-413f, vec4<u32>(0u, 63300u, 61750u, 9821u), vec2<f32>(-385f, -2576f))), Struct_2(Struct_1(-647f, vec4<u32>(17705u, 7520u, 20342u, 15123u), vec2<f32>(189f, -552f)), Struct_1(-1611f, vec4<u32>(4294967295u, 1u, 20112u, 1u), vec2<f32>(2757f, 740f)), vec4<i32>(i32(-2147483648), 41175i, -44284i, -23676i), Struct_1(915f, vec4<u32>(0u, 4294967295u, 0u, 1871u), vec2<f32>(1357f, 771f))), Struct_2(Struct_1(-1018f, vec4<u32>(0u, 0u, 0u, 1054u), vec2<f32>(-1303f, 1000f)), Struct_1(-799f, vec4<u32>(0u, 5283u, 14624u, 4294967295u), vec2<f32>(306f, -2562f)), vec4<i32>(-61373i, i32(-2147483648), 37947i, 0i), Struct_1(764f, vec4<u32>(4294967295u, 0u, 64605u, 0u), vec2<f32>(1352f, -1000f))), Struct_2(Struct_1(-1152f, vec4<u32>(0u, 25383u, 31721u, 83586u), vec2<f32>(602f, 1358f)), Struct_1(261f, vec4<u32>(46092u, 52620u, 0u, 4294967295u), vec2<f32>(-980f, 124f)), vec4<i32>(1088i, 22930i, -28444i, -12594i), Struct_1(2675f, vec4<u32>(4294967295u, 4294967295u, 28162u, 4294967295u), vec2<f32>(1428f, 664f))), Struct_2(Struct_1(411f, vec4<u32>(1u, 37695u, 37429u, 0u), vec2<f32>(454f, -262f)), Struct_1(-436f, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec2<f32>(-998f, 1000f)), vec4<i32>(0i, 0i, 6723i, 1543i), Struct_1(1745f, vec4<u32>(0u, 63616u, 0u, 8294u), vec2<f32>(-233f, -1241f))), Struct_2(Struct_1(1000f, vec4<u32>(108725u, 39624u, 0u, 54692u), vec2<f32>(-826f, -151f)), Struct_1(-1529f, vec4<u32>(45421u, 28233u, 19223u, 4294967295u), vec2<f32>(389f, -1232f)), vec4<i32>(2147483647i, 2147483647i, 0i, 1i), Struct_1(-288f, vec4<u32>(33539u, 50164u, 1u, 22916u), vec2<f32>(311f, 1375f))), Struct_2(Struct_1(553f, vec4<u32>(12856u, 37080u, 0u, 0u), vec2<f32>(949f, 207f)), Struct_1(966f, vec4<u32>(38838u, 0u, 0u, 49900u), vec2<f32>(1192f, -1347f)), vec4<i32>(2147483647i, 6145i, 20651i, -1i), Struct_1(-1110f, vec4<u32>(33278u, 32463u, 78986u, 0u), vec2<f32>(178f, 604f))), Struct_2(Struct_1(-102f, vec4<u32>(1u, 18368u, 1u, 4294967295u), vec2<f32>(1000f, 337f)), Struct_1(-1869f, vec4<u32>(25898u, 4294967295u, 40545u, 0u), vec2<f32>(-1177f, 1132f)), vec4<i32>(13099i, 2147483647i, 41031i, 22873i), Struct_1(-1000f, vec4<u32>(0u, 1u, 59630u, 13106u), vec2<f32>(-397f, 341f))), Struct_2(Struct_1(592f, vec4<u32>(7842u, 4294967295u, 0u, 7109u), vec2<f32>(330f, 745f)), Struct_1(-1420f, vec4<u32>(4294967295u, 7656u, 55886u, 47418u), vec2<f32>(699f, -352f)), vec4<i32>(2147483647i, 7402i, -1325i, 0i), Struct_1(778f, vec4<u32>(1u, 45587u, 23137u, 0u), vec2<f32>(1000f, 328f))), Struct_2(Struct_1(-309f, vec4<u32>(14911u, 4294967295u, 1u, 31680u), vec2<f32>(-389f, -1982f)), Struct_1(427f, vec4<u32>(27131u, 54646u, 0u, 18207u), vec2<f32>(752f, 426f)), vec4<i32>(-21722i, 22751i, 44686i, -1i), Struct_1(501f, vec4<u32>(9483u, 39675u, 20143u, 27548u), vec2<f32>(1280f, -1323f))), Struct_2(Struct_1(-947f, vec4<u32>(48665u, 4294967295u, 53039u, 84770u), vec2<f32>(-403f, 125f)), Struct_1(-477f, vec4<u32>(63842u, 5315u, 64499u, 0u), vec2<f32>(-691f, -152f)), vec4<i32>(11271i, 1i, -20397i, 34206i), Struct_1(1327f, vec4<u32>(1u, 23775u, 43159u, 4294967295u), vec2<f32>(-571f, -204f))), Struct_2(Struct_1(-1653f, vec4<u32>(0u, 12383u, 1u, 12653u), vec2<f32>(-1396f, 236f)), Struct_1(137f, vec4<u32>(1u, 57394u, 4294967295u, 3930u), vec2<f32>(1281f, 2295f)), vec4<i32>(i32(-2147483648), 24442i, i32(-2147483648), -1i), Struct_1(1000f, vec4<u32>(83577u, 7364u, 64222u, 12994u), vec2<f32>(-1225f, 686f))), Struct_2(Struct_1(559f, vec4<u32>(3159u, 0u, 4294967295u, 18913u), vec2<f32>(-426f, -1055f)), Struct_1(403f, vec4<u32>(25751u, 4294967295u, 0u, 0u), vec2<f32>(-1267f, 1000f)), vec4<i32>(-17004i, 0i, -1i, 1i), Struct_1(-1108f, vec4<u32>(1u, 4294967295u, 1u, 26300u), vec2<f32>(1250f, -170f))), Struct_2(Struct_1(-390f, vec4<u32>(4294967295u, 50510u, 55523u, 13153u), vec2<f32>(1663f, -680f)), Struct_1(-1120f, vec4<u32>(1u, 4294967295u, 4294967295u, 30265u), vec2<f32>(-1112f, 997f)), vec4<i32>(2147483647i, 1i, 6636i, i32(-2147483648)), Struct_1(639f, vec4<u32>(4294967295u, 68539u, 10147u, 30819u), vec2<f32>(1513f, 1366f))), Struct_2(Struct_1(-598f, vec4<u32>(4294967295u, 51652u, 0u, 31725u), vec2<f32>(996f, -1000f)), Struct_1(-113f, vec4<u32>(7108u, 4294967295u, 24919u, 1u), vec2<f32>(1005f, 1798f)), vec4<i32>(15176i, -1i, -1i, 2147483647i), Struct_1(-1461f, vec4<u32>(0u, 82894u, 35200u, 22073u), vec2<f32>(1632f, 497f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = abs(8745i);
    var_0 = ~arg_2.c.x;
    global2 = array<Struct_2, 21>();
    var_0 = -3004i;
    var var_1 = !select(select(select(select(vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(arg_1.x, 15u)], vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, true), true), vec4<bool>(select(true, false, false), true, all(vec4<bool>(false, false, true, false)), select(true, true, true)), true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)), true == !any(vec3<bool>(false, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.d.a * _wgslsmith_f_op_f32(f32(-1f) * -1279f))));
}

fn func_2() -> Struct_1 {
    global0 = 498f;
    let var_0 = !select(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1583f)))) >= _wgslsmith_f_op_f32(f32(-1f) * -1257f), any(vec3<bool>(true, true, false)));
    global0 = 380f;
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(~(~0i)), ~vec2<u32>(~55616u, u_input.a.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(690f + -866f), vec4<u32>(0u, 0u, 1u, 0u) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, 794f))), Struct_1(_wgslsmith_f_op_f32(-1000f + -1187f), min(vec4<u32>(0u, 1u, 1u, u_input.a.x), vec4<u32>(34158u, u_input.a.x, 22489u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2086f, 139f))), ~abs(vec4<i32>(0i, -46410i, -46132i, -3931i)), Struct_1(_wgslsmith_f_op_f32(trunc(-1165f)), vec4<u32>(0u, 0u, u_input.a.x, 0u), _wgslsmith_div_vec2_f32(vec2<f32>(401f, -1258f), vec2<f32>(-341f, -667f)))), 807f)));
    return Struct_1(var_2, firstTrailingBit(~(~abs(vec4<u32>(55151u, u_input.a.x, u_input.a.x, 1u)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2) + vec2<f32>(var_2, -428f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1589f, 2583f)) + vec2<f32>(var_2, var_2)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    global1 = array<vec4<bool>, 15>();
    let var_0 = func_2();
    global2 = array<Struct_2, 21>();
    global2 = array<Struct_2, 21>();
    global1 = array<vec4<bool>, 15>();
    return ~_wgslsmith_dot_vec3_i32(~countOneBits(-vec3<i32>(0i, -17343i, arg_1.a)), abs(~(~vec3<i32>(arg_1.a, 1800i, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 21>();
    let var_0 = func_1(_wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, 4294967295u, u_input.b.x) << (vec3<u32>(70551u, u_input.a.x, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, u_input.a.x, abs(select(u_input.b.x, 43288u, false)))), Struct_3(~_wgslsmith_sub_i32(41453i, i32(-1i) * -2147483647i), _wgslsmith_mod_vec3_u32(~abs(u_input.b), u_input.b), u_input.b.x));
    let var_1 = ~min(var_0, _wgslsmith_sub_i32(var_0, -2147483647i));
    let var_2 = -_wgslsmith_sub_vec4_i32(-(vec4<i32>(2147483647i, -8223i, 1i, -2147483647i) ^ vec4<i32>(36433i, -19674i, var_0, -2147483647i)), reverseBits(-vec4<i32>(var_0, var_0, -34453i, -1i))) | vec4<i32>(~var_0, firstLeadingBit(23911i), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1 ^ -3970i, _wgslsmith_sub_i32(-16989i, var_1)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -7217i), vec2<i32>(22023i, 2147483647i)), var_0)), _wgslsmith_mult_i32(-var_1, 0i));
    let var_3 = !vec3<bool>(all(vec3<bool>(true, true, true)) | !(u_input.b.x <= 48518u), -1088f >= _wgslsmith_f_op_f32(round(-1375f)), true && (0i <= (-41310i ^ var_0)));
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-710f))), _wgslsmith_f_op_f32(min(-665f, _wgslsmith_div_f32(-2188f, -1000f)))), _wgslsmith_add_vec4_u32(vec4<u32>(~12562u, firstLeadingBit(u_input.a.x), 62069u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, 0u, 77731u, 4294967295u))), vec4<u32>(0u, 1u, 1381u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 41000u), vec2<u32>(4294967295u, 20574u)))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -487f), -530f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-501f + 744f), _wgslsmith_f_op_f32(-1096f - 347f)))), func_2(), -vec4<i32>(0i, var_0, var_2.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-19918i, var_1), var_2.x)), func_2());
    global2 = array<Struct_2, 21>();
    var var_5 = _wgslsmith_sub_u32(4294967295u, 0u ^ u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -(~vec4<i32>(var_4.c.x, _wgslsmith_dot_vec2_i32(var_2.zz, var_4.c.wy), -26896i, -var_0)));
}

