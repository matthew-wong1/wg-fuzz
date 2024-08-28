struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(i32(-2147483648), Struct_1(vec2<f32>(-262f, 727f)), Struct_2(Struct_1(vec2<f32>(-670f, -1838f)), vec4<i32>(31924i, -1i, 0i, -61123i), 18713i, Struct_1(vec2<f32>(-496f, 373f))), vec4<i32>(i32(-2147483648), 9431i, -50287i, -27712i), vec2<f32>(390f, 1668f)), Struct_3(-1i, Struct_1(vec2<f32>(-552f, 1000f)), Struct_2(Struct_1(vec2<f32>(2017f, 371f)), vec4<i32>(0i, 1i, -40355i, i32(-2147483648)), -1i, Struct_1(vec2<f32>(-1321f, 117f))), vec4<i32>(-24885i, 0i, -19972i, 1i), vec2<f32>(-229f, -510f)), Struct_3(37030i, Struct_1(vec2<f32>(-398f, -154f)), Struct_2(Struct_1(vec2<f32>(254f, -495f)), vec4<i32>(i32(-2147483648), 2147483647i, 7967i, -1i), i32(-2147483648), Struct_1(vec2<f32>(415f, -1212f))), vec4<i32>(-14183i, -14976i, 18155i, -1i), vec2<f32>(-227f, 1929f)), Struct_3(-31442i, Struct_1(vec2<f32>(981f, 1000f)), Struct_2(Struct_1(vec2<f32>(653f, 907f)), vec4<i32>(0i, 0i, i32(-2147483648), i32(-2147483648)), -73421i, Struct_1(vec2<f32>(-228f, 995f))), vec4<i32>(49873i, -21983i, -46706i, 2620i), vec2<f32>(705f, 857f)), Struct_3(-8224i, Struct_1(vec2<f32>(-1348f, 717f)), Struct_2(Struct_1(vec2<f32>(-114f, -2097f)), vec4<i32>(-9921i, -18278i, i32(-2147483648), 2147483647i), 29263i, Struct_1(vec2<f32>(593f, -888f))), vec4<i32>(0i, 31563i, 34502i, -15120i), vec2<f32>(1268f, -407f)), Struct_3(-51653i, Struct_1(vec2<f32>(-371f, -1000f)), Struct_2(Struct_1(vec2<f32>(-886f, -135f)), vec4<i32>(1i, 0i, 0i, 2147483647i), 38983i, Struct_1(vec2<f32>(1912f, -1000f))), vec4<i32>(0i, 18022i, 2147483647i, 0i), vec2<f32>(213f, -1000f)), Struct_3(i32(-2147483648), Struct_1(vec2<f32>(-905f, 1304f)), Struct_2(Struct_1(vec2<f32>(1612f, 1604f)), vec4<i32>(5119i, 0i, -1i, i32(-2147483648)), 1i, Struct_1(vec2<f32>(711f, 615f))), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec2<f32>(427f, -379f)), Struct_3(12339i, Struct_1(vec2<f32>(2038f, 692f)), Struct_2(Struct_1(vec2<f32>(347f, 884f)), vec4<i32>(-11803i, i32(-2147483648), 25108i, -1i), 13670i, Struct_1(vec2<f32>(-617f, -3022f))), vec4<i32>(1i, 2147483647i, -23824i, 34904i), vec2<f32>(-462f, 1772f)), Struct_3(24419i, Struct_1(vec2<f32>(635f, -184f)), Struct_2(Struct_1(vec2<f32>(333f, -1746f)), vec4<i32>(0i, 1i, i32(-2147483648), -38392i), 66173i, Struct_1(vec2<f32>(928f, 847f))), vec4<i32>(-36066i, 1i, 0i, -30609i), vec2<f32>(347f, -331f)), Struct_3(2193i, Struct_1(vec2<f32>(-782f, -202f)), Struct_2(Struct_1(vec2<f32>(-1605f, -742f)), vec4<i32>(2147483647i, -9067i, 84728i, 107582i), -21953i, Struct_1(vec2<f32>(1151f, 448f))), vec4<i32>(0i, 23787i, 11785i, -32431i), vec2<f32>(-741f, -1590f)), Struct_3(-21959i, Struct_1(vec2<f32>(1140f, -663f)), Struct_2(Struct_1(vec2<f32>(-205f, 650f)), vec4<i32>(i32(-2147483648), 8250i, 28564i, -23392i), 72768i, Struct_1(vec2<f32>(1000f, -1169f))), vec4<i32>(i32(-2147483648), 12748i, 28040i, 6799i), vec2<f32>(326f, 853f)), Struct_3(0i, Struct_1(vec2<f32>(-1106f, 592f)), Struct_2(Struct_1(vec2<f32>(236f, -981f)), vec4<i32>(29151i, 2147483647i, 5633i, 0i), i32(-2147483648), Struct_1(vec2<f32>(980f, 1143f))), vec4<i32>(11361i, -10752i, -1i, -1i), vec2<f32>(-1000f, -660f)), Struct_3(i32(-2147483648), Struct_1(vec2<f32>(913f, 216f)), Struct_2(Struct_1(vec2<f32>(403f, 1226f)), vec4<i32>(53390i, 0i, i32(-2147483648), 1i), 24159i, Struct_1(vec2<f32>(-1404f, -788f))), vec4<i32>(47774i, -17977i, 29356i, 27770i), vec2<f32>(-1614f, 1798f)), Struct_3(-1i, Struct_1(vec2<f32>(2244f, 1269f)), Struct_2(Struct_1(vec2<f32>(984f, 320f)), vec4<i32>(53106i, 2147483647i, 2147483647i, i32(-2147483648)), 44754i, Struct_1(vec2<f32>(932f, -417f))), vec4<i32>(-20010i, -51780i, 47292i, 12025i), vec2<f32>(597f, 1784f)), Struct_3(-10955i, Struct_1(vec2<f32>(-111f, 1153f)), Struct_2(Struct_1(vec2<f32>(-1723f, -813f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), 27576i, Struct_1(vec2<f32>(-169f, -535f))), vec4<i32>(-44062i, 1i, 0i, -1i), vec2<f32>(784f, 118f)), Struct_3(-1i, Struct_1(vec2<f32>(-987f, 231f)), Struct_2(Struct_1(vec2<f32>(-674f, 956f)), vec4<i32>(54794i, -43584i, 1i, -66195i), 21908i, Struct_1(vec2<f32>(-2079f, -2204f))), vec4<i32>(1i, 10150i, 0i, -1106i), vec2<f32>(-296f, 958f)), Struct_3(i32(-2147483648), Struct_1(vec2<f32>(-1389f, -943f)), Struct_2(Struct_1(vec2<f32>(1188f, -2301f)), vec4<i32>(i32(-2147483648), -3113i, 1i, 0i), 7985i, Struct_1(vec2<f32>(1254f, -1000f))), vec4<i32>(0i, 0i, 37575i, 25580i), vec2<f32>(2128f, 1873f)), Struct_3(88148i, Struct_1(vec2<f32>(-1205f, -1896f)), Struct_2(Struct_1(vec2<f32>(-1587f, -1624f)), vec4<i32>(6053i, -32007i, -33691i, i32(-2147483648)), -1i, Struct_1(vec2<f32>(323f, 727f))), vec4<i32>(1i, -2222i, i32(-2147483648), -6349i), vec2<f32>(-1314f, 218f)), Struct_3(981i, Struct_1(vec2<f32>(261f, 1011f)), Struct_2(Struct_1(vec2<f32>(409f, -541f)), vec4<i32>(12186i, -35038i, 41978i, 52573i), 2147483647i, Struct_1(vec2<f32>(-1000f, -791f))), vec4<i32>(0i, 2147483647i, -1i, -507i), vec2<f32>(-165f, -662f)), Struct_3(-43108i, Struct_1(vec2<f32>(-578f, 685f)), Struct_2(Struct_1(vec2<f32>(112f, -238f)), vec4<i32>(50083i, 2147483647i, 2075i, i32(-2147483648)), 0i, Struct_1(vec2<f32>(1283f, -404f))), vec4<i32>(-33982i, i32(-2147483648), 58147i, 1i), vec2<f32>(-522f, 187f)), Struct_3(-1i, Struct_1(vec2<f32>(-779f, 559f)), Struct_2(Struct_1(vec2<f32>(725f, 1078f)), vec4<i32>(-1i, 25167i, 2147483647i, -14568i), 42856i, Struct_1(vec2<f32>(479f, 1646f))), vec4<i32>(-1i, 55239i, -1i, 2147483647i), vec2<f32>(1597f, 805f)), Struct_3(-16929i, Struct_1(vec2<f32>(321f, 1000f)), Struct_2(Struct_1(vec2<f32>(-955f, -966f)), vec4<i32>(0i, -17574i, 1i, 1i), 1i, Struct_1(vec2<f32>(980f, -1343f))), vec4<i32>(-37131i, -6209i, 2147483647i, 1i), vec2<f32>(178f, -137f)), Struct_3(1i, Struct_1(vec2<f32>(1231f, -805f)), Struct_2(Struct_1(vec2<f32>(1155f, 456f)), vec4<i32>(-1i, 7046i, 2147483647i, -37481i), 9027i, Struct_1(vec2<f32>(874f, -1000f))), vec4<i32>(-2585i, 8075i, i32(-2147483648), -14597i), vec2<f32>(-951f, -225f)), Struct_3(0i, Struct_1(vec2<f32>(865f, 1000f)), Struct_2(Struct_1(vec2<f32>(1000f, 620f)), vec4<i32>(-72756i, i32(-2147483648), i32(-2147483648), 22429i), 1i, Struct_1(vec2<f32>(1232f, -1558f))), vec4<i32>(451i, 1i, 0i, 1324i), vec2<f32>(-143f, -1475f)), Struct_3(1i, Struct_1(vec2<f32>(496f, -1185f)), Struct_2(Struct_1(vec2<f32>(-1620f, -466f)), vec4<i32>(0i, i32(-2147483648), -23985i, 1i), -40791i, Struct_1(vec2<f32>(493f, 471f))), vec4<i32>(0i, 54734i, -36541i, 0i), vec2<f32>(472f, 1159f)), Struct_3(1i, Struct_1(vec2<f32>(-701f, -180f)), Struct_2(Struct_1(vec2<f32>(1010f, -1518f)), vec4<i32>(3026i, 34483i, 16263i, 1i), -2093i, Struct_1(vec2<f32>(1889f, 795f))), vec4<i32>(28115i, -4541i, -10193i, -25809i), vec2<f32>(-1527f, -337f)), Struct_3(0i, Struct_1(vec2<f32>(-594f, -1339f)), Struct_2(Struct_1(vec2<f32>(1111f, 437f)), vec4<i32>(-1i, i32(-2147483648), 1i, -1i), -2000i, Struct_1(vec2<f32>(-631f, 1000f))), vec4<i32>(i32(-2147483648), 36825i, 70591i, 0i), vec2<f32>(604f, 1148f)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1283f * -1366f), -593f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(668f, -1197f), vec2<f32>(1542f, 884f))), vec2<f32>(-883f, -2169f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, 1000f)) - vec2<f32>(-1000f, -755f)))));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-25238i, arg_0), abs(firstLeadingBit(arg_0)), 36311i, select(abs(0i), -(~arg_0), all(vec2<bool>(true, true)))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, 0i), _wgslsmith_mult_i32(arg_0, countOneBits(arg_0)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 38458i, 1i, 2147483647i), vec4<i32>(-47214i, 0i, -16733i, arg_0) & vec4<i32>(-26495i, arg_0, -39372i, arg_0)), -2147483647i), ~(~(vec4<i32>(arg_0, arg_0, 30820i, 17745i) | vec4<i32>(2147483647i, -2147483647i, arg_0, -2147483647i)))));
    let var_2 = var_1.a.x;
    let var_3 = Struct_3(28341i, Struct_1(var_1.a), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(max(1u, 44875u), _wgslsmith_mult_u32(26478u, u_input.a.x), firstTrailingBit(u_input.a.x)), vec3<u32>(37262u, ~var_0.x, ~4294967295u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.a, max(u_input.a, var_0))), var_0.x), 9u)], min(vec4<i32>(~15368i, _wgslsmith_mult_i32(arg_0, 92935i) | ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, 36526i, arg_0) & vec4<i32>(-46592i, arg_0, arg_0, -24773i), firstLeadingBit(vec4<i32>(arg_0, 45230i, 41449i, -1i))), ~(-arg_0)), -(-vec4<i32>(arg_0, -25030i, -2147483647i, arg_0) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(5971u, u_input.a.x, var_0.x, var_0.x), vec4<u32>(u_input.a.x, 75746u, var_0.x, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(1769f * var_2))), var_1.a));
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.d.wxz, ~var_3.c.b.zwx), -2147483647i, (var_3.a | -10844i) ^ max(var_3.c.c, arg_0)), select(firstTrailingBit(-reverseBits(var_3.c.b.yyw)), _wgslsmith_mult_vec3_i32(~var_3.d.zwy, min(var_3.c.b.xyz, var_3.c.b.yxw & var_3.d.zwz)), false));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(14531u, 27u)];
    global2 = array<Struct_3, 27>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(ceil(arg_0))) - arg_0)), vec4<i32>(func_3(-1i), ~(-1i), 63544i, ~(-29446i)), 19085i, var_0.c.a);
    var_0 = Struct_3(firstTrailingBit(var_0.a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -255f))), var_0.c, (min(var_1.b, -vec4<i32>(var_0.d.x, var_1.b.x, -51155i, -1486i)) & min(vec4<i32>(var_0.c.b.x, -2147483647i, var_0.c.b.x, var_0.c.b.x), var_0.d)) | min(reverseBits(vec4<i32>(8089i, -11575i, -1i, -1i) << (vec4<u32>(u_input.a.x, 10858u, u_input.a.x, 0u) % vec4<u32>(32u))), var_0.d), arg_0);
    var var_2 = u_input.a;
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global2 = array<Struct_3, 27>();
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), 1150f)).a;
    global0 = array<Struct_2, 9>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a.x * -546f) * var_0.a.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_div_f32(arg_0.a.a.x, 454f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(495f, var_0.a.x) - vec2<f32>(arg_0.d.a.x, -1000f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.a.x), 397f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) + arg_1.a.a))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1145f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(var_0.a.x + -229f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-686f, arg_1.d.a.x)), 1306f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(277f)))), _wgslsmith_f_op_f32(var_1.x * -233f), _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(max(arg_0.a.a.x, -398f)))))));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_2.yw)))).d;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -130f)));
    let var_1 = global0[_wgslsmith_index_u32(~(~arg_2), 9u)];
    let var_2 = func_4(Struct_2(var_1.a, vec4<i32>(var_1.c, -20603i, var_1.b.x, var_1.c) << (~(vec4<u32>(0u, arg_2, arg_2, arg_2) >> (vec4<u32>(u_input.a.x, 63880u, arg_2, 56547u) % vec4<u32>(32u))) % vec4<u32>(32u)), -12622i, var_1.d), func_2(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_1.d.a.x, _wgslsmith_f_op_f32(abs(var_0.a.x))))));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    return Struct_3(abs(-20135i), func_2(vec2<f32>(-204f, 480f)).d, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-func_2(var_0.a).a.a), var_2.a, vec2<bool>(u_input.a.x != 6205u, var_1.b.x != 0i)))), -vec4<i32>(~_wgslsmith_dot_vec4_i32(var_1.b, var_1.b), 19952i, var_1.b.x, _wgslsmith_dot_vec3_i32(var_1.b.wwz, vec3<i32>(var_1.b.x, 1i, var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, var_1.a.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(1f * func_2(arg_0.yw).a.a.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = u_input.a.x;
    global1 = arg_0.a;
    let var_1 = -12662i;
    let var_2 = u_input.a.x;
    global0 = array<Struct_2, 9>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1369f, arg_0.b.a.x)), _wgslsmith_f_op_f32(-834f * arg_0.e.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(func_2(arg_0.c.a.a).d.a, vec2<f32>(-1305f, arg_3.c.a.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - -2178f), _wgslsmith_f_op_f32(-1083f * -1834f), _wgslsmith_f_op_f32(step(1000f, -407f)), 1000f)), true, u_input.a.x), !(!vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, true)), true)), (min(abs(u_input.a.x), u_input.a.x) >> (_wgslsmith_mod_u32(4294967295u, ~u_input.a.x) % 32u)) ^ 4294967295u, Struct_3(abs(1i ^ _wgslsmith_clamp_i32(-4109i, 0i, -2147483647i)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(476f, -1000f, -916f, 305f) + vec4<f32>(-1000f, 507f, 1351f, 664f)) * vec4<f32>(-1412f, 1376f, -1151f, 1271f)), true || any(vec2<bool>(true, true)), u_input.a.x).b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(u_input.a >> (vec2<u32>(6261u, 4294967295u) % vec2<u32>(32u))), vec2<u32>(29638u >> (u_input.a.x % 32u), min(15635u, 25478u))), 9u)], ~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(863f, -1000f)))));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global2 = array<Struct_3, 27>();
    global0 = array<Struct_2, 9>();
    let var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 4294967295u), ~(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), select(u_input.a, vec2<u32>(u_input.a.x, 1u), true)) | u_input.a), vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~58089u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a.x, 15541u), vec4<u32>(52436u, 1u, 4294967295u, 0u)), u_input.a.x & 46640u), select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 18881u), true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(vec4<u32>(~var_1.x, 4294967295u, var_1.x, ~var_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), firstLeadingBit(vec4<u32>(15460u, var_1.x, u_input.a.x, 1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1672f - var_0.a.x), -267f, any(vec3<bool>(false, false, false))))) - -930f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-func_1(vec4<f32>(1388f, var_0.a.x, 368f, var_0.a.x), false, 6054u).e.x))), -vec2<i32>(-2147483647i, -1i), 0i);
}

