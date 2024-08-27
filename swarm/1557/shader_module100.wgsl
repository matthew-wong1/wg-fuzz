struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, false, vec4<bool>(true, true, true, false), vec3<f32>(443f, 1016f, 1413f), vec3<i32>(1i, -35567i, 28116i)), Struct_1(false, true, vec4<bool>(true, false, false, false), vec3<f32>(3121f, 415f, -688f), vec3<i32>(2147483647i, 7757i, 9687i)), Struct_1(false, false, vec4<bool>(true, false, false, true), vec3<f32>(-432f, -773f, -854f), vec3<i32>(-23084i, -6889i, 51658i)), Struct_1(true, true, vec4<bool>(false, false, true, true), vec3<f32>(-408f, -1000f, 1546f), vec3<i32>(-1i, 2147483647i, -40629i)), Struct_1(false, true, vec4<bool>(true, true, false, false), vec3<f32>(-1624f, 161f, -1734f), vec3<i32>(1i, 38570i, i32(-2147483648))), Struct_1(true, true, vec4<bool>(true, false, false, false), vec3<f32>(899f, -522f, 401f), vec3<i32>(i32(-2147483648), 15712i, -1i)), Struct_1(true, false, vec4<bool>(false, false, false, true), vec3<f32>(1123f, -966f, 1910f), vec3<i32>(66721i, -8288i, -33510i)), Struct_1(true, true, vec4<bool>(true, true, false, false), vec3<f32>(-1000f, -1099f, -1412f), vec3<i32>(0i, -65056i, -1i)), Struct_1(true, true, vec4<bool>(true, false, false, false), vec3<f32>(-1113f, 1030f, -1029f), vec3<i32>(-1i, 1536i, 0i)), Struct_1(false, false, vec4<bool>(false, false, false, false), vec3<f32>(567f, -263f, -1336f), vec3<i32>(58272i, 19491i, 1i)), Struct_1(true, false, vec4<bool>(true, false, true, true), vec3<f32>(-784f, 880f, 152f), vec3<i32>(-12491i, 1i, 6125i)), Struct_1(true, true, vec4<bool>(false, false, false, false), vec3<f32>(-1000f, 635f, -2271f), vec3<i32>(0i, 54407i, 0i)), Struct_1(false, true, vec4<bool>(true, false, false, true), vec3<f32>(1743f, -669f, 1200f), vec3<i32>(0i, 0i, -1i)), Struct_1(true, false, vec4<bool>(true, true, true, false), vec3<f32>(-662f, 264f, -960f), vec3<i32>(-31833i, -48454i, 2147483647i)), Struct_1(false, false, vec4<bool>(true, false, true, true), vec3<f32>(-1000f, -952f, -779f), vec3<i32>(19156i, -36683i, 3037i)), Struct_1(false, true, vec4<bool>(false, false, true, false), vec3<f32>(-2265f, -372f, -2468f), vec3<i32>(4757i, 2147483647i, 17025i)), Struct_1(true, false, vec4<bool>(true, true, true, true), vec3<f32>(-522f, 1055f, -692f), vec3<i32>(2147483647i, 0i, -38132i)), Struct_1(false, false, vec4<bool>(false, true, true, true), vec3<f32>(328f, -1000f, 212f), vec3<i32>(-25630i, -1i, 31327i)), Struct_1(true, false, vec4<bool>(false, false, true, false), vec3<f32>(133f, -159f, 1498f), vec3<i32>(1i, 17536i, 39860i)), Struct_1(false, false, vec4<bool>(true, true, true, true), vec3<f32>(283f, -230f, 1083f), vec3<i32>(-50669i, 1i, 2147483647i)), Struct_1(true, false, vec4<bool>(false, false, false, true), vec3<f32>(-1393f, -1550f, 1217f), vec3<i32>(-359i, -1i, -9480i)), Struct_1(false, true, vec4<bool>(true, true, true, false), vec3<f32>(-781f, 695f, 732f), vec3<i32>(2147483647i, -4989i, -50947i)), Struct_1(true, false, vec4<bool>(true, false, false, true), vec3<f32>(601f, 269f, 2358f), vec3<i32>(1i, -1i, i32(-2147483648))), Struct_1(true, false, vec4<bool>(true, true, true, false), vec3<f32>(1000f, -1000f, 1916f), vec3<i32>(-1i, -8830i, 5731i)), Struct_1(false, false, vec4<bool>(false, false, false, false), vec3<f32>(2458f, 514f, -790f), vec3<i32>(1i, 0i, 60657i)), Struct_1(false, true, vec4<bool>(true, true, true, true), vec3<f32>(-815f, 852f, 2091f), vec3<i32>(-25771i, i32(-2147483648), 33142i)), Struct_1(false, false, vec4<bool>(true, true, false, true), vec3<f32>(710f, 781f, -984f), vec3<i32>(i32(-2147483648), i32(-2147483648), 11208i)), Struct_1(false, true, vec4<bool>(true, true, true, true), vec3<f32>(-1350f, 1000f, 1417f), vec3<i32>(60247i, i32(-2147483648), 15842i)), Struct_1(false, true, vec4<bool>(true, true, false, false), vec3<f32>(-152f, -673f, -257f), vec3<i32>(i32(-2147483648), -42773i, -1i)), Struct_1(false, true, vec4<bool>(false, true, true, false), vec3<f32>(-1183f, 442f, 829f), vec3<i32>(-1i, -1i, 1i)), Struct_1(false, false, vec4<bool>(true, true, true, false), vec3<f32>(-333f, -1000f, -2172f), vec3<i32>(34185i, 1i, i32(-2147483648))), Struct_1(false, false, vec4<bool>(false, false, true, false), vec3<f32>(123f, -2543f, -177f), vec3<i32>(27654i, -8328i, 2743i)));

