struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 21>;

var<private> global2: array<i32, 24>;

var<private> global3: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(Struct_4(vec4<bool>(false, true, true, false), Struct_3(vec2<f32>(-949f, 268f), Struct_2(vec3<f32>(1970f, -538f, 318f), 23393i, Struct_1(vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648)), 37945i, vec2<u32>(31543u, 1u), -447f, vec4<f32>(1995f, 1013f, 923f, 2312f)))), false, 40412u, Struct_2(vec3<f32>(1000f, -1268f, -377f), i32(-2147483648), Struct_1(vec4<i32>(1i, 941i, 9426i, 10558i), 1i, vec2<u32>(4294967295u, 4294967295u), 320f, vec4<f32>(-769f, -1157f, -212f, 871f)))), vec3<i32>(2147483647i, -1i, 0i), 3776u), Struct_5(Struct_4(vec4<bool>(false, false, true, true), Struct_3(vec2<f32>(-1164f, 1433f), Struct_2(vec3<f32>(-1526f, 1289f, 569f), 41610i, Struct_1(vec4<i32>(0i, 0i, i32(-2147483648), 1i), -40512i, vec2<u32>(55192u, 34462u), 464f, vec4<f32>(881f, 636f, -237f, 2188f)))), true, 56527u, Struct_2(vec3<f32>(-622f, 2140f, 1356f), 16474i, Struct_1(vec4<i32>(36858i, 2147483647i, -6756i, i32(-2147483648)), 1i, vec2<u32>(0u, 4294967295u), 552f, vec4<f32>(-708f, -1489f, 746f, 632f)))), vec3<i32>(2147483647i, 2147483647i, 1i), 36410u), Struct_5(Struct_4(vec4<bool>(true, false, false, false), Struct_3(vec2<f32>(-245f, 375f), Struct_2(vec3<f32>(1000f, 137f, 1482f), 2977i, Struct_1(vec4<i32>(1i, -603i, i32(-2147483648), 20205i), -20351i, vec2<u32>(4294967295u, 1u), -1119f, vec4<f32>(-214f, -299f, 608f, 1000f)))), false, 4294967295u, Struct_2(vec3<f32>(1346f, 2547f, 593f), -59232i, Struct_1(vec4<i32>(12764i, 21709i, -1i, -125i), -1i, vec2<u32>(86068u, 4294967295u), -1000f, vec4<f32>(-1000f, 128f, -911f, 715f)))), vec3<i32>(-38271i, 16614i, 1i), 71664u), Struct_5(Struct_4(vec4<bool>(false, false, false, false), Struct_3(vec2<f32>(854f, 722f), Struct_2(vec3<f32>(1888f, 941f, -1517f), -8099i, Struct_1(vec4<i32>(0i, 27877i, 1i, 0i), 2147483647i, vec2<u32>(0u, 4294967295u), 179f, vec4<f32>(2587f, 564f, 497f, -370f)))), true, 25181u, Struct_2(vec3<f32>(1208f, -1566f, 1000f), -21538i, Struct_1(vec4<i32>(1586i, 5896i, -26185i, 31750i), i32(-2147483648), vec2<u32>(71352u, 19190u), -2573f, vec4<f32>(792f, 1287f, -1813f, 1534f)))), vec3<i32>(0i, 2147483647i, 16679i), 45931u), Struct_5(Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec2<f32>(850f, 2025f), Struct_2(vec3<f32>(-416f, 1291f, -1118f), -4601i, Struct_1(vec4<i32>(0i, 39572i, i32(-2147483648), -16218i), i32(-2147483648), vec2<u32>(1u, 68207u), -390f, vec4<f32>(401f, 666f, -433f, -157f)))), false, 1555u, Struct_2(vec3<f32>(1443f, -2194f, 379f), i32(-2147483648), Struct_1(vec4<i32>(0i, 33346i, 1i, 2147483647i), 30247i, vec2<u32>(0u, 16402u), -660f, vec4<f32>(521f, 1199f, -1442f, 289f)))), vec3<i32>(i32(-2147483648), 0i, 0i), 0u), Struct_5(Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec2<f32>(747f, -234f), Struct_2(vec3<f32>(724f, 671f, -669f), 1i, Struct_1(vec4<i32>(29219i, 11235i, -12470i, 48937i), -1i, vec2<u32>(1u, 110391u), 277f, vec4<f32>(340f, 613f, -327f, -1204f)))), false, 15270u, Struct_2(vec3<f32>(1233f, 820f, -883f), 28607i, Struct_1(vec4<i32>(0i, i32(-2147483648), -13016i, 2147483647i), 0i, vec2<u32>(0u, 0u), -348f, vec4<f32>(101f, -1953f, 326f, 535f)))), vec3<i32>(2147483647i, -1i, i32(-2147483648)), 1u), Struct_5(Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec2<f32>(1362f, -2511f), Struct_2(vec3<f32>(-3337f, 1000f, 144f), -36810i, Struct_1(vec4<i32>(-33192i, 8174i, -1i, 2147483647i), 37863i, vec2<u32>(37366u, 52139u), -263f, vec4<f32>(-706f, -981f, -287f, 1031f)))), false, 1u, Struct_2(vec3<f32>(1617f, -742f, -2148f), 2796i, Struct_1(vec4<i32>(1i, -36412i, 1i, 15336i), -58491i, vec2<u32>(4294967295u, 0u), 122f, vec4<f32>(-1456f, -547f, 109f, -368f)))), vec3<i32>(9104i, 11088i, 1i), 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = !select(any(vec4<bool>(false, arg_0, arg_0, arg_0)), true || select(false, arg_0, true), all(!vec4<bool>(true, arg_0, arg_0, arg_0))) | true;
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1001f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -506f))), 733f)), _wgslsmith_f_op_f32(ceil(-731f))), global2[_wgslsmith_index_u32(~((global1[_wgslsmith_index_u32(reverseBits(0u), 21u)] & ~global1[_wgslsmith_index_u32(58141u, 21u)]) << ((global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)] & abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])) % 32u)), 24u)], Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(-64107i, -15132i, -2147483647i, 1i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 24u)], 3807i, 8886i, global2[_wgslsmith_index_u32(27622u, 24u)])) << (firstLeadingBit(vec4<u32>(46340u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(21846u, 21u)])) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(7370i, 0i, 22326i) & vec3<i32>(global2[_wgslsmith_index_u32(42937u, 24u)], 2147483647i, -17335i)), ~(~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 24u)], 2147483647i))), (abs(vec2<u32>(64603u, 861u)) | max(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)]), u_input.b.xy)) << (((vec2<u32>(76055u, u_input.b.x) >> (vec2<u32>(17648u, u_input.b.x) % vec2<u32>(32u))) | u_input.b.xy) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(521f, -941f)))) * _wgslsmith_f_op_f32(-686f + -506f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(919f, -381f, 446f, -875f))))));
    let var_1 = Struct_1(~select(var_0.c.a, vec4<i32>(abs(-55449i), var_0.c.b, abs(2147483647i), firstTrailingBit(-41799i)), select(vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(false, arg_0, true, false), any(vec4<bool>(arg_0, arg_0, arg_0, false)))), 22857i, ~u_input.b.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.e.x), var_0.c.e.x)), var_0.c.d), var_0.c.e);
    var var_2 = 17794u;
    var var_3 = Struct_4(select(select(vec4<bool>(arg_0, true, all(vec4<bool>(true, true, arg_0, true)), var_0.b <= global2[_wgslsmith_index_u32(u_input.a, 24u)]), !vec4<bool>(false, arg_0, false, false), select(vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), false), !vec4<bool>(arg_0, arg_0, arg_0, false))), select(vec4<bool>(true || arg_0, arg_0, true, false), vec4<bool>(true, arg_0, global1[_wgslsmith_index_u32(u_input.a, 21u)] <= var_1.c.x, arg_0), vec4<bool>(false, false, true, arg_0)), vec4<bool>(true, true, false, false)), Struct_3(var_0.c.e.wy, var_0), (4294967295u != firstTrailingBit(1u)) | true, 1u, Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-870f, 1f, -1000f), var_0.c.e.zyw, arg_0)), abs(-(var_0.b ^ var_0.c.a.x)), var_1));
    return _wgslsmith_f_op_f32(floor(var_0.a.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    global2 = array<i32, 24>();
    global0 = any(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(874f, _wgslsmith_f_op_f32(-164f - arg_0.x)) + arg_0), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 1191f, 542f), vec3<f32>(333f, 1221f, arg_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1425f, 873f) * vec3<f32>(674f, arg_0.x, arg_0.x)), vec3<bool>(true, true, false)))), global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) << (1u % 32u)), 24u)], Struct_1(-(~vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 24u)], -22505i, global2[_wgslsmith_index_u32(34919u, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 24u)])), _wgslsmith_mult_i32(i32(-1i) * -1i, -62513i), vec2<u32>(8498u, 0u), _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(arg_0.x * -810f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, 505f, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -442f, arg_0.x, arg_0.x) * vec4<f32>(502f, arg_2, arg_0.x, arg_2))))));
    global3 = array<Struct_5, 7>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) * _wgslsmith_f_op_f32(778f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f - arg_0.x) + _wgslsmith_f_op_f32(arg_2 - var_0.b.c.d)), 367f, arg_0.x))));
    return ~var_0.b.c.a.x;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    let var_0 = ~_wgslsmith_mod_u32(u_input.b.x << (select(min(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 21u)]), ~global1[_wgslsmith_index_u32(0u, 21u)], true) % 32u), 0u);
    global0 = true;
    var var_1 = _wgslsmith_div_u32(~var_0, var_0) << ((~_wgslsmith_add_u32(50399u, 1u) | (min(_wgslsmith_clamp_u32(14381u, 1u, 1u), ~var_0) >> (select(~u_input.b.x, _wgslsmith_clamp_u32(var_0, var_0, global1[_wgslsmith_index_u32(4294967295u, 21u)]), true) % 32u))) % 32u);
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    let var_3 = Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(~global1[_wgslsmith_index_u32(10459u, 21u)]), 24u)], ~(-2147483647i), i32(-1i) * -50786i, _wgslsmith_sub_i32(i32(-1i) * -17755i, ~56574i)) & vec4<i32>(_wgslsmith_div_i32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78980u, 21u)], 24u)], ~global2[_wgslsmith_index_u32(1u, 24u)]), ~arg_0, _wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 15918u, u_input.b.x)), 24u)]), arg_0), abs(-2147483647i), ~abs(select(u_input.b.yx, vec2<u32>(4294967295u, var_0), true)), -1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -429f, var_2, var_2)) + vec4<f32>(490f, var_2, var_2, -1686f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, 1407f, var_2))), vec4<f32>(-1046f, -523f, 1000f, 535f), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 909f) + vec4<f32>(-3208f, var_2, var_2, var_2)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, -271f, var_2, var_2)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(606f, -1845f, var_2, 115f) - vec4<f32>(var_2, -535f, -1914f, 1081f)))))));
    return !vec2<bool>(true, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_3.c.x, 53195u, global1[_wgslsmith_index_u32(4294967295u, 21u)], var_0)), vec4<u32>(u_input.a, 4294967295u, var_3.c.x, u_input.a) | vec4<u32>(u_input.b.x, 33101u, var_3.c.x, 4294967295u)) == countOneBits(1u));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    global3 = array<Struct_5, 7>();
    var var_0 = vec2<f32>(-380f, _wgslsmith_f_op_f32(-arg_0.x));
    var var_1 = 6242u;
    return !select(!func_4(func_2(arg_2.e.wx, vec2<u32>(1u, 4294967295u), var_0.x)), select(vec2<bool>(true, false), select(func_4(20321i), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, !(0i >= global2[_wgslsmith_index_u32(109614u, 24u)])));
}

