struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(2444f, 1163f), vec3<f32>(-1462f, 324f, 513f), vec4<u32>(1u, 1u, 49563u, 78268u), 20885u, Struct_1(true, vec2<i32>(1i, -16633i)))), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<f32>(-1007f, 1000f), vec3<f32>(-1197f, -1839f, -952f), vec4<u32>(85878u, 12962u, 1u, 1u), 9248u, Struct_1(false, vec2<i32>(-15851i, 0i)))), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<f32>(331f, 652f), vec3<f32>(-1438f, 162f, 1000f), vec4<u32>(0u, 0u, 10029u, 4294967295u), 22546u, Struct_1(true, vec2<i32>(2147483647i, 4953i)))), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<f32>(-1000f, -368f), vec3<f32>(950f, -586f, 794f), vec4<u32>(1470u, 4294967295u, 30630u, 1u), 21258u, Struct_1(false, vec2<i32>(48993i, i32(-2147483648))))), Struct_4(vec3<bool>(false, true, false), Struct_3(vec2<f32>(-900f, 1000f), vec3<f32>(422f, 1044f, 1366f), vec4<u32>(4294967295u, 4294967295u, 0u, 19839u), 1u, Struct_1(false, vec2<i32>(0i, 21216i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(1147f, 966f), vec3<f32>(-3537f, -2148f, 885f), vec4<u32>(47618u, 14688u, 0u, 72000u), 28882u, Struct_1(true, vec2<i32>(i32(-2147483648), 13943i)))), Struct_4(vec3<bool>(true, false, true), Struct_3(vec2<f32>(1179f, 547f), vec3<f32>(-197f, -690f, -1515f), vec4<u32>(24035u, 0u, 1u, 34641u), 4294967295u, Struct_1(false, vec2<i32>(0i, -31643i)))), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<f32>(1573f, 836f), vec3<f32>(1391f, 906f, 572f), vec4<u32>(47584u, 17714u, 65567u, 39269u), 91162u, Struct_1(true, vec2<i32>(1i, i32(-2147483648))))), Struct_4(vec3<bool>(false, true, false), Struct_3(vec2<f32>(459f, -647f), vec3<f32>(352f, 137f, 171f), vec4<u32>(4294967295u, 27355u, 1u, 52900u), 4294967295u, Struct_1(true, vec2<i32>(3102i, -10646i)))), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<f32>(-2035f, -891f), vec3<f32>(561f, 781f, -659f), vec4<u32>(32855u, 59611u, 1u, 0u), 42197u, Struct_1(true, vec2<i32>(19558i, -2360i)))), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<f32>(-575f, -1161f), vec3<f32>(-731f, -789f, -654f), vec4<u32>(0u, 1u, 38582u, 4294967295u), 1u, Struct_1(true, vec2<i32>(2147483647i, 0i)))), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<f32>(281f, -1477f), vec3<f32>(-238f, 245f, 362f), vec4<u32>(0u, 4294967295u, 9373u, 63831u), 32742u, Struct_1(false, vec2<i32>(0i, 0i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(858f, 1279f), vec3<f32>(-1558f, 816f, -650f), vec4<u32>(1u, 31227u, 93003u, 0u), 18358u, Struct_1(false, vec2<i32>(-31735i, 2147483647i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(-1732f, 273f), vec3<f32>(1010f, -1071f, 1017f), vec4<u32>(69500u, 10982u, 1u, 4294967295u), 0u, Struct_1(true, vec2<i32>(62336i, 51604i)))), Struct_4(vec3<bool>(true, false, false), Struct_3(vec2<f32>(478f, 907f), vec3<f32>(-708f, 715f, -104f), vec4<u32>(4294967295u, 35963u, 0u, 0u), 0u, Struct_1(true, vec2<i32>(-1i, 253i)))), Struct_4(vec3<bool>(false, true, false), Struct_3(vec2<f32>(893f, -472f), vec3<f32>(-559f, -1000f, -894f), vec4<u32>(0u, 4294967295u, 246u, 0u), 0u, Struct_1(true, vec2<i32>(8428i, 2147483647i)))), Struct_4(vec3<bool>(true, false, true), Struct_3(vec2<f32>(-1669f, -306f), vec3<f32>(2127f, 1173f, 1000f), vec4<u32>(22707u, 15907u, 34949u, 2511u), 23361u, Struct_1(true, vec2<i32>(-1i, 47828i)))), Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(517f, 150f), vec3<f32>(-1000f, -740f, 1479f), vec4<u32>(0u, 1u, 0u, 20946u), 0u, Struct_1(false, vec2<i32>(-615i, 17488i)))), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<f32>(558f, -2059f), vec3<f32>(-507f, -661f, -1000f), vec4<u32>(0u, 24241u, 1u, 1u), 0u, Struct_1(true, vec2<i32>(-28180i, 0i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(2017f, -123f), vec3<f32>(-280f, 1087f, 692f), vec4<u32>(13331u, 3078u, 27888u, 4294967295u), 1577u, Struct_1(true, vec2<i32>(9644i, -38075i)))), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<f32>(-1737f, 1050f), vec3<f32>(1383f, 1000f, -1101f), vec4<u32>(0u, 5890u, 21459u, 4294967295u), 5966u, Struct_1(true, vec2<i32>(-1i, -22602i)))), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<f32>(2016f, -473f), vec3<f32>(-1000f, 1507f, -1078f), vec4<u32>(26738u, 53286u, 4294967295u, 55904u), 1u, Struct_1(true, vec2<i32>(-37566i, 2147483647i)))), Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(1272f, 1284f), vec3<f32>(436f, -542f, 505f), vec4<u32>(4294967295u, 18731u, 4294967295u, 33518u), 4294967295u, Struct_1(true, vec2<i32>(-14207i, -1i)))), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<f32>(-283f, -1291f), vec3<f32>(2600f, 231f, -488f), vec4<u32>(1u, 4294967295u, 0u, 0u), 4294967295u, Struct_1(true, vec2<i32>(i32(-2147483648), -8742i)))), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<f32>(685f, 456f), vec3<f32>(-1816f, 757f, -460f), vec4<u32>(36359u, 1u, 31953u, 0u), 22119u, Struct_1(true, vec2<i32>(40116i, -8676i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(1022f, 1145f), vec3<f32>(254f, -1556f, 1207f), vec4<u32>(31115u, 0u, 18320u, 33074u), 13962u, Struct_1(false, vec2<i32>(i32(-2147483648), -1i)))), Struct_4(vec3<bool>(true, false, false), Struct_3(vec2<f32>(-439f, -1407f), vec3<f32>(1270f, 1000f, -1287f), vec4<u32>(55641u, 7428u, 88714u, 110786u), 30986u, Struct_1(true, vec2<i32>(41974i, -42143i)))), Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(-630f, 354f), vec3<f32>(852f, -829f, 1000f), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), 14912u, Struct_1(false, vec2<i32>(36454i, i32(-2147483648))))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(234f, 1631f), vec3<f32>(-222f, 1000f, -1585f), vec4<u32>(82514u, 1u, 40748u, 1u), 98330u, Struct_1(false, vec2<i32>(1i, -19016i)))), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(1802f, 618f), vec3<f32>(-253f, 1845f, 751f), vec4<u32>(0u, 17345u, 48719u, 4294967295u), 0u, Struct_1(true, vec2<i32>(-355i, 43213i)))));

