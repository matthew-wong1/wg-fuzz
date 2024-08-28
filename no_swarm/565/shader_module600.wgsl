struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<f32>(1435f, -1234f, 386f, -1298f), vec4<f32>(-186f, 325f, -1000f, 1000f), Struct_1(vec4<f32>(-670f, 1103f, 473f, -747f), vec3<i32>(1i, 16012i, -1i))), Struct_2(vec4<f32>(-247f, -894f, -443f, -1794f), vec4<f32>(400f, 1000f, -1235f, -1661f), Struct_1(vec4<f32>(-990f, 806f, -326f, 1272f), vec3<i32>(-26346i, 0i, 2147483647i))), Struct_2(vec4<f32>(855f, 1797f, -313f, -2050f), vec4<f32>(1975f, -412f, 810f, 1179f), Struct_1(vec4<f32>(2098f, -788f, -1427f, -1050f), vec3<i32>(1i, 22922i, 0i))), Struct_2(vec4<f32>(1748f, -1576f, -766f, 1025f), vec4<f32>(-1365f, 180f, 243f, -393f), Struct_1(vec4<f32>(149f, -456f, -1413f, -414f), vec3<i32>(-1i, -480i, 1i))), Struct_2(vec4<f32>(-581f, -1000f, 126f, 1087f), vec4<f32>(-453f, 2961f, 206f, -1121f), Struct_1(vec4<f32>(2330f, 273f, 645f, 251f), vec3<i32>(4349i, -14795i, -1i))), Struct_2(vec4<f32>(-885f, -464f, -1325f, 752f), vec4<f32>(1690f, 1755f, 768f, -424f), Struct_1(vec4<f32>(373f, 325f, 1000f, -193f), vec3<i32>(10315i, -27264i, -1i))), Struct_2(vec4<f32>(-305f, 1093f, -1239f, 1400f), vec4<f32>(801f, -1476f, -233f, 923f), Struct_1(vec4<f32>(-250f, -1000f, -1660f, -1087f), vec3<i32>(0i, 0i, -64709i))), Struct_2(vec4<f32>(1041f, -1299f, -573f, -1565f), vec4<f32>(568f, -1124f, -891f, 685f), Struct_1(vec4<f32>(419f, 207f, -917f, 1174f), vec3<i32>(30566i, -1i, 2147483647i))), Struct_2(vec4<f32>(1000f, -421f, -1495f, -389f), vec4<f32>(762f, 507f, 498f, -1000f), Struct_1(vec4<f32>(-1040f, -1000f, -2224f, -1609f), vec3<i32>(1i, 21038i, 28058i))), Struct_2(vec4<f32>(1000f, 713f, -327f, 400f), vec4<f32>(-128f, 1485f, 888f, 1413f), Struct_1(vec4<f32>(-985f, -1563f, -763f, -1099f), vec3<i32>(1i, 3102i, -11023i))), Struct_2(vec4<f32>(220f, -814f, -1083f, -197f), vec4<f32>(1617f, 1543f, -224f, 689f), Struct_1(vec4<f32>(1076f, -999f, 1000f, -890f), vec3<i32>(-1i, 1i, -1i))), Struct_2(vec4<f32>(-2573f, 1000f, 262f, 1177f), vec4<f32>(-241f, 972f, -1372f, -400f), Struct_1(vec4<f32>(-636f, -1623f, -1258f, -180f), vec3<i32>(-28187i, 1i, -35802i))), Struct_2(vec4<f32>(1476f, 463f, -261f, 533f), vec4<f32>(-1539f, -1000f, 1546f, -723f), Struct_1(vec4<f32>(213f, 712f, -1237f, -114f), vec3<i32>(-1i, -16086i, 1i))));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec4<f32>(-487f, 1000f, 2179f, 153f), vec4<f32>(283f, 425f, -765f, -124f), Struct_1(vec4<f32>(-1110f, 316f, -200f, -242f), vec3<i32>(2147483647i, -34670i, 1i))), Struct_2(vec4<f32>(300f, -1000f, 388f, -1019f), vec4<f32>(1218f, 454f, 914f, -1594f), Struct_1(vec4<f32>(-1348f, -350f, -1000f, -1171f), vec3<i32>(-1910i, 649i, 25426i))), Struct_2(vec4<f32>(369f, -916f, -1050f, -1968f), vec4<f32>(1698f, 1662f, -294f, 305f), Struct_1(vec4<f32>(2271f, 745f, -335f, -1042f), vec3<i32>(i32(-2147483648), 0i, 16106i))), Struct_2(vec4<f32>(-1000f, -882f, -461f, -867f), vec4<f32>(-989f, 1418f, -471f, 1000f), Struct_1(vec4<f32>(-601f, 153f, 771f, -461f), vec3<i32>(35488i, -1i, 2147483647i))), Struct_2(vec4<f32>(1577f, -697f, 1547f, -190f), vec4<f32>(-599f, 140f, 1000f, -997f), Struct_1(vec4<f32>(-680f, -602f, 1071f, 1378f), vec3<i32>(-2424i, -8732i, 5144i))), Struct_2(vec4<f32>(616f, -1383f, 676f, -1751f), vec4<f32>(215f, 838f, 121f, -1164f), Struct_1(vec4<f32>(-406f, -766f, -380f, 387f), vec3<i32>(49736i, -63788i, -101337i))), Struct_2(vec4<f32>(162f, 1107f, 735f, -352f), vec4<f32>(661f, 2516f, -321f, 205f), Struct_1(vec4<f32>(649f, -179f, 863f, 1269f), vec3<i32>(-2583i, -29583i, -41259i))), Struct_2(vec4<f32>(-754f, -863f, 1258f, 1000f), vec4<f32>(-722f, -575f, -1000f, 738f), Struct_1(vec4<f32>(903f, 1140f, -1489f, 290f), vec3<i32>(8869i, 2147483647i, -20379i))), Struct_2(vec4<f32>(-594f, 422f, 737f, -1238f), vec4<f32>(708f, -513f, -1834f, 785f), Struct_1(vec4<f32>(1074f, -1000f, -239f, -878f), vec3<i32>(i32(-2147483648), 38400i, i32(-2147483648)))), Struct_2(vec4<f32>(-1000f, -364f, 724f, -888f), vec4<f32>(-258f, -107f, -502f, 629f), Struct_1(vec4<f32>(-114f, 1225f, -665f, 2363f), vec3<i32>(-6749i, -35566i, 1i))), Struct_2(vec4<f32>(-727f, -1785f, -700f, -1462f), vec4<f32>(2027f, -860f, 1000f, -167f), Struct_1(vec4<f32>(1696f, 209f, 541f, 140f), vec3<i32>(27475i, -6496i, -50022i))), Struct_2(vec4<f32>(-1382f, -973f, -1240f, 458f), vec4<f32>(-678f, 307f, -1084f, -1366f), Struct_1(vec4<f32>(-370f, 556f, 1000f, 2174f), vec3<i32>(-1i, i32(-2147483648), 1i))), Struct_2(vec4<f32>(-326f, 474f, -259f, -511f), vec4<f32>(-1093f, 178f, -1708f, -718f), Struct_1(vec4<f32>(304f, 164f, -1315f, -1410f), vec3<i32>(i32(-2147483648), -1i, 0i))), Struct_2(vec4<f32>(1749f, 118f, 115f, 310f), vec4<f32>(-1288f, 2205f, 505f, -176f), Struct_1(vec4<f32>(1449f, -520f, 748f, 489f), vec3<i32>(2147483647i, 42454i, 0i))));

