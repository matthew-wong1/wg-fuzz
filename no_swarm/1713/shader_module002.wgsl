struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec4<f32>(-326f, -167f, -1000f, -510f), vec3<f32>(-1975f, 1220f, -1142f), vec3<i32>(-26497i, 2147483647i, 1i), vec3<u32>(1u, 1u, 1u)), Struct_4(vec4<f32>(419f, 1000f, 242f, 1083f), vec3<f32>(-271f, -181f, 153f), vec3<i32>(0i, -21188i, -57729i), vec3<u32>(66301u, 16248u, 23824u)), Struct_4(vec4<f32>(-1014f, 1190f, 1031f, 324f), vec3<f32>(826f, -1675f, 359f), vec3<i32>(0i, 23114i, 1i), vec3<u32>(7735u, 1u, 17243u)), Struct_4(vec4<f32>(612f, 1526f, 684f, 1420f), vec3<f32>(2374f, -862f, -548f), vec3<i32>(40002i, 2147483647i, 2147483647i), vec3<u32>(4294967295u, 92595u, 5718u)), Struct_4(vec4<f32>(147f, -592f, -280f, 301f), vec3<f32>(-101f, -720f, -686f), vec3<i32>(40434i, -44846i, 2147483647i), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(vec4<f32>(1271f, 2545f, -268f, 1872f), vec3<f32>(-1000f, 1000f, -1401f), vec3<i32>(2147483647i, 53043i, -3707i), vec3<u32>(47957u, 13158u, 0u)), Struct_4(vec4<f32>(458f, -695f, -600f, 727f), vec3<f32>(-1177f, -231f, 2050f), vec3<i32>(2147483647i, 0i, 1i), vec3<u32>(1u, 1u, 4294967295u)), Struct_4(vec4<f32>(-756f, 1000f, -1000f, -1255f), vec3<f32>(1269f, -674f, -1177f), vec3<i32>(57731i, 867i, 1i), vec3<u32>(84786u, 4294967295u, 4294967295u)), Struct_4(vec4<f32>(-678f, 1203f, 1000f, -1163f), vec3<f32>(935f, -302f, 1000f), vec3<i32>(-14706i, -36828i, 4505i), vec3<u32>(7166u, 6814u, 0u)), Struct_4(vec4<f32>(-298f, -483f, 191f, -2019f), vec3<f32>(-116f, -733f, -797f), vec3<i32>(0i, -33032i, -1i), vec3<u32>(4294967295u, 59345u, 24379u)), Struct_4(vec4<f32>(1692f, 2380f, 1000f, -770f), vec3<f32>(714f, -494f, 841f), vec3<i32>(0i, -36490i, 12369i), vec3<u32>(4294967295u, 40235u, 1u)), Struct_4(vec4<f32>(699f, 785f, -1224f, -443f), vec3<f32>(1463f, -715f, 1570f), vec3<i32>(2147483647i, 498i, 0i), vec3<u32>(4294967295u, 0u, 31861u)), Struct_4(vec4<f32>(835f, 1000f, -123f, 181f), vec3<f32>(-1000f, -474f, -402f), vec3<i32>(-30396i, 1i, 1i), vec3<u32>(1u, 1u, 0u)), Struct_4(vec4<f32>(-1501f, 344f, 2077f, 1034f), vec3<f32>(1570f, -413f, 942f), vec3<i32>(4410i, -31647i, -13927i), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_4(vec4<f32>(697f, 706f, -1000f, 1000f), vec3<f32>(1185f, 1000f, 1471f), vec3<i32>(21781i, 0i, 0i), vec3<u32>(19791u, 4294967295u, 1u)), Struct_4(vec4<f32>(-930f, -481f, -1968f, -1471f), vec3<f32>(-187f, 946f, 176f), vec3<i32>(-1i, -30742i, -22043i), vec3<u32>(30261u, 9039u, 33447u)), Struct_4(vec4<f32>(1104f, -995f, 1108f, -1058f), vec3<f32>(2369f, -1076f, -448f), vec3<i32>(-22966i, -9401i, i32(-2147483648)), vec3<u32>(2553u, 1u, 22839u)), Struct_4(vec4<f32>(1000f, -978f, -1023f, -1000f), vec3<f32>(291f, 1147f, 2454f), vec3<i32>(-20824i, 31391i, 2147483647i), vec3<u32>(1u, 7838u, 4294967295u)), Struct_4(vec4<f32>(1393f, -1450f, -514f, 1041f), vec3<f32>(-347f, -147f, -309f), vec3<i32>(i32(-2147483648), 11653i, -1i), vec3<u32>(4294967295u, 24317u, 1u)), Struct_4(vec4<f32>(-295f, 650f, -228f, -1020f), vec3<f32>(-862f, -1000f, 214f), vec3<i32>(20343i, 43440i, i32(-2147483648)), vec3<u32>(39497u, 4294967295u, 0u)), Struct_4(vec4<f32>(1000f, 1010f, 1327f, -570f), vec3<f32>(-1647f, 403f, -682f), vec3<i32>(2147483647i, 1i, -8574i), vec3<u32>(24019u, 4294967295u, 64118u)), Struct_4(vec4<f32>(1051f, 414f, -159f, -1891f), vec3<f32>(-1217f, -212f, 456f), vec3<i32>(52625i, 15619i, 0i), vec3<u32>(0u, 1u, 4294967295u)), Struct_4(vec4<f32>(812f, -1000f, 1011f, -1285f), vec3<f32>(193f, -1175f, -1000f), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<u32>(65337u, 1u, 1u)), Struct_4(vec4<f32>(306f, -538f, 210f, 724f), vec3<f32>(493f, 356f, 219f), vec3<i32>(12896i, 2147483647i, i32(-2147483648)), vec3<u32>(74728u, 28567u, 20899u)), Struct_4(vec4<f32>(448f, -183f, -848f, -232f), vec3<f32>(-343f, -487f, 499f), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<u32>(0u, 1359u, 16587u)), Struct_4(vec4<f32>(731f, -516f, 502f, -194f), vec3<f32>(-2458f, 575f, -228f), vec3<i32>(2147483647i, -17732i, 1i), vec3<u32>(18146u, 4294967295u, 47428u)), Struct_4(vec4<f32>(653f, -341f, 1684f, 831f), vec3<f32>(-815f, 836f, -1583f), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<u32>(11757u, 0u, 36731u)), Struct_4(vec4<f32>(376f, 929f, 215f, -251f), vec3<f32>(2195f, 174f, 2630f), vec3<i32>(2147483647i, 20591i, 1i), vec3<u32>(4294967295u, 96687u, 0u)), Struct_4(vec4<f32>(-673f, -224f, 1273f, 1433f), vec3<f32>(469f, 1000f, -1000f), vec3<i32>(-9559i, i32(-2147483648), 2147483647i), vec3<u32>(42645u, 0u, 4294967295u)), Struct_4(vec4<f32>(-261f, 1079f, -1105f, -818f), vec3<f32>(1142f, 1972f, 1078f), vec3<i32>(1i, 49839i, 26910i), vec3<u32>(4294967295u, 33378u, 45716u)));

var<private> global2: array<vec4<f32>, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a.x)))));
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-var_1.a.c);
    return abs(~23285i);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = 603f;
    global0 = array<vec4<f32>, 7>();
    let var_1 = Struct_3(-countOneBits(func_3(Struct_2(Struct_1(vec4<i32>(arg_1.x, 1i, arg_1.x, -1i), vec2<i32>(u_input.a.x, -17712i), 1000f)), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.x), vec2<i32>(u_input.a.x, 2147483647i), -967f), 0i, Struct_4(global0[_wgslsmith_index_u32(1u, 7u)], vec3<f32>(-1154f, -257f, -300f), vec3<i32>(6171i, 1i, arg_1.x), arg_3.yyx))), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.a), vec3<i32>(-4586i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.x, arg_1.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_sub_i32(u_input.a.x, -49913i) << (44877u % 32u))));
    var var_2 = Struct_2(Struct_1(~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, -53248i, -14545i, -2361i), vec4<i32>(var_1.a, -2147483647i, var_1.a, u_input.a.x))), ~((arg_1 >> (vec2<u32>(4294967295u, 35608u) % vec2<u32>(32u))) | -u_input.a.yz), 1f));
    var var_3 = !arg_0;
    return Struct_3(func_3(Struct_2(var_2.a), Struct_1(~(~vec4<i32>(var_1.b.x, 14759i, 32363i, u_input.a.x)), abs(var_1.b.zy), -1064f), _wgslsmith_mod_i32(1i, abs(-1i)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(min(arg_3.x, 1u), abs(13305u)), 30u)]), vec3<i32>(reverseBits(abs(-1i) & var_2.a.b.x), _wgslsmith_sub_i32(firstLeadingBit(15513i), -var_2.a.a.x), _wgslsmith_clamp_i32(arg_1.x, var_2.a.a.x, -35192i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    var var_0 = (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1484f, -157f) + _wgslsmith_f_op_f32(f32(-1f) * -322f)))) == -1000f) && true;
    var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1446f), -219f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(182f, -456f))), -364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1353f) * -766f))) + 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-274f, 367f))))));
    var var_2 = ~vec3<u32>(~4294967295u, ~(~(~7288u)), reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 39370u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63499u, 1u, 0u), vec4<u32>(1u, 112956u, 4294967295u, 1401u)))));
    var var_3 = u_input.a;
    return Struct_1(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a.x, -1i, -884i, 11554i)), func_2(select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, false, true), vec4<bool>(var_1.x != var_1.x, false, any(vec2<bool>(true, false)), true)), arg_0.b.xx, _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 39855u, 31857u), vec3<u32>(var_2.x, 4294967295u, 1u))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_2.x, var_2.x, 0u)), vec3<u32>(56304u, var_2.x, 3586u)), countOneBits(~vec3<u32>(0u, 11529u, var_2.x))), vec4<u32>(_wgslsmith_add_u32(25472u, 0u) & ~var_2.x, var_2.x, var_2.x, ~(var_2.x << (var_2.x % 32u)))).b.zx, _wgslsmith_f_op_f32(var_1.x - -307f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~32751u, ~3548u), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(43263u, 1u, 29900u), vec3<u32>(61121u, 1u, 10558u)))));
    var var_1 = global1[_wgslsmith_index_u32(select(51199u, _wgslsmith_mod_u32(var_0, ~4294967295u) >> (16239u % 32u), false), 30u)];
    let var_2 = func_2(select(vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), -13060i < -var_1.c.x, _wgslsmith_f_op_f32(-arg_0.c) >= _wgslsmith_f_op_f32(ceil(var_1.a.x))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, true, true), true), true), vec2<i32>(-(arg_1.a.x << (~11172u % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(37817i, _wgslsmith_mult_i32(arg_1.a.x, u_input.a.x)), -2147483647i)), vec3<u32>(var_0, reverseBits(41782u), 74169u), ~(~((vec4<u32>(var_1.d.x, 31649u, 28561u, 0u) & vec4<u32>(1u, var_1.d.x, 63516u, 4294967295u)) & (vec4<u32>(var_1.d.x, 1u, 96630u, 4294967295u) | vec4<u32>(var_0, 4294967295u, 4294967295u, var_0)))));
    let var_3 = func_2(vec4<bool>(true, true, true, true), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.x ^ -2147483647i, 6612i), u_input.a.yy), select(~vec3<u32>(63339u, ~28164u, ~4294967295u), ~(~vec3<u32>(18072u, var_0, var_0)) << (var_1.d % vec3<u32>(32u)), true), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(0u, 76006u, var_1.d.x, var_1.d.x))), vec4<u32>(1u, var_0, ~(~15295u), 0u)));
    let var_4 = Struct_4(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(3048u, 7u)], vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))), _wgslsmith_f_op_f32(854f - -183f), -1810f)), var_1.b, vec3<i32>(func_3(Struct_2(func_4(var_3, Struct_3(-5584i, vec3<i32>(-2147483647i, var_3.a, 9114i)))), arg_0, _wgslsmith_sub_i32(_wgslsmith_mult_i32(30897i, -5220i), -939i), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 201f, 983f, arg_1.c) - vec4<f32>(122f, 1418f, var_1.a.x, arg_1.c)), _wgslsmith_f_op_vec3_f32(select(var_1.a.xyw, var_1.a.zzy, true)), _wgslsmith_sub_vec3_i32(arg_0.a.zxz, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(var_0, var_1.d.x, var_0), vec3<u32>(13033u, var_1.d.x, 1u)))), -1i, func_4(func_2(vec4<bool>(true, true, true, true), vec2<i32>(arg_0.a.x, 15115i), vec3<u32>(var_1.d.x, 53112u, var_1.d.x) << (var_1.d % vec3<u32>(32u)), reverseBits(vec4<u32>(var_1.d.x, var_0, 1u, var_1.d.x))), Struct_3(46039i, vec3<i32>(u_input.a.x, 1i, -11290i))).b.x), var_1.d);
    return func_2(select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), !vec4<bool>(arg_1.c == 342f, true, select(true, false, true), false), vec4<bool>(4872i <= var_4.c.x, true, true, true)), vec2<i32>(_wgslsmith_dot_vec3_i32(-select(arg_1.a.yww, vec3<i32>(9372i, 2147483647i, var_3.b.x), vec3<bool>(true, true, false)), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a) | -var_2.b), var_4.c.x | 0i), var_1.d ^ ~vec3<u32>(_wgslsmith_mult_u32(var_4.d.x, var_0), _wgslsmith_dot_vec2_u32(var_1.d.zz, var_1.d.zz), _wgslsmith_dot_vec3_u32(var_4.d, var_1.d)), max(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 2500u, var_4.d.x, 4294967295u), ~vec4<u32>(var_0, 1u, var_1.d.x, 1u)) ^ (vec4<u32>(var_4.d.x, var_4.d.x, var_0, 7396u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_4.d.x, 1u, 1u, 4294967295u), vec4<u32>(var_4.d.x, 8806u, 0u, 0u)) % vec4<u32>(32u))), firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.x, var_1.d.x, var_4.d.x, var_1.d.x), vec4<u32>(var_4.d.x, var_0, var_4.d.x, 20543u), vec4<u32>(6450u, 0u, 13737u, 7321u))))));
}

