struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_1(13030i, vec4<i32>(2147483647i, 13153i, -2168i, -38262i), vec3<f32>(1390f, -336f, -417f), 4294967295u, 693f), vec2<f32>(795f, -333f), vec3<bool>(true, false, true)), Struct_4(Struct_1(2147483647i, vec4<i32>(i32(-2147483648), 1i, -1i, -44737i), vec3<f32>(-1383f, -1268f, 2053f), 1u, 1237f), vec2<f32>(-217f, 1206f), vec3<bool>(false, true, true)), Struct_4(Struct_1(-29515i, vec4<i32>(-1i, -27800i, -1i, 0i), vec3<f32>(-1323f, 153f, -344f), 58284u, -417f), vec2<f32>(541f, 735f), vec3<bool>(false, false, false)), Struct_4(Struct_1(18439i, vec4<i32>(4500i, -8441i, -1i, 0i), vec3<f32>(-305f, -1296f, 495f), 4294967295u, 373f), vec2<f32>(437f, -277f), vec3<bool>(false, true, true)), Struct_4(Struct_1(i32(-2147483648), vec4<i32>(-1i, 0i, -87475i, -1i), vec3<f32>(422f, -923f, -1066f), 57409u, 437f), vec2<f32>(-1813f, 1599f), vec3<bool>(true, false, false)), Struct_4(Struct_1(-16388i, vec4<i32>(21243i, -25815i, 33524i, -20851i), vec3<f32>(-1002f, 1000f, -874f), 4294967295u, 454f), vec2<f32>(1205f, 1533f), vec3<bool>(true, true, false)), Struct_4(Struct_1(0i, vec4<i32>(18808i, 3729i, -25915i, -8680i), vec3<f32>(-823f, -490f, -885f), 37545u, -1078f), vec2<f32>(989f, 129f), vec3<bool>(false, true, true)), Struct_4(Struct_1(12893i, vec4<i32>(-2362i, i32(-2147483648), -3625i, 1i), vec3<f32>(-1658f, -470f, 1796f), 0u, 900f), vec2<f32>(-269f, -299f), vec3<bool>(true, false, false)), Struct_4(Struct_1(-41083i, vec4<i32>(17643i, -13542i, 2147483647i, i32(-2147483648)), vec3<f32>(476f, 572f, -1486f), 4294967295u, 935f), vec2<f32>(-1214f, 594f), vec3<bool>(true, false, true)), Struct_4(Struct_1(2147483647i, vec4<i32>(i32(-2147483648), -43837i, 2972i, i32(-2147483648)), vec3<f32>(-240f, 907f, 337f), 4294967295u, 1092f), vec2<f32>(1366f, 1162f), vec3<bool>(true, false, false)), Struct_4(Struct_1(30368i, vec4<i32>(1i, 52338i, 2147483647i, -1i), vec3<f32>(1226f, -749f, 623f), 1u, -555f), vec2<f32>(-616f, 816f), vec3<bool>(true, true, true)), Struct_4(Struct_1(-42988i, vec4<i32>(0i, -1i, -1i, -21274i), vec3<f32>(-672f, 1258f, -1000f), 2194u, 715f), vec2<f32>(-2406f, 713f), vec3<bool>(false, false, false)), Struct_4(Struct_1(-6990i, vec4<i32>(17546i, -1i, -18169i, 1i), vec3<f32>(-533f, -834f, 2259f), 18377u, 2697f), vec2<f32>(1646f, 1345f), vec3<bool>(true, false, false)), Struct_4(Struct_1(17420i, vec4<i32>(-3536i, 36964i, 0i, -46351i), vec3<f32>(-132f, 1325f, -1000f), 90812u, -276f), vec2<f32>(163f, 791f), vec3<bool>(false, false, true)), Struct_4(Struct_1(-47589i, vec4<i32>(5230i, 22017i, 19971i, 1i), vec3<f32>(725f, -1702f, 199f), 4294967295u, 102f), vec2<f32>(1219f, 1000f), vec3<bool>(true, false, false)), Struct_4(Struct_1(-73605i, vec4<i32>(23766i, -4069i, 1i, 0i), vec3<f32>(-201f, 958f, -469f), 1u, 271f), vec2<f32>(-536f, 1166f), vec3<bool>(false, false, true)), Struct_4(Struct_1(30722i, vec4<i32>(i32(-2147483648), 3167i, 2147483647i, -34499i), vec3<f32>(-883f, 278f, -116f), 75610u, -835f), vec2<f32>(875f, 2305f), vec3<bool>(true, false, true)), Struct_4(Struct_1(-1i, vec4<i32>(16117i, -24721i, i32(-2147483648), -51650i), vec3<f32>(-1628f, 667f, 264f), 0u, 1000f), vec2<f32>(-1742f, -1574f), vec3<bool>(false, true, false)), Struct_4(Struct_1(1i, vec4<i32>(-151i, 31679i, -27034i, 17198i), vec3<f32>(-860f, 991f, -1311f), 0u, 491f), vec2<f32>(133f, 800f), vec3<bool>(true, false, true)), Struct_4(Struct_1(1i, vec4<i32>(35341i, 3741i, 43278i, -1i), vec3<f32>(1000f, 362f, 354f), 9585u, 875f), vec2<f32>(686f, 778f), vec3<bool>(false, true, true)), Struct_4(Struct_1(0i, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 26129i), vec3<f32>(1016f, -1563f, 757f), 18904u, -822f), vec2<f32>(1136f, 243f), vec3<bool>(true, false, false)), Struct_4(Struct_1(61933i, vec4<i32>(-1i, -8462i, -1i, 1i), vec3<f32>(1000f, -1000f, -535f), 62356u, 1329f), vec2<f32>(-1761f, 176f), vec3<bool>(true, true, false)), Struct_4(Struct_1(i32(-2147483648), vec4<i32>(32752i, 0i, 11105i, 46663i), vec3<f32>(-1961f, -1026f, -114f), 68673u, 551f), vec2<f32>(210f, -394f), vec3<bool>(true, true, true)), Struct_4(Struct_1(-1i, vec4<i32>(-12493i, 2147483647i, -1i, 34587i), vec3<f32>(238f, 750f, 595f), 12389u, 1261f), vec2<f32>(-690f, 366f), vec3<bool>(true, false, true)), Struct_4(Struct_1(-33589i, vec4<i32>(-5493i, i32(-2147483648), -1i, -14148i), vec3<f32>(377f, -380f, 2181f), 55408u, -1019f), vec2<f32>(1647f, 293f), vec3<bool>(false, false, true)), Struct_4(Struct_1(1i, vec4<i32>(2147483647i, 1i, -1i, -1i), vec3<f32>(1698f, -507f, 298f), 14765u, 454f), vec2<f32>(-126f, -201f), vec3<bool>(true, false, false)), Struct_4(Struct_1(5149i, vec4<i32>(1i, 28069i, -43412i, 5969i), vec3<f32>(-1312f, -219f, -701f), 62243u, -270f), vec2<f32>(-1095f, 1501f), vec3<bool>(true, true, true)), Struct_4(Struct_1(-94675i, vec4<i32>(19244i, 54615i, -13447i, 2147483647i), vec3<f32>(680f, -472f, -159f), 1u, 590f), vec2<f32>(1187f, -287f), vec3<bool>(false, true, false)), Struct_4(Struct_1(15837i, vec4<i32>(1i, i32(-2147483648), 38936i, i32(-2147483648)), vec3<f32>(104f, -848f, 727f), 96999u, -952f), vec2<f32>(-1677f, 1320f), vec3<bool>(false, true, false)));

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-950f, -401f, -491f), vec3<f32>(-503f, -382f, -1000f), vec3<f32>(1032f, -1248f, -1493f), vec3<f32>(1018f, -1785f, 662f), vec3<f32>(-1000f, 849f, -308f), vec3<f32>(-1000f, 742f, -487f), vec3<f32>(1978f, 1224f, 459f), vec3<f32>(-439f, -1121f, 2448f), vec3<f32>(261f, -2131f, -471f), vec3<f32>(-764f, 721f, -830f), vec3<f32>(-517f, 495f, 533f), vec3<f32>(216f, 1000f, 2085f), vec3<f32>(-474f, 562f, -1634f), vec3<f32>(1000f, 1008f, 843f), vec3<f32>(2137f, -926f, 223f));

