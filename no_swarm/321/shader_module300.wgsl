struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(4294967295u, 4294967295u, 25009u, 66941u, 1128u, 1u, 69880u, 29554u, 1u, 80216u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec2<i32>(2186i, 0i), Struct_3(Struct_2(vec2<i32>(52213i, 2147483647i), vec3<f32>(1268f, -639f, -1380f), vec2<u32>(1554u, 59503u)), Struct_2(vec2<i32>(i32(-2147483648), -49175i), vec3<f32>(387f, -762f, -347f), vec2<u32>(21186u, 74936u))), 15895u, -277f), Struct_4(vec2<i32>(-34879i, 55735i), Struct_3(Struct_2(vec2<i32>(73714i, 2147483647i), vec3<f32>(-721f, -729f, -605f), vec2<u32>(4294967295u, 0u)), Struct_2(vec2<i32>(-18613i, -209i), vec3<f32>(-415f, 1829f, -595f), vec2<u32>(54675u, 0u))), 1u, -410f), Struct_4(vec2<i32>(7600i, 22809i), Struct_3(Struct_2(vec2<i32>(0i, 10906i), vec3<f32>(731f, -1000f, 253f), vec2<u32>(3440u, 39262u)), Struct_2(vec2<i32>(-13565i, -7647i), vec3<f32>(1219f, -1535f, -273f), vec2<u32>(4294967295u, 1u))), 57551u, 229f), Struct_4(vec2<i32>(-1i, 1i), Struct_3(Struct_2(vec2<i32>(0i, -1i), vec3<f32>(1193f, 509f, -291f), vec2<u32>(0u, 15287u)), Struct_2(vec2<i32>(-11379i, 0i), vec3<f32>(1171f, 1015f, -652f), vec2<u32>(0u, 0u))), 4294967295u, -456f), Struct_4(vec2<i32>(14168i, -2116i), Struct_3(Struct_2(vec2<i32>(1i, 1i), vec3<f32>(-375f, 435f, 1125f), vec2<u32>(4294967295u, 21178u)), Struct_2(vec2<i32>(29545i, 0i), vec3<f32>(2710f, 1136f, -638f), vec2<u32>(1u, 55617u))), 63319u, -574f), Struct_4(vec2<i32>(2147483647i, 2147483647i), Struct_3(Struct_2(vec2<i32>(-8957i, 5730i), vec3<f32>(383f, -722f, -247f), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<i32>(17456i, -43012i), vec3<f32>(-773f, 346f, -1360f), vec2<u32>(4294967295u, 6548u))), 1u, -1727f), Struct_4(vec2<i32>(-5058i, 0i), Struct_3(Struct_2(vec2<i32>(29201i, -42634i), vec3<f32>(287f, 315f, -1007f), vec2<u32>(34373u, 4294967295u)), Struct_2(vec2<i32>(-778i, -14070i), vec3<f32>(2298f, 1436f, -294f), vec2<u32>(47707u, 54979u))), 33711u, 1202f), Struct_4(vec2<i32>(12310i, -28976i), Struct_3(Struct_2(vec2<i32>(2147483647i, -1i), vec3<f32>(-896f, 648f, 2982f), vec2<u32>(58161u, 83874u)), Struct_2(vec2<i32>(58842i, -1i), vec3<f32>(-290f, -252f, -1442f), vec2<u32>(4962u, 4905u))), 0u, 648f), Struct_4(vec2<i32>(1i, 15887i), Struct_3(Struct_2(vec2<i32>(-14689i, 32726i), vec3<f32>(233f, 1872f, -680f), vec2<u32>(14989u, 8601u)), Struct_2(vec2<i32>(-65465i, -4923i), vec3<f32>(-197f, -694f, -978f), vec2<u32>(65711u, 1u))), 4294967295u, 1000f), Struct_4(vec2<i32>(1304i, 4939i), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 5273i), vec3<f32>(-249f, -513f, 372f), vec2<u32>(68393u, 33711u)), Struct_2(vec2<i32>(37339i, 49050i), vec3<f32>(2021f, -313f, -568f), vec2<u32>(55522u, 0u))), 34734u, 1086f), Struct_4(vec2<i32>(i32(-2147483648), 0i), Struct_3(Struct_2(vec2<i32>(-46607i, 2147483647i), vec3<f32>(-1049f, 675f, 1337f), vec2<u32>(1u, 0u)), Struct_2(vec2<i32>(-4639i, -15570i), vec3<f32>(300f, 222f, -518f), vec2<u32>(1u, 17404u))), 26032u, -2004f), Struct_4(vec2<i32>(-19103i, -5330i), Struct_3(Struct_2(vec2<i32>(12697i, 2147483647i), vec3<f32>(-385f, -1113f, -508f), vec2<u32>(4294967295u, 29881u)), Struct_2(vec2<i32>(1i, -13587i), vec3<f32>(-577f, -1098f, 931f), vec2<u32>(8681u, 44618u))), 50360u, 1222f), Struct_4(vec2<i32>(-25589i, 33057i), Struct_3(Struct_2(vec2<i32>(27901i, 1i), vec3<f32>(1959f, 318f, -132f), vec2<u32>(15627u, 4294967295u)), Struct_2(vec2<i32>(-4009i, 2147483647i), vec3<f32>(-246f, 1000f, -785f), vec2<u32>(0u, 85101u))), 26453u, 358f), Struct_4(vec2<i32>(8789i, -1i), Struct_3(Struct_2(vec2<i32>(15289i, 2147483647i), vec3<f32>(-694f, -296f, 443f), vec2<u32>(12749u, 22772u)), Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(1000f, 2685f, -1674f), vec2<u32>(4294967295u, 45707u))), 7840u, -894f), Struct_4(vec2<i32>(-30779i, i32(-2147483648)), Struct_3(Struct_2(vec2<i32>(-45313i, -1i), vec3<f32>(-711f, 477f, 1000f), vec2<u32>(4294967295u, 48603u)), Struct_2(vec2<i32>(2892i, 33025i), vec3<f32>(-275f, -485f, 403f), vec2<u32>(23699u, 4294967295u))), 8231u, -585f), Struct_4(vec2<i32>(-55896i, -1i), Struct_3(Struct_2(vec2<i32>(0i, 2147483647i), vec3<f32>(127f, 696f, 1085f), vec2<u32>(13777u, 4294967295u)), Struct_2(vec2<i32>(-37188i, -1i), vec3<f32>(-654f, -647f, 916f), vec2<u32>(22099u, 4294967295u))), 1u, 1573f), Struct_4(vec2<i32>(0i, 20635i), Struct_3(Struct_2(vec2<i32>(-21710i, 1i), vec3<f32>(-295f, -1705f, -1000f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<i32>(-51682i, i32(-2147483648)), vec3<f32>(-384f, 1001f, 426f), vec2<u32>(20280u, 4294967295u))), 1u, -1807f), Struct_4(vec2<i32>(531i, 70196i), Struct_3(Struct_2(vec2<i32>(5932i, -59738i), vec3<f32>(-2130f, 1362f, -210f), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<i32>(-1i, -16782i), vec3<f32>(462f, -2163f, 1830f), vec2<u32>(56869u, 1u))), 0u, 515f), Struct_4(vec2<i32>(i32(-2147483648), 2147483647i), Struct_3(Struct_2(vec2<i32>(-61206i, -1i), vec3<f32>(-1573f, 1755f, -1415f), vec2<u32>(25656u, 1u)), Struct_2(vec2<i32>(-2973i, 0i), vec3<f32>(-1736f, -1000f, -285f), vec2<u32>(5825u, 12438u))), 74191u, -1337f));

