struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, false, true, true, true, true, false, true, false, true, true, true, true, true, false, false, true, false, false, false, false, false, true, false, false, true, false, false);

var<private> global1: array<i32, 20> = array<i32, 20>(-44881i, 1i, 0i, 2147483647i, 45681i, 0i, 32825i, 1i, 30891i, -101410i, i32(-2147483648), -1i, -58538i, 79455i, 0i, -1i, i32(-2147483648), 2147483647i, 0i, -22120i);

var<private> global2: Struct_2;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<f32>(-848f, 316f), vec4<i32>(-26013i, -35028i, -1i, -1i), vec3<i32>(25392i, -36527i, -1i)), Struct_1(vec2<f32>(-1000f, -939f), vec4<i32>(2147483647i, -35169i, 0i, -17555i), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), Struct_1(vec2<f32>(-1662f, 117f), vec4<i32>(-19067i, 16902i, 40444i, 3959i), vec3<i32>(i32(-2147483648), -1i, 2669i))), Struct_2(Struct_1(vec2<f32>(389f, -1012f), vec4<i32>(2147483647i, 2147483647i, -19861i, -28812i), vec3<i32>(0i, -43531i, 87994i)), Struct_1(vec2<f32>(1297f, 489f), vec4<i32>(-53757i, 0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-12636i, 58647i, 41250i)), Struct_1(vec2<f32>(-1024f, 579f), vec4<i32>(-1i, 2147483647i, 340i, 0i), vec3<i32>(0i, -30351i, 2147483647i))), Struct_2(Struct_1(vec2<f32>(-886f, 661f), vec4<i32>(-15489i, 53773i, 23709i, -1i), vec3<i32>(0i, 1i, -107835i)), Struct_1(vec2<f32>(134f, 403f), vec4<i32>(-1i, 42539i, 0i, 79555i), vec3<i32>(24980i, -8430i, i32(-2147483648))), Struct_1(vec2<f32>(-645f, 2878f), vec4<i32>(2147483647i, 15140i, 1i, 2147483647i), vec3<i32>(-50941i, 2147483647i, 684i))), Struct_2(Struct_1(vec2<f32>(1232f, 435f), vec4<i32>(-22507i, 4099i, -4773i, 8023i), vec3<i32>(-52392i, 2147483647i, 1i)), Struct_1(vec2<f32>(-1028f, -2004f), vec4<i32>(-54859i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 1i, 0i)), Struct_1(vec2<f32>(-107f, -583f), vec4<i32>(2147483647i, 0i, 2147483647i, -1i), vec3<i32>(4523i, 1i, -8658i))), Struct_2(Struct_1(vec2<f32>(720f, -1907f), vec4<i32>(-6908i, i32(-2147483648), i32(-2147483648), 25909i), vec3<i32>(-2937i, i32(-2147483648), 23105i)), Struct_1(vec2<f32>(394f, -855f), vec4<i32>(2147483647i, 0i, i32(-2147483648), 22182i), vec3<i32>(-26876i, 9799i, -72960i)), Struct_1(vec2<f32>(398f, 625f), vec4<i32>(16376i, 14468i, 1i, -15233i), vec3<i32>(-1i, -10339i, 0i))), Struct_2(Struct_1(vec2<f32>(-1000f, 1000f), vec4<i32>(6185i, 2147483647i, 2147483647i, 53417i), vec3<i32>(-22068i, 2147483647i, 1i)), Struct_1(vec2<f32>(-1228f, -1967f), vec4<i32>(-10704i, 4261i, 25871i, 6956i), vec3<i32>(-29062i, 14025i, i32(-2147483648))), Struct_1(vec2<f32>(-1854f, 618f), vec4<i32>(-39986i, 7131i, 65210i, -15938i), vec3<i32>(16108i, 11512i, i32(-2147483648)))), Struct_2(Struct_1(vec2<f32>(1695f, -537f), vec4<i32>(61696i, -13839i, i32(-2147483648), -1946i), vec3<i32>(19266i, 0i, 0i)), Struct_1(vec2<f32>(1075f, 1655f), vec4<i32>(-26526i, -10269i, 2382i, -28439i), vec3<i32>(i32(-2147483648), -3517i, 11124i)), Struct_1(vec2<f32>(-459f, -1000f), vec4<i32>(-12775i, -40350i, -5813i, 26358i), vec3<i32>(i32(-2147483648), 0i, -26612i))), Struct_2(Struct_1(vec2<f32>(-1084f, -953f), vec4<i32>(-1i, 2147483647i, -8133i, 0i), vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec2<f32>(2945f, -497f), vec4<i32>(24833i, 2147483647i, -1i, 1i), vec3<i32>(1i, 2147483647i, 14986i)), Struct_1(vec2<f32>(-1470f, 389f), vec4<i32>(23167i, 2147483647i, -48853i, 54583i), vec3<i32>(-1i, 2147483647i, 0i))), Struct_2(Struct_1(vec2<f32>(1204f, 215f), vec4<i32>(5707i, -14088i, 0i, -24846i), vec3<i32>(-1i, 18365i, 5089i)), Struct_1(vec2<f32>(-415f, 2143f), vec4<i32>(25780i, 38379i, 1i, 12864i), vec3<i32>(26954i, 26601i, 27339i)), Struct_1(vec2<f32>(-1000f, -831f), vec4<i32>(-6167i, -54519i, 1i, -1i), vec3<i32>(-16828i, -1i, 29985i))), Struct_2(Struct_1(vec2<f32>(1983f, 724f), vec4<i32>(-27343i, -38961i, 0i, 3076i), vec3<i32>(6912i, 0i, i32(-2147483648))), Struct_1(vec2<f32>(1367f, -418f), vec4<i32>(-1i, 1i, 0i, 0i), vec3<i32>(-46444i, 1i, 3959i)), Struct_1(vec2<f32>(1000f, 223f), vec4<i32>(1i, 0i, 1i, 2147483647i), vec3<i32>(1i, -17177i, 14713i))), Struct_2(Struct_1(vec2<f32>(578f, 581f), vec4<i32>(0i, i32(-2147483648), 28642i, -49176i), vec3<i32>(i32(-2147483648), -1i, -20621i)), Struct_1(vec2<f32>(1135f, 752f), vec4<i32>(2147483647i, -1i, 1i, i32(-2147483648)), vec3<i32>(-3989i, 0i, -1i)), Struct_1(vec2<f32>(1111f, -1607f), vec4<i32>(-17327i, 2147483647i, 1i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i))), Struct_2(Struct_1(vec2<f32>(-466f, -1000f), vec4<i32>(18345i, -2184i, 1i, 28368i), vec3<i32>(87693i, -36340i, 24024i)), Struct_1(vec2<f32>(-2023f, -1000f), vec4<i32>(i32(-2147483648), 24395i, 0i, 2147483647i), vec3<i32>(17007i, 11542i, -1i)), Struct_1(vec2<f32>(-479f, -545f), vec4<i32>(-38786i, -14763i, 10703i, -19242i), vec3<i32>(2147483647i, 1i, -28000i))), Struct_2(Struct_1(vec2<f32>(-385f, 572f), vec4<i32>(-35911i, 1i, -1i, 0i), vec3<i32>(12543i, -30712i, -29086i)), Struct_1(vec2<f32>(944f, -1493f), vec4<i32>(-1i, -27431i, i32(-2147483648), 2147483647i), vec3<i32>(27219i, 1i, 23418i)), Struct_1(vec2<f32>(1675f, -2290f), vec4<i32>(1i, 2147483647i, -1i, 55427i), vec3<i32>(i32(-2147483648), -3102i, 47941i))), Struct_2(Struct_1(vec2<f32>(749f, 401f), vec4<i32>(1i, 2147483647i, 49915i, -1i), vec3<i32>(i32(-2147483648), 1i, 61912i)), Struct_1(vec2<f32>(-680f, 1000f), vec4<i32>(79134i, -1i, 1i, 35483i), vec3<i32>(-1i, -1i, 72808i)), Struct_1(vec2<f32>(-766f, 658f), vec4<i32>(16451i, -5966i, -29101i, 1i), vec3<i32>(-1i, -1i, 1i))), Struct_2(Struct_1(vec2<f32>(-221f, -1143f), vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(3108i, 1i, 63743i)), Struct_1(vec2<f32>(194f, 102f), vec4<i32>(-32185i, 2147483647i, -1i, 29746i), vec3<i32>(-1007i, 1i, 1i)), Struct_1(vec2<f32>(108f, -501f), vec4<i32>(0i, 1i, 0i, -1i), vec3<i32>(i32(-2147483648), 0i, -16230i))), Struct_2(Struct_1(vec2<f32>(1007f, 432f), vec4<i32>(-15035i, i32(-2147483648), 66017i, i32(-2147483648)), vec3<i32>(-7552i, -14910i, 1i)), Struct_1(vec2<f32>(329f, 221f), vec4<i32>(-21857i, -14706i, -1i, 4956i), vec3<i32>(39223i, -1i, -20140i)), Struct_1(vec2<f32>(-116f, -1105f), vec4<i32>(-1774i, 2147483647i, 42064i, 2147483647i), vec3<i32>(8324i, 17812i, 0i))), Struct_2(Struct_1(vec2<f32>(-897f, -660f), vec4<i32>(-21270i, -1i, -6859i, -42623i), vec3<i32>(1i, -26538i, 2147483647i)), Struct_1(vec2<f32>(-947f, -140f), vec4<i32>(33440i, -81503i, 0i, -12754i), vec3<i32>(2147483647i, -1i, 27933i)), Struct_1(vec2<f32>(-1114f, -2126f), vec4<i32>(i32(-2147483648), 1i, -58315i, -1i), vec3<i32>(1i, -3532i, -16837i))), Struct_2(Struct_1(vec2<f32>(-1715f, 1689f), vec4<i32>(i32(-2147483648), -5151i, 2147483647i, 6731i), vec3<i32>(-11533i, 27829i, 69177i)), Struct_1(vec2<f32>(111f, -508f), vec4<i32>(1i, -1i, -35776i, -39543i), vec3<i32>(-1i, 2147483647i, 28392i)), Struct_1(vec2<f32>(1442f, -1712f), vec4<i32>(1i, 4486i, -33304i, 18619i), vec3<i32>(-1013i, 0i, 0i))), Struct_2(Struct_1(vec2<f32>(-1000f, -1141f), vec4<i32>(-46406i, -51949i, 0i, i32(-2147483648)), vec3<i32>(42666i, -1i, -1i)), Struct_1(vec2<f32>(-898f, -175f), vec4<i32>(1i, -20944i, 16093i, 1i), vec3<i32>(1i, 0i, -1i)), Struct_1(vec2<f32>(609f, 1640f), vec4<i32>(1i, 1i, i32(-2147483648), 0i), vec3<i32>(24499i, -15912i, 1i))), Struct_2(Struct_1(vec2<f32>(1115f, 401f), vec4<i32>(0i, 6711i, 1i, -53958i), vec3<i32>(-12499i, 0i, 0i)), Struct_1(vec2<f32>(-1156f, -555f), vec4<i32>(0i, i32(-2147483648), -36350i, i32(-2147483648)), vec3<i32>(32668i, -4979i, -18580i)), Struct_1(vec2<f32>(160f, 445f), vec4<i32>(2901i, 13459i, 2147483647i, -35368i), vec3<i32>(22133i, i32(-2147483648), 44962i))), Struct_2(Struct_1(vec2<f32>(-432f, -208f), vec4<i32>(-21077i, -1i, -16110i, 15191i), vec3<i32>(-20960i, 0i, 8128i)), Struct_1(vec2<f32>(1105f, 1348f), vec4<i32>(-21257i, i32(-2147483648), 46274i, 1i), vec3<i32>(-8051i, 0i, 1i)), Struct_1(vec2<f32>(-1635f, 1000f), vec4<i32>(1833i, 1i, 0i, -4430i), vec3<i32>(-26001i, 31170i, 0i))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = abs(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 67823u, 12557u, u_input.b.x), abs(vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, u_input.a.x)))));
    let var_1 = _wgslsmith_mod_vec4_u32(var_0, ~(var_0 ^ vec4<u32>(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, u_input.a.x, 0u, var_0.x)), var_0.x, ~1u, 4294967295u)));
    let var_2 = -1i;
    global0 = array<bool, 29>();
    let var_3 = global2.c;
    return 6936i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-5202i, i32(-1i) * -arg_1, -(global2.c.c.x | 30777i)), vec3<i32>(~_wgslsmith_mult_i32(-1i, 0i), -4678i, global2.a.c.x)));
    return any(global3.zxz);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<bool>(func_4(Struct_1(global2.c.a, arg_0, vec3<i32>(func_3(global2.c.b.x), 1i, 22728i << (u_input.a.x % 32u))), _wgslsmith_dot_vec3_i32(-(~arg_0.ywy), arg_3.b.yyx)), true);
    return 1u;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(~0u, 20u)];
    var var_1 = vec2<bool>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~81622u, reverseBits(u_input.a.x)), ~func_2(global2.c.b, global2.b, 1i, Struct_1(vec2<f32>(global2.a.a.x, 1137f), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], -2147483647i, 56015i), global2.c.c))) > 4294967295u, all(vec4<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 20u)] <= global2.c.c.x, false, global0[_wgslsmith_index_u32(1u, 29u)] || true), true, _wgslsmith_div_i32(48252i, -21906i) == global2.c.c.x, !any(vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], true, true)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(1945f - global2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * -100f)), -1047f, global2.c.a.x);
    let var_3 = _wgslsmith_add_i32(-5009i, global2.c.b.x);
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(min(_wgslsmith_mult_i32(-1i & global2.b.c.x, var_3 ^ 2802i), -var_3), 18755i), ~reverseBits(global2.a.b.x), ~(-global2.b.b.x), _wgslsmith_dot_vec2_i32(select(countOneBits(global2.c.b.xw) & global2.c.b.yx, global2.b.b.xw, select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), var_1.x)), vec2<i32>(max(var_3, global1[_wgslsmith_index_u32(func_2(vec4<i32>(-11398i, 1928i, -44684i, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_1(global2.b.a, global2.c.b, global2.b.c), 1i, Struct_1(global2.c.a, global2.b.b, global2.c.b.yww)), 20u)]), global2.a.c.x)));
    return _wgslsmith_f_op_f32(global2.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -207f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.a.x, global2.b.a.x) + _wgslsmith_f_op_f32(-575f * 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b.a.x, global2.a.a.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-539f, -230f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(2476f, 537f) + vec2<f32>(global2.b.a.x, global2.b.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(!global3.x)), -1341f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, _wgslsmith_f_op_f32(min(1357f, -209f))))));
    let var_1 = 4294967295u >> (u_input.b.x % 32u);
    let var_2 = abs(_wgslsmith_mult_i32(~1539i, -25378i));
    global1 = array<i32, 20>();
    global0 = array<bool, 29>();
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, var_1), vec4<u32>(~(~var_1), ~_wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(17829u, 4294967295u))), 3155u, ~select(firstLeadingBit(1u), ~26509u, func_4(global2.b, global2.b.b.x))));
    var var_4 = Struct_2(global2.a, Struct_1(global2.c.a, abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], var_2, var_2), global2.a.b) >> (firstLeadingBit(vec4<u32>(u_input.a.x, 1u, u_input.b.x, 1u)) % vec4<u32>(32u))), abs(-global2.c.c)), global2.c);
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a.a.x, 1153f))) + var_4.a.a)), select(-abs(select(var_4.b.b, var_4.a.b, vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1, 29u)], global3.x))), _wgslsmith_sub_vec4_i32(var_4.b.b, firstTrailingBit(var_4.a.b)), !(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], true, true), vec4<bool>(global3.x, true, global0[_wgslsmith_index_u32(var_3.x, 29u)], global3.x), global0[_wgslsmith_index_u32(var_3.x, 29u)]))), var_4.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

