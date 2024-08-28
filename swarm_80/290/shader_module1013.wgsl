struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(41424u, Struct_1(466f, vec4<u32>(18778u, 4294967295u, 77449u, 42847u), vec4<f32>(-667f, -323f, -2045f, -491f), vec2<i32>(2147483647i, -69041i)), vec4<f32>(-2005f, -852f, -682f, 482f), Struct_1(-551f, vec4<u32>(21584u, 25627u, 183u, 1u), vec4<f32>(-487f, -544f, 874f, 1650f), vec2<i32>(52408i, 49452i)))), Struct_3(Struct_2(4294967295u, Struct_1(1010f, vec4<u32>(25199u, 4294967295u, 10016u, 15422u), vec4<f32>(1000f, 178f, 157f, -785f), vec2<i32>(16696i, -63250i)), vec4<f32>(1825f, 472f, 1120f, 186f), Struct_1(-122f, vec4<u32>(3949u, 14306u, 4294967295u, 8689u), vec4<f32>(381f, 923f, -684f, 367f), vec2<i32>(1i, 0i)))), Struct_3(Struct_2(4294967295u, Struct_1(-289f, vec4<u32>(1u, 29128u, 1u, 47619u), vec4<f32>(1002f, 1073f, 1026f, 1048f), vec2<i32>(2147483647i, i32(-2147483648))), vec4<f32>(-129f, 1665f, -613f, 1042f), Struct_1(-276f, vec4<u32>(4294967295u, 24402u, 0u, 1443u), vec4<f32>(-1458f, 756f, 747f, 1118f), vec2<i32>(i32(-2147483648), 4429i)))), Struct_3(Struct_2(4294967295u, Struct_1(-131f, vec4<u32>(13407u, 7581u, 18784u, 52149u), vec4<f32>(-242f, -629f, 1000f, 1000f), vec2<i32>(-1i, 3958i)), vec4<f32>(-253f, -327f, 1388f, 1244f), Struct_1(-1288f, vec4<u32>(0u, 1u, 0u, 44150u), vec4<f32>(1131f, 884f, 826f, 868f), vec2<i32>(i32(-2147483648), i32(-2147483648))))), Struct_3(Struct_2(4294967295u, Struct_1(746f, vec4<u32>(1u, 49551u, 1u, 4294967295u), vec4<f32>(1310f, 417f, 833f, 1000f), vec2<i32>(2147483647i, 27137i)), vec4<f32>(-848f, 806f, -352f, -532f), Struct_1(-921f, vec4<u32>(93122u, 4294967295u, 0u, 67959u), vec4<f32>(1413f, 612f, 1871f, -2085f), vec2<i32>(-1i, 1i)))), Struct_3(Struct_2(0u, Struct_1(422f, vec4<u32>(15282u, 24397u, 0u, 33683u), vec4<f32>(-1012f, 910f, -1787f, 111f), vec2<i32>(32743i, 0i)), vec4<f32>(-351f, 777f, -973f, -466f), Struct_1(-784f, vec4<u32>(78623u, 0u, 83954u, 4294967295u), vec4<f32>(-122f, -1521f, 251f, 464f), vec2<i32>(0i, -21824i)))), Struct_3(Struct_2(33805u, Struct_1(-1377f, vec4<u32>(0u, 4294967295u, 68236u, 0u), vec4<f32>(766f, 162f, -1992f, -837f), vec2<i32>(-55420i, 1i)), vec4<f32>(2152f, -824f, 564f, -381f), Struct_1(-1981f, vec4<u32>(19297u, 4294967295u, 46737u, 35136u), vec4<f32>(323f, 1252f, 1000f, 131f), vec2<i32>(2147483647i, -37686i)))), Struct_3(Struct_2(7186u, Struct_1(-624f, vec4<u32>(0u, 0u, 78322u, 1u), vec4<f32>(174f, 838f, 249f, -1315f), vec2<i32>(0i, i32(-2147483648))), vec4<f32>(404f, -185f, -464f, 980f), Struct_1(138f, vec4<u32>(11952u, 350u, 4294967295u, 4294967295u), vec4<f32>(103f, 123f, -1000f, -1793f), vec2<i32>(-1i, -30747i)))), Struct_3(Struct_2(1u, Struct_1(-1423f, vec4<u32>(4294967295u, 27751u, 55333u, 4294967295u), vec4<f32>(402f, 1000f, 2090f, 1646f), vec2<i32>(i32(-2147483648), 1i)), vec4<f32>(917f, -683f, -565f, -1247f), Struct_1(-1220f, vec4<u32>(51742u, 4294967295u, 37638u, 30393u), vec4<f32>(-1319f, -788f, 122f, 416f), vec2<i32>(2041i, i32(-2147483648))))), Struct_3(Struct_2(7748u, Struct_1(-1000f, vec4<u32>(1u, 1u, 35953u, 1u), vec4<f32>(1000f, -1548f, -1109f, 486f), vec2<i32>(1i, 75509i)), vec4<f32>(1447f, 107f, -1022f, -417f), Struct_1(2163f, vec4<u32>(24506u, 16637u, 1u, 29476u), vec4<f32>(397f, -429f, 1054f, 1155f), vec2<i32>(-1184i, 78250i)))), Struct_3(Struct_2(0u, Struct_1(241f, vec4<u32>(3275u, 16362u, 4294967295u, 9348u), vec4<f32>(1091f, -1000f, 1101f, -650f), vec2<i32>(15306i, -1i)), vec4<f32>(397f, 967f, 404f, 1613f), Struct_1(-273f, vec4<u32>(0u, 23977u, 4294967295u, 208u), vec4<f32>(587f, 559f, -397f, 1320f), vec2<i32>(-44203i, 38897i)))), Struct_3(Struct_2(27634u, Struct_1(-255f, vec4<u32>(19237u, 0u, 44187u, 4294967295u), vec4<f32>(1000f, 277f, 1667f, -1030f), vec2<i32>(21461i, -1i)), vec4<f32>(-1121f, 356f, 985f, 1253f), Struct_1(1581f, vec4<u32>(4294967295u, 50674u, 1u, 38523u), vec4<f32>(696f, 1230f, 1183f, -711f), vec2<i32>(-18430i, i32(-2147483648))))), Struct_3(Struct_2(18553u, Struct_1(-1928f, vec4<u32>(22944u, 1u, 55770u, 47706u), vec4<f32>(2116f, 156f, 250f, 219f), vec2<i32>(i32(-2147483648), i32(-2147483648))), vec4<f32>(-345f, -1832f, 1000f, 352f), Struct_1(867f, vec4<u32>(48680u, 12u, 57582u, 76414u), vec4<f32>(-301f, 193f, -1533f, 282f), vec2<i32>(-16356i, -2469i)))), Struct_3(Struct_2(11204u, Struct_1(328f, vec4<u32>(80072u, 24760u, 10728u, 1u), vec4<f32>(132f, 1000f, -161f, -1323f), vec2<i32>(-12910i, i32(-2147483648))), vec4<f32>(-1000f, 3158f, 275f, -1159f), Struct_1(-232f, vec4<u32>(39916u, 36711u, 43028u, 4294967295u), vec4<f32>(1344f, -108f, 1191f, -645f), vec2<i32>(46127i, -13017i)))), Struct_3(Struct_2(1u, Struct_1(1257f, vec4<u32>(30742u, 43456u, 67203u, 0u), vec4<f32>(-829f, -909f, -212f, 240f), vec2<i32>(1i, -1i)), vec4<f32>(1000f, -265f, 183f, 732f), Struct_1(348f, vec4<u32>(19672u, 11603u, 1u, 30994u), vec4<f32>(-524f, 686f, -840f, -1681f), vec2<i32>(-1i, -4184i)))), Struct_3(Struct_2(23408u, Struct_1(1044f, vec4<u32>(0u, 4294967295u, 1u, 31895u), vec4<f32>(1478f, 151f, -979f, -362f), vec2<i32>(4408i, 1i)), vec4<f32>(286f, 1120f, 331f, 763f), Struct_1(115f, vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<f32>(1002f, -618f, -471f, 1086f), vec2<i32>(0i, 15272i)))), Struct_3(Struct_2(0u, Struct_1(1000f, vec4<u32>(1143u, 0u, 64412u, 29381u), vec4<f32>(2956f, -672f, -935f, -568f), vec2<i32>(13482i, -4321i)), vec4<f32>(-1109f, 607f, -1000f, -2062f), Struct_1(-957f, vec4<u32>(45691u, 0u, 56115u, 0u), vec4<f32>(2211f, -929f, 257f, -400f), vec2<i32>(0i, 25558i)))), Struct_3(Struct_2(31082u, Struct_1(486f, vec4<u32>(2726u, 0u, 0u, 1u), vec4<f32>(-994f, -502f, 535f, 136f), vec2<i32>(-12i, 0i)), vec4<f32>(-1949f, 1000f, 187f, 1090f), Struct_1(-1101f, vec4<u32>(24601u, 19865u, 1u, 45364u), vec4<f32>(263f, 386f, 1871f, 346f), vec2<i32>(-1i, 57899i)))), Struct_3(Struct_2(0u, Struct_1(731f, vec4<u32>(18967u, 66213u, 0u, 0u), vec4<f32>(-1398f, -726f, -885f, 1542f), vec2<i32>(43344i, 0i)), vec4<f32>(-1334f, -586f, 590f, -479f), Struct_1(-2089f, vec4<u32>(67409u, 15944u, 1u, 6007u), vec4<f32>(664f, -857f, -1022f, 133f), vec2<i32>(18607i, -62465i)))), Struct_3(Struct_2(16373u, Struct_1(-468f, vec4<u32>(35184u, 1u, 1u, 43212u), vec4<f32>(736f, 571f, 2039f, 1111f), vec2<i32>(9568i, 17968i)), vec4<f32>(-1775f, -1516f, 475f, 700f), Struct_1(140f, vec4<u32>(10239u, 76242u, 4294967295u, 77655u), vec4<f32>(-619f, 667f, -1329f, -113f), vec2<i32>(15972i, 0i)))), Struct_3(Struct_2(1u, Struct_1(-761f, vec4<u32>(1880u, 35152u, 4442u, 6294u), vec4<f32>(-1873f, -1648f, 776f, 1000f), vec2<i32>(2147483647i, 0i)), vec4<f32>(281f, -1480f, 1137f, 311f), Struct_1(478f, vec4<u32>(51014u, 67910u, 30130u, 0u), vec4<f32>(808f, 992f, 1000f, -1578f), vec2<i32>(0i, i32(-2147483648))))), Struct_3(Struct_2(44750u, Struct_1(1000f, vec4<u32>(0u, 0u, 60831u, 4294967295u), vec4<f32>(1499f, 1228f, 1104f, -1194f), vec2<i32>(i32(-2147483648), -1i)), vec4<f32>(-125f, 889f, 2437f, -1347f), Struct_1(1055f, vec4<u32>(1u, 0u, 41985u, 5477u), vec4<f32>(1043f, 833f, 1495f, -632f), vec2<i32>(2147483647i, 2147483647i)))));