var<private> global2: array<u32, 27> = array<u32, 27>(35548u, 25353u, 1038u, 157159u, 108311u, 1u, 0u, 56584u, 0u, 1u, 0u, 4294967295u, 4294967295u, 95729u, 1u, 127164u, 28014u, 4294967295u, 1u, 35430u, 1u, 0u, 18171u, 1u, 4294967295u, 25408u, 63268u);

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-307f, vec2<i32>(-16879i, -8723i), vec4<i32>(-23984i, -26286i, -1i, 0i), vec4<bool>(true, true, true, false), vec2<i32>(i32(-2147483648), -26173i)), Struct_1(-656f, vec2<i32>(-25338i, -39108i), vec4<i32>(20461i, -38528i, 29084i, -58471i), vec4<bool>(false, true, true, true), vec2<i32>(-1i, 1i)), Struct_1(-1304f, vec2<i32>(1i, 48272i), vec4<i32>(-1022i, -60098i, -1i, -45966i), vec4<bool>(false, false, true, true), vec2<i32>(50977i, i32(-2147483648))), Struct_1(-1000f, vec2<i32>(0i, i32(-2147483648)), vec4<i32>(3828i, -1i, 2147483647i, -1i), vec4<bool>(false, false, false, false), vec2<i32>(1198i, 56759i)), Struct_1(-217f, vec2<i32>(45526i, 0i), vec4<i32>(2147483647i, 1380i, i32(-2147483648), 0i), vec4<bool>(true, true, false, false), vec2<i32>(-26195i, 1585i)), Struct_1(-302f, vec2<i32>(0i, 0i), vec4<i32>(-1i, -21031i, i32(-2147483648), 2147483647i), vec4<bool>(false, false, false, false), vec2<i32>(-24839i, 2147483647i)), Struct_1(-567f, vec2<i32>(-1i, -1i), vec4<i32>(-3373i, -15438i, -5955i, 2147483647i), vec4<bool>(true, false, false, false), vec2<i32>(0i, 19160i)));

