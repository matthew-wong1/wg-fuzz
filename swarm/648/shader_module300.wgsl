struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(93820u, 42658u), vec2<u32>(1u, 89698u), vec2<u32>(25684u, 52777u), vec2<u32>(1u, 63044u), vec2<u32>(4294967295u, 106424u), vec2<u32>(60769u, 64698u), vec2<u32>(28338u, 3229u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(48984u, 1u), vec2<u32>(32080u, 0u), vec2<u32>(0u, 26561u), vec2<u32>(8021u, 4294967295u), vec2<u32>(1u, 12488u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(38924u, 26915u), vec2<u32>(48873u, 1u), vec2<u32>(28900u, 38036u), vec2<u32>(5320u, 1u), vec2<u32>(56531u, 0u), vec2<u32>(0u, 0u), vec2<u32>(69949u, 22613u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(42718u, 4294967295u), vec2<u32>(4302u, 4294967295u), vec2<u32>(16884u, 89052u), vec2<u32>(1u, 0u), vec2<u32>(0u, 47831u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(58067u, 0u), vec2<u32>(54082u, 1u));

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(64626u, 0i, -2509f, vec4<u32>(51414u, 1319u, 19282u, 0u), vec3<f32>(-548f, 1000f, -236f)), 822f, vec2<u32>(1u, 1u), -1i, -20197i), Struct_2(Struct_1(29870u, -40824i, 1640f, vec4<u32>(1u, 0u, 0u, 42736u), vec3<f32>(1010f, -953f, 2317f)), -1000f, vec2<u32>(98849u, 7035u), 0i, 50456i), Struct_2(Struct_1(69527u, 50867i, 1586f, vec4<u32>(51081u, 57143u, 4294967295u, 4294967295u), vec3<f32>(1252f, 970f, -358f)), -1243f, vec2<u32>(23890u, 0u), -2869i, 2147483647i), Struct_2(Struct_1(22882u, 0i, -770f, vec4<u32>(4294967295u, 10087u, 24366u, 4294967295u), vec3<f32>(1669f, 562f, 523f)), 357f, vec2<u32>(4294967295u, 36832u), -12293i, -4327i), Struct_2(Struct_1(0u, 1i, -583f, vec4<u32>(24392u, 11730u, 4294967295u, 1u), vec3<f32>(244f, -541f, 1513f)), 973f, vec2<u32>(70163u, 1u), 0i, -37804i), Struct_2(Struct_1(49579u, 2147483647i, 1055f, vec4<u32>(7617u, 0u, 52914u, 106547u), vec3<f32>(-1111f, 461f, 884f)), 326f, vec2<u32>(0u, 1u), 1i, 22820i), Struct_2(Struct_1(51635u, 20930i, 1309f, vec4<u32>(8483u, 1u, 52247u, 17412u), vec3<f32>(667f, 1427f, 915f)), 190f, vec2<u32>(57446u, 0u), 12293i, -1i), Struct_2(Struct_1(59984u, i32(-2147483648), -1095f, vec4<u32>(34121u, 1u, 30753u, 4294967295u), vec3<f32>(237f, -1095f, -744f)), -158f, vec2<u32>(3091u, 1u), 29029i, -45679i), Struct_2(Struct_1(41430u, -39111i, -788f, vec4<u32>(4294967295u, 37359u, 3547u, 86620u), vec3<f32>(-1000f, 466f, 301f)), -154f, vec2<u32>(1u, 70015u), 19252i, 14141i), Struct_2(Struct_1(0u, 2147483647i, -1077f, vec4<u32>(4294967295u, 26820u, 1u, 16218u), vec3<f32>(-865f, -455f, 1411f)), 234f, vec2<u32>(38717u, 44789u), 58281i, 20319i), Struct_2(Struct_1(1u, -50177i, -221f, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec3<f32>(755f, 130f, -207f)), 149f, vec2<u32>(4239u, 12524u), -18496i, 5090i), Struct_2(Struct_1(1u, 2111i, 1318f, vec4<u32>(3338u, 31958u, 2125u, 0u), vec3<f32>(360f, -1983f, -572f)), 1041f, vec2<u32>(0u, 16625u), 28201i, -20560i), Struct_2(Struct_1(23249u, -3144i, -658f, vec4<u32>(1903u, 0u, 34324u, 21321u), vec3<f32>(264f, -778f, 700f)), -1000f, vec2<u32>(14068u, 4294967295u), -28511i, -64935i), Struct_2(Struct_1(66553u, 2147483647i, -791f, vec4<u32>(18812u, 20003u, 20741u, 0u), vec3<f32>(-2305f, -1522f, -1324f)), -1283f, vec2<u32>(52887u, 4294967295u), 1i, -1i), Struct_2(Struct_1(0u, 1i, 1000f, vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec3<f32>(-1000f, -602f, 277f)), 1349f, vec2<u32>(40343u, 50073u), -1i, 2147483647i), Struct_2(Struct_1(0u, -69642i, -739f, vec4<u32>(8111u, 67568u, 23706u, 14889u), vec3<f32>(-591f, 943f, 575f)), -1000f, vec2<u32>(22633u, 4045u), 2147483647i, i32(-2147483648)), Struct_2(Struct_1(26854u, 7456i, -532f, vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec3<f32>(1422f, -1483f, -340f)), 1012f, vec2<u32>(77395u, 28394u), i32(-2147483648), 0i));

var<private> global3: array<f32, 6> = array<f32, 6>(-1000f, -1457f, -349f, 1655f, -2328f, -1017f);

var<private> global4: vec3<i32> = vec3<i32>(-21737i, i32(-2147483648), 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = 9690u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(countOneBits(arg_0.a.b.a), 6u)], _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(33108u, 6u)], -232f, false))))), _wgslsmith_div_f32(-496f, _wgslsmith_f_op_f32(1157f + global3[_wgslsmith_index_u32(55779u, 6u)])), -1498f);
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_3 = Struct_1(~_wgslsmith_mult_u32(~abs(var_2.c.x), _wgslsmith_clamp_u32(~0u, _wgslsmith_clamp_u32(var_2.c.x, global0.a.a.c.x, arg_0.a.b.d.x), abs(global0.a.b.a))), abs(firstLeadingBit(abs(global4.x) >> (43533u % 32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -308f))), _wgslsmith_f_op_f32(-1000f + global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_2.a.a), 6u)]))))), ~vec4<u32>(~5093u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(30051u, 2324u, var_2.c.x, global0.a.b.a)), firstTrailingBit(vec4<u32>(11534u, global0.a.a.a.d.x, var_2.a.a, global0.a.a.c.x))), 10718u, countOneBits(~var_2.a.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, 483f, var_2.b) + vec3<f32>(global3[_wgslsmith_index_u32(global0.a.b.d.x, 6u)], 738f, 1372f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, global3[_wgslsmith_index_u32(global0.a.a.a.d.x, 6u)], -766f), vec3<f32>(-266f, var_1.x, -165f), vec3<bool>(true, true, true))))))));
    var var_4 = Struct_2(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(675f, _wgslsmith_f_op_f32(max(global0.a.b.c, global3[_wgslsmith_index_u32(80535u, 6u)]))))), ~vec2<u32>(var_2.a.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.b.a, 13533u, 32139u, 4294967295u), var_3.d ^ vec4<u32>(arg_0.a.b.a, var_3.a, global0.a.a.a.d.x, var_3.d.x))), _wgslsmith_sub_i32(max(~1i, 1i), global4.x) | global0.a.b.b, -1i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 6u)] + var_4.b), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.c) + 750f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.b.e - var_3.e) * _wgslsmith_f_op_vec3_f32(var_2.a.e + vec3<f32>(266f, var_3.c, global3[_wgslsmith_index_u32(5541u, 6u)]))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(var_3.a, 6u)], 2097f, global3[_wgslsmith_index_u32(4294967295u, 6u)]))))), _wgslsmith_f_op_f32(trunc(-1231f)) == 102f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_4.c.x, 6u)] * -1154f)), 969f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1059f * var_4.a.e.x))))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_4(global0.a, global0.b)));
    return vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, var_0.x > global3[_wgslsmith_index_u32(43359u, 6u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(25156u, 6u)] == global3[_wgslsmith_index_u32(4294967295u, 6u)]))), false);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> vec3<bool> {
    global3 = array<f32, 6>();
    var var_0 = false;
    var var_1 = Struct_4(Struct_3(global0.a.a, global0.a.b, vec2<f32>(_wgslsmith_f_op_f32(1269f + _wgslsmith_f_op_f32(min(-1704f, global3[_wgslsmith_index_u32(82426u, 6u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), -1022f)), 1140f), vec2<f32>(_wgslsmith_div_f32(global0.b.x, global0.a.a.a.c), global3[_wgslsmith_index_u32(4294967295u, 6u)]));
    var var_2 = global0.a.a.a;
    var var_3 = (abs(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 1i, 0i, -1i)) ^ vec4<i32>(-var_1.a.a.a.b, global4.x, countOneBits(_wgslsmith_mult_i32(-6333i, -1i)), u_input.a)) | firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(27558i, global0.a.a.e, 16032i, u_input.a), vec4<i32>(u_input.a, -1i, global4.x, var_2.b)), abs(vec4<i32>(-2147483647i, -32830i, 2147483647i, 1i))), ~(~vec4<i32>(-432i, -2147483647i, var_2.b, 35598i))));
    return arg_1;
}