var<private> global2: vec3<u32> = vec3<u32>(13112u, 0u, 0u);

var<private> global3: vec2<f32> = vec2<f32>(933f, 1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_5) -> bool {
    var var_0 = arg_3.b.wy;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = array<vec3<f32>, 15>();
    var_0 = !select(!vec2<bool>(var_0.x, u_input.a != 0i), vec2<bool>(!all(vec3<bool>(false, true, false)), arg_1 || true), !vec2<bool>(1i <= arg_2.d.a, true));
    let var_2 = select(vec2<bool>(true, false), vec2<bool>(!arg_3.b.x, true), ~(~46617u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 0u, global2.x), vec4<u32>(1u, 23430u, 28493u, 49104u))) == ~_wgslsmith_div_u32(~arg_0.x, 1u));
    return false;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_4(Struct_1(0i, vec4<i32>(u_input.a, u_input.a, u_input.a, firstLeadingBit(51893i)) | (~vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a) >> (vec4<u32>(global2.x, 4294967295u, u_input.b.x, 42294u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(global2.x, 15u)] + vec3<f32>(global3.x, global3.x, global3.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 384f, -278f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(741f, 407f, -128f))), any(vec3<bool>(true, false, true))))), ~global2.x, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -697f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1605f)), select(vec3<bool>(all(vec3<bool>(true, true, true)), (53301i & u_input.a) < u_input.a, func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(5284u, 9111u), u_input.b.yx), true, Struct_3(vec2<u32>(global2.x, u_input.b.x), 8209u, 34605u, Struct_1(45397i, vec4<i32>(56629i, 0i, -54632i, -1i), vec3<f32>(global3.x, 176f, 1273f), global2.x, 255f), vec2<u32>(1u, 2306u)), Struct_5(Struct_1(-1i, vec4<i32>(1i, u_input.a, -17819i, u_input.a), vec3<f32>(arg_0, -1425f, global3.x), u_input.b.x, arg_0), vec4<bool>(true, false, false, true), global2.zz))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(~(~(u_input.b.x & 1u))), 15u)];
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.x, _wgslsmith_div_f32(595f, var_0.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -1000f), (global2.x << (_wgslsmith_add_u32(44546u, global2.x) % 32u)) == _wgslsmith_dot_vec4_u32(vec4<u32>(63684u, var_0.a.d, var_0.a.d, u_input.b.x), vec4<u32>(var_0.a.d, global2.x, global2.x, u_input.b.x)))) - _wgslsmith_f_op_vec2_f32(var_0.a.c.yy * var_1.xy));
    let var_2 = ~(~(~vec3<u32>(1u, ~u_input.b.x, max(98091u, global2.x))));
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, min(~(1u >> (~var_0.a.d % 32u)), ~(~0u)), 4294967295u), 29u)];
    return Struct_3(vec2<u32>(u_input.b.x, abs(var_0.a.d)), var_0.a.d, reverseBits(2847u & u_input.b.x), var_0.a, ~(~min(u_input.b.yy, var_2.yz)));
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    var var_0 = !all(!(!arg_0.b));
    var var_1 = func_2(1049f);
    global1 = array<vec3<f32>, 15>();
    var var_2 = arg_0;
    var_0 = any(var_2.b.zw);
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 1000f))).d.c.zy;
    let var_1 = firstTrailingBit(8469u);
    global1 = array<vec3<f32>, 15>();
    let var_2 = select(vec4<u32>(~(~1u), countOneBits(u_input.b.x), ~4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_2.d, 66071u), abs(global2.x))), reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 9578u), u_input.b), global2.x, u_input.b.x >> (arg_2.d % 32u), arg_2.d)), arg_1) | vec4<u32>(firstTrailingBit(~abs(u_input.b.x)), 14724u, _wgslsmith_div_u32(func_1(Struct_5(arg_2, vec4<bool>(arg_1, arg_1, arg_1, false), vec2<u32>(global2.x, 4294967295u))).d, global2.x), 1u);
    global2 = ~select(max(vec3<u32>(80460u, 0u, 0u) | vec3<u32>(var_1, 55345u, 33330u), vec3<u32>(~arg_2.d, 1u, func_2(arg_0).b)), countOneBits(firstLeadingBit(abs(vec3<u32>(4294967295u, 43636u, 0u)))), vec3<bool>(!arg_1, arg_1, !arg_1));
    return -792f;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    var var_0 = select(!(!(!(!vec3<bool>(arg_0, arg_0, false)))), select(vec3<bool>(!arg_0 && arg_0, false, true), select(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, arg_0), true), !vec3<bool>(true, arg_0, arg_0), false), vec3<bool>(any(vec4<bool>(arg_0, arg_0, false, true)), false, arg_0), true), select(select(vec3<bool>(arg_0, false, true), !vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, false)), select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(arg_0, arg_0, false), true), select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true), !arg_0))), any(vec2<bool>(!(true && arg_0), false)));
    return _wgslsmith_div_i32(-40409i, 16488i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_i32(func_5(true, 28586u, vec4<u32>(1u, u_input.b.x, _wgslsmith_clamp_u32(142450u, global2.x, global2.x), 26530u ^ global2.x), _wgslsmith_f_op_f32(func_4(-457f, true, func_1(Struct_5(Struct_1(u_input.a, vec4<i32>(u_input.a, u_input.a, 9890i, 18503i), global1[_wgslsmith_index_u32(11961u, 15u)], global2.x, global3.x), vec4<bool>(true, true, false, true), vec2<u32>(u_input.b.x, global2.x)))))), _wgslsmith_div_i32(u_input.a | -2741i, func_5(true, abs(3170u), vec4<u32>(1u, 51999u, u_input.b.x, 6240u), _wgslsmith_f_op_f32(global3.x + global3.x)))), func_1(Struct_5(func_1(Struct_5(Struct_1(-40077i, vec4<i32>(u_input.a, u_input.a, 1i, 3556i), global1[_wgslsmith_index_u32(28230u, 15u)], global2.x, global3.x), vec4<bool>(true, false, true, true), vec2<u32>(67219u, global2.x))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), func_2(_wgslsmith_f_op_f32(global3.x * 1241f)).a)).b, vec3<f32>(_wgslsmith_div_f32(1663f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-491f, global3.x))), global3.x, global3.x), ~0u, _wgslsmith_f_op_f32(ceil(global3.x)));
    var var_1 = false;
    var var_2 = func_2(_wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 1674f)))).d;
    var var_3 = Struct_2(~(-(~1i)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.c.zy)) + vec2<f32>(792f, var_0.c.x))) * var_2.c.xx);
    let var_5 = Struct_5(Struct_1(firstLeadingBit(-(~var_0.a)), _wgslsmith_clamp_vec4_i32(abs(func_1(Struct_5(Struct_1(-31929i, vec4<i32>(0i, 1i, var_3.a, 2147483647i), vec3<f32>(383f, -1312f, var_0.c.x), 17970u, 543f), vec4<bool>(false, false, true, false), vec2<u32>(0u, var_0.d))).b), max(-var_2.b, var_2.b), firstLeadingBit(abs(vec4<i32>(u_input.a, -2147483647i, 8707i, 2147483647i)))), vec3<f32>(593f, func_1(Struct_5(Struct_1(var_3.a, var_2.b, var_2.c, u_input.b.x, -1829f), vec4<bool>(false, false, false, false), vec2<u32>(global2.x, u_input.b.x))).e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-428f + var_2.e), _wgslsmith_f_op_f32(1946f * var_0.e))), ~firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -2235f)), !vec4<bool>(select(false, select(false, true, true), true), select(any(vec3<bool>(true, true, true)), 639f != var_0.c.x, false), false, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), u_input.b.zz | ~(~u_input.b.zy));
    var var_6 = vec2<i32>(1i, -func_5(false, 4294967295u, _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, var_0.d, 32186u), select(vec4<u32>(50526u, u_input.b.x, 4294967295u, var_5.c.x), vec4<u32>(0u, global2.x, 4294967295u, 1u), vec4<bool>(false, var_5.b.x, false, false))), func_2(var_2.c.x).d.c.x));
    var_2 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~global2.xx, ~countOneBits(abs(u_input.b.yx))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.a, var_5.a.b.x, -27378i)), vec3<i32>(_wgslsmith_mult_i32(u_input.a, firstTrailingBit(u_input.a)), var_0.b.x | var_5.a.a, 1i)));
}

