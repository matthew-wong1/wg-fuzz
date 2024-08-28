struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(505f, -1646f), vec2<f32>(-245f, 1264f), vec2<f32>(-1000f, -231f), vec2<f32>(129f, 521f), vec2<f32>(232f, -1909f), vec2<f32>(1960f, 375f), vec2<f32>(-1211f, 826f), vec2<f32>(-1192f, 559f), vec2<f32>(-1118f, -1000f), vec2<f32>(1157f, 820f), vec2<f32>(1239f, 842f), vec2<f32>(-743f, 1390f), vec2<f32>(363f, -1665f), vec2<f32>(608f, 1119f), vec2<f32>(964f, -1307f), vec2<f32>(469f, -525f), vec2<f32>(-710f, -109f), vec2<f32>(660f, -1000f), vec2<f32>(2047f, 533f), vec2<f32>(-1000f, 2562f), vec2<f32>(-795f, -357f), vec2<f32>(1000f, -270f), vec2<f32>(711f, 116f), vec2<f32>(-615f, -426f), vec2<f32>(-162f, -728f), vec2<f32>(-752f, 401f), vec2<f32>(1000f, -1000f), vec2<f32>(-857f, 964f), vec2<f32>(453f, 158f), vec2<f32>(-1526f, 945f), vec2<f32>(908f, -1000f), vec2<f32>(983f, 294f));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(1u, 0i, -611f, 1u, -1i), Struct_1(59664u, 11980i, -1000f, 44257u, -18956i), Struct_1(64257u, 36651i, -1244f, 12050u, 0i), Struct_1(1u, 6584i, 441f, 66345u, -53720i)), Struct_2(Struct_1(21875u, 2147483647i, -2143f, 47897u, 0i), Struct_1(4294967295u, 2147483647i, -2003f, 0u, 10943i), Struct_1(1u, i32(-2147483648), 1354f, 17892u, i32(-2147483648)), Struct_1(4294967295u, 0i, 242f, 5087u, 38343i)), Struct_2(Struct_1(68321u, 5123i, -1000f, 50278u, 21835i), Struct_1(4294967295u, 2147483647i, -1000f, 34429u, 1i), Struct_1(0u, 85999i, 1000f, 0u, -1i), Struct_1(51309u, 0i, 188f, 4294967295u, 1902i)), Struct_2(Struct_1(0u, 4776i, -1287f, 18662u, 44274i), Struct_1(0u, 50123i, 854f, 1u, 2147483647i), Struct_1(1u, 0i, 1131f, 0u, 0i), Struct_1(3236u, -30477i, 1547f, 1u, 2147483647i)), Struct_2(Struct_1(7335u, i32(-2147483648), -849f, 8733u, -21333i), Struct_1(4294967295u, i32(-2147483648), -307f, 18973u, 0i), Struct_1(20673u, 48119i, 1191f, 1u, 2147483647i), Struct_1(3170u, 6754i, -1710f, 4294967295u, 28802i)), Struct_2(Struct_1(35232u, 1i, 134f, 4294967295u, 34556i), Struct_1(1u, 2147483647i, 1000f, 16767u, -1i), Struct_1(3430u, -18834i, -1625f, 1u, i32(-2147483648)), Struct_1(80955u, 1i, -1000f, 1u, -3650i)), Struct_2(Struct_1(629u, i32(-2147483648), -175f, 0u, 17505i), Struct_1(0u, i32(-2147483648), 349f, 4294967295u, -48643i), Struct_1(1u, 0i, -1078f, 1u, i32(-2147483648)), Struct_1(4294967295u, -59132i, -1427f, 98203u, -1i)), Struct_2(Struct_1(56247u, 0i, 1000f, 1724u, i32(-2147483648)), Struct_1(0u, 0i, 1044f, 1u, 68211i), Struct_1(4733u, -1i, -1216f, 27704u, 16827i), Struct_1(65278u, 0i, -1229f, 18668u, 1i)), Struct_2(Struct_1(0u, -1i, 1656f, 1u, 0i), Struct_1(0u, -1i, -1000f, 24319u, 14367i), Struct_1(2519u, i32(-2147483648), -281f, 0u, 0i), Struct_1(1u, -22753i, 1083f, 4294967295u, 60381i)), Struct_2(Struct_1(4294967295u, 937i, 141f, 63011u, i32(-2147483648)), Struct_1(8312u, -1i, 1000f, 0u, 50289i), Struct_1(8875u, -52219i, 2183f, 46376u, 10614i), Struct_1(0u, 25935i, 557f, 1u, 47656i)), Struct_2(Struct_1(4294967295u, -28739i, -1000f, 53606u, 0i), Struct_1(0u, -1i, 313f, 13443u, 26630i), Struct_1(1u, 2147483647i, -1405f, 1u, 34352i), Struct_1(0u, 6859i, 1604f, 36251u, 2147483647i)), Struct_2(Struct_1(1u, 2147483647i, 142f, 22160u, 12548i), Struct_1(3359u, 10217i, 1074f, 1u, 2147483647i), Struct_1(0u, -22477i, -2208f, 37227u, -13692i), Struct_1(20492u, 46845i, 1000f, 24622u, -1i)), Struct_2(Struct_1(0u, 2147483647i, -1087f, 71221u, 0i), Struct_1(7581u, 8377i, 876f, 52089u, 914i), Struct_1(8650u, -65194i, 1000f, 62461u, 2147483647i), Struct_1(0u, -27950i, 770f, 0u, -48908i)), Struct_2(Struct_1(0u, 2147483647i, 1255f, 40222u, i32(-2147483648)), Struct_1(863u, 1i, 144f, 4294967295u, 0i), Struct_1(4294967295u, i32(-2147483648), 1608f, 5335u, -46232i), Struct_1(23024u, -1i, -1014f, 45793u, -1i)), Struct_2(Struct_1(1u, 0i, 382f, 4294967295u, -4024i), Struct_1(11601u, -5841i, 391f, 86735u, 2147483647i), Struct_1(0u, i32(-2147483648), 2650f, 1u, 1i), Struct_1(1u, 18330i, 1023f, 14428u, 1i)), Struct_2(Struct_1(0u, 30702i, 222f, 1u, 59898i), Struct_1(4294967295u, -1i, -337f, 4294967295u, 1i), Struct_1(43534u, -40081i, 1113f, 88875u, 0i), Struct_1(30341u, 1i, -885f, 4294967295u, 904i)), Struct_2(Struct_1(27587u, -1095i, 1329f, 68706u, -28989i), Struct_1(4294967295u, -24835i, 574f, 1u, 777i), Struct_1(88863u, 15861i, 307f, 14646u, 30059i), Struct_1(32536u, 66283i, -243f, 1u, 3762i)), Struct_2(Struct_1(113634u, -1i, 318f, 27160u, 14336i), Struct_1(0u, -7276i, 1109f, 4294967295u, 95440i), Struct_1(5775u, 7870i, -717f, 1u, 2147483647i), Struct_1(73184u, 3587i, -2677f, 4294967295u, i32(-2147483648))), Struct_2(Struct_1(29273u, -37097i, 347f, 28698u, -20385i), Struct_1(0u, 0i, 1150f, 55197u, -22615i), Struct_1(12271u, -44086i, 240f, 0u, 62498i), Struct_1(1u, 45650i, -1173f, 0u, -37256i)), Struct_2(Struct_1(45114u, i32(-2147483648), 871f, 1263u, 28521i), Struct_1(7065u, 0i, -228f, 1u, 0i), Struct_1(63364u, -1i, -1374f, 1u, i32(-2147483648)), Struct_1(1u, -4217i, 1061f, 0u, i32(-2147483648))), Struct_2(Struct_1(4294967295u, 0i, 112f, 24131u, 36404i), Struct_1(23051u, -5607i, -2106f, 0u, 1i), Struct_1(10743u, -1i, -2307f, 1u, 2147483647i), Struct_1(75405u, -508i, -255f, 71001u, -48453i)), Struct_2(Struct_1(0u, 46491i, -412f, 28371u, 0i), Struct_1(4294967295u, 1i, 152f, 4782u, 0i), Struct_1(60435u, 2147483647i, -1281f, 95848u, -1i), Struct_1(11942u, i32(-2147483648), 1079f, 4294967295u, 2147483647i)), Struct_2(Struct_1(60537u, 0i, 1426f, 10164u, -1i), Struct_1(0u, 2805i, -659f, 1u, 1i), Struct_1(513u, 1i, -152f, 0u, 4606i), Struct_1(5203u, i32(-2147483648), 108f, 0u, 0i)), Struct_2(Struct_1(4294967295u, i32(-2147483648), 433f, 2199u, 4055i), Struct_1(128564u, 29038i, -1923f, 11282u, 2147483647i), Struct_1(74321u, 15129i, -125f, 4294967295u, 453i), Struct_1(4294967295u, 9579i, -2238f, 5761u, 0i)), Struct_2(Struct_1(0u, -20608i, 1044f, 1u, -16755i), Struct_1(4703u, 14975i, 648f, 5887u, 0i), Struct_1(1u, 54858i, 985f, 4294967295u, 2147483647i), Struct_1(21638u, 24655i, 806f, 40752u, 1i)), Struct_2(Struct_1(28344u, 4058i, 1000f, 1u, i32(-2147483648)), Struct_1(1u, -1i, 1000f, 0u, -1i), Struct_1(32306u, 2147483647i, -380f, 1u, -41424i), Struct_1(1670u, -1i, 527f, 1u, 0i)), Struct_2(Struct_1(41914u, -9651i, 472f, 28186u, i32(-2147483648)), Struct_1(4294967295u, 49452i, -1027f, 82931u, 1i), Struct_1(1u, -25129i, -1000f, 4997u, 1i), Struct_1(34746u, 15989i, -442f, 4294967295u, -1i)), Struct_2(Struct_1(44004u, 2147483647i, -1156f, 4294967295u, 0i), Struct_1(4818u, 2147483647i, 701f, 0u, 1i), Struct_1(4294967295u, -25430i, 1137f, 0u, -24674i), Struct_1(23465u, 7435i, -2349f, 4294967295u, 29835i)), Struct_2(Struct_1(45051u, 43414i, 154f, 26833u, -1i), Struct_1(4294967295u, 0i, 165f, 23258u, i32(-2147483648)), Struct_1(1u, 31003i, -1351f, 1u, -11293i), Struct_1(4294967295u, -18626i, 925f, 1353u, 18012i)), Struct_2(Struct_1(4294967295u, 11733i, 1384f, 1u, -14675i), Struct_1(33052u, -23344i, -468f, 93841u, -23350i), Struct_1(3433u, -753i, -816f, 5921u, 1i), Struct_1(0u, 88781i, -1542f, 0u, 1i)), Struct_2(Struct_1(15291u, 1875i, -1635f, 17999u, -6061i), Struct_1(36399u, 57175i, -213f, 4294967295u, 31240i), Struct_1(0u, -4754i, -972f, 4294967295u, 2147483647i), Struct_1(15394u, i32(-2147483648), -470f, 0u, i32(-2147483648))), Struct_2(Struct_1(4294967295u, -23941i, 700f, 0u, -1i), Struct_1(79207u, i32(-2147483648), 965f, 0u, 14440i), Struct_1(0u, i32(-2147483648), -119f, 20473u, 1i), Struct_1(4294967295u, 28721i, 766f, 93053u, -46585i)));

