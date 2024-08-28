struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(-74139i, true, Struct_2(vec3<bool>(false, false, false), Struct_1(true, -31807i, 2147483647i, vec2<u32>(4294967295u, 0u), 8173i), vec3<f32>(-512f, -472f, -1000f), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -56176i)), Struct_1(true, -4925i, i32(-2147483648), vec2<u32>(1u, 21413u), 1i)), Struct_3(76236i, false, Struct_2(vec3<bool>(true, true, true), Struct_1(false, -10184i, 19335i, vec2<u32>(1u, 71690u), 2147483647i), vec3<f32>(145f, -675f, -197f), vec4<i32>(0i, 1002i, -1i, -84738i)), Struct_1(true, 2147483647i, -7422i, vec2<u32>(1u, 4294967295u), -40102i)), Struct_3(55162i, false, Struct_2(vec3<bool>(true, true, true), Struct_1(false, 0i, 0i, vec2<u32>(0u, 1u), -17655i), vec3<f32>(-1165f, 955f, 807f), vec4<i32>(-26099i, -46078i, 0i, 0i)), Struct_1(false, -1i, -5398i, vec2<u32>(274u, 4294967295u), 5524i)), Struct_3(-1i, true, Struct_2(vec3<bool>(false, false, true), Struct_1(false, 1i, -28014i, vec2<u32>(1u, 37039u), i32(-2147483648)), vec3<f32>(-1346f, 613f, 1000f), vec4<i32>(35014i, 2147483647i, 0i, 1436i)), Struct_1(false, -14792i, i32(-2147483648), vec2<u32>(16986u, 23122u), -43088i)), Struct_3(-20199i, true, Struct_2(vec3<bool>(true, true, true), Struct_1(false, -8407i, -54587i, vec2<u32>(4294967295u, 66429u), 2147483647i), vec3<f32>(667f, 1087f, -1287f), vec4<i32>(-10044i, -1771i, i32(-2147483648), -24353i)), Struct_1(false, 41365i, 2147483647i, vec2<u32>(11641u, 19214u), 9710i)), Struct_3(19157i, false, Struct_2(vec3<bool>(false, true, false), Struct_1(false, 60795i, 1i, vec2<u32>(0u, 1u), 0i), vec3<f32>(-1160f, -1087f, -1471f), vec4<i32>(0i, 0i, 27290i, 51045i)), Struct_1(false, i32(-2147483648), -14157i, vec2<u32>(26180u, 1u), 43475i)), Struct_3(-18156i, false, Struct_2(vec3<bool>(false, false, false), Struct_1(true, i32(-2147483648), -20156i, vec2<u32>(6097u, 0u), -29169i), vec3<f32>(-498f, -143f, -171f), vec4<i32>(0i, 41526i, 5530i, -1i)), Struct_1(false, 54478i, 2147483647i, vec2<u32>(92952u, 45728u), 1i)), Struct_3(35510i, false, Struct_2(vec3<bool>(true, true, true), Struct_1(true, 1i, 2147483647i, vec2<u32>(4294967295u, 4294967295u), 22604i), vec3<f32>(-860f, -2261f, 1299f), vec4<i32>(-39873i, -36546i, 2147483647i, -39095i)), Struct_1(true, 27494i, 2147483647i, vec2<u32>(4294967295u, 1u), 2147483647i)), Struct_3(-1i, false, Struct_2(vec3<bool>(false, true, false), Struct_1(false, i32(-2147483648), 2147483647i, vec2<u32>(4294967295u, 1u), 27536i), vec3<f32>(749f, 1150f, 115f), vec4<i32>(-1i, 24117i, 2147483647i, 0i)), Struct_1(false, 0i, 51441i, vec2<u32>(0u, 42851u), 0i)), Struct_3(-1i, true, Struct_2(vec3<bool>(false, false, true), Struct_1(true, 35698i, 813i, vec2<u32>(0u, 4294967295u), 1i), vec3<f32>(-1011f, 2008f, 1078f), vec4<i32>(2147483647i, -3171i, 51019i, -1i)), Struct_1(true, 0i, 44352i, vec2<u32>(1u, 4294967295u), -1i)), Struct_3(2147483647i, true, Struct_2(vec3<bool>(false, true, false), Struct_1(true, i32(-2147483648), -36301i, vec2<u32>(4294967295u, 4755u), -1i), vec3<f32>(-1311f, -159f, 854f), vec4<i32>(i32(-2147483648), 37544i, 70035i, 19587i)), Struct_1(true, 0i, 1i, vec2<u32>(6113u, 20626u), 16502i)), Struct_3(-10520i, true, Struct_2(vec3<bool>(true, true, false), Struct_1(true, -60023i, -31824i, vec2<u32>(4294967295u, 4294967295u), i32(-2147483648)), vec3<f32>(-1387f, 272f, 1108f), vec4<i32>(-1i, 2147483647i, -14790i, 0i)), Struct_1(false, 2147483647i, 2147483647i, vec2<u32>(23434u, 1u), 1i)), Struct_3(33437i, true, Struct_2(vec3<bool>(true, false, false), Struct_1(false, 2147483647i, 2147483647i, vec2<u32>(4294967295u, 75044u), -1i), vec3<f32>(-1000f, 1311f, 173f), vec4<i32>(-23779i, 0i, 6727i, -1i)), Struct_1(true, 5521i, -19654i, vec2<u32>(16340u, 1u), -15567i)), Struct_3(1i, true, Struct_2(vec3<bool>(true, false, false), Struct_1(false, 4798i, 16251i, vec2<u32>(4294967295u, 4294967295u), -36870i), vec3<f32>(214f, -619f, 1519f), vec4<i32>(-1i, -1i, -73157i, 1i)), Struct_1(true, -20043i, 2147483647i, vec2<u32>(19711u, 0u), -25916i)), Struct_3(-1i, false, Struct_2(vec3<bool>(false, false, true), Struct_1(true, 0i, 1862i, vec2<u32>(0u, 1u), 0i), vec3<f32>(1052f, -679f, -1833f), vec4<i32>(4596i, 2147483647i, -50709i, 0i)), Struct_1(false, 8818i, -8345i, vec2<u32>(12663u, 22407u), -1i)), Struct_3(14693i, false, Struct_2(vec3<bool>(true, true, false), Struct_1(false, 2147483647i, 1053i, vec2<u32>(30073u, 1u), -1i), vec3<f32>(743f, 453f, -832f), vec4<i32>(19167i, 2147483647i, 4904i, 75023i)), Struct_1(true, 2147483647i, -24671i, vec2<u32>(1u, 4294967295u), -3256i)), Struct_3(-13387i, true, Struct_2(vec3<bool>(true, true, true), Struct_1(true, i32(-2147483648), 1i, vec2<u32>(4300u, 4294967295u), -42169i), vec3<f32>(224f, -819f, 623f), vec4<i32>(-39149i, 0i, -1i, 2147483647i)), Struct_1(false, 8229i, 33555i, vec2<u32>(4294967295u, 0u), -34472i)), Struct_3(-1i, false, Struct_2(vec3<bool>(true, false, false), Struct_1(false, 2147483647i, 0i, vec2<u32>(80822u, 4294967295u), 2147483647i), vec3<f32>(1469f, -1214f, 706f), vec4<i32>(-37625i, -12797i, 2147483647i, -28916i)), Struct_1(true, 7777i, 0i, vec2<u32>(20007u, 0u), -39486i)), Struct_3(-1i, true, Struct_2(vec3<bool>(false, false, true), Struct_1(true, -24645i, i32(-2147483648), vec2<u32>(1u, 17642u), -45077i), vec3<f32>(846f, -615f, 422f), vec4<i32>(-71712i, -30183i, 28139i, 56066i)), Struct_1(false, 23773i, -1i, vec2<u32>(1u, 0u), -57625i)), Struct_3(2147483647i, false, Struct_2(vec3<bool>(true, false, false), Struct_1(false, 31674i, 6348i, vec2<u32>(4294967295u, 4294967295u), 0i), vec3<f32>(697f, 147f, 1937f), vec4<i32>(-26444i, 57539i, 15794i, -1i)), Struct_1(true, -1i, i32(-2147483648), vec2<u32>(1u, 25013u), -3898i)), Struct_3(0i, true, Struct_2(vec3<bool>(true, true, true), Struct_1(true, -36908i, 29636i, vec2<u32>(20286u, 4294967295u), -2827i), vec3<f32>(1000f, 833f, -1141f), vec4<i32>(-12167i, 0i, 4221i, 95938i)), Struct_1(false, 1i, 1i, vec2<u32>(34237u, 4294967295u), 37625i)));