var<private> global2: vec3<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = vec3<bool>(!(-_wgslsmith_clamp_i32(5211i, -6754i, 0i) < -15758i), global2.x, !(all(vec4<bool>(global2.x, arg_0, false, true)) || (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -5358i), vec3<i32>(1i, 1i, -1i)) != 2147483647i)));
    global0 = array<Struct_2, 13>();
    global2 = select(select(select(select(vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(arg_0, global2.x, global2.x), vec3<bool>(false, true, global2.x)), !vec3<bool>(true, true, global2.x)), vec3<bool>(true, false, true), select(!vec3<bool>(global2.x, global2.x, global2.x), !vec3<bool>(arg_0, true, global2.x), all(vec2<bool>(false, true)))), vec3<bool>(!any(vec3<bool>(global2.x, true, true)), true, true), !select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(true, true, global2.x), vec3<bool>(true, true, arg_0))), vec3<bool>(!any(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, global2.x, false))), true, global2.x), !any(vec2<bool>(true, true)) & select(!select(false, true, global2.x), false, true));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-895f - -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-563f, -1191f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(819f - 652f), -414f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1151f))) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 397f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-255f * 185f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f))))));
    let var_1 = u_input.b.x;
    return var_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> vec3<i32> {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_div_f32(1000f, arg_0.x), arg_0.x, 975f, 1461f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(arg_0.x, arg_0.x), 1838f, _wgslsmith_f_op_f32(arg_0.x + -2273f), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 196f, -338f, arg_0.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-744f, 836f, arg_0.x, arg_0.x), vec4<f32>(-762f, arg_0.x, -845f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(322f, 1316f, arg_0.x, 620f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2649f, -210f, -463f, 189f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 652f, arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1288f, arg_0.x, arg_0.x, arg_0.x)))), -vec3<i32>(1i, 1i, 1i)));
    let var_1 = vec2<u32>(u_input.a & u_input.b.x, _wgslsmith_mult_u32(~5293u, _wgslsmith_add_u32(u_input.b.x, ~2653u)) >> (func_3(arg_1) % 32u));
    global0 = array<Struct_2, 13>();
    var var_2 = Struct_3(var_1.x, u_input.b.wzx, var_1.x, firstLeadingBit(max(vec4<u32>(7281u, u_input.b.x ^ var_1.x, var_1.x & u_input.a, max(38875u, u_input.b.x)), (u_input.b >> (u_input.b % vec4<u32>(32u))) >> (~u_input.b % vec4<u32>(32u)))), global0[_wgslsmith_index_u32(4294967295u << (~_wgslsmith_add_u32(~26490u, firstTrailingBit(var_1.x)) % 32u), 13u)]);
    let var_3 = ~(~(_wgslsmith_add_vec4_u32(u_input.b, u_input.b) ^ vec4<u32>(1u, var_1.x, 31650u, 1u))) << (u_input.b % vec4<u32>(32u));
    return vec3<i32>(var_0.c.b.x, abs(~_wgslsmith_div_i32(var_2.e.c.b.x, var_2.e.c.b.x)), abs(var_0.c.b.x));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = global2.yx;
    let var_1 = 526f;
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-160f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_div_f32(var_1, -121f))), 1620f, _wgslsmith_f_op_f32(arg_0.a.x * -1266f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.c.a)))), func_2(arg_0.a.zz, true));
    let var_3 = (-vec4<i32>(var_2.b.x, abs(3292i), -29202i >> (u_input.a % 32u), arg_0.c.b.x >> (12744u % 32u)) & -(vec4<i32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, -48009i) | -vec4<i32>(-1i, var_2.b.x, 60645i, 11967i))) >> (reverseBits(vec4<u32>(u_input.a >> (max(45692u, u_input.a) % 32u), ~(~u_input.a), max(u_input.b.x, 28471u), u_input.b.x)) % vec4<u32>(32u));
    global1 = array<Struct_2, 14>();
    return Struct_3(u_input.a, abs(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 67389u, u_input.a)), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x) << (vec3<u32>(u_input.b.x, 8852u, 41233u) % vec3<u32>(32u)))), u_input.b.x, ~vec4<u32>(0u, reverseBits(_wgslsmith_mult_u32(3308u, u_input.b.x)), _wgslsmith_div_u32(~1u, ~3858u), abs(~u_input.b.x)), Struct_2(arg_0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(-arg_0.b.x), -277f))), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec3<i32>(arg_0.c.b.x, ~5965i, 1i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    var var_0 = abs(firstTrailingBit(select(firstLeadingBit(min(arg_1.b, u_input.b.yyz)), vec3<u32>(arg_2, 1u ^ u_input.a, u_input.b.x), all(!vec3<bool>(global2.x, arg_0.x, false)))));
    var var_1 = global2.x;
    var var_2 = _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, arg_1.e.c.b.x, -2147483647i) >> (vec4<u32>(39495u, arg_1.a, 0u, 76068u) % vec4<u32>(32u))), ~firstTrailingBit(vec4<i32>(arg_1.e.c.b.x, arg_1.e.c.b.x, arg_1.e.c.b.x, arg_1.e.c.b.x)))), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15478i, 60980i, -1i, arg_1.e.c.b.x), vec4<i32>(arg_1.e.c.b.x, arg_1.e.c.b.x, arg_1.e.c.b.x, 2147483647i), vec4<i32>(0i, -6431i, -1i, -2147483647i)), -vec4<i32>(-1i, arg_1.e.c.b.x, -39970i, -2147483647i)), reverseBits(-vec4<i32>(arg_1.e.c.b.x, 0i, arg_1.e.c.b.x, 2147483647i)), vec4<i32>(1i, ~arg_1.e.c.b.x, select(arg_1.e.c.b.x, arg_1.e.c.b.x, global2.x), ~0i))));
    var var_3 = ~var_2.xyx;
    global0 = array<Struct_2, 13>();
    return Struct_1(_wgslsmith_div_vec4_f32(arg_1.e.a, arg_1.e.b), firstTrailingBit(-(arg_1.e.c.b & var_2.yyx) >> (u_input.b.yxx % vec3<u32>(32u))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global0 = array<Struct_2, 13>();
    let var_0 = vec4<i32>(~arg_2, ~(-(~arg_2)), abs(1i) ^ (~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.b.x, arg_2, -72277i), vec4<i32>(arg_1.b.x, -2147483647i, arg_1.b.x, -49637i)) & -2147483647i), arg_1.b.x);
    var var_1 = ~func_1(Struct_2(vec4<f32>(arg_1.a.x, 2231f, _wgslsmith_f_op_f32(step(-318f, arg_1.a.x)), _wgslsmith_f_op_f32(-1792f * arg_1.a.x)), arg_1.a, arg_1)).a;
    let var_2 = any(vec4<bool>(all(!vec3<bool>(true, global2.x, true)), !global2.x, !arg_0, all(vec4<bool>(arg_0, u_input.b.x == 32773u, true, true))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-1060f + _wgslsmith_f_op_f32(sign(arg_1.a.x))), 344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1138f * _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x - -355f), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(arg_1.a.x + -1440f)), arg_1.a.x))), func_4(!global2.zx, func_1(func_1(global0[_wgslsmith_index_u32(countOneBits(18607u), 13u)]).e), u_input.b.x));
    return func_1(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, var_3.a.x, var_3.b.x, var_3.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -106f, arg_1.a.x, -502f) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, arg_1.a.x, 582f, 764f)) - vec4<f32>(var_3.c.a.x, 795f, 1000f, arg_1.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2615f), _wgslsmith_f_op_f32(1750f * arg_1.a.x))), arg_1));
}