var<private> global2: Struct_1 = Struct_1(4294967295u, -36124i, -1267f, 0u, 0i);

var<private> global3: Struct_1 = Struct_1(1u, 0i, -2606f, 1u, -24997i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(43625u, u_input.a, u_input.a, 1045u), vec4<u32>(arg_0.a.a, u_input.a, 9489u, global2.d)) >> (4294967295u % 32u), -1i, _wgslsmith_f_op_f32(-global3.c), global2.d, _wgslsmith_mod_i32(1i, 2147483647i)), Struct_1(_wgslsmith_dot_vec3_u32(~u_input.e, _wgslsmith_mult_vec3_u32(u_input.e, u_input.e)) ^ (_wgslsmith_add_u32(u_input.e.x, 0u) << (global3.a % 32u)), global2.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1842f)) * _wgslsmith_div_f32(1045f, global2.c)))), arg_0.c.d, global2.b >> (~arg_0.c.d % 32u)), Struct_1(global3.a, 0i, _wgslsmith_f_op_f32(-global3.c), 0u, ~(-1i)), arg_0.c);
    let var_1 = vec4<f32>(global3.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1389f * arg_0.b.c))), _wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global3.c)))));
    var var_2 = arg_0.d;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) + -397f);
    let var_4 = var_0.c;
    return _wgslsmith_div_u32(u_input.e.x, 1u);
}

