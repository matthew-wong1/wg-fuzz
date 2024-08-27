struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(vec4<u32>(36276u, 7350u, 0u, 4294967295u), Struct_1(vec2<f32>(-976f, 273f), i32(-2147483648), vec2<f32>(908f, 733f), 823f), 1u, vec2<i32>(2325i, 75484i), vec4<bool>(true, true, false, true)), vec3<f32>(1678f, 802f, 1820f), 1u, Struct_2(vec4<u32>(78961u, 18466u, 0u, 945u), Struct_1(vec2<f32>(1486f, -349f), -1i, vec2<f32>(586f, 1025f), 130f), 2159u, vec2<i32>(-7112i, 2147483647i), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(vec4<u32>(0u, 0u, 1u, 1u), Struct_1(vec2<f32>(1954f, 337f), i32(-2147483648), vec2<f32>(-443f, -198f), -704f), 0u, vec2<i32>(-1i, 15993i), vec4<bool>(false, false, false, false)), vec3<f32>(1034f, -778f, 1000f), 4294967295u, Struct_2(vec4<u32>(47504u, 1u, 26712u, 19133u), Struct_1(vec2<f32>(-1669f, 286f), 32275i, vec2<f32>(-2200f, -334f), 1114f), 2109u, vec2<i32>(7016i, 54163i), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(vec4<u32>(92947u, 4294967295u, 0u, 4294967295u), Struct_1(vec2<f32>(740f, 207f), -741i, vec2<f32>(888f, -851f), -636f), 49907u, vec2<i32>(1i, 1i), vec4<bool>(false, false, false, true)), vec3<f32>(195f, 223f, -614f), 83505u, Struct_2(vec4<u32>(4294967295u, 28829u, 56452u, 74734u), Struct_1(vec2<f32>(-1013f, -1000f), 2147483647i, vec2<f32>(-1277f, 382f), 1295f), 43041u, vec2<i32>(46668i, 3836i), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(vec4<u32>(85579u, 4294967295u, 0u, 1u), Struct_1(vec2<f32>(653f, 230f), 0i, vec2<f32>(1318f, -649f), 1487f), 4893u, vec2<i32>(-1i, 27582i), vec4<bool>(false, false, false, true)), vec3<f32>(989f, -650f, 1157f), 34634u, Struct_2(vec4<u32>(4294967295u, 1u, 66117u, 4294967295u), Struct_1(vec2<f32>(326f, -1562f), -1i, vec2<f32>(-826f, 780f), -1176f), 1891u, vec2<i32>(i32(-2147483648), -27977i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(vec4<u32>(4294967295u, 2725u, 110079u, 0u), Struct_1(vec2<f32>(-1000f, -1830f), i32(-2147483648), vec2<f32>(-265f, -2460f), 2493f), 0u, vec2<i32>(2147483647i, 1i), vec4<bool>(false, true, false, false)), vec3<f32>(-497f, -1007f, 657f), 4294967295u, Struct_2(vec4<u32>(1u, 68413u, 68526u, 1u), Struct_1(vec2<f32>(493f, -894f), 2147483647i, vec2<f32>(-1771f, 1032f), -1208f), 1u, vec2<i32>(1i, 1668i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(vec4<u32>(64404u, 0u, 0u, 42701u), Struct_1(vec2<f32>(983f, 575f), 2147483647i, vec2<f32>(-524f, 1163f), -372f), 4294967295u, vec2<i32>(-12462i, -40032i), vec4<bool>(true, false, true, true)), vec3<f32>(1773f, -584f, -1000f), 4294967295u, Struct_2(vec4<u32>(0u, 1u, 19818u, 0u), Struct_1(vec2<f32>(-980f, -590f), -18795i, vec2<f32>(502f, 346f), 806f), 4294967295u, vec2<i32>(58620i, 2147483647i), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(vec4<u32>(1u, 0u, 56391u, 20826u), Struct_1(vec2<f32>(-751f, 1115f), -12524i, vec2<f32>(647f, -1298f), -702f), 0u, vec2<i32>(-1i, 1i), vec4<bool>(true, false, false, true)), vec3<f32>(820f, -892f, 1103f), 0u, Struct_2(vec4<u32>(70614u, 69987u, 1u, 36965u), Struct_1(vec2<f32>(1399f, -337f), 1i, vec2<f32>(143f, -125f), 757f), 28344u, vec2<i32>(49888i, -1i), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(vec4<u32>(0u, 1u, 66297u, 30949u), Struct_1(vec2<f32>(641f, 1000f), -1i, vec2<f32>(-537f, -421f), -430f), 4294967295u, vec2<i32>(-1i, -20853i), vec4<bool>(true, false, true, true)), vec3<f32>(-1152f, -544f, 921f), 4294967295u, Struct_2(vec4<u32>(1u, 154980u, 1u, 40099u), Struct_1(vec2<f32>(1494f, -1083f), 25711i, vec2<f32>(186f, -1669f), 173f), 0u, vec2<i32>(41786i, 1548i), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(vec4<u32>(0u, 44541u, 22578u, 93152u), Struct_1(vec2<f32>(1199f, 597f), -50144i, vec2<f32>(-1170f, 1022f), 1155f), 3960u, vec2<i32>(2147483647i, 48462i), vec4<bool>(true, true, false, true)), vec3<f32>(1307f, 1167f, 1000f), 0u, Struct_2(vec4<u32>(37882u, 52806u, 0u, 0u), Struct_1(vec2<f32>(-156f, 216f), -63096i, vec2<f32>(-915f, 1000f), -479f), 0u, vec2<i32>(-28562i, 1i), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(vec4<u32>(15583u, 2683u, 1u, 1u), Struct_1(vec2<f32>(352f, 1000f), 45846i, vec2<f32>(1067f, -568f), 172f), 37631u, vec2<i32>(1i, -1i), vec4<bool>(true, true, true, false)), vec3<f32>(698f, -465f, -1625f), 4294967295u, Struct_2(vec4<u32>(48707u, 6135u, 0u, 0u), Struct_1(vec2<f32>(213f, 199f), 18314i, vec2<f32>(-1293f, -1000f), -473f), 1u, vec2<i32>(-24089i, i32(-2147483648)), vec4<bool>(true, true, false, true))), Struct_3(Struct_2(vec4<u32>(46089u, 80336u, 1u, 1u), Struct_1(vec2<f32>(253f, 864f), 2856i, vec2<f32>(2314f, -130f), 279f), 25802u, vec2<i32>(1i, i32(-2147483648)), vec4<bool>(false, false, false, true)), vec3<f32>(-441f, -1225f, -480f), 18113u, Struct_2(vec4<u32>(1u, 0u, 10610u, 4294967295u), Struct_1(vec2<f32>(1387f, -902f), i32(-2147483648), vec2<f32>(1244f, 495f), 913f), 31452u, vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, true, false, true))), Struct_3(Struct_2(vec4<u32>(25804u, 1u, 92079u, 15345u), Struct_1(vec2<f32>(244f, -560f), 39162i, vec2<f32>(866f, 539f), -662f), 11288u, vec2<i32>(i32(-2147483648), -1i), vec4<bool>(true, true, true, true)), vec3<f32>(200f, -2259f, -408f), 0u, Struct_2(vec4<u32>(84319u, 14826u, 18436u, 10809u), Struct_1(vec2<f32>(-552f, 751f), -23623i, vec2<f32>(574f, 1007f), 134f), 0u, vec2<i32>(i32(-2147483648), 35188i), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(vec4<u32>(1u, 1906u, 8514u, 0u), Struct_1(vec2<f32>(574f, -2022f), 2147483647i, vec2<f32>(-163f, -1716f), 1000f), 0u, vec2<i32>(2147483647i, 11264i), vec4<bool>(true, false, false, false)), vec3<f32>(534f, -1934f, -657f), 0u, Struct_2(vec4<u32>(66166u, 4294967295u, 1u, 18950u), Struct_1(vec2<f32>(-683f, 1217f), 1i, vec2<f32>(1159f, 1000f), -1494f), 80109u, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(vec4<u32>(78546u, 4294967295u, 19431u, 1u), Struct_1(vec2<f32>(1431f, -379f), 1858i, vec2<f32>(-952f, -935f), -748f), 0u, vec2<i32>(-1828i, -1i), vec4<bool>(true, false, true, false)), vec3<f32>(1166f, 1388f, -1000f), 0u, Struct_2(vec4<u32>(0u, 5004u, 26638u, 33242u), Struct_1(vec2<f32>(674f, 290f), -11784i, vec2<f32>(359f, 183f), -1460f), 0u, vec2<i32>(-72605i, 7288i), vec4<bool>(false, true, true, false))), Struct_3(Struct_2(vec4<u32>(4294967295u, 29758u, 4294967295u, 25904u), Struct_1(vec2<f32>(-489f, 1582f), i32(-2147483648), vec2<f32>(1081f, -192f), 155f), 25202u, vec2<i32>(-1i, 26136i), vec4<bool>(true, false, false, true)), vec3<f32>(-2329f, -875f, -1000f), 40275u, Struct_2(vec4<u32>(1u, 1u, 24186u, 4047u), Struct_1(vec2<f32>(-736f, 637f), 73521i, vec2<f32>(-535f, 314f), 559f), 1u, vec2<i32>(-20595i, i32(-2147483648)), vec4<bool>(true, false, true, false))), Struct_3(Struct_2(vec4<u32>(9345u, 0u, 59700u, 0u), Struct_1(vec2<f32>(2486f, -172f), 0i, vec2<f32>(-307f, 495f), -881f), 149034u, vec2<i32>(1i, 14688i), vec4<bool>(true, true, true, true)), vec3<f32>(197f, -1001f, -836f), 25917u, Struct_2(vec4<u32>(36758u, 38509u, 4294967295u, 34352u), Struct_1(vec2<f32>(-2227f, -1559f), 1i, vec2<f32>(-1036f, 410f), -519f), 1u, vec2<i32>(0i, 1i), vec4<bool>(false, false, false, false))), Struct_3(Struct_2(vec4<u32>(4294967295u, 25619u, 1u, 28300u), Struct_1(vec2<f32>(325f, -784f), 1i, vec2<f32>(1787f, 1905f), -183f), 4294967295u, vec2<i32>(2147483647i, 39567i), vec4<bool>(true, false, false, false)), vec3<f32>(1000f, 443f, -1207f), 1u, Struct_2(vec4<u32>(0u, 4294967295u, 40064u, 1u), Struct_1(vec2<f32>(-670f, 706f), -25899i, vec2<f32>(-194f, 939f), -669f), 12002u, vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, true, true))), Struct_3(Struct_2(vec4<u32>(78751u, 11867u, 0u, 4294967295u), Struct_1(vec2<f32>(313f, 472f), 200i, vec2<f32>(1000f, -211f), -907f), 14016u, vec2<i32>(2147483647i, 85077i), vec4<bool>(true, false, false, true)), vec3<f32>(-399f, -934f, -1000f), 34711u, Struct_2(vec4<u32>(29995u, 17714u, 4294967295u, 1u), Struct_1(vec2<f32>(-1007f, 456f), 0i, vec2<f32>(879f, 437f), -1183f), 15311u, vec2<i32>(-46439i, -102808i), vec4<bool>(true, false, false, true))), Struct_3(Struct_2(vec4<u32>(4294967295u, 15498u, 4294967295u, 48555u), Struct_1(vec2<f32>(-588f, 1078f), -39022i, vec2<f32>(-1050f, 879f), 360f), 0u, vec2<i32>(-1i, 20232i), vec4<bool>(true, true, true, true)), vec3<f32>(-1000f, 589f, -740f), 20821u, Struct_2(vec4<u32>(4700u, 48401u, 1u, 22962u), Struct_1(vec2<f32>(828f, -573f), 0i, vec2<f32>(1000f, 322f), 343f), 4294967295u, vec2<i32>(-1i, 1i), vec4<bool>(false, false, true, false))));

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, false, false, true, false, true);

var<private> global2: i32 = 44433i;

var<private> global3: vec2<bool>;

var<private> global4: array<u32, 29> = array<u32, 29>(0u, 11959u, 0u, 1u, 21616u, 4294967295u, 1u, 38786u, 4294967295u, 38060u, 44889u, 39994u, 1u, 24765u, 4294967295u, 0u, 4294967295u, 1u, 1u, 65088u, 4294967295u, 4294967295u, 4294967295u, 49442u, 117623u, 4294967295u, 13521u, 16134u, 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = true;
    var var_2 = arg_0.a.d.b;
    global0 = array<Struct_3, 19>();
    var_0 = Struct_3(Struct_2(select(min(vec4<u32>(arg_0.a.c, 37749u, 0u, arg_0.a.d.c), arg_0.a.d.a) >> (~vec4<u32>(14270u, 14423u, var_0.c, arg_3) % vec4<u32>(32u)), ~max(vec4<u32>(arg_3, 0u, arg_0.a.a.c, 4294967295u), vec4<u32>(arg_2.a.d.a.x, arg_3, 0u, 4294967295u)), var_0.a.e), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, arg_2.a.d.b.d), var_2.c, global1[_wgslsmith_index_u32(79949u, 7u)])) * var_0.b.xy), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-24810i, arg_0.a.d.d.x, 6958i)), arg_0.a.d.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, 1062f))), _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_mod_u32(firstLeadingBit(arg_3), arg_2.a.a.a.x), _wgslsmith_div_vec2_i32(abs(~arg_0.a.d.d), vec2<i32>(-var_2.b, arg_0.a.d.b.b)), !arg_0.a.a.e), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(-var_0.d.b.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.d), arg_0.a.b.x))), _wgslsmith_sub_u32(min(14016u, 1085u), ~var_0.c), Struct_2(select((var_0.a.a & vec4<u32>(0u, var_0.c, 0u, var_0.c)) & ~vec4<u32>(arg_3, var_0.a.c, 1u, global4[_wgslsmith_index_u32(arg_2.a.d.c, 29u)]), countOneBits(arg_0.a.d.a | arg_0.a.a.a), var_0.a.e), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.d.b.a)), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-var_0.d.b.a), 139f), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.a.a.a.zw, ~var_0.d.a.xx), min(~vec2<u32>(13053u, 4294967295u), firstTrailingBit(arg_2.a.a.a.wy))), -select(vec2<i32>(var_2.b, u_input.d), -vec2<i32>(arg_0.a.a.b.b, u_input.d), arg_0.a.d.e.yw), !vec4<bool>(true, arg_0.a.d.e.x, any(vec4<bool>(false, true, true, var_0.a.e.x)), !arg_1)));
    return _wgslsmith_sub_u32(29179u, ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.a.c, 1u), reverseBits(0u))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = u_input.b.x;
    var var_1 = vec4<bool>(!(!(arg_0.b > -u_input.b.x)), ~_wgslsmith_mod_u32(max(arg_1.x, arg_1.x), firstLeadingBit(arg_1.x)) > _wgslsmith_mod_u32(arg_1.x, abs(1u)), false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30007u, 29u)], 29u)] | arg_1.x), 29u)] ^ max(~arg_1.x, abs(0u)), 93785u), 7u)]);
    let var_2 = -1000f;
    let var_3 = Struct_2(vec4<u32>(4294967295u, _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(21467u, 29u)], ~arg_1.x, ~arg_1.x)), 1u, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(31079u, arg_1.x) | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~85551u), 29u)], 29u)], 29u)]), arg_0, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(8938u, 29u)], 0u), vec2<u32>(4294967295u, arg_1.x)), global4[_wgslsmith_index_u32(func_3(Struct_4(Struct_3(Struct_2(vec4<u32>(1u, global4[_wgslsmith_index_u32(5244u, 29u)], arg_1.x, 4294967295u), arg_2, arg_1.x, vec2<i32>(0i, -9663i), vec4<bool>(false, true, global3.x, true)), vec3<f32>(arg_0.a.x, -1392f, 473f), global4[_wgslsmith_index_u32(arg_1.x, 29u)], Struct_2(vec4<u32>(arg_1.x, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.x, 29u)], 29u)], 4294967295u), arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(65427u, 29u)], 29u)], u_input.b.wy, vec4<bool>(false, global3.x, false, var_1.x)))), true, Struct_4(global0[_wgslsmith_index_u32(49857u, 19u)]), ~17082u), 29u)], _wgslsmith_dot_vec2_u32(arg_1.yy, ~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 1u)), reverseBits(_wgslsmith_add_u32(24973u, 0u))), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 1u, global4[_wgslsmith_index_u32(27957u, 29u)], global4[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<u32>(arg_1.x, 1u, arg_1.x, global4[_wgslsmith_index_u32(arg_1.x, 29u)])), vec4<u32>(0u, 42757u, 75477u, 1u))), 29u)], u_input.b.zx, !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 7u)], true, min(u_input.a, 1i) != _wgslsmith_mult_i32(arg_0.b, 2147483647i)));
    global4 = array<u32, 29>();
    return var_1.wz;
}

