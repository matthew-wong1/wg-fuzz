struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(52167u, 32808u, 22944u), vec3<u32>(1u, 2181u, 41188u), vec3<u32>(0u, 1u, 7267u), vec3<u32>(5107u, 2420u, 61510u), vec3<u32>(0u, 52187u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 90464u), vec3<u32>(1u, 0u, 54963u), vec3<u32>(13532u, 27925u, 2146u), vec3<u32>(0u, 4294967295u, 16336u), vec3<u32>(14950u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 15347u), vec3<u32>(21921u, 1u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(108907u, 1u, 39169u), vec3<u32>(856u, 4294967295u, 4294967295u), vec3<u32>(1u, 21701u, 4294967295u), vec3<u32>(26490u, 60208u, 4294967295u), vec3<u32>(11909u, 47195u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 47948u, 1u), vec3<u32>(31461u, 78086u, 23626u), vec3<u32>(0u, 1u, 17511u), vec3<u32>(1u, 37753u, 0u), vec3<u32>(24495u, 1940u, 1u), vec3<u32>(0u, 13814u, 89006u), vec3<u32>(0u, 30798u, 0u), vec3<u32>(0u, 32876u, 4294967295u), vec3<u32>(80997u, 4294967295u, 4294967295u), vec3<u32>(0u, 19484u, 1u), vec3<u32>(56176u, 102267u, 0u));

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-1i, -1i, -27911i), vec3<i32>(2147483647i, 2147483647i, 36769i), vec3<i32>(0i, 2147483647i, -52124i), vec3<i32>(-16575i, -15132i, -76519i), vec3<i32>(-3475i, -1i, 2147483647i), vec3<i32>(-67369i, 2147483647i, 2147483647i), vec3<i32>(-334i, -1i, 1i), vec3<i32>(1i, -31244i, 1i), vec3<i32>(-83482i, 0i, i32(-2147483648)), vec3<i32>(32086i, 3251i, 8617i), vec3<i32>(0i, i32(-2147483648), 39295i), vec3<i32>(2147483647i, 94013i, 58501i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(-98442i, -9439i, -41004i), vec3<i32>(-6611i, 4630i, -68088i), vec3<i32>(2147483647i, 2147483647i, -20962i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(43313i, -41083i, -22474i), vec3<i32>(1i, 75581i, -16567i), vec3<i32>(-1i, 45571i, 1i), vec3<i32>(7852i, 38257i, 8883i), vec3<i32>(1i, -56232i, -1i), vec3<i32>(13213i, -1i, 10948i), vec3<i32>(2147483647i, 24045i, 0i), vec3<i32>(-16631i, -1i, 9453i), vec3<i32>(-2179i, 1i, 1i), vec3<i32>(-477i, 0i, -9374i), vec3<i32>(0i, 7865i, 1730i), vec3<i32>(-9061i, 0i, 62594i), vec3<i32>(-28815i, i32(-2147483648), 86289i));

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    global1 = array<vec3<i32>, 30>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-1429f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 387f) + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), _wgslsmith_f_op_f32(trunc(1000f)), arg_0.x);
    global1 = array<vec3<i32>, 30>();
    var var_1 = _wgslsmith_add_i32(63326i, ~_wgslsmith_add_i32(-31649i, _wgslsmith_sub_i32(u_input.b.x, -20660i)) << (_wgslsmith_dot_vec3_u32(countOneBits(arg_2.wxz), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 60530u), vec3<u32>(arg_2.x, 36376u, 4294967295u), _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], arg_2.www))) % 32u));
    global0 = array<vec3<u32>, 31>();
    return arg_2.x >> (1u % 32u);
}

