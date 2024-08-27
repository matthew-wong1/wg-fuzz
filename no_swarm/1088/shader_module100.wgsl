struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1000f, vec4<f32>(-1159f, -477f, -865f, -270f)), Struct_1(823f, vec4<f32>(651f, 1969f, 1061f, -1560f)), Struct_1(1304f, vec4<f32>(-785f, -772f, 895f, 939f)), Struct_1(684f, vec4<f32>(-1000f, 1000f, 1272f, -1000f)), Struct_1(229f, vec4<f32>(1000f, -1684f, -1330f, 1362f)), Struct_1(-605f, vec4<f32>(120f, -1540f, 867f, 1159f)), Struct_1(-482f, vec4<f32>(-1847f, 739f, -960f, 1000f)), Struct_1(282f, vec4<f32>(521f, -789f, -229f, -1615f)), Struct_1(-1745f, vec4<f32>(2260f, 1000f, 1102f, 1000f)), Struct_1(309f, vec4<f32>(487f, -1100f, -528f, 224f)), Struct_1(157f, vec4<f32>(505f, -1717f, -1616f, -262f)), Struct_1(146f, vec4<f32>(-402f, 1461f, 299f, -1000f)), Struct_1(197f, vec4<f32>(-176f, -1867f, -239f, -736f)), Struct_1(440f, vec4<f32>(-380f, -505f, 882f, -1180f)), Struct_1(-495f, vec4<f32>(611f, 165f, -1379f, -894f)), Struct_1(240f, vec4<f32>(933f, 1063f, 168f, -1000f)), Struct_1(-1250f, vec4<f32>(262f, 1000f, -997f, -1142f)), Struct_1(768f, vec4<f32>(779f, -229f, -2565f, 167f)), Struct_1(1636f, vec4<f32>(1186f, -216f, -2000f, 1025f)), Struct_1(1080f, vec4<f32>(747f, 675f, -382f, -652f)), Struct_1(463f, vec4<f32>(172f, -388f, 1000f, 372f)), Struct_1(-1144f, vec4<f32>(799f, -255f, 1000f, -380f)), Struct_1(-2081f, vec4<f32>(617f, 625f, -544f, 729f)), Struct_1(-1123f, vec4<f32>(-1658f, -1000f, -123f, 1000f)), Struct_1(-1491f, vec4<f32>(839f, -982f, -1034f, -1335f)), Struct_1(-878f, vec4<f32>(-759f, -1234f, 427f, -918f)), Struct_1(-1824f, vec4<f32>(580f, -1000f, -500f, 446f)), Struct_1(-159f, vec4<f32>(1501f, 616f, -151f, -672f)), Struct_1(-739f, vec4<f32>(422f, -1743f, -434f, 709f)));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<u32>(750u, 982u), vec3<u32>(12516u, 84750u, 40118u), -104f, Struct_1(-911f, vec4<f32>(1000f, 1086f, 671f, 1000f))), Struct_2(vec2<u32>(49721u, 4294967295u), vec3<u32>(26792u, 23921u, 1u), 968f, Struct_1(-429f, vec4<f32>(707f, 496f, -1942f, -1009f))), Struct_2(vec2<u32>(9729u, 5040u), vec3<u32>(4294967295u, 7287u, 21347u), 1352f, Struct_1(2487f, vec4<f32>(-387f, 1024f, -759f, 670f))), Struct_2(vec2<u32>(51120u, 1u), vec3<u32>(35118u, 9993u, 61835u), -500f, Struct_1(-1301f, vec4<f32>(529f, 387f, -242f, 455f))), Struct_2(vec2<u32>(14094u, 57106u), vec3<u32>(0u, 4294967295u, 11933u), -1212f, Struct_1(-642f, vec4<f32>(-993f, 1880f, 1514f, 2841f))), Struct_2(vec2<u32>(72981u, 0u), vec3<u32>(0u, 1u, 55365u), 1059f, Struct_1(258f, vec4<f32>(-1076f, -901f, 1612f, 697f))), Struct_2(vec2<u32>(1u, 1u), vec3<u32>(0u, 0u, 24094u), -842f, Struct_1(1237f, vec4<f32>(-1000f, -487f, 1467f, -234f))), Struct_2(vec2<u32>(4294967295u, 32636u), vec3<u32>(1u, 11842u, 22968u), 1027f, Struct_1(1000f, vec4<f32>(733f, 1289f, 178f, 1458f))), Struct_2(vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 1u, 0u), -1779f, Struct_1(968f, vec4<f32>(923f, -232f, 2876f, 1230f))), Struct_2(vec2<u32>(33273u, 4382u), vec3<u32>(36537u, 39823u, 0u), -1696f, Struct_1(-439f, vec4<f32>(220f, 1000f, -1031f, -221f))), Struct_2(vec2<u32>(25421u, 1u), vec3<u32>(4294967295u, 30750u, 24014u), 784f, Struct_1(1618f, vec4<f32>(1535f, 734f, 461f, -347f))), Struct_2(vec2<u32>(0u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), -370f, Struct_1(-1804f, vec4<f32>(-738f, -2663f, -921f, -546f))), Struct_2(vec2<u32>(17849u, 4294967295u), vec3<u32>(61875u, 1u, 84123u), 524f, Struct_1(-1000f, vec4<f32>(-226f, -1021f, -376f, -589f))), Struct_2(vec2<u32>(27303u, 0u), vec3<u32>(11800u, 4294967295u, 27369u), -1000f, Struct_1(1105f, vec4<f32>(-800f, 1000f, 717f, 906f))), Struct_2(vec2<u32>(86121u, 15755u), vec3<u32>(63644u, 25810u, 7473u), 963f, Struct_1(1071f, vec4<f32>(808f, 1067f, -1000f, -670f))), Struct_2(vec2<u32>(22701u, 18468u), vec3<u32>(4096u, 4294967295u, 52449u), -620f, Struct_1(-1396f, vec4<f32>(710f, 650f, -1000f, 1315f))), Struct_2(vec2<u32>(64047u, 0u), vec3<u32>(0u, 50298u, 4294967295u), -965f, Struct_1(613f, vec4<f32>(-393f, 1000f, -313f, -1580f))), Struct_2(vec2<u32>(22024u, 0u), vec3<u32>(4294967295u, 73330u, 8100u), 941f, Struct_1(-1236f, vec4<f32>(1008f, 400f, 1067f, -1043f))), Struct_2(vec2<u32>(4294967295u, 38097u), vec3<u32>(4294967295u, 47321u, 0u), -1104f, Struct_1(512f, vec4<f32>(598f, -1000f, -1495f, -1000f))), Struct_2(vec2<u32>(0u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), -768f, Struct_1(-882f, vec4<f32>(178f, -529f, 454f, -254f))), Struct_2(vec2<u32>(0u, 0u), vec3<u32>(1u, 8107u, 4879u), -1064f, Struct_1(-1000f, vec4<f32>(100f, 465f, 589f, -316f))), Struct_2(vec2<u32>(4294967295u, 19235u), vec3<u32>(1u, 49297u, 4294967295u), -840f, Struct_1(1281f, vec4<f32>(465f, -1000f, 857f, -1000f))), Struct_2(vec2<u32>(60572u, 1u), vec3<u32>(4294967295u, 18130u, 7467u), 697f, Struct_1(435f, vec4<f32>(769f, -330f, -355f, -1760f))), Struct_2(vec2<u32>(4294967295u, 7828u), vec3<u32>(0u, 0u, 11354u), -253f, Struct_1(473f, vec4<f32>(-1000f, 1000f, 453f, 1000f))), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(0u, 35749u, 1u), 1306f, Struct_1(552f, vec4<f32>(-1557f, 495f, -1000f, -484f))), Struct_2(vec2<u32>(1u, 1u), vec3<u32>(4294967295u, 0u, 0u), 622f, Struct_1(-402f, vec4<f32>(1388f, 1645f, -1000f, -178f))), Struct_2(vec2<u32>(0u, 32968u), vec3<u32>(7885u, 1u, 4294967295u), -194f, Struct_1(499f, vec4<f32>(1000f, 1587f, 1223f, 379f))), Struct_2(vec2<u32>(67075u, 1u), vec3<u32>(95713u, 1u, 23298u), -1362f, Struct_1(691f, vec4<f32>(1016f, -785f, 147f, -1171f))), Struct_2(vec2<u32>(0u, 74678u), vec3<u32>(4294967295u, 3651u, 8680u), -617f, Struct_1(-707f, vec4<f32>(-1000f, -1135f, -131f, 998f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(11613u), 29u)];
    var var_1 = Struct_2(u_input.a.yx, vec3<u32>(u_input.a.x, ~min(~u_input.c.x, min(u_input.c.x, u_input.c.x)), ~(0u ^ u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d.a)), 633f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1471f, var_0.c, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(374f, -447f, arg_0.b.x, -1050f)) * var_0.d.b))));
    let var_2 = ~0u;
    global1 = array<Struct_1, 29>();
    let var_3 = !(!arg_1.x);
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(min(~(~u_input.a.x), 29786u), 29u)];
    global2 = array<Struct_2, 29>();
    global1 = array<Struct_1, 29>();
    var var_1 = vec2<bool>(!(select(true, true, all(vec2<bool>(true, true))) | true), func_3(arg_1, select(vec4<bool>(false, all(vec3<bool>(false, false, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_1.a, u_input.d));
    let var_2 = firstTrailingBit(~var_0.a) | firstLeadingBit(~(~min(vec2<u32>(77406u, 1u), vec2<u32>(33677u, var_0.a.x))));
    return var_1.x;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = select(vec4<bool>(false, true, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(6895u, 28u)], -299f)), _wgslsmith_div_f32(1881f, global0[_wgslsmith_index_u32(arg_0, 28u)]))), Struct_1(global0[_wgslsmith_index_u32(7761u, 28u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(29451u, 28u)], 230f, global0[_wgslsmith_index_u32(46772u, 28u)], global0[_wgslsmith_index_u32(7273u, 28u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], -618f, 933f, global0[_wgslsmith_index_u32(1u, 28u)]))))), !any(vec2<bool>(true, true))), vec4<bool>(all(vec4<bool>(func_3(Struct_1(2614f, vec4<f32>(1000f, 1065f, 1720f, 498f)), vec4<bool>(true, true, false, false), 874f, u_input.b.x), true, true, true)), !any(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true)) || (-474f > global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), all(vec3<bool>(false, true, true))), any(vec2<bool>(!all(vec2<bool>(false, false)), true)));
    let var_1 = 1397u << (reverseBits(~_wgslsmith_mod_u32(1u, u_input.a.x)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1704f, 1367f, global0[_wgslsmith_index_u32(~var_1, 28u)], _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(29919u, 28u)]))), vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] * -652f), _wgslsmith_f_op_f32(518f - global0[_wgslsmith_index_u32(1u, 28u)]))), global0[_wgslsmith_index_u32(45068u, 28u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(select(var_1, arg_0, false), 28u)], -2299f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 1u, arg_0), 28u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1170f, -215f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1065f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 28u)] + var_2.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.x, 332f), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], !var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] - 527f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x)))))));
    let var_3 = Struct_2(u_input.a.xy, u_input.a | ~firstLeadingBit(max(u_input.a, u_input.a)), _wgslsmith_f_op_f32(abs(var_2.x)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a.x, 30964u)), countOneBits(u_input.c.x))), 29u)]);
    return _wgslsmith_div_i32(firstLeadingBit(u_input.b.x), abs(27869i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, reverseBits(4294967295u)), ~countOneBits(u_input.a & vec3<u32>(u_input.a.x, 1u, 4294967295u))), 29u)];
    var var_1 = func_1(~u_input.c.x) ^ _wgslsmith_mod_i32(~0i, ~0i);
    let var_2 = _wgslsmith_f_op_f32(-var_0.c) > _wgslsmith_f_op_f32(f32(-1f) * -1039f);
    let var_3 = !(u_input.b.x != -36745i) && var_2;
    global0 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] * -616f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 28u)])))), var_0.d.b.x));
}

