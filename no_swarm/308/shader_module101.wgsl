struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-430f, -876f, -218f), vec3<bool>(false, true, false), -80383i, true), Struct_1(vec3<f32>(-935f, 1207f, 1000f), vec3<bool>(false, true, true), -10302i, false), Struct_1(vec3<f32>(-1135f, 443f, 491f), vec3<bool>(true, true, true), 1i, false), Struct_1(vec3<f32>(899f, -292f, 987f), vec3<bool>(true, true, false), 1i, true), Struct_1(vec3<f32>(-1037f, -830f, 1083f), vec3<bool>(false, false, false), 1i, false), Struct_1(vec3<f32>(879f, -807f, -1000f), vec3<bool>(true, true, true), 35766i, false), Struct_1(vec3<f32>(-386f, 212f, -724f), vec3<bool>(true, false, false), 9514i, false), Struct_1(vec3<f32>(-1774f, 167f, 107f), vec3<bool>(false, true, false), 16761i, true), Struct_1(vec3<f32>(-141f, -1205f, -1426f), vec3<bool>(true, true, true), 2147483647i, false), Struct_1(vec3<f32>(-646f, -1073f, -210f), vec3<bool>(false, true, true), 0i, true), Struct_1(vec3<f32>(797f, 734f, -377f), vec3<bool>(true, true, true), 11607i, true), Struct_1(vec3<f32>(-1279f, -1108f, 192f), vec3<bool>(true, true, true), 8787i, false), Struct_1(vec3<f32>(-2026f, 908f, -389f), vec3<bool>(false, true, false), 6859i, true), Struct_1(vec3<f32>(620f, -1692f, 1000f), vec3<bool>(true, true, true), -18550i, false), Struct_1(vec3<f32>(1000f, -1451f, -1429f), vec3<bool>(true, true, true), 1i, true), Struct_1(vec3<f32>(474f, -568f, -1000f), vec3<bool>(false, true, false), 2147483647i, true), Struct_1(vec3<f32>(2208f, -2548f, -768f), vec3<bool>(true, false, true), 59440i, true), Struct_1(vec3<f32>(457f, 1000f, 270f), vec3<bool>(true, false, false), 1i, true), Struct_1(vec3<f32>(-881f, -1139f, -1000f), vec3<bool>(false, true, true), -1i, false), Struct_1(vec3<f32>(-1059f, -2371f, 155f), vec3<bool>(true, true, false), 44620i, true), Struct_1(vec3<f32>(1000f, -828f, 1215f), vec3<bool>(true, true, true), -1i, true), Struct_1(vec3<f32>(147f, -1000f, 827f), vec3<bool>(false, true, false), -25076i, false), Struct_1(vec3<f32>(-1803f, 1000f, 1418f), vec3<bool>(true, false, true), 31945i, true), Struct_1(vec3<f32>(-1635f, -1230f, 974f), vec3<bool>(false, false, true), 13264i, false), Struct_1(vec3<f32>(691f, -1260f, -1000f), vec3<bool>(true, false, false), -26203i, false), Struct_1(vec3<f32>(605f, 146f, 1331f), vec3<bool>(true, false, true), i32(-2147483648), false));

var<private> global1: array<u32, 20> = array<u32, 20>(1u, 70421u, 18020u, 39906u, 0u, 4294967295u, 1u, 61618u, 1u, 0u, 4294967295u, 55259u, 61675u, 2303u, 59239u, 5028u, 38054u, 4757u, 57505u, 57697u);

var<private> global2: array<Struct_5, 32>;

var<private> global3: array<i32, 32> = array<i32, 32>(0i, -1i, -1i, 0i, 1i, -6347i, -1i, -4068i, -21160i, -1i, -1i, -3149i, -10190i, 0i, 1i, 0i, -1i, -52686i, -1i, -13367i, -1i, 1i, 2147483647i, -40355i, 0i, -32967i, -1i, -1i, 1i, -6062i, 0i, 1i);