fn func_1() -> vec2<bool> {
    global2 = 35977i;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(265f, 202f), vec2<f32>(-899f, 297f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-652f, -580f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, 171f) * vec2<f32>(305f, -182f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(865f - -1564f), 356f)));
    var var_1 = global4[_wgslsmith_index_u32(1254u, 29u)];
    var var_2 = select(-reverseBits(_wgslsmith_sub_i32(3171i, _wgslsmith_dot_vec3_i32(vec3<i32>(6216i, u_input.b.x, u_input.a), u_input.b.yww))), u_input.d, var_0.x >= _wgslsmith_f_op_f32(1f - var_0.x));
    return select(vec2<bool>(global1[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(56719u, 29u)], 7u)], global1[_wgslsmith_index_u32(max(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21397u, 29u)], 29u)], 37297u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54351u, 29u)], 29u)], 27141u))), 7u)]), select(!select(func_2(Struct_1(var_0, u_input.b.x, vec2<f32>(-1229f, -408f), var_0.x), vec3<u32>(2486u, 4084u, 1u), Struct_1(vec2<f32>(-291f, var_0.x), u_input.b.x, vec2<f32>(var_0.x, -1289f), var_0.x)), vec2<bool>(global3.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47087u, 29u)], 29u)], 7u)]), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(42534u, 7u)], true), global3.x)), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(36189u, 7u)], global3.x)), select(global3.x, true, true)), vec2<bool>(true, true)), vec2<bool>(!global3.x, all(vec4<bool>(global3.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(61827u, 29u)], 29u)], 7u)], true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(76868u, 29u)], 29u)], 29u)], 7u)])))), !global3.x | true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 29>();
    var var_0 = func_1();
    global2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.c.x, u_input.b.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, 2147483647i), vec4<i32>(u_input.b.x, u_input.d, 5316i, u_input.b.x)), u_input.a, -countOneBits(u_input.a))), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1370f, -1322f))), _wgslsmith_f_op_f32(sign(1f)))) - -353f);
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(0u, 29u)], -1026f, vec2<u32>(~reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(90818u, 29u)], 29u)], 29u)], 29u)], 29u)], global4[_wgslsmith_index_u32(0u, 29u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37420u, 29u)], 29u)], 29u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 29u)], 29u)])), 29u)]), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(~reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 29u)], 29u)]), 29u)], 55577u)), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(26585u, 4617u, global4[_wgslsmith_index_u32(31951u, 29u)], global4[_wgslsmith_index_u32(4294967295u, 29u)]))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(30593u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(70295u, 29u)], 29u)], 1u), vec4<u32>(1u, 53808u, 0u, global4[_wgslsmith_index_u32(0u, 29u)])))));
}

