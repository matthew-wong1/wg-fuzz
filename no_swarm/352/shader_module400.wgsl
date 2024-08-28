struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<bool>(true, true, false), Struct_1(98906u, -1222f), Struct_1(1u, -2077f), vec4<u32>(83703u, 54485u, 0u, 49622u), vec3<f32>(601f, 642f, 205f)), Struct_2(vec3<bool>(true, true, true), Struct_1(67615u, 999f), Struct_1(1u, -831f), vec4<u32>(1u, 667u, 1u, 1u), vec3<f32>(1000f, 676f, 626f)), Struct_2(vec3<bool>(false, false, false), Struct_1(21080u, 1281f), Struct_1(16680u, 876f), vec4<u32>(0u, 1042u, 4294967295u, 1u), vec3<f32>(877f, -1478f, 873f)), Struct_2(vec3<bool>(true, true, false), Struct_1(34796u, 2041f), Struct_1(4294967295u, 563f), vec4<u32>(0u, 26721u, 29892u, 4294967295u), vec3<f32>(-163f, -813f, -600f)), Struct_2(vec3<bool>(false, false, false), Struct_1(19776u, 1754f), Struct_1(48220u, -1217f), vec4<u32>(15643u, 4294967295u, 0u, 1u), vec3<f32>(131f, 218f, -347f)), Struct_2(vec3<bool>(true, true, true), Struct_1(55975u, 1000f), Struct_1(1050u, -2273f), vec4<u32>(0u, 1u, 9048u, 4294967295u), vec3<f32>(-364f, 302f, -705f)), Struct_2(vec3<bool>(false, true, true), Struct_1(63269u, -1459f), Struct_1(0u, 1867f), vec4<u32>(0u, 4294967295u, 1u, 0u), vec3<f32>(203f, -772f, 754f)), Struct_2(vec3<bool>(true, true, false), Struct_1(1u, -123f), Struct_1(0u, -1000f), vec4<u32>(24985u, 24182u, 1u, 0u), vec3<f32>(-2480f, -545f, -582f)), Struct_2(vec3<bool>(false, false, false), Struct_1(14053u, 1115f), Struct_1(24004u, -826f), vec4<u32>(3495u, 58795u, 40235u, 26278u), vec3<f32>(801f, 709f, -750f)), Struct_2(vec3<bool>(false, true, true), Struct_1(1u, -150f), Struct_1(29075u, -1514f), vec4<u32>(63327u, 28681u, 10479u, 4294967295u), vec3<f32>(684f, 655f, 727f)), Struct_2(vec3<bool>(true, true, true), Struct_1(0u, 1000f), Struct_1(75485u, -1605f), vec4<u32>(14463u, 2929u, 25588u, 0u), vec3<f32>(-1381f, 270f, 639f)), Struct_2(vec3<bool>(false, true, false), Struct_1(1u, 514f), Struct_1(0u, 1000f), vec4<u32>(0u, 0u, 0u, 2413u), vec3<f32>(-704f, -891f, -2359f)), Struct_2(vec3<bool>(true, true, false), Struct_1(35927u, -315f), Struct_1(6182u, 596f), vec4<u32>(4294967295u, 1u, 500u, 41966u), vec3<f32>(1387f, 314f, 527f)), Struct_2(vec3<bool>(true, true, true), Struct_1(56080u, -482f), Struct_1(95622u, -253f), vec4<u32>(8138u, 1u, 36808u, 4294967295u), vec3<f32>(349f, 659f, -2092f)), Struct_2(vec3<bool>(true, true, true), Struct_1(3037u, 1788f), Struct_1(30209u, 220f), vec4<u32>(1u, 0u, 0u, 55738u), vec3<f32>(1000f, 789f, -939f)), Struct_2(vec3<bool>(false, false, false), Struct_1(0u, -541f), Struct_1(105276u, 286f), vec4<u32>(6697u, 4294967295u, 4294967295u, 36082u), vec3<f32>(-623f, 1099f, 541f)), Struct_2(vec3<bool>(true, true, true), Struct_1(1u, 597f), Struct_1(0u, 254f), vec4<u32>(28210u, 1u, 41161u, 4294967295u), vec3<f32>(2123f, 1531f, -363f)), Struct_2(vec3<bool>(false, false, false), Struct_1(1865u, 1860f), Struct_1(4294967295u, -1147f), vec4<u32>(28925u, 21975u, 52632u, 80847u), vec3<f32>(-490f, 2415f, 392f)), Struct_2(vec3<bool>(true, true, true), Struct_1(19388u, -1667f), Struct_1(0u, -383f), vec4<u32>(1u, 13963u, 43723u, 1u), vec3<f32>(-648f, 411f, 961f)), Struct_2(vec3<bool>(true, true, false), Struct_1(4294967295u, 1057f), Struct_1(35745u, 1285f), vec4<u32>(6374u, 0u, 80885u, 4294967295u), vec3<f32>(396f, 498f, 1269f)), Struct_2(vec3<bool>(false, true, true), Struct_1(0u, -1643f), Struct_1(1u, -107f), vec4<u32>(1u, 1u, 98787u, 26506u), vec3<f32>(-308f, -512f, 1235f)), Struct_2(vec3<bool>(true, true, true), Struct_1(82028u, 327f), Struct_1(67483u, 387f), vec4<u32>(0u, 4294967295u, 0u, 0u), vec3<f32>(-1468f, 1000f, -644f)));