fn func_6(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_5(false, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -444f, _wgslsmith_f_op_f32(f32(-1f) * -2462f), _wgslsmith_f_op_f32(arg_2.e.a.x * -597f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-988f, arg_0, arg_2.e.a.x, -199f) * vec4<f32>(arg_2.e.a.x, 577f, 743f, -1000f)))), arg_2.e.c.b), _wgslsmith_mod_i32((select(arg_2.e.c.b.x, 0i, arg_1.x) >> (_wgslsmith_mult_u32(1u, arg_2.a) % 32u)) ^ 1i, -2147483647i));
    var var_1 = Struct_3(~arg_2.c, ~vec3<u32>(19628u, u_input.b.x, countOneBits(arg_2.d.x << (u_input.a % 32u))), ~1u, ~_wgslsmith_mod_vec4_u32(func_1(Struct_2(var_0.e.b, var_0.e.b, Struct_1(arg_2.e.b, vec3<i32>(1i, 36544i, 32939i)))).d, ~u_input.b), Struct_2(arg_2.e.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.e.a * arg_2.e.b))), func_5(arg_1.x, Struct_1(arg_2.e.c.a, var_0.e.c.b & vec3<i32>(arg_2.e.c.b.x, -9202i, -19204i)), -_wgslsmith_sub_i32(arg_2.e.c.b.x, var_0.e.c.b.x)).e.c));
    global1 = array<Struct_2, 14>();
    var_0 = func_1(arg_2.e);
    var var_2 = arg_2.e.c;
    return func_1(func_5(global2.x, var_0.e.c, max(~var_1.e.c.b.x, arg_2.e.c.b.x)).e).e.c;
}