fn func_2(arg_0: i32) -> i32 {
    global2 = Struct_1(4294967295u, 17609i, global3.c, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.a, 1u, 1u, global2.d)), ~vec4<u32>(0u, global2.a, global2.d, global3.a) << (countOneBits(vec4<u32>(30949u, 10571u, u_input.a, global2.d)) % vec4<u32>(32u))), 1i);
    global3 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.e.xy, ~vec2<u32>(global3.d, global3.a) | vec2<u32>(7183u, 51131u)), 19595u, ~func_3(global1[_wgslsmith_index_u32(abs(global2.a), 32u)])), reverseBits(9192i), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(937f))), global2.c))), _wgslsmith_mult_u32(global2.d, global3.a), ~_wgslsmith_div_i32(-_wgslsmith_mod_i32(global2.e, arg_0), 18276i >> (global2.a % 32u)));
    var var_0 = Struct_1(global3.a, global2.e & u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + 2705f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c, global3.c))), global3.c))), ~u_input.a, global2.b);
    var var_1 = u_input.b;
    global2 = Struct_1(var_0.a, firstTrailingBit(-(~countOneBits(arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, var_0.c, firstTrailingBit(4294967295u) < global3.d)), var_0.c)), ~46437u, -(~min(var_0.e, 6993i)));
    return global2.e;
}

