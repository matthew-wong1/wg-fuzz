struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<f32>(-767f, 406f), -1127i, vec4<bool>(false, true, false, true), vec3<f32>(-1032f, 568f, 579f), Struct_1(vec4<i32>(25678i, 1i, 0i, 66566i), 22962i, i32(-2147483648), 13884u, vec3<f32>(613f, 779f, -159f))), Struct_3(vec2<f32>(551f, -1534f), 19241i, vec4<bool>(true, false, false, false), vec3<f32>(-419f, -1078f, -272f), Struct_1(vec4<i32>(0i, 0i, -1561i, -1i), 1i, -13026i, 19366u, vec3<f32>(-704f, 166f, 909f))), Struct_3(vec2<f32>(1299f, -1299f), i32(-2147483648), vec4<bool>(false, true, false, true), vec3<f32>(-1000f, -1063f, -230f), Struct_1(vec4<i32>(-2395i, 2147483647i, 0i, 10993i), -50460i, 1i, 33599u, vec3<f32>(-1186f, -2039f, -157f))), Struct_3(vec2<f32>(-443f, 105f), 12907i, vec4<bool>(false, false, true, true), vec3<f32>(229f, 660f, 1404f), Struct_1(vec4<i32>(-1i, -47843i, 1i, i32(-2147483648)), -97390i, 0i, 51455u, vec3<f32>(-1000f, 323f, 500f))), Struct_3(vec2<f32>(-2156f, 775f), -58250i, vec4<bool>(true, true, true, false), vec3<f32>(-149f, 124f, 1000f), Struct_1(vec4<i32>(0i, 1i, 3838i, -6164i), 40841i, -22860i, 24895u, vec3<f32>(-1546f, -539f, 1434f))), Struct_3(vec2<f32>(395f, -919f), i32(-2147483648), vec4<bool>(false, true, false, true), vec3<f32>(-959f, 826f, 1254f), Struct_1(vec4<i32>(1i, 2147483647i, 1i, i32(-2147483648)), 0i, i32(-2147483648), 43251u, vec3<f32>(290f, -990f, -939f))), Struct_3(vec2<f32>(700f, 1079f), i32(-2147483648), vec4<bool>(true, true, false, true), vec3<f32>(1318f, 1166f, 1186f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, -7093i), 46899i, 1i, 25703u, vec3<f32>(-1000f, 253f, -579f))), Struct_3(vec2<f32>(-1353f, -1544f), 1i, vec4<bool>(false, false, true, false), vec3<f32>(1745f, 923f, -1504f), Struct_1(vec4<i32>(i32(-2147483648), 64369i, -32243i, i32(-2147483648)), -28204i, i32(-2147483648), 4294967295u, vec3<f32>(-433f, -1172f, -319f))), Struct_3(vec2<f32>(530f, 321f), -1i, vec4<bool>(true, false, false, false), vec3<f32>(1760f, 250f, 789f), Struct_1(vec4<i32>(64930i, -27311i, 0i, -1i), -1i, -2688i, 0u, vec3<f32>(-727f, 449f, 838f))), Struct_3(vec2<f32>(2817f, 2280f), 3556i, vec4<bool>(true, false, false, false), vec3<f32>(1644f, -1009f, -1000f), Struct_1(vec4<i32>(0i, 2147483647i, 50272i, 75356i), -30979i, 52504i, 0u, vec3<f32>(-358f, -125f, -107f))), Struct_3(vec2<f32>(-1478f, -766f), -16943i, vec4<bool>(false, false, true, false), vec3<f32>(805f, 2854f, -1000f), Struct_1(vec4<i32>(1i, 1i, -62093i, 22877i), -1i, -1i, 1u, vec3<f32>(-146f, 463f, -1000f))), Struct_3(vec2<f32>(2430f, -1298f), -66946i, vec4<bool>(false, false, false, true), vec3<f32>(590f, 804f, -314f), Struct_1(vec4<i32>(-1i, -33012i, 16336i, -1i), -44658i, -1i, 9837u, vec3<f32>(774f, 1554f, -108f))), Struct_3(vec2<f32>(907f, -1239f), -9362i, vec4<bool>(true, false, false, false), vec3<f32>(-360f, -1252f, 461f), Struct_1(vec4<i32>(14711i, -16059i, 53254i, 1i), -1i, i32(-2147483648), 4417u, vec3<f32>(924f, 203f, -1216f))), Struct_3(vec2<f32>(-605f, 1387f), 14069i, vec4<bool>(true, true, false, true), vec3<f32>(-815f, 362f, -1540f), Struct_1(vec4<i32>(-16063i, -2005i, -1i, 55109i), 2147483647i, 1i, 17388u, vec3<f32>(317f, -501f, 359f))));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(0u, Struct_1(vec4<i32>(i32(-2147483648), -31192i, 0i, 50252i), -1i, 2147483647i, 30008u, vec3<f32>(-562f, 449f, -1053f)), Struct_1(vec4<i32>(-53862i, 25778i, i32(-2147483648), 2147483647i), -1i, 1i, 30846u, vec3<f32>(174f, -105f, -968f))), Struct_2(1u, Struct_1(vec4<i32>(39444i, -3178i, 54373i, -65146i), 1i, 0i, 4294967295u, vec3<f32>(1929f, 1060f, 432f)), Struct_1(vec4<i32>(99504i, 2147483647i, 2147483647i, 2147483647i), i32(-2147483648), -35605i, 4294967295u, vec3<f32>(1431f, 345f, -1144f))), Struct_2(46241u, Struct_1(vec4<i32>(-49112i, -10169i, 0i, -53038i), 1i, 30206i, 0u, vec3<f32>(327f, 241f, 670f)), Struct_1(vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i), -46805i, 1i, 66736u, vec3<f32>(-543f, -1446f, -2535f))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> u32 {
    global1 = array<Struct_2, 3>();
    global0 = array<Struct_3, 14>();
    var var_0 = -2147483647i;
    var var_1 = select(u_input.a.zwz, arg_3.e.a.wxx >> (vec3<u32>(abs(4294967295u) ^ u_input.b, 4294967295u, ~(~31226u)) % vec3<u32>(32u)), select(select(select(arg_3.c.ywx, arg_3.c.xwx, vec3<bool>(arg_2, true, arg_2)), !arg_3.c.wxw, arg_2 | (false & arg_3.c.x)), arg_3.c.wxx, !arg_3.c.yxz));
    var var_2 = -28127i ^ arg_3.e.a.x;
    return reverseBits(~1u);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1032f, arg_2.c.e.x)) + _wgslsmith_f_op_f32(trunc(335f))))), ~(-2147483647i), !vec4<bool>(select(true, true, arg_2.b.d <= arg_3.x), func_3(arg_2.c, u_input.a.x, false, global0[_wgslsmith_index_u32(u_input.b, 14u)]) == 1u, false, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_2.b.e.x)) + arg_0.x))), _wgslsmith_f_op_f32(-117f + _wgslsmith_f_op_f32(-arg_2.c.e.x))), arg_2.c);
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = func_2(vec4<f32>(-1282f, _wgslsmith_f_op_f32(-arg_3.e.e.x), arg_3.e.e.x, arg_3.e.e.x), _wgslsmith_div_f32(arg_3.a.x, arg_3.a.x), Struct_2(u_input.b, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1229f, arg_3.d.x, 578f, -214f)), arg_0, Struct_2(u_input.b >> (32161u % 32u), Struct_1(arg_3.e.a, arg_2.x, arg_2.x, u_input.b, arg_3.d), func_2(vec4<f32>(-160f, 978f, arg_3.e.e.x, arg_3.a.x), arg_0, Struct_2(u_input.b, Struct_1(vec4<i32>(-2337i, u_input.a.x, arg_1.x, arg_3.b), 1i, arg_1.x, 97919u, vec3<f32>(1038f, -1326f, -751f)), arg_3.e), vec2<u32>(6934u, arg_3.e.d)).e), ~_wgslsmith_div_vec2_u32(vec2<u32>(21149u, arg_3.e.d), vec2<u32>(48845u, 965u))).e, func_2(vec4<f32>(arg_0, arg_3.a.x, arg_0, func_2(vec4<f32>(1421f, 1299f, arg_0, arg_3.a.x), 124f, global1[_wgslsmith_index_u32(4294967295u, 3u)], vec2<u32>(1u, u_input.b)).d.x), arg_3.e.e.x, global1[_wgslsmith_index_u32(arg_3.e.d, 3u)], ~max(vec2<u32>(0u, u_input.b), vec2<u32>(97378u, 39998u))).e), ~abs(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_3.e.d, u_input.b))))).c.x;
    let var_1 = arg_0;
    var var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -341f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) - arg_3.d.x), -1156f, 133f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1616f) * arg_0), global1[_wgslsmith_index_u32(u_input.b, 3u)], countOneBits(~(~vec2<u32>(49184u, u_input.b))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, arg_3.e.d, u_input.b), abs(vec3<u32>(arg_3.e.d, 130755u, 1u))), 89661u) % vec2<u32>(32u))).e;
    var var_3 = _wgslsmith_add_vec2_i32(arg_3.e.a.yw, abs(u_input.a.zw ^ vec2<i32>(arg_2.x, 1i)));
    global0 = array<Struct_3, 14>();
    return vec2<bool>(false, arg_3.e.e.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_2.e.x)), _wgslsmith_f_op_f32(-var_2.e.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(select(vec2<bool>(true, false), select(func_4(_wgslsmith_div_f32(643f, -1545f), max(u_input.a.xww, vec3<i32>(-41468i, u_input.a.x, -23162i)), u_input.a.ww, func_2(vec4<f32>(514f, -1221f, 1132f, -1207f), 877f, Struct_2(18267u, Struct_1(vec4<i32>(2147483647i, -26132i, -11140i, 7055i), u_input.a.x, -9794i, u_input.b, vec3<f32>(917f, -1239f, 1918f)), Struct_1(u_input.a, u_input.a.x, u_input.a.x, 1u, vec3<f32>(-912f, -982f, 739f))), vec2<u32>(u_input.b, 4294967295u))), select(func_4(1100f, vec3<i32>(u_input.a.x, 2147483647i, -1i), u_input.a.zx, global0[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(true, true), true), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1569f, -1000f, -1356f) * vec4<f32>(757f, 913f, 1058f, -527f)), -1479f, global1[_wgslsmith_index_u32(1u, 3u)], vec2<u32>(u_input.b, u_input.b)).c.yy), !vec2<bool>(false, all(vec2<bool>(false, true)))), select(select(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(488f, -732f, 963f, 434f) + vec4<f32>(1241f, -801f, 576f, 1232f)), 1484f, Struct_2(54447u, Struct_1(u_input.a, 57263i, -2147483647i, 89304u, vec3<f32>(-396f, -367f, 1026f)), Struct_1(u_input.a, u_input.a.x, u_input.a.x, u_input.b, vec3<f32>(1071f, 767f, -1835f))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 1u))).c.zy, !select(vec2<bool>(true, false), vec2<bool>(false, false), false), (u_input.a.x == 2147483647i) || false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(_wgslsmith_f_op_f32(ceil(215f)), _wgslsmith_mod_vec3_i32(u_input.a.ywz, vec3<i32>(u_input.a.x, -5449i, u_input.a.x)), vec2<i32>(0i, 2147483647i), global0[_wgslsmith_index_u32(5826u, 14u)]))), vec2<bool>(any(vec4<bool>(u_input.a.x <= u_input.a.x, true, true, true)), all(vec2<bool>(true, true))));
    global0 = array<Struct_3, 14>();
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_mod_u32(0u, select(u_input.b, u_input.b, true)) >> (u_input.b % 32u)), u_input.b, _wgslsmith_mult_u32(u_input.b, abs(_wgslsmith_add_u32(4294967295u, 0u) >> (u_input.b % 32u))));
    var var_2 = _wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_1.x << (var_1.x % 32u), u_input.b, max(4294967295u, var_1.x), u_input.b ^ u_input.b), ~(~(~vec4<u32>(u_input.b, 4294967295u, var_1.x, u_input.b))), var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(979f, -2158f, -392f, 2274f), vec4<f32>(567f, 1909f, 102f, 1612f))), -156f, global1[_wgslsmith_index_u32(1u, 3u)], vec2<u32>(u_input.b, 0u) & vec2<u32>(41293u, 844u)).e.d, ~1u, var_1.x), vec4<u32>(0u, 1u, 47371u, ~u_input.b), vec4<u32>(_wgslsmith_sub_u32(u_input.b, var_1.x), ~52134u, var_1.x, var_1.x | 342u) ^ ~abs(vec4<u32>(6222u, 44076u, var_1.x, 1u))));
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(f32(-1f) * -1250f)) * -491f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1974f, -492f) * func_2(vec4<f32>(270f, -219f, 2383f, 1333f), -142f, Struct_2(1u, Struct_1(vec4<i32>(-1i, u_input.a.x, 2147483647i, 8258i), u_input.a.x, -1i, 1u, vec3<f32>(508f, -1245f, 106f)), Struct_1(u_input.a, u_input.a.x, 38113i, 0u, vec3<f32>(-270f, -1452f, -523f))), var_1.zx).d.x), 581f, -16656i < u_input.a.x)), _wgslsmith_div_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1548f, -144f, 794f, -757f), vec4<f32>(211f, 1000f, 2021f, 944f)), -1000f, global1[_wgslsmith_index_u32(~u_input.b, 3u)], ~var_1.xz).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(486f)), _wgslsmith_f_op_f32(-1539f + -1000f))), -180f), _wgslsmith_f_op_f32(-252f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1667f + 1049f))))), Struct_2(_wgslsmith_div_u32(1u, var_1.x), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-677f, 196f, 485f, 1168f), vec4<f32>(-1000f, -1000f, 699f, -649f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1472f) + _wgslsmith_f_op_f32(max(276f, 245f))), Struct_2(0u, Struct_1(u_input.a, u_input.a.x, -17912i, 1u, vec3<f32>(-849f, 961f, -297f)), func_2(vec4<f32>(-947f, 1514f, -1439f, 450f), 399f, Struct_2(4294967295u, Struct_1(vec4<i32>(u_input.a.x, 11170i, u_input.a.x, u_input.a.x), 1i, -17455i, var_1.x, vec3<f32>(426f, -802f, -1316f)), Struct_1(u_input.a, 19755i, u_input.a.x, var_1.x, vec3<f32>(132f, -778f, -1000f))), vec2<u32>(var_1.x, u_input.b)).e), vec2<u32>(~var_1.x, var_1.x << (u_input.b % 32u))).e, func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(409f, -399f, -392f, 1173f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 994f, 171f, -144f), vec4<f32>(1020f, 1797f, 450f, -935f)), -13655i == u_input.a.x)), -676f, global1[_wgslsmith_index_u32(6926u, 3u)], abs(vec2<u32>(u_input.b, u_input.b)) << (select(vec2<u32>(u_input.b, u_input.b), var_1.yx, var_0.x) % vec2<u32>(32u))).e), min(countOneBits(vec2<u32>(u_input.b, firstLeadingBit(var_1.x))), vec2<u32>(~var_1.x, u_input.b) >> (reverseBits(select(vec2<u32>(0u, u_input.b), vec2<u32>(42837u, u_input.b), true)) % vec2<u32>(32u)))).e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-187f)) - _wgslsmith_f_op_f32(var_0.e.x + 1000f)), _wgslsmith_f_op_f32(1235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-478f, -1034f))))))));
    global1 = array<Struct_2, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(1372f * -576f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-578f, var_0.e.x)))) - _wgslsmith_f_op_vec2_f32(select(var_0.e.zy, _wgslsmith_f_op_vec2_f32(-func_2(vec4<f32>(var_0.e.x, -1216f, var_0.e.x, 744f), 373f, Struct_2(2415u, Struct_1(vec4<i32>(2147483647i, 34155i, u_input.a.x, u_input.a.x), -2147483647i, 2147483647i, var_0.d, vec3<f32>(567f, -332f, var_0.e.x)), Struct_1(vec4<i32>(16312i, 29386i, 2147483647i, 0i), u_input.a.x, u_input.a.x, u_input.b, var_0.e)), vec2<u32>(u_input.b, var_0.d)).d.yx), func_4(-523f, u_input.a.yxy | u_input.a.wwz, reverseBits(u_input.a.yz), func_2(vec4<f32>(var_0.e.x, var_0.e.x, -668f, var_0.e.x), -2349f, global1[_wgslsmith_index_u32(u_input.b, 3u)], vec2<u32>(1u, var_0.d)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1200f, -632f))));
    let var_3 = ~vec3<i32>(min(abs(var_0.a.x >> (0u % 32u)), _wgslsmith_mod_i32(countOneBits(44856i), i32(-1i) * -1i)), 13879i, u_input.a.x);
    var var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