fn func_2() -> vec2<f32> {
    var var_0 = u_input.b.x;
    let var_1 = ~(vec2<u32>(~countOneBits(16637u), func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(223f, -715f, -1166f), vec3<f32>(-466f, -1015f, 210f))), any(vec2<bool>(false, true)), countOneBits(vec4<u32>(4294967295u, 13955u, 6365u, 100714u)))) | firstLeadingBit(firstLeadingBit(min(vec2<u32>(28294u, 0u), vec2<u32>(0u, 32825u)))));
    global2 = 1u;
    let var_2 = vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, true, true, false))), vec2<bool>(true, any(vec4<bool>(true, false, true, false))))), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, true, true), u_input.a.x <= -21842i), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), any(vec4<bool>(false, true, false, false)))), true);
    var var_3 = true;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1719f), _wgslsmith_f_op_f32(select(1530f, -1142f, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(572f, -2203f) + vec2<f32>(-459f, 1366f))))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(1i, u_input.b.x, -57480i), u_input.a.x, -64122i), -u_input.a);
    global0 = array<vec3<u32>, 31>();
    var var_1 = 35217u;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2()))), vec2<f32>(_wgslsmith_f_op_f32(trunc(452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(293f)))), 1068f, Struct_1(u_input.b.x, 1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1536f)))), vec4<f32>(1f, 1f, 1f, 1f)), Struct_1((_wgslsmith_mod_i32(u_input.a.x, var_0.x) | -1854i) ^ (i32(-1i) * -28985i), 40997u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(701f, 130f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1060f, 1351f, -1000f, -985f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1064f, -688f, 331f, -175f), vec4<f32>(-274f, -1436f, -1277f, 586f)))))));
    global1 = array<vec3<i32>, 30>();
    return _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_2.d.a, -41271i), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), ~(-10392i), -var_0.x) << (_wgslsmith_clamp_u32(firstTrailingBit(0u), ~1u, ~0u) % 32u)), 0i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> i32 {
    global2 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, min(~74347u, 18767u)), countOneBits(~1u));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 207f) + vec2<f32>(-876f, 1000f))) + vec2<f32>(1676f, _wgslsmith_div_f32(1323f, 1042f))), _wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1339f + 1058f))), Struct_1(~firstLeadingBit(-2147483647i), ~85141u, _wgslsmith_f_op_f32(ceil(-883f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1424f, -1011f, -522f, 1061f))), Struct_1(firstTrailingBit(arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(10086u, 0u), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-351f + _wgslsmith_f_op_f32(f32(-1f) * -1133f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2178f), _wgslsmith_div_f32(-1714f, 1000f), _wgslsmith_f_op_f32(min(-1000f, -443f)), _wgslsmith_f_op_f32(abs(-794f))))));
    global0 = array<vec3<u32>, 31>();
    var var_1 = abs(min(~(vec4<u32>(var_0.a.e.b, var_0.a.e.b, var_0.a.e.b, 0u) & vec4<u32>(1u, 4294967295u, 792u, 35205u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.d.b, 0u, 1u, var_0.a.d.b), vec4<u32>(15313u, 26601u, 6152u, var_0.a.d.b) | vec4<u32>(var_0.a.d.b, 0u, var_0.a.e.b, var_0.a.d.b))) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.a.d.b, var_0.a.d.b, 0u, var_0.a.d.b), vec4<u32>(11963u, 4294967295u, 0u, 1u)), vec4<u32>(4294967295u, var_0.a.d.b, 35289u, 106546u)), _wgslsmith_mod_vec4_u32(vec4<u32>(10824u, 1u, 71872u, var_0.a.e.b), ~vec4<u32>(58358u, var_0.a.e.b, 0u, var_0.a.e.b))) % vec4<u32>(32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.d.d.zz + _wgslsmith_f_op_vec2_f32(ceil(var_0.a.b))) * _wgslsmith_f_op_vec2_f32(var_0.a.e.d.wz * vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.x)), var_0.a.e.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.e.c, var_0.a.e.d.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, var_0.a.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.c, var_0.a.b.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1898f, var_0.a.e.c))))), -1150f, var_0.a.e, var_0.a.e);
    return firstTrailingBit(-16582i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(29642i, func_4(-u_input.a.wz, vec4<i32>(~u_input.b.x, 0i, func_1(), -24397i ^ u_input.a.x)) & (7081i << (_wgslsmith_dot_vec4_u32(vec4<u32>(30320u, 11141u, 13485u, 1u), vec4<u32>(81782u, 26216u, 71320u, 1u)) % 32u)));
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~countOneBits(global0[_wgslsmith_index_u32(1u, 31u)]), vec3<u32>(_wgslsmith_add_u32(35435u, 1298u), ~183u, 77331u)), ~(global0[_wgslsmith_index_u32(40942u, 31u)] | global0[_wgslsmith_index_u32(1u, 31u)])), -950f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1531f, -437f, 426f, 1033f), vec4<f32>(-462f, -1000f, -374f, 2019f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2455f, 667f, 647f, 491f))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-1066f, -592f), _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(step(187f, -556f)), _wgslsmith_f_op_f32(step(1074f, 1398f))), vec4<f32>(764f, -397f, _wgslsmith_f_op_f32(1000f * -369f), _wgslsmith_f_op_f32(f32(-1f) * -619f))))));
    let var_2 = ~firstTrailingBit(-2147483647i);
    global0 = array<vec3<u32>, 31>();
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d.x * -733f), -153f, all(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-var_1.c))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.d.ww - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-877f, var_1.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-956f, 691f) * var_1.d.wz)))), _wgslsmith_f_op_vec2_f32(var_1.d.xw * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.d.ww - var_1.d.zz)))))), var_1.d.x, var_1, Struct_1(-(1i >> (~var_1.b % 32u)), 81483u, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-var_1.c), var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)))));
    let var_4 = max(min(vec2<u32>(4294967295u, ~max(var_1.b, var_3.d.b)), reverseBits(~select(vec2<u32>(var_3.d.b, 24713u), vec2<u32>(32162u, 4294967295u), vec2<bool>(false, true)))), firstTrailingBit(~vec2<u32>(_wgslsmith_clamp_u32(var_1.b, var_3.d.b, var_3.e.b), 67240u)));
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, 719f) + vec2<f32>(-255f, var_1.c)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.c, var_1.d.x)), _wgslsmith_f_op_f32(var_1.d.x * var_3.e.c)) + _wgslsmith_f_op_vec2_f32(abs(var_3.e.d.zz))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.b.x, -223f))) + var_1.d.xy), vec2<f32>(_wgslsmith_div_f32(var_1.d.x, var_1.c), _wgslsmith_f_op_f32(f32(-1f) * -368f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(var_1.d.yy, var_1.d.xy))))));
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(reverseBits(var_6.d.b)), var_4.x | ~25960u), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(var_6.d.b, var_3.e.b) << (vec2<u32>(49098u, 95095u) % vec2<u32>(32u)), ~var_4)), func_1(), 1i, -reverseBits(u_input.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(3084u, 56745u, var_6.d.b, 47833u), vec4<u32>(1u, var_6.d.b, var_4.x, 53467u)) % vec4<u32>(32u))));
}