fn func_1() -> i32 {
    var var_0 = max(vec4<i32>(-func_2(global3.e), global2.e, global3.e, -34453i) >> (~vec4<u32>(~u_input.e.x, ~global3.d, ~u_input.a, ~global2.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-(vec4<i32>(global2.b, u_input.c.x, 1i, global3.e) ^ vec4<i32>(u_input.d, global2.e, 0i, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global3.b, 9051i, 51407i), vec4<i32>(3511i, -1i, 0i, global3.b))), vec4<i32>(u_input.d | 1i, global2.e, u_input.d, _wgslsmith_clamp_i32(-1i, 1i, -1i) << (1u % 32u)), select(select(vec4<i32>(u_input.b, -1i, 15485i, 1i), vec4<i32>(-23257i, 1i, u_input.d, global2.b), true), ~vec4<i32>(-7306i, u_input.d, 2147483647i, 0i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(26453u, global2.a, 22472u, 14648u), vec4<u32>(global2.d, u_input.e.x, 14852u, global2.a)) % vec4<u32>(32u)), vec4<bool>(true, 718i <= global2.e, true, all(vec2<bool>(false, true))))));
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(~u_input.e.yx, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.e.zz, vec2<u32>(global3.d, 1u), vec2<u32>(1u, global2.a)), firstTrailingBit(vec2<u32>(0u, 0u)))) & u_input.a, abs(-1i), -1000f, global2.a, max(global2.b, var_0.x));
    var var_1 = global1[_wgslsmith_index_u32(~(~min(24892u, 4294967295u)), 32u)];
    var_1 = global1[_wgslsmith_index_u32(25745u, 32u)];
    var var_2 = global3.d;
    return reverseBits(u_input.d) | _wgslsmith_clamp_i32(func_2(~(-1i) & _wgslsmith_sub_i32(-6680i, global3.b)), u_input.b, _wgslsmith_dot_vec3_i32(max(-u_input.c, select(var_0.xxz, var_0.xxw, vec3<bool>(true, false, true))), max(-vec3<i32>(u_input.c.x, var_0.x, 1i), _wgslsmith_add_vec3_i32(u_input.c, var_0.wwz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(27664u << (_wgslsmith_mult_u32(~min(1u, global2.d), u_input.e.x) % 32u), 37585i, 1165f, ~global2.a, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.e, global2.e, -1i), vec3<i32>(13494i, u_input.b, -53293i)), vec3<i32>(-16490i, global2.e, 9967i))), i32(-1i) * -_wgslsmith_add_i32(-39018i, 0i)));
    var var_0 = Struct_1(global2.d, func_1(), global3.c, 45328u ^ _wgslsmith_div_u32(u_input.a, ~_wgslsmith_clamp_u32(58243u, global3.a, 31677u)), max(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1i), select(global3.b, 17709i, false), global3.e >> (4294967295u % 32u)), reverseBits(u_input.c) ^ ~u_input.c), ~abs(-2147483647i) ^ firstTrailingBit(_wgslsmith_add_i32(-2147483647i, global2.b))));
    var var_1 = u_input.c.x;
    var_0 = Struct_1(~_wgslsmith_sub_u32(firstLeadingBit(~global3.d), max(var_0.d >> (var_0.a % 32u), 1u)), u_input.b, 329f, ~_wgslsmith_add_u32(global2.d, 43069u), -9656i << (select(6135u, ~(~u_input.a), select(true, 47415i >= var_0.e, true)) % 32u));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(min(vec3<u32>(37556u, 47502u, 54989u), vec3<u32>(global2.d, 44806u, global2.d)), u_input.e)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(15463u, 28375u, 1u) ^ vec3<u32>(var_0.a, var_0.d, 13167u), u_input.e))), _wgslsmith_sub_i32(1i, min(u_input.c.x, ~global2.e)) >> ((1u << (abs(firstTrailingBit(4294967295u)) % 32u)) % 32u), -1428f, 63263u, ~func_2(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(~u_input.a >> ((global2.a ^ u_input.a) % 32u))), _wgslsmith_f_op_f32(-global3.c));
}

