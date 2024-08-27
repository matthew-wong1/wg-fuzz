struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(-432f, vec4<f32>(-268f, 276f, -707f, -103f), 36312i, vec4<i32>(2112i, -39800i, 337i, 21789i), vec3<i32>(-25130i, 0i, 0i)), Struct_2(818f, vec4<f32>(-1022f, 2327f, 246f, 995f), i32(-2147483648), vec4<i32>(61469i, -7768i, 4727i, -1i), vec3<i32>(-2579i, 2147483647i, -1i)), Struct_2(1313f, vec4<f32>(-1090f, -331f, -1000f, -144f), 32515i, vec4<i32>(1132i, 25618i, 5393i, 0i), vec3<i32>(-1i, 1i, -2074i)), Struct_2(340f, vec4<f32>(-1141f, 1602f, -147f, 1000f), 17023i, vec4<i32>(18269i, -1i, 1i, -20771i), vec3<i32>(-19832i, i32(-2147483648), 0i)), Struct_2(619f, vec4<f32>(-506f, -298f, -764f, 1000f), -978i, vec4<i32>(10309i, -52327i, -12302i, -1i), vec3<i32>(2147483647i, 0i, -1i)), Struct_2(-670f, vec4<f32>(556f, 147f, -570f, 1422f), 72124i, vec4<i32>(-22541i, -46201i, 12737i, i32(-2147483648)), vec3<i32>(-1i, -53372i, -1i)), Struct_2(413f, vec4<f32>(1766f, -1061f, -862f, -217f), 0i, vec4<i32>(1i, -65547i, -3246i, 18226i), vec3<i32>(-9160i, 13656i, -1i)), Struct_2(539f, vec4<f32>(-1000f, -1181f, 943f, -1165f), -41978i, vec4<i32>(8008i, 31444i, 2147483647i, 1i), vec3<i32>(39078i, -36671i, -1i)), Struct_2(-454f, vec4<f32>(179f, -1758f, -499f, 209f), -1i, vec4<i32>(1i, -6844i, -1i, 53527i), vec3<i32>(0i, 9770i, -58064i)), Struct_2(-582f, vec4<f32>(1358f, 417f, 1286f, -125f), -26042i, vec4<i32>(-6804i, 4661i, 13704i, 1i), vec3<i32>(-5270i, i32(-2147483648), -1i)), Struct_2(546f, vec4<f32>(443f, 356f, 700f, -575f), 47341i, vec4<i32>(1i, 38785i, 0i, 33125i), vec3<i32>(2147483647i, -6328i, 2147483647i)), Struct_2(-1868f, vec4<f32>(-679f, 2313f, -1121f, -327f), 1i, vec4<i32>(0i, -11550i, 1i, 2147483647i), vec3<i32>(21617i, -41050i, -48746i)), Struct_2(986f, vec4<f32>(765f, -267f, -1027f, 393f), i32(-2147483648), vec4<i32>(-42335i, 2147483647i, 0i, 1i), vec3<i32>(61596i, 0i, 3461i)), Struct_2(540f, vec4<f32>(1566f, -948f, 1560f, -164f), -1734i, vec4<i32>(13349i, -1i, 1i, -28225i), vec3<i32>(2147483647i, 2147483647i, -20205i)), Struct_2(177f, vec4<f32>(-1130f, 1173f, -1812f, -207f), 2968i, vec4<i32>(2147483647i, -1i, 29560i, 0i), vec3<i32>(-19638i, 44026i, 1i)), Struct_2(594f, vec4<f32>(134f, -2369f, -549f, 1453f), i32(-2147483648), vec4<i32>(i32(-2147483648), i32(-2147483648), -77700i, -18216i), vec3<i32>(1i, -34202i, 5596i)), Struct_2(1063f, vec4<f32>(1326f, -950f, -1280f, -1307f), 1i, vec4<i32>(-74370i, -1i, -11791i, 42666i), vec3<i32>(i32(-2147483648), 53728i, 24172i)), Struct_2(-634f, vec4<f32>(-1376f, 1568f, -207f, 253f), -14305i, vec4<i32>(22056i, 19415i, 2147483647i, -31526i), vec3<i32>(-1i, -20356i, 14344i)), Struct_2(952f, vec4<f32>(487f, -1000f, -894f, 200f), i32(-2147483648), vec4<i32>(0i, 2147483647i, i32(-2147483648), -24812i), vec3<i32>(42312i, -19501i, -58163i)), Struct_2(1127f, vec4<f32>(-307f, 1658f, -360f, 1055f), 1i, vec4<i32>(0i, 2147483647i, 0i, -37451i), vec3<i32>(2147483647i, -1i, -22255i)), Struct_2(1821f, vec4<f32>(-3223f, -167f, 1005f, 1000f), 1i, vec4<i32>(0i, 2147483647i, -6434i, -7522i), vec3<i32>(-1i, 4938i, 26851i)), Struct_2(524f, vec4<f32>(-648f, 436f, -105f, 585f), 913i, vec4<i32>(4735i, -661i, 34325i, 29056i), vec3<i32>(-1i, i32(-2147483648), 14537i)), Struct_2(-110f, vec4<f32>(-1010f, 1561f, 907f, 1946f), -14935i, vec4<i32>(-87794i, i32(-2147483648), 2147483647i, 1i), vec3<i32>(25918i, 1i, 1i)), Struct_2(268f, vec4<f32>(1363f, 1689f, 590f, -130f), i32(-2147483648), vec4<i32>(-14854i, -28954i, -67857i, 0i), vec3<i32>(1i, 0i, 4979i)), Struct_2(816f, vec4<f32>(1416f, -697f, -522f, -382f), -1i, vec4<i32>(41699i, -8835i, 3809i, 1i), vec3<i32>(-1566i, -35762i, 17138i)), Struct_2(1300f, vec4<f32>(-1629f, -170f, 777f, 1000f), 0i, vec4<i32>(10427i, 73587i, 0i, -22812i), vec3<i32>(19473i, -24834i, 2147483647i)), Struct_2(2401f, vec4<f32>(-209f, 1901f, -357f, 550f), 2147483647i, vec4<i32>(-3328i, 1i, -1i, 18665i), vec3<i32>(16795i, 0i, -73773i)), Struct_2(-527f, vec4<f32>(630f, 477f, 1000f, -680f), -34759i, vec4<i32>(93193i, 0i, 2808i, -1i), vec3<i32>(22792i, 25285i, i32(-2147483648))), Struct_2(1122f, vec4<f32>(1262f, 2235f, -250f, -341f), -16287i, vec4<i32>(1237i, i32(-2147483648), 1i, 0i), vec3<i32>(1i, -4334i, 20849i)), Struct_2(-907f, vec4<f32>(908f, 1420f, -158f, 1380f), 35745i, vec4<i32>(2147483647i, i32(-2147483648), 30204i, -20872i), vec3<i32>(37070i, -14610i, 4326i)), Struct_2(229f, vec4<f32>(-117f, 150f, 1105f, 556f), 0i, vec4<i32>(-7239i, 8523i, 60142i, 21856i), vec3<i32>(-19181i, i32(-2147483648), 28066i)));

