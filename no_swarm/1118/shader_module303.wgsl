struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(vec3<i32>(-1i, i32(-2147483648), -8559i), vec2<bool>(true, false), vec3<i32>(2893i, -34568i, i32(-2147483648)), 29786u, vec3<f32>(-1497f, 1850f, 1219f)), true, Struct_1(vec2<i32>(9802i, -60255i)), vec4<i32>(1i, 2147483647i, 0i, -1i), vec3<f32>(-1167f, -813f, -300f));

var<private> global1: vec3<u32>;

var<private> global2: vec3<i32> = vec3<i32>(33980i, 51896i, -23859i);

var<private> global3: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_3(vec3<i32>(37278i, 2147483647i, 1i), vec2<bool>(false, true), vec3<i32>(1i, -31987i, 1i), 4294967295u, vec3<f32>(-1376f, 1075f, 1834f)), false, Struct_1(vec2<i32>(30386i, 0i)), vec4<i32>(25713i, 16386i, 0i, 38344i), vec3<f32>(197f, -1761f, -260f)), Struct_5(Struct_3(vec3<i32>(-1i, -44858i, -4946i), vec2<bool>(false, false), vec3<i32>(27538i, 173i, -1784i), 17022u, vec3<f32>(1408f, 1358f, -1052f)), true, Struct_1(vec2<i32>(-1i, 2147483647i)), vec4<i32>(52046i, 2147483647i, 0i, -1i), vec3<f32>(-540f, 1101f, -1613f)), Struct_5(Struct_3(vec3<i32>(-1i, -28082i, i32(-2147483648)), vec2<bool>(false, true), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 83708u, vec3<f32>(1742f, 138f, -723f)), true, Struct_1(vec2<i32>(0i, -10071i)), vec4<i32>(i32(-2147483648), -11868i, -28069i, 49800i), vec3<f32>(-1932f, 179f, 1000f)), Struct_5(Struct_3(vec3<i32>(-11303i, 0i, i32(-2147483648)), vec2<bool>(false, true), vec3<i32>(-37647i, 2147483647i, i32(-2147483648)), 1u, vec3<f32>(-309f, -2440f, -1493f)), true, Struct_1(vec2<i32>(i32(-2147483648), -25367i)), vec4<i32>(-59712i, -2697i, -42800i, -1i), vec3<f32>(-1679f, -1716f, -1045f)), Struct_5(Struct_3(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<bool>(false, false), vec3<i32>(-931i, -2369i, i32(-2147483648)), 21753u, vec3<f32>(742f, 1793f, 253f)), true, Struct_1(vec2<i32>(16326i, -1i)), vec4<i32>(0i, 1i, i32(-2147483648), 2147483647i), vec3<f32>(477f, -1000f, 590f)), Struct_5(Struct_3(vec3<i32>(43647i, -1i, -1i), vec2<bool>(true, false), vec3<i32>(28865i, -4865i, -8281i), 4294967295u, vec3<f32>(1000f, 209f, 690f)), true, Struct_1(vec2<i32>(-58216i, 13323i)), vec4<i32>(-1i, 37667i, -18437i, -35654i), vec3<f32>(-207f, 825f, 1000f)), Struct_5(Struct_3(vec3<i32>(-17087i, i32(-2147483648), 1i), vec2<bool>(false, false), vec3<i32>(-44131i, -5329i, 13239i), 4294967295u, vec3<f32>(-2071f, 2793f, -548f)), true, Struct_1(vec2<i32>(2147483647i, -12i)), vec4<i32>(-539i, 62261i, -28207i, 53614i), vec3<f32>(234f, -1316f, 320f)), Struct_5(Struct_3(vec3<i32>(-61046i, 9836i, -1i), vec2<bool>(true, true), vec3<i32>(22789i, -21024i, 17413i), 0u, vec3<f32>(1000f, 706f, 1014f)), true, Struct_1(vec2<i32>(-1i, 29462i)), vec4<i32>(-1i, -11558i, 1928i, i32(-2147483648)), vec3<f32>(622f, -804f, -2137f)), Struct_5(Struct_3(vec3<i32>(-1i, 25933i, 18627i), vec2<bool>(true, true), vec3<i32>(-1i, 7262i, 54768i), 41906u, vec3<f32>(-1000f, 1000f, -2272f)), true, Struct_1(vec2<i32>(i32(-2147483648), -33698i)), vec4<i32>(-26146i, 20178i, 2147483647i, 4030i), vec3<f32>(-1000f, -1827f, -344f)), Struct_5(Struct_3(vec3<i32>(i32(-2147483648), -12300i, 2147483647i), vec2<bool>(false, false), vec3<i32>(-1i, 1i, 6572i), 58357u, vec3<f32>(1131f, -2489f, -318f)), false, Struct_1(vec2<i32>(i32(-2147483648), 6033i)), vec4<i32>(-47711i, -1i, -52604i, 1i), vec3<f32>(2206f, 1845f, 2964f)), Struct_5(Struct_3(vec3<i32>(-40908i, -18226i, -1i), vec2<bool>(false, true), vec3<i32>(0i, 23939i, -1i), 0u, vec3<f32>(743f, -196f, 185f)), true, Struct_1(vec2<i32>(i32(-2147483648), 3844i)), vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec3<f32>(835f, 1719f, -1000f)), Struct_5(Struct_3(vec3<i32>(22263i, i32(-2147483648), 52370i), vec2<bool>(true, true), vec3<i32>(-39011i, 3965i, -6100i), 11622u, vec3<f32>(2437f, -110f, 135f)), false, Struct_1(vec2<i32>(-39604i, 0i)), vec4<i32>(i32(-2147483648), -1i, 68528i, i32(-2147483648)), vec3<f32>(1000f, -222f, 1268f)), Struct_5(Struct_3(vec3<i32>(-46502i, 2147483647i, 11844i), vec2<bool>(false, false), vec3<i32>(4805i, 290i, i32(-2147483648)), 4294967295u, vec3<f32>(840f, -461f, -369f)), true, Struct_1(vec2<i32>(0i, 2147483647i)), vec4<i32>(-1i, 2147483647i, -41236i, 20956i), vec3<f32>(1000f, -2324f, 1450f)), Struct_5(Struct_3(vec3<i32>(-1i, 49791i, -47979i), vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 5644i, -26206i), 12117u, vec3<f32>(168f, -149f, 350f)), true, Struct_1(vec2<i32>(4272i, 1i)), vec4<i32>(2147483647i, 0i, -1i, -29734i), vec3<f32>(-658f, 865f, 783f)), Struct_5(Struct_3(vec3<i32>(-1i, -30750i, 0i), vec2<bool>(false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), 28561u, vec3<f32>(-1315f, -638f, 620f)), true, Struct_1(vec2<i32>(i32(-2147483648), -1i)), vec4<i32>(16832i, -26226i, 1i, 1i), vec3<f32>(999f, 1000f, -2499f)), Struct_5(Struct_3(vec3<i32>(-29662i, 21273i, 2147483647i), vec2<bool>(false, false), vec3<i32>(19550i, -33398i, i32(-2147483648)), 1u, vec3<f32>(-1342f, 1298f, -276f)), true, Struct_1(vec2<i32>(54130i, 33458i)), vec4<i32>(-32431i, 20480i, -30214i, 86976i), vec3<f32>(-1884f, 570f, -919f)), Struct_5(Struct_3(vec3<i32>(-2628i, i32(-2147483648), 0i), vec2<bool>(true, false), vec3<i32>(42986i, -53436i, i32(-2147483648)), 48970u, vec3<f32>(969f, 855f, -1743f)), true, Struct_1(vec2<i32>(-1i, -47380i)), vec4<i32>(i32(-2147483648), 1043i, 95043i, 0i), vec3<f32>(-1194f, 765f, -1542f)), Struct_5(Struct_3(vec3<i32>(-44971i, 1i, 19944i), vec2<bool>(false, false), vec3<i32>(-1i, 0i, i32(-2147483648)), 4294967295u, vec3<f32>(122f, -369f, -2464f)), true, Struct_1(vec2<i32>(i32(-2147483648), 1i)), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 42636i), vec3<f32>(-1374f, 2254f, 661f)), Struct_5(Struct_3(vec3<i32>(-1i, 19058i, 2147483647i), vec2<bool>(false, false), vec3<i32>(23743i, 21364i, -1i), 4294967295u, vec3<f32>(-170f, 766f, 1000f)), false, Struct_1(vec2<i32>(-25211i, -3287i)), vec4<i32>(21980i, 2147483647i, 0i, 1i), vec3<f32>(-935f, 164f, 391f)), Struct_5(Struct_3(vec3<i32>(-15872i, -10962i, -25044i), vec2<bool>(false, false), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 1u, vec3<f32>(-3326f, 557f, -622f)), false, Struct_1(vec2<i32>(9095i, -5284i)), vec4<i32>(52463i, 2147483647i, 2147483647i, -8786i), vec3<f32>(306f, -1462f, 686f)), Struct_5(Struct_3(vec3<i32>(0i, i32(-2147483648), 34844i), vec2<bool>(false, true), vec3<i32>(-104204i, -1i, -42220i), 62850u, vec3<f32>(-1000f, 631f, -417f)), false, Struct_1(vec2<i32>(0i, -33921i)), vec4<i32>(3485i, 50386i, -33476i, -63258i), vec3<f32>(539f, 289f, 1112f)));