var<private> global3: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = global2[_wgslsmith_index_u32(~global1.b.d.x, 21u)];
    let var_1 = Struct_4(-1077f, Struct_1(true, -10315i, global1.d.x, u_input.e, global1.d.x), global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, global1.c.x, var_0.c.c.x, _wgslsmith_f_op_f32(max(352f, -313f)))), var_0.c);
    global2 = array<Struct_3, 21>();
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(61524u, ~countOneBits(u_input.c.x)), 30u)]), min(var_1.e.d.yw, -global1.d.zw), var_0.c.d.wx);
}

fn func_3() -> vec3<u32> {
    global3 = -1026f;
    var var_0 = Struct_1(!all(select(!global1.a, vec3<bool>(global1.a.x, true, false), vec3<bool>(global1.b.a, global1.a.x, false))), ~(~_wgslsmith_mod_i32(~(-2147483647i), global1.d.x)), -(~(~u_input.a)), max(vec2<u32>(u_input.b, min(u_input.e.x << (u_input.b % 32u), 40038u << (u_input.e.x % 32u))), ~vec2<u32>(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 55780u), vec3<u32>(u_input.e.x, 0u, global1.b.d.x)))), firstTrailingBit(-1i));
    let var_1 = 30583u;
    let var_2 = global1.c;
    let var_3 = var_0.d.x;
    return vec3<u32>(~1u, reverseBits(~var_1), global1.b.d.x);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = (-_wgslsmith_sub_vec2_i32(func_2(617f), select(vec2<i32>(-1i, global1.b.b), global1.d.wx, arg_1.x)) & vec2<i32>(global0[_wgslsmith_index_u32(~arg_0, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.b.d.x, 1u, _wgslsmith_mult_u32(1u, u_input.e.x)), 30u)])) & (abs(global1.d.xy) & -vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -global0[_wgslsmith_index_u32(1u, 30u)]));
    global3 = -569f;
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(func_3(), ~abs(vec3<u32>(u_input.c.x, global1.b.d.x, 1u))), ~arg_0));
    let var_3 = u_input.e.x;
    return Struct_4(global1.c.x, Struct_1(arg_1.x, -2147483647i, -52426i, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, 53267u, arg_0)), select(3518u, global1.b.d.x, all(vec4<bool>(arg_1.x, arg_1.x, true, global1.b.a)))), ~57284i), global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1.c.x)), _wgslsmith_f_op_f32(global1.c.x + -550f), _wgslsmith_f_op_f32(select(-781f, 237f, false)), _wgslsmith_f_op_f32(-global1.c.x)))), Struct_2(vec3<bool>(true, max(var_3, 0u) != firstTrailingBit(global1.b.d.x), false && (global1.b.a & arg_1.x)), Struct_1(global1.a.x, -(~25084i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, global1.b.b, u_input.d), u_input.a), u_input.c, max(_wgslsmith_div_i32(0i, global1.d.x), -var_0.x)), global1.c, ~firstTrailingBit(vec4<i32>(9776i, 1i, -10992i, 1i))));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = Struct_1(true, _wgslsmith_add_i32(arg_2, ~(-5143i)), arg_3.e.b.e, firstTrailingBit(abs(vec2<u32>(arg_3.e.b.d.x, ~17715u))), arg_2);
    let var_1 = _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(2147483647i, min(-1i, u_input.a)));
    let var_2 = Struct_3(1i, var_0.d.x == func_3().x, Struct_2(!select(arg_1, select(vec3<bool>(global1.a.x, true, arg_1.x), vec3<bool>(global1.a.x, false, var_0.a), vec3<bool>(var_0.a, false, false)), arg_1), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1258f, 474f, 913f))), arg_3.e.d), func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.b.d.x, u_input.c.x), var_0.d), select(arg_3.e.b.d, vec2<u32>(1u, 1u), true)) >> (global1.b.d.x % 32u), select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_3.b.d.x <= arg_3.b.d.x, false), select(false, true, false || global1.a.x))).b);
    global1 = func_1(max(func_1(1u, arg_3.e.a.yz).b.d.x, min(~1u, global1.b.d.x)), vec2<bool>(true, false)).e;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(step(523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1138f, _wgslsmith_f_op_f32(-arg_3.d.x))), arg_3.c.x))), func_1(var_2.d.d.x, vec2<bool>(!select(true, arg_3.e.b.a, global1.a.x), any(func_1(10192u, vec2<bool>(false, arg_1.x)).e.a))).e.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.c.c, vec3<f32>(arg_3.c.x, arg_0, global1.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-695f, 249f, arg_3.c.x) * arg_3.e.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, -653f, 1003f) * _wgslsmith_f_op_vec3_f32(arg_3.e.c - vec3<f32>(var_2.c.c.x, arg_0, -946f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, 634f, 996f) - var_2.c.c), _wgslsmith_div_vec3_f32(global1.c, _wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, var_2.c.c.x, -582f), var_2.c.c)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -566f)), arg_3.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-363f, arg_0, arg_3.a, var_2.c.c.x)) - _wgslsmith_div_vec4_f32(arg_3.d, arg_3.d)) + arg_3.d), func_1(_wgslsmith_mod_u32(72071u, 1u), func_1(_wgslsmith_sub_u32(var_0.d.x, var_0.d.x), vec2<bool>(false, true)).e.a.yx).b.a)), Struct_2(vec3<bool>(_wgslsmith_f_op_f32(arg_0 - arg_3.d.x) <= _wgslsmith_f_op_f32(min(arg_3.e.c.x, global1.c.x)), arg_1.x, false), func_1(_wgslsmith_mod_u32(~var_0.d.x, _wgslsmith_clamp_u32(0u, 36664u, 4294967295u)), select(vec2<bool>(arg_1.x, global1.b.a), select(global1.a.yx, vec2<bool>(arg_3.b.a, global1.a.x), arg_3.b.a), true)).e.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -772f, -880f), var_2.c.c)) * _wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(arg_0, 146f, -315f))), var_2.c.d));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_3.b.d, global1.b.d ^ countOneBits(vec2<u32>(4294967295u, 27368u)), vec2<u32>(~11319u, min(var_3.b.d.x, 11434u))), ~reverseBits(arg_3.b.d)), vec2<u32>(max(firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_0.d.x)), var_2.c.b.d.x), _wgslsmith_mod_u32(firstLeadingBit(~global1.b.d.x), u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), 1000f), global1.c.x, global1.c.x, global1.c.x);
    var var_1 = ~func_4(_wgslsmith_div_f32(1251f, 903f), vec3<bool>(global1.a.x, all(global1.a.xz), (-1i > global1.b.e) & true), countOneBits(u_input.d), func_1(1u, select(!vec2<bool>(global1.b.a, true), global1.a.yx, true)));
    var var_2 = func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.d.x, ~firstLeadingBit(u_input.e.x), u_input.e.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 75753u, 45661u) & vec3<u32>(global1.b.d.x, 12764u, 30185u), abs(vec3<u32>(10656u, 0u, 40214u))) >> (max(vec3<u32>(0u, var_1.x, u_input.b) | vec3<u32>(4294967295u, 480u, u_input.b), vec3<u32>(u_input.b, u_input.e.x, u_input.b)) % vec3<u32>(32u))), func_1(~global1.b.d.x, select(!select(global1.a.yy, vec2<bool>(false, global1.a.x), global1.b.a), select(!global1.a.xx, !global1.a.xx, global1.a.x), 15692u == u_input.e.x)).e.a.xx).e;
    var var_3 = !(!vec4<bool>(func_1(u_input.e.x, select(global1.a.xz, vec2<bool>(false, var_2.a.x), vec2<bool>(var_2.a.x, false))).b.a, var_2.a.x, false, func_1(reverseBits(11444u), !vec2<bool>(var_2.a.x, var_2.b.a)).e.a.x));
    global1 = Struct_2(!select(select(select(vec3<bool>(global1.a.x, var_3.x, false), vec3<bool>(var_3.x, var_3.x, var_2.b.a), vec3<bool>(false, global1.b.a, true)), func_1(global1.b.d.x, var_3.yz).e.a, true), vec3<bool>(global1.b.a, var_3.x, 4294967295u <= var_1.x), vec3<bool>(false, true, global1.a.x)), Struct_1(false, i32(-1i) * -global0[_wgslsmith_index_u32(~110212u, 30u)], -select(53512i, func_2(var_2.c.x).x, true), abs(var_2.b.d), var_2.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c), global1.c), vec4<i32>(global1.d.x, 1i, var_2.b.b, ~min(2147483647i, firstLeadingBit(global0[_wgslsmith_index_u32(36586u, 30u)]))));
    let var_4 = Struct_3(0i, var_3.x, Struct_2(global1.a, func_1(firstLeadingBit(82044u), !select(vec2<bool>(true, var_2.a.x), global1.a.zx, false)).e.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.c, vec3<f32>(var_0.x, var_0.x, var_0.x), var_2.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.c.x, global1.c.x) - vec3<f32>(-533f, global1.c.x, var_0.x)))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(34958i, 1i, 24552i, global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), global1.d, ~var_2.d)), func_1(1u, var_2.a.xx).b);
    var var_5 = var_2.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_clamp_i32(i32(-1i) * -45520i, 0i, -11624i)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(select(var_4.c.c.x, _wgslsmith_f_op_f32(631f + -764f), any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-var_0.x), -445f));
}