var<private> global1: array<u32, 25> = array<u32, 25>(47390u, 11538u, 4294967295u, 31970u, 8205u, 10887u, 0u, 97993u, 4294967295u, 15054u, 41291u, 6976u, 61089u, 0u, 30183u, 27532u, 0u, 0u, 1u, 29901u, 4294967295u, 4294967295u, 0u, 4294967295u, 73857u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<f32> {
    global1 = array<u32, 25>();
    let var_0 = ~reverseBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-36821i, arg_1.b.d.x), vec2<i32>(-8054i, arg_1.b.d.x), vec2<i32>(u_input.a.x, u_input.a.x)) ^ vec2<i32>(1i, u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), arg_0.x) - arg_1.d.c.zz)));
    global0 = array<Struct_3, 22>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1321f, _wgslsmith_f_op_f32(var_1.x + var_1.x), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2272f * arg_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1287f)))));
    return _wgslsmith_f_op_vec4_f32(-arg_1.c);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> f32 {
    global1 = array<u32, 25>();
    return 850f;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> vec2<bool> {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_4(!(!((24653u < arg_0) & all(vec3<bool>(false, false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-922f, 640f)) + -112f)), ~(~_wgslsmith_sub_vec4_u32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<f32>(-1380f, -1000f, 245f), Struct_2(48909u, Struct_1(1584f, u_input.c, vec4<f32>(-739f, -939f, 1334f, 344f), vec2<i32>(arg_1.x, u_input.a.x)), vec4<f32>(-666f, -1610f, 262f, 572f), Struct_1(456f, u_input.c, vec4<f32>(-916f, 310f, 818f, -1422f), vec2<i32>(-1i, u_input.a.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1290f, -1403f, -467f, 2719f) + vec4<f32>(-820f, 754f, 1400f, -400f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1577f, 1820f, -1158f, -332f))) * vec4<f32>(-603f, -1359f, -401f, 1109f)))), arg_1.yy), u_input.a.x, ~(~_wgslsmith_mult_u32(~4294967295u, 48476u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1288f), _wgslsmith_f_op_f32(max(var_0.b.a, 214f)), Struct_4(true, var_0.b, var_0.c, u_input.c.x)))), true)), _wgslsmith_f_op_f32(func_3(countOneBits(54013i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.b.c.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)))), var_0)));
    var var_2 = !select(select(vec4<bool>(true, arg_2 >= 6702u, true, true), !(!vec4<bool>(var_0.a, var_0.a, false, true)), !select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, false, false))), !vec4<bool>(var_0.a, all(vec4<bool>(var_0.a, true, false, var_0.a)), !var_0.a, all(vec2<bool>(var_0.a, true))), select(!select(vec4<bool>(true, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, true, true), var_0.a), vec4<bool>(true, false, -652f <= var_0.b.c.x, select(false, var_0.a, var_0.a)), _wgslsmith_f_op_f32(step(1000f, var_0.b.a)) >= _wgslsmith_div_f32(var_1, 698f)));
    var var_3 = Struct_3(Struct_2(~(~abs(45579u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-6707i, var_1, var_1, var_0)) - _wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_sub_vec4_u32(u_input.c, select(vec4<u32>(var_0.b.b.x, var_0.d, 38330u, global1[_wgslsmith_index_u32(var_0.b.b.x, 25u)]), u_input.c, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(734f, -1867f, var_1, 127f))), min(~var_0.b.d, vec2<i32>(0i, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-var_0.b.c), var_0.b));
    return vec2<bool>(!(!(!(var_2.x && false))), !(max(43582u, ~var_3.a.b.b.x) <= arg_0));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>) -> bool {
    global0 = array<Struct_3, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1790f * _wgslsmith_div_f32(arg_0.b.a, arg_0.b.c.x)) + _wgslsmith_f_op_f32(-arg_0.b.c.x)))), ~_wgslsmith_sub_vec4_u32(~(~u_input.c), ~u_input.c), _wgslsmith_f_op_vec4_f32(select(arg_0.b.c, vec4<f32>(_wgslsmith_f_op_f32(sign(-154f)), _wgslsmith_f_op_f32(arg_0.b.c.x * arg_0.b.c.x), -786f, _wgslsmith_div_f32(-485f, _wgslsmith_f_op_f32(-arg_0.b.c.x))), !(!vec4<bool>(arg_1.x, true, arg_0.a, arg_1.x)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), max(1i, u_input.a.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1653i, 23424i, 1i), vec3<i32>(arg_0.c, u_input.a.x, u_input.a.x)), -2147483647i)));
    var var_1 = -_wgslsmith_dot_vec2_i32(abs(u_input.a.xy), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-6639i, -24677i), vec2<i32>(1i, -12607i))), select(var_0.d.x, u_input.a.x, var_0.c.x < arg_0.b.a)));
    let var_2 = vec4<u32>(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b & (arg_0.d >> (4294967295u % 32u)), 25u)], 25u)]), _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(u_input.e, _wgslsmith_sub_u32(42038u, arg_0.b.b.x))), 0u), max(_wgslsmith_mult_u32(var_0.b.x, u_input.b), firstLeadingBit(~(global1[_wgslsmith_index_u32(arg_0.d, 25u)] >> (10516u % 32u)))), 60637u);
    let var_3 = Struct_3(Struct_2(~39112u, arg_0.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, arg_0.b.a, 1187f, arg_0.b.a)), vec4<f32>(var_0.a, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.a), select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(arg_0.a, true, arg_0.a, arg_1.x), false))))), Struct_1(838f, var_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(var_0.c, vec4<f32>(1159f, arg_0.b.a, 1378f, -1046f))))), _wgslsmith_sub_vec2_i32(u_input.a.zw, _wgslsmith_sub_vec2_i32(vec2<i32>(30045i, u_input.a.x), vec2<i32>(-4486i, 2147483647i))))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.c.yz);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(567f, 549f, -310f) - vec3<f32>(-874f, -331f, -1366f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, -3166f, -439f) + vec3<f32>(986f, -727f, -2316f)))))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = !vec2<bool>(!any(vec3<bool>(true, false, true)), !(426f < _wgslsmith_f_op_f32(var_2 * -996f)));
    var var_4 = all(!(!(!vec3<bool>(var_3.x, var_3.x, var_3.x))));
    let var_5 = vec4<bool>(func_4(Struct_4(true, Struct_1(_wgslsmith_div_f32(1000f, var_2), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 41923u, 4294967295u, var_0.x), vec4<f32>(var_1.x, var_2, 1815f, 307f), vec2<i32>(0i, u_input.a.x)), u_input.a.x, _wgslsmith_mult_u32(~var_0.x, 1u)), func_1(global1[_wgslsmith_index_u32(1u, 25u)], max(vec4<i32>(-52002i, u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_add_vec4_i32(u_input.a, u_input.a)), 13314u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 16289u), 25u)], 25u)])), var_3.x, any(select(!vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(var_3.x, var_3.x, true, true), vec4<bool>(false, var_3.x, var_3.x, false), false), vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<bool>(var_3.x, var_3.x, false, true)))), false);
    var var_6 = var_2;
    var var_7 = u_input.a.zyx;
    let x = u_input.a;
    s_output = StorageBuffer(~27549u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_2 + -254f), _wgslsmith_f_op_f32(var_1.x - var_2), -1796f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, -441f), vec3<f32>(-440f, 750f, -1755f), var_5.xwx)))))));
}