var<private> global4: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec3<f32>(-528f, -888f, -794f), vec3<bool>(false, false, false), -19687i, true), Struct_1(vec3<f32>(-637f, 1234f, 137f), vec3<bool>(false, false, false), 2392i, false), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 34336i), Struct_1(vec3<f32>(-1000f, 140f, -1413f), vec3<bool>(false, true, false), -25676i, true)), Struct_2(Struct_1(vec3<f32>(-762f, 470f, 354f), vec3<bool>(true, true, false), 1i, true), Struct_1(vec3<f32>(-505f, 1000f, -328f), vec3<bool>(false, false, false), -1i, false), vec4<i32>(1i, 0i, 1i, -31297i), Struct_1(vec3<f32>(-493f, 876f, 675f), vec3<bool>(true, true, false), -21839i, true)), Struct_2(Struct_1(vec3<f32>(-1156f, 1000f, 897f), vec3<bool>(false, true, false), 1i, false), Struct_1(vec3<f32>(-1098f, -639f, -958f), vec3<bool>(true, true, false), 39882i, false), vec4<i32>(2147483647i, -12130i, -11242i, 0i), Struct_1(vec3<f32>(-1000f, 591f, -543f), vec3<bool>(true, false, true), i32(-2147483648), false)), Struct_2(Struct_1(vec3<f32>(-1324f, -923f, 658f), vec3<bool>(false, true, false), -32168i, true), Struct_1(vec3<f32>(1652f, 573f, 541f), vec3<bool>(false, true, true), -1i, true), vec4<i32>(-80119i, -44954i, 52920i, 1i), Struct_1(vec3<f32>(805f, -238f, -236f), vec3<bool>(false, true, true), 1i, true)), Struct_2(Struct_1(vec3<f32>(-596f, -640f, -607f), vec3<bool>(true, false, false), 639i, true), Struct_1(vec3<f32>(2315f, -425f, 897f), vec3<bool>(true, false, true), 2147483647i, true), vec4<i32>(i32(-2147483648), -4474i, -26618i, 36802i), Struct_1(vec3<f32>(-1000f, -1267f, 1933f), vec3<bool>(true, true, true), -16168i, false)), Struct_2(Struct_1(vec3<f32>(2398f, -1828f, 1269f), vec3<bool>(true, false, false), 6934i, true), Struct_1(vec3<f32>(-444f, 1895f, -2012f), vec3<bool>(false, false, true), 0i, true), vec4<i32>(-51597i, 2147483647i, -3708i, 0i), Struct_1(vec3<f32>(625f, -598f, -1082f), vec3<bool>(true, true, false), -1i, false)), Struct_2(Struct_1(vec3<f32>(-801f, 745f, -284f), vec3<bool>(true, true, true), -1i, true), Struct_1(vec3<f32>(-488f, -835f, 470f), vec3<bool>(true, true, false), -73380i, false), vec4<i32>(2147483647i, 2147483647i, 10922i, 65642i), Struct_1(vec3<f32>(-936f, -1294f, -229f), vec3<bool>(false, true, false), i32(-2147483648), false)), Struct_2(Struct_1(vec3<f32>(-132f, -885f, 776f), vec3<bool>(false, true, true), 0i, false), Struct_1(vec3<f32>(1229f, -710f, -2356f), vec3<bool>(true, true, true), 1i, true), vec4<i32>(-9480i, 0i, 8725i, -46194i), Struct_1(vec3<f32>(1812f, 442f, -1000f), vec3<bool>(true, true, false), -39618i, false)), Struct_2(Struct_1(vec3<f32>(495f, -206f, 404f), vec3<bool>(true, false, true), 2147483647i, true), Struct_1(vec3<f32>(757f, 416f, 634f), vec3<bool>(false, true, true), 1i, false), vec4<i32>(1i, -9240i, 1i, 22389i), Struct_1(vec3<f32>(689f, 228f, -355f), vec3<bool>(true, false, false), -48847i, false)), Struct_2(Struct_1(vec3<f32>(-854f, -731f, 1109f), vec3<bool>(false, false, true), 1i, true), Struct_1(vec3<f32>(852f, 1458f, -854f), vec3<bool>(true, true, false), i32(-2147483648), true), vec4<i32>(31657i, 8496i, 42840i, 2459i), Struct_1(vec3<f32>(-745f, -398f, 584f), vec3<bool>(true, true, true), 0i, false)), Struct_2(Struct_1(vec3<f32>(650f, -1196f, 500f), vec3<bool>(false, true, false), 0i, false), Struct_1(vec3<f32>(-394f, 156f, 865f), vec3<bool>(false, false, true), -1i, false), vec4<i32>(26573i, -23723i, i32(-2147483648), 28199i), Struct_1(vec3<f32>(-774f, -105f, -457f), vec3<bool>(false, false, true), -1i, true)), Struct_2(Struct_1(vec3<f32>(-1785f, 2112f, -391f), vec3<bool>(false, true, true), 6874i, true), Struct_1(vec3<f32>(-915f, -161f, 465f), vec3<bool>(false, false, true), -24741i, false), vec4<i32>(13861i, 79248i, 2217i, 8939i), Struct_1(vec3<f32>(397f, -401f, -1096f), vec3<bool>(true, true, true), 1i, false)), Struct_2(Struct_1(vec3<f32>(-302f, -665f, 1586f), vec3<bool>(true, false, false), -1i, true), Struct_1(vec3<f32>(1000f, 722f, -468f), vec3<bool>(true, false, false), 23016i, true), vec4<i32>(1i, -19017i, i32(-2147483648), 1i), Struct_1(vec3<f32>(-1000f, 312f, 264f), vec3<bool>(true, false, false), 0i, true)), Struct_2(Struct_1(vec3<f32>(800f, -1039f, 471f), vec3<bool>(true, true, true), 2147483647i, true), Struct_1(vec3<f32>(-690f, 2170f, -1754f), vec3<bool>(false, false, false), -1i, false), vec4<i32>(0i, 8871i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(-515f, -513f, 1206f), vec3<bool>(true, true, false), 12387i, true)), Struct_2(Struct_1(vec3<f32>(-548f, 911f, 464f), vec3<bool>(false, false, true), 2147483647i, false), Struct_1(vec3<f32>(-1836f, 1331f, -1012f), vec3<bool>(true, false, true), 202i, false), vec4<i32>(-17137i, 2147483647i, 1i, 10712i), Struct_1(vec3<f32>(-100f, -706f, -680f), vec3<bool>(true, true, true), 23561i, true)), Struct_2(Struct_1(vec3<f32>(1743f, -505f, 1000f), vec3<bool>(true, false, true), i32(-2147483648), false), Struct_1(vec3<f32>(-757f, -1502f, 775f), vec3<bool>(false, true, false), 10177i, false), vec4<i32>(-5528i, 0i, 55446i, 0i), Struct_1(vec3<f32>(-346f, 861f, 1090f), vec3<bool>(true, true, true), 61762i, false)), Struct_2(Struct_1(vec3<f32>(-646f, 673f, -640f), vec3<bool>(false, true, true), -686i, false), Struct_1(vec3<f32>(1124f, -1378f, 304f), vec3<bool>(false, false, false), 0i, false), vec4<i32>(i32(-2147483648), 0i, 1i, 38968i), Struct_1(vec3<f32>(817f, -604f, -1906f), vec3<bool>(false, true, true), -661i, false)), Struct_2(Struct_1(vec3<f32>(290f, -856f, -1860f), vec3<bool>(true, true, true), 2147483647i, true), Struct_1(vec3<f32>(-186f, -809f, -826f), vec3<bool>(false, false, true), -39684i, false), vec4<i32>(-30414i, -1i, 34947i, i32(-2147483648)), Struct_1(vec3<f32>(-454f, -1907f, 1600f), vec3<bool>(true, false, false), -36394i, false)), Struct_2(Struct_1(vec3<f32>(1722f, -550f, -742f), vec3<bool>(false, true, true), -41493i, true), Struct_1(vec3<f32>(-647f, -428f, 849f), vec3<bool>(false, true, false), 2147483647i, false), vec4<i32>(0i, 29258i, -29205i, i32(-2147483648)), Struct_1(vec3<f32>(293f, -214f, 417f), vec3<bool>(true, true, true), -6821i, false)), Struct_2(Struct_1(vec3<f32>(1227f, 1905f, 558f), vec3<bool>(false, false, false), 63805i, false), Struct_1(vec3<f32>(-1134f, 810f, 337f), vec3<bool>(true, false, true), -13402i, true), vec4<i32>(-14635i, 1i, 72155i, 39203i), Struct_1(vec3<f32>(1840f, 172f, -893f), vec3<bool>(false, false, false), 0i, true)), Struct_2(Struct_1(vec3<f32>(-2434f, -1478f, -1528f), vec3<bool>(true, false, true), -25926i, false), Struct_1(vec3<f32>(898f, 1000f, 1526f), vec3<bool>(false, false, false), -66333i, false), vec4<i32>(2147483647i, -30154i, -1i, i32(-2147483648)), Struct_1(vec3<f32>(402f, -363f, -676f), vec3<bool>(true, false, false), 14177i, true)), Struct_2(Struct_1(vec3<f32>(-215f, 761f, 1416f), vec3<bool>(true, true, false), -22431i, true), Struct_1(vec3<f32>(1214f, -231f, 1073f), vec3<bool>(true, true, true), 2147483647i, false), vec4<i32>(41674i, -1i, 2147483647i, i32(-2147483648)), Struct_1(vec3<f32>(-672f, -1025f, 874f), vec3<bool>(false, false, false), 1i, false)), Struct_2(Struct_1(vec3<f32>(-1000f, -416f, 1378f), vec3<bool>(false, false, false), 2147483647i, true), Struct_1(vec3<f32>(-642f, 851f, 1667f), vec3<bool>(false, false, false), -3553i, true), vec4<i32>(1i, -1i, -16564i, i32(-2147483648)), Struct_1(vec3<f32>(1909f, 642f, -222f), vec3<bool>(false, false, true), 19118i, true)), Struct_2(Struct_1(vec3<f32>(666f, 944f, -752f), vec3<bool>(false, true, false), 49784i, true), Struct_1(vec3<f32>(1956f, 512f, 442f), vec3<bool>(false, false, true), 18869i, true), vec4<i32>(-35219i, 2147483647i, -1i, 2147483647i), Struct_1(vec3<f32>(-1719f, -927f, -909f), vec3<bool>(true, false, false), 1i, false)), Struct_2(Struct_1(vec3<f32>(1230f, 592f, -473f), vec3<bool>(false, false, true), 13708i, true), Struct_1(vec3<f32>(-678f, 435f, 647f), vec3<bool>(true, false, true), 1i, true), vec4<i32>(1i, i32(-2147483648), -14792i, -2945i), Struct_1(vec3<f32>(-360f, -879f, 1424f), vec3<bool>(false, false, false), i32(-2147483648), true)), Struct_2(Struct_1(vec3<f32>(419f, -708f, -624f), vec3<bool>(false, false, false), -1i, false), Struct_1(vec3<f32>(629f, 366f, 1000f), vec3<bool>(false, true, true), 31171i, false), vec4<i32>(0i, 10475i, -33176i, 2677i), Struct_1(vec3<f32>(-1203f, 1000f, -2324f), vec3<bool>(false, true, false), 83570i, false)), Struct_2(Struct_1(vec3<f32>(-1689f, -1098f, 270f), vec3<bool>(false, false, false), 1i, false), Struct_1(vec3<f32>(101f, -654f, 297f), vec3<bool>(false, true, false), -18386i, true), vec4<i32>(36897i, -4168i, 2147483647i, -20236i), Struct_1(vec3<f32>(-1372f, -471f, -531f), vec3<bool>(false, false, false), 71631i, true)), Struct_2(Struct_1(vec3<f32>(-231f, -1000f, -520f), vec3<bool>(false, true, false), -1i, true), Struct_1(vec3<f32>(559f, 871f, -1000f), vec3<bool>(false, true, true), -1i, false), vec4<i32>(-48281i, 24482i, 1i, -1i), Struct_1(vec3<f32>(-179f, 2627f, 1259f), vec3<bool>(true, false, true), 11926i, true)), Struct_2(Struct_1(vec3<f32>(-237f, 904f, 1205f), vec3<bool>(true, false, true), 16454i, false), Struct_1(vec3<f32>(-176f, -752f, 1000f), vec3<bool>(false, true, false), -27802i, true), vec4<i32>(-10121i, 8154i, i32(-2147483648), -36364i), Struct_1(vec3<f32>(488f, -1710f, 1157f), vec3<bool>(true, false, false), 63451i, true)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    return select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(50024u, 1u), 20u)] ^ (u_input.d | _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(74502u, 20u)]), 20u)], _wgslsmith_sub_u32(u_input.d, u_input.a))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(47580u, ~1u), vec2<u32>(1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10033u, 20u)], 20u)])), false && !(_wgslsmith_f_op_f32(ceil(-725f)) != -551f));
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 26>();
    let var_0 = ~(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(24945u, u_input.a) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), vec2<u32>(global1[_wgslsmith_index_u32(83070u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)])), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d, 4294967295u), 20u)]));
    let var_1 = vec2<u32>(abs(~54297u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 74135u, abs(var_0)), 20u)]);
    let var_2 = ~vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 88619u, u_input.d, 28678u), vec4<u32>(4294967295u, 64048u, var_0, global1[_wgslsmith_index_u32(15255u, 20u)])), ~select(0u, 4294967295u, true)), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, func_3(Struct_3(18982i), Struct_3(-53737i), vec4<bool>(false, false, true, false), true), firstTrailingBit(var_0), global1[_wgslsmith_index_u32(~54759u, 20u)]), reverseBits(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0, 20u)], 4294967295u, 1u) << (vec4<u32>(1446u, global1[_wgslsmith_index_u32(23265u, 20u)], var_1.x, var_1.x) % vec4<u32>(32u)))));
    let var_3 = -15682i;
    return _wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(~(~50925u), firstLeadingBit(var_1.x))) << (~func_3(Struct_3(2911i), Struct_3(i32(-1i) * -31523i), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false)), all(vec3<bool>(true, false, false))) % 32u);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> vec2<bool> {
    global2 = array<Struct_5, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.a.x - 1310f) - _wgslsmith_f_op_f32(trunc(arg_1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(566f, -1000f)))) + _wgslsmith_f_op_f32(-arg_1.a.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * 205f) + _wgslsmith_f_op_f32(ceil(-973f))), any(vec4<bool>(arg_2.d.b.b.x, arg_1.b.x, arg_2.c, arg_2.b.d)) && arg_1.b.x)))));
    var var_1 = Struct_4(Struct_3(max(u_input.b, reverseBits(0i))), arg_1, false, arg_2.d, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(arg_1.c), -arg_0.x), global3[_wgslsmith_index_u32(~u_input.d, 32u)], ~(u_input.c.x << (u_input.d % 32u)), max(~arg_2.a.a, -1i)), ~reverseBits(vec4<i32>(arg_1.c, u_input.b, 29562i, -2147483647i)) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(u_input.a, 20u)], u_input.d), u_input.a, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], 1u), 0u | u_input.d) % vec4<u32>(32u))));
    global0 = array<Struct_1, 26>();
    let var_2 = select(vec2<bool>(var_1.c, true), arg_1.b.yx, ~(~(~13709u)) < ~(~(~u_input.d)));
    return !var_1.b.b.xz;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    var var_0 = select(vec2<i32>(-1i, global3[_wgslsmith_index_u32(1u, 32u)]), ~u_input.c.wx, select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0)), func_4(~(~vec3<i32>(global3[_wgslsmith_index_u32(arg_3.x, 32u)], arg_1.x, -31826i)), global0[_wgslsmith_index_u32(func_2(), 26u)], Struct_4(Struct_3(arg_1.x), global0[_wgslsmith_index_u32(92285u, 26u)], true, global4[_wgslsmith_index_u32(u_input.a & 33963u, 29u)], u_input.c)), vec2<bool>(arg_1.x == ~1i, all(select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, false, arg_0))))));
    global2 = array<Struct_5, 32>();
    var var_1 = Struct_3(u_input.b);
    global2 = array<Struct_5, 32>();
    var var_2 = -(~1881i);
    return -645f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    global2 = array<Struct_5, 32>();
    let var_0 = select(vec3<bool>(true, (_wgslsmith_f_op_f32(trunc(-283f)) >= _wgslsmith_f_op_f32(func_1(false, vec2<i32>(u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 32u)]), u_input.a, vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41667u, 20u)], 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)])))) | any(vec4<bool>(false, true, false, true)), false), !vec3<bool>(false, true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))), false);
    global3 = array<i32, 32>();
    global3 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(361f);
}

