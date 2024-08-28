struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(1029f, false, Struct_2(70271u, vec4<bool>(false, true, true, true), vec3<f32>(-699f, 189f, 1614f), Struct_1(-1369f, 52878i, vec3<f32>(1000f, -1000f, -938f)), 3318u), 1339f, Struct_1(-949f, 4048i, vec3<f32>(389f, -283f, -1629f))), Struct_3(-1660f, true, Struct_2(85372u, vec4<bool>(false, true, true, false), vec3<f32>(-1039f, -2268f, -915f), Struct_1(-1380f, 12474i, vec3<f32>(381f, 672f, 1882f)), 4294967295u), 1409f, Struct_1(-1001f, -1i, vec3<f32>(-1000f, 1176f, -398f))), Struct_3(1000f, false, Struct_2(3378u, vec4<bool>(false, true, false, false), vec3<f32>(-499f, -396f, 880f), Struct_1(105f, 2147483647i, vec3<f32>(1381f, 983f, -789f)), 54586u), -2083f, Struct_1(916f, -1i, vec3<f32>(-123f, -1039f, 268f))), Struct_3(2079f, true, Struct_2(88537u, vec4<bool>(true, false, false, false), vec3<f32>(-714f, 610f, 541f), Struct_1(1730f, 0i, vec3<f32>(-915f, -924f, 594f)), 0u), 1070f, Struct_1(-952f, 31996i, vec3<f32>(-1687f, 1000f, 2031f))), Struct_3(1271f, false, Struct_2(1u, vec4<bool>(true, true, true, true), vec3<f32>(-1517f, -2012f, 1526f), Struct_1(-1630f, 4893i, vec3<f32>(959f, -292f, -470f)), 0u), -1367f, Struct_1(950f, -1i, vec3<f32>(-736f, -3357f, 2029f))), Struct_3(-837f, true, Struct_2(0u, vec4<bool>(true, false, false, false), vec3<f32>(-1296f, 634f, 812f), Struct_1(-1695f, 30240i, vec3<f32>(1306f, -416f, -981f)), 0u), 282f, Struct_1(295f, 2147483647i, vec3<f32>(-668f, 191f, 1000f))), Struct_3(-1051f, false, Struct_2(6495u, vec4<bool>(false, true, true, true), vec3<f32>(1000f, -890f, -308f), Struct_1(814f, 0i, vec3<f32>(-543f, -1000f, 1807f)), 1u), -145f, Struct_1(-123f, 2147483647i, vec3<f32>(603f, -1279f, -1239f))), Struct_3(-1000f, true, Struct_2(45326u, vec4<bool>(true, false, false, false), vec3<f32>(589f, -1280f, -413f), Struct_1(1746f, 8236i, vec3<f32>(-245f, -729f, -337f)), 0u), 605f, Struct_1(-1810f, 1i, vec3<f32>(-1186f, 1000f, -1348f))), Struct_3(-643f, false, Struct_2(0u, vec4<bool>(false, false, true, false), vec3<f32>(778f, -299f, 1571f), Struct_1(-1627f, -42991i, vec3<f32>(1000f, -1000f, -1666f)), 41870u), -1360f, Struct_1(229f, 0i, vec3<f32>(-157f, 486f, -163f))), Struct_3(494f, false, Struct_2(14195u, vec4<bool>(true, true, false, false), vec3<f32>(151f, 1898f, -1031f), Struct_1(-944f, i32(-2147483648), vec3<f32>(2152f, -1050f, -1089f)), 1u), 1753f, Struct_1(1000f, 1i, vec3<f32>(-1300f, 1967f, 287f))), Struct_3(-748f, true, Struct_2(42833u, vec4<bool>(false, true, true, true), vec3<f32>(-2726f, -410f, -569f), Struct_1(-488f, 2147483647i, vec3<f32>(884f, 488f, 271f)), 1u), -481f, Struct_1(-322f, 13866i, vec3<f32>(-152f, 1732f, -409f))), Struct_3(1081f, true, Struct_2(23058u, vec4<bool>(false, false, false, true), vec3<f32>(2882f, 578f, -509f), Struct_1(272f, -17649i, vec3<f32>(-1273f, 1000f, 686f)), 4294967295u), 349f, Struct_1(1724f, -7140i, vec3<f32>(-635f, -425f, -519f))), Struct_3(-1549f, true, Struct_2(47602u, vec4<bool>(false, true, false, false), vec3<f32>(1066f, -473f, -1177f), Struct_1(-1000f, 40023i, vec3<f32>(1224f, -175f, -1207f)), 84958u), 1838f, Struct_1(-117f, 1i, vec3<f32>(-1000f, 2118f, -424f))), Struct_3(-905f, false, Struct_2(0u, vec4<bool>(false, false, true, false), vec3<f32>(-768f, -566f, -1000f), Struct_1(-1605f, 2147483647i, vec3<f32>(596f, 462f, 386f)), 4294967295u), -1025f, Struct_1(1000f, i32(-2147483648), vec3<f32>(-1000f, -696f, 1379f))), Struct_3(-1942f, false, Struct_2(27823u, vec4<bool>(true, false, false, false), vec3<f32>(-613f, 585f, 469f), Struct_1(1000f, 1i, vec3<f32>(1234f, -128f, 1000f)), 45247u), -180f, Struct_1(230f, -7306i, vec3<f32>(1357f, 931f, 901f))), Struct_3(203f, true, Struct_2(4294967295u, vec4<bool>(false, false, false, true), vec3<f32>(-1252f, 581f, 562f), Struct_1(-722f, 0i, vec3<f32>(1000f, -1553f, 1471f)), 4294967295u), -388f, Struct_1(-244f, 19385i, vec3<f32>(518f, 1279f, 494f))), Struct_3(-1132f, false, Struct_2(4294967295u, vec4<bool>(true, true, true, true), vec3<f32>(1386f, 161f, -1419f), Struct_1(-1070f, -14623i, vec3<f32>(887f, 509f, -1439f)), 1u), 553f, Struct_1(-675f, -81771i, vec3<f32>(1057f, -964f, 162f))), Struct_3(-546f, false, Struct_2(0u, vec4<bool>(false, false, false, false), vec3<f32>(-929f, -112f, -175f), Struct_1(-505f, 2147483647i, vec3<f32>(-1443f, 1000f, 1000f)), 40123u), -1186f, Struct_1(620f, -2109i, vec3<f32>(135f, -641f, 147f))));

