struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-15270i, Struct_1(511f, vec3<f32>(-420f, 355f, -2180f), false), 59538u, Struct_1(145f, vec3<f32>(329f, 2464f, -1654f), false), Struct_1(-1288f, vec3<f32>(-167f, -1000f, -1561f), true)), Struct_2(52002i, Struct_1(-583f, vec3<f32>(439f, 1800f, 674f), false), 24265u, Struct_1(1016f, vec3<f32>(121f, -339f, 316f), false), Struct_1(-476f, vec3<f32>(-593f, -529f, 807f), false)), Struct_2(2147483647i, Struct_1(429f, vec3<f32>(-728f, -434f, 150f), true), 4294967295u, Struct_1(716f, vec3<f32>(-270f, 1222f, -1000f), true), Struct_1(-201f, vec3<f32>(-441f, -351f, -383f), true)), Struct_2(13354i, Struct_1(-332f, vec3<f32>(-757f, -383f, -3001f), true), 1u, Struct_1(882f, vec3<f32>(-945f, -703f, 612f), true), Struct_1(-374f, vec3<f32>(1247f, 896f, -111f), true)), Struct_2(i32(-2147483648), Struct_1(-266f, vec3<f32>(-2317f, 1414f, -749f), false), 1u, Struct_1(-541f, vec3<f32>(1000f, 910f, 509f), true), Struct_1(-1620f, vec3<f32>(221f, -1546f, 155f), false)), Struct_2(i32(-2147483648), Struct_1(-348f, vec3<f32>(511f, -1000f, 1249f), false), 3268u, Struct_1(-420f, vec3<f32>(-317f, 2311f, -1000f), false), Struct_1(596f, vec3<f32>(310f, -1425f, 1810f), false)), Struct_2(-13312i, Struct_1(-826f, vec3<f32>(-2309f, 738f, -278f), true), 1u, Struct_1(1182f, vec3<f32>(116f, -184f, 331f), false), Struct_1(2247f, vec3<f32>(301f, -1692f, -1856f), false)), Struct_2(2147483647i, Struct_1(1248f, vec3<f32>(659f, 1320f, -379f), true), 6833u, Struct_1(289f, vec3<f32>(-451f, -809f, 185f), true), Struct_1(-1000f, vec3<f32>(258f, -1679f, 394f), false)), Struct_2(i32(-2147483648), Struct_1(-576f, vec3<f32>(-1014f, 234f, -902f), false), 47315u, Struct_1(1603f, vec3<f32>(1579f, 475f, -1127f), false), Struct_1(-549f, vec3<f32>(-614f, -137f, 118f), false)), Struct_2(29435i, Struct_1(-1000f, vec3<f32>(-1080f, 183f, 2137f), true), 0u, Struct_1(475f, vec3<f32>(309f, 825f, 578f), true), Struct_1(233f, vec3<f32>(150f, -1333f, -805f), false)), Struct_2(43012i, Struct_1(221f, vec3<f32>(-153f, 1270f, -1093f), true), 0u, Struct_1(-695f, vec3<f32>(895f, -1207f, 348f), true), Struct_1(-1000f, vec3<f32>(166f, 1000f, -756f), false)), Struct_2(-77127i, Struct_1(1000f, vec3<f32>(-1000f, -162f, -383f), true), 4868u, Struct_1(-1582f, vec3<f32>(-536f, -1816f, -1105f), true), Struct_1(1527f, vec3<f32>(-530f, -387f, 244f), false)), Struct_2(-1i, Struct_1(-1616f, vec3<f32>(939f, -139f, -864f), false), 52440u, Struct_1(-429f, vec3<f32>(-506f, -1157f, -1071f), false), Struct_1(-920f, vec3<f32>(-1000f, -423f, -386f), true)), Struct_2(-22422i, Struct_1(-524f, vec3<f32>(-305f, 1000f, 421f), false), 59911u, Struct_1(1407f, vec3<f32>(1401f, -1184f, -457f), false), Struct_1(-162f, vec3<f32>(1110f, 638f, -760f), false)), Struct_2(i32(-2147483648), Struct_1(-421f, vec3<f32>(833f, 1933f, -497f), false), 17000u, Struct_1(344f, vec3<f32>(2939f, 1037f, -1778f), true), Struct_1(-1304f, vec3<f32>(324f, 574f, -831f), true)), Struct_2(2147483647i, Struct_1(-201f, vec3<f32>(-204f, 742f, -1000f), false), 4294967295u, Struct_1(-334f, vec3<f32>(-177f, -1306f, -1000f), true), Struct_1(144f, vec3<f32>(-1875f, -949f, -131f), false)), Struct_2(38859i, Struct_1(-1284f, vec3<f32>(204f, 364f, -1207f), false), 1836u, Struct_1(-869f, vec3<f32>(-1631f, 130f, 1243f), false), Struct_1(-1024f, vec3<f32>(-322f, -1000f, -351f), true)), Struct_2(2147483647i, Struct_1(380f, vec3<f32>(-692f, 1177f, 161f), false), 1u, Struct_1(808f, vec3<f32>(-349f, -1411f, 1751f), false), Struct_1(-613f, vec3<f32>(732f, -1195f, -298f), false)), Struct_2(6616i, Struct_1(-480f, vec3<f32>(544f, -370f, -361f), false), 4294967295u, Struct_1(-548f, vec3<f32>(1876f, -1176f, 626f), false), Struct_1(-896f, vec3<f32>(-2268f, -1000f, -697f), false)));

