struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: array<i32, 15>;

var<private> global3: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-422f, 1000f, 522f, 768f), true, 1079f), Struct_1(false, vec4<f32>(1721f, 248f, 1618f, 1000f), false, 2210f), Struct_1(true, vec4<f32>(-1000f, -647f, -532f, -129f), true, -155f)), vec2<f32>(-1213f, -307f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(751f, -362f, -1000f, -1108f), true, -275f), Struct_1(true, vec4<f32>(899f, 1377f, -296f, 1839f), true, 605f), Struct_1(false, vec4<f32>(-429f, -878f, 991f, 431f), false, -1320f)), vec2<f32>(-353f, -1004f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-813f, 1508f, 351f, -1000f), false, 1178f), Struct_1(true, vec4<f32>(-730f, -881f, 1097f, -1000f), false, -322f), Struct_1(true, vec4<f32>(-1248f, -297f, 545f, 680f), true, -149f)), vec2<f32>(623f, -1696f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-1001f, 1428f, 1000f, 391f), true, -1000f), Struct_1(true, vec4<f32>(-623f, 1823f, -800f, 1503f), false, -370f), Struct_1(false, vec4<f32>(696f, 2362f, 1025f, 339f), false, 801f)), vec2<f32>(1225f, 655f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-893f, -935f, -295f, 136f), false, -1025f), Struct_1(true, vec4<f32>(882f, -1000f, 1814f, -1049f), true, -1050f), Struct_1(true, vec4<f32>(-525f, -1111f, 1000f, 1413f), true, -449f)), vec2<f32>(-171f, 764f)), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(506f, 1000f, 1925f, 948f), true, -779f), Struct_1(true, vec4<f32>(1609f, 629f, -347f, -240f), true, -389f), Struct_1(true, vec4<f32>(702f, -1000f, 876f, -431f), true, 1544f)), vec2<f32>(215f, 288f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(1651f, -224f, -1589f, 211f), true, 229f), Struct_1(false, vec4<f32>(1087f, -725f, 510f, 1083f), false, 1165f), Struct_1(false, vec4<f32>(-1185f, -472f, 308f, 2429f), true, -2135f)), vec2<f32>(878f, -1000f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(957f, 418f, 585f, -881f), false, 1194f), Struct_1(true, vec4<f32>(-1000f, 1512f, 307f, -294f), true, 683f), Struct_1(true, vec4<f32>(-321f, 554f, 255f, -2211f), false, 1216f)), vec2<f32>(-842f, 680f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-1115f, 214f, -1648f, 1595f), true, 1000f), Struct_1(true, vec4<f32>(-159f, 1000f, -562f, 2078f), false, -469f), Struct_1(false, vec4<f32>(-1455f, -1000f, 1989f, 1629f), false, -161f)), vec2<f32>(1571f, 1000f)), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(1169f, 1394f, -1573f, 1100f), false, 1558f), Struct_1(true, vec4<f32>(112f, 204f, -101f, 107f), true, -1093f), Struct_1(true, vec4<f32>(-128f, -1000f, -669f, -1056f), false, 1484f)), vec2<f32>(287f, 824f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-1112f, 365f, -1116f, -691f), true, -1034f), Struct_1(false, vec4<f32>(667f, 1535f, -785f, -139f), true, 1582f), Struct_1(true, vec4<f32>(-318f, -1063f, -145f, 475f), true, -308f)), vec2<f32>(299f, 639f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-461f, 200f, 1000f, 252f), true, 2129f), Struct_1(true, vec4<f32>(-1000f, -162f, 424f, 409f), true, -1000f), Struct_1(true, vec4<f32>(-1091f, 321f, 1042f, 858f), false, -588f)), vec2<f32>(1235f, -1467f)), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-752f, 1166f, 1000f, 2209f), true, 2472f), Struct_1(false, vec4<f32>(1091f, 246f, -232f, 357f), false, 1546f), Struct_1(false, vec4<f32>(1421f, 544f, -395f, 1000f), true, 1094f)), vec2<f32>(297f, 112f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-877f, -1482f, -109f, 1242f), true, 1000f), Struct_1(false, vec4<f32>(-703f, -333f, -1420f, 1136f), false, -821f), Struct_1(true, vec4<f32>(-472f, -970f, 127f, 455f), false, -1000f)), vec2<f32>(-2039f, -290f)), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(1257f, -461f, 485f, 677f), true, -834f), Struct_1(false, vec4<f32>(-1367f, 1000f, 313f, 1121f), true, 148f), Struct_1(false, vec4<f32>(873f, 273f, -478f, -365f), true, 951f)), vec2<f32>(663f, -214f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-612f, 708f, 1006f, 370f), true, -840f), Struct_1(true, vec4<f32>(-557f, 1000f, -1107f, 806f), false, -1374f), Struct_1(true, vec4<f32>(1000f, 523f, -842f, -161f), false, -1000f)), vec2<f32>(1000f, 783f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(453f, -1342f, -1000f, 316f), false, -1082f), Struct_1(false, vec4<f32>(-1011f, -379f, 286f, -418f), true, 552f), Struct_1(false, vec4<f32>(-258f, -511f, -779f, -1000f), false, -536f)), vec2<f32>(-254f, 1244f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-100f, 1000f, -1528f, -2438f), true, 1000f), Struct_1(true, vec4<f32>(-671f, -767f, 1726f, -1582f), false, -1114f), Struct_1(true, vec4<f32>(2006f, 1928f, -1312f, 674f), true, 1063f)), vec2<f32>(-169f, 208f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(384f, -1308f, 528f, 1000f), true, 821f), Struct_1(true, vec4<f32>(266f, -1264f, -2449f, 1726f), false, -294f), Struct_1(false, vec4<f32>(-1178f, 288f, -1258f, -3804f), false, 1000f)), vec2<f32>(-1299f, -1005f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(1657f, -1079f, 1759f, -1833f), true, 654f), Struct_1(true, vec4<f32>(-538f, -508f, 156f, 641f), true, 596f), Struct_1(true, vec4<f32>(-1000f, -344f, 196f, 365f), true, 138f)), vec2<f32>(620f, 324f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(1407f, 388f, -691f, 103f), false, -399f), Struct_1(false, vec4<f32>(-1058f, 815f, -1047f, -837f), true, -1232f), Struct_1(true, vec4<f32>(-1587f, -1185f, 575f, -772f), true, 1248f)), vec2<f32>(-835f, -1328f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-115f, -1000f, 112f, 504f), true, -1000f), Struct_1(true, vec4<f32>(1747f, -198f, -478f, 453f), true, 1030f), Struct_1(true, vec4<f32>(521f, 1153f, -1898f, 939f), false, 1031f)), vec2<f32>(-1532f, 1300f)), vec2<bool>(false, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-312f, 744f, -2334f, 717f), true, -1282f), Struct_1(false, vec4<f32>(1235f, 289f, -169f, -1000f), true, -1000f), Struct_1(true, vec4<f32>(-1000f, -285f, 1000f, 870f), false, -829f)), vec2<f32>(-620f, -1000f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(false, vec4<f32>(-1330f, 583f, -584f, -1628f), true, -112f), Struct_1(false, vec4<f32>(-877f, -1787f, -198f, -118f), true, 354f), Struct_1(false, vec4<f32>(489f, -3055f, -1300f, 1000f), true, 546f)), vec2<f32>(719f, -156f)), vec2<bool>(true, true)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(557f, -815f, 2038f, 294f), true, 233f), Struct_1(true, vec4<f32>(365f, 715f, 755f, 1000f), false, -618f), Struct_1(false, vec4<f32>(-605f, -428f, -541f, -1027f), true, -1231f)), vec2<f32>(1675f, -504f)), vec2<bool>(false, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(-728f, 839f, -228f, -1002f), false, 2086f), Struct_1(false, vec4<f32>(1000f, -1031f, 1655f, -857f), true, 1349f), Struct_1(false, vec4<f32>(-262f, 359f, -609f, 518f), true, -2608f)), vec2<f32>(1391f, 102f)), vec2<bool>(true, false)), Struct_5(Struct_4(Struct_2(Struct_1(true, vec4<f32>(1089f, 1507f, 659f, -262f), true, 459f), Struct_1(true, vec4<f32>(1351f, -1419f, -1000f, 1519f), true, 678f), Struct_1(true, vec4<f32>(-218f, -371f, 1000f, 156f), false, 1083f)), vec2<f32>(1000f, -2175f)), vec2<bool>(false, false)));

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    global2 = array<i32, 15>();
    var var_0 = min(~global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.d.x, 15u)] ^ 0i);
    global3 = array<Struct_5, 27>();
    global0 = array<i32, 20>();
    var var_1 = arg_0 <= _wgslsmith_div_f32(374f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-arg_0)));
    return min(~u_input.d.x, u_input.e);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_4(Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1049f, -264f, -455f, 786f))), !all(arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-360f, 250f)), all(arg_1.zzx)))), Struct_1(any(arg_1.wz) && !arg_1.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1878f, -1249f, 493f, 941f) * vec4<f32>(-314f, -574f, 1247f, 314f)), true, -531f), Struct_1(!(!arg_1.x), vec4<f32>(1f, 1f, 1f, 1f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(144f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1504f, -190f)))))));
    let var_1 = vec2<bool>(!all(vec2<bool>(arg_1.x, true)), select(var_0.a.a.a, var_0.a.c.a, false));
    let var_2 = global0[_wgslsmith_index_u32(~59266u, 20u)];
    global0 = array<i32, 20>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, 666f, var_0.a.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.d * -1089f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.c.d, -287f, 857f, var_0.b.x), vec4<f32>(var_0.b.x, 415f, var_0.b.x, 237f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 2051f, -545f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(978f, var_0.a.b.b.x, var_0.a.c.d, 2076f), vec4<f32>(330f, var_0.b.x, var_0.a.c.b.x, -1676f)))))))));
    return firstLeadingBit(global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 20u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(~u_input.e, _wgslsmith_add_u32(13585u, 1u) << (arg_1.a.x % 32u)) >> (~abs(82810u) % 32u)), 27u)];
    global4 = abs(firstLeadingBit(firstLeadingBit(u_input.e)));
    var var_1 = _wgslsmith_sub_u32(arg_1.a.x ^ arg_1.a.x, ~u_input.e);
    let var_2 = true;
    var var_3 = u_input.c;
    return all(!vec3<bool>(true, any(vec3<bool>(false, true, false)), select(true, true, !var_0.a.a.a.c)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global2 = array<i32, 15>();
    var var_0 = func_4(max(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), -u_input.c)), ~_wgslsmith_div_i32(-2147483647i, u_input.a) | ~countOneBits(global2[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.e), ~(~u_input.d.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-181f, 506f), vec2<f32>(-1066f, -631f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(129f, -1598f) + vec2<f32>(-1825f, 758f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(494f, 919f) * vec2<f32>(689f, 296f))), 652f), func_3(~func_2(_wgslsmith_f_op_f32(1190f - 1287f), ~global2[_wgslsmith_index_u32(u_input.e, 15u)]), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, false, true, true)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-911f)) >= -869f, vec4<f32>(_wgslsmith_f_op_f32(select(-1236f, 351f, true)), _wgslsmith_f_op_f32(514f * -1293f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(321f, -1492f)), false, _wgslsmith_f_op_f32(455f * _wgslsmith_f_op_f32(f32(-1f) * -1259f))), Struct_1(all(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(1274f, 973f), _wgslsmith_f_op_f32(step(-1483f, 693f)), -377f), true, _wgslsmith_f_op_f32(trunc(599f))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 268f, -2523f, 616f))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 0u), 15u)] < ~1i, _wgslsmith_f_op_f32(select(1245f, _wgslsmith_f_op_f32(f32(-1f) * -766f), 1i >= global2[_wgslsmith_index_u32(1u, 15u)])))));
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x, 15u)];
    global0 = array<i32, 20>();
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 27u)];
    return Struct_3(vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(31210u, 0u) & (u_input.d.x | u_input.e), arg_0.x, countOneBits(_wgslsmith_clamp_u32(u_input.e, 0u, 0u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-554f, var_2.a.a.b.b.x), _wgslsmith_f_op_f32(var_2.a.a.c.d * 2181f)), _wgslsmith_f_op_vec2_f32(round(var_2.a.a.b.b.yz)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.c.d)))));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> vec3<i32> {
    var var_0 = arg_0;
    global4 = 6339u;
    let var_1 = vec2<u32>(4294967295u, 10346u) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, ~23690u), firstLeadingBit(vec2<u32>(var_0.a.x, 0u) | vec2<u32>(0u, u_input.d.x)));
    let var_2 = u_input.d;
    global1 = array<vec4<u32>, 5>();
    return u_input.c.wyz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~u_input.d.xx), u_input.e <= u_input.e) >> (u_input.d % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_sub_u32(u_input.e & u_input.e, ~30978u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1902f, _wgslsmith_f_op_f32(min(620f, 1564f))), 695f, -1550f, _wgslsmith_div_f32(-819f, -1638f))), u_input.d.yy, u_input.d.xz, ~func_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.d.x, 4294967295u)), u_input.d.yy)).a.x);
}

