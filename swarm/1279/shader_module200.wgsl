struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(37988i, false, vec2<f32>(1672f, 1002f), vec2<f32>(-1960f, -222f), 4294967295u), Struct_1(-15648i, false, vec2<f32>(1312f, 512f), vec2<f32>(291f, 1144f), 24370u), Struct_1(-13750i, true, vec2<f32>(854f, 331f), vec2<f32>(-372f, -735f), 9269u)), Struct_2(Struct_1(46391i, false, vec2<f32>(1290f, -530f), vec2<f32>(726f, -1872f), 14353u), Struct_1(2147483647i, true, vec2<f32>(2491f, 1000f), vec2<f32>(1784f, -476f), 1u), Struct_1(1i, false, vec2<f32>(-388f, 591f), vec2<f32>(1241f, -534f), 0u)), Struct_2(Struct_1(-1i, false, vec2<f32>(-346f, 2524f), vec2<f32>(-140f, 666f), 0u), Struct_1(5186i, true, vec2<f32>(422f, -1506f), vec2<f32>(-276f, -169f), 0u), Struct_1(-24651i, true, vec2<f32>(-696f, -482f), vec2<f32>(156f, -529f), 35423u)), Struct_2(Struct_1(-2069i, true, vec2<f32>(-437f, -1000f), vec2<f32>(-752f, -548f), 77300u), Struct_1(7193i, true, vec2<f32>(1042f, -405f), vec2<f32>(1980f, 1201f), 1u), Struct_1(-43403i, false, vec2<f32>(-1000f, -1327f), vec2<f32>(2186f, 615f), 20602u)), Struct_2(Struct_1(2147483647i, false, vec2<f32>(-1000f, 651f), vec2<f32>(1000f, 259f), 66132u), Struct_1(27180i, false, vec2<f32>(-1301f, -1267f), vec2<f32>(-299f, -470f), 14912u), Struct_1(-17650i, true, vec2<f32>(-959f, -185f), vec2<f32>(-923f, 2688f), 1u)), Struct_2(Struct_1(-18723i, true, vec2<f32>(-177f, 771f), vec2<f32>(-164f, 1432f), 0u), Struct_1(-4637i, false, vec2<f32>(-2526f, 1000f), vec2<f32>(1592f, -1512f), 1007u), Struct_1(2147483647i, true, vec2<f32>(129f, -614f), vec2<f32>(1000f, 1000f), 4294967295u)), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(-1991f, 868f), vec2<f32>(867f, 1205f), 21397u), Struct_1(2147483647i, true, vec2<f32>(135f, -179f), vec2<f32>(-238f, 1738f), 57150u), Struct_1(-63298i, false, vec2<f32>(643f, 774f), vec2<f32>(1021f, -661f), 0u)), Struct_2(Struct_1(-51823i, false, vec2<f32>(701f, 176f), vec2<f32>(-1986f, -1883f), 4294967295u), Struct_1(34370i, true, vec2<f32>(-2218f, -333f), vec2<f32>(1973f, 469f), 14493u), Struct_1(1i, true, vec2<f32>(-1000f, 1000f), vec2<f32>(-193f, 1002f), 1u)), Struct_2(Struct_1(i32(-2147483648), true, vec2<f32>(1137f, 271f), vec2<f32>(-1128f, -222f), 16694u), Struct_1(-34408i, false, vec2<f32>(811f, 352f), vec2<f32>(-203f, 1246f), 0u), Struct_1(14961i, false, vec2<f32>(634f, -273f), vec2<f32>(545f, -254f), 83320u)), Struct_2(Struct_1(0i, false, vec2<f32>(-1000f, 347f), vec2<f32>(1926f, -1000f), 0u), Struct_1(1i, true, vec2<f32>(-1194f, -152f), vec2<f32>(927f, 1076f), 53141u), Struct_1(i32(-2147483648), false, vec2<f32>(667f, 970f), vec2<f32>(-1227f, 392f), 1u)), Struct_2(Struct_1(2147483647i, false, vec2<f32>(-2213f, 105f), vec2<f32>(-157f, -353f), 40013u), Struct_1(i32(-2147483648), false, vec2<f32>(685f, 932f), vec2<f32>(524f, 1000f), 7397u), Struct_1(i32(-2147483648), false, vec2<f32>(1142f, -428f), vec2<f32>(1098f, -937f), 1u)), Struct_2(Struct_1(19866i, true, vec2<f32>(-725f, -474f), vec2<f32>(1000f, -811f), 1u), Struct_1(9371i, false, vec2<f32>(-662f, -1159f), vec2<f32>(316f, -910f), 40300u), Struct_1(-1i, true, vec2<f32>(-189f, 1468f), vec2<f32>(1655f, 249f), 0u)), Struct_2(Struct_1(i32(-2147483648), false, vec2<f32>(-1000f, -788f), vec2<f32>(604f, -411f), 4294967295u), Struct_1(2147483647i, true, vec2<f32>(-2148f, 2222f), vec2<f32>(447f, 1039f), 32113u), Struct_1(291i, false, vec2<f32>(-1000f, 639f), vec2<f32>(-719f, -143f), 1u)), Struct_2(Struct_1(18329i, true, vec2<f32>(-649f, 226f), vec2<f32>(-2010f, 816f), 1u), Struct_1(1i, true, vec2<f32>(822f, -1068f), vec2<f32>(-780f, -1222f), 75688u), Struct_1(14112i, false, vec2<f32>(232f, -280f), vec2<f32>(-207f, 388f), 31605u)));

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, false, true, true, true, false, false, true, false, true, false, false, true, false, false);

