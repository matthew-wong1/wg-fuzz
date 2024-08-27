struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 19>;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1113f, -708f, -1563f, 186f), vec4<f32>(-1470f, -139f, 299f, 1223f), vec4<f32>(-1320f, 1828f, 1320f, 371f), vec4<f32>(1085f, 165f, 2163f, 2132f), vec4<f32>(1535f, -662f, -1000f, -263f), vec4<f32>(1000f, 2183f, 207f, -193f), vec4<f32>(-644f, -1362f, -1303f, 1011f), vec4<f32>(364f, -132f, -1000f, -749f), vec4<f32>(-288f, 917f, -869f, -1174f), vec4<f32>(881f, 162f, 326f, 892f), vec4<f32>(603f, -630f, 777f, 1000f), vec4<f32>(1000f, 350f, -1948f, 1875f), vec4<f32>(-847f, -324f, 1183f, -951f), vec4<f32>(-1631f, 969f, 1222f, -591f), vec4<f32>(823f, -399f, 188f, -1016f), vec4<f32>(1000f, 1309f, 602f, 329f), vec4<f32>(1206f, -241f, 392f, -967f), vec4<f32>(399f, 252f, 542f, -1033f));

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(-14294i, -31012i, 639i, 24278i), true, vec4<i32>(-1i, 27054i, 28350i, 2147483647i)), Struct_1(vec4<i32>(71112i, 13104i, 2147483647i, 1i), false, vec4<i32>(i32(-2147483648), -78i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), -1i), false, vec4<i32>(-4170i, 0i, -8070i, -28605i)), Struct_1(vec4<i32>(48419i, 6878i, 0i, 34799i), true, vec4<i32>(2147483647i, -1i, -56878i, 0i)), Struct_1(vec4<i32>(71157i, -125663i, -16241i, 1i), true, vec4<i32>(0i, 18880i, 0i, 38233i)), Struct_1(vec4<i32>(i32(-2147483648), -39215i, -3817i, 6398i), true, vec4<i32>(14670i, -25753i, 12804i, -20600i)), Struct_1(vec4<i32>(30593i, -36522i, i32(-2147483648), 2147483647i), true, vec4<i32>(0i, 0i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(-12162i, 52617i, 2147483647i, i32(-2147483648)), false, vec4<i32>(-14066i, i32(-2147483648), -18774i, 35062i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 33293i, -5616i), false, vec4<i32>(-4896i, i32(-2147483648), 12666i, -40990i)), Struct_1(vec4<i32>(46468i, -43963i, -8049i, -10268i), true, vec4<i32>(i32(-2147483648), 1035i, i32(-2147483648), -14262i)), Struct_1(vec4<i32>(1i, 2147483647i, 4307i, 1i), false, vec4<i32>(-1i, 1i, -23407i, 0i)), Struct_1(vec4<i32>(1i, 1i, 534i, -38837i), false, vec4<i32>(0i, -1i, 283i, -1i)), Struct_1(vec4<i32>(19599i, 0i, 68220i, 47361i), false, vec4<i32>(1i, i32(-2147483648), 51354i, -1i)), Struct_1(vec4<i32>(-59740i, i32(-2147483648), 1i, 31754i), false, vec4<i32>(2147483647i, 6355i, i32(-2147483648), 15697i)), Struct_1(vec4<i32>(1i, 2147483647i, i32(-2147483648), 47409i), true, vec4<i32>(-1i, -19586i, -21308i, i32(-2147483648))), Struct_1(vec4<i32>(25134i, 7535i, 1i, -1637i), false, vec4<i32>(1i, 11839i, 1i, 2147483647i)), Struct_1(vec4<i32>(0i, 27605i, 1i, i32(-2147483648)), false, vec4<i32>(-793i, 30985i, -10460i, 1682i)), Struct_1(vec4<i32>(1i, -1i, 0i, 1i), false, vec4<i32>(36017i, 1i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(1i, i32(-2147483648), -53681i, 2147483647i), true, vec4<i32>(-6110i, 50015i, 23752i, -13106i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 22479i, 2147483647i), true, vec4<i32>(0i, 155i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, -3585i, 1i, -13968i), false, vec4<i32>(11406i, -21138i, -1i, -52442i)), Struct_1(vec4<i32>(-2438i, 40283i, 0i, -1i), true, vec4<i32>(-32325i, -1i, 19731i, 2147483647i)), Struct_1(vec4<i32>(-1i, 5054i, i32(-2147483648), 26528i), true, vec4<i32>(-30540i, 2147483647i, 14482i, 65627i)), Struct_1(vec4<i32>(0i, 0i, 0i, 2147483647i), true, vec4<i32>(i32(-2147483648), 1i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 8181i, -162i, 58355i), false, vec4<i32>(-32772i, 25959i, 1i, -47596i)), Struct_1(vec4<i32>(-3744i, 0i, 0i, -44568i), true, vec4<i32>(i32(-2147483648), 1i, -1i, 15878i)), Struct_1(vec4<i32>(-11493i, 2185i, 2147483647i, 2147483647i), false, vec4<i32>(0i, 1i, -35132i, -9386i)));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(-1i, i32(-2147483648), 15132i, 1i), false, vec4<i32>(1i, 0i, -39014i, 31741i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_vec3_u32(~arg_0, arg_0);
    var var_1 = -10336i;
    global2 = array<vec4<f32>, 18>();
    var_0 = vec3<u32>(~(~(~var_0.x >> (51617u % 32u))), ~u_input.d, ~var_0.x);
    var_1 = max(~(-11533i) | _wgslsmith_mult_i32(global0.a.a.x, firstTrailingBit(abs(global0.a.c.x))), _wgslsmith_add_i32(7143i & abs(global4.a.x), arg_1.c.x));
    return !(!vec3<bool>(false, any(!vec3<bool>(false, global0.a.b, false)), select(all(vec3<bool>(arg_1.b, false, false)), global1[_wgslsmith_index_u32(29710u, 19u)] && false, arg_1.b | true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    global1 = array<bool, 19>();
    var var_0 = !(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(18911u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global0.b.x, global0.b.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1136f, -771f)))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1042f, _wgslsmith_f_op_f32(-838f + -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(408f, 1241f), vec2<f32>(-733f, -942f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -886f)))))), u_input.a.x, global3[_wgslsmith_index_u32(min(~u_input.d | ~(~u_input.d), 54323u), 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(42822u, 18u)] * global2[_wgslsmith_index_u32(u_input.d, 18u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.d, 18u)]) + _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(78895u, 18u)])))), select(_wgslsmith_add_vec3_u32(~vec3<u32>(1853u, u_input.d, u_input.d), vec3<u32>(891u, u_input.d, ~u_input.d)), (abs(vec3<u32>(1u, u_input.d, u_input.d)) & ~vec3<u32>(0u, 1u, u_input.d)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, 26905u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, 25391u, u_input.d))), select(func_3(vec3<u32>(u_input.d, u_input.d, 36053u), Struct_1(global0.a.a, global4.b, u_input.c), _wgslsmith_f_op_f32(1412f + -704f), _wgslsmith_f_op_f32(f32(-1f) * -538f)), var_0.zzz, u_input.d != u_input.d)));
    let var_2 = var_1;
    let var_3 = all(var_0.xwz);
    return -38903i;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec3<i32>(i32(-1i) * -2575i, _wgslsmith_add_i32(~0i, -5106i), func_2(select(global0.b, select(!global0.b, !global0.b, !arg_0.b), global0.b), Struct_1(~vec4<i32>(35751i, -32831i, arg_0.a.c.x, 0i), arg_0.a.b, -vec4<i32>(global0.a.c.x, 2147483647i, -1i, -15033i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-997f)), 440f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1219f)), _wgslsmith_f_op_f32(f32(-1f) * -1010f)), 1227f) - vec4<f32>(_wgslsmith_f_op_f32(233f + -788f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1653f))), _wgslsmith_f_op_f32(ceil(-700f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1012f, -1345f)), -716f)))));
    var var_2 = arg_0.a;
    global3 = array<Struct_1, 27>();
    var_2 = arg_0.a;
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.d, _wgslsmith_mod_u32(~abs(u_input.d), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<u32>(0u, 60370u, u_input.d)), ~vec3<u32>(u_input.d, 57628u, u_input.d))), 0u) & _wgslsmith_sub_u32(4294967295u, ~u_input.d), 27u)];
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(max(-2288f, _wgslsmith_f_op_f32(select(-489f, -1095f, false)))))) >= _wgslsmith_f_op_f32(-1983f * -376f);
    global3 = array<Struct_1, 27>();
    global3 = array<Struct_1, 27>();
    return Struct_3(Struct_1(vec4<i32>(arg_0.a.x, arg_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2098i, var_0.x), arg_0.a.wz) >> (0u % 32u), _wgslsmith_div_i32(21806i, _wgslsmith_dot_vec4_i32(arg_1.c, vec4<i32>(28798i, global0.a.a.x, 25177i, 2147483647i)))), select(all(!vec2<bool>(arg_0.b, var_1)), any(vec4<bool>(false, global0.a.b, arg_2.b, global1[_wgslsmith_index_u32(4294967295u, 19u)])) == (true & arg_0.b), var_1), vec4<i32>(countOneBits(global4.a.x), ~arg_0.a.x, 0i, min(u_input.b.x | global4.c.x, arg_1.c.x))), vec2<bool>(true, any(vec2<bool>(global0.a.b, false))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<bool, 19>();
    let var_0 = func_4(func_4(Struct_1(-(~arg_0.a.a), _wgslsmith_clamp_u32(37589u, 5217u, 0u) != ~arg_1, global0.a.a), global0.a, global0.a).a, func_4(Struct_1(vec4<i32>(48424i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_0.a.c.x, 54690i), vec3<i32>(global0.a.a.x, arg_0.a.c.x, global4.a.x)), 1i, -10628i), !(global4.b && global0.a.b), select(_wgslsmith_div_vec4_i32(global4.a, vec4<i32>(-32256i, 40750i, -26006i, 0i)), vec4<i32>(global0.a.a.x, u_input.c.x, arg_2.c.c.x, global4.c.x), true)), Struct_1(~min(vec4<i32>(global0.a.a.x, 0i, -29230i, arg_2.b), vec4<i32>(0i, u_input.c.x, arg_2.b, 1i)), global0.a.b, vec4<i32>(~(-1i), _wgslsmith_add_i32(43980i, u_input.c.x), u_input.b.x, _wgslsmith_clamp_i32(arg_2.c.a.x, -11523i, 41365i))), Struct_1(func_1(func_4(Struct_1(vec4<i32>(-32967i, arg_0.a.a.x, global4.c.x, arg_2.c.c.x), arg_2.c.b, vec4<i32>(arg_0.a.c.x, arg_0.a.a.x, 0i, global4.a.x)), global3[_wgslsmith_index_u32(u_input.d, 27u)], arg_0.a)).a, true, firstLeadingBit(firstTrailingBit(vec4<i32>(1i, -2147483647i, u_input.b.x, global0.a.c.x))))).a, global3[_wgslsmith_index_u32(arg_2.e.x, 27u)]);
    global3 = array<Struct_1, 27>();
    let var_1 = ~(reverseBits(abs(_wgslsmith_div_u32(14867u, 25385u))) >> (arg_2.e.x % 32u));
    global0 = var_0;
    return func_1(func_4(arg_0.a, Struct_1(~abs(arg_0.a.c), var_0.b.x & (arg_2.a.x == -450f), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.a.c.x, 1i, arg_0.a.c.x) | arg_0.a.a, var_0.a.a, reverseBits(arg_2.c.a))), var_0.a));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~select(~min(reverseBits(u_input.d), ~u_input.d), _wgslsmith_sub_u32(select(_wgslsmith_add_u32(u_input.d, u_input.d), u_input.d, !arg_3.b), 0u), true);
    return func_1(func_4(arg_1, Struct_1(-countOneBits(global4.c), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.d, 2837u, u_input.d)), abs(vec3<u32>(u_input.d, 48544u, 5572u))), 19u)], global4.a), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1271f, 175f), vec2<f32>(497f, -1719f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1123f, -246f) + vec2<f32>(-934f, 526f)))))));
    let var_1 = ~0i;
    var var_2 = Struct_3(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(4294967295u, 18u)] + vec4<f32>(var_0.x, var_0.x, -1067f, 361f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -179f, var_0.x, 870f)))), func_5(func_4(func_1(Struct_3(Struct_1(vec4<i32>(-76027i, -6325i, u_input.c.x, var_1), true, vec4<i32>(var_1, -2147483647i, 1i, var_1)), global0.b)), Struct_1(vec4<i32>(global0.a.a.x, 0i, global0.a.c.x, 0i), true, vec4<i32>(u_input.b.x, global0.a.a.x, 1i, global0.a.a.x)), Struct_1(global4.c, false, u_input.c)), ~(~u_input.d), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 196f) * vec2<f32>(var_0.x, var_0.x)), reverseBits(0i), global3[_wgslsmith_index_u32(u_input.d << (u_input.d % 32u), 27u)], _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(u_input.d, 18u)])), ~vec3<u32>(u_input.d, u_input.d, u_input.d))), global0.b.x, global3[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~0u, u_input.d), _wgslsmith_mult_u32(u_input.d, 1u), !global0.a.b && global0.b.x), 27u)]), vec2<bool>(false, firstTrailingBit(u_input.d) != (u_input.d << (53070u % 32u))));
    var_2 = func_4(Struct_1(vec4<i32>(var_2.a.c.x, _wgslsmith_mod_i32(var_2.a.a.x, ~(-22983i)), ~_wgslsmith_div_i32(var_2.a.a.x, -1i), _wgslsmith_mod_i32(global0.a.c.x, u_input.b.x) << (~12339u % 32u)), var_2.b.x, func_4(global0.a, global0.a, func_1(Struct_3(Struct_1(var_2.a.c, true, vec4<i32>(-45799i, -310i, 10231i, u_input.b.x)), global0.b))).a.c | ~vec4<i32>(0i, -2147483647i, var_2.a.c.x, global4.a.x)), func_6(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d, u_input.d ^ 1u), 18u)]), func_5(Struct_3(func_5(Struct_3(Struct_1(vec4<i32>(10205i, var_2.a.c.x, var_2.a.c.x, 2147483647i), var_2.b.x, vec4<i32>(2147483647i, global4.c.x, -37491i, var_2.a.a.x)), vec2<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true)), u_input.d, Struct_2(vec2<f32>(-1000f, var_0.x), u_input.c.x, Struct_1(u_input.b, global0.a.b, var_2.a.c), global2[_wgslsmith_index_u32(u_input.d, 18u)], vec3<u32>(u_input.d, u_input.d, 45591u))), func_4(Struct_1(u_input.c, var_2.b.x, var_2.a.c), global3[_wgslsmith_index_u32(u_input.d, 27u)], global3[_wgslsmith_index_u32(30978u, 27u)]).b), 4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(u_input.d, u_input.d, 15558u)) % 32u), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(502f, var_0.x))), -47018i, Struct_1(u_input.b, global0.b.x, vec4<i32>(global4.a.x, 2147483647i, global4.c.x, u_input.c.x)), global2[_wgslsmith_index_u32(1u, 18u)], vec3<u32>(u_input.d, u_input.d, 65059u))), global4.b, Struct_1(max(-vec4<i32>(2147483647i, -12236i, -2147483647i, 0i), select(vec4<i32>(-6595i, u_input.b.x, 0i, global0.a.a.x), u_input.b, true)), true, select(func_1(Struct_3(var_2.a, vec2<bool>(global4.b, var_2.a.b))).c, vec4<i32>(global4.a.x, 0i, var_2.a.a.x, var_1), select(vec4<bool>(var_2.a.b, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(31543u, 19u)], var_2.b.x), vec4<bool>(global1[_wgslsmith_index_u32(24841u, 19u)], global1[_wgslsmith_index_u32(3252u, 19u)], true, global1[_wgslsmith_index_u32(u_input.d, 19u)]), false)))), Struct_1(abs(vec4<i32>(0i, global4.a.x, var_2.a.a.x, global0.a.c.x)) & vec4<i32>(13626i, func_4(Struct_1(vec4<i32>(0i, global0.a.c.x, 26000i, var_2.a.a.x), global4.b, vec4<i32>(u_input.a.x, var_1, var_1, 17801i)), Struct_1(var_2.a.c, true, var_2.a.a), var_2.a).a.a.x, -1i, ~u_input.b.x), global0.b.x, -(global4.a & vec4<i32>(u_input.b.x, var_1, -1i, var_1)) ^ _wgslsmith_mod_vec4_i32(func_5(Struct_3(Struct_1(vec4<i32>(0i, global0.a.c.x, global0.a.a.x, 0i), global0.a.b, vec4<i32>(global0.a.c.x, var_2.a.c.x, global4.a.x, u_input.c.x)), vec2<bool>(false, true)), u_input.d, Struct_2(vec2<f32>(-1000f, var_0.x), var_2.a.c.x, var_2.a, global2[_wgslsmith_index_u32(u_input.d, 18u)], vec3<u32>(u_input.d, u_input.d, u_input.d))).c, abs(global0.a.a))));
    global0 = Struct_3(func_4(func_1(func_4(var_2.a, Struct_1(vec4<i32>(-8208i, global0.a.c.x, u_input.b.x, u_input.b.x), var_2.a.b, u_input.b), Struct_1(vec4<i32>(u_input.b.x, var_1, -9228i, 0i), global1[_wgslsmith_index_u32(1u, 19u)], vec4<i32>(30427i, 28237i, 8767i, u_input.a.x)))), global0.a, Struct_1(func_5(func_4(var_2.a, global0.a, global3[_wgslsmith_index_u32(u_input.d, 27u)]), 0u, Struct_2(vec2<f32>(var_0.x, 1204f), var_1, global3[_wgslsmith_index_u32(u_input.d, 27u)], global2[_wgslsmith_index_u32(u_input.d, 18u)], vec3<u32>(u_input.d, 61285u, u_input.d))).c, global4.a.x >= min(-9359i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(global4.a.x, var_2.a.a.x, 2922i, -2147483647i), select(vec4<i32>(-1i, 2147483647i, var_2.a.c.x, global4.c.x), vec4<i32>(37960i, 2147483647i, var_2.a.c.x, -1i), global0.b.x)))).a, select(vec2<bool>(global1[_wgslsmith_index_u32(125755u, 19u)], true), global0.b, func_3(max(vec3<u32>(u_input.d, u_input.d, 5372u), vec3<u32>(4294967295u, 24062u, 4294967295u)) << (~vec3<u32>(u_input.d, u_input.d, 56145u) % vec3<u32>(32u)), func_6(vec4<f32>(var_0.x, var_0.x, 569f, 277f), Struct_1(vec4<i32>(0i, var_1, u_input.c.x, -1i), var_2.a.b, global4.c), func_6(global2[_wgslsmith_index_u32(69635u, 18u)], var_2.a, true, Struct_1(vec4<i32>(global0.a.a.x, u_input.c.x, var_2.a.a.x, 1i), var_2.b.x, vec4<i32>(-53219i, var_1, -2982i, 45034i))).b, func_1(Struct_3(Struct_1(global0.a.c, false, vec4<i32>(var_2.a.c.x, 1i, -13716i, u_input.a.x)), vec2<bool>(var_2.a.b, false)))), var_0.x, 817f).zz));
    let var_3 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 18u)]);
    global0 = func_4(global3[_wgslsmith_index_u32(u_input.d & _wgslsmith_div_u32(select(~56703u, 51738u, true || var_2.b.x), 0u), 27u)], func_4(func_4(global0.a, func_4(Struct_1(global0.a.c, false, global4.c), global0.a, global0.a).a, global0.a).a, func_5(Struct_3(global3[_wgslsmith_index_u32(1u | u_input.d, 27u)], vec2<bool>(global0.a.b, false)), u_input.d, Struct_2(var_3.yz, 1i, func_6(var_3, global0.a, true, var_2.a), var_3, ~vec3<u32>(15900u, 1u, u_input.d))), var_2.a).a, func_1(func_4(Struct_1(firstTrailingBit(vec4<i32>(1i, var_2.a.a.x, 0i, global4.c.x)), global0.b.x, _wgslsmith_add_vec4_i32(u_input.c, global4.c)), func_1(Struct_3(Struct_1(vec4<i32>(var_1, u_input.a.x, 2147483647i, 1i), true, global4.a), global0.b)), func_4(global0.a, Struct_1(global4.c, true, global4.a), var_2.a).a)));
    var_2 = func_4(Struct_1(~u_input.b, global0.a.b, ~max(select(var_2.a.a, vec4<i32>(2147483647i, global0.a.c.x, global0.a.a.x, var_1), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 19u)], false, global4.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.c.x, global0.a.c.x, 0i, var_1), vec4<i32>(global4.a.x, -1110i, var_2.a.a.x, var_2.a.a.x)))), func_1(func_4(Struct_1(select(var_2.a.c, vec4<i32>(var_1, 2147483647i, var_1, var_1), false), var_2.b.x, reverseBits(var_2.a.a)), var_2.a, func_4(func_6(vec4<f32>(-1568f, 221f, 538f, -756f), Struct_1(var_2.a.a, global0.b.x, vec4<i32>(global4.c.x, 13722i, -14181i, u_input.a.x)), global1[_wgslsmith_index_u32(u_input.d, 19u)], var_2.a), func_6(global2[_wgslsmith_index_u32(u_input.d, 18u)], var_2.a, true, var_2.a), func_4(Struct_1(global0.a.a, global1[_wgslsmith_index_u32(32573u, 19u)], vec4<i32>(26810i, global0.a.a.x, u_input.c.x, 0i)), Struct_1(global4.c, false, vec4<i32>(global4.a.x, u_input.a.x, 36409i, 6414i)), Struct_1(vec4<i32>(8834i, var_1, u_input.c.x, global4.c.x), global1[_wgslsmith_index_u32(61286u, 19u)], vec4<i32>(50598i, global0.a.a.x, var_1, global0.a.a.x))).a).a)), Struct_1(vec4<i32>(var_2.a.c.x, _wgslsmith_add_i32(i32(-1i) * -5431i, countOneBits(global4.a.x)), 1i, u_input.b.x), global4.b, firstTrailingBit(-firstTrailingBit(vec4<i32>(-33411i, var_2.a.a.x, u_input.a.x, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) * var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f + var_3.x) * var_0.x))), var_3.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_3.x)))))), ~(~1u), 0u, -(func_4(Struct_1(global4.c, global0.a.b, var_2.a.a), Struct_1(global4.c, global4.b, global4.a), global0.a).a.a.x & u_input.a.x) << (12441u % 32u));
}