var<private> global4: array<i32, 4> = array<i32, 4>(i32(-2147483648), 33980i, 1i, 32450i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = reverseBits(global0.d);
    var var_1 = Struct_5(global0.a, arg_0.b.x, global0.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(~countOneBits(u_input.d.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(global4[_wgslsmith_index_u32(0u, 4u)], -8236i, -43278i), select(var_0.xzy, vec3<i32>(9655i, -12874i, 12823i), false)), -max(-34699i, 0i), _wgslsmith_add_i32(2147483647i | arg_0.c.x, min(-15679i, 0i))), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.d.x, u_input.c, -1i)), _wgslsmith_add_vec4_i32(var_0, -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -54106i, -32905i, -2147483647i), global0.d, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-129f, _wgslsmith_f_op_f32(-global0.e.x), arg_0.e.x))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(156f + arg_0.e.x))), _wgslsmith_f_op_f32(1803f - _wgslsmith_f_op_f32(-global0.a.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * global0.e.x), _wgslsmith_f_op_f32(ceil(1000f))))));
    global4 = array<i32, 4>();
    var var_2 = global0.c;
    global0 = Struct_5(global0.a, all(!vec2<bool>(!arg_0.b.x, any(arg_0.b))), Struct_1(countOneBits(abs(var_0.wy) & var_2.a)), vec4<i32>(-2147483647i, ~abs(1i), -10013i, -(~global0.a.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1140f, var_1.e.x, var_1.e.x)), _wgslsmith_f_op_vec3_f32(abs(var_1.e)))) * vec3<f32>(127f, 1035f, _wgslsmith_f_op_f32(f32(-1f) * -428f))));
    return reverseBits(var_2.a.x);
}