var<private> global1: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec2<i32>(60173i, -32684i), vec2<u32>(94360u, 0u), false, 2044f), Struct_5(vec2<i32>(-63202i, 78935i), vec2<u32>(829u, 7697u), false, 468f), Struct_5(vec2<i32>(11160i, 9845i), vec2<u32>(0u, 32604u), false, 288f), Struct_5(vec2<i32>(49304i, 16651i), vec2<u32>(72916u, 4294967295u), true, -1029f), Struct_5(vec2<i32>(-62371i, -56520i), vec2<u32>(1u, 4294967295u), true, 758f), Struct_5(vec2<i32>(-1i, 2147483647i), vec2<u32>(38355u, 4294967295u), false, -388f), Struct_5(vec2<i32>(5933i, 34909i), vec2<u32>(39942u, 37040u), true, -270f), Struct_5(vec2<i32>(-33358i, i32(-2147483648)), vec2<u32>(0u, 85991u), true, 1832f), Struct_5(vec2<i32>(1i, i32(-2147483648)), vec2<u32>(33446u, 0u), true, 1841f), Struct_5(vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(1u, 0u), false, -1949f), Struct_5(vec2<i32>(-50127i, 0i), vec2<u32>(4294967295u, 1u), false, 1725f), Struct_5(vec2<i32>(1i, 2147483647i), vec2<u32>(14858u, 0u), true, -1357f), Struct_5(vec2<i32>(-1i, 0i), vec2<u32>(1u, 12921u), false, -695f), Struct_5(vec2<i32>(7910i, -30922i), vec2<u32>(1u, 1u), false, 162f), Struct_5(vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(1u, 1u), true, -1038f), Struct_5(vec2<i32>(0i, 5618i), vec2<u32>(0u, 33375u), false, -327f), Struct_5(vec2<i32>(2147483647i, 4643i), vec2<u32>(1u, 4294967295u), false, -1511f), Struct_5(vec2<i32>(2147483647i, -14556i), vec2<u32>(1u, 74462u), true, 162f), Struct_5(vec2<i32>(i32(-2147483648), -1i), vec2<u32>(1159u, 113350u), true, -520f), Struct_5(vec2<i32>(-1i, 17232i), vec2<u32>(4294967295u, 15834u), true, 398f), Struct_5(vec2<i32>(-1i, -41931i), vec2<u32>(4294967295u, 4294967295u), false, -1042f), Struct_5(vec2<i32>(7838i, i32(-2147483648)), vec2<u32>(52593u, 28252u), true, -1899f), Struct_5(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(4201u, 0u), false, -2753f), Struct_5(vec2<i32>(6151i, 54030i), vec2<u32>(19636u, 54042u), false, -446f), Struct_5(vec2<i32>(2147483647i, 1i), vec2<u32>(55728u, 77096u), false, 625f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 18>();
    let var_0 = !any(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_clamp_i32(abs(0i), -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.c, u_input.c | u_input.c), vec2<i32>(u_input.c.x >> (u_input.e % 32u), 0i))), vec3<f32>(422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f - _wgslsmith_f_op_f32(floor(-645f))) * _wgslsmith_f_op_f32(ceil(1066f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_1 = Struct_1(684f, u_input.d, _wgslsmith_f_op_vec3_f32(-var_1.c));
    var var_2 = _wgslsmith_f_op_f32(round(var_1.c.x));
    return var_1.a;
}

fn func_2() -> u32 {
    var var_0 = select(select(select(vec3<bool>(true, false, any(vec3<bool>(false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(all(vec2<bool>(false, false)), true, u_input.b >= 4294967295u)), vec3<bool>(false, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false)), true == any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(245f, -1351f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1445f + 127f))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)) || false), vec3<bool>(true, all(vec2<bool>(all(vec4<bool>(false, false, false, false)), true)), any(vec4<bool>(false, false, false, false)) | true));
    global0 = array<Struct_3, 18>();
    var var_1 = reverseBits(~(-vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, 24661i) >> (~vec4<u32>(u_input.a, 38065u, u_input.a, 5390u) % vec4<u32>(32u))));
    let var_2 = vec2<u32>(u_input.e ^ 84638u, ~0u);
    var_0 = !(!(!vec3<bool>(var_0.x, select(true, var_0.x, var_0.x), true)));
    return ~(~0u);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1133f, 521f)), -851f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(797f * -1994f)), false)), -reverseBits(_wgslsmith_add_i32(-10512i, u_input.c.x)) ^ u_input.c.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-469f, -512f, 669f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1060f, -135f, 1472f), vec3<f32>(-1197f, 742f, -226f))))))));
    global1 = array<Struct_5, 25>();
    var var_1 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, 26908u, u_input.e, u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(53723u, u_input.b, u_input.b, 30372u), vec4<u32>(u_input.b, 4294967295u, u_input.b, 0u)) % vec4<u32>(32u))), countOneBits(firstTrailingBit(~vec4<u32>(41564u, u_input.a, u_input.a, u_input.b)))) >> (_wgslsmith_mod_u32(func_2(), 4294967295u) % 32u);
    var var_2 = select(vec4<u32>(u_input.b, ~(~u_input.b), 1u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35191u, 1u, 0u, 1u), vec4<u32>(17244u, u_input.a, u_input.e, 1u)), _wgslsmith_mod_u32(u_input.b, 4294967295u), ~u_input.e, _wgslsmith_add_u32(0u, 4294967295u)), ~vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b)) | ((countOneBits(vec4<u32>(1u, 14810u, u_input.a, 0u)) | firstLeadingBit(vec4<u32>(0u, u_input.b, u_input.e, 41562u))) ^ select(~vec4<u32>(27629u, 4294967295u, u_input.e, 4294967295u), vec4<u32>(u_input.a, 35175u, 4294967295u, 4294967295u) >> (vec4<u32>(1u, 7081u, u_input.a, u_input.e) % vec4<u32>(32u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true))), !vec4<bool>(!all(vec3<bool>(false, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true, !(var_0.b <= u_input.d)));
    let var_3 = vec2<i32>(max(-2147483647i, abs(var_0.b)), firstLeadingBit(_wgslsmith_mod_i32(23552i, min(var_0.b, -35149i) >> (_wgslsmith_clamp_u32(1u, u_input.b, 67610u) % 32u))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(reverseBits(u_input.d), _wgslsmith_sub_i32(2147483647i, u_input.c.x));
    let var_1 = u_input.e | (_wgslsmith_add_u32(u_input.e, func_1()) >> (_wgslsmith_mod_u32(u_input.e, func_2()) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(572f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-640f, 1008f)))), true)), ~(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, -602f, 1001f) + vec3<f32>(-253f, -1000f, 980f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1258f, -1000f, 184f)))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -538f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a)))), !(var_1 > u_input.a), Struct_2(u_input.e, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec3<f32>(_wgslsmith_div_f32(var_2.c.x, var_2.a), _wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(exp2(var_2.c.x))), Struct_1(576f, _wgslsmith_sub_i32(u_input.d, -11355i), var_2.c), ~45063u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * -1250f), 1i, var_2.c)), abs(~u_input.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.c.x)) * var_2.c.x), firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(52433i, 2147483647i, -7320i), vec3<i32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x - 468f), _wgslsmith_f_op_f32(abs(-579f)), _wgslsmith_f_op_f32(exp2(var_2.a))))));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f * 1000f)))), 1000f, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1, 12845u), var_3.a.c.a), 33701u), ~vec4<u32>(~var_3.a.c.e, ~30170u, _wgslsmith_div_u32(~48820u, _wgslsmith_dot_vec2_u32(vec2<u32>(89019u, u_input.e), vec2<u32>(u_input.e, 91884u))), _wgslsmith_div_u32(u_input.a, var_1) & 4294967295u), min(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.c.e, var_1, var_3.a.c.a, 4294967295u), vec4<u32>(var_1, 0u, 0u, 27745u)), vec4<u32>(5132u & u_input.e, var_1, 0u, abs(1u))), ~(select(vec4<u32>(61067u, 1u, u_input.a, var_1), vec4<u32>(var_3.b, 1u, var_3.a.c.a, u_input.b), vec4<bool>(false, true, var_3.a.b, var_3.a.b)) ^ vec4<u32>(var_3.a.c.a, u_input.a, var_1, var_3.a.c.a))));
}