var<private> global1: array<Struct_1, 8>;

var<private> global2: bool;

var<private> global3: f32 = -935f;

var<private> global4: array<vec2<u32>, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b)));
    global3 = -368f;
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(max(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.d.x)) & _wgslsmith_div_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.yx) & vec2<i32>(select(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.d.x, -2147483647i), u_input.b), true), 18220i), vec2<i32>(-2147483647i & _wgslsmith_clamp_i32(60924i, u_input.d.x, -24601i), countOneBits(u_input.b.x & -48273i)) & u_input.b.xz);
    var var_1 = -(u_input.d.wwx >> (~arg_2.d.xww % vec3<u32>(32u)));
    let var_2 = ~(u_input.d & max(u_input.d, vec4<i32>(1i, var_1.x, var_0.x, var_1.x))) | vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(-u_input.d), u_input.d), -1i, -2147483647i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1479f + arg_2.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f - 962f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global4 = array<vec2<u32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(~firstLeadingBit(u_input.a), -1307f), ~(vec3<u32>(u_input.c ^ u_input.c, u_input.a, u_input.c) ^ ~(~vec3<u32>(u_input.c, 58578u, u_input.a))), Struct_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), Struct_1((u_input.c << (29296u % 32u)) >> (~u_input.a % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1918f)))), Struct_1(1u, _wgslsmith_f_op_f32(abs(-1291f))), select(vec4<u32>(10619u, min(0u, 64589u), countOneBits(u_input.a), u_input.a), vec4<u32>(1u, max(4294967295u, 10236u), 1u, 1u), true), vec3<f32>(-277f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f + -876f) - _wgslsmith_f_op_f32(1832f * -1288f))))));
    let var_1 = global1[_wgslsmith_index_u32(~0u ^ u_input.a, 8u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_1.b)));
    var_0 = -451f;
    return Struct_1(var_1.a, _wgslsmith_f_op_f32(trunc(var_1.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(arg_3.a, arg_1.b, Struct_1(~92306u, arg_0.b), vec4<u32>(59372u, u_input.a, arg_2.x, ~u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.e * vec3<f32>(-1633f, _wgslsmith_f_op_f32(-arg_3.c.b), _wgslsmith_f_op_f32(-arg_0.b))) - _wgslsmith_div_vec3_f32(arg_1.e, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1505f, -372f, -1002f)))))));
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(vec4<i32>(~(-32310i), ~_wgslsmith_sub_i32(-2147483647i, u_input.d.x), u_input.b.x & _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(36643i, -53851i, u_input.d.x, u_input.b.x)), ~1i | -u_input.b.x), firstTrailingBit(abs(u_input.d.xxz << (vec3<u32>(u_input.c, u_input.a, u_input.a) % vec3<u32>(32u))))), global0[_wgslsmith_index_u32(~0u, 22u)], vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(33108u), _wgslsmith_mod_u32(u_input.a, u_input.a)), abs(firstTrailingBit(39571u)), abs(20691u | u_input.a)), u_input.a, max(~select(1u, u_input.a, true), 1u)), Struct_2(select(vec3<bool>(true, true, any(vec2<bool>(true, false))), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), func_2(~(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x) ^ vec4<i32>(-1i, 43861i, u_input.b.x, -2147483647i)), (u_input.d.wwx << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) << (vec3<u32>(1u, u_input.c, 49740u) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~4294967295u, 8u)], vec4<u32>(1u, ~47753u, u_input.a, ~u_input.c) >> (abs(select(vec4<u32>(u_input.c, 1646u, u_input.c, 65001u), vec4<u32>(u_input.a, u_input.c, 0u, u_input.c), true)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, 1000f, 1930f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -396f, -396f)))));
    let var_1 = Struct_1(~(~countOneBits(62793u)), _wgslsmith_f_op_f32(-var_0.e.x));
    global2 = var_0.a.x;
    global2 = var_0.a.x;
    global2 = !var_0.a.x;
    return select(var_0.a.x, var_0.a.x & all(vec4<bool>(!var_0.a.x, var_0.a.x, all(var_0.a), true)), !(-_wgslsmith_mod_i32(u_input.d.x, -1675i) == (abs(-2147483647i) << (abs(var_0.d.x) % 32u))));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    var var_0 = func_4(Struct_1(~32594u, arg_2.e.x), global0[_wgslsmith_index_u32(reverseBits(66107u), 22u)], ~firstTrailingBit(vec3<u32>(u_input.a, 1u, ~1u)), Struct_2(vec3<bool>(true, !any(arg_2.a.zy), any(vec2<bool>(true, arg_2.a.x))), arg_2.c, func_4(arg_2.c, func_4(Struct_1(22185u, -600f), func_4(global1[_wgslsmith_index_u32(1360u, 8u)], Struct_2(vec3<bool>(arg_0.x, true, true), Struct_1(u_input.c, arg_2.b.b), arg_2.b, vec4<u32>(arg_2.d.x, 0u, 0u, arg_2.d.x), vec3<f32>(-564f, -897f, arg_2.b.b)), arg_2.d.zzx, arg_2), max(vec3<u32>(arg_2.c.a, 25249u, 8226u), vec3<u32>(arg_2.d.x, 4294967295u, 4294967295u)), func_4(Struct_1(u_input.a, arg_2.e.x), Struct_2(arg_2.a, Struct_1(12900u, arg_2.b.b), arg_2.c, arg_2.d, vec3<f32>(-477f, arg_2.b.b, -953f)), vec3<u32>(u_input.a, u_input.c, 48770u), arg_2)), ~(~vec3<u32>(66669u, 0u, 4294967295u)), arg_2).b, ~arg_2.d, _wgslsmith_f_op_vec3_f32(abs(arg_2.e)))).b;
    let var_1 = -((vec2<i32>(-1i) * -(u_input.d.yw | u_input.d.yx)) & vec2<i32>(7497i ^ ~u_input.b.x, abs(u_input.b.x) >> (~4908u % 32u)));
    var var_2 = abs(u_input.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e.x) - func_4(Struct_1(~_wgslsmith_sub_u32(20936u, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-794f)))), Struct_2(arg_2.a, func_4(arg_2.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a, 9675u), 22u)], vec3<u32>(4294967295u, 14536u, arg_3), Struct_2(arg_2.a, Struct_1(u_input.c, 580f), Struct_1(14847u, 1264f), vec4<u32>(0u, 1u, 12718u, arg_2.d.x), vec3<f32>(-955f, 707f, var_0.b))).c, Struct_1(~u_input.a, var_0.b), ~arg_2.d | arg_2.d, vec3<f32>(_wgslsmith_f_op_f32(sign(1396f)), var_0.b, -163f)), ~_wgslsmith_clamp_vec3_u32(~arg_2.d.wyw, select(arg_2.d.wzz, arg_2.d.xxz, true), firstTrailingBit(arg_2.d.zyw)), global0[_wgslsmith_index_u32(~4294967295u, 22u)]).b.b);
    let var_4 = vec3<f32>(arg_2.c.b, arg_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1068f)), 2409f))) + 581f));
    return select(~_wgslsmith_add_vec4_u32(func_4(global1[_wgslsmith_index_u32(var_0.a & 1u, 8u)], Struct_2(vec3<bool>(arg_2.a.x, arg_0.x, arg_2.a.x), Struct_1(4294967295u, arg_2.e.x), Struct_1(u_input.a, 288f), vec4<u32>(84097u, 4294967295u, u_input.a, u_input.a), vec3<f32>(471f, var_4.x, 1574f)), ~arg_2.d.yxw, global0[_wgslsmith_index_u32(firstTrailingBit(37136u), 22u)]).d, (arg_2.d ^ arg_2.d) << (arg_2.d % vec4<u32>(32u))), ~(~(~arg_2.d)), arg_2.d.x > _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.d, arg_2.d), ~vec4<u32>(1u, u_input.a, 34362u, arg_2.c.a)), ~1u));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = Struct_2(func_4(Struct_1(_wgslsmith_mult_u32(~25681u, func_4(Struct_1(1u, 1000f), global0[_wgslsmith_index_u32(23350u, 22u)], vec3<u32>(arg_0.x, 4294967295u, 3323u), Struct_2(vec3<bool>(true, false, false), Struct_1(40284u, -1282f), Struct_1(26435u, 2400f), arg_0, vec3<f32>(636f, 1341f, 1696f))).b.a), -707f), global0[_wgslsmith_index_u32(~arg_1.x, 22u)], vec3<u32>(arg_0.x, 64625u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(u_input.c, 50261u, 1u, 4294967295u))), func_4(Struct_1(func_5(vec2<bool>(true, false), 9657i, global0[_wgslsmith_index_u32(arg_0.x, 22u)], arg_0.x).x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0[_wgslsmith_index_u32(arg_0.x >> (~4294967295u % 32u), 22u)], vec3<u32>(arg_1.x, arg_0.x, arg_0.x), func_4(func_4(global1[_wgslsmith_index_u32(arg_1.x, 8u)], global0[_wgslsmith_index_u32(arg_1.x, 22u)], vec3<u32>(5739u, arg_0.x, 75621u), global0[_wgslsmith_index_u32(28390u, 22u)]).c, func_4(global1[_wgslsmith_index_u32(arg_1.x, 8u)], Struct_2(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(43993u, 8u)], Struct_1(arg_0.x, -299f), vec4<u32>(arg_1.x, 12028u, 0u, u_input.a), vec3<f32>(570f, 1733f, 764f)), vec3<u32>(arg_1.x, arg_1.x, 0u), global0[_wgslsmith_index_u32(u_input.a, 22u)]), ~vec3<u32>(82867u, arg_0.x, arg_0.x), Struct_2(vec3<bool>(false, true, true), Struct_1(u_input.c, 1969f), global1[_wgslsmith_index_u32(arg_1.x, 8u)], vec4<u32>(u_input.a, 108146u, 96888u, u_input.a), vec3<f32>(179f, -1528f, 477f))))).a, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u >> (0u % 32u), 1u), 8u)], Struct_1(~(~arg_0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9746u, 42603u, 43216u), vec4<u32>(25890u, arg_1.x, 4294967295u, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -904f)), arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1474f, 218f, -268f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1217f, -735f, 1444f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-670f, -1464f, 960f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, -539f, 375f)))))));
    var var_1 = -774f;
    global4 = array<vec2<u32>, 7>();
    var var_2 = false;
    let var_3 = ~_wgslsmith_dot_vec3_i32((countOneBits(arg_3) | abs(u_input.d.xxz)) | _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(2147483647i, arg_3.x, 31313i)), u_input.b), ~reverseBits(arg_3));
    return StorageBuffer(vec2<u32>(~(~(37505u << (u_input.a % 32u))), ~arg_1.x), _wgslsmith_f_op_f32(-var_0.b.b), ~func_4(func_4(var_0.b, global0[_wgslsmith_index_u32(~arg_0.x, 22u)], arg_1.zwz, var_0).c, Struct_2(var_0.a, func_2(vec4<i32>(arg_3.x, arg_3.x, 2147483647i, -15508i), vec3<i32>(arg_3.x, arg_2, 47972i)), global1[_wgslsmith_index_u32(max(arg_1.x, arg_1.x), 8u)], vec4<u32>(arg_0.x, arg_1.x, 61233u, arg_1.x), vec3<f32>(-1000f, var_0.e.x, var_0.c.b)), firstLeadingBit(var_0.d.yww), func_4(Struct_1(arg_1.x, var_0.c.b), func_4(global1[_wgslsmith_index_u32(u_input.a, 8u)], Struct_2(var_0.a, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)], vec4<u32>(arg_1.x, var_0.b.a, arg_0.x, 29464u), vec3<f32>(256f, 1114f, 1489f)), arg_1.yww, global0[_wgslsmith_index_u32(1u, 22u)]), ~vec3<u32>(arg_0.x, arg_1.x, arg_0.x), var_0)).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) * _wgslsmith_f_op_f32(abs(838f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-628f - -1447f))), 1507f));
    let x = u_input.a;
    s_output = func_6(vec4<u32>(u_input.c, u_input.c, 1u, _wgslsmith_clamp_u32(~2151u, 4294967295u, 46249u)), func_5(vec2<bool>(true, max(4294967295u, u_input.c) < 4294967295u), -u_input.b.x, Struct_2(vec3<bool>(u_input.d.x != u_input.d.x, true, func_1()), Struct_1(12744u, 1089f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~1u), 8u)], vec4<u32>(max(1u, 69398u), u_input.a, max(u_input.a, 2762u), _wgslsmith_clamp_u32(u_input.c, u_input.a, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1682f, var_0.x), vec3<f32>(var_0.x, 1005f, -1616f), true)))), ~firstLeadingBit(0u)), 1i, -(reverseBits(firstTrailingBit(vec3<i32>(u_input.d.x, u_input.d.x, 2765i))) << (select(vec3<u32>(1345u, 0u, 43524u), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<bool>(false, false, false)) % vec3<u32>(32u))));
}