var<private> global2: f32 = 1291f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = ~1u;
    var var_1 = _wgslsmith_div_vec3_i32(u_input.b.wxw, min(-arg_1.a, -arg_1.a));
    let var_2 = Struct_4(select(vec3<bool>(false, true, select(false == arg_1.e.a, !arg_1.d, !arg_1.d)), vec3<bool>(!all(vec2<bool>(true, true)), false, true & !arg_1.e.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 5950u, 4294967295u, var_0), vec4<u32>(var_0, 4294967295u, u_input.e.x, 20396u)), reverseBits(var_0)) < abs(u_input.e.x ^ 40479u)), Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1173f, 1010f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-963f, 629f), vec2<f32>(-161f, -1718f)))), vec2<f32>(1f, 1f), vec2<bool>(false, arg_1.b.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, 593f, 1930f) * vec3<f32>(-659f, 1380f, -2025f))))), ~firstTrailingBit(firstTrailingBit(vec4<u32>(4597u, 7893u, u_input.e.x, var_0))), 4294967295u, arg_1.e));
    var_1 = vec3<i32>(-min(arg_1.a.x, u_input.d), ~(-7514i), arg_1.c.x) ^ -u_input.a;
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(154f - var_2.b.b.x))), 1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(875f, var_2.b.a.x)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1372f, -1000f)), vec2<f32>(1000f, var_2.b.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, var_2.b.a.x, var_2.b.b.x)))), firstTrailingBit(var_2.b.c >> (var_2.b.c % vec4<u32>(32u))), min(_wgslsmith_clamp_u32(var_0, 88964u, u_input.e.x), 1u), arg_1.b);
    return -48367i;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_1.b.e;
    var var_1 = u_input.b << (vec4<u32>(1u, max(arg_1.b.d ^ u_input.e.x, 4294967295u) >> (arg_1.b.c.x % 32u), ~firstLeadingBit(arg_1.b.d), firstLeadingBit(countOneBits(43710u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, arg_1.b.c.x, 4294967295u), abs(40707u), abs(u_input.e.x), _wgslsmith_mod_u32(15762u, 1u))), arg_1.b.c);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.x - _wgslsmith_f_op_f32(exp2(arg_1.b.b.x))) * -1322f);
    var_1 = vec4<i32>(_wgslsmith_mult_i32(-(~(~arg_1.b.e.b.x)), func_3(u_input.e, Struct_2(vec3<i32>(arg_1.b.e.b.x, var_1.x, arg_1.b.e.b.x), arg_1.b.e, ~u_input.b, u_input.d < 12286i, arg_1.b.e))), abs(arg_1.b.e.b.x), firstTrailingBit(~_wgslsmith_dot_vec3_i32(~u_input.b.xzy, u_input.a >> (vec3<u32>(1u, arg_1.b.c.x, 4294967295u) % vec3<u32>(32u)))), u_input.a.x);
    return Struct_1(true, u_input.a.zz);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(min(1u, u_input.e.x), 30u)];
    var var_1 = u_input.e;
    let var_2 = ~var_0.b.c.xyy;
    global1 = array<Struct_4, 30>();
    var var_3 = abs(reverseBits(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-1i, arg_0.a.x, -1i, u_input.d)), vec4<i32>(_wgslsmith_sub_i32(0i, arg_0.e.b.x), ~(-2147483647i), u_input.b.x, _wgslsmith_mult_i32(arg_0.c.x, arg_0.a.x)))));
    return -252f;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = vec2<bool>(arg_3.a, all(vec4<bool>(all(vec4<bool>(arg_3.a, arg_3.a, true, arg_0.x)), arg_3.a, false, true)) | any(arg_0));
    global1 = array<Struct_4, 30>();
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(32400u), max(6234u, ~(u_input.e.x & 4294967295u))), ~((vec2<u32>(u_input.e.x, 4294967295u) << (max(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, u_input.e.x)) % vec2<u32>(32u))) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, 53388u), vec2<u32>(2650u, 1u)) % vec2<u32>(32u))));
    var var_3 = vec4<bool>(true, arg_3.a, func_2(true, global1[_wgslsmith_index_u32(4294967295u, 30u)]).a, !func_2(true || !var_1.x, Struct_4(!arg_0, Struct_3(arg_1.yy, vec3<f32>(-1627f, -328f, arg_1.x), vec4<u32>(1u, 1u, var_2, u_input.e.x), var_2, Struct_1(var_1.x, arg_3.b)))).a);
    return Struct_3(arg_2, vec3<f32>(var_0, 1580f, _wgslsmith_f_op_f32(f32(-1f) * -377f)), select(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, var_2, var_2, u_input.e.x), vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.e.x)), vec4<u32>(max(_wgslsmith_mult_u32(4294967295u, var_2), ~u_input.e.x), 0u >> (var_2 % 32u), u_input.e.x, _wgslsmith_mod_u32(u_input.e.x, select(var_2, var_2, arg_3.a))), select(!select(vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, var_3.x, arg_3.a, var_1.x), arg_0.x), !select(vec4<bool>(false, var_1.x, arg_0.x, arg_3.a), vec4<bool>(var_1.x, true, true, arg_0.x), vec4<bool>(true, arg_0.x, true, var_3.x)), any(vec3<bool>(var_1.x, true, arg_0.x)))), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x) << (u_input.e.x % 32u), arg_3);
}

