struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 22>;

var<private> global2: array<vec3<u32>, 26>;

var<private> global3: vec2<f32> = vec2<f32>(664f, 427f);

var<private> global4: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(vec3<f32>(769f, -238f, -447f), 34117u, vec2<u32>(74724u, 72024u), vec3<f32>(490f, 422f, 537f), vec2<i32>(-18062i, 11841i)), Struct_4(vec3<f32>(-1196f, -1488f, 280f), 25317u, vec2<u32>(22759u, 82571u), vec3<f32>(-1476f, 947f, 166f), vec2<i32>(-8117i, 10023i)), Struct_4(vec3<f32>(3245f, 424f, -1556f), 69793u, vec2<u32>(1u, 8669u), vec3<f32>(-399f, -178f, 312f), vec2<i32>(-41389i, 58386i)), Struct_4(vec3<f32>(-662f, -1080f, -2338f), 1u, vec2<u32>(24640u, 7436u), vec3<f32>(333f, -1002f, -1881f), vec2<i32>(-19886i, 2147483647i)), Struct_4(vec3<f32>(376f, -638f, -172f), 0u, vec2<u32>(0u, 0u), vec3<f32>(-984f, -1000f, -668f), vec2<i32>(i32(-2147483648), 31487i)), Struct_4(vec3<f32>(2299f, 213f, 1000f), 0u, vec2<u32>(1u, 1u), vec3<f32>(585f, -618f, 1234f), vec2<i32>(9777i, 4113i)), Struct_4(vec3<f32>(1056f, 921f, 1038f), 0u, vec2<u32>(0u, 24947u), vec3<f32>(-738f, 1148f, 1000f), vec2<i32>(1i, 2147483647i)), Struct_4(vec3<f32>(-271f, 696f, 360f), 14696u, vec2<u32>(0u, 0u), vec3<f32>(-1903f, -1233f, -1000f), vec2<i32>(i32(-2147483648), 41551i)), Struct_4(vec3<f32>(320f, 934f, 1000f), 0u, vec2<u32>(72078u, 0u), vec3<f32>(422f, 665f, 415f), vec2<i32>(-1i, 1i)), Struct_4(vec3<f32>(1317f, 1522f, -371f), 24377u, vec2<u32>(37652u, 4294967295u), vec3<f32>(-2029f, -566f, -2384f), vec2<i32>(i32(-2147483648), -23266i)), Struct_4(vec3<f32>(1000f, -1519f, 1000f), 1u, vec2<u32>(1u, 39608u), vec3<f32>(-765f, -1000f, 272f), vec2<i32>(-42152i, 4702i)), Struct_4(vec3<f32>(-421f, -1492f, -2541f), 4294967295u, vec2<u32>(4294967295u, 18137u), vec3<f32>(601f, -1174f, -964f), vec2<i32>(i32(-2147483648), 1i)), Struct_4(vec3<f32>(-1000f, 559f, -265f), 4294967295u, vec2<u32>(20249u, 88979u), vec3<f32>(-2187f, -1233f, 953f), vec2<i32>(20293i, i32(-2147483648))), Struct_4(vec3<f32>(-487f, 145f, -681f), 55096u, vec2<u32>(1u, 22594u), vec3<f32>(1349f, 632f, -995f), vec2<i32>(-1i, 2147483647i)), Struct_4(vec3<f32>(-1955f, -1322f, 287f), 1u, vec2<u32>(37622u, 4294967295u), vec3<f32>(-1366f, -1042f, -486f), vec2<i32>(16897i, -41852i)), Struct_4(vec3<f32>(-195f, 315f, 1553f), 12845u, vec2<u32>(1u, 36953u), vec3<f32>(-1129f, 1245f, -417f), vec2<i32>(-55790i, i32(-2147483648))), Struct_4(vec3<f32>(857f, -1076f, 1000f), 1600u, vec2<u32>(25670u, 4294967295u), vec3<f32>(331f, -1136f, -564f), vec2<i32>(2147483647i, -48555i)), Struct_4(vec3<f32>(154f, -1162f, 1234f), 4294967295u, vec2<u32>(4294967295u, 127646u), vec3<f32>(2069f, -258f, -425f), vec2<i32>(0i, -10012i)), Struct_4(vec3<f32>(-1147f, 588f, 206f), 1u, vec2<u32>(0u, 1u), vec3<f32>(-817f, -496f, -449f), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(vec3<f32>(-182f, 1160f, 400f), 0u, vec2<u32>(14640u, 44240u), vec3<f32>(-1914f, -643f, -301f), vec2<i32>(55134i, -20081i)), Struct_4(vec3<f32>(1000f, 743f, 748f), 28184u, vec2<u32>(1u, 4294967295u), vec3<f32>(-1274f, 530f, -851f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_4(vec3<f32>(-718f, -455f, 1077f), 1u, vec2<u32>(11396u, 608u), vec3<f32>(-560f, -1107f, 129f), vec2<i32>(i32(-2147483648), 40554i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = vec4<i32>(u_input.b, 0i, 1i, u_input.b);
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(f32(-1f) * -748f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, 213f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, 1025f) + vec2<f32>(global3.x, global3.x))), vec2<bool>(-10910i < var_0.x, true))))));
    let var_1 = min(u_input.a.x << (0u % 32u), u_input.a.x << (60909u % 32u));
    global4 = array<Struct_4, 22>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1442f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global3.x), vec2<f32>(-177f, -124f), global1[_wgslsmith_index_u32(u_input.c, 22u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 421f) * vec2<f32>(-582f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2432f, global3.x) + vec2<f32>(global3.x, global3.x)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1315f, global3.x)))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))) + global3.x))));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global4 = array<Struct_4, 22>();
    var var_0 = countOneBits(_wgslsmith_mod_i32(global0.x, -1i) << (u_input.a.x % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1097f + global3.x) * _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))))), firstTrailingBit(vec4<i32>(32969i, arg_0.x, 6884i, firstTrailingBit(abs(-2147483647i)))), ~u_input.a.zzy, firstTrailingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.x, 0i, 18733i, arg_0.x), -vec4<i32>(arg_0.x, global0.x, 28923i, arg_0.x)), vec4<i32>(-1i, -1i, 31349i, _wgslsmith_mod_i32(0i, u_input.b)))), select(!select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(1026u, 22u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, global1[_wgslsmith_index_u32(u_input.c, 22u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), global1[_wgslsmith_index_u32(u_input.a.x, 22u)] && global1[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(u_input.c == u_input.c, false, true), any(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 22u)], true, global1[_wgslsmith_index_u32(4294967295u, 22u)])))));
    global4 = array<Struct_4, 22>();
    var var_2 = Struct_3(Struct_2(u_input.b, _wgslsmith_f_op_f32(func_3()), abs((-13111i | global0.x) << ((var_1.c.x >> (var_1.c.x % 32u)) % 32u))), ~(~abs(var_1.b.x)));
    return _wgslsmith_f_op_f32(trunc(-497f));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(~(_wgslsmith_add_u32(60417u, u_input.a.x) << (13408u % 32u)) | 16096u, _wgslsmith_add_u32(arg_0.x | u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(30681u, 23762u, 41343u), u_input.a.wzz)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1059f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -538f)))));
    var var_2 = arg_1.yz;
    var var_3 = Struct_1(643f, max(vec4<i32>(_wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(110450i, -9429i))), _wgslsmith_sub_i32(firstLeadingBit(-1i), 39362i), (u_input.b & global0.x) << (var_0 % 32u), -14796i), firstTrailingBit(firstTrailingBit(vec4<i32>(global0.x, 37541i, u_input.b, -2147483647i))) << (vec4<u32>(var_0, var_0 & 155690u, ~1u, 54499u >> (var_0 % 32u)) % vec4<u32>(32u))), min(vec3<u32>(u_input.a.x, 23314u, min(1u, ~arg_0.x)), abs(~global2[_wgslsmith_index_u32(var_0, 26u)]) >> (vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 47140u, _wgslsmith_mult_u32(u_input.c, arg_0.x)) % vec3<u32>(32u))), vec4<i32>(5571i, ~(global0.x >> (arg_0.x % 32u)), _wgslsmith_mult_i32(u_input.b, select(global0.x, -1i, true)), abs(-1i)), select(!vec3<bool>(!global1[_wgslsmith_index_u32(u_input.c, 22u)], false, !global1[_wgslsmith_index_u32(1u, 22u)]), !(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(60491u, 22u)]), global1[_wgslsmith_index_u32(1u, 22u)])), all(vec3<bool>(true, true, true))));
    let var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(48788u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(63142u, var_3.c.x), arg_0.xz))), 1u, arg_0.x), ~firstLeadingBit(arg_0.wyz));
    return Struct_3(Struct_2(_wgslsmith_clamp_i32(reverseBits(u_input.b), -countOneBits(u_input.b), min(-1i ^ u_input.b, -971i)), -1684f, _wgslsmith_dot_vec3_i32(vec3<i32>(7451i, -2147483647i, 5290i), var_3.d.xxy)), global0.x);
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_3 {
    let var_0 = func_4(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec2<i32>(30132i, 0i))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-22450i, global0.x), vec2<i32>(global0.x, 42648i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -607f)), arg_0)));
    global2 = array<vec3<u32>, 26>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 1627f) * _wgslsmith_f_op_f32(-global3.x))))) - _wgslsmith_f_op_f32(-func_4(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_f32(vec4<f32>(-1238f, -647f, -1333f, var_0.a.b), vec4<f32>(919f, arg_0, 1478f, -977f))).a.b));
    global2 = array<vec3<u32>, 26>();
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-(~(-98610i)), func_4(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-525f, 249f, arg_0, 621f) + vec4<f32>(998f, arg_0, -502f, 1220f))).a.a) << (~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yw, u_input.a.yz), u_input.a.zx | vec2<u32>(60202u, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(~global0.x, 27213i));
    return var_0;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: bool) -> f32 {
    var var_0 = 30035u;
    global1 = array<bool, 22>();
    let var_1 = func_1(-304f, false);
    let var_2 = countOneBits(max(min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-29014i, 1i)), max(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.b, u_input.b), vec2<i32>(-16899i, 6057i)), vec2<i32>(-1i, -22055i))) >> (_wgslsmith_sub_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a.xx), vec2<u32>(28443u, select(u_input.c, u_input.a.x, global1[_wgslsmith_index_u32(u_input.c, 22u)]))) % vec2<u32>(32u)));
    global2 = array<vec3<u32>, 26>();
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1888f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(f32(-1f) * -348f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], false, global1[_wgslsmith_index_u32(u_input.c, 22u)]), func_1(-554f, global1[_wgslsmith_index_u32(1u, 22u)]), true)))), _wgslsmith_f_op_f32(-195f + _wgslsmith_div_f32(-131f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-875f, 1182f) - _wgslsmith_f_op_f32(-global3.x)))));
    global2 = array<vec3<u32>, 26>();
    let var_1 = ~min(1i, func_1(_wgslsmith_f_op_f32(-181f * _wgslsmith_f_op_f32(f32(-1f) * -1466f)), _wgslsmith_f_op_f32(-global3.x) == _wgslsmith_f_op_f32(step(global3.x, 1258f))).a.a);
    global2 = array<vec3<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -705f)), _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a) ^ vec4<u32>(~select(0u, u_input.a.x, true), abs(4294967295u), _wgslsmith_mult_u32(~1u, u_input.c), ~u_input.c | _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), abs(vec3<u32>(~(~33661u), u_input.a.x, ~(~64818u))), _wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, ~93609u)) >> ((countOneBits(vec2<u32>(u_input.c, 4294967295u) & u_input.a.xx) << (u_input.a.wy % vec2<u32>(32u))) % vec2<u32>(32u)));
}

