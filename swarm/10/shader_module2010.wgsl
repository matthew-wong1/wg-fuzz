struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, false, false, true, false, false, false, true, false, true, true);

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(Struct_3(1198f, Struct_1(vec4<f32>(1000f, 1708f, -567f, 650f), 1000f, -23377i, vec3<u32>(3391u, 4294967295u, 2553u), vec2<f32>(555f, -2047f)), false, Struct_2(-1000f), vec2<u32>(1u, 4294967295u)), true, Struct_1(vec4<f32>(1923f, -1000f, 1097f, -762f), 1575f, 27248i, vec3<u32>(27144u, 20826u, 1u), vec2<f32>(609f, -225f))), Struct_4(Struct_3(955f, Struct_1(vec4<f32>(-1108f, -1000f, -2070f, -280f), 2092f, i32(-2147483648), vec3<u32>(4294967295u, 1u, 32459u), vec2<f32>(-1641f, 1421f)), false, Struct_2(758f), vec2<u32>(4294967295u, 4294967295u)), true, Struct_1(vec4<f32>(290f, -589f, -2350f, 544f), -1976f, 0i, vec3<u32>(66767u, 1u, 0u), vec2<f32>(333f, -321f))), Struct_4(Struct_3(819f, Struct_1(vec4<f32>(815f, -1150f, 2052f, 1027f), 959f, 2147483647i, vec3<u32>(70393u, 69345u, 13168u), vec2<f32>(1433f, -938f)), true, Struct_2(1000f), vec2<u32>(0u, 0u)), false, Struct_1(vec4<f32>(960f, -278f, 547f, -1989f), -255f, 0i, vec3<u32>(86295u, 0u, 4294967295u), vec2<f32>(858f, 678f))), Struct_4(Struct_3(-796f, Struct_1(vec4<f32>(-1431f, -372f, -1000f, -1255f), 1000f, i32(-2147483648), vec3<u32>(68811u, 0u, 7742u), vec2<f32>(-1023f, 1099f)), false, Struct_2(956f), vec2<u32>(0u, 4294967295u)), false, Struct_1(vec4<f32>(-934f, 2245f, 302f, 1000f), -1173f, 0i, vec3<u32>(31362u, 0u, 28240u), vec2<f32>(-1642f, 153f))), Struct_4(Struct_3(-1448f, Struct_1(vec4<f32>(1086f, -965f, -1646f, 458f), 1205f, -1i, vec3<u32>(1u, 4294967295u, 0u), vec2<f32>(-1145f, 575f)), false, Struct_2(-1382f), vec2<u32>(0u, 72031u)), true, Struct_1(vec4<f32>(-116f, -2324f, -706f, -1702f), -1422f, -1i, vec3<u32>(0u, 0u, 31637u), vec2<f32>(-791f, 1297f))), Struct_4(Struct_3(1087f, Struct_1(vec4<f32>(-1000f, -1000f, -2050f, 1424f), -705f, 2147483647i, vec3<u32>(1u, 0u, 120276u), vec2<f32>(-688f, 1454f)), false, Struct_2(666f), vec2<u32>(1u, 4294967295u)), true, Struct_1(vec4<f32>(-951f, -1057f, 134f, -1259f), 134f, 0i, vec3<u32>(4294967295u, 0u, 4173u), vec2<f32>(1470f, 1000f))), Struct_4(Struct_3(990f, Struct_1(vec4<f32>(-535f, 2167f, -960f, 740f), -402f, -41901i, vec3<u32>(1u, 1u, 16029u), vec2<f32>(-467f, 965f)), true, Struct_2(-233f), vec2<u32>(39966u, 1u)), false, Struct_1(vec4<f32>(740f, -263f, 285f, 932f), 945f, 1i, vec3<u32>(0u, 56045u, 78604u), vec2<f32>(-1360f, -1567f))), Struct_4(Struct_3(-265f, Struct_1(vec4<f32>(-234f, -654f, -396f, -917f), 683f, 2147483647i, vec3<u32>(0u, 68944u, 4294967295u), vec2<f32>(-450f, 192f)), true, Struct_2(343f), vec2<u32>(0u, 4294967295u)), true, Struct_1(vec4<f32>(503f, -2531f, -2338f, 2726f), 1000f, -1i, vec3<u32>(1u, 1u, 1u), vec2<f32>(-143f, 760f))), Struct_4(Struct_3(-938f, Struct_1(vec4<f32>(-1252f, -1000f, -2500f, 729f), 1000f, 2147483647i, vec3<u32>(4294967295u, 0u, 4361u), vec2<f32>(-1226f, -211f)), true, Struct_2(-257f), vec2<u32>(1u, 2114u)), false, Struct_1(vec4<f32>(-612f, 572f, 1151f, 949f), -744f, 20759i, vec3<u32>(15858u, 19593u, 0u), vec2<f32>(-1696f, -1093f))), Struct_4(Struct_3(519f, Struct_1(vec4<f32>(1525f, 768f, -942f, 430f), 1788f, 2147483647i, vec3<u32>(39281u, 0u, 40994u), vec2<f32>(-115f, -1599f)), true, Struct_2(532f), vec2<u32>(5183u, 11157u)), true, Struct_1(vec4<f32>(327f, -1851f, 1586f, -1868f), 1000f, 2147483647i, vec3<u32>(0u, 32371u, 1u), vec2<f32>(107f, 924f))), Struct_4(Struct_3(683f, Struct_1(vec4<f32>(1000f, 551f, -268f, -1175f), 991f, -35968i, vec3<u32>(16555u, 0u, 70409u), vec2<f32>(430f, 1050f)), false, Struct_2(-806f), vec2<u32>(1u, 0u)), false, Struct_1(vec4<f32>(1043f, 635f, -414f, 903f), -712f, -6778i, vec3<u32>(5175u, 5263u, 0u), vec2<f32>(1339f, 127f))), Struct_4(Struct_3(-2216f, Struct_1(vec4<f32>(-534f, -2599f, -372f, -1277f), 1251f, -11173i, vec3<u32>(2010u, 0u, 1u), vec2<f32>(233f, -755f)), false, Struct_2(1756f), vec2<u32>(1u, 25964u)), true, Struct_1(vec4<f32>(-1000f, 1501f, -715f, -803f), -1968f, i32(-2147483648), vec3<u32>(4294967295u, 1u, 723u), vec2<f32>(177f, 651f))), Struct_4(Struct_3(376f, Struct_1(vec4<f32>(1762f, 622f, -1000f, 728f), 238f, 2147483647i, vec3<u32>(4294967295u, 1496u, 1u), vec2<f32>(916f, 197f)), true, Struct_2(169f), vec2<u32>(92443u, 1u)), true, Struct_1(vec4<f32>(858f, -1360f, -1331f, -1000f), -444f, 1i, vec3<u32>(85215u, 1u, 0u), vec2<f32>(-217f, 749f))), Struct_4(Struct_3(231f, Struct_1(vec4<f32>(1000f, 946f, -1872f, -524f), 506f, 2147483647i, vec3<u32>(10361u, 0u, 1u), vec2<f32>(137f, 1323f)), false, Struct_2(-1450f), vec2<u32>(0u, 49594u)), true, Struct_1(vec4<f32>(768f, 597f, -497f, 411f), -388f, -14913i, vec3<u32>(0u, 1u, 1u), vec2<f32>(-385f, 1375f))), Struct_4(Struct_3(2151f, Struct_1(vec4<f32>(1893f, 1313f, 243f, 397f), 786f, 30218i, vec3<u32>(18449u, 32355u, 45445u), vec2<f32>(-737f, -1126f)), true, Struct_2(-1715f), vec2<u32>(23283u, 23841u)), true, Struct_1(vec4<f32>(685f, -463f, -1000f, -911f), -117f, i32(-2147483648), vec3<u32>(1u, 1u, 43044u), vec2<f32>(160f, -1880f))), Struct_4(Struct_3(-196f, Struct_1(vec4<f32>(-522f, 492f, 409f, 1184f), 1435f, -31323i, vec3<u32>(0u, 1u, 54358u), vec2<f32>(-669f, -826f)), false, Struct_2(-430f), vec2<u32>(4294967295u, 5614u)), true, Struct_1(vec4<f32>(-1943f, 1340f, 744f, 266f), 177f, -420i, vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(-158f, 877f))), Struct_4(Struct_3(-1204f, Struct_1(vec4<f32>(-434f, -2337f, 1791f, 1482f), -261f, i32(-2147483648), vec3<u32>(15918u, 15908u, 1u), vec2<f32>(540f, 1020f)), true, Struct_2(1176f), vec2<u32>(0u, 29778u)), true, Struct_1(vec4<f32>(233f, -1383f, -523f, 406f), -204f, -11138i, vec3<u32>(59969u, 34333u, 4294967295u), vec2<f32>(1509f, -250f))), Struct_4(Struct_3(1113f, Struct_1(vec4<f32>(-616f, -615f, 1325f, -532f), -1123f, -8863i, vec3<u32>(4294967295u, 7485u, 11852u), vec2<f32>(-1898f, -479f)), true, Struct_2(-1420f), vec2<u32>(4294967295u, 4294967295u)), false, Struct_1(vec4<f32>(187f, -391f, 621f, 732f), 639f, 2147483647i, vec3<u32>(5342u, 54856u, 1u), vec2<f32>(-212f, -1350f))), Struct_4(Struct_3(1408f, Struct_1(vec4<f32>(-631f, 1000f, 1134f, 1306f), 961f, -14898i, vec3<u32>(4294967295u, 12064u, 78697u), vec2<f32>(-259f, 725f)), true, Struct_2(-2475f), vec2<u32>(23176u, 15870u)), true, Struct_1(vec4<f32>(-778f, -273f, -521f, -865f), 2767f, -25757i, vec3<u32>(10235u, 14957u, 11069u), vec2<f32>(685f, 772f))), Struct_4(Struct_3(-1000f, Struct_1(vec4<f32>(-554f, -2299f, 1305f, 1000f), -733f, -9927i, vec3<u32>(4294967295u, 10789u, 30727u), vec2<f32>(925f, -1000f)), true, Struct_2(145f), vec2<u32>(41228u, 14733u)), false, Struct_1(vec4<f32>(-359f, 613f, -1727f, -403f), 1000f, -3715i, vec3<u32>(1u, 0u, 4294967295u), vec2<f32>(414f, 782f))), Struct_4(Struct_3(-1000f, Struct_1(vec4<f32>(-866f, 547f, 874f, 461f), 381f, -27395i, vec3<u32>(4294967295u, 6416u, 26657u), vec2<f32>(1000f, 261f)), true, Struct_2(534f), vec2<u32>(75860u, 4294967295u)), true, Struct_1(vec4<f32>(-441f, 243f, -1388f, -934f), -1412f, 0i, vec3<u32>(13346u, 0u, 33302u), vec2<f32>(-850f, 334f))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    var var_0 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, u_input.d, -2693i) & vec3<i32>(u_input.d, u_input.d, -10895i), ~vec3<i32>(-34542i, u_input.d, u_input.a), false), vec3<i32>(0i >> (0u % 32u), _wgslsmith_div_i32(38170i, u_input.b), _wgslsmith_div_i32(u_input.a, -1i))), -(~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.d, u_input.b, -67980i)), vec3<i32>(5258i, u_input.b, -2147483647i) << (vec3<u32>(0u, 1u, u_input.c.x) % vec3<u32>(32u)), ~vec3<i32>(1i, u_input.b, 2147483647i))), max(min(~(-vec3<i32>(u_input.d, u_input.d, 1i)), vec3<i32>(i32(-1i) * -20237i, _wgslsmith_div_i32(u_input.a, -37063i), 45659i)), ~(-vec3<i32>(46260i, u_input.a, u_input.d)) & _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(14334i, 0i, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, 12849i), -vec3<i32>(-1i, u_input.a, u_input.b))));
    var var_1 = vec2<bool>(!(!select(all(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 12u)], true)), global0[_wgslsmith_index_u32(~18447u, 12u)], !global0[_wgslsmith_index_u32(1u, 12u)])), global0[_wgslsmith_index_u32(12912u, 12u)]);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1165f, 436f))))), _wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1248f, -362f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(547f + -372f)), _wgslsmith_f_op_f32(-1439f - -503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1560f * -772f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-213f, 557f, -207f, 559f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-139f, -478f, 459f, -632f), vec4<f32>(-587f, 287f, -2472f, 1000f))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(816f + 1151f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -327f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1000f, -1737f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), 913f, u_input.d, min(u_input.c, abs(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 18495u, 17523u))) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(1u, u_input.c.x)), min(1u, 0u), 1u >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(max(arg_0.a, arg_0.a)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(arg_0.a, 1054f))))), select(vec2<bool>(select(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], arg_1), true), !select(vec2<bool>(true, false), vec2<bool>(arg_1, false), global0[_wgslsmith_index_u32(83752u, 12u)]), select(select(vec2<bool>(true, arg_1), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], true)), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 12u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true), vec2<bool>(arg_1, false), vec2<bool>(true, true)))))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(27138u, ~var_0.d.x)), 21u)];
    var var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)) != _wgslsmith_f_op_f32(-1141f - -892f));
    let var_3 = ~max(-var_0.c, reverseBits(max(var_1.a.b.c, var_0.c >> (1u % 32u))));
    var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~var_0.d.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(4294967295u, 62673u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 0u, u_input.c.x), u_input.c))), 1u), 21u)];
    return Struct_1(vec4<f32>(var_1.c.e.x, var_1.c.e.x, var_0.b, 511f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), firstTrailingBit(u_input.d), vec3<u32>(u_input.c.x ^ 38012u, firstLeadingBit(~min(var_0.d.x, 1u)), var_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(511f, var_0.a.x), var_0.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, var_0.e.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, -555f) + var_1.a.b.a.ww))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -252f)) * 309f)));
    let var_1 = arg_0;
    var var_2 = true & !global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(arg_0.d.x)), 12u)];
    let var_3 = global1[_wgslsmith_index_u32(u_input.c.x, 21u)];
    return var_1.d.xx | var_1.d.xx;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>) -> i32 {
    global0 = array<bool, 12>();
    var var_0 = global1[_wgslsmith_index_u32(33252u, 21u)];
    let var_1 = func_2(var_0.a.d, 45745i < var_0.a.b.c);
    let var_2 = -415f;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 2147483647i, arg_0.x, _wgslsmith_sub_i32(-1i, var_0.a.b.c) >> (1u % 32u)), ~(-vec4<i32>(1i, arg_0.x, 2147483647i, -1i) << (min(vec4<u32>(arg_1.x, 117209u, 1u, u_input.c.x), vec4<u32>(4294967295u, 1u, 57737u, arg_1.x)) % vec4<u32>(32u)))) ^ u_input.b;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1276f, -1083f))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-1261f, -335f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-837f, 280f), vec2<f32>(-111f, 402f)))))));
    var var_1 = arg_0.x & false;
    let var_2 = ~select(firstTrailingBit(abs(u_input.c)), ~u_input.c, global0[_wgslsmith_index_u32(1u, 12u)]);
    global1 = array<Struct_4, 21>();
    global1 = array<Struct_4, 21>();
    return _wgslsmith_add_i32(-u_input.d << (1u % 32u), 10364i) & func_5(vec2<i32>(u_input.d, -2147483647i), reverseBits(var_2.xz) ^ func_4(func_2(Struct_2(var_0.x), true), _wgslsmith_f_op_f32(step(2072f, -215f)), !arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(8750i, u_input.d) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mod_i32(u_input.d, -8291i), func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]))));
    global0 = array<bool, 12>();
    var var_1 = Struct_2(1f);
    var var_2 = select(true, false, global0[_wgslsmith_index_u32(2019u, 12u)]);
    global1 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-534f, var_1.a, var_1.a) + vec3<f32>(1060f, var_1.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-579f, -754f, var_1.a)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-959f, var_1.a, var_1.a), vec3<f32>(-1000f, var_1.a, var_1.a))))))));
}