fn func_1() -> vec4<bool> {
    var var_0 = 0u >> (1u % 32u);
    var var_1 = func_5(vec3<bool>(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), u_input.c > abs(firstLeadingBit(u_input.d)), false), vec3<f32>(536f, _wgslsmith_f_op_f32(func_4(Struct_2(u_input.b.xyx, func_2(true, Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(-1467f, -1450f), vec3<f32>(-877f, -288f, -446f), vec4<u32>(u_input.e.x, 36959u, u_input.e.x, u_input.e.x), 0u, Struct_1(true, vec2<i32>(2147483647i, u_input.a.x))))), vec4<i32>(1i, 363i, u_input.c, -2147483647i), all(vec3<bool>(false, false, false)), func_2(true, Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<f32>(107f, -199f), vec3<f32>(228f, -726f, -1349f), vec4<u32>(u_input.e.x, 1u, 4294967295u, u_input.e.x), u_input.e.x, Struct_1(true, u_input.b.wx))))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, u_input.c, u_input.a.x), ~vec3<i32>(-20115i, u_input.c, -38633i)))), _wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(5904i, u_input.a.x, 2147483647i) << (vec3<u32>(u_input.e.x, u_input.e.x, 1u) % vec3<u32>(32u)), func_2(false, Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<f32>(178f, -350f), vec3<f32>(-717f, 1045f, 864f), vec4<u32>(u_input.e.x, 100275u, 36357u, 31256u), 56434u, Struct_1(true, u_input.b.yy)))), max(u_input.b, vec4<i32>(u_input.d, 1i, -2147483647i, u_input.d)), true, Struct_1(false, vec2<i32>(0i, u_input.c))), -u_input.b.wwz))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-151f, 725f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1353f, 511f)))), vec2<f32>(209f, _wgslsmith_f_op_f32(f32(-1f) * -161f)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, _wgslsmith_f_op_f32(-590f * 1350f)))), Struct_1(func_2(u_input.c <= ~2147483647i, Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<f32>(812f, -1966f), vec3<f32>(175f, 771f, 1565f), vec4<u32>(u_input.e.x, u_input.e.x, 35629u, u_input.e.x), 33272u, Struct_1(false, vec2<i32>(2147483647i, u_input.a.x))))).a, ~vec2<i32>(_wgslsmith_div_i32(-1i, u_input.a.x), abs(u_input.a.x))));
    let var_2 = Struct_1(var_1.e.a, _wgslsmith_add_vec2_i32(~(-vec2<i32>(20794i, 345i)), abs(u_input.b.yz)) | vec2<i32>(firstTrailingBit(u_input.c), -1i));
    var var_3 = _wgslsmith_clamp_u32(var_1.c.x, 0u, _wgslsmith_div_u32(u_input.e.x, ~u_input.e.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-466f, -1376f)) * _wgslsmith_div_f32(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 1000f) - var_1.a.x) + var_1.a.x), var_1.e.a || false)));
    return select(select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(var_1.e.a, true), var_2.a)), false, var_2.a, select(true, all(vec3<bool>(false, var_2.a, var_2.a)), true)), vec4<bool>(-555f > _wgslsmith_f_op_f32(-var_1.b.x), select(true, var_1.e.a, var_1.e.a), var_2.a, var_2.a), true), vec4<bool>(var_1.e.a, any(!vec2<bool>(var_1.e.a, true)), !all(vec3<bool>(var_1.e.a, true, var_2.a)), true), !func_2(var_1.e.a, Struct_4(vec3<bool>(false, var_1.e.a, false), func_5(vec3<bool>(var_1.e.a, var_1.e.a, true), var_1.b, var_1.b.yx, Struct_1(var_2.a, vec2<i32>(1i, 2147483647i))))).a);
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_5(vec3<bool>(var_0.b.e.a, false, arg_0.x), vec3<f32>(1021f, var_0.b.a.x, 639f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.b.x, var_0.b.b.x))), Struct_1(true, var_0.b.e.b)).a.x))));
    var_0 = global1[_wgslsmith_index_u32(9838u, 30u)];
    let var_1 = global1[_wgslsmith_index_u32(var_0.b.c.x, 30u)];
    var_0 = Struct_4(!(!(!arg_0.wzz)), var_1.b);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(572f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(-var_0.b.b.x)) - var_0.b.a.x), -vec2<i32>(u_input.b.x, ~_wgslsmith_mult_i32(var_1.b.e.b.x, 11261i)));
}