fn func_2() -> bool {
    let var_0 = Struct_2(!(!any(vec3<bool>(true, global0.b, global0.a.b.x))), vec3<bool>(false, global0.a.e.x > _wgslsmith_f_op_f32(global0.a.e.x * _wgslsmith_f_op_f32(1952f + global0.a.e.x)), false), _wgslsmith_f_op_f32(721f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global0.e.x, global0.e.x)))), Struct_1(global0.d.xw));
    let var_1 = global0.a.b;
    global2 = ~(vec3<i32>(func_3(global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(62238i, var_0.d.a.x, global2.x, -29553i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global0.d.x, global4[_wgslsmith_index_u32(1u, 4u)]), vec4<i32>(global0.a.a.x, -2147483647i, global2.x, 48400i), vec4<i32>(var_0.d.a.x, global0.c.a.x, 0i, 28226i))), 2147483647i) | u_input.d);
    global1 = reverseBits(~vec3<u32>(89614u, ~1u, global0.a.d ^ global0.a.d) | firstLeadingBit(~vec3<u32>(0u, global1.x, global0.a.d) & vec3<u32>(1u, u_input.e, global0.a.d)));
    global3 = array<Struct_5, 21>();
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_5 {
    global3 = array<Struct_5, 21>();
    var var_0 = Struct_4(~(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global0.a.d, 51356u, 4294967295u), vec4<u32>(u_input.e, u_input.a, global1.x, global0.a.d)))), global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, global0.a.d, 17855u), vec4<u32>(4294967295u, u_input.b, u_input.b, global0.a.d))), 4u)] | -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(30880i, 3422i), global0.d.yy)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + global0.a.e.x))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), var_0.c.x);
    var_0 = Struct_4(_wgslsmith_sub_vec4_u32(var_0.a, var_0.a), -(0i << (u_input.e % 32u)), global0.e);
    let var_2 = firstLeadingBit(var_0.a.wx);
    return global3[_wgslsmith_index_u32(~(var_2.x << ((firstLeadingBit(28815u) >> (_wgslsmith_dot_vec3_u32(var_0.a.zwx, var_0.a.wyw) % 32u)) % 32u)), 21u)];
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global0 = global3[_wgslsmith_index_u32(~(min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, 40384u), vec4<u32>(1u, 0u, 4294967295u, 0u))), ~(u_input.e ^ global1.x)) ^ 0u), 21u)];
    global4 = array<i32, 4>();
    global3 = array<Struct_5, 21>();
    let var_0 = func_4(_wgslsmith_f_op_f32(global0.a.e.x + 1000f), vec3<bool>(any(!select(vec2<bool>(true, global0.a.b.x), global0.a.b, vec2<bool>(global0.a.b.x, true))), true, func_2()));
    let var_1 = firstLeadingBit(global1.zy);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(20388u, func_4(_wgslsmith_f_op_f32(-global0.e.x), select(vec3<bool>(true, true, var_0.a.b.x), vec3<bool>(var_0.b, true, true), vec3<bool>(true, true, false))).a.d, global1.x), vec3<u32>(1u, ~1u << (_wgslsmith_mod_u32(arg_0, u_input.b) % 32u), firstTrailingBit(_wgslsmith_add_u32(global0.a.d, arg_0)))), firstTrailingBit(~(~select(vec3<u32>(var_0.a.d, var_1.x, global1.x), vec3<u32>(49228u, 4294967295u, 1u), vec3<bool>(var_0.b, var_0.b, var_0.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_vec3_i32(max(vec3<i32>(global0.a.a.x, countOneBits(global4[_wgslsmith_index_u32(55930u, 4u)]), _wgslsmith_mult_i32(7388i, u_input.c)), u_input.d), vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(12954i, global0.d.x), -2147483647i), u_input.c)) >> (select((firstTrailingBit(vec3<u32>(u_input.b, global1.x, 49643u)) & ~vec3<u32>(u_input.a, global0.a.d, u_input.a)) << (~func_1(global1.x) % vec3<u32>(32u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(15696u, global0.a.d, global1.x), vec3<u32>(30758u, u_input.b, 47638u))), select(vec3<bool>(!global0.a.b.x, any(global0.a.b), global0.a.b.x), !select(vec3<bool>(true, false, true), vec3<bool>(false, global0.a.b.x, global0.b), true), vec3<bool>(global0.e.x == 305f, false, !global0.a.b.x))) % vec3<u32>(32u));
    global4 = array<i32, 4>();
    var var_0 = select(reverseBits(global1.xz), ~countOneBits(~reverseBits(global1.xz)), !(!(~global1.x == 51077u)));
    global4 = array<i32, 4>();
    let var_1 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~(~vec3<u32>(1u, 1u, 0u)) >> (select(~vec3<u32>(56541u, 65615u, 1u), ~vec3<u32>(0u, 16219u, var_0.x), select(vec3<bool>(false, false, false), vec3<bool>(global0.a.b.x, global0.a.b.x, global0.b), vec3<bool>(false, true, false))) % vec3<u32>(32u))), countOneBits(vec3<u32>(0u, var_0.x, 15632u)), ~(~(~reverseBits(vec3<u32>(global1.x, 0u, u_input.a)))));
    global3 = array<Struct_5, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c, global0.a.e.yy);
}