var<private> global4: Struct_1 = Struct_1(158f, vec2<i32>(-44966i, 0i), vec4<i32>(6103i, 2147483647i, 43632i, 16358i), vec4<bool>(true, true, false, false), vec2<i32>(37085i, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = vec3<bool>(arg_1, global4.d.x, arg_1);
    var var_1 = true;
    let var_2 = global4.d.xyz;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1995f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a + 765f) - _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), -350f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global4.a, 1809f, 891f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, 838f, arg_0, arg_0) * vec4<f32>(826f, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -437f, 431f, arg_0) * vec4<f32>(733f, arg_0, -179f, global4.a))))))), vec4<f32>(_wgslsmith_f_op_f32(-554f - _wgslsmith_f_op_f32(-global4.a)), global4.a, _wgslsmith_f_op_f32(f32(-1f) * -120f), arg_0), any(!vec4<bool>(var_2.x && global4.d.x, u_input.a != global4.c.x, !var_0.x, !var_0.x))));
    let var_4 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_mod_i32(1i, global4.b.x), -2147483647i) & ~(global4.b >> (vec2<u32>(94326u, 23880u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-664f, -151f, var_3.x), vec3<f32>(-757f, arg_0, -2084f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2, 27u)], 27u)] | 1u, global0[_wgslsmith_index_u32(0u | global0[_wgslsmith_index_u32(0u, 12u)], 12u)]), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 1u))), Struct_2(vec2<i32>(-firstTrailingBit(u_input.a), -2147483647i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3.wzx)) + var_3.zzx))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(8753u, 1u), arg_2), ~firstTrailingBit(global0[_wgslsmith_index_u32(4996u, 12u)]))));
    return Struct_3(Struct_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(global4.e.x, u_input.a), ~var_4.b.a | _wgslsmith_div_vec2_i32(global4.b, global4.c.xw)), var_3.zwy, (abs(var_4.a.c) << (~var_4.b.c % vec2<u32>(32u))) | vec2<u32>(13062u, 47818u)), var_4.a);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(global4.b, func_2(-486f, global4.d.x, global0[_wgslsmith_index_u32(60609u, 12u)]), 47846u, global4.a);
    let var_1 = var_0.b;
    let var_2 = var_1.a.a.x;
    global0 = array<u32, 12>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global4.a, var_1.b.b.x, -383f, -789f), vec4<f32>(-319f, 531f, 1000f, 1519f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, -1768f, 1863f, var_0.d))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(var_0.d, -236f, -3252f, 1051f), !vec4<bool>(true, global4.d.x, false, global4.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(926f, 292f, global4.a, 519f))) * vec4<f32>(1880f, var_0.d, 731f, var_1.b.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(-var_1.b.b.x)), _wgslsmith_f_op_f32(max(-1703f, 2188f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.a, var_0.d)) + global4.a), global4.a)));
    return Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(min(global4.e.x, var_2 & -1i), 17086i), _wgslsmith_add_vec2_i32(global4.c.wz, func_2(_wgslsmith_f_op_f32(step(global4.a, var_3.x)), global4.d.x | global4.d.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c, 27u)], 12u)] >> (var_1.b.c.x % 32u)).b.a)), var_1.b.b, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(~(~4294967295u), 27u)]), _wgslsmith_mult_vec2_u32(var_0.b.a.c, countOneBits(vec2<u32>(52479u, global2[_wgslsmith_index_u32(4294967295u, 27u)])))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global4.a, global4.a))) - 755f))), func_1().a, global4.c, !(!vec4<bool>(global4.d.x || global4.d.x, false, false, false)), _wgslsmith_div_vec2_i32((~global4.c.ww << (~vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4198u, 12u)], 12u)]) % vec2<u32>(32u))) << (~reverseBits(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(23058u, 12u)])) % vec2<u32>(32u)), -(vec2<i32>(global4.b.x, 13694i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5823u, 12u)], 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<u32>(4294967295u, 23017u)) % vec2<u32>(32u)))));
    var var_1 = (abs(-44985i) >> ((~(~global2[_wgslsmith_index_u32(76228u, 27u)]) << (~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(423u, 27u)], 12u)], 27u)], 27u)], 27u)]) % 32u)) % 32u)) << (countOneBits(firstLeadingBit(1u)) % 32u);
    let var_2 = vec3<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.c.x, var_0.c.x, var_0.b.x), select(-global4.c.x & max(-2147483647i, u_input.a), global4.c.x, !any(vec3<bool>(false, arg_0.x, var_0.d.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 41583i, global4.e.x), ~reverseBits(select(global4.c.xww, global4.c.wzz, global4.d.x))));
    let var_3 = ~(~(~select(min(vec3<u32>(global2[_wgslsmith_index_u32(0u, 27u)], 0u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(64512u, 27u)], 4294967295u, 106986u)), min(vec3<u32>(4294967295u, 5951u, 1u), vec3<u32>(66822u, 2562u, global2[_wgslsmith_index_u32(4294967295u, 27u)])), vec3<bool>(false, arg_0.x, true))));
    var_1 = ~1i;
    return select(_wgslsmith_div_i32(-var_2.x | ~(i32(-1i) * -40180i), u_input.a << (func_2(var_0.a, true || arg_0.x, global2[_wgslsmith_index_u32(2379u, 27u)]).a.c.x % 32u)), 2536i, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 19>();
    var var_0 = global4.e.x;
    var var_1 = func_1();
    var var_2 = -reverseBits(_wgslsmith_mult_i32(~27857i, _wgslsmith_add_i32(var_1.a.x, u_input.a))) ^ 0i;
    var var_3 = Struct_4(-vec2<i32>(func_1().a.x, -12687i) & vec2<i32>(~func_3(global4.d.zw), _wgslsmith_mod_i32(u_input.a, 0i)), func_2(func_2(var_1.b.x, !all(global4.d), func_2(var_1.b.x, true, 14924u).b.c.x).b.b.x, _wgslsmith_clamp_i32(global4.b.x, var_1.a.x, i32(-1i) * -4244i) <= _wgslsmith_div_i32(select(global4.c.x, global4.b.x, true), ~(-2147483647i)), var_1.c.x), global0[_wgslsmith_index_u32(~4294967295u, 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(762f, -278f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a * -328f))))));
    var_3 = Struct_4(~firstTrailingBit(var_3.b.b.a), var_3.b, global0[_wgslsmith_index_u32(35160u, 12u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1065f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-116f * var_1.b.x), all(vec2<bool>(false, true)), 18956u).b.b.x - -148f), any(vec4<bool>(!global4.d.x, global4.d.x, global4.d.x, true)))));
    let var_4 = vec2<bool>(global4.d.x, true);
    let var_5 = (global4.c.x & _wgslsmith_div_i32(var_3.b.b.a.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, 1i), i32(-1i) * -2147483647i))) << (firstTrailingBit(max(34675u, 44707u)) % 32u);
    var_2 = firstTrailingBit(var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -abs(0i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.a.b.x * var_1.b.x))))), ~vec2<u32>(~global0[_wgslsmith_index_u32(var_1.c.x, 12u)] << (0u % 32u), 64179u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.a, var_1.b.x, global4.a, global4.a), vec4<f32>(1305f, -1758f, -728f, 1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global4.a, var_3.d, -489f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.a, 1413f, 954f, 1564f))) + vec4<f32>(var_3.d, var_1.b.x, var_3.b.b.b.x, 707f))))));
}