fn func_7(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(~countOneBits(u_input.a), arg_1.b, arg_1.c, true, arg_1.b);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1734f - 1702f) - _wgslsmith_f_op_f32(f32(-1f) * -912f))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~(-1i), Struct_2(max(reverseBits(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.c, u_input.c, u_input.c))), -vec3<i32>(u_input.b.x, u_input.b.x, 13996i)), func_6(func_1()), vec4<i32>(u_input.d, -(i32(-1i) * -30670i), func_5(vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, -692f, -252f)), vec2<f32>(841f, 364f), Struct_1(true, u_input.a.yx)).e.b.x, countOneBits(~u_input.a.x)), false, func_5(vec3<bool>(true, true, true), vec3<f32>(-1931f, -1249f, -153f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1489f, 1497f) * vec2<f32>(578f, -469f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1124f), vec2<f32>(474f, 1789f))), Struct_1(false, -vec2<i32>(u_input.b.x, -2147483647i))).e));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -776f))), _wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(23732i, 15298i, u_input.c), func_6(vec4<bool>(var_0.e.a, false, false, var_0.b.a)), u_input.b ^ vec4<i32>(-2147483647i, 36844i, var_0.c.x, var_0.a.x), var_0.e.a, var_0.e), -max(var_0.c.xyy, var_0.c.ywz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, -664f, 866f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 987f, -1715f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(vec3<bool>(true, true, true), vec3<f32>(237f, 369f, 726f), vec2<f32>(509f, 873f), var_0.e).b.x, -474f, _wgslsmith_f_op_f32(f32(-1f) * -828f)))), vec4<u32>((u_input.e.x & u_input.e.x) << (abs(u_input.e.x) % 32u), firstLeadingBit(max(9446u, ~u_input.e.x)), u_input.e.x, reverseBits(~24819u)), abs(0u), Struct_1(var_0.d == func_6(vec4<bool>(var_0.d, var_0.e.a, false, var_0.b.a)).a, _wgslsmith_div_vec2_i32(func_6(!vec4<bool>(var_0.e.a, true, var_0.b.a, false)).b, u_input.b.ww)));
    var var_2 = _wgslsmith_sub_i32(-1i, 18967i);
    var_1 = func_5(!(!(!select(vec3<bool>(var_0.e.a, true, true), vec3<bool>(true, true, var_0.d), var_0.e.a))), var_1.b, var_1.a, var_1.e);
    var var_3 = vec2<bool>(!var_1.e.a, var_0.d);
    let var_4 = reverseBits(u_input.d);
    let var_5 = var_0.c.x;
    var var_6 = firstTrailingBit(vec4<i32>(var_1.e.b.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.c.yxz ^ vec3<i32>(var_0.c.x, u_input.a.x, -40906i)), _wgslsmith_clamp_vec3_i32(max(var_0.c.xwx, u_input.a), ~vec3<i32>(-1i, var_0.c.x, u_input.b.x), vec3<i32>(var_4, -1i, var_1.e.b.x))), i32(-1i) * -_wgslsmith_div_i32(var_1.e.b.x, var_4), _wgslsmith_clamp_i32(firstTrailingBit(var_4), u_input.d, -var_0.e.b.x) | ~abs(var_0.c.x)));
    var_1 = func_5(vec3<bool>(!(!(!var_0.b.a)), var_1.e.a, var_1.e.a), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -289f), var_1.b.x)), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) + 926f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, var_1.b.x)))), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 329f, -1i);
}

