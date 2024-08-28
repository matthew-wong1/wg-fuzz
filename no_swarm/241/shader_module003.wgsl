struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(1u), Struct_1(8693u), Struct_1(1u), Struct_1(67628u), Struct_1(93686u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(45405u), Struct_1(1u), Struct_1(0u), Struct_1(64163u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u), Struct_1(154052u), Struct_1(1u), Struct_1(8205u), Struct_1(21394u), Struct_1(58550u), Struct_1(4294967295u));

var<private> global2: array<u32, 28> = array<u32, 28>(4294967295u, 2079u, 35149u, 0u, 77594u, 4294967295u, 20766u, 44084u, 0u, 13171u, 4294967295u, 0u, 50246u, 4294967295u, 50658u, 1u, 14601u, 4294967295u, 0u, 38247u, 4294967295u, 4294967295u, 35218u, 97757u, 74899u, 0u, 6643u, 1u);

var<private> global3: array<i32, 11> = array<i32, 11>(0i, i32(-2147483648), -60331i, -15491i, -39623i, -3041i, 15520i, i32(-2147483648), 29157i, 2147483647i, 0i);

var<private> global4: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<i32>(-59443i, 16154i, 0i), vec3<f32>(232f, -169f, 491f), vec3<bool>(true, true, true), Struct_1(47848u), vec3<i32>(13355i, 1i, i32(-2147483648))), Struct_3(vec3<i32>(3891i, i32(-2147483648), -1i), vec3<f32>(773f, 263f, 265f), vec3<bool>(true, false, true), Struct_1(23690u), vec3<i32>(-66068i, 43696i, 1i)), Struct_3(vec3<i32>(22937i, -31801i, -17076i), vec3<f32>(1572f, -928f, -307f), vec3<bool>(false, true, true), Struct_1(10453u), vec3<i32>(-39194i, -1i, 19610i)), Struct_3(vec3<i32>(-15753i, -78755i, 1i), vec3<f32>(397f, -228f, 962f), vec3<bool>(false, false, true), Struct_1(121080u), vec3<i32>(1i, 3898i, 0i)), Struct_3(vec3<i32>(-33759i, -1i, 2147483647i), vec3<f32>(-1023f, 1791f, 1336f), vec3<bool>(true, true, false), Struct_1(22299u), vec3<i32>(-28611i, -1i, -50642i)), Struct_3(vec3<i32>(17490i, 10305i, 0i), vec3<f32>(-579f, -170f, 2141f), vec3<bool>(true, false, true), Struct_1(1u), vec3<i32>(40952i, 1i, 26984i)), Struct_3(vec3<i32>(i32(-2147483648), 10657i, -18891i), vec3<f32>(305f, 100f, 753f), vec3<bool>(false, true, false), Struct_1(4294967295u), vec3<i32>(-1i, -4687i, -1i)), Struct_3(vec3<i32>(-1i, -34485i, -1i), vec3<f32>(-1012f, 1201f, -163f), vec3<bool>(false, true, false), Struct_1(0u), vec3<i32>(53183i, 1i, 2147483647i)), Struct_3(vec3<i32>(-2967i, 1i, 1i), vec3<f32>(-931f, -1232f, -295f), vec3<bool>(false, false, false), Struct_1(3924u), vec3<i32>(17202i, -1i, 0i)), Struct_3(vec3<i32>(-38913i, i32(-2147483648), 48514i), vec3<f32>(-856f, 203f, 927f), vec3<bool>(true, false, false), Struct_1(4294967295u), vec3<i32>(-12331i, -6475i, i32(-2147483648))), Struct_3(vec3<i32>(-6835i, 2147483647i, 0i), vec3<f32>(-229f, -843f, -730f), vec3<bool>(false, true, true), Struct_1(0u), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_3(vec3<i32>(-4402i, 53399i, 0i), vec3<f32>(787f, -185f, 749f), vec3<bool>(false, false, false), Struct_1(18907u), vec3<i32>(60112i, -42323i, 35389i)), Struct_3(vec3<i32>(0i, 0i, -10182i), vec3<f32>(-345f, -260f, -201f), vec3<bool>(false, false, true), Struct_1(28025u), vec3<i32>(-21466i, i32(-2147483648), i32(-2147483648))), Struct_3(vec3<i32>(2147483647i, -3721i, 25637i), vec3<f32>(477f, 108f, -100f), vec3<bool>(false, true, false), Struct_1(1u), vec3<i32>(3077i, -25369i, 3899i)), Struct_3(vec3<i32>(i32(-2147483648), -2523i, 2147483647i), vec3<f32>(287f, -1706f, -514f), vec3<bool>(false, false, true), Struct_1(0u), vec3<i32>(12702i, -1i, 0i)), Struct_3(vec3<i32>(0i, -315i, 17055i), vec3<f32>(119f, 344f, 414f), vec3<bool>(false, false, false), Struct_1(13192u), vec3<i32>(-28468i, -1i, 17198i)), Struct_3(vec3<i32>(4868i, -54328i, 64098i), vec3<f32>(-329f, 574f, -1000f), vec3<bool>(true, true, true), Struct_1(52932u), vec3<i32>(84584i, -1i, 11685i)), Struct_3(vec3<i32>(1i, 1i, -1i), vec3<f32>(689f, 394f, -1074f), vec3<bool>(true, true, false), Struct_1(4294967295u), vec3<i32>(-4678i, 0i, -1i)), Struct_3(vec3<i32>(34105i, 0i, -12503i), vec3<f32>(-332f, 739f, 1237f), vec3<bool>(false, true, false), Struct_1(0u), vec3<i32>(-1i, 30074i, -27352i)), Struct_3(vec3<i32>(-29674i, 2147483647i, 33722i), vec3<f32>(-108f, -307f, 675f), vec3<bool>(false, false, false), Struct_1(14252u), vec3<i32>(-23987i, -1i, 0i)), Struct_3(vec3<i32>(i32(-2147483648), 9141i, -32211i), vec3<f32>(1261f, 374f, -332f), vec3<bool>(true, true, false), Struct_1(0u), vec3<i32>(-1i, 6433i, 21596i)), Struct_3(vec3<i32>(22285i, -80301i, -23773i), vec3<f32>(304f, -1399f, 259f), vec3<bool>(false, false, true), Struct_1(11537u), vec3<i32>(1i, 2147483647i, -21123i)), Struct_3(vec3<i32>(-12293i, -1i, 1i), vec3<f32>(918f, 1866f, 808f), vec3<bool>(false, false, true), Struct_1(1u), vec3<i32>(-37945i, 1i, 0i)), Struct_3(vec3<i32>(36097i, -16284i, 26531i), vec3<f32>(-163f, -442f, -561f), vec3<bool>(true, true, true), Struct_1(0u), vec3<i32>(2147483647i, 10153i, 21494i)), Struct_3(vec3<i32>(0i, -16723i, 38444i), vec3<f32>(-130f, 1803f, 212f), vec3<bool>(true, true, false), Struct_1(98802u), vec3<i32>(-1i, 56409i, -33938i)), Struct_3(vec3<i32>(i32(-2147483648), -12227i, 5112i), vec3<f32>(201f, -1000f, -1125f), vec3<bool>(false, false, false), Struct_1(84009u), vec3<i32>(1i, 34698i, -6627i)), Struct_3(vec3<i32>(i32(-2147483648), -1i, 29504i), vec3<f32>(697f, -1107f, 1027f), vec3<bool>(false, true, false), Struct_1(31756u), vec3<i32>(-46230i, -43945i, -1i)), Struct_3(vec3<i32>(-3969i, 0i, 2147483647i), vec3<f32>(744f, 2164f, 219f), vec3<bool>(false, false, false), Struct_1(7246u), vec3<i32>(856i, -8772i, 46845i)), Struct_3(vec3<i32>(-1i, -9239i, 18523i), vec3<f32>(268f, -1234f, 192f), vec3<bool>(true, false, true), Struct_1(47306u), vec3<i32>(i32(-2147483648), 2147483647i, 74715i)), Struct_3(vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<f32>(-1444f, 1296f, -688f), vec3<bool>(true, false, true), Struct_1(1u), vec3<i32>(-5375i, 7603i, -15812i)), Struct_3(vec3<i32>(-1i, 43208i, 2147483647i), vec3<f32>(552f, -333f, 1728f), vec3<bool>(false, false, true), Struct_1(4294967295u), vec3<i32>(i32(-2147483648), -86685i, -1i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(~global2[_wgslsmith_index_u32(47381u, 28u)]), _wgslsmith_mod_u32(1u, u_input.e), _wgslsmith_mult_u32(0u, 57985u), abs(firstLeadingBit(4294967295u))), _wgslsmith_clamp_vec4_u32(max(abs(vec4<u32>(arg_3.x, arg_2.a, arg_2.a, arg_3.x)), vec4<u32>(86740u, 4104u, global2[_wgslsmith_index_u32(21448u, 28u)], arg_3.x)), countOneBits(abs(vec4<u32>(18978u, u_input.b.x, global2[_wgslsmith_index_u32(1u, 28u)], 26836u))), abs(vec4<u32>(u_input.e, 30896u, 4294967295u, arg_2.a)) << (vec4<u32>(arg_2.a, 1u, arg_2.a, u_input.b.x) % vec4<u32>(32u))));
    global3 = array<i32, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, _wgslsmith_div_f32(arg_0, -1842f)))));
    let var_2 = arg_1;
    global4 = array<Struct_3, 31>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_0)), 756f, -201f, _wgslsmith_f_op_f32(772f * 1583f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(step(-769f, arg_0)), _wgslsmith_f_op_f32(-arg_0)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), -121f, var_1.x, var_1.x)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> i32 {
    global4 = array<Struct_3, 31>();
    let var_0 = global4[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(abs(4294967295u)) ^ _wgslsmith_clamp_u32(abs(1u), reverseBits(17618u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)]), 1u)), 31u)];
    let var_1 = arg_0;
    var var_2 = 264f;
    var_2 = -1119f;
    return i32(-1i) * -1i;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = select(firstLeadingBit(-u_input.d.x), func_4(u_input.b, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f + -1192f)), Struct_2(abs(vec3<i32>(-1i, arg_0, arg_0))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(arg_2.x, 28u)], arg_2.x), abs(u_input.b)), 27u)], select(vec3<u32>(arg_1, 1u, global2[_wgslsmith_index_u32(u_input.e, 28u)]), arg_2, true)))), !(any(select(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], vec3<bool>(false, true, true), vec3<bool>(true, false, true))) | true));
    let var_1 = Struct_2(-u_input.d);
    var var_2 = all(!vec4<bool>((var_1.a.x ^ arg_0) >= -1i, !(arg_1 != 1u), true, any(vec4<bool>(false, true, false, false)) | true));
    var var_3 = vec2<u32>(global2[_wgslsmith_index_u32(firstLeadingBit(arg_1), 28u)], max(~min(~u_input.b.x, arg_2.x), 1u));
    var var_4 = true;
    return Struct_2(min(var_1.a, vec3<i32>(~_wgslsmith_div_i32(arg_0, u_input.a), arg_0, global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(31727u, 0u, global2[_wgslsmith_index_u32(4294967295u, 28u)]), ~var_3.x), 11u)])));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_1.a);
    var var_1 = reverseBits(countOneBits(vec2<u32>(38561u, _wgslsmith_add_u32(abs(1u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 28u)], u_input.e)))));
    var var_2 = Struct_3(vec3<i32>(0i, ~0i, arg_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(arg_0.b, vec3<f32>(arg_0.b.x, 1722f, 1108f))))) + arg_0.b), arg_0.c, arg_0.d, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d.x, u_input.c.x), arg_0.e.x) >> (reverseBits(1u) % 32u), arg_1.a.x, _wgslsmith_sub_i32(func_2(_wgslsmith_clamp_i32(55494i, 21129i, -2147483647i), ~17383u, ~vec3<u32>(arg_0.d.a, u_input.b.x, 0u)).a.x, firstLeadingBit(arg_1.a.x))));
    var var_3 = arg_0.c.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b.xy)));
    return global1[_wgslsmith_index_u32(55941u, 27u)];
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(global4[_wgslsmith_index_u32(u_input.e, 31u)], func_2(global3[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(0u, 28u)]), 11u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32202u, 28u)], 28u)], max(vec3<u32>(15396u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 24662u) >> (vec3<u32>(94384u, 63335u, 29523u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1933u, 20680u)) << (~(vec3<u32>(u_input.b.x, 0u, 0u) << (vec3<u32>(18546u, global2[_wgslsmith_index_u32(u_input.e, 28u)], u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    global2 = array<u32, 28>();
    var var_1 = Struct_4(global4[_wgslsmith_index_u32(0u, 31u)], func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a, u_input.e), ~select(vec3<u32>(u_input.b.x, 11993u, 15852u), vec3<u32>(var_0.a, u_input.b.x, u_input.e), global0[_wgslsmith_index_u32(63754u, 32u)])), 31u)], func_2(_wgslsmith_sub_i32(~(-14200i), 13548i | global3[_wgslsmith_index_u32(1u, 11u)]), 0u, vec3<u32>(u_input.b.x, var_0.a, var_0.a) | firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(u_input.e, 28u)], 1263u, var_0.a)))), false, func_5(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(14741u, reverseBits(u_input.e) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 0u, 4294967295u), vec3<u32>(var_0.a, u_input.e, 0u))), 31u)], func_2(reverseBits(-u_input.d.x), 0u, countOneBits(~vec3<u32>(4294967295u, var_0.a, 4294967295u)))), -vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(58472u, 11u)], -1i, -60757i)), 1i, u_input.a, ~_wgslsmith_div_i32(u_input.a, u_input.d.x)));
    var_0 = func_5(Struct_3(-_wgslsmith_add_vec3_i32(-var_1.a.a, select(u_input.d, vec3<i32>(-1i, 0i, 10708i), var_1.a.c)), var_1.a.b, !vec3<bool>(true, true, var_1.c & var_1.c), func_5(var_1.a, Struct_2(vec3<i32>(16447i, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(33541u, 11u)]))), vec3<i32>(-2147483647i, func_4(~vec2<u32>(global2[_wgslsmith_index_u32(130694u, 28u)], 33269u), vec4<f32>(-2099f, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)), -abs(-2147483647i))), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 11u)], var_1.e.x | -global3[_wgslsmith_index_u32(var_0.a, 11u)], 0i)));
    let var_2 = firstLeadingBit(u_input.d) ^ u_input.d;
    return Struct_2(var_1.a.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(543f - 816f);
    let var_1 = select(vec3<bool>(all(select(select(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(4294967295u, 32u)], false), vec3<bool>(true, true, true), false)), _wgslsmith_div_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.x), max(-17734i, -1i)) <= ~_wgslsmith_mult_i32(2147483647i, u_input.d.x), true), !select(vec3<bool>(true, true, select(true, true, true)), vec3<bool>(true, true, true), !all(vec4<bool>(false, true, true, true))), global0[_wgslsmith_index_u32(~u_input.e, 32u)]);
    var var_2 = Struct_3(vec3<i32>(-1i) * -arg_2.ywx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), 141f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(699f)))) * 108f)), select(var_1, var_1, select(vec3<bool>(-61393i >= arg_0.x, var_1.x, -469f != var_0), select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(false, true, var_1.x), var_1.x), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56672u, 28u)], 32u)], select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46736u, 28u)], 32u)])), false)), func_5(Struct_3(vec3<i32>(arg_1.a.x, -1i, -36615i) >> (~vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], u_input.e) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(func_3(var_0, Struct_2(vec3<i32>(-3196i, 33707i, arg_1.a.x)), Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec3<u32>(19098u, 0u, u_input.b.x))).yyx, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4874u, 28u)], 28u)], u_input.e, 4294967295u, 30708u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7153u, 28u)], 28u)], global2[_wgslsmith_index_u32(1u, 28u)]) ^ vec4<u32>(global2[_wgslsmith_index_u32(30114u, 28u)], u_input.b.x, 27487u, u_input.b.x)), 28u)], 32u)], func_5(Struct_3(arg_0, vec3<f32>(var_0, var_0, -1156f), vec3<bool>(true, true, var_1.x), Struct_1(4294967295u), arg_0), Struct_2(arg_2.zxz)), reverseBits(u_input.c.wwx << (vec3<u32>(0u, 66156u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)]) % vec3<u32>(32u)))), Struct_2(u_input.c.zzz)), ~select(func_2(_wgslsmith_mod_i32(-1i, 64142i), 4294967295u, vec3<u32>(u_input.e, global2[_wgslsmith_index_u32(35477u, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)])).a, -firstTrailingBit(arg_0), var_1));
    let var_3 = true;
    let var_4 = ~(_wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 64582u, 43779u, 23533u), vec4<u32>(1u, u_input.e, u_input.b.x, 1u))), _wgslsmith_add_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 0u, 0u, 1u), ~vec4<u32>(var_2.d.a, u_input.b.x, 1u, var_2.d.a))) >> ((vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 28u)]), 1u, _wgslsmith_clamp_u32(var_2.d.a, 1u, 0u), abs(0u)) ^ vec4<u32>(~4080u, ~0u, ~32292u, firstTrailingBit(1u))) % vec4<u32>(32u)));
    return StorageBuffer(arg_2.x, ~arg_0.x, vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~70061u, 27u)];
    let x = u_input.a;
    s_output = func_6(vec3<i32>(0i, -4032i, _wgslsmith_dot_vec4_i32(select(select(vec4<i32>(u_input.c.x, -1i, u_input.c.x, global3[_wgslsmith_index_u32(8397u, 11u)]), vec4<i32>(1i, 12406i, 52112i, global3[_wgslsmith_index_u32(18217u, 11u)]), false), ~u_input.c, vec4<bool>(true, false, false, true)), reverseBits(u_input.c))), func_1(), firstTrailingBit(u_input.c));
}

