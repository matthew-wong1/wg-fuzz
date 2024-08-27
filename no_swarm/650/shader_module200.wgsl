struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<u32>(85632u, 0u), vec4<f32>(465f, 234f, 1000f, 1000f), Struct_1(true, vec4<bool>(false, false, true, true), 0i, vec3<u32>(0u, 0u, 102283u)), Struct_2(0u, Struct_1(false, vec4<bool>(false, false, true, true), 0i, vec3<u32>(20376u, 4294967295u, 1u)), true, vec3<u32>(723u, 2288u, 83334u), vec4<u32>(42910u, 51446u, 49233u, 0u))), Struct_3(vec2<u32>(0u, 0u), vec4<f32>(-1377f, 884f, -1331f, -1000f), Struct_1(true, vec4<bool>(true, false, false, false), -1i, vec3<u32>(17032u, 1418u, 0u)), Struct_2(4294967295u, Struct_1(true, vec4<bool>(true, true, false, false), -28807i, vec3<u32>(1u, 1u, 1u)), true, vec3<u32>(40240u, 26509u, 62983u), vec4<u32>(4703u, 55149u, 0u, 4294967295u))), Struct_3(vec2<u32>(4294967295u, 75013u), vec4<f32>(-411f, 1289f, 1000f, -708f), Struct_1(false, vec4<bool>(true, false, false, false), -6307i, vec3<u32>(27066u, 0u, 4294967295u)), Struct_2(25169u, Struct_1(true, vec4<bool>(false, true, true, false), -1i, vec3<u32>(4294967295u, 91409u, 13791u)), true, vec3<u32>(22443u, 81714u, 21363u), vec4<u32>(41092u, 16791u, 60823u, 15913u))), Struct_3(vec2<u32>(4294967295u, 0u), vec4<f32>(1469f, 1543f, 949f, 184f), Struct_1(true, vec4<bool>(false, true, false, true), 15829i, vec3<u32>(4294967295u, 36133u, 90124u)), Struct_2(4294967295u, Struct_1(true, vec4<bool>(true, true, true, true), 67002i, vec3<u32>(1u, 0u, 0u)), true, vec3<u32>(0u, 0u, 1u), vec4<u32>(97225u, 1u, 20573u, 0u))), Struct_3(vec2<u32>(7928u, 23382u), vec4<f32>(-637f, -976f, 1000f, -1112f), Struct_1(true, vec4<bool>(false, true, false, true), -31237i, vec3<u32>(4294967295u, 1u, 61714u)), Struct_2(100349u, Struct_1(false, vec4<bool>(true, false, false, false), 1i, vec3<u32>(28337u, 1u, 4664u)), false, vec3<u32>(0u, 62534u, 4294967295u), vec4<u32>(45545u, 0u, 1u, 13225u))), Struct_3(vec2<u32>(0u, 4294967295u), vec4<f32>(524f, -728f, 1592f, -980f), Struct_1(false, vec4<bool>(true, true, false, true), -9437i, vec3<u32>(30749u, 4294967295u, 33923u)), Struct_2(20965u, Struct_1(true, vec4<bool>(true, false, true, true), 60950i, vec3<u32>(13950u, 3884u, 14071u)), true, vec3<u32>(59913u, 117515u, 1u), vec4<u32>(0u, 0u, 0u, 4332u))), Struct_3(vec2<u32>(1u, 34897u), vec4<f32>(-1051f, 1262f, 1938f, -1056f), Struct_1(false, vec4<bool>(false, true, true, true), -8451i, vec3<u32>(16834u, 71370u, 70805u)), Struct_2(60u, Struct_1(false, vec4<bool>(false, true, true, true), -64798i, vec3<u32>(4294967295u, 40993u, 1u)), false, vec3<u32>(958u, 4294967295u, 6013u), vec4<u32>(1u, 25047u, 4294967295u, 65956u))), Struct_3(vec2<u32>(88233u, 0u), vec4<f32>(-916f, -166f, -1204f, 1753f), Struct_1(false, vec4<bool>(false, false, true, false), 47030i, vec3<u32>(21967u, 0u, 1u)), Struct_2(1u, Struct_1(false, vec4<bool>(true, false, false, true), -6592i, vec3<u32>(4294967295u, 4294967295u, 0u)), true, vec3<u32>(37771u, 1027u, 44969u), vec4<u32>(0u, 79226u, 6799u, 0u))), Struct_3(vec2<u32>(63778u, 4294967295u), vec4<f32>(1544f, 289f, -459f, 1438f), Struct_1(true, vec4<bool>(true, true, false, true), 1046i, vec3<u32>(4294967295u, 1u, 1u)), Struct_2(1u, Struct_1(false, vec4<bool>(false, false, true, true), 1i, vec3<u32>(0u, 43777u, 0u)), false, vec3<u32>(4294967295u, 0u, 1u), vec4<u32>(0u, 12801u, 0u, 0u))), Struct_3(vec2<u32>(1u, 4294967295u), vec4<f32>(-646f, -1378f, 682f, -329f), Struct_1(true, vec4<bool>(true, false, true, true), i32(-2147483648), vec3<u32>(70786u, 1u, 4294967295u)), Struct_2(56751u, Struct_1(false, vec4<bool>(false, false, true, false), 19983i, vec3<u32>(0u, 1u, 32217u)), false, vec3<u32>(1u, 5348u, 38135u), vec4<u32>(14436u, 34059u, 1u, 57273u))), Struct_3(vec2<u32>(50737u, 36420u), vec4<f32>(-1031f, 934f, -756f, -525f), Struct_1(true, vec4<bool>(true, false, true, true), -1i, vec3<u32>(1u, 4294967295u, 43136u)), Struct_2(0u, Struct_1(false, vec4<bool>(false, true, true, true), 64260i, vec3<u32>(27585u, 0u, 17832u)), true, vec3<u32>(49065u, 67099u, 92195u), vec4<u32>(1270u, 1u, 38971u, 4294967295u))), Struct_3(vec2<u32>(1u, 36804u), vec4<f32>(1591f, 1304f, -1195f, -1367f), Struct_1(true, vec4<bool>(true, true, false, true), 2147483647i, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_2(1u, Struct_1(false, vec4<bool>(true, true, false, true), 2147483647i, vec3<u32>(1u, 1u, 1u)), false, vec3<u32>(0u, 18154u, 0u), vec4<u32>(1u, 1u, 40940u, 42284u))), Struct_3(vec2<u32>(67895u, 0u), vec4<f32>(-745f, -488f, 268f, 195f), Struct_1(false, vec4<bool>(false, true, false, true), 4458i, vec3<u32>(67944u, 6204u, 59485u)), Struct_2(52488u, Struct_1(true, vec4<bool>(false, false, true, true), 1407i, vec3<u32>(4294967295u, 0u, 41688u)), true, vec3<u32>(1u, 4294967295u, 56301u), vec4<u32>(1325u, 67692u, 50913u, 26979u))), Struct_3(vec2<u32>(51185u, 3312u), vec4<f32>(-1000f, 191f, -111f, 1019f), Struct_1(true, vec4<bool>(true, false, true, true), 22912i, vec3<u32>(0u, 1u, 1u)), Struct_2(4294967295u, Struct_1(true, vec4<bool>(false, false, true, false), -82519i, vec3<u32>(4294967295u, 1u, 4294967295u)), false, vec3<u32>(1u, 4294967295u, 4294967295u), vec4<u32>(25667u, 1u, 113832u, 4294967295u))), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(868f, 469f, -422f, 144f), Struct_1(true, vec4<bool>(true, false, false, true), -27326i, vec3<u32>(82042u, 0u, 0u)), Struct_2(1u, Struct_1(true, vec4<bool>(false, false, true, true), 2147483647i, vec3<u32>(1u, 62045u, 39621u)), false, vec3<u32>(10336u, 17961u, 34668u), vec4<u32>(4294967295u, 99791u, 1u, 4294967295u))), Struct_3(vec2<u32>(8194u, 4294967295u), vec4<f32>(-147f, -179f, 419f, 661f), Struct_1(false, vec4<bool>(true, false, true, false), -3773i, vec3<u32>(4294967295u, 32195u, 0u)), Struct_2(4294967295u, Struct_1(false, vec4<bool>(true, true, true, true), 0i, vec3<u32>(0u, 22285u, 102981u)), false, vec3<u32>(0u, 72501u, 22077u), vec4<u32>(72783u, 4294967295u, 28492u, 15261u))), Struct_3(vec2<u32>(1u, 12233u), vec4<f32>(-1319f, 495f, -101f, 1334f), Struct_1(false, vec4<bool>(false, false, true, false), i32(-2147483648), vec3<u32>(50003u, 0u, 68745u)), Struct_2(80325u, Struct_1(true, vec4<bool>(false, true, true, true), -1i, vec3<u32>(6278u, 28764u, 38939u)), true, vec3<u32>(27198u, 58880u, 0u), vec4<u32>(0u, 4294967295u, 14240u, 59516u))), Struct_3(vec2<u32>(1u, 39359u), vec4<f32>(265f, 2625f, -837f, 2728f), Struct_1(false, vec4<bool>(false, true, false, true), 31821i, vec3<u32>(14804u, 46655u, 25799u)), Struct_2(0u, Struct_1(false, vec4<bool>(true, false, true, false), 2147483647i, vec3<u32>(38921u, 1u, 52134u)), true, vec3<u32>(17392u, 76105u, 1u), vec4<u32>(53034u, 1u, 23906u, 4294967295u))), Struct_3(vec2<u32>(107351u, 20587u), vec4<f32>(483f, 618f, -538f, 715f), Struct_1(false, vec4<bool>(false, false, false, false), -3720i, vec3<u32>(1u, 1u, 4294967295u)), Struct_2(1u, Struct_1(false, vec4<bool>(false, false, false, true), -1i, vec3<u32>(11334u, 777u, 0u)), false, vec3<u32>(0u, 4722u, 44145u), vec4<u32>(23051u, 4294967295u, 28144u, 290u))), Struct_3(vec2<u32>(0u, 4294967295u), vec4<f32>(566f, 413f, -1429f, 898f), Struct_1(false, vec4<bool>(false, false, true, false), -36026i, vec3<u32>(37431u, 0u, 1u)), Struct_2(4294967295u, Struct_1(false, vec4<bool>(true, false, false, true), 2147483647i, vec3<u32>(69368u, 14797u, 10965u)), true, vec3<u32>(26691u, 30058u, 4294967295u), vec4<u32>(53138u, 1u, 9634u, 1u))), Struct_3(vec2<u32>(45250u, 1u), vec4<f32>(-434f, -108f, -368f, 1477f), Struct_1(false, vec4<bool>(false, true, false, true), 2147483647i, vec3<u32>(52924u, 26911u, 23486u)), Struct_2(12348u, Struct_1(false, vec4<bool>(true, true, false, true), -28671i, vec3<u32>(0u, 37028u, 0u)), true, vec3<u32>(4294967295u, 0u, 84603u), vec4<u32>(24952u, 0u, 29887u, 4294967295u))), Struct_3(vec2<u32>(0u, 7497u), vec4<f32>(-283f, 1916f, 323f, -360f), Struct_1(false, vec4<bool>(false, true, true, true), 1i, vec3<u32>(0u, 37642u, 13784u)), Struct_2(0u, Struct_1(false, vec4<bool>(true, true, true, false), 109i, vec3<u32>(1u, 4294967295u, 27787u)), true, vec3<u32>(5147u, 11341u, 4345u), vec4<u32>(4294967295u, 0u, 4294967295u, 32663u))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    global1 = array<i32, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(835f, arg_1)), _wgslsmith_f_op_f32(1174f * -679f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(1684f, 1082f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1330f, -1821f), vec2<f32>(103f, 438f))))))));
    let var_1 = global2[_wgslsmith_index_u32(10238u, 22u)];
    var var_2 = _wgslsmith_clamp_vec4_i32(select(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 78123i, arg_3.e.b.c, var_1.c.c) << (arg_3.d.e % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<i32>(32083i, arg_3.d.b.c, arg_3.d.b.c, -21697i)))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.d.b.c, _wgslsmith_div_i32(arg_3.e.b.c, 13177i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-15630i, global1[_wgslsmith_index_u32(arg_3.d.e.x, 19u)]), vec2<i32>(arg_0.d.b.c, arg_3.e.b.c))), vec4<i32>(1i, arg_2.d.b.c, var_1.d.b.c, -13611i) << (vec4<u32>(arg_0.d.d.x, 74291u, u_input.c, arg_3.e.a) % vec4<u32>(32u))), true | (1f >= _wgslsmith_f_op_f32(var_1.b.x * var_0.x))), ~(-vec4<i32>(-19997i, -37821i, arg_2.d.b.c, u_input.b)) >> (arg_2.e.e % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-arg_3.e.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.b.c, -1i), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(14035u, 19u)])), 42993i, -2147483647i) >> (vec4<u32>(1u, ~u_input.d.x, ~var_1.c.d.x, countOneBits(1u)) % vec4<u32>(32u))));
    let var_3 = Struct_4(countOneBits(firstLeadingBit(arg_2.d.d.x) ^ _wgslsmith_div_u32(arg_2.e.b.d.x, u_input.a)) >> (1u % 32u), ~(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d.d.x, 1u), vec2<u32>(1u, var_1.a.x)), ~var_1.c.d.zy) & vec2<u32>(arg_2.d.a ^ var_1.c.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.d.x, arg_0.d.e.x), vec2<u32>(u_input.d.x, var_1.c.d.x)))), select(!select(select(vec4<bool>(true, arg_2.c.x, arg_0.e.b.b.x, var_1.d.c), var_1.d.b.b, arg_0.d.b.b.x), select(vec4<bool>(var_1.d.b.a, var_1.d.c, false, arg_3.d.b.b.x), vec4<bool>(arg_3.c.x, false, arg_0.c.x, false), arg_2.d.c), select(arg_0.d.b.b, vec4<bool>(false, false, false, arg_2.d.b.b.x), vec4<bool>(arg_3.e.b.b.x, var_1.d.c, true, arg_2.c.x))), !(!(!vec4<bool>(false, arg_3.e.b.a, true, false))), arg_0.e.b.b), arg_0.e, Struct_2(min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0.d.d, vec3<u32>(4294967295u, arg_2.b.x, 33120u)), _wgslsmith_div_u32(u_input.c, 1u), ~u_input.c), 1u), arg_2.e.b, !(!(!arg_0.e.c)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0.a, u_input.d.x, 0u)), var_1.c.d), abs(~vec4<u32>(arg_2.e.d.x, arg_3.d.d.x, 1u, 4294967295u) ^ vec4<u32>(arg_2.a, 1u, arg_3.b.x, arg_2.e.e.x))));
    return ~(_wgslsmith_mult_u32(24780u, firstTrailingBit(1u) ^ arg_2.d.e.x) << ((_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a, var_3.e.d.x), _wgslsmith_mult_u32(u_input.d.x, 120467u)) << (u_input.d.x % 32u)) % 32u));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    let var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(func_3(Struct_4(u_input.d.x, u_input.d, vec4<bool>(arg_0.d.b.b.x, true, false, arg_0.c.b.x), Struct_2(44382u, Struct_1(arg_0.d.b.a, arg_0.d.b.b, -948i, arg_0.c.d), arg_0.d.b.b.x, arg_0.c.d, vec4<u32>(29215u, 40183u, 0u, u_input.c)), Struct_2(0u, arg_0.c, true, vec3<u32>(arg_0.d.a, u_input.d.x, 0u), arg_0.d.e)), arg_0.b.x, Struct_4(u_input.c << (arg_0.c.d.x % 32u), firstLeadingBit(vec2<u32>(u_input.d.x, arg_0.c.d.x)), vec4<bool>(arg_0.d.b.b.x, arg_0.c.a, arg_0.c.a, arg_0.d.c), Struct_2(arg_0.a.x, Struct_1(arg_0.d.c, vec4<bool>(false, false, arg_0.d.b.b.x, true), global1[_wgslsmith_index_u32(arg_0.c.d.x, 19u)], vec3<u32>(arg_0.a.x, 1u, 1u)), true, arg_0.c.d, vec4<u32>(1u, 51024u, u_input.c, 0u)), arg_0.d), Struct_4(abs(arg_0.a.x), ~arg_0.d.e.xx, vec4<bool>(true, false, true, true), arg_0.d, arg_0.d)), 19u)] | 0i, -1i);
    global1 = array<i32, 19>();
    var var_2 = Struct_4(u_input.d.x, ~reverseBits(min(vec2<u32>(arg_0.a.x, u_input.a), vec2<u32>(2376u, u_input.d.x) << (arg_0.c.d.xy % vec2<u32>(32u)))), select(!select(!vec4<bool>(true, false, arg_0.c.b.x, arg_0.d.c), !vec4<bool>(false, false, true, arg_0.c.a), arg_0.c.c < -1i), select(select(!arg_0.c.b, !arg_0.d.b.b, vec4<bool>(arg_0.c.b.x, arg_0.d.b.b.x, arg_0.d.c, true)), !arg_0.c.b, true), true), Struct_2(1u, arg_0.c, all(!select(arg_0.c.b, vec4<bool>(arg_0.c.a, false, arg_0.c.b.x, arg_0.d.c), arg_0.c.b)), ~vec3<u32>(u_input.c & u_input.d.x, arg_0.d.b.d.x, u_input.a), ~arg_0.d.e), Struct_2(~arg_0.a.x, Struct_1(false, select(vec4<bool>(arg_0.c.a, true, arg_0.d.c, arg_0.c.a), arg_0.c.b, select(arg_0.d.b.b, vec4<bool>(arg_0.c.b.x, true, false, arg_0.d.c), arg_0.d.b.b)), global1[_wgslsmith_index_u32(1u, 19u)], vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1258u), arg_0.d.e.zz), arg_0.a.x & arg_0.c.d.x, _wgslsmith_mult_u32(u_input.c, 35232u))), ~countOneBits(arg_0.a.x) > _wgslsmith_clamp_u32(max(u_input.d.x, arg_0.d.b.d.x), firstTrailingBit(arg_0.a.x), 23068u), arg_0.c.d, vec4<u32>(_wgslsmith_mult_u32(~1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.d.x, 70065u, 1u, 0u), arg_0.d.e), arg_0.d.d.x << (71879u % 32u), ~_wgslsmith_sub_u32(arg_0.a.x, 11723u))));
    global2 = array<Struct_3, 22>();
    return Struct_4(49031u, vec2<u32>(37989u, arg_0.c.d.x), select(var_2.c, !var_2.e.b.b, vec4<bool>(arg_0.d.c, arg_0.c.b.x, arg_0.d.c, false)), arg_0.d, var_2.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    let var_0 = u_input.b > 6457i;
    global0 = array<vec2<bool>, 9>();
    var var_1 = func_2(global2[_wgslsmith_index_u32(arg_1, 22u)]);
    let var_2 = Struct_1(false, var_1.c, min(-func_2(global2[_wgslsmith_index_u32(~1u, 22u)]).e.b.c, arg_0.x), var_1.d.e.xxx);
    var var_3 = func_2(global2[_wgslsmith_index_u32(7948u, 22u)]).e.b.d;
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 22>();
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    let var_0 = ~vec2<i32>(reverseBits(7774i) << (u_input.c % 32u), -1i);
    let var_1 = _wgslsmith_dot_vec4_u32(~min(~vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.d.x), vec4<u32>(~51598u, 4294967295u >> (u_input.d.x % 32u), u_input.d.x, _wgslsmith_div_u32(1u, 1u))), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 56870u, 20959u), vec4<u32>(u_input.a, 4294967295u, 0u, 13301u) ^ vec4<u32>(u_input.a, 2202u, u_input.d.x, u_input.c)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, 18323u), vec4<u32>(1u, u_input.a, u_input.d.x, 4294967295u)) ^ ~vec4<u32>(u_input.a, 0u, 1u, u_input.c)) % vec4<u32>(32u)), vec4<u32>(u_input.a, abs(0u), u_input.d.x, ~u_input.c) & vec4<u32>(abs(4294967295u), ~u_input.d.x, u_input.d.x, 4294967295u), func_1(~(vec3<i32>(var_0.x, 0i, u_input.b) | vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], 1i, u_input.b)), 4294967295u)));
    global2 = array<Struct_3, 22>();
    var var_2 = func_2(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.c)), 22u)]).c.xyw;
    global1 = array<i32, 19>();
    var var_3 = Struct_3(u_input.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1470f, 1182f, 1055f, 2043f) + vec4<f32>(-1172f, 305f, 409f, 593f)))))), Struct_1(var_2.x & func_2(global2[_wgslsmith_index_u32(1252u, 22u)]).c.x, vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)) && any(vec4<bool>(true, true, false, true)), !all(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), !var_2.x, true && !var_2.x), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~var_1), 19u)], 1i), vec3<u32>(u_input.d.x, ~u_input.d.x, 1u)), func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(u_input.d | u_input.d), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 55684u), u_input.d), u_input.d, ~vec2<u32>(u_input.d.x, u_input.c))), 22u)]).d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(9612u, 1u), vec2<u32>(u_input.d.x, 4294967295u), var_2.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 62223u), vec2<u32>(var_1, 4294967295u), firstTrailingBit(vec2<u32>(var_1, 67379u)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, u_input.c), vec2<u32>(37466u, 0u)), select(vec2<u32>(var_1, u_input.a), ~vec2<u32>(57321u, 37048u), !var_2.x)), 926f, var_3.b.x, ~vec4<u32>(~max(1u, 1u), ~(~var_3.c.d.x), u_input.a, u_input.c));
}