var<private> global1: Struct_1 = Struct_1(-482f, vec3<f32>(1218f, -1792f, -348f), false);

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-1150f, vec3<f32>(518f, -1000f, 1234f), false), Struct_1(-1029f, vec3<f32>(689f, 631f, -1611f), false), Struct_1(-239f, vec3<f32>(-831f, 430f, -1476f), true), Struct_1(-577f, vec3<f32>(-1000f, -1038f, 1057f), false), Struct_1(-821f, vec3<f32>(-1000f, 138f, 211f), false), Struct_1(559f, vec3<f32>(-1191f, -871f, 571f), false), Struct_1(-414f, vec3<f32>(173f, 1015f, 155f), true));

var<private> global3: Struct_2 = Struct_2(19331i, Struct_1(701f, vec3<f32>(-376f, -772f, 1044f), true), 45540u, Struct_1(141f, vec3<f32>(709f, 912f, 376f), true), Struct_1(1115f, vec3<f32>(-1693f, 2127f, 907f), true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.a, ~u_input.a, 2147483647i), ~abs(vec3<i32>(~arg_0.a, u_input.a, abs(-1i))));
    global1 = global2[_wgslsmith_index_u32(global3.c, 7u)];
    var var_1 = vec3<i32>(1i, -min(0i, var_0), ~16766i) | (~min(vec3<i32>(1i, global3.a, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 35426i, u_input.a), vec3<i32>(0i, -2147483647i, 2147483647i))) | countOneBits(min(select(vec3<i32>(u_input.a, -1i, arg_0.a), vec3<i32>(var_0, u_input.a, 26809i), true), -vec3<i32>(2147483647i, 0i, -25196i))));
    var var_2 = select(_wgslsmith_mult_u32(1u, ~u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, global3.c, 21197u), countOneBits(vec4<u32>(global3.c, 0u, u_input.c, global3.c))) >> (16427u % 32u), false);
    var var_3 = var_1.zy;
    return arg_0.c;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 19>();
    global3 = Struct_2(1i, arg_2, ~(~global3.c), Struct_1(_wgslsmith_f_op_f32(floor(2851f)), global1.b, global1.c), arg_2);
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(3886u, countOneBits(abs(u_input.c))), 1u, _wgslsmith_mod_u32(u_input.c, ~global3.c) & _wgslsmith_div_u32(func_3(Struct_2(u_input.a, global2[_wgslsmith_index_u32(global3.c, 7u)], global3.c, global3.d, Struct_1(arg_2.b.x, vec3<f32>(612f, global3.b.a, -861f), global3.d.c))), _wgslsmith_clamp_u32(0u, u_input.c, 35467u))) << (~4294967295u % 32u), 7u)];
    var var_1 = ~min(select(min(vec4<u32>(1u, u_input.c, 33159u, 1u), vec4<u32>(global3.c, 4294967295u, u_input.b, 30429u)), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 52174u), vec4<bool>(global3.d.c, var_0.c, global1.c, global1.c)) & vec4<u32>(global3.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 8334u, u_input.c), vec3<u32>(u_input.c, global3.c, global3.c)), _wgslsmith_clamp_u32(global3.c, 30650u, 37742u), 30651u), vec4<u32>(global3.c ^ (64608u << (global3.c % 32u)), u_input.d.x, global3.c, 21374u));
    global2 = array<Struct_1, 7>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(18727u, var_1.x), 19u)];
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)))), global1.c, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.a))), vec3<f32>(global1.b.x, global1.a, 1621f), false));
    var var_0 = select(select(!select(!vec2<bool>(false, global1.c), !vec2<bool>(global3.d.c, global3.d.c), select(vec2<bool>(true, true), vec2<bool>(global1.c, false), vec2<bool>(global1.c, true))), !select(!vec2<bool>(global1.c, false), select(vec2<bool>(global1.c, true), vec2<bool>(global3.d.c, global1.c), vec2<bool>(global1.c, global1.c)), !vec2<bool>(global3.e.c, global3.b.c)), vec2<bool>(any(!vec4<bool>(global3.d.c, false, false, global3.d.c)), true)), select(vec2<bool>(global1.c, ~(-14575i) <= ~u_input.a), select(vec2<bool>(all(vec4<bool>(global3.d.c, global1.c, true, true)), global1.c), !select(vec2<bool>(global1.c, true), vec2<bool>(global3.b.c, false), global3.d.c), !select(vec2<bool>(true, global1.c), vec2<bool>(global1.c, false), vec2<bool>(true, true))), vec2<bool>(true, !global1.c || !global3.d.c)), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(-13716i, global3.a)) < select(u_input.a, firstTrailingBit(11149i), any(vec3<bool>(false, global1.c, true)) != global3.d.c));
    let var_1 = !select(vec4<bool>(~14719u != arg_0.x, max(arg_0.x, 19792u) < u_input.c, ~arg_0.x >= u_input.b, false), !(!vec4<bool>(true, var_0.x, global3.d.c, true)), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1503f);
    let var_3 = ~global3.a;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global3.c, u_input.b), vec3<u32>(29414u, 9710u, arg_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 0u, 4294967295u), vec3<u32>(0u, global3.c, 94863u))))), ~vec3<u32>(global3.c, 20788u >> (u_input.d.x % 32u), ~14413u) | (~(vec3<u32>(arg_0.x, arg_0.x, global3.c) & vec3<u32>(arg_0.x, 33520u, 4294967295u)) >> ((~vec3<u32>(u_input.b, 1u, arg_0.x) >> ((vec3<u32>(arg_0.x, arg_0.x, 62160u) | vec3<u32>(36650u, 44885u, arg_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u)))), 7u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_div_f32(arg_1.d.a, -1811f), global1.c, Struct_1(arg_1.d.a, vec3<f32>(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(ceil(arg_0.x))), arg_1.b.a), true));
    global0 = array<Struct_2, 19>();
    var_0 = Struct_2(1i, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-280f)), _wgslsmith_f_op_f32(floor(var_0.e.a)), var_0.b.c)), -723f, select(var_0.e.c, false, select(global3.e.c, true, true)))), vec3<f32>(972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.b.x * 1000f) + 1000f), _wgslsmith_f_op_f32(-var_0.d.b.x)), global3.e.c == (~(-5939i) < reverseBits(global3.a))), arg_1.c, var_0.b, arg_1.d);
    global0 = array<Struct_2, 19>();
    var var_1 = vec3<i32>(global3.a, _wgslsmith_dot_vec4_i32((select(vec4<i32>(global3.a, arg_1.a, 2147483647i, 0i), vec4<i32>(1i, -26108i, 62712i, -15692i), global1.c) | select(vec4<i32>(u_input.a, u_input.a, -42754i, var_0.a), vec4<i32>(2147483647i, -3995i, var_0.a, arg_1.a), vec4<bool>(var_0.e.c, arg_1.d.c, global1.c, true))) ^ vec4<i32>(arg_1.a, ~global3.a, var_0.a & -19648i, -25919i), vec4<i32>(-max(1i, -28021i), u_input.a, arg_1.a, firstTrailingBit(global3.a))), 0i);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.a, -282f)), false, Struct_1(-797f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.e.b * arg_0.wzy)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.x, var_0.b.b.x, global1.a)))))), arg_1.b.c)).b;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(~u_input.d.x), 17586u), u_input.b, 4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(global3.c, global3.c), global3.c, 1u)), vec4<u32>(global3.c, countOneBits(global3.c >> (countOneBits(u_input.c) % 32u)), ~8335u, 9401u), countOneBits(min(max(vec4<u32>(u_input.d.x, 91833u, global3.c, 23371u), vec4<u32>(24825u, u_input.b, 99412u, 11707u)), vec4<u32>(_wgslsmith_div_u32(20102u, u_input.c), ~4294967295u, u_input.b >> (0u % 32u), 0u))));
    var var_1 = global3.b.b.x;
    var var_2 = func_1(vec2<u32>(func_3(global0[_wgslsmith_index_u32(37460u, 19u)]), _wgslsmith_add_u32(_wgslsmith_mult_u32(global3.c, var_0.x), 4294967295u)));
    var var_3 = u_input.c;
    let var_4 = func_2(201f, true, Struct_1(func_1(abs(vec2<u32>(1u, var_0.x))).b.x, vec3<f32>(_wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f)), 1000f), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    return global1.b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1398f, global1.a, global3.b.b.x, global1.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.b.x, global3.d.a, global3.e.a)))), Struct_2(_wgslsmith_sub_i32(~global3.a, global3.a), global2[_wgslsmith_index_u32(6541u, 7u)], _wgslsmith_clamp_u32(4294967295u, u_input.d.x, u_input.b) << (~u_input.b % 32u), func_1(~u_input.d), func_1(~u_input.d))), all(vec3<bool>(true && global1.c, true, true)), global2[_wgslsmith_index_u32(global3.c, 7u)]));
    let var_1 = firstLeadingBit(-global3.a);
    var var_2 = global3.e;
    let var_3 = ~u_input.a;
    var var_4 = true;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1134f, _wgslsmith_f_op_f32(global1.b.x - 1419f))))));
    global1 = Struct_1(global3.b.b.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -653f), any(select(!vec4<bool>(true, true, false, global3.d.c), vec4<bool>(false, false, var_2.c, false), var_2.c)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -782f))), vec3<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(-var_5.x)), u_input.d.x >= 0u)).e.b, !(global3.c > global3.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(select(-2147483647i, u_input.a, any(vec4<bool>(global1.c, true, var_2.c, false))), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, 0i, global3.a)), firstLeadingBit(vec3<i32>(-1i, u_input.a, 0i))))));
}

