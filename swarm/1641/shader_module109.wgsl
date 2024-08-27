struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-359f, -951f, -792f), 28758i, 36110i), -1898f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-133f, -251f, -461f), 11565i, i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-440f, 731f, 2549f), -1i, 36363i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(889f, 597f, -769f), -12748i, 1i), 187f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(1320f, 117f, -129f), 14386i, 1i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(394f, 1000f, -1384f), -46455i, -24953i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1795f, -119f, 319f), -55899i, -19901i), -1000f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(342f, -1558f, 217f), 2147483647i, 14329i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(597f, -1000f, 2335f), i32(-2147483648), 13074i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-293f, 347f, -1000f), -31262i, -17470i), -382f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(1271f, -931f, -661f), 0i, 17484i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-977f, 1906f, 1614f), 12327i, 23512i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(666f, -1154f, -1413f), -48944i, 0i), -489f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1380f, 1081f, 1468f), -23393i, -92441i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(164f, -1504f, -190f), i32(-2147483648), -13775i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1298f, 1429f, -329f), -6224i, 41883i), 222f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(180f, 301f, -1644f), -40825i, -36551i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1139f, 741f, 1433f), 33953i, -25273i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(920f, 809f, 540f), i32(-2147483648), 51961i), 931f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(438f, -1000f, -1000f), -1i, -1i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1000f, 208f, 109f), 6256i, 1i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(-773f, 1781f, 613f), 1i, -18039i), -854f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1138f, -1145f, 1269f), 0i, 5520i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(220f, 1578f, 337f), -8013i, 0i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, 1239f, -527f), -35890i, 32149i), -1351f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(333f, 905f, -2661f), 39793i, 2147483647i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1349f, -1214f, -481f), 62011i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-923f, 460f, -466f), i32(-2147483648), -70109i), 810f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1349f, -1000f, -1903f), 9544i, -31624i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-249f, 963f, 1208f), 17104i, 1i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1760f, -622f, 1220f), 1i, 2147483647i), -169f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(382f, -309f, -315f), i32(-2147483648), 57254i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-750f, 632f, -1000f), -15944i, -29563i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1468f, 1441f, 1000f), -1i, -41811i), -245f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(365f, 1363f, 529f), 2147483647i, 2147483647i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(773f, -180f, -1729f), 44085i, -24414i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(-534f, -389f, -1000f), 6605i, 2147483647i), -868f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-269f, -1000f, -132f), 32161i, 32361i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1768f, -1579f, -2361f), -1i, 16125i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1666f, -1371f, 293f), 16793i, 2147483647i), 586f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1000f, 1634f, -1529f), -52200i, -1i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(2108f, 888f, -1000f), i32(-2147483648), 39058i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(-598f, 399f, -1027f), -22745i, 2147483647i), 2235f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-858f, 912f, 605f), 2147483647i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-439f, 410f, 1000f), i32(-2147483648), 0i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(558f, 313f, 954f), -2339i, -13653i), -1220f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(1002f, -993f, 1502f), -523i, -52919i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-314f, 1326f, -447f), 0i, -23464i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1929f, 638f, -1026f), 1i, -12450i), -886f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1008f, -223f, -274f), i32(-2147483648), -1i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(100f, -539f, -969f), -1i, 40377i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-172f, -557f, -1000f), 59827i, 5436i), -288f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-533f, 1000f, -153f), 0i, 1i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1036f, 164f, -435f), i32(-2147483648), 1i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-2153f, -191f, 364f), 17767i, 7210i), -583f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1000f, -325f, -945f), -46057i, -16163i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(295f, -296f, 714f), 0i, 0i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1659f, -1635f, 1415f), 42837i, 1i), 1374f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1301f, 226f, 1001f), 63824i, 0i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1030f, -1456f, -523f), 1i, -39593i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(1186f, -1000f, -1123f), 2147483647i, 0i), 618f, Struct_1(vec3<bool>(true, false, true), vec3<f32>(1499f, -2242f, 544f), 2147483647i, 2147483647i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-283f, -247f, 3138f), -24119i, -36504i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(1000f, -1208f, -774f), -1i, 31512i), -887f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-1000f, 909f, 872f), 10396i, 2147483647i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(236f, 2329f, 1000f), i32(-2147483648), 1i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1000f, -4475f, -351f), -17987i, 46391i), -1000f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, 1000f, 948f), 46226i, -30985i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1578f, -375f, -221f), -16735i, 27202i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-551f, -1085f, 1098f), 1i, 2147483647i), 1818f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(464f, 2011f, 162f), 61887i, 59843i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1658f, -1255f, -380f), 2147483647i, 2147483647i)));

var<private> global2: array<u32, 4> = array<u32, 4>(0u, 21054u, 10510u, 0u);

