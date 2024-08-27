struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(56694u, 6400u, 10128u, 78602u, 27009u, 49921u, 1u, 2879u, 1u, 48192u, 1u, 25621u, 34556u, 4294967295u, 0u, 26790u, 14376u, 1u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<u32>(4294967295u, 1u), -1465f, Struct_2(Struct_1(4294967295u, 57584u), -723f, Struct_1(9285u, 100779u)), vec3<i32>(5149i, 70769i, -18123i)), Struct_3(vec2<u32>(21352u, 1u), 420f, Struct_2(Struct_1(1u, 1u), 1083f, Struct_1(40260u, 37898u)), vec3<i32>(43924i, i32(-2147483648), 0i)), Struct_3(vec2<u32>(0u, 3277u), 370f, Struct_2(Struct_1(14209u, 0u), -477f, Struct_1(0u, 22355u)), vec3<i32>(1i, 24270i, 3595i)), Struct_3(vec2<u32>(7186u, 13507u), -666f, Struct_2(Struct_1(66646u, 9678u), -388f, Struct_1(69559u, 1u)), vec3<i32>(1i, i32(-2147483648), -85i)), Struct_3(vec2<u32>(58113u, 38474u), 1000f, Struct_2(Struct_1(4294967295u, 1u), 925f, Struct_1(1u, 4294967295u)), vec3<i32>(-20954i, 0i, 85024i)), Struct_3(vec2<u32>(0u, 4294967295u), -374f, Struct_2(Struct_1(1u, 4294967295u), -970f, Struct_1(1u, 4294967295u)), vec3<i32>(0i, -47338i, 45901i)), Struct_3(vec2<u32>(0u, 4294967295u), 100f, Struct_2(Struct_1(0u, 1u), 187f, Struct_1(1u, 0u)), vec3<i32>(1i, -1i, 19025i)), Struct_3(vec2<u32>(63271u, 36926u), 517f, Struct_2(Struct_1(4294967295u, 4294967295u), -903f, Struct_1(0u, 4294967295u)), vec3<i32>(60723i, -9361i, -18146i)), Struct_3(vec2<u32>(6243u, 4294967295u), -1476f, Struct_2(Struct_1(5076u, 1331u), -1048f, Struct_1(1919u, 13429u)), vec3<i32>(-47280i, 13795i, 7352i)), Struct_3(vec2<u32>(81206u, 4294967295u), -359f, Struct_2(Struct_1(4294967295u, 4661u), 1919f, Struct_1(1u, 15947u)), vec3<i32>(2147483647i, -22393i, 2147483647i)), Struct_3(vec2<u32>(15040u, 4294967295u), -559f, Struct_2(Struct_1(0u, 1u), -1000f, Struct_1(1u, 0u)), vec3<i32>(-35943i, -13283i, 1i)), Struct_3(vec2<u32>(5365u, 113889u), 1232f, Struct_2(Struct_1(41510u, 4294967295u), -1724f, Struct_1(33411u, 4294967295u)), vec3<i32>(-9247i, 0i, 0i)), Struct_3(vec2<u32>(4294967295u, 4294967295u), 467f, Struct_2(Struct_1(77908u, 1u), 1322f, Struct_1(0u, 28365u)), vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_3(vec2<u32>(25978u, 9822u), -391f, Struct_2(Struct_1(0u, 2282u), -1000f, Struct_1(0u, 4294967295u)), vec3<i32>(1i, 0i, -21690i)), Struct_3(vec2<u32>(20504u, 25038u), 1510f, Struct_2(Struct_1(0u, 160421u), 432f, Struct_1(79617u, 1u)), vec3<i32>(47274i, 1i, -30477i)), Struct_3(vec2<u32>(5488u, 1u), -542f, Struct_2(Struct_1(1u, 1u), -1276f, Struct_1(1u, 15057u)), vec3<i32>(-285i, 18422i, -45398i)), Struct_3(vec2<u32>(4294967295u, 4294967295u), 997f, Struct_2(Struct_1(1u, 4294967295u), 302f, Struct_1(24558u, 4294967295u)), vec3<i32>(-40431i, 5568i, 0i)), Struct_3(vec2<u32>(924u, 38909u), -1000f, Struct_2(Struct_1(1u, 0u), 1148f, Struct_1(61023u, 10382u)), vec3<i32>(2147483647i, 15122i, 2147483647i)), Struct_3(vec2<u32>(2506u, 38262u), -877f, Struct_2(Struct_1(4294967295u, 0u), -1124f, Struct_1(1u, 1u)), vec3<i32>(7833i, -1i, -24244i)), Struct_3(vec2<u32>(38136u, 0u), 1399f, Struct_2(Struct_1(0u, 0u), -2940f, Struct_1(4294967295u, 13687u)), vec3<i32>(0i, 1i, 33415i)), Struct_3(vec2<u32>(1u, 4858u), 192f, Struct_2(Struct_1(1u, 14787u), 1000f, Struct_1(1u, 44610u)), vec3<i32>(i32(-2147483648), -40783i, -9467i)), Struct_3(vec2<u32>(2022u, 1u), -1773f, Struct_2(Struct_1(85946u, 1675u), 803f, Struct_1(1u, 4294967295u)), vec3<i32>(18838i, -6432i, -6221i)), Struct_3(vec2<u32>(0u, 20642u), 949f, Struct_2(Struct_1(20671u, 0u), 1048f, Struct_1(80154u, 4294967295u)), vec3<i32>(2147483647i, 1i, 2085i)), Struct_3(vec2<u32>(107488u, 3646u), 1000f, Struct_2(Struct_1(52115u, 29296u), -938f, Struct_1(12981u, 1u)), vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_3(vec2<u32>(58371u, 4294967295u), -1756f, Struct_2(Struct_1(1630u, 61122u), -774f, Struct_1(22701u, 47843u)), vec3<i32>(29117i, 0i, i32(-2147483648))), Struct_3(vec2<u32>(15489u, 62795u), -374f, Struct_2(Struct_1(1u, 45975u), 395f, Struct_1(0u, 1u)), vec3<i32>(2147483647i, 2147483647i, -27601i)), Struct_3(vec2<u32>(1u, 4294967295u), 1000f, Struct_2(Struct_1(1180u, 44655u), 299f, Struct_1(3888u, 27169u)), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_3(vec2<u32>(386u, 0u), 585f, Struct_2(Struct_1(59739u, 0u), 992f, Struct_1(18488u, 4294967295u)), vec3<i32>(-7988i, 5773i, -1i)), Struct_3(vec2<u32>(66586u, 13184u), 624f, Struct_2(Struct_1(42864u, 16552u), -1019f, Struct_1(16022u, 4294967295u)), vec3<i32>(-848i, -24759i, i32(-2147483648))), Struct_3(vec2<u32>(0u, 0u), -344f, Struct_2(Struct_1(1u, 4294967295u), -359f, Struct_1(46177u, 6684u)), vec3<i32>(i32(-2147483648), -1099i, 9446i)), Struct_3(vec2<u32>(47133u, 14285u), 1154f, Struct_2(Struct_1(2265u, 22606u), -810f, Struct_1(0u, 813u)), vec3<i32>(-51388i, -24397i, -38483i)), Struct_3(vec2<u32>(4294967295u, 1u), -609f, Struct_2(Struct_1(35362u, 4294967295u), 1007f, Struct_1(16222u, 54453u)), vec3<i32>(-1i, -47425i, i32(-2147483648))));

var<private> global2: i32 = i32(-2147483648);

var<private> global3: Struct_2;

var<private> global4: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global4 = true;
    let var_0 = arg_1.c.c;
    var var_1 = 22947u;
    global0 = array<u32, 20>();
    let var_2 = false;
    return ~arg_1.a.x;
}

fn func_1(arg_0: u32) -> u32 {
    global3 = Struct_2(global3.c, _wgslsmith_f_op_f32(-1635f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))), global3.c);
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(~u_input.a, abs(vec2<u32>(0u, 0u))), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_0 & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17867u, 20u)], 20u)], 20u)], 1u), abs(u_input.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 18462u), u_input.a) % vec2<u32>(32u)), u_input.a), vec2<u32>(~(~11278u), ~func_2(Struct_4(vec4<f32>(global3.b, global3.b, global3.b, global3.b), vec2<f32>(global3.b, 157f), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 20u)], u_input.a.x), -522f, global3.a), Struct_3(vec2<u32>(1u, 64223u), -1692f, Struct_2(global3.c, 1014f, Struct_1(arg_0, global0[_wgslsmith_index_u32(4294967295u, 20u)])), vec3<i32>(-2147483647i, -13180i, 23804i)), global3.a), Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(global3.c.a, 20u)], u_input.a.x), 1789f, Struct_2(Struct_1(4294967295u, 4294967295u), global3.b, Struct_1(1u, 0u)), vec3<i32>(1i, 18417i, 2147483647i)))), true));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global2 = -45207i << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], global3.c.a, global3.c.a), ~vec3<u32>(32951u, arg_0.a, global0[_wgslsmith_index_u32(global3.c.a, 20u)]))) % 32u);
    let var_0 = Struct_2(Struct_1(4294967295u, ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(f32(-1f) * -1160f)) - global3.b) - _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(global3.b - global3.b)))), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, global3.a.a, arg_0.b), countOneBits(vec3<u32>(4294967295u, u_input.a.x, 4294967295u))), 20u)], 18318u));
    var var_1 = abs(u_input.a.x);
    var var_2 = Struct_2(global3.c, _wgslsmith_div_f32(-1752f, global3.b), Struct_1(firstTrailingBit(0u), firstLeadingBit(func_2(Struct_4(vec4<f32>(global3.b, var_0.b, -845f, 1057f), vec2<f32>(global3.b, 183f), var_0, global1[_wgslsmith_index_u32(0u, 32u)], Struct_1(68246u, global3.a.a)), global1[_wgslsmith_index_u32(abs(arg_0.a), 32u)]))));
    var_1 = 0u;
    return !vec3<bool>(!select(true, true, true), all(vec2<bool>(true, true)), select(true, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -26663i;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-565f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)));
    let var_1 = global3.a;
    global2 = ~(select(_wgslsmith_mod_i32(1i, -2147483647i), max(1i, -35702i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)] % 32u)), false) >> (func_1(abs(0u << (0u % 32u))) % 32u));
    var var_2 = 0u;
    var var_3 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(-(i32(-1i) * -1i)) >> ((~var_3.a ^ var_3.b) % 32u), firstTrailingBit(vec2<i32>(-43738i, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -8279i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2673f, -1100f))))), select(-vec3<i32>(1i, 1i, 1i), ~_wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, -16442i, 1i), vec3<i32>(27099i, 20793i, -10448i)), -vec3<i32>(-10265i, -1i, 2147483647i)), !select(vec3<bool>(true, true, true), func_3(Struct_1(1u, global0[_wgslsmith_index_u32(var_1.a, 20u)])), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
}

