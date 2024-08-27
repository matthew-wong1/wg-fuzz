struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-322f, Struct_1(true, 1i, vec3<u32>(65991u, 6525u, 4294967295u), 4294967295u), vec2<u32>(32556u, 26803u), vec3<f32>(-826f, -578f, 1000f), vec3<f32>(776f, -976f, -541f)), Struct_2(530f, Struct_1(false, i32(-2147483648), vec3<u32>(11508u, 60151u, 70806u), 4294967295u), vec2<u32>(0u, 1u), vec3<f32>(-1573f, 1288f, -150f), vec3<f32>(1264f, 181f, 135f)), Struct_2(-183f, Struct_1(true, 5234i, vec3<u32>(1u, 0u, 46843u), 4294967295u), vec2<u32>(4294967295u, 49255u), vec3<f32>(764f, -167f, -675f), vec3<f32>(1039f, 491f, 592f)), Struct_2(-2812f, Struct_1(false, 1i, vec3<u32>(4294967295u, 45491u, 9069u), 0u), vec2<u32>(55009u, 19973u), vec3<f32>(425f, 194f, -386f), vec3<f32>(-497f, 1165f, -326f)), Struct_2(-1000f, Struct_1(true, -27172i, vec3<u32>(0u, 0u, 4294967295u), 4294967295u), vec2<u32>(1u, 0u), vec3<f32>(-1152f, -226f, 605f), vec3<f32>(-1176f, 707f, -365f)), Struct_2(1958f, Struct_1(true, 2147483647i, vec3<u32>(1u, 4294967295u, 45789u), 1u), vec2<u32>(54735u, 47623u), vec3<f32>(609f, 1521f, 437f), vec3<f32>(729f, -328f, -1914f)), Struct_2(-722f, Struct_1(true, -18051i, vec3<u32>(1u, 125298u, 853u), 10085u), vec2<u32>(6610u, 0u), vec3<f32>(-181f, 1491f, 1000f), vec3<f32>(1594f, -194f, 533f)), Struct_2(-850f, Struct_1(false, i32(-2147483648), vec3<u32>(52767u, 9725u, 5686u), 1u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-1267f, -579f, -843f), vec3<f32>(727f, 1222f, 1117f)), Struct_2(468f, Struct_1(true, 26305i, vec3<u32>(1u, 4294967295u, 23617u), 0u), vec2<u32>(63792u, 0u), vec3<f32>(-270f, -872f, 1117f), vec3<f32>(1651f, -251f, 1000f)), Struct_2(-805f, Struct_1(true, 14725i, vec3<u32>(4294967295u, 75257u, 4294967295u), 0u), vec2<u32>(32834u, 0u), vec3<f32>(597f, 1952f, -1280f), vec3<f32>(-1000f, -453f, -944f)), Struct_2(320f, Struct_1(false, 51966i, vec3<u32>(45773u, 0u, 56868u), 0u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(962f, 624f, -1000f), vec3<f32>(-1290f, 1697f, -558f)), Struct_2(957f, Struct_1(false, 28142i, vec3<u32>(4294967295u, 31415u, 95251u), 1u), vec2<u32>(1u, 1u), vec3<f32>(-374f, -259f, -1106f), vec3<f32>(-497f, 1170f, 1050f)), Struct_2(-393f, Struct_1(false, 843i, vec3<u32>(8758u, 41921u, 12523u), 8271u), vec2<u32>(4294967295u, 4294967295u), vec3<f32>(935f, 974f, -309f), vec3<f32>(-199f, -1000f, 742f)), Struct_2(502f, Struct_1(false, -8215i, vec3<u32>(0u, 21401u, 84228u), 41557u), vec2<u32>(28073u, 4294967295u), vec3<f32>(-1132f, 1000f, 1000f), vec3<f32>(2215f, 1115f, 1037f)), Struct_2(716f, Struct_1(false, i32(-2147483648), vec3<u32>(1u, 0u, 4294967295u), 27633u), vec2<u32>(67940u, 0u), vec3<f32>(787f, -1061f, 151f), vec3<f32>(334f, 730f, 479f)));

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-374f, Struct_1(false, 1i, vec3<u32>(4000u, 114172u, 27254u), 4294967295u), vec2<u32>(4294967295u, 1u), vec3<f32>(570f, -1527f, -308f), vec3<f32>(188f, -565f, 468f)), Struct_2(484f, Struct_1(true, 2147483647i, vec3<u32>(1u, 49358u, 4294967295u), 4294967295u), vec2<u32>(0u, 4294967295u), vec3<f32>(-749f, -835f, -113f), vec3<f32>(297f, -803f, 838f)), Struct_2(-792f, Struct_1(true, -27709i, vec3<u32>(0u, 1u, 9090u), 11505u), vec2<u32>(1u, 1u), vec3<f32>(-357f, 645f, -267f), vec3<f32>(2208f, -416f, -1552f)), Struct_2(531f, Struct_1(false, 1i, vec3<u32>(21831u, 15094u, 4004u), 1u), vec2<u32>(1u, 1u), vec3<f32>(-566f, -175f, -627f), vec3<f32>(-1218f, -168f, 897f)), Struct_2(-1163f, Struct_1(true, i32(-2147483648), vec3<u32>(36888u, 2717u, 23310u), 154165u), vec2<u32>(1u, 6682u), vec3<f32>(-1000f, 591f, 1310f), vec3<f32>(709f, -1250f, 2263f)), Struct_2(-730f, Struct_1(false, 2147483647i, vec3<u32>(3009u, 12197u, 0u), 0u), vec2<u32>(57656u, 59190u), vec3<f32>(108f, 822f, -153f), vec3<f32>(530f, 1702f, 1818f)), Struct_2(-259f, Struct_1(false, 3436i, vec3<u32>(4294967295u, 52107u, 44155u), 4294967295u), vec2<u32>(1u, 4294967295u), vec3<f32>(-1938f, -1703f, -654f), vec3<f32>(-872f, -2827f, 1100f)), Struct_2(1381f, Struct_1(false, 1i, vec3<u32>(0u, 48990u, 1u), 117331u), vec2<u32>(0u, 4294967295u), vec3<f32>(-682f, -890f, -650f), vec3<f32>(340f, -1040f, -987f)), Struct_2(-469f, Struct_1(false, -5316i, vec3<u32>(1u, 1u, 0u), 55618u), vec2<u32>(0u, 22507u), vec3<f32>(-302f, -492f, 417f), vec3<f32>(976f, -173f, 882f)), Struct_2(1505f, Struct_1(false, 1i, vec3<u32>(61022u, 0u, 4294967295u), 63469u), vec2<u32>(53237u, 4294967295u), vec3<f32>(1021f, 1000f, -379f), vec3<f32>(-1819f, -1548f, -2246f)), Struct_2(568f, Struct_1(false, 46869i, vec3<u32>(52725u, 4294967295u, 4294967295u), 75075u), vec2<u32>(21245u, 4294967295u), vec3<f32>(-965f, -411f, 1178f), vec3<f32>(-126f, 1057f, -1325f)), Struct_2(-628f, Struct_1(false, -41951i, vec3<u32>(1u, 94105u, 38507u), 1u), vec2<u32>(1u, 9615u), vec3<f32>(-180f, -604f, 614f), vec3<f32>(1010f, -1000f, -795f)));

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, false, false, true, true, true, false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    global0 = array<Struct_2, 15>();
    var var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-18151i << (u_input.b % 32u), 0i, ~2147483647i, 1i)) ^ 0i, ~(~abs(~arg_1)));
    let var_1 = !vec4<bool>(!global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(26119u, u_input.b), 10u)], true, any(vec2<bool>(global2[_wgslsmith_index_u32(~var_0.b, 10u)], !global2[_wgslsmith_index_u32(var_0.b, 10u)])), global2[_wgslsmith_index_u32(abs(~(~0u)), 10u)]);
    global1 = array<Struct_2, 12>();
    var var_2 = Struct_2(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(1076f, -1083f))), Struct_1(any(vec4<bool>(false, global2[_wgslsmith_index_u32(20775u, 10u)], var_1.x, true)), _wgslsmith_sub_i32(~(-29090i), max(var_0.a, 5851i)), vec3<u32>(var_0.b, ~_wgslsmith_mult_u32(var_0.b, u_input.a), u_input.a), var_0.b), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(33058u, 80057u), _wgslsmith_mod_vec2_u32(vec2<u32>(30872u, 0u), vec2<u32>(arg_1, 0u))), arg_1) | ~firstLeadingBit(vec2<u32>(27184u, var_0.b)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1133f * -393f), _wgslsmith_f_op_f32(-1000f + 1263f))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1420f - 1123f) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, arg_0, 570f) * vec3<f32>(arg_0, arg_0, 1065f)))))))));
    return vec2<i32>(_wgslsmith_mult_i32(countOneBits(2147483647i), -_wgslsmith_div_i32(1i, var_2.b.b << (0u % 32u))), abs(30207i));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(47167i), _wgslsmith_mult_i32(~(~(-24859i)), firstLeadingBit(~1i))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-129f)))) * 949f), ~(~(u_input.b >> (u_input.b % 32u)))));
    var var_1 = Struct_4(abs(~func_3(_wgslsmith_f_op_f32(round(1000f)), ~u_input.b).x), u_input.b);
    let var_2 = any(vec2<bool>(false, any(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 10u)], false), select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(var_1.b, 10u)], global2[_wgslsmith_index_u32(u_input.b, 10u)]), global2[_wgslsmith_index_u32(u_input.b, 10u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], true), vec2<bool>(false, false), global2[_wgslsmith_index_u32(0u, 10u)])))));
    let var_3 = global1[_wgslsmith_index_u32(var_1.b, 12u)];
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.e.x))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * _wgslsmith_f_op_f32(trunc(var_3.a))) != -987f, _wgslsmith_div_i32(~0i, 42145i), vec3<u32>(38433u, u_input.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 56304u, var_3.b.d, 0u), vec4<u32>(u_input.b, 0u, u_input.b, 1u)) % 32u), u_input.a), 58820u), var_3.b.c.yx, var_3.d, _wgslsmith_f_op_vec3_f32(min(var_3.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-837f, _wgslsmith_f_op_f32(-783f * var_3.d.x), -205f)))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.a), var_4.e.x, select(var_2, var_4.b.a, false))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(824f, var_4.a) + _wgslsmith_f_op_f32(f32(-1f) * -101f)))), _wgslsmith_f_op_f32(var_4.d.x - _wgslsmith_f_op_f32(select(var_3.e.x, _wgslsmith_f_op_f32(max(1033f, -2430f)), global2[_wgslsmith_index_u32(10601u, 10u)] | global2[_wgslsmith_index_u32(var_4.c.x, 10u)])))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.a, 1226f, -1000f), _wgslsmith_f_op_vec3_f32(-var_3.e)))) + vec3<f32>(-1056f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.e.x, -452f) - var_3.a), _wgslsmith_f_op_f32(-697f * _wgslsmith_f_op_f32(abs(1325f))))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0)))), -968f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, 1005f), vec3<f32>(1171f, 359f, arg_0), arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2()), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), 978f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, 196f))))));
    var var_1 = (func_3(var_0.x, ~2149u).x ^ 2147483647i) > _wgslsmith_dot_vec2_i32(~reverseBits(~vec2<i32>(-1i, -1i)), firstTrailingBit(-(vec2<i32>(-2147483647i, -9057i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    return Struct_4(min(1i, 1i) << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 60757u) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) % 32u), _wgslsmith_mult_u32(~(~26925u & (u_input.a ^ u_input.b)), u_input.b));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<Struct_2, 15>();
    var var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, arg_0.b, 9673u), ~61095u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.b, 1u), vec3<u32>(arg_3.b, 4294967295u, u_input.a)), u_input.b << (54599u % 32u))) < u_input.b, -1i, _wgslsmith_mod_vec3_u32(vec3<u32>(select(48385u, ~49399u, global2[_wgslsmith_index_u32(arg_0.b, 10u)]), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.b, arg_3.b), u_input.b), u_input.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(551u, u_input.a, arg_3.b), ~vec3<u32>(0u, 10376u, 4294967295u))), 1u);
    var var_1 = vec3<u32>(var_0.c.x, ~_wgslsmith_mult_u32(reverseBits(abs(4294967295u)), 1u), 36618u);
    var_1 = ~(var_0.c << (max(vec3<u32>(~var_0.c.x, arg_0.b, max(22413u, arg_3.b)), min(var_0.c, vec3<u32>(51719u, 0u, 1u)) | vec3<u32>(21440u, 52214u, 1u)) % vec3<u32>(32u)));
    var var_2 = global1[_wgslsmith_index_u32(var_0.c.x, 12u)];
    return vec4<i32>(2147483647i, -11452i, func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(731f, 1000f) - var_2.e.x), var_2.d.x > var_2.d.x).a >> (abs(arg_3.b) % 32u), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, 23739u, u_input.b)) & vec3<u32>(u_input.b, abs(u_input.a), 1u));
    var var_1 = _wgslsmith_clamp_vec4_i32(func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-737f, -864f, global2[_wgslsmith_index_u32(27596u, 10u)]))), all(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 10u)]))), true, any(!vec3<bool>(global2[_wgslsmith_index_u32(7376u, 10u)], false, false)), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1166f, -1211f)), -1194f), false)), min(vec4<i32>(_wgslsmith_sub_i32(1i, -2755i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(1i, 3364i)), i32(-1i) * -13319i, -1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(11265i, -1i, 65945i, 49496i), min(vec4<i32>(-1i, 11365i, 18990i, -35049i), _wgslsmith_add_vec4_i32(vec4<i32>(-63118i, 32121i, -31443i, 2147483647i), vec4<i32>(0i, 0i, 26556i, -1i))), ~vec4<i32>(-30907i, 0i, 2147483647i, 2147483647i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.b, u_input.a, 7397u), vec4<u32>(u_input.a, 0u, 93567u, var_0.x), vec4<u32>(u_input.a, 1u, 32332u, u_input.b)) % vec4<u32>(32u)))), max(select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-27316i, -2147483647i)), _wgslsmith_mult_i32(-2147483647i, 1i), -1i, _wgslsmith_add_i32(20128i, 5944i)), ~(-vec4<i32>(0i, 0i, -687i, -15856i)), global2[_wgslsmith_index_u32(u_input.a & 1u, 10u)]), vec4<i32>(max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 32862i, 15969i), vec3<i32>(-1i, 3242i, 61464i))), -2147483647i, _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-5241i, -1i)), 2147483647i >> (var_0.x % 32u))));
    global0 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(125f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f - 228f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-329f, -672f), vec2<f32>(1000f, -991f)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-171f, 1000f)), -792f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-769f, -1000f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(472f, 721f), vec2<f32>(-345f, 221f)))), _wgslsmith_f_op_vec3_f32(func_2()).yx)), func_3(_wgslsmith_f_op_f32(floor(-249f)), ~(~0u)).x, select(u_input.b, u_input.a, var_1.x <= _wgslsmith_mult_i32(var_1.x, 0i)));
}