var<private> global1: array<i32, 28> = array<i32, 28>(0i, 4373i, 1706i, 1i, 89013i, 1i, -13915i, 55203i, 25947i, -14607i, 1i, -1i, 40198i, 22284i, -1i, 1i, -25391i, -1i, -14488i, i32(-2147483648), -1i, i32(-2147483648), -1i, 0i, -42901i, -39646i, 81725i, -4752i);

var<private> global2: Struct_2 = Struct_2(-463f, vec4<f32>(-1753f, 1982f, 226f, 1389f), -2672i, vec4<i32>(39593i, -9728i, i32(-2147483648), 2147483647i), vec3<i32>(-60015i, 2115i, 100i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32((abs(_wgslsmith_sub_u32(u_input.e, 1u)) | u_input.e) | ~firstLeadingBit(_wgslsmith_div_u32(u_input.e ^ u_input.c, 0u)), 31u)];
    global0 = array<Struct_2, 31>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -1521f)))))), global2.b, arg_2, vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2, arg_2), ~global2.d.xx), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.e, 28u)], 1i)), vec2<i32>(var_0.e.x, -1i))), -2147483647i, global2.c), global2.d.wzy);
    global2 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1432f, var_0.a, -505f)), select(true, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.b, var_0.b, vec4<bool>(false, true, false, false))))) * global2.b), countOneBits(~_wgslsmith_sub_i32(-1i, 2147483647i)) >> (min(0u, 1u) % 32u), reverseBits(min(~firstLeadingBit(global2.d), -vec4<i32>(var_0.d.x, -2147483647i, 1i, -2147483647i))), countOneBits(~countOneBits(var_0.d.zxz)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-519f, var_0.b.x, -361f, arg_1))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -130f, -346f, arg_1)))), _wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_div_vec4_f32(global2.b, vec4<f32>(arg_1, var_0.b.x, var_0.a, global2.a)))))), _wgslsmith_sub_i32(1i, var_0.d.x), var_1.d, ~var_0.d.zzy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(135f))))) * -485f);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    global1 = array<i32, 28>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(-370f, -2041f, 917f, arg_1)))))), -2147483647i, global2.d, -vec3<i32>(_wgslsmith_dot_vec4_i32(-global2.d, global2.d), ~(-global1[_wgslsmith_index_u32(u_input.d, 28u)]), _wgslsmith_sub_i32(u_input.a << (u_input.b % 32u), global2.c)));
    global0 = array<Struct_2, 31>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1598f))) + arg_1), -1106f))));
    let var_2 = vec3<f32>(-951f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f))) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b.zzw, var_0.b.zyx, vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_1, -1305f))), var_1, global2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2.a)))) * _wgslsmith_f_op_f32(step(var_0.b.x, 443f)))));
    return min(-1645i, 10360i);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(681f)) + -2797f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1028f)))))), vec2<bool>(true, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
    var var_1 = _wgslsmith_f_op_f32(round(arg_0.b.x));
    global2 = Struct_2(_wgslsmith_f_op_f32(max(438f, _wgslsmith_div_f32(global2.b.x, -445f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, var_0.a.x, arg_0.a, -1760f))))), 68367i, arg_0.d, vec3<i32>(firstLeadingBit(min(1i, global1[_wgslsmith_index_u32(u_input.d & 0u, 28u)])), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(i32(-1i) * -11816i, 2147483647i & arg_0.e.x)), ~(-52047i)));
    global1 = array<i32, 28>();
    let var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.zxx)) - _wgslsmith_div_vec3_f32(global2.b.wwy, arg_0.b.zyz)), global2.a, ~arg_0.c)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_0.a.x, 833f, arg_0.a)) + _wgslsmith_f_op_vec4_f32(-var_2.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 2497f, -1230f, -1000f)))), global2.b)), _wgslsmith_dot_vec2_i32(~vec2<i32>(func_2(var_2.d.xzx, var_2.a), u_input.a >> (u_input.e % 32u)), ~arg_0.d.xz), arg_0.d, arg_0.e);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, ~(~1u)), u_input.b, reverseBits(abs(~0u))), vec3<u32>((~94756u | abs(u_input.c)) | abs(~u_input.d), reverseBits(u_input.e), ~(1u ^ _wgslsmith_mult_u32(u_input.b, 0u))));
    var var_1 = func_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2.b.x)))), global2.b.x), vec4<f32>(763f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -826f)), global2.b.x, _wgslsmith_f_op_f32(-global2.b.x)), ~func_2(global2.d.wzz >> (var_0 % vec3<u32>(32u)), global2.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(global2.e, vec3<i32>(u_input.a, -1i, -30665i)), 1i, firstLeadingBit(-1i)), vec4<i32>(firstTrailingBit(-1084i), countOneBits(global2.c), _wgslsmith_sub_i32(-28776i, 29982i), u_input.a)), -(global2.d.ywy | global2.d.wzw)));
    let var_2 = -216f;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(trunc(global2.b.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, global2.b.x, global2.b.x), _wgslsmith_div_f32(379f, 692f), -1i)))), true, any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), true);
    let var_4 = !var_3.wyx;
    return ~(i32(-1i) * -14600i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(!((15267i <= global2.e.x) == (global2.e.x <= 57866i)), (true & all(vec4<bool>(true, true, false, true))) || false, min(reverseBits(global1[_wgslsmith_index_u32(43603u, 28u)]), ~global1[_wgslsmith_index_u32(856u, 28u)]) <= 2338i);
    var var_1 = -9097i;
    let var_2 = max(func_1(), _wgslsmith_dot_vec3_i32(~func_4(func_4(global0[_wgslsmith_index_u32(13171u, 31u)])).d.wxy, global2.d.zzy << (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 3294u, u_input.b), ~vec3<u32>(16668u, u_input.c, 21418u)) % vec3<u32>(32u))));
    let var_3 = vec4<bool>(!(!var_0.x), true, any(vec2<bool>(false, false)), all(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(u_input.c <= 37823u, true, all(vec4<bool>(true, var_0.x, var_0.x, false))), all(vec4<bool>(true, var_0.x, true, var_0.x)))));
    var var_4 = _wgslsmith_f_op_f32(-global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1[_wgslsmith_index_u32(81137u, 28u)], 27829i, u_input.a), global2.b.x, _wgslsmith_sub_vec2_i32(global2.d.xx, _wgslsmith_add_vec2_i32(global2.d.zw, -global2.d.zy >> (vec2<u32>(u_input.e, 4294967295u) % vec2<u32>(32u)))), u_input.c);
}

