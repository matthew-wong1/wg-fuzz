struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(1552f, -788f, -1274f, -612f), vec4<i32>(-1i, i32(-2147483648), 1i, 1i), vec4<f32>(-2221f, 1145f, 855f, 1025f), vec3<f32>(-848f, -527f, -123f)), Struct_1(vec4<f32>(311f, 416f, 905f, -378f), vec4<i32>(-24407i, 2147483647i, 1i, 11288i), vec4<f32>(-328f, 300f, 146f, 134f), vec3<f32>(-115f, -1108f, 1185f)), Struct_1(vec4<f32>(958f, 1289f, -374f, 1284f), vec4<i32>(32304i, 32140i, 20901i, 0i), vec4<f32>(-1411f, 667f, 1000f, 2245f), vec3<f32>(-741f, 140f, 1148f)), Struct_1(vec4<f32>(-984f, 500f, 1019f, -1000f), vec4<i32>(i32(-2147483648), 26243i, -1i, 2475i), vec4<f32>(1792f, 1664f, -1185f, 298f), vec3<f32>(1527f, -832f, -1801f)), Struct_1(vec4<f32>(552f, -973f, 1052f, -1488f), vec4<i32>(-22362i, 20676i, 1i, 42327i), vec4<f32>(-1765f, -370f, 2919f, 1233f), vec3<f32>(937f, 808f, 553f)), Struct_1(vec4<f32>(135f, 602f, -441f, -143f), vec4<i32>(0i, 28737i, 15373i, 8109i), vec4<f32>(353f, 1342f, -524f, 1004f), vec3<f32>(863f, -1172f, -446f)), Struct_1(vec4<f32>(360f, -1000f, -296f, -742f), vec4<i32>(-1i, 19707i, -37126i, -24094i), vec4<f32>(-820f, -2401f, -895f, 587f), vec3<f32>(-998f, -167f, 1050f)), Struct_1(vec4<f32>(-931f, 1306f, -391f, 1138f), vec4<i32>(-4610i, 1i, -40848i, i32(-2147483648)), vec4<f32>(-496f, -510f, -414f, 160f), vec3<f32>(258f, 691f, -666f)), Struct_1(vec4<f32>(-733f, -1208f, 2399f, 742f), vec4<i32>(-45599i, i32(-2147483648), 1i, 0i), vec4<f32>(-1000f, 1000f, 1000f, 410f), vec3<f32>(2114f, 266f, -591f)), Struct_1(vec4<f32>(-566f, 1233f, -1080f, 2176f), vec4<i32>(37879i, 0i, 46594i, 9817i), vec4<f32>(-973f, -615f, 1349f, -243f), vec3<f32>(-1740f, 1083f, -828f)), Struct_1(vec4<f32>(-411f, 378f, -1942f, -924f), vec4<i32>(1i, 0i, 12734i, 5508i), vec4<f32>(600f, -997f, 2212f, -750f), vec3<f32>(-1403f, 589f, -1806f)), Struct_1(vec4<f32>(522f, 1000f, 2088f, -197f), vec4<i32>(-37765i, -8945i, 1i, 2147483647i), vec4<f32>(-1000f, 1000f, 1185f, -930f), vec3<f32>(-1076f, -357f, -1732f)), Struct_1(vec4<f32>(1943f, -1012f, 306f, -268f), vec4<i32>(-75902i, 3205i, 2091i, 1i), vec4<f32>(-494f, 695f, 565f, -408f), vec3<f32>(1000f, -573f, 600f)), Struct_1(vec4<f32>(-1391f, 215f, 176f, -1000f), vec4<i32>(-40633i, 35442i, -31685i, -29968i), vec4<f32>(-1000f, -959f, 476f, 1074f), vec3<f32>(-837f, -1039f, 697f)), Struct_1(vec4<f32>(1386f, -731f, -1000f, -311f), vec4<i32>(27278i, 46329i, -6552i, 18233i), vec4<f32>(1488f, -583f, -250f, -1155f), vec3<f32>(1000f, 754f, 983f)), Struct_1(vec4<f32>(1000f, -942f, -2848f, -833f), vec4<i32>(2147483647i, -19449i, -35619i, 210i), vec4<f32>(-107f, -1194f, 213f, 164f), vec3<f32>(240f, 240f, 1402f)), Struct_1(vec4<f32>(968f, 125f, 1373f, 1412f), vec4<i32>(0i, -70035i, -1i, -44184i), vec4<f32>(1000f, 147f, 551f, 1116f), vec3<f32>(-331f, 1072f, 985f)), Struct_1(vec4<f32>(1000f, -200f, 578f, -1414f), vec4<i32>(2147483647i, -1i, i32(-2147483648), 1i), vec4<f32>(229f, -3298f, 482f, -1045f), vec3<f32>(-576f, -238f, 1418f)), Struct_1(vec4<f32>(937f, -702f, -1701f, 134f), vec4<i32>(-1i, -1i, i32(-2147483648), 57554i), vec4<f32>(1000f, -154f, 533f, -157f), vec3<f32>(697f, 1211f, 659f)), Struct_1(vec4<f32>(-1780f, -648f, -1915f, 171f), vec4<i32>(0i, -1i, -48940i, -51135i), vec4<f32>(-1765f, 727f, 1558f, 2165f), vec3<f32>(1000f, 1930f, -1173f)), Struct_1(vec4<f32>(-1022f, 2242f, -1623f, -1262f), vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648)), vec4<f32>(-257f, -1108f, -112f, -675f), vec3<f32>(-667f, 275f, -708f)), Struct_1(vec4<f32>(-1000f, -882f, 504f, -1602f), vec4<i32>(8450i, 27472i, 2147483647i, -23500i), vec4<f32>(398f, -965f, -161f, 112f), vec3<f32>(433f, 864f, 1000f)), Struct_1(vec4<f32>(326f, -134f, -187f, 137f), vec4<i32>(2147483647i, i32(-2147483648), -40202i, -1i), vec4<f32>(1102f, -808f, 1346f, -1123f), vec3<f32>(904f, -1000f, -1090f)), Struct_1(vec4<f32>(-1118f, 1954f, 546f, -426f), vec4<i32>(6046i, 1i, -17954i, 73301i), vec4<f32>(-702f, -823f, 721f, 427f), vec3<f32>(-465f, 451f, -392f)), Struct_1(vec4<f32>(207f, 711f, -225f, -816f), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<f32>(482f, 504f, -458f, -1238f), vec3<f32>(-691f, 1000f, -1327f)), Struct_1(vec4<f32>(949f, 551f, -1000f, 1011f), vec4<i32>(-30094i, 30144i, 2147483647i, i32(-2147483648)), vec4<f32>(-1000f, 215f, 3453f, 1276f), vec3<f32>(2569f, -1551f, 1802f)), Struct_1(vec4<f32>(956f, 1008f, 211f, -126f), vec4<i32>(5446i, -32601i, 35026i, 1i), vec4<f32>(-1474f, 1530f, -1610f, -127f), vec3<f32>(-1000f, -1203f, 346f)), Struct_1(vec4<f32>(592f, -146f, 544f, -658f), vec4<i32>(i32(-2147483648), -1i, 49770i, 1i), vec4<f32>(185f, -599f, -1151f, 506f), vec3<f32>(1000f, 378f, 1000f)), Struct_1(vec4<f32>(-197f, 1000f, -1000f, -2595f), vec4<i32>(i32(-2147483648), -7440i, -13998i, 1i), vec4<f32>(-1464f, -2138f, 111f, 1057f), vec3<f32>(-615f, -1027f, -2246f)), Struct_1(vec4<f32>(712f, -847f, -1681f, -406f), vec4<i32>(0i, -15063i, -77977i, -19576i), vec4<f32>(1093f, -262f, 1715f, 615f), vec3<f32>(962f, -2126f, 1436f)));

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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(63853u, 30u)];
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = -select(-5594i, var_0.b.x, true);
    global2 = array<Struct_1, 30>();
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), 30u)]);
    return !(!select(vec3<bool>(any(vec3<bool>(true, true, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f));
    return select(vec3<bool>(true, false, (-arg_0.x <= select(u_input.c, arg_1, true)) | !all(vec2<bool>(false, true))), vec3<bool>(!(_wgslsmith_mod_i32(-2147483647i, u_input.b.x) <= -arg_1), _wgslsmith_f_op_f32(min(-393f, _wgslsmith_f_op_f32(arg_2 - -414f))) < _wgslsmith_f_op_f32(f32(-1f) * -2041f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -424f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - arg_2))), !vec3<bool>(true, false, any(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.a.x;
    global0 = 691f;
    let var_1 = select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), select(select(func_2(), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(~vec4<i32>(arg_0, 40831i, 2362i, arg_0), 1i, _wgslsmith_f_op_f32(ceil(-255f))), vec3<bool>(true, true, true)), true || func_3(~vec4<i32>(u_input.c, arg_0, -1i, 2147483647i), abs(u_input.b.x), 343f).x), vec3<bool>(true, false, true), (select(30458u, ~arg_1.x, any(vec2<bool>(false, true))) < _wgslsmith_dot_vec2_u32(~arg_1.xy, ~vec2<u32>(0u, arg_1.x))) || true);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-381f, _wgslsmith_f_op_f32(1000f + 364f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-277f + 1332f) - -883f)), -488f))));
    global2 = array<Struct_1, 30>();
    return Struct_1(vec4<f32>(1f, -338f, _wgslsmith_f_op_f32(sign(-596f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(floor(143f)))))), max(abs(_wgslsmith_div_vec4_i32(max(vec4<i32>(0i, 1i, u_input.b.x, 0i), vec4<i32>(u_input.c, -1i, 14449i, u_input.c)), ~vec4<i32>(arg_0, u_input.b.x, 25070i, -1i))), _wgslsmith_div_vec4_i32(min(~vec4<i32>(u_input.b.x, 17148i, 1i, -2147483647i), vec4<i32>(u_input.b.x, 9504i, u_input.c, u_input.c)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 48594i, arg_0, -1i), vec4<i32>(arg_0, 1i, u_input.c, arg_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1003f, 365f, 770f, 717f))))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1535f, 460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-289f)) - _wgslsmith_div_f32(986f, -1339f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    let var_0 = Struct_2(func_1(u_input.c, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), u_input.a), 58285u, countOneBits(1u), u_input.a.x), ~(~vec4<u32>(4294967295u, 96995u, u_input.a.x, 4294967295u)))), _wgslsmith_div_vec3_u32(u_input.a, firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1032f, -395f, 486f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(430f, 2740f, -228f) - vec3<f32>(-1000f, 393f, -151f)))))), global2[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x) | ~u_input.a.x), 30u)]);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.d.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.x)))))));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(var_0.a.d.x, _wgslsmith_f_op_f32(round(var_0.a.d.x))))), 639f));
    var var_1 = select(u_input.b.zy, reverseBits(~(vec2<i32>(-22532i, -1i) | vec2<i32>(4695i, var_0.a.b.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_div_f32(var_0.c.x, var_0.c.x)), _wgslsmith_f_op_f32(round(910f)))) * var_0.a.d.x), u_input.a.x, u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-901f, var_0.d.c.x, 361f, var_0.a.d.x) + var_0.d.a)), _wgslsmith_div_vec4_f32(var_0.d.c, vec4<f32>(1000f, -1073f, var_0.c.x, -353f))))));
}