var<private> global2: bool = false;

var<private> global3: u32;

var<private> global4: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_1(2147483647i, false, vec2<f32>(-156f, -1922f), vec2<f32>(385f, 1381f), 0u), Struct_2(Struct_1(1i, true, vec2<f32>(-1000f, 417f), vec2<f32>(-995f, -938f), 6163u), Struct_1(-28415i, false, vec2<f32>(1174f, 532f), vec2<f32>(-694f, -235f), 0u), Struct_1(-1i, true, vec2<f32>(-1633f, -644f), vec2<f32>(1549f, -1443f), 4294967295u)), 1554f), Struct_3(Struct_1(6645i, true, vec2<f32>(286f, 423f), vec2<f32>(-547f, 743f), 1u), Struct_2(Struct_1(13685i, false, vec2<f32>(-1000f, 605f), vec2<f32>(-462f, 234f), 2408u), Struct_1(31529i, true, vec2<f32>(-1917f, 1074f), vec2<f32>(-298f, -992f), 4294967295u), Struct_1(0i, true, vec2<f32>(-935f, -676f), vec2<f32>(2446f, 1400f), 687u)), -975f), Struct_3(Struct_1(i32(-2147483648), false, vec2<f32>(1389f, -941f), vec2<f32>(-1000f, 212f), 4294967295u), Struct_2(Struct_1(-48233i, false, vec2<f32>(1000f, -744f), vec2<f32>(403f, -118f), 35584u), Struct_1(-10002i, false, vec2<f32>(1000f, -312f), vec2<f32>(1175f, 1224f), 1u), Struct_1(-19593i, true, vec2<f32>(-410f, -1023f), vec2<f32>(-278f, 1006f), 12639u)), 902f), Struct_3(Struct_1(-34342i, true, vec2<f32>(627f, 208f), vec2<f32>(619f, 1346f), 22422u), Struct_2(Struct_1(-13435i, false, vec2<f32>(1000f, 170f), vec2<f32>(841f, 1469f), 1u), Struct_1(33224i, true, vec2<f32>(2197f, -848f), vec2<f32>(646f, -998f), 0u), Struct_1(48999i, false, vec2<f32>(580f, -243f), vec2<f32>(476f, -475f), 30261u)), -794f), Struct_3(Struct_1(1i, true, vec2<f32>(506f, -1000f), vec2<f32>(-410f, 1825f), 4294967295u), Struct_2(Struct_1(63556i, true, vec2<f32>(1146f, -992f), vec2<f32>(1157f, 502f), 4294967295u), Struct_1(64753i, false, vec2<f32>(1185f, 736f), vec2<f32>(-1000f, -195f), 12392u), Struct_1(-3477i, false, vec2<f32>(1174f, -2627f), vec2<f32>(-836f, 128f), 4294967295u)), 1137f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_mult_i32(-1i, arg_2.c.a), select(false & (u_input.b > 33583i), true | (arg_0.b | false), arg_2.b.c.x != _wgslsmith_f_op_f32(-arg_2.c.d.x)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -251f))), arg_0.c.x), arg_0.d, 4294967295u), Struct_2(arg_2.b, arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1284f));
    global2 = var_0.a.b;
    let var_1 = ~0u;
    var var_2 = Struct_1(_wgslsmith_sub_i32(arg_0.a, _wgslsmith_dot_vec3_i32(u_input.c, firstTrailingBit(vec3<i32>(u_input.b, -2147483647i, 2147483647i)))), arg_0.b, arg_0.c, _wgslsmith_f_op_vec2_f32(floor(var_0.a.d)), ~u_input.a | firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(49209u, 77564u), vec2<u32>(4294967295u, var_0.b.c.e)), vec2<u32>(0u, var_1))));
    let var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(var_2.e, 0u, var_1, 4498u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1, var_1, 1u, 0u), select(vec4<u32>(4294967295u, 46733u, 1u, 61850u), vec4<u32>(u_input.d, var_2.e, 1u, 1u), vec4<bool>(true, false, arg_0.b, true)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.e) >> (vec2<u32>(var_0.b.a.e, 22147u) % vec2<u32>(32u)), reverseBits(vec2<u32>(arg_2.c.e, 5319u))), reverseBits(~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(10798u, u_input.d, arg_2.c.e, arg_0.e), vec4<u32>(arg_2.c.e, 0u, var_0.a.e, arg_0.e)) >> (var_0.b.a.e % 32u), ~_wgslsmith_clamp_u32(0u, arg_0.e, var_1)))), 5u)];
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.d.x, -1035f))))), arg_2.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-396f)))), var_2.c.x, _wgslsmith_f_op_f32(round(var_2.d.x))), arg_0.b | any(!vec3<bool>(arg_0.b, true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(-2147483647i, false, vec2<f32>(arg_0.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c.x) + -726f)), vec2<f32>(2070f, _wgslsmith_f_op_f32(arg_0.c.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)))), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1, 0u), 6500u));
    let var_1 = _wgslsmith_sub_vec4_i32(arg_2, vec4<i32>(arg_0.b.a, ~(~firstLeadingBit(5631i)), select(min(var_0.a, 1i), -22474i, any(vec4<bool>(false, var_0.b, true, var_0.b))) ^ (-2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.e, arg_1, 43677u), vec3<u32>(4294967295u, var_0.e, 0u)) % 32u)), min(17005i, _wgslsmith_clamp_i32(u_input.b, var_0.a, 28932i)) ^ (u_input.c.x << ((arg_1 ^ var_0.e) % 32u))));
    global3 = _wgslsmith_mult_u32(var_0.e, 0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(-25572i, true, var_0.c, vec2<f32>(var_0.c.x, var_0.d.x), 4294967295u), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(var_0.c.x - -1000f)), arg_0));
    let var_3 = global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(4294967295u)), 5u)];
    return var_3.b.a;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 14>();
    var var_0 = func_2(Struct_2(arg_1.a, func_2(Struct_2(Struct_1(2147483647i, arg_1.a.b, arg_1.b.c, arg_1.c.d, 1u), func_2(arg_1, 28837u, vec4<i32>(-15482i, u_input.b, arg_1.c.a, arg_1.b.a)), func_2(Struct_2(Struct_1(-890i, false, arg_1.b.d, arg_1.b.c, 4294967295u), Struct_1(arg_1.b.a, true, arg_1.a.c, arg_1.b.c, 18148u), arg_1.b), 4294967295u, vec4<i32>(0i, u_input.c.x, u_input.c.x, arg_1.c.a))), min(firstLeadingBit(4294967295u), 4294967295u & arg_1.b.e), max(vec4<i32>(43155i, arg_1.b.a, -38790i, u_input.c.x) | vec4<i32>(u_input.b, -30172i, 8307i, arg_1.a.a), vec4<i32>(arg_1.a.a, -1i, u_input.c.x, arg_1.b.a))), Struct_1(firstTrailingBit(firstLeadingBit(2147483647i)), true, vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c.d.x, 964f))))), ~u_input.d)), ~1u, reverseBits(min(vec4<i32>(12648i, max(1i, -12234i), -2147483647i, u_input.b), reverseBits(select(vec4<i32>(u_input.c.x, 0i, -21399i, arg_1.b.a), vec4<i32>(arg_1.a.a, 53459i, arg_1.b.a, 1i), global1[_wgslsmith_index_u32(1u, 17u)])))));
    let var_1 = global0[_wgslsmith_index_u32(max(32512u, ~arg_0), 14u)];
    var var_2 = global0[_wgslsmith_index_u32(arg_1.a.e, 14u)];
    var var_3 = select(!select(!select(vec3<bool>(var_1.c.b, arg_1.b.b, false), vec3<bool>(var_0.b, true, false), true), vec3<bool>(var_2.b.b, !var_1.b.b, global1[_wgslsmith_index_u32(var_2.b.e, 17u)]), !vec3<bool>(var_0.b, var_2.c.b, var_1.c.b)), !select(vec3<bool>(!var_2.a.b, !var_2.c.b, true), vec3<bool>(select(var_2.c.b, true, arg_1.c.b), -1i < var_0.a, global1[_wgslsmith_index_u32(~1u, 17u)]), vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.c.e, 17u)], var_1.b.b, global1[_wgslsmith_index_u32(15816u, 17u)])), false & var_2.c.b, false)), vec3<bool>(true, false, true));
    return Struct_1(~(i32(-1i) * -var_2.b.a), global1[_wgslsmith_index_u32(reverseBits(0u), 17u)], _wgslsmith_f_op_vec2_f32(var_1.a.d + _wgslsmith_f_op_vec2_f32(vec2<f32>(-374f, _wgslsmith_f_op_f32(var_0.d.x + -770f)) + _wgslsmith_f_op_vec2_f32(round(var_2.b.d)))), var_1.b.c, ~min(~firstTrailingBit(0u), 4294967295u));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    global3 = abs(19224u);
    global1 = array<bool, 17>();
    let var_0 = !select(vec3<bool>(!any(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.e, 17u)], global1[_wgslsmith_index_u32(25015u, 17u)])), 2147483647i != _wgslsmith_add_i32(u_input.c.x, -33178i), all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 17u)], true, global1[_wgslsmith_index_u32(arg_0.e, 17u)]))), vec3<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(1655u, 17u)], arg_0.b)), 4294967295u <= (arg_0.e & 8964u), false), select(!(!vec3<bool>(arg_0.b, arg_0.b, false)), !select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(9154u, 17u)]), global1[_wgslsmith_index_u32(arg_0.e, 17u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 17u)], arg_0.b, false)));
    global2 = var_0.x;
    global1 = array<bool, 17>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-193f, arg_0.c.x) - arg_0.c)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.c))))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.c.x)), arg_0.d.x))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> f32 {
    global2 = arg_0;
    global1 = array<bool, 17>();
    global3 = ~10317u;
    var var_0 = any(!(!vec3<bool>(arg_0, true, false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_4(~firstLeadingBit(53234u), Struct_2(func_2(Struct_2(Struct_1(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 17u)], vec2<f32>(504f, arg_1), vec2<f32>(arg_1, arg_1), 0u), Struct_1(7434i, true, vec2<f32>(178f, arg_1), vec2<f32>(167f, arg_1), u_input.d), Struct_1(u_input.b, arg_0, vec2<f32>(-679f, 414f), vec2<f32>(arg_1, arg_1), u_input.d)), 3789u, arg_2), Struct_1(0i, true, vec2<f32>(arg_1, 1000f), vec2<f32>(503f, 1000f), 0u), func_2(global0[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a, vec4<i32>(13263i, u_input.b, 2147483647i, u_input.b)))))));
    return -631f;
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.e, arg_2.a.e, 4294967295u, arg_2.a.e), ~vec4<u32>(arg_2.b.c.e, u_input.a, u_input.a, arg_2.a.e))), select(vec4<u32>(abs(u_input.a), ~39428u, u_input.a, u_input.a), ~vec4<u32>(arg_2.b.b.e, func_2(global0[_wgslsmith_index_u32(arg_2.a.e, 14u)], arg_2.a.e, vec4<i32>(arg_2.b.b.a, 1i, arg_2.a.a, u_input.b)).e, 1u, 1u ^ arg_2.b.b.e), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, arg_2.a.a, -16887i, -2147483647i), vec4<i32>(u_input.c.x, -32447i, 1i, -1636i)), firstLeadingBit(vec4<i32>(2147483647i, -29105i, -15158i, -1i))) != -(0i ^ arg_2.a.a)), arg_2.b.c.b);
    let var_1 = arg_2;
    let var_2 = i32(-1i) * -12824i;
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(func_2(Struct_2(arg_2.a, var_1.b.c, Struct_1(u_input.b, arg_1.x, vec2<f32>(arg_0, arg_0), vec2<f32>(-1574f, arg_2.c), u_input.a)), var_0.x, vec4<i32>(2147483647i, -2147483647i, arg_2.b.a.a, var_1.a.a)).c.x + arg_2.b.a.d.x) > -599f, true, true);
    let var_4 = arg_2.b.a.a;
    return Struct_1(1i, !select(true, 1401f == arg_2.b.a.d.x, var_1.a.b) || arg_1.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.b.c.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), _wgslsmith_f_op_f32(-arg_2.c)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -247f) - arg_2.b.a.d), vec2<f32>(-449f, arg_2.a.d.x)))), false)), _wgslsmith_f_op_vec2_f32(arg_2.b.a.c - _wgslsmith_f_op_vec2_f32(vec2<f32>(358f, arg_0) + var_1.a.d)), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.d ^ reverseBits(max(u_input.a, 65105u)));
    var var_1 = select(~_wgslsmith_add_vec3_i32(u_input.c, ~u_input.c) >> (vec3<u32>(var_0, u_input.a, _wgslsmith_div_u32(~u_input.d, var_0)) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_i32(-u_input.c, select(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-8353i, 35701i, 21017i)), u_input.c, vec3<bool>(true, true, true)))), vec3<bool>(global1[_wgslsmith_index_u32(~15739u, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)], true));
    global1 = array<bool, 17>();
    var var_2 = func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(577f)))), _wgslsmith_f_op_f32(func_1(all(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(52962u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(48343u, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(646f - 712f) * _wgslsmith_f_op_f32(f32(-1f) * -392f)), vec4<i32>(var_1.x, 1i, 0i >> (u_input.a % 32u), -u_input.c.x)))), !(!select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(global1[_wgslsmith_index_u32(49038u, 17u)], false), true), vec2<bool>(true, false), true)), Struct_3(Struct_1(45878i, global1[_wgslsmith_index_u32(u_input.d, 17u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, -427f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), -998f), _wgslsmith_add_u32(0u, var_0)), Struct_2(func_2(global0[_wgslsmith_index_u32(42093u, 14u)], ~var_0, vec4<i32>(5065i, -13864i, -47787i, u_input.c.x)), Struct_1(u_input.c.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(43024u, var_0), 17u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(523f, -1089f) - vec2<f32>(552f, -304f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(865f, -1000f) + vec2<f32>(464f, 503f)), select(u_input.a, 19311u, global1[_wgslsmith_index_u32(21184u, 17u)])), func_4(_wgslsmith_sub_u32(u_input.a, u_input.d), Struct_2(Struct_1(-1i, global1[_wgslsmith_index_u32(56861u, 17u)], vec2<f32>(1107f, -1709f), vec2<f32>(-247f, -2617f), u_input.a), Struct_1(u_input.b, global1[_wgslsmith_index_u32(1u, 17u)], vec2<f32>(-553f, -252f), vec2<f32>(-596f, -1845f), u_input.d), Struct_1(u_input.c.x, false, vec2<f32>(1017f, -803f), vec2<f32>(191f, -1000f), var_0)))), _wgslsmith_f_op_f32(floor(func_4(var_0 >> (u_input.a % 32u), Struct_2(Struct_1(5144i, true, vec2<f32>(-617f, -264f), vec2<f32>(645f, 1596f), 94863u), Struct_1(var_1.x, global1[_wgslsmith_index_u32(var_0, 17u)], vec2<f32>(-1000f, -233f), vec2<f32>(1000f, 1320f), 41382u), Struct_1(u_input.c.x, global1[_wgslsmith_index_u32(var_0, 17u)], vec2<f32>(-328f, -1000f), vec2<f32>(255f, -165f), 1u))).c.x))), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-465f, 258f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c)))), _wgslsmith_f_op_vec2_f32(-var_2.c)));
    var var_4 = Struct_2(Struct_1(func_4(_wgslsmith_div_u32(u_input.a, 32000u) ^ (var_0 ^ var_2.e), Struct_2(Struct_1(var_2.a, true, var_2.c, var_2.c, 52130u), Struct_1(-11062i, false, var_2.d, var_3, u_input.d), Struct_1(var_2.a, var_2.b, vec2<f32>(var_3.x, 989f), vec2<f32>(-756f, -1010f), 2599u))).a, var_2.b, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.c.x, var_2.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3))), ~(~(u_input.d >> (var_0 % 32u)))), Struct_1(~0i, false, var_3, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(func_4(1u, global0[_wgslsmith_index_u32(var_0, 14u)]), _wgslsmith_f_op_f32(-var_3.x), Struct_2(Struct_1(var_2.a, global1[_wgslsmith_index_u32(1u, 17u)], var_3, var_2.d, var_0), Struct_1(11504i, false, var_3, vec2<f32>(var_2.d.x, -531f), 1u), Struct_1(u_input.c.x, var_2.b, var_2.d, var_3, 0u)))).zx)), ~1u), func_4(min(abs(4294967295u), _wgslsmith_mult_u32(var_2.e, func_4(var_2.e, Struct_2(Struct_1(var_1.x, global1[_wgslsmith_index_u32(18410u, 17u)], var_2.c, vec2<f32>(141f, var_2.c.x), var_2.e), Struct_1(-20004i, global1[_wgslsmith_index_u32(var_0, 17u)], vec2<f32>(var_3.x, -1625f), var_3, u_input.d), Struct_1(-51689i, true, var_2.d, vec2<f32>(var_2.c.x, var_2.d.x), var_2.e))).e)), global0[_wgslsmith_index_u32(abs(27425u), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.c.x);
}

