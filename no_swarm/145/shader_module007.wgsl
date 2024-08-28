struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(923f, -1326f);

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec4<f32>(204f, 111f, -474f, -1254f), 44095u, 1i, vec3<f32>(-1264f, 170f, -276f), Struct_1(true, vec4<bool>(true, false, false, true), vec3<f32>(1319f, -971f, 457f), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), Struct_2(vec4<f32>(1317f, 663f, 1068f, -156f), 1u, 2147483647i, vec3<f32>(1000f, 1211f, 511f), Struct_1(false, vec4<bool>(false, false, true, true), vec3<f32>(422f, -100f, 370f), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), Struct_2(vec4<f32>(779f, -1399f, -1080f, -1242f), 35182u, i32(-2147483648), vec3<f32>(-420f, -298f, 386f), Struct_1(false, vec4<bool>(false, true, false, true), vec3<f32>(2050f, 374f, -2773f), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), Struct_2(vec4<f32>(-848f, 907f, 1594f, 696f), 1u, -4413i, vec3<f32>(-585f, -767f, 1335f), Struct_1(true, vec4<bool>(true, true, true, false), vec3<f32>(-1210f, 1139f, -976f), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<f32>(-817f, -1000f, -701f, -303f), 9873u, 15691i, vec3<f32>(952f, 1265f, -1190f), Struct_1(true, vec4<bool>(true, false, false, false), vec3<f32>(342f, -511f, 1224f), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), Struct_2(vec4<f32>(-1000f, -194f, 526f, -330f), 39260u, 24454i, vec3<f32>(658f, 1103f, 139f), Struct_1(true, vec4<bool>(false, true, true, false), vec3<f32>(-380f, -324f, -537f), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), Struct_2(vec4<f32>(-1173f, 740f, 1473f, -189f), 4294967295u, 0i, vec3<f32>(-717f, -884f, -590f), Struct_1(true, vec4<bool>(false, true, true, false), vec3<f32>(1165f, -1000f, -1076f), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), Struct_2(vec4<f32>(-222f, -2046f, -812f, 2008f), 24976u, -1i, vec3<f32>(-1000f, 431f, -216f), Struct_1(true, vec4<bool>(false, true, true, true), vec3<f32>(-1051f, 1372f, -721f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<f32>(-620f, -480f, 225f, 1167f), 4294967295u, 0i, vec3<f32>(-783f, -195f, 1000f), Struct_1(true, vec4<bool>(true, true, true, false), vec3<f32>(1742f, 1507f, 409f), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<f32>(-1504f, -1818f, -647f, 1629f), 0u, -1i, vec3<f32>(466f, -615f, 907f), Struct_1(true, vec4<bool>(false, true, false, true), vec3<f32>(-401f, 659f, 503f), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), Struct_2(vec4<f32>(588f, 232f, -2262f, 1231f), 1u, 4640i, vec3<f32>(1137f, -1266f, 428f), Struct_1(false, vec4<bool>(true, false, false, false), vec3<f32>(-261f, -285f, -856f), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), Struct_2(vec4<f32>(279f, 902f, 1100f, -278f), 1u, 12410i, vec3<f32>(452f, -783f, 1239f), Struct_1(false, vec4<bool>(true, false, true, true), vec3<f32>(-454f, 455f, -1279f), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), Struct_2(vec4<f32>(-742f, -2269f, -606f, 1180f), 0u, 0i, vec3<f32>(646f, -1044f, 128f), Struct_1(true, vec4<bool>(false, false, false, false), vec3<f32>(-826f, -499f, 855f), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), Struct_2(vec4<f32>(-2005f, -500f, -141f, 866f), 23455u, i32(-2147483648), vec3<f32>(290f, -627f, 1610f), Struct_1(true, vec4<bool>(true, false, true, false), vec3<f32>(-1053f, -334f, -177f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), Struct_2(vec4<f32>(762f, 578f, -177f, 1297f), 1u, -31447i, vec3<f32>(-1638f, 1000f, -1054f), Struct_1(false, vec4<bool>(false, true, false, false), vec3<f32>(1833f, -252f, -2542f), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), Struct_2(vec4<f32>(1000f, 1287f, -573f, -308f), 39153u, i32(-2147483648), vec3<f32>(-835f, 1301f, -584f), Struct_1(false, vec4<bool>(false, true, true, false), vec3<f32>(1000f, 509f, -521f), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))), Struct_2(vec4<f32>(-1046f, -1353f, 1104f, -682f), 1u, i32(-2147483648), vec3<f32>(-1000f, 1451f, -688f), Struct_1(true, vec4<bool>(true, false, false, true), vec3<f32>(-744f, -363f, -623f), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), Struct_2(vec4<f32>(624f, -1066f, -812f, -852f), 19724u, -7283i, vec3<f32>(587f, -1322f, 198f), Struct_1(true, vec4<bool>(true, false, true, false), vec3<f32>(-1000f, 508f, -390f), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), Struct_2(vec4<f32>(1123f, -609f, 2477f, 1000f), 1u, -4560i, vec3<f32>(533f, 1069f, 1577f), Struct_1(false, vec4<bool>(true, true, true, true), vec3<f32>(-234f, -593f, 323f), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), Struct_2(vec4<f32>(609f, 234f, -1472f, -250f), 4294967295u, -4329i, vec3<f32>(1571f, 1033f, 1311f), Struct_1(false, vec4<bool>(true, false, true, false), vec3<f32>(799f, 1181f, -1824f), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), Struct_2(vec4<f32>(821f, -1277f, -1037f, 961f), 1u, -24503i, vec3<f32>(177f, 1000f, -246f), Struct_1(false, vec4<bool>(false, true, false, true), vec3<f32>(693f, 706f, 361f), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), Struct_2(vec4<f32>(1667f, -429f, 131f, 686f), 1272u, 1i, vec3<f32>(243f, 1398f, 1000f), Struct_1(true, vec4<bool>(true, false, true, false), vec3<f32>(-471f, 434f, -1557f), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), Struct_2(vec4<f32>(677f, -388f, -545f, 1595f), 114569u, -30383i, vec3<f32>(-1321f, -543f, 752f), Struct_1(false, vec4<bool>(false, false, false, false), vec3<f32>(1541f, -1827f, -1241f), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), Struct_2(vec4<f32>(1262f, 1723f, 1000f, -781f), 4294967295u, 0i, vec3<f32>(1209f, 1035f, -452f), Struct_1(true, vec4<bool>(true, true, false, false), vec3<f32>(-623f, 1000f, -2309f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), Struct_2(vec4<f32>(390f, 1005f, -184f, -449f), 40913u, 2147483647i, vec3<f32>(505f, -400f, -112f), Struct_1(true, vec4<bool>(false, false, false, false), vec3<f32>(-1918f, -861f, -470f), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), Struct_2(vec4<f32>(588f, 396f, 607f, 277f), 27255u, -10474i, vec3<f32>(158f, -269f, -559f), Struct_1(false, vec4<bool>(true, true, false, true), vec3<f32>(-1666f, 714f, 113f), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), Struct_2(vec4<f32>(796f, -168f, -274f, 319f), 34360u, -61420i, vec3<f32>(-1252f, 495f, 2078f), Struct_1(true, vec4<bool>(true, true, false, false), vec3<f32>(-1301f, 898f, 334f), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), Struct_2(vec4<f32>(230f, 1109f, 558f, 376f), 15594u, 0i, vec3<f32>(-723f, -442f, 596f), Struct_1(false, vec4<bool>(false, false, true, true), vec3<f32>(-157f, -327f, 485f), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))));

var<private> global2: array<vec4<u32>, 28>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -23570i, -418i), vec3<i32>(-80079i, -2147483647i, 21541i), reverseBits(-select(vec3<i32>(-50018i, -2912i, 21047i) ^ vec3<i32>(2147483647i, u_input.d, u_input.c), -vec3<i32>(-1i, -47818i, u_input.d), all(vec4<bool>(true, false, true, true)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(483f)) - _wgslsmith_f_op_f32(-global0.x)), global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), global0.x));
    var var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(var_0.x), 1i), firstTrailingBit(~u_input.c)) != firstLeadingBit(-(~(-26626i))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, global0.x, global0.x)))), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), !vec4<bool>(abs(-47910i) != u_input.d, true, true, any(vec2<bool>(true, true))));
    var_1 = Struct_1(true, vec4<bool>(var_1.a, u_input.b.x == _wgslsmith_mod_u32(93867u, 53394u), any(vec4<bool>(var_1.a, true, select(true, false, var_1.a), var_1.c.x >= -810f)), var_1.d.x), var_1.c, var_1.b, vec4<bool>(all(vec4<bool>(var_1.d.x, var_1.a == var_1.d.x, var_1.e.x, var_1.e.x)), all(!(!vec2<bool>(true, var_1.b.x))), var_1.e.x, false));
    return vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1523f + 1000f))), _wgslsmith_f_op_f32(sign(692f))))), var_1.c.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 262f) - 421f), _wgslsmith_f_op_f32(-1599f * 367f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.x)))), reverseBits(~(~80976u)), max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-31009i, 1i), firstLeadingBit(vec2<i32>(u_input.c, u_input.c))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.d, -1i), vec2<i32>(0i, u_input.d)), vec2<i32>(-17643i, 70958i) << (u_input.b % vec2<u32>(32u)))), u_input.d), vec3<f32>(global0.x, _wgslsmith_f_op_f32(floor(1702f)), global0.x), Struct_1(!(reverseBits(u_input.c) >= _wgslsmith_div_i32(-1i, u_input.d)), select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)), true), vec4<bool>(false, all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, false, true)), true), false), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1526f)) - _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, -1670f), vec3<f32>(global0.x, global0.x, -327f)))))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), -360f > global0.x), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, any(vec2<bool>(false, false)), true, false))));
    global2 = array<vec4<u32>, 28>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), abs(_wgslsmith_div_u32(var_0.b, _wgslsmith_dot_vec4_u32(~global2[_wgslsmith_index_u32(23515u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]))), select(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(22206i, var_0.c) << (u_input.b % vec2<u32>(32u)), vec2<i32>(-129i, -1i) & vec2<i32>(u_input.c, u_input.d)), min(_wgslsmith_mod_vec2_i32(vec2<i32>(-62336i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(19898i, var_0.c) << (u_input.a % vec2<u32>(32u)))), ((var_0.b ^ 4792u) << (4294967295u % 32u)) != max(~48440u, 56736u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), Struct_1(_wgslsmith_sub_i32(var_0.c, ~(-1i)) == _wgslsmith_sub_i32(2147483647i, u_input.c | u_input.c), select(select(!var_0.e.b, vec4<bool>(false, var_0.e.a, var_0.e.a, false), var_0.e.d.x), vec4<bool>(!var_0.e.d.x, true, true, false), var_0.e.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-var_0.e.c.x), 114f) + vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-551f + var_0.d.x), -272f)), !vec4<bool>(true, 101f == global0.x, false, 91596u < u_input.b.x), var_0.e.b));
    global2 = array<vec4<u32>, 28>();
    var var_2 = 43841i;
    return Struct_1(var_0.e.b.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.d))), vec4<bool>(var_1.e.b.x, false, var_0.e.e.x, true), !var_0.e.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_1;
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = 1i & abs(min(0i, select(u_input.c, 0i, var_0.e.e.x)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(19065u, var_0.b), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(16932u, var_0.b))) % 32u));
    let var_3 = func_2().e;
    return abs(~select(arg_0.x, ~4294967295u, var_1.b.x && true)) & abs(countOneBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, var_0.b), u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~max(vec4<i32>(i32(-1i) * -15328i, u_input.d, ~(-2147483647i), u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 2147483647i, -1i, u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, 9518i, u_input.c), vec4<i32>(u_input.c, u_input.d, u_input.d, u_input.c)))));
    var var_1 = _wgslsmith_mult_u32(countOneBits(~_wgslsmith_mult_u32(0u, 4294967295u) << (u_input.b.x % 32u)), func_1(firstTrailingBit(u_input.a), global1[_wgslsmith_index_u32(1u, 28u)], vec4<f32>(_wgslsmith_div_f32(1050f, 145f), _wgslsmith_f_op_f32(f32(-1f) * -1308f), -1000f, _wgslsmith_div_f32(global0.x, -1324f)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false)) & (_wgslsmith_clamp_u32(_wgslsmith_div_u32(69058u, 37498u), u_input.a.x, u_input.b.x | u_input.b.x) | firstTrailingBit(0u)));
    var var_2 = u_input.b.x;
    let var_3 = _wgslsmith_add_u32(~select(u_input.a.x, _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), 13364u), any(vec2<bool>(true, true))), firstLeadingBit(~31489u));
    var var_4 = vec3<bool>(!(!(!(var_3 < u_input.b.x))), true, true);
    let var_5 = ~_wgslsmith_mult_vec4_u32(max(~global2[_wgslsmith_index_u32(firstTrailingBit(0u), 28u)], vec4<u32>(u_input.b.x << (38500u % 32u), 1u, var_3 & u_input.a.x, abs(u_input.a.x))), global2[_wgslsmith_index_u32(~countOneBits(11769u), 28u)] >> (_wgslsmith_clamp_vec4_u32(abs(global2[_wgslsmith_index_u32(u_input.b.x, 28u)]), vec4<u32>(38995u, 30413u, 0u, 1u), vec4<u32>(12488u, u_input.b.x, 4294967295u, var_3)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(max(~var_5.zzw, vec3<u32>(17796u, u_input.b.x, var_3) ^ var_5.zwx), var_5.zxw) ^ ~abs(_wgslsmith_div_u32(1u, u_input.b.x)), abs(min(vec2<i32>(u_input.c, 31354i), var_0.yz)) & firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(26527i, var_0.x), ~vec2<i32>(2147483647i, var_0.x))));
}