var<private> global3: array<Struct_2, 2>;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-2583f, 2471f, 1642f), 20641i, 0i), -603f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-972f, 610f, -1012f), 0i, 2147483647i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(1861f, -703f, 856f), 2147483647i, -40080i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(862f, 226f, 1100f), 39657i, 1i), 189f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1223f, -266f, 1389f), -3961i, -43375i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, 1000f, 589f), 0i, -53714i)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<f32>(598f, -1000f, 236f), 28760i, 44411i), 767f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(134f, 1435f, -147f), -31242i, -1i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, -1000f, 1205f), i32(-2147483648), -1i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(-301f, 985f, -487f), -49258i, 2147483647i), -711f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(1238f, -526f, 476f), i32(-2147483648), 15518i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-668f, 1914f, -1234f), -10870i, 1i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(1559f, 1140f, 545f), 41750i, -51639i), -794f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-269f, 888f, -945f), 7268i, 3718i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(231f, 1459f, -1000f), -3956i, 23692i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(711f, -305f, -370f), 19612i, -1i), 918f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(351f, 1000f, -2208f), 1i, -1i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1922f, -303f, -231f), 13713i, 1i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(105f, 1201f, 1162f), -10738i, 9762i), -850f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(656f, -1000f, -432f), 20284i, 0i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1935f, -260f, 521f), 1i, 8929i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(1000f, -1165f, 530f), -4416i, -23567i), 324f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-736f, -753f, 1457f), -1i, 26804i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(-1388f, -408f, -272f), -16864i, 8411i)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-303f, -1601f, -1615f), -29831i, -14988i), -164f, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-122f, 399f, -1553f), -62176i, -36268i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(810f, 1000f, -324f), 0i, 17265i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(1995f, 1000f, 1312f), 13327i, i32(-2147483648)), 231f, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-111f, -417f, 165f), -73086i, 38783i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-393f, -1007f, -881f), i32(-2147483648), -13016i)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec3<f32>(-804f, 298f, 460f), -1i, -1i), 1089f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1000f, -778f, 1108f), 1i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), vec3<f32>(245f, -798f, -776f), -1i, 0i)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<f32>(-254f, 128f, 183f), 2147483647i, -1i), 691f, Struct_1(vec3<bool>(true, true, true), vec3<f32>(603f, -1626f, -193f), 0i, 42311i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-443f, 510f, 440f), 16899i, 4560i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-964f, 646f, -1091f), -555i, -21243i), -383f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1000f, -902f, -1148f), i32(-2147483648), -37179i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(521f, 1937f, 262f), -22684i, 2147483647i)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec3<f32>(1458f, -429f, -1000f), 2147483647i, -16183i), 1128f, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1019f, -532f, 215f), 1i, -22336i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1603f, -139f, -1188f), -57891i, 28020i)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1253f, -462f, -1600f), 0i, -10790i), -710f, Struct_1(vec3<bool>(false, false, false), vec3<f32>(653f, 1281f, 347f), 27777i, 13828i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(1453f, 685f, 1000f), 2147483647i, 1i)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<f32>(557f, 392f, 996f), i32(-2147483648), 16928i), 1651f, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-437f, 1787f, 3154f), -19162i, -42858i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-706f, 504f, 925f), -1i, 0i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1109f, 1005f, 1514f), 1i, 1i), -362f, Struct_1(vec3<bool>(false, true, false), vec3<f32>(-130f, 1000f, 2234f), 37496i, 2147483647i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-2290f, 771f, 691f), 2147483647i, 2147483647i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    global0 = 1440f;
    global2 = array<u32, 4>();
    return _wgslsmith_f_op_f32(abs(124f));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: f32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1164f)) - arg_2);
    global0 = arg_2;
    let var_0 = (vec2<i32>(-1i) * -abs(u_input.a.yz)) ^ vec2<i32>(-2147483647i, 2147483647i << (max(u_input.c, 25662u) % 32u));
    let var_1 = Struct_1(select(arg_0, arg_0, !arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1150f, 738f, 394f)), vec3<f32>(308f, -628f, 1669f), true)))), -u_input.a.x, 0i);
    var var_2 = Struct_1(select(arg_0, vec3<bool>(arg_0.x, false != var_1.a.x, true), vec3<bool>(any(var_1.a), _wgslsmith_f_op_f32(arg_2 * var_1.b.x) > _wgslsmith_f_op_f32(abs(-1768f)), any(var_1.a.xy) | true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) * _wgslsmith_f_op_f32(var_1.b.x * 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x * arg_2))), _wgslsmith_f_op_f32(func_3(arg_1.x, vec2<u32>(4294967295u, arg_1.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(var_1.b.x, arg_2, -1572f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, var_1.b.x, -356f) + vec3<f32>(arg_2, var_1.b.x, var_1.b.x)), true)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(min(var_1.b.x, -1000f))), var_1.a))), -firstLeadingBit(8954i), select(-2885i & _wgslsmith_clamp_i32(max(5648i, var_1.d), 1i, -52899i), 6522i, !(arg_0.x && true)));
    return Struct_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1000f + var_1.b.x))), 341f))), var_1, Struct_1(!vec3<bool>(var_1.a.x, u_input.a.x <= var_1.d, arg_2 > 416f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-372f, _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(floor(785f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1065f, 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, arg_2, var_1.b.x)))), ~var_0.x, 0i));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(vec3<bool>(arg_2.d.a.x, !(all(vec2<bool>(false, arg_0)) == false), true), arg_2.d.b, ~2147483647i, arg_1.x);
    var var_1 = vec2<u32>(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(firstLeadingBit(4294967295u) << (select(0u, u_input.c, true) % 32u), ~countOneBits(u_input.c))), 4u)], ~(_wgslsmith_sub_u32(u_input.c, 4294967295u) & global2[_wgslsmith_index_u32(1u, 4u)]) ^ 0u);
    var var_2 = false;
    var var_3 = select(1u >= _wgslsmith_clamp_u32(~6688u, var_1.x, u_input.b.x), arg_2.c.a.x, true) || true;
    global1 = array<Struct_2, 24>();
    return !select(vec4<bool>(true, arg_2.d.b.x >= func_2(vec3<bool>(false, var_0.a.x, true), u_input.b.wxw, 818f).b, select(false, 577f <= arg_2.d.b.x, !arg_2.a.a.x), true), vec4<bool>(false, true, arg_2.a.a.x, var_0.a.x), !select(select(vec4<bool>(true, true, true, arg_2.a.a.x), vec4<bool>(false, var_0.a.x, false, arg_2.d.a.x), true), vec4<bool>(arg_0, arg_2.d.a.x, true, true), !vec4<bool>(arg_2.a.a.x, arg_0, arg_0, arg_0)));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    var var_0 = !select(vec4<bool>(true, true, true & any(vec3<bool>(false, false, true)), false), select(vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true), func_4(u_input.a.x == -74038i, ~vec2<i32>(-12254i, u_input.a.x), func_2(vec3<bool>(false, false, false), vec3<u32>(36727u, u_input.c, global2[_wgslsmith_index_u32(33046u, 4u)]), -1508f)), true), true);
    global4 = array<Struct_2, 17>();
    global2 = array<u32, 4>();
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_2 = vec3<bool>(true, false, var_0.x);
    return func_2(var_0.xzz, u_input.b.zwy, var_1.d.b.x).c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 4>();
    global0 = -939f;
    var var_0 = Struct_1(vec3<bool>(true, func_1(abs(vec2<i32>(80695i, u_input.a.x))), any(func_4(false, u_input.a.wy, global1[_wgslsmith_index_u32(1u, 24u)])) == (true | all(vec3<bool>(true, false, false)))), func_2(vec3<bool>(true, true, true), u_input.b.wzz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(6764u, u_input.b.xw)))))).d.b, u_input.a.x, -2147483647i);
    var var_1 = var_0.a;
    var_0 = func_2(vec3<bool>((false & any(vec4<bool>(var_1.x, false, false, var_0.a.x))) | !select(false, var_1.x, true), func_1(u_input.a.wy), true), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(~u_input.b.yyx), vec3<u32>(~47722u, global2[_wgslsmith_index_u32(firstTrailingBit(34118u), 4u)], 27380u)), ~global2[_wgslsmith_index_u32(1u, 4u)], 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(455f - var_0.b.x)))), var_0.b.x))).c;
    global4 = array<Struct_2, 17>();
    let var_2 = Struct_2(Struct_1(func_2(var_0.a, abs(_wgslsmith_sub_vec3_u32(u_input.b.wzz, u_input.b.zxw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_0.b.x)).d.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 182f)) - _wgslsmith_f_op_vec3_f32(-var_0.b)))), max(select(abs(var_0.d), 2147483647i, false), firstTrailingBit(~1i)), -72658i), _wgslsmith_f_op_f32(-var_0.b.x), func_2(!vec3<bool>(var_0.a.x, true, false), u_input.b.wwy, -1197f).a, Struct_1(vec3<bool>(true != all(vec4<bool>(var_0.a.x, var_1.x, true, true)), _wgslsmith_f_op_f32(ceil(var_0.b.x)) == 1891f, var_1.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, var_0.b.x, 162f), vec3<f32>(1108f, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.b.x, -800f, var_0.b.x), var_1.x)))), max(_wgslsmith_sub_i32(-30774i, var_0.c), u_input.a.x), -3136i));
    let var_3 = u_input.a.zxy;
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x << (abs(64361u) % 32u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.yz, var_2.d.b.yx), _wgslsmith_f_op_vec2_f32(var_0.b.zz - vec2<f32>(-725f, var_0.b.x)), true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.b.x, 665f)) - var_0.b.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.zy + vec2<f32>(-137f, 1000f))) * vec2<f32>(var_2.c.b.x, _wgslsmith_f_op_f32(var_2.d.b.x + var_2.b))))), 26278u, vec3<f32>(307f, 465f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.b.x + var_2.c.b.x), func_2(var_0.a, vec3<u32>(4294967295u, u_input.c, global2[_wgslsmith_index_u32(u_input.c, 4u)]), 623f).a.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.b.x, var_0.b.x)) + _wgslsmith_f_op_f32(var_2.a.b.x * var_2.c.b.x)))), vec4<u32>(~u_input.c, 0u, abs(0u), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(821u, 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], u_input.c)), ~u_input.b.wy))));
}