fn func_6(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(arg_1)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.x, arg_1.x))), 482f, 555f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.zyw, arg_1.wxz)))), _wgslsmith_mult_vec3_i32(countOneBits(arg_2.b), arg_2.b), select(select(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), 1u, min(3491u, 12218u)), max(min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(43790u, 26286u, 6715u)), vec3<bool>(false, any(vec4<bool>(true, false, true, arg_0)), false | arg_0)), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(58138u, 8760u, 29075u, 47405u)), vec4<u32>(1u, 1u, 1u, 1u)), 0u, ~1u), !(!vec3<bool>(false, false, arg_0))));
    let var_1 = false;
    var var_2 = select(select(vec3<bool>(false, all(select(vec3<bool>(true, true, var_1), vec3<bool>(arg_0, false, arg_0), false)), true), !vec3<bool>(any(vec2<bool>(false, arg_0)), !arg_0, true), select(select(vec3<bool>(false, true, var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, var_1, false), var_1), !vec3<bool>(arg_0, false, var_1)), select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, arg_0, true), var_1), !vec3<bool>(false, arg_0, arg_0), var_1), vec3<bool>(true, arg_2.a < u_input.a.x, true))), select(vec3<bool>(u_input.a.x <= -2147483647i, any(!vec4<bool>(true, var_1, true, true)), true), vec3<bool>(!var_1, true, !var_1), !select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(arg_0, false, arg_0), true), vec3<bool>(var_1, var_1, true), !vec3<bool>(false, true, var_1))), !select(vec3<bool>(true, true, arg_0), vec3<bool>(var_0.d.x <= 4294967295u, false, !arg_0), select(!vec3<bool>(true, arg_0, var_1), !vec3<bool>(false, arg_0, var_1), vec3<bool>(true, true, true))));
    let var_3 = firstLeadingBit(abs(var_0.d.x));
    var var_4 = _wgslsmith_f_op_f32(-1914f - 818f);
    return func_4(Struct_3(i32(-1i) * -1i, -var_0.c), func_5(func_4(arg_2, arg_2), Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 19133i, arg_2.b.x, var_0.c.x), max(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i), vec4<i32>(var_0.c.x, u_input.a.x, 25007i, 30870i))), vec2<i32>(var_0.c.x, arg_2.a << (var_3 % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(763f - var_0.a.x))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_2(func_6(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(arg_0.x, 7u)], global2[_wgslsmith_index_u32(arg_0.x, 14u)]) - vec4<f32>(1545f, -1371f, -144f, -1311f)))), func_5(func_4(func_2(vec4<bool>(true, true, true, false), u_input.a.zy, arg_0.wyw, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), func_2(vec4<bool>(false, false, true, true), u_input.a.zy, arg_0.wzy, arg_0)), func_4(func_2(vec4<bool>(true, false, true, true), arg_1.zz, arg_0.xwz, arg_0), Struct_3(u_input.a.x, vec3<i32>(arg_1.x, -2147483647i, -2147483647i)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-258f, 767f))))))));
    var var_1 = arg_0.x;
    global0 = array<vec4<f32>, 7>();
    var var_2 = -arg_1.yz;
    global2 = array<vec4<f32>, 14>();
    return 3907i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 30>();
    let var_0 = max(u_input.a.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), u_input.a.xy)) ^ (vec2<i32>(func_1(~vec4<u32>(192u, 0u, 67860u, 46168u), select(vec3<i32>(-16353i, -2147483647i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, 0i), false)), ~min(u_input.a.x, u_input.a.x)) << (~abs(~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)));
    global1 = array<Struct_4, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -114f, _wgslsmith_clamp_i32(max(5328i, u_input.a.x), _wgslsmith_mult_i32(func_5(func_4(Struct_3(u_input.a.x, vec3<i32>(u_input.a.x, var_0.x, 7334i)), Struct_3(u_input.a.x, u_input.a)), Struct_1(vec4<i32>(1i, u_input.a.x, -1i, -4144i), var_0, 2059f)).a, u_input.a.x), var_0.x), _wgslsmith_f_op_f32(max(209f, _wgslsmith_f_op_f32(1228f - 403f))), ~1u);
}