fn func_1() -> u32 {
    global1 = array<vec2<u32>, 32>();
    var var_0 = global0.a.a.a.d.xyz;
    global3 = array<f32, 6>();
    var var_1 = u_input.a;
    let var_2 = select(!func_4(all(vec4<bool>(true, true, true, true)), func_2(19768i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(15998u, 6u)])) - global0.b.x), ~max(var_0.x, var_0.x)), select(!vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)) | true, false), true), !(!vec3<bool>(true, var_0.x != 4294967295u, false)));
    return max(global0.a.b.d.x, _wgslsmith_div_u32(2353u ^ _wgslsmith_clamp_u32(1u, ~var_0.x, min(0u, 0u)), ~0u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    global2 = array<Struct_2, 17>();
    global0 = Struct_4(global0.a, global0.b);
    global3 = array<f32, 6>();
    var var_0 = !vec4<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true)), true, true);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(global0.a, arg_1.e.zz))).x, _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(ceil(2955f)), _wgslsmith_f_op_f32(select(-1755f, global3[_wgslsmith_index_u32(global0.a.b.a, 6u)], var_0.x))))) + arg_2), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(global3[_wgslsmith_index_u32(0u, 6u)], arg_0.c, -1000f, -753f), var_0.x)), vec4<f32>(global3[_wgslsmith_index_u32(~4294967295u, 6u)], global0.a.b.c, _wgslsmith_f_op_f32(-global0.b.x), arg_1.c)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1984f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.e.x, arg_2.x)) - _wgslsmith_f_op_f32(global0.a.a.a.c * -333f)), _wgslsmith_div_f32(1876f, _wgslsmith_f_op_f32(-422f - arg_0.c))))));
    return _wgslsmith_div_vec3_i32(vec3<i32>(max(-2147483647i >> (arg_0.a % 32u), -1i), -18527i, ~arg_1.b), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(23451i, u_input.a, global0.a.a.e), vec3<i32>(2147483647i, u_input.a, global0.a.b.b))) | _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, global4.x) & -vec3<i32>(arg_1.b, 33588i, -737i), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(60128i, -9402i, arg_1.b)), -vec3<i32>(46849i, u_input.a, global4.x))), vec3<i32>(2147483647i, -(i32(-1i) * -27432i), -60058i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -func_5(Struct_1(func_1(), -23245i | _wgslsmith_div_i32(2147483647i, global4.x), _wgslsmith_f_op_f32(f32(-1f) * -1099f), vec4<u32>(50365u >> (global0.a.b.a % 32u), global0.a.a.a.d.x, global0.a.b.d.x, global0.a.b.a), global0.a.b.e), global0.a.a.a, vec4<f32>(_wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(88u, 6u)], -812f))), 560f, global0.b.x, global3[_wgslsmith_index_u32(~func_1(), 6u)]));
    var var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, true)), true | any(vec2<bool>(true, true)));
    let var_1 = -1244f;
    var var_2 = Struct_2(global0.a.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(5376u, 6u)])), _wgslsmith_f_op_f32(-1543f + global3[_wgslsmith_index_u32(global0.a.a.a.d.x, 6u)])))), 574f)), firstLeadingBit(~select(vec2<u32>(global0.a.a.c.x, 10696u), vec2<u32>(103388u, 33774u), var_0.x)), global0.a.a.d, global4.x);
    var_0 = !vec4<bool>(true, var_0.x, true, var_0.x);
    let var_3 = global0.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(global0.a, global0.b))).x, -830f, _wgslsmith_f_op_f32(min(1597f, var_1))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.a.e, vec3<f32>(global0.a.a.b, -1072f, var_3.a.b)))), vec3<f32>(-1589f, _wgslsmith_f_op_f32(-var_1), 447f), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.xxw, true), !var_0.xzz, !var_0.x)))))));
    var var_5 = ~20348u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~max(var_3.a.a.a, var_2.a.d.x)), ~(~_wgslsmith_clamp_u32(15408u, global0.a.b.d.x, 4294967295u))), min(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_2.a.d.x, 72183u), ~var_3.b.d.yzw), vec3<u32>(~global0.a.a.c.x, 14015u, ~0u)), _wgslsmith_sub_u32(~1u, countOneBits(var_2.c.x))), countOneBits(1u), ~(~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(global0.a.a.a.d.x, 2780u, 15391u, var_3.a.c.x)), var_3.a.a.d >> (vec4<u32>(1u, var_2.a.d.x, 18645u, 1u) % vec4<u32>(32u)))), vec2<u32>(max(global0.a.b.d.x & abs(47551u), var_3.a.c.x), 1u));
}

