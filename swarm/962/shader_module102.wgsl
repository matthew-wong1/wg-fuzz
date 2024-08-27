struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(2099f, -1046f, 742f), vec3<i32>(-5401i, -12119i, 0i), vec3<f32>(-469f, 664f, -116f), vec4<i32>(-44352i, 2147483647i, i32(-2147483648), -15131i)), Struct_1(vec3<f32>(-489f, -861f, -872f), vec3<i32>(-17997i, 0i, 33475i), vec3<f32>(-1000f, 400f, -903f), vec4<i32>(-2524i, 0i, 1i, -1i)), Struct_1(vec3<f32>(-1000f, 1300f, 642f), vec3<i32>(2147483647i, 0i, -2950i), vec3<f32>(-2104f, 914f, 1461f), vec4<i32>(-6237i, -1i, -1i, -1i)), Struct_1(vec3<f32>(770f, -1000f, -206f), vec3<i32>(10203i, i32(-2147483648), -1i), vec3<f32>(251f, 233f, 547f), vec4<i32>(-2234i, 13824i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<f32>(-1000f, -205f, -947f), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<f32>(-705f, 446f, 186f), vec4<i32>(1i, -12158i, i32(-2147483648), 1i)), Struct_1(vec3<f32>(-2021f, -214f, 698f), vec3<i32>(i32(-2147483648), 33288i, 58550i), vec3<f32>(-365f, -123f, 1221f), vec4<i32>(26321i, 2147483647i, i32(-2147483648), 25955i)), Struct_1(vec3<f32>(-1501f, 778f, 1541f), vec3<i32>(-89605i, -1i, -1i), vec3<f32>(-816f, 530f, 1880f), vec4<i32>(i32(-2147483648), 1i, -10144i, -1i)), Struct_1(vec3<f32>(1330f, 672f, 487f), vec3<i32>(-7248i, 2147483647i, 6752i), vec3<f32>(-415f, 482f, 2320f), vec4<i32>(69452i, -8100i, -39495i, i32(-2147483648))), Struct_1(vec3<f32>(233f, 1251f, -1610f), vec3<i32>(1i, -29212i, -10115i), vec3<f32>(-2316f, 846f, 913f), vec4<i32>(25047i, -1i, -24083i, 2147483647i)), Struct_1(vec3<f32>(755f, -970f, -1545f), vec3<i32>(-33831i, -1i, -56948i), vec3<f32>(-697f, -190f, 297f), vec4<i32>(0i, 3118i, i32(-2147483648), -36428i)), Struct_1(vec3<f32>(-914f, -283f, 773f), vec3<i32>(2147483647i, 43180i, 2147483647i), vec3<f32>(558f, -1176f, -317f), vec4<i32>(16063i, 14398i, 1i, 0i)), Struct_1(vec3<f32>(-611f, 1496f, -787f), vec3<i32>(19647i, 1i, 1i), vec3<f32>(1879f, 335f, -1094f), vec4<i32>(-33526i, 20796i, -68571i, -7437i)), Struct_1(vec3<f32>(303f, 381f, -1000f), vec3<i32>(i32(-2147483648), 1i, -23267i), vec3<f32>(-874f, -1936f, 1214f), vec4<i32>(-1i, 81996i, i32(-2147483648), 16624i)), Struct_1(vec3<f32>(-491f, 1367f, 339f), vec3<i32>(-48803i, -49107i, -47320i), vec3<f32>(440f, 1000f, 1764f), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1051i)), Struct_1(vec3<f32>(-287f, 1160f, -1392f), vec3<i32>(-1i, 0i, -1i), vec3<f32>(-909f, 1496f, -914f), vec4<i32>(2147483647i, -1i, -6848i, 30303i)), Struct_1(vec3<f32>(-336f, 1241f, -1324f), vec3<i32>(0i, 22201i, -7386i), vec3<f32>(1247f, 688f, -876f), vec4<i32>(-1i, 9840i, i32(-2147483648), -19306i)), Struct_1(vec3<f32>(-1184f, -357f, -451f), vec3<i32>(-38682i, 30620i, 4655i), vec3<f32>(940f, 746f, 1338f), vec4<i32>(-1i, -15288i, -16074i, -1i)), Struct_1(vec3<f32>(-1000f, -556f, 723f), vec3<i32>(0i, 1i, -1i), vec3<f32>(-838f, 202f, 298f), vec4<i32>(0i, 20233i, -57266i, 10953i)), Struct_1(vec3<f32>(-1000f, 957f, 777f), vec3<i32>(0i, 33436i, -24358i), vec3<f32>(-399f, 1509f, -1519f), vec4<i32>(13231i, 2147483647i, 25996i, -43944i)), Struct_1(vec3<f32>(-1476f, -822f, 2182f), vec3<i32>(0i, 6569i, 53325i), vec3<f32>(1624f, 1000f, 242f), vec4<i32>(-30556i, -1i, -23151i, -1i)), Struct_1(vec3<f32>(406f, 820f, 150f), vec3<i32>(-12671i, -2530i, 2174i), vec3<f32>(1346f, -753f, -1151f), vec4<i32>(-1i, 2147483647i, 14544i, -1i)), Struct_1(vec3<f32>(-958f, -337f, -685f), vec3<i32>(-8923i, 40422i, 35338i), vec3<f32>(-183f, -744f, 410f), vec4<i32>(2147483647i, -1i, -1i, 0i)), Struct_1(vec3<f32>(845f, 923f, -978f), vec3<i32>(7326i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-269f, 215f, -1328f), vec4<i32>(4242i, 1i, 2147483647i, -15782i)), Struct_1(vec3<f32>(467f, -686f, 1631f), vec3<i32>(-8520i, -1i, -26959i), vec3<f32>(1000f, 1000f, 1000f), vec4<i32>(1i, 0i, -60389i, 1i)), Struct_1(vec3<f32>(736f, 1000f, -2016f), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<f32>(282f, -414f, -655f), vec4<i32>(39273i, 47620i, -36269i, 1i)), Struct_1(vec3<f32>(425f, -533f, 1155f), vec3<i32>(-20697i, 0i, 2147483647i), vec3<f32>(-864f, 331f, 372f), vec4<i32>(2147483647i, 1i, i32(-2147483648), 35458i)), Struct_1(vec3<f32>(-910f, 673f, -989f), vec3<i32>(0i, -1i, -26336i), vec3<f32>(947f, 1085f, 803f), vec4<i32>(35701i, 13179i, -57165i, 67230i)), Struct_1(vec3<f32>(178f, -1764f, 1000f), vec3<i32>(-17267i, 1i, 0i), vec3<f32>(-636f, 1079f, 1508f), vec4<i32>(i32(-2147483648), -1i, -20140i, -1i)), Struct_1(vec3<f32>(-2171f, 332f, -361f), vec3<i32>(-10456i, -904i, i32(-2147483648)), vec3<f32>(1026f, -463f, -1619f), vec4<i32>(1i, i32(-2147483648), -42241i, 2147483647i)), Struct_1(vec3<f32>(280f, 306f, -1563f), vec3<i32>(i32(-2147483648), 1i, 8157i), vec3<f32>(-1464f, 298f, -1000f), vec4<i32>(-44612i, -44770i, 0i, i32(-2147483648))), Struct_1(vec3<f32>(-260f, 1357f, 474f), vec3<i32>(0i, -1i, 57457i), vec3<f32>(820f, 407f, -294f), vec4<i32>(2147483647i, 6895i, 0i, 1i)));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-775f, -1296f, 431f), vec3<i32>(83326i, -32331i, 1i), vec3<f32>(-450f, -638f, -442f), vec4<i32>(i32(-2147483648), 0i, -11431i, i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<f32> {
    let var_0 = vec3<bool>(!(abs(~global2.d.x) != _wgslsmith_add_i32(-22772i, 0i)), true, (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, global2.b.yz), -global2.d.x) <= (global0.d.x << (1u % 32u))) & ((false || all(vec3<bool>(true, false, false))) || !any(vec4<bool>(false, false, false, true))));
    global2 = Struct_1(global0.a, global2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1046f, global2.c.x, 2408f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, global0.a.x, global0.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(global0.c))), vec4<i32>(~_wgslsmith_mult_i32(global2.d.x, abs(u_input.a.x)), global0.b.x, max(~u_input.a.x << (1u % 32u), -17356i), 12230i));
    global0 = global1[_wgslsmith_index_u32(68007u, 31u)];
    var var_1 = global1[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mult_u32(0u, 99953u)))), 31u)];
    var var_2 = ~(~vec2<u32>(1u, 1u));
    return global0.c;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec3<f32> {
    var var_0 = u_input.a.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_3.x), 31u)];
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), ~global2.d.yxy ^ u_input.a.zxz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2127f, -145f, global2.c.x)))), arg_0.d >> (vec4<u32>(select(~arg_3.x, ~arg_3.x, true), arg_3.x, (arg_3.x | 4294967295u) & abs(1u), ~(~0u)) % vec4<u32>(32u)));
    global1 = array<Struct_1, 31>();
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2995f, _wgslsmith_f_op_f32(1655f * arg_1), _wgslsmith_f_op_f32(-arg_0.a.x)))))), vec3<i32>(-647i, 1i, var_1.b.x), _wgslsmith_f_op_vec3_f32(func_3()), ~(-(~vec4<i32>(2147483647i, 5401i, -1i, var_1.b.x))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(14128u, arg_3.x, 42973u)), select(vec3<u32>(arg_3.x, arg_3.x, 4294967295u), vec3<u32>(arg_3.x, arg_3.x, 83983u), vec3<bool>(false, false, false))), ~(~arg_3.x), 75560u, ~9923u) % vec4<u32>(32u)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) * vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(ceil(-1078f)), 677f)), _wgslsmith_f_op_vec3_f32(-global0.a));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global2.a.x))), global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(237f + global0.c.x)))), global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -166f, global0.c.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.x, -245f, global2.c.x))))) * _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(abs(global2.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.d.x, 0i), vec3<i32>(global0.d.x, global0.b.x, 0i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.c.x, 934f, global2.a.x))), _wgslsmith_clamp_vec4_i32(global2.d, global2.d, global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1563f) + -1716f), _wgslsmith_f_op_vec3_f32(func_3()), vec2<u32>(39645u, reverseBits(1u))))), -vec4<i32>(0i, global0.d.x, abs(reverseBits(global0.d.x)), countOneBits(-56821i)));
    global1 = array<Struct_1, 31>();
    var var_1 = 0i;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0.a, var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(-1577f * global0.c.x))))), u_input.a.xzz, _wgslsmith_f_op_vec3_f32(exp2(global2.a)), vec4<i32>(select(_wgslsmith_add_i32(-3036i, global0.d.x), _wgslsmith_dot_vec3_i32(global0.b, var_0.d.zxz), all(vec3<bool>(true, false, true))) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 14891u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 1061u), vec3<u32>(51415u, 43901u, 20963u))) % 32u), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global2.d.x, var_0.b.x, global2.b.x, global2.d.x) >> (vec4<u32>(108789u, 4294967295u, 25925u, 132233u) % vec4<u32>(32u)), ~global0.d), ~vec4<i32>(var_0.b.x, -1i, global2.b.x, -1i)), global0.b.x, min(-2147483647i, -1i)));
    global1 = array<Struct_1, 31>();
    return vec4<u32>(0u, ~(~(~firstLeadingBit(4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(51924u, 17032u, 4294967295u, 15179u), vec4<u32>(29914u, 21033u, 42404u, 1u)))) >> (748u % 32u), _wgslsmith_mult_u32(~(~(~1u)), 0u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global2.a.x);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(), vec4<u32>(~(~4294967295u), 4294967295u, reverseBits(2913u << (1u % 32u)), 16912u)) | max(4294967295u, ~(~_wgslsmith_clamp_u32(677u, 1u, 6238u))), 31u)];
    global2 = global1[_wgslsmith_index_u32(min(1u, ~abs(4294967295u)), 31u)];
    return Struct_1(vec3<f32>(var_0, _wgslsmith_f_op_f32(-global2.a.x), global2.a.x), arg_2.b, arg_0.ywx, vec4<i32>(~arg_2.b.x & 7318i, -2147483647i, -global2.d.x, -2147483647i & (_wgslsmith_mod_i32(u_input.a.x, global2.b.x) << (79259u % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = ~vec2<u32>(1u, 1u);
    var var_1 = Struct_1(arg_2.c, func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(arg_0.a.x - global2.c.x)), 572f, _wgslsmith_f_op_f32(1f * arg_2.a.x)), vec4<bool>(~var_0.x < ~var_0.x, arg_1.x || true, true && arg_1.x, true), arg_0).d.wzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_f_op_vec3_f32(-arg_0.a)))), -u_input.a);
    let var_2 = vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + global0.a.x))) + _wgslsmith_f_op_f32(select(func_1(vec4<f32>(var_1.a.x, -493f, arg_2.c.x, -484f), vec4<bool>(arg_1.x, false, false, arg_1.x), func_1(vec4<f32>(var_1.a.x, -933f, 1412f, 237f), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), Struct_1(vec3<f32>(global2.a.x, arg_0.a.x, arg_2.a.x), vec3<i32>(global2.b.x, 21467i, -50853i), global0.a, vec4<i32>(-1i, u_input.a.x, -1i, 12437i)))).a.x, -1679f, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, global2.b.x), global2.b.zz) >= -2147483647i))));
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-813f, 582f, _wgslsmith_f_op_f32(ceil(376f)), _wgslsmith_f_op_f32(trunc(global2.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1000f, -159f, var_1.c.x) - vec4<f32>(-432f, arg_2.a.x, 1182f, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, -891f, var_1.c.x, -1703f)))))), select(!vec4<bool>(arg_1.x | arg_1.x, true, true, arg_1.x), vec4<bool>(select(any(vec4<bool>(false, true, false, arg_1.x)), true, arg_1.x || arg_1.x), true, !(!arg_1.x), all(vec3<bool>(true, arg_1.x, arg_1.x))), all(!vec4<bool>(false, false, true, arg_1.x))), arg_0);
    global2 = global1[_wgslsmith_index_u32(13140u << (_wgslsmith_div_u32(var_0.x, ~var_0.x) % 32u), 31u)];
    return any(select(!vec4<bool>(arg_1.x, true, true != arg_1.x, arg_1.x), !select(!vec4<bool>(false, arg_1.x, arg_1.x, false), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), true), vec4<bool>(!select(true, true, arg_1.x), true, any(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_1.x, true, false, false), vec4<bool>(false, true, arg_1.x, arg_1.x))), !any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(60019u, 31u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x)))), -802f));
    var var_2 = _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * global2.a.x));
    var var_3 = vec4<bool>(!(!any(vec2<bool>(true, false)) | func_5(Struct_1(vec3<f32>(global0.c.x, global2.c.x, var_0.c.x), vec3<i32>(-60984i, 14402i, u_input.a.x), vec3<f32>(var_0.a.x, 684f, 1706f), vec4<i32>(-1i, -2147483647i, -20337i, global2.b.x)), vec2<bool>(false, true), func_1(vec4<f32>(-1499f, -1879f, var_0.c.x, -1353f), vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(43198u, 31u)]))), !(!all(vec3<bool>(true, true, true))), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !(!all(vec4<bool>(false, false, false, false))));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, _wgslsmith_div_f32(1410f, _wgslsmith_f_op_f32(exp2(global0.a.x))), var_0.c.x)), _wgslsmith_mult_vec3_i32(~var_0.b, ~global2.b), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 1339f, 451f) - vec3<f32>(-996f, -249f, global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), var_0.a.x, global0.c.x), !var_3.x)))), countOneBits(-min(vec4<i32>(global0.d.x, u_input.a.x, global2.b.x, global0.d.x), var_0.d) ^ ~(var_0.d | vec4<i32>(global2.d.x, global0.b.x, u_input.a.x, global2.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(408f + -488f));
}