fn func_5(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-655f)) - _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), arg_0)))), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32((477u >> (u_input.a % 32u)) ^ ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)], 24u)], 1i >> (global1[_wgslsmith_index_u32(32112u, 21u)] % 32u), global2[_wgslsmith_index_u32(31947u, 24u)], ~abs(global2[_wgslsmith_index_u32(u_input.a, 24u)])), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(global2[_wgslsmith_index_u32(69793u, 24u)], 1i, -51011i, 0i), vec4<i32>(0i, 1i, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 21u)], 24u)]), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), min(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(25131u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 0i), vec4<i32>(-1i, -24263i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a, 24u)]))), _wgslsmith_add_vec2_u32(vec2<u32>(7692u, global1[_wgslsmith_index_u32(~1u, 21u)]), _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.b.yy), u_input.b.zy ^ u_input.b.zy)), -608f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 1408f, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, -263f)))));
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 1000f))), vec2<f32>(1213f, arg_0))))), -795f, Struct_1(-countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 24u)], 1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2813u, 21u)], 24u)], global2[_wgslsmith_index_u32(54877u, 24u)])), -2147483647i, u_input.b.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 * 1285f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 1533f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, 826f))), vec4<f32>(arg_0, _wgslsmith_div_f32(-292f, arg_0), _wgslsmith_f_op_f32(select(-1181f, 1011f, true)), _wgslsmith_div_f32(142f, arg_0))))).x;
    var var_2 = u_input.a;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(arg_0, -577f)), _wgslsmith_f_op_f32(min(arg_0, arg_0))))), 16165i, Struct_1(max(_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18995u, 21u)], 24u)], -22021i, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(49703i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 24u)], global2[_wgslsmith_index_u32(47679u, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 24u)]), vec4<i32>(-1i, 50040i, -20965i, 24819i))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -16992i, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85950u, 21u)], 24u)]), max(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73870u, 21u)], 24u)], -41775i, global2[_wgslsmith_index_u32(8087u, 24u)], global2[_wgslsmith_index_u32(31725u, 24u)]), vec4<i32>(-2037i, -95342i, global2[_wgslsmith_index_u32(u_input.a, 24u)], -2147483647i)))), -1624i, ~firstTrailingBit(select(vec2<u32>(u_input.b.x, 86186u), vec2<u32>(73263u, u_input.a), vec2<bool>(arg_1, var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-327f - 1106f) * -401f)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -880f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1000f)));
    let var_4 = var_3.c.a.zw;
    return ~firstLeadingBit(~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 163f;
    global1 = array<u32, 21>();
    var var_1 = -183f;
    global1 = array<u32, 21>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(select(var_0, 399f, false))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(var_0, var_0))), var_0))), ~func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, 765f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(func_1(vec2<f32>(var_0, var_0), 640f, Struct_1(vec4<i32>(21703i, global2[_wgslsmith_index_u32(u_input.a, 24u)], 2147483647i, 2147483647i), global2[_wgslsmith_index_u32(17190u, 24u)], vec2<u32>(49228u, 46945u), 627f, vec4<f32>(var_0, -1000f, -584f, -1445f))))), Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(29165u, 24u)], 26895i, -1i, global2[_wgslsmith_index_u32(20968u, 24u)]), _wgslsmith_div_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 24u)], -2751i, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -1i, global2[_wgslsmith_index_u32(1u, 24u)]))), 0i, vec2<u32>(_wgslsmith_div_u32(54979u, 1u), 1u) ^ u_input.b.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), vec4<f32>(var_0, var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, -1898f))))));
    var var_3 = select(any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), ~u_input.b.x == 59814u, true) | !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(~58911i, abs(0i)), ~(~var_2.c.a.xy)) | vec2<i32>(-2147483647i, -1i), 2147483647i, _wgslsmith_f_op_f32(-var_0), vec3<u32>(1u, countOneBits(4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b.x, u_input.a), 13971u & ~global1[_wgslsmith_index_u32(4294967295u, 21u)])), -47707i);
}