fn func_7(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(1u, min(u_input.b.yzz, _wgslsmith_add_vec3_u32(u_input.b.yxy | (u_input.b.yxy & vec3<u32>(32072u, 4294967295u, u_input.b.x)), ~firstLeadingBit(u_input.b.yyy))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(30108u), 45643u), abs(u_input.b.zzy)), u_input.b.x), vec4<u32>(min(22632u & ~u_input.b.x, 56125u), reverseBits(u_input.a), 1u, ~(_wgslsmith_clamp_u32(0u, 40686u, u_input.b.x) >> (select(8184u, u_input.a, global2.x) % 32u))), Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a), arg_0.a, Struct_1(arg_0.a, vec3<i32>(-1i, ~arg_0.b.x, -2147483647i))));
    return func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(-1399f, arg_0.a.x, 751f, 2499f), vec4<f32>(1000f, var_0.e.c.a.x, var_0.e.b.x, -339f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e.b - vec4<f32>(1286f, 694f, -265f, -748f))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -122f) * -622f), vec2<bool>(all(select(vec3<bool>(false, global2.x, false), vec3<bool>(true, global2.x, true), global2.x)), !global2.x), func_5(any(vec4<bool>(global2.x, false, false, true)), func_4(vec2<bool>(true, false), func_1(global1[_wgslsmith_index_u32(0u, 14u)]), u_input.b.x), select(1i, -1i, select(true, global2.x, global2.x)))));
    let var_1 = var_0.e.c;
    var var_2 = false;
    global0 = array<Struct_2, 13>();
    var var_3 = ~var_0.d.xzz;
    var var_4 = 1000f;
    var_4 = var_1.a.x;
    let var_5 = _wgslsmith_f_op_f32(var_1.a.x * var_0.e.b.x);
    let var_6 = func_7(var_0.e.c).e.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, func_5(all(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, true, false, true), global2.x)) || all(vec2<bool>(true, global2.x)), Struct_1(var_1.a, var_6.b), 2147483647i).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f - 865f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-515f, var_5) + _wgslsmith_f_op_f32(-830f - 1245f)))), 1u, _wgslsmith_add_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_6.b.x, var_0.e.c.b.x, var_1.b.x, var_6.b.x), ~vec4<i32>(40560i, var_0.e.c.b.x, var_1.b.x, -2147483647i)) << (firstTrailingBit(countOneBits(var_0.c)) % 32u)));
}

