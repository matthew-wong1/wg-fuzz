struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-329f, 409f, -1000f), vec3<f32>(-794f, 538f, -829f), vec3<f32>(-794f, 1161f, 732f), vec3<f32>(-1347f, -1898f, 688f), vec3<f32>(752f, 800f, 318f), vec3<f32>(133f, 466f, -1123f), vec3<f32>(-175f, -167f, 1040f), vec3<f32>(-701f, -1056f, -1344f), vec3<f32>(-900f, -1779f, 1317f), vec3<f32>(-1100f, 2977f, -1213f), vec3<f32>(294f, 290f, 1809f), vec3<f32>(-282f, 713f, 641f), vec3<f32>(-2264f, 1549f, -1000f), vec3<f32>(680f, -637f, 1861f), vec3<f32>(-1213f, -1000f, 1000f), vec3<f32>(-578f, 807f, 276f), vec3<f32>(-662f, 128f, 1039f), vec3<f32>(104f, -409f, 1162f), vec3<f32>(-381f, 308f, -736f), vec3<f32>(877f, 589f, -910f), vec3<f32>(-1486f, -1053f, -868f), vec3<f32>(1000f, -722f, 529f), vec3<f32>(-764f, -955f, -819f), vec3<f32>(969f, -129f, 1037f), vec3<f32>(344f, 535f, -269f), vec3<f32>(311f, -430f, 217f), vec3<f32>(-1000f, -170f, -1124f), vec3<f32>(122f, 1000f, -534f), vec3<f32>(-936f, 654f, 270f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> i32 {
    return ~abs(0i);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<i32>) -> bool {
    global1 = array<vec3<f32>, 29>();
    var var_0 = arg_0;
    var var_1 = -(~15221i);
    var var_2 = var_0.a.a;
    var var_3 = arg_0;
    return var_0.a.b.x;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    var var_0 = countOneBits(~54855u) ^ global0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(1338f, 1000f, false)), _wgslsmith_f_op_f32(floor(-641f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(627f, 292f), vec2<f32>(772f, 671f))))), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(143f, 1758f) + vec2<f32>(-850f, -2864f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(788f, 934f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2572f, 138f) * vec2<f32>(227f, -528f)), select(false, false, false))), func_3(Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, true), vec2<f32>(207f, -1226f), vec4<i32>(-14019i, 0i, 2147483647i, 2147483647i)), vec4<u32>(30807u, 12045u, 4294967295u, global0.x), vec2<u32>(u_input.a.x, 43763u), -2147483647i), vec2<f32>(-1487f, 649f), global0.x, vec4<i32>(1i, 2147483647i, -1i, -2147483647i)) == true)), false)));
    var_0 = ~0u;
    let var_2 = var_1.x;
    var var_3 = Struct_2(Struct_1(select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), vec2<bool>(false, true), vec2<bool>(true, true)), !vec4<bool>(false, arg_0 != global0.x, true, all(vec4<bool>(true, false, true, true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2)))), 1078f), vec4<i32>(-9677i, _wgslsmith_mult_i32(~(-9535i), abs(43128i)), max(-10914i, min(-17224i, 1i)), 10710i)), vec4<u32>(max(_wgslsmith_add_u32(u_input.a.x, ~45841u), _wgslsmith_div_u32(_wgslsmith_sub_u32(61515u, global0.x), 0u)), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(773u, arg_0), 4294967295u, ~(~global0.x)), ~min(4294967295u, u_input.a.x) >> (_wgslsmith_div_u32(firstTrailingBit(35799u), abs(arg_0)) % 32u), arg_0), _wgslsmith_add_vec2_u32(countOneBits(~_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, global0.x))), vec2<u32>(_wgslsmith_div_u32(~0u, u_input.a.x), 1u)), -select(-2147483647i, 1i, false | any(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec2_f32(exp2(var_3.a.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(abs(_wgslsmith_clamp_i32(19094i, 11850i, _wgslsmith_add_i32(arg_1.d.x, -45973i))));
    global0 = vec2<u32>(35974u >> ((~36391u << ((38321u << (u_input.a.x % 32u)) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(76355u, 4294967295u, u_input.a.x), vec3<u32>(global0.x, u_input.a.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(6773u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, 944u)), arg_2.b.x))) & _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(global0.x, global0.x) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global0.x, 1u)) % vec2<u32>(32u))), vec2<u32>(countOneBits(global0.x), select(u_input.a.x, 1u, false)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(global0.x, 0u), vec2<u32>(9582u, global0.x)) % vec2<u32>(32u)));
    var_0 = ~2147483647i;
    var var_1 = arg_1.a.x;
    global1 = array<vec3<f32>, 29>();
    return func_4(func_4(func_4(arg_2, Struct_2(Struct_1(arg_2.b.wx, vec4<bool>(false, arg_2.b.x, false, false), vec2<f32>(398f, 1197f), arg_1.d), vec4<u32>(0u, 9390u, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, vec2<u32>(24722u, u_input.a.x)), arg_1.d.x)), Struct_2(arg_1, min(vec4<u32>(56138u, global0.x, u_input.a.x, global0.x), vec4<u32>(19627u, 1u, 4294967295u, 1u)) & vec4<u32>(u_input.a.x, global0.x, 66281u, global0.x), u_input.a, _wgslsmith_add_i32(-2147483647i, arg_2.d.x) << (~85157u % 32u))), Struct_2(arg_1, vec4<u32>((4294967295u & u_input.a.x) >> (27613u % 32u), global0.x | abs(u_input.a.x), select(u_input.a.x ^ u_input.a.x, 1u, arg_1.b.x), _wgslsmith_div_u32(~1345u, ~global0.x)), ~min(vec2<u32>(4294967295u, 12112u), u_input.a), arg_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -_wgslsmith_add_i32(abs(-29264i), -(~(-1i)));
    var var_1 = vec3<i32>(23389i, _wgslsmith_dot_vec4_i32(vec4<i32>(func_1(), -66496i, var_0 | 13927i, _wgslsmith_mult_i32(~var_0, var_0)), abs(vec4<i32>(var_0, -2147483647i, 45638i, 25729i)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(42027u, 46192u, global0.x, 23308u), ~vec4<u32>(4294967295u, 30423u, u_input.a.x, global0.x)) % vec4<u32>(32u))), var_0);
    var var_2 = func_5(min(-var_1.x, ~(~min(-25836i, var_0))), func_4(Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), _wgslsmith_f_op_vec2_f32(func_2(global0.x)), ~(~vec4<i32>(-29461i, -2147483647i, 13445i, 0i))), Struct_2(Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec4<bool>(true, false, true, false), _wgslsmith_div_vec2_f32(vec2<f32>(-911f, 2153f), vec2<f32>(-1440f, 452f)), max(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(var_1.x, var_1.x, var_0, 1i))), abs(vec4<u32>(global0.x, global0.x, 4294967295u, 4294967295u)), ~reverseBits(u_input.a), 14712i | _wgslsmith_mult_i32(var_0, var_1.x))), func_4(Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_4(func_4(Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, false, true), vec2<f32>(-305f, 1874f), vec4<i32>(1i, var_0, var_0, var_0)), Struct_2(Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, false), vec2<f32>(1560f, -311f), vec4<i32>(var_0, var_0, var_1.x, var_1.x)), vec4<u32>(global0.x, global0.x, global0.x, 1u), vec2<u32>(47006u, 19898u), -2147483647i)), Struct_2(Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, false), vec2<f32>(-1000f, -202f), vec4<i32>(var_0, 2147483647i, -3294i, 21915i)), vec4<u32>(37502u, u_input.a.x, u_input.a.x, 44645u), u_input.a, var_0)).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(903f, -1417f)) + vec2<f32>(-173f, 1008f)), vec4<i32>(abs(2147483647i), ~var_0, ~(-11325i), _wgslsmith_div_i32(16336i, var_0))), Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(func_2(u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, -3694i), vec4<i32>(-14169i, -6947i, var_1.x, var_0), vec4<i32>(-39457i, var_1.x, 0i, var_1.x))), ~min(vec4<u32>(78346u, 1u, global0.x, u_input.a.x), vec4<u32>(1u, 52071u, 24021u, 54157u)), ~(~vec2<u32>(u_input.a.x, 36289u)), var_1.x & ~var_0)));
    var_2 = Struct_1(func_4(func_4(Struct_1(var_2.a, select(vec4<bool>(true, true, true, var_2.a.x), var_2.b, var_2.a.x), var_2.c, ~var_2.d), Struct_2(func_5(-9382i, Struct_1(vec2<bool>(true, false), var_2.b, var_2.c, vec4<i32>(-17052i, 567i, -37336i, 0i)), Struct_1(var_2.b.xx, vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false), vec2<f32>(var_2.c.x, var_2.c.x), var_2.d)), ~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 13169u), vec2<u32>(4294967295u, u_input.a.x), 1i)), Struct_2(Struct_1(vec2<bool>(true, true), var_2.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1526f, -863f), vec2<f32>(-298f, 1063f), var_2.b.x)), var_2.d & vec4<i32>(-2147483647i, -34468i, 44467i, var_0)), vec4<u32>(~global0.x, u_input.a.x, ~global0.x, reverseBits(u_input.a.x)), u_input.a, var_1.x)).a, var_2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(370f * -340f) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.c.x, var_2.c.x), _wgslsmith_f_op_f32(568f * 1500f)))), var_2.c.x), vec4<i32>(var_2.d.x, var_2.d.x, _wgslsmith_mult_i32(var_1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_2.d.x, -2147483647i, -2576i), firstTrailingBit(var_2.d))), var_0));
    var var_3 = ~(-(~(~(~vec2<i32>(var_1.x, 1i)))));
    let var_4 = Struct_2(Struct_1(vec2<bool>(var_2.a.x, all(func_4(Struct_1(var_2.b.wx, vec4<bool>(var_2.a.x, var_2.b.x, var_2.a.x, false), var_2.c, vec4<i32>(var_2.d.x, var_3.x, var_0, var_3.x)), Struct_2(Struct_1(vec2<bool>(var_2.a.x, var_2.b.x), var_2.b, vec2<f32>(var_2.c.x, 174f), var_2.d), vec4<u32>(global0.x, global0.x, u_input.a.x, 0u), u_input.a, var_2.d.x)).b.wyz)), var_2.b, vec2<f32>(_wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(trunc(-769f))), -191f), var_2.d), ~(~vec4<u32>(23561u, u_input.a.x, u_input.a.x, u_input.a.x)) << ((countOneBits(~vec4<u32>(54829u, 0u, 35311u, 36494u)) ^ ~(~vec4<u32>(1u, u_input.a.x, 60873u, u_input.a.x))) % vec4<u32>(32u)), reverseBits(~vec2<u32>(global0.x, 0u)), _wgslsmith_dot_vec3_i32(select(firstTrailingBit(var_2.d.xxy), vec3<i32>(var_0, -var_3.x, firstLeadingBit(38235i)), vec3<bool>(true, true, true)), var_2.d.ywy));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(774f, 390f), var_4.a.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(126f, 735f) * vec2<f32>(var_4.a.c.x, -1488f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1880f)))) - _wgslsmith_f_op_vec2_f32(step(var_4.a.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.c.x, 263f), vec2<f32>(var_2.c.x, 148f))))))) - _wgslsmith_f_op_vec2_f32(var_4.a.c + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, var_2.c.x)), var_2.c)));
    var_1 = vec3<i32>(-1i, ~var_2.d.x, _wgslsmith_dot_vec3_i32(select(firstLeadingBit(var_2.d.wwz), reverseBits(~vec3<i32>(var_0, var_2.d.x, -19366i)), false), -_wgslsmith_mult_vec3_i32(var_4.a.d.yxw, _wgslsmith_sub_vec3_i32(var_2.d.yxw, vec3<i32>(-2147483647i, -2147483647i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), var_2.c.x, _wgslsmith_f_op_vec2_f32(func_2(0u)).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1190f, var_4.a.c.x, var_5.x), vec3<f32>(1333f, 1055f, 967f), func_4(Struct_1(vec2<bool>(var_4.a.a.x, var_2.a.x), var_4.a.b, vec2<f32>(var_4.a.c.x, -877f), var_4.a.d), var_4).b.x)))));
}

