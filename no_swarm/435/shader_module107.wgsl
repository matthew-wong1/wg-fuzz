struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24>;

var<private> global1: Struct_4 = Struct_4(vec4<u32>(45288u, 74700u, 4294967295u, 7929u), Struct_2(vec4<u32>(25309u, 4294967295u, 38891u, 0u), 850f, vec2<f32>(1000f, 456f)), true, vec4<i32>(24008i, -36836i, 0i, -30781i));

var<private> global2: array<f32, 13>;

var<private> global3: array<vec4<f32>, 30>;

var<private> global4: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_1(false, vec2<u32>(4294967295u, 20041u)), 2623f, Struct_2(vec4<u32>(1u, 7229u, 1u, 16907u), 320f, vec2<f32>(-160f, -1112f)), vec2<f32>(1000f, -1194f), Struct_2(vec4<u32>(52834u, 64464u, 32598u, 38905u), -317f, vec2<f32>(-477f, 232f))), Struct_5(Struct_1(true, vec2<u32>(8585u, 78352u)), -138f, Struct_2(vec4<u32>(1u, 1u, 34617u, 1u), 1668f, vec2<f32>(-213f, -718f)), vec2<f32>(1614f, 369f), Struct_2(vec4<u32>(0u, 1u, 1u, 25418u), -660f, vec2<f32>(-1900f, 397f))), Struct_5(Struct_1(false, vec2<u32>(4294967295u, 4294967295u)), -1136f, Struct_2(vec4<u32>(0u, 1u, 0u, 58381u), 127f, vec2<f32>(702f, -389f)), vec2<f32>(-779f, 116f), Struct_2(vec4<u32>(1u, 4294967295u, 49909u, 94476u), -1000f, vec2<f32>(-834f, -1225f))), Struct_5(Struct_1(false, vec2<u32>(49664u, 41198u)), 903f, Struct_2(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -948f, vec2<f32>(1147f, 398f)), vec2<f32>(-1035f, 538f), Struct_2(vec4<u32>(7330u, 0u, 1u, 0u), -1390f, vec2<f32>(-822f, -154f))), Struct_5(Struct_1(true, vec2<u32>(1993u, 14026u)), -1394f, Struct_2(vec4<u32>(96685u, 4294967295u, 12910u, 10230u), 301f, vec2<f32>(847f, 311f)), vec2<f32>(-347f, -1000f), Struct_2(vec4<u32>(0u, 4294967295u, 28075u, 1u), -1000f, vec2<f32>(1162f, -444f))), Struct_5(Struct_1(true, vec2<u32>(4294967295u, 0u)), 1000f, Struct_2(vec4<u32>(86838u, 2396u, 0u, 4294967295u), 1790f, vec2<f32>(-1481f, 1124f)), vec2<f32>(-1649f, -145f), Struct_2(vec4<u32>(1u, 38359u, 4294967295u, 33596u), -1247f, vec2<f32>(530f, -1225f))), Struct_5(Struct_1(false, vec2<u32>(310u, 92482u)), 2101f, Struct_2(vec4<u32>(36063u, 33586u, 0u, 4294967295u), -809f, vec2<f32>(-455f, 433f)), vec2<f32>(-854f, 717f), Struct_2(vec4<u32>(0u, 15665u, 1u, 1u), 448f, vec2<f32>(-750f, -1063f))), Struct_5(Struct_1(false, vec2<u32>(0u, 4294967295u)), 1806f, Struct_2(vec4<u32>(1u, 108236u, 1u, 1u), 366f, vec2<f32>(1000f, 412f)), vec2<f32>(-367f, -1350f), Struct_2(vec4<u32>(18382u, 4294967295u, 1u, 0u), 558f, vec2<f32>(-1236f, 1226f))));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    let var_0 = true;
    let var_1 = Struct_3(any(select(vec3<bool>(!var_0, 557f == global2[_wgslsmith_index_u32(4294967295u, 13u)], arg_0 & arg_0), select(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, global1.c), vec3<bool>(true, true, true)), vec3<bool>(var_0, false, arg_1.x), arg_1.yzz), !arg_1.wxx)), Struct_2(~(~(~global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(-1077f + global1.b.c.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.b.c, vec2<f32>(global1.b.c.x, 1438f))), vec2<f32>(-1054f, -1005f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, -801f)), _wgslsmith_f_op_f32(f32(-1f) * -871f))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1.b.a.xww, vec3<u32>(u_input.a.x, 1u, u_input.a.x)), ~36727u), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -982f)), Struct_2(~firstLeadingBit(global1.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(519f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-420f, 1000f) - _wgslsmith_f_op_vec2_f32(select(global1.b.c, global1.b.c, arg_0)))))), arg_1.zx);
    global0 = array<Struct_5, 24>();
    let var_2 = global1.b.a;
    var var_3 = !var_1.e;
    return 843f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = ~vec2<i32>(global1.d.x, reverseBits(~32201i));
    let var_1 = Struct_3(global1.c, Struct_2(select(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, u_input.a.x, 11432u), global1.b.a), abs(_wgslsmith_mult_vec4_u32(global1.b.a, global1.a)), arg_0), global2[_wgslsmith_index_u32(global1.a.x, 13u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.c)))), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 13u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(~arg_2, global1.b.a.wzz), _wgslsmith_sub_u32(arg_2.x, 4294967295u) >> (47430u % 32u)), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(all(vec3<bool>(true, arg_1, false)), !vec4<bool>(global1.c, true, arg_1, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f - global2[_wgslsmith_index_u32(u_input.a.x, 13u)])))), Struct_2(max(_wgslsmith_sub_vec4_u32(global1.b.a, _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, arg_2.x, 28864u, u_input.a.x), vec4<u32>(global1.b.a.x, u_input.a.x, global1.b.a.x, u_input.a.x))), global1.b.a), _wgslsmith_f_op_f32(step(2361f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1.b.b)))))), global1.b.c), vec2<bool>(all(select(vec2<bool>(arg_1, true), vec2<bool>(true, false), true)), arg_1));
    let var_2 = !(!arg_1);
    let var_3 = Struct_5(Struct_1(arg_0, vec2<u32>(~min(global1.b.a.x, u_input.a.x), _wgslsmith_clamp_u32(max(38890u, arg_2.x), arg_2.x << (global1.b.a.x % 32u), firstLeadingBit(arg_2.x)))), var_1.d.c.x, var_1.d, _wgslsmith_f_op_vec2_f32(-global1.b.c), global1.b);
    global1 = Struct_4(vec4<u32>(~4294967295u, countOneBits(u_input.a.x), ~(~_wgslsmith_mod_u32(var_3.c.a.x, 13449u)), _wgslsmith_sub_u32(var_3.e.a.x, var_1.b.a.x)), var_1.b, var_3.a.a, firstTrailingBit(_wgslsmith_sub_vec4_i32(min(global1.d, abs(vec4<i32>(16546i, var_0.x, -2147483647i, u_input.b))), global1.d)));
    return Struct_3(any(select(select(vec3<bool>(false, true, var_2), select(vec3<bool>(var_1.e.x, global1.c, global1.c), vec3<bool>(false, var_2, true), global1.c), var_2 || global1.c), select(vec3<bool>(var_3.a.a, arg_0, false), vec3<bool>(var_1.a, var_3.a.a, arg_1), select(vec3<bool>(false, true, false), vec3<bool>(global1.c, false, false), var_1.e.x)), vec3<bool>(arg_0, any(vec4<bool>(global1.c, false, true, true)), arg_1))), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(_wgslsmith_f_op_f32(func_3(false, vec4<bool>(true, true, false, true))), global1.b.b, var_3.c.c.x))), Struct_2(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global1.a.x, arg_2.x, 4294967295u, u_input.a.x)), var_3.e.a, vec4<u32>(~0u, u_input.a.x, ~0u, var_3.c.a.x << (arg_2.x % 32u))), 792f, global1.b.c), vec2<bool>(var_1.a, any(select(select(vec3<bool>(global1.c, true, var_2), vec3<bool>(global1.c, var_1.e.x, global1.c), vec3<bool>(true, true, false)), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, arg_1, arg_1), global1.c), true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = global1.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(40979u), _wgslsmith_div_u32(39892u, 72231u)), 13u)])), -1704f));
    global1 = Struct_4(select(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.d.a.x, arg_0.b.a.x, 36844u, u_input.a.x), vec4<u32>(4294967295u, 17904u, u_input.a.x, arg_2.x))), arg_2, arg_0.e.x), global1.b, select(!(!arg_0.e.x), arg_0.a, arg_0.e.x != true), vec4<i32>(2147483647i, -61431i, max(1i, ~global1.d.x), ~(global1.d.x ^ (global1.d.x ^ 2147483647i))));
    let var_2 = 33144u;
    let var_3 = select(vec4<bool>(true, arg_0.e.x, !global1.c, true), vec4<bool>(arg_0.e.x, false, !arg_0.e.x, global1.c), vec4<bool>(true || all(!vec4<bool>(global1.c, true, true, arg_0.a)), false, (arg_0.c.x <= _wgslsmith_f_op_f32(-arg_0.d.c.x)) && true, true));
    return Struct_4(func_2(_wgslsmith_sub_i32(u_input.b, u_input.b) == 1i, true, firstTrailingBit(countOneBits(global1.a.wzy | vec3<u32>(arg_2.x, 35712u, 12893u)))).d.a, global1.b, false, ~(-global1.d));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = -1i;
    global0 = array<Struct_5, 24>();
    var var_1 = Struct_1(true, vec2<u32>(~14015u, 53838u) | u_input.a);
    global2 = array<f32, 13>();
    var var_2 = 410f >= arg_3.b.c.x;
    return func_4(func_2(!(true | all(vec3<bool>(false, false, var_1.a))), any(select(vec3<bool>(arg_3.c, false, false), select(vec3<bool>(global1.c, arg_3.c, false), vec3<bool>(false, global1.c, global1.c), vec3<bool>(false, var_1.a, var_1.a)), 23843i <= arg_3.d.x)), min(vec3<u32>(~61493u, ~arg_2, countOneBits(u_input.a.x)), _wgslsmith_add_vec3_u32(~arg_3.a.yyw, ~arg_3.b.a.wxy))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(1u, 30u)] * vec4<f32>(-176f, 1549f, 762f, global2[_wgslsmith_index_u32(975u, 13u)])))))), max(vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 41674u, 38596u), min(arg_2, 0u), _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~arg_3.b.a.x), _wgslsmith_add_u32(abs(0u), _wgslsmith_dot_vec4_u32(arg_3.b.a, vec4<u32>(arg_2, arg_3.b.a.x, arg_3.a.x, 1u)))), arg_3.a)).b;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> u32 {
    let var_0 = reverseBits(_wgslsmith_sub_vec4_u32(~global1.a, _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.a.x, ~arg_2.a.b.x, u_input.a.x, ~u_input.a.x), global1.a)));
    var var_1 = global1.d.yx;
    let var_2 = global0[_wgslsmith_index_u32(global1.b.a.x, 24u)];
    let var_3 = -48594i;
    global1 = Struct_4(_wgslsmith_add_vec4_u32(arg_2.c.a, ~(~vec4<u32>(arg_2.e.a.x, 1u, 16071u, var_0.x))), func_5(global1.d.xw, 456f, u_input.a.x, func_4(func_2(false & arg_3, global1.d.x >= -16142i, select(vec3<u32>(global1.b.a.x, var_2.c.a.x, arg_2.e.a.x), vec3<u32>(21507u, var_0.x, u_input.a.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(993f, arg_2.d.x, -1843f, 121f)) + vec4<f32>(-1871f, 743f, 882f, -203f)), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 58101u))), true, func_4(Struct_3(all(vec4<bool>(var_2.a.a, false, false, arg_0.x)), Struct_2(arg_2.c.a << (vec4<u32>(10223u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)), -1000f, vec2<f32>(arg_2.e.b, global1.b.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(379f, global2[_wgslsmith_index_u32(1u, 13u)], -247f), vec3<f32>(-1822f, 1227f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, arg_2.e.b, arg_2.c.c.x) + vec3<f32>(var_2.e.b, -287f, 1089f))), global1.b, !vec2<bool>(global1.c, false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(720f, -328f, var_2.c.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 13u)])))), ~select(var_0, global1.b.a << (var_2.c.a % vec4<u32>(32u)), global1.c)).d);
    return 17310u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global2[_wgslsmith_index_u32(global1.a.x, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_1(select(vec3<bool>(global1.c, true, true), vec3<bool>(false, global1.c, global1.c), global1.c), _wgslsmith_sub_i32(50275i, 0i), Struct_5(Struct_1(false, vec2<u32>(13281u, u_input.a.x)), global1.b.b, global1.b, vec2<f32>(624f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), global1.b), false), 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)], global1.b.c.x))));
    var var_1 = Struct_5(Struct_1(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, global1.c), vec3<bool>(global1.c, global1.c, global1.c), true), any(vec4<bool>(true, false, false, false)))), ~global1.a.zx), -984f, func_4(Struct_3(!(!global1.c), Struct_2(vec4<u32>(global1.b.a.x, u_input.a.x, u_input.a.x, global1.b.a.x), _wgslsmith_f_op_f32(-641f * global2[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.x), vec2<f32>(var_0.x, global2[_wgslsmith_index_u32(0u, 13u)]))), vec3<f32>(-287f, 208f, _wgslsmith_f_op_f32(-global1.b.c.x)), global1.b, vec2<bool>(global1.c, func_2(global1.c, true, global1.b.a.zxx).a)), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 30u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, global1.b.c.x, -261f, -224f)))), vec4<u32>(~global1.a.x ^ ~global1.b.a.x, _wgslsmith_mod_u32(~22029u, _wgslsmith_sub_u32(global1.b.a.x, u_input.a.x)), 1u, 36249u)).b, func_2(select(true, true, global1.c), true, global1.a.yxy).b.c, global1.b);
    global0 = array<Struct_5, 24>();
    var_1 = global0[_wgslsmith_index_u32(~global1.b.a.x, 24u)];
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1774f, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_1.e.a.x, 13u)])), _wgslsmith_f_op_f32(step(-1895f, 870f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, 763f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.c.x, var_1.b, 593f)), var_1.a.a)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f - var_0.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.c.a.x >> (global1.a.x % 32u), 13u)]), _wgslsmith_f_op_f32(-global1.b.b)));
    var var_2 = -101f;
    let var_3 = global1.a.zwy;
    global4 = array<Struct_5, 8>();
    var var_4 = func_2(false, true, global1.a.zyy | countOneBits(func_5(global1.d.zw, _wgslsmith_f_op_f32(step(570f, var_0.x)), ~0u, Struct_4(vec4<u32>(83929u, 74344u, u_input.a.x, 11380u), Struct_2(vec4<u32>(0u, u_input.a.x, 6109u, 0u), -284f, global1.b.c), false, global1.d)).a.xzx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.e.a.x, u_input.a.x, var_1.c.a.x), var_4.d.a.yxz, _wgslsmith_div_vec3_u32(abs(vec3<u32>(92224u, u_input.a.x, 0u)), ~var_1.e.a.zwz)), global1.a.zyz), _wgslsmith_f_op_f32(-var_1.d.x), 9423u, u_input.a.x);
}

