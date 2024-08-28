struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-660f, Struct_1(vec4<i32>(-7508i, 16830i, 9993i, 2147483647i), vec2<f32>(1708f, -1478f), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), -661i, -1i, 35489i), vec2<f32>(532f, -1000f), vec4<bool>(false, true, false, true))), Struct_2(1369f, Struct_1(vec4<i32>(-49220i, 24336i, 2147483647i, 0i), vec2<f32>(273f, -1456f), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(-265i, 2147483647i, 1i, 13587i), vec2<f32>(-168f, -1824f), vec4<bool>(true, true, false, false))), Struct_2(-174f, Struct_1(vec4<i32>(1i, -24195i, -8816i, 1i), vec2<f32>(-346f, 257f), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-3115i, 1i, -11161i, 10617i), vec2<f32>(626f, 2145f), vec4<bool>(true, true, true, false))), Struct_2(810f, Struct_1(vec4<i32>(-12119i, 1i, 0i, -39552i), vec2<f32>(523f, -156f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-1i, 0i, -1i, 0i), vec2<f32>(2055f, -977f), vec4<bool>(false, true, true, false))), Struct_2(-2030f, Struct_1(vec4<i32>(817i, 1i, i32(-2147483648), 29114i), vec2<f32>(-240f, 1334f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(52790i, -38714i, -42710i, 50411i), vec2<f32>(-518f, -588f), vec4<bool>(true, true, false, false))), Struct_2(105f, Struct_1(vec4<i32>(0i, 0i, 0i, -1394i), vec2<f32>(-875f, 407f), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(10650i, 2147483647i, i32(-2147483648), 2147483647i), vec2<f32>(-1201f, 1660f), vec4<bool>(false, true, true, true))), Struct_2(1437f, Struct_1(vec4<i32>(-25621i, 13515i, 23151i, -22118i), vec2<f32>(205f, 1000f), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-1i, 0i, 23787i, 26096i), vec2<f32>(-1797f, -1528f), vec4<bool>(false, false, true, false))), Struct_2(2135f, Struct_1(vec4<i32>(9495i, -10869i, 1i, -19283i), vec2<f32>(-475f, -227f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(i32(-2147483648), 31605i, -1817i, -3640i), vec2<f32>(-1000f, 1000f), vec4<bool>(true, true, true, true))), Struct_2(331f, Struct_1(vec4<i32>(0i, 40586i, 0i, -49799i), vec2<f32>(356f, -139f), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(0i, 5697i, -20869i, 24907i), vec2<f32>(-590f, -1669f), vec4<bool>(true, true, true, true))), Struct_2(-249f, Struct_1(vec4<i32>(-54225i, 0i, i32(-2147483648), -3776i), vec2<f32>(-519f, 271f), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(0i, 10594i, i32(-2147483648), 5484i), vec2<f32>(-344f, 340f), vec4<bool>(false, true, false, false))), Struct_2(-236f, Struct_1(vec4<i32>(27266i, i32(-2147483648), -9967i, -23383i), vec2<f32>(1039f, 196f), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(14910i, -14371i, 2147483647i, 1i), vec2<f32>(1367f, 1264f), vec4<bool>(true, false, false, false))), Struct_2(1393f, Struct_1(vec4<i32>(-3469i, 28464i, 0i, -24823i), vec2<f32>(503f, 162f), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(1i, -1i, 43752i, 66203i), vec2<f32>(-2167f, 686f), vec4<bool>(false, false, true, false))), Struct_2(-714f, Struct_1(vec4<i32>(1i, 1i, 21289i, 24607i), vec2<f32>(-1601f, -1000f), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i), vec2<f32>(-373f, 507f), vec4<bool>(true, false, false, false))), Struct_2(-1000f, Struct_1(vec4<i32>(-1i, -1i, 2147483647i, -33935i), vec2<f32>(-399f, -299f), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), 0i), vec2<f32>(-1000f, 450f), vec4<bool>(true, true, true, true))), Struct_2(-410f, Struct_1(vec4<i32>(0i, -13436i, 1i, 1i), vec2<f32>(-148f, 351f), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(0i, 1i, -33618i, 19702i), vec2<f32>(451f, -2136f), vec4<bool>(false, false, true, false))), Struct_2(194f, Struct_1(vec4<i32>(-1i, 29065i, -38631i, 64781i), vec2<f32>(-172f, -1174f), vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-18744i, 36542i, 22779i, 3443i), vec2<f32>(-697f, -496f), vec4<bool>(false, true, false, false))), Struct_2(1018f, Struct_1(vec4<i32>(6872i, i32(-2147483648), 50i, -1i), vec2<f32>(1692f, -1187f), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(10375i, i32(-2147483648), 9774i, 21063i), vec2<f32>(2065f, 1018f), vec4<bool>(false, false, true, false))), Struct_2(1861f, Struct_1(vec4<i32>(2147483647i, 46282i, 2147483647i, 2915i), vec2<f32>(907f, -2013f), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), -6850i, -9805i, 2147483647i), vec2<f32>(-197f, 1566f), vec4<bool>(true, true, true, false))), Struct_2(-915f, Struct_1(vec4<i32>(-68833i, -11576i, -49700i, 2147483647i), vec2<f32>(-1000f, -808f), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(-12924i, -9691i, 84517i, -1i), vec2<f32>(692f, -1669f), vec4<bool>(true, false, true, true))), Struct_2(1633f, Struct_1(vec4<i32>(-13255i, -43629i, 41876i, 2147483647i), vec2<f32>(-864f, 1341f), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-44846i, -12809i, 1i, -1i), vec2<f32>(1009f, 1028f), vec4<bool>(false, false, true, true))), Struct_2(1356f, Struct_1(vec4<i32>(1i, -25548i, -15733i, -1i), vec2<f32>(335f, -773f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(1568i, -21597i, i32(-2147483648), -12098i), vec2<f32>(-138f, -182f), vec4<bool>(true, true, false, true))), Struct_2(-768f, Struct_1(vec4<i32>(0i, i32(-2147483648), 1i, 2187i), vec2<f32>(-527f, -471f), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(21994i, -27774i, 1i, -8330i), vec2<f32>(690f, 1759f), vec4<bool>(true, true, false, true))), Struct_2(606f, Struct_1(vec4<i32>(7776i, 0i, 38582i, 0i), vec2<f32>(1444f, -183f), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-17926i, 2472i, -32647i, -4801i), vec2<f32>(-1162f, -406f), vec4<bool>(false, false, false, false))), Struct_2(-195f, Struct_1(vec4<i32>(60032i, 3818i, -1589i, 2147483647i), vec2<f32>(-1471f, -958f), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(21954i, -5833i, 2147483647i, -1i), vec2<f32>(-618f, -762f), vec4<bool>(true, true, true, false))), Struct_2(1813f, Struct_1(vec4<i32>(-2059i, i32(-2147483648), -1i, i32(-2147483648)), vec2<f32>(-1652f, 210f), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 26657i, 1i), vec2<f32>(-278f, -1500f), vec4<bool>(true, true, true, true))), Struct_2(-971f, Struct_1(vec4<i32>(-64671i, -47362i, 7049i, 17500i), vec2<f32>(113f, -1000f), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(0i, -25097i, -47363i, 1i), vec2<f32>(-1691f, 405f), vec4<bool>(true, true, true, true))), Struct_2(-1653f, Struct_1(vec4<i32>(-29041i, -1i, 13240i, 1i), vec2<f32>(-216f, 742f), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(0i, -1i, 49049i, 2147483647i), vec2<f32>(-1000f, -826f), vec4<bool>(false, true, false, true))), Struct_2(509f, Struct_1(vec4<i32>(29374i, 9256i, -5599i, i32(-2147483648)), vec2<f32>(-114f, -455f), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(-38484i, -6507i, 44826i, 1i), vec2<f32>(364f, 344f), vec4<bool>(false, false, true, false))), Struct_2(906f, Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, -352i), vec2<f32>(1612f, -1478f), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec2<f32>(1375f, 339f), vec4<bool>(true, true, false, true))));