var<private> global2: Struct_1 = Struct_1(false, false, vec4<bool>(true, true, true, false), vec3<f32>(-467f, -1186f, 1025f), vec3<i32>(2147483647i, -2009i, 2147483647i));

var<private> global3: vec4<f32> = vec4<f32>(-385f, -1000f, -2592f, 1000f);

var<private> global4: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(40571i, 22381i, -10401i, -28882i), vec4<i32>(0i, 14843i, 0i, -1i), vec4<i32>(0i, 2147483647i, -14752i, 0i), vec4<i32>(-1i, -20152i, 2147483647i, 12972i), vec4<i32>(-43095i, 3020i, -16835i, 9179i), vec4<i32>(21201i, 5396i, -3520i, 0i), vec4<i32>(-35332i, 22353i, 24112i, 14158i), vec4<i32>(i32(-2147483648), 7804i, -31433i, -78157i), vec4<i32>(-62290i, i32(-2147483648), 3254i, -43136i), vec4<i32>(-1i, 59876i, i32(-2147483648), 44218i), vec4<i32>(9588i, 18045i, -1i, 1i), vec4<i32>(83191i, -1i, 2147483647i, 9319i), vec4<i32>(17816i, 2147483647i, -13853i, 2147483647i), vec4<i32>(0i, 35481i, 34897i, 0i), vec4<i32>(-1i, 0i, 16389i, -63792i), vec4<i32>(12867i, 0i, -5942i, -23973i), vec4<i32>(1050i, -9721i, -4612i, 20999i), vec4<i32>(-46623i, -39880i, 0i, 1589i), vec4<i32>(1578i, 30923i, 24610i, 19804i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    global1 = array<Struct_1, 32>();
    var var_0 = global3.x;
    var var_1 = max(-reverseBits(~_wgslsmith_mod_i32(global2.e.x, global2.e.x)), u_input.c);
    var_0 = 1154f;
    global4 = array<vec4<i32>, 19>();
    return !(firstTrailingBit(0u) == max(u_input.a.x, u_input.a.x)) && true;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global3.x, global3.x, global2.d.x) + vec4<f32>(-1126f, global3.x, global2.d.x, global2.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, 1370f, -786f, -102f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1818f, global2.d.x, -287f))))));
    var var_0 = !vec4<bool>(!func_3(!global2.a), true, global2.e.x == _wgslsmith_clamp_i32(~arg_0.x, global2.e.x, firstTrailingBit(global2.e.x)), any(vec3<bool>(all(global2.c.ywz), true, true)));
    var_0 = select(!global2.c, !global2.c, select(select(select(global2.c, !global2.c, var_0.x), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), false, u_input.b.x < 0u, false), !vec4<bool>(global2.c.x, var_0.x, true, false)), global2.c, true));
    global0 = true;
    var var_1 = 56900u;
    return (21524u << (~(~u_input.a.x) % 32u)) & 0u;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_2.a.zy;
    var var_1 = arg_3;
    let var_2 = vec3<u32>(abs(reverseBits(abs(arg_1)) ^ arg_1), 1u, _wgslsmith_sub_u32(24972u, max(func_2(firstTrailingBit(arg_2.a)), min(reverseBits(arg_3.x), ~31617u))));
    var_1 = vec2<u32>(var_2.x, 4294967295u);
    let var_3 = vec2<bool>(arg_0, false);
    return _wgslsmith_mult_vec2_i32(global2.e.yy, vec2<i32>(global2.e.x, -1i));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-388f, global3.x, 1000f, global2.d.x) - vec4<f32>(global2.d.x, global3.x, -338f, 559f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-923f, -314f, -1036f, -126f), vec4<f32>(705f, -516f, global2.d.x, global2.d.x), vec4<bool>(global2.c.x, true, global2.a, false)))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, _wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(-global2.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x * global2.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - _wgslsmith_div_f32(234f, global2.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(673f, -430f, global2.d.x, 473f) * vec4<f32>(-129f, 1398f, -910f, 1200f))) + vec4<f32>(216f, _wgslsmith_f_op_f32(select(-777f, global3.x, global2.a)), _wgslsmith_f_op_f32(435f - global3.x), _wgslsmith_f_op_f32(global2.d.x + -1317f))), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, global2.b, global2.c.x), global2.b)), false, global2.c.x))));
    let var_0 = Struct_3(countOneBits(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -29375i, 10658i), global2.e), 1i, ~u_input.c, ~arg_1.x)));
    let var_1 = global2.a;
    var var_2 = global2.c.yyy;
    let var_3 = Struct_4(vec4<i32>(-1i) * -(vec4<i32>(var_0.a.x, global2.e.x, global2.e.x, -1651i) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_0.a.x, arg_1.x, 24207i), vec4<i32>(u_input.c, -1i, global2.e.x, var_0.a.x))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, func_4(~(~(u_input.a.x ^ 41161u)), -func_1(global2.a, abs(u_input.b.x), Struct_4(vec4<i32>(-1i, -33025i, 0i, 0i)), ~u_input.b)), ~67083u);
    var var_1 = -326f;
    var var_2 = global3.wy;
    var var_3 = vec4<bool>(all(select(vec2<bool>(any(global2.c.xw), true), global2.c.zx, vec2<bool>(global2.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + global3.x) < -1075f, func_3(any(!(!vec4<bool>(true, true, global2.a, global2.b)))), func_3(any(global2.c.zyz)) & true);
    let var_4 = !global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global3.x, var_2.x, var_2.x, 1095f), countOneBits(vec3<i32>(global2.e.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 1i), global2.e.x, reverseBits(-2147483647i)), global2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), 1052f, all(var_3.wz))), _wgslsmith_f_op_f32(ceil(-281f))))));
}