var<private> global3: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-558f, -264f), vec2<f32>(1409f, -1000f), vec2<f32>(-1323f, 1720f), vec2<f32>(-153f, -435f), vec2<f32>(1000f, -832f), vec2<f32>(-2095f, 719f), vec2<f32>(2174f, 754f), vec2<f32>(-1000f, -867f), vec2<f32>(1116f, -776f), vec2<f32>(1570f, -441f));

var<private> global4: array<i32, 20> = array<i32, 20>(1i, 1i, -1i, -9935i, 2147483647i, -12303i, i32(-2147483648), 1i, 26829i, 8939i, 0i, 4868i, 0i, -1i, 49067i, -1i, 24462i, i32(-2147483648), -25808i, 8044i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global2 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f + -1019f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(500f, _wgslsmith_f_op_f32(239f + -1645f))))), 1910f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !(any(!vec3<bool>(global0.x, false, false)) != global0.x)));
    var var_1 = Struct_4(372f, -5906i, Struct_3(global2[_wgslsmith_index_u32(~67478u, 29u)], global2[_wgslsmith_index_u32(1u >> (u_input.d % 32u), 29u)]));
    var var_2 = Struct_2(-162f, Struct_1(reverseBits(var_1.c.b.c.a), var_1.c.a.c.b, !(!vec4<bool>(true, global0.x, var_1.c.b.c.c.x, false))), var_1.c.b.c);
    let var_3 = var_2.c.c;
    return var_2.b.b.x;
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = vec2<bool>(true, global0.x);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-718f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) + -194f)))));
    var var_1 = all(!vec2<bool>(false, var_0.x));
    global3 = array<vec2<f32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -460f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_f_op_f32(func_2()))))));
    return !vec2<bool>(!(-1i <= -arg_0), false);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_3 {
    global2 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + arg_0.x))));
    global0 = select(vec2<bool>(true, true), func_3(1i), !vec2<bool>(any(vec3<bool>(global0.x, global0.x, false)), global0.x));
    let var_1 = Struct_1(max(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 0i, global4[_wgslsmith_index_u32(4294967295u, 20u)], global4[_wgslsmith_index_u32(arg_1.x, 20u)]), vec4<i32>(-1i, 1i, 1i, global4[_wgslsmith_index_u32(arg_1.x, 20u)])), abs(select(vec4<i32>(12774i, global4[_wgslsmith_index_u32(0u, 20u)], u_input.c, -25131i), vec4<i32>(-37487i, u_input.c, u_input.a.x, 57i), vec4<bool>(global0.x, true, global0.x, false)))), vec4<i32>(min(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.yz, arg_1.xy), 20u)], global4[_wgslsmith_index_u32(u_input.d, 20u)] | u_input.b.x), 13469i, global4[_wgslsmith_index_u32(~(arg_1.x ^ 2517u), 20u)], _wgslsmith_mod_i32(17348i, u_input.c))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1616f) + vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), 1f)))), select(vec4<bool>(global0.x && true, true, true, 1u < arg_1.x), vec4<bool>(-21467i < ~global4[_wgslsmith_index_u32(arg_1.x, 20u)], all(vec4<bool>(global0.x, true, false, global0.x)), select(global0.x || global0.x, true, !global0.x), false), select(!func_3(u_input.a.x).x, global0.x, true)));
    global1 = _wgslsmith_div_f32(-153f, arg_0.x);
    return Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(-var_1.b.x)), Struct_1(abs(var_1.a), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(3225u, abs(arg_1.x), 0u), 10u)], var_1.c), var_1), global2[_wgslsmith_index_u32(u_input.d >> (abs(_wgslsmith_mult_u32(arg_1.x & u_input.d, arg_1.x | 1u)) % 32u), 29u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_4(-988f, global4[_wgslsmith_index_u32(u_input.d, 20u)], func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(525f, 1104f, -1499f, 1020f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(429f, -323f, 381f, -1408f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -303f, -269f, -119f) - vec4<f32>(-388f, -362f, 973f, 693f))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.d, 4294967295u, u_input.d), ~vec3<u32>(64837u, u_input.d, 54230u)), (vec3<u32>(33993u, 4294967295u, u_input.d) ^ vec3<u32>(u_input.d, 0u, 4294967295u)) << ((vec3<u32>(u_input.d, u_input.d, 93872u) | vec3<u32>(41527u, 24642u, u_input.d)) % vec3<u32>(32u)))));
    let var_2 = 10423u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.c.b.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1000f, var_1.c.b.c.b.x, var_1.a)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-346f, var_1.a, 914f, var_1.c.b.c.b.x), vec4<f32>(var_1.c.b.c.b.x, -1000f, 1181f, var_1.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.a.c.b.x, 433f, var_1.a, 853f))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.b.b.b.x, -895f, var_1.c.b.b.b.x, var_1.c.b.b.b.x), vec4<f32>(var_1.c.a.c.b.x, var_1.a, var_1.a, 936f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(81513u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, u_input.d, var_2), vec4<u32>(u_input.d, var_2, u_input.d, u_input.d)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(19472u, u_input.d, var_2), vec3<u32>(u_input.d, u_input.d, 110468u)), ~4294967295u, ~u_input.d) << (~vec3<u32>(53343u, 59800u, 7409u) % vec3<u32>(32u)), firstTrailingBit(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(39835u, u_input.d), u_input.d), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, u_input.d), vec2<u32>(50191u, var_2))), 20u)]));
}

