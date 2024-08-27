struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(24938u, 393f, vec2<bool>(false, true), 430u), Struct_1(1u, 1173f, vec2<bool>(false, true), 4294967295u), vec3<u32>(4294967295u, 1u, 2543u), Struct_1(46614u, 130f, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(4294967295u, -378f, vec2<bool>(true, true), 0u), Struct_1(1u, 1516f, vec2<bool>(false, true), 7268u), vec3<u32>(59495u, 4530u, 1u), Struct_1(65888u, 1000f, vec2<bool>(true, true), 0u)), Struct_2(Struct_1(0u, 264f, vec2<bool>(false, true), 1955u), Struct_1(1u, 365f, vec2<bool>(true, false), 7999u), vec3<u32>(44701u, 23337u, 8816u), Struct_1(3234u, -1065f, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(60079u, -113f, vec2<bool>(false, true), 0u), Struct_1(4294967295u, -470f, vec2<bool>(true, false), 1u), vec3<u32>(0u, 1u, 4294967295u), Struct_1(9784u, 963f, vec2<bool>(true, false), 64207u)), Struct_2(Struct_1(0u, -354f, vec2<bool>(false, false), 85299u), Struct_1(9555u, 797f, vec2<bool>(true, false), 1u), vec3<u32>(58857u, 1u, 26626u), Struct_1(0u, 590f, vec2<bool>(false, true), 51705u)), Struct_2(Struct_1(22225u, -1312f, vec2<bool>(true, false), 0u), Struct_1(9992u, 441f, vec2<bool>(true, true), 0u), vec3<u32>(0u, 1u, 4294967295u), Struct_1(0u, 293f, vec2<bool>(false, false), 30074u)), Struct_2(Struct_1(4294967295u, -264f, vec2<bool>(true, true), 1u), Struct_1(1u, 1000f, vec2<bool>(false, false), 1u), vec3<u32>(1u, 4294967295u, 0u), Struct_1(4294967295u, -345f, vec2<bool>(true, true), 6429u)), Struct_2(Struct_1(1u, 360f, vec2<bool>(true, true), 4294967295u), Struct_1(1u, -1049f, vec2<bool>(false, false), 0u), vec3<u32>(4294967295u, 52377u, 36676u), Struct_1(23412u, 636f, vec2<bool>(true, false), 4294967295u)), Struct_2(Struct_1(1u, -646f, vec2<bool>(false, false), 0u), Struct_1(4294967295u, -1064f, vec2<bool>(false, true), 62767u), vec3<u32>(2523u, 99651u, 8754u), Struct_1(37761u, -2029f, vec2<bool>(true, false), 72932u)), Struct_2(Struct_1(59010u, -740f, vec2<bool>(true, false), 81283u), Struct_1(50739u, -1000f, vec2<bool>(false, false), 21360u), vec3<u32>(51299u, 0u, 1769u), Struct_1(1u, 785f, vec2<bool>(false, false), 70653u)), Struct_2(Struct_1(4294967295u, 506f, vec2<bool>(true, true), 94534u), Struct_1(48459u, 759f, vec2<bool>(true, true), 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(54598u, 767f, vec2<bool>(true, true), 114206u)), Struct_2(Struct_1(89533u, -1556f, vec2<bool>(false, false), 39552u), Struct_1(29169u, 479f, vec2<bool>(true, false), 1u), vec3<u32>(6655u, 4294967295u, 13620u), Struct_1(79130u, 136f, vec2<bool>(true, true), 1u)), Struct_2(Struct_1(45545u, 240f, vec2<bool>(true, false), 4294967295u), Struct_1(0u, -439f, vec2<bool>(false, false), 1u), vec3<u32>(1u, 0u, 0u), Struct_1(1744u, -1947f, vec2<bool>(true, false), 1u)), Struct_2(Struct_1(0u, 1551f, vec2<bool>(true, false), 2477u), Struct_1(0u, 334f, vec2<bool>(false, true), 43788u), vec3<u32>(27515u, 32097u, 0u), Struct_1(35887u, -436f, vec2<bool>(true, false), 27428u)), Struct_2(Struct_1(47698u, 1094f, vec2<bool>(true, false), 1u), Struct_1(16651u, 2343f, vec2<bool>(true, true), 4294967295u), vec3<u32>(83893u, 4873u, 0u), Struct_1(37238u, -286f, vec2<bool>(false, true), 0u)), Struct_2(Struct_1(103663u, -1691f, vec2<bool>(true, false), 4294967295u), Struct_1(1u, -1377f, vec2<bool>(false, true), 58608u), vec3<u32>(44713u, 36699u, 40510u), Struct_1(23684u, 1103f, vec2<bool>(false, false), 44767u)), Struct_2(Struct_1(4294967295u, -1227f, vec2<bool>(true, true), 4294967295u), Struct_1(1u, 1829f, vec2<bool>(true, false), 1361u), vec3<u32>(7832u, 0u, 1u), Struct_1(1u, 593f, vec2<bool>(true, true), 4294967295u)), Struct_2(Struct_1(4294967295u, -1600f, vec2<bool>(true, true), 4294967295u), Struct_1(22876u, -854f, vec2<bool>(true, false), 1u), vec3<u32>(15261u, 31649u, 4294967295u), Struct_1(1u, 460f, vec2<bool>(false, true), 54608u)), Struct_2(Struct_1(0u, 157f, vec2<bool>(true, false), 43416u), Struct_1(4294967295u, -1510f, vec2<bool>(false, false), 15449u), vec3<u32>(15770u, 80519u, 1u), Struct_1(0u, -250f, vec2<bool>(false, true), 45469u)), Struct_2(Struct_1(626u, -1536f, vec2<bool>(false, false), 8636u), Struct_1(20968u, -123f, vec2<bool>(true, true), 4619u), vec3<u32>(31503u, 1u, 47497u), Struct_1(24910u, -247f, vec2<bool>(true, true), 4294967295u)), Struct_2(Struct_1(36221u, -1284f, vec2<bool>(true, true), 11607u), Struct_1(0u, -1681f, vec2<bool>(true, false), 4294967295u), vec3<u32>(15848u, 47086u, 97574u), Struct_1(1u, -1101f, vec2<bool>(false, false), 4294967295u)), Struct_2(Struct_1(4294967295u, 782f, vec2<bool>(false, false), 99414u), Struct_1(0u, -485f, vec2<bool>(false, true), 4294967295u), vec3<u32>(118978u, 56003u, 81028u), Struct_1(0u, -1286f, vec2<bool>(false, true), 0u)));

var<private> global1: array<bool, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = Struct_2(arg_1.e.a, arg_1.a.a, ~arg_1.a.c & _wgslsmith_add_vec3_u32(reverseBits(~arg_1.a.c), arg_1.a.c), arg_1.e.d);
    let var_1 = abs(vec4<u32>(firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(u_input.a, var_0.b.d))), 0u, reverseBits(var_0.c.x), var_0.d.d));
    let var_2 = max(reverseBits(-(i32(-1i) * -9876i) ^ u_input.b), -15904i);
    var var_3 = select(true, true, global1[_wgslsmith_index_u32(~arg_1.a.b.a, 13u)]);
    global1 = array<bool, 13>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 22>();
    return Struct_3(Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(true, Struct_3(global0[_wgslsmith_index_u32(u_input.a, 22u)], -922f, vec3<f32>(-143f, -479f, 360f), -1606i, global0[_wgslsmith_index_u32(u_input.a, 22u)]), -176f)), _wgslsmith_f_op_f32(max(-356f, 679f)), all(vec3<bool>(global1[_wgslsmith_index_u32(46709u, 13u)], true, true)))), vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 1u))), Struct_1(9750u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f - 613f)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)] & global1[_wgslsmith_index_u32(u_input.a, 13u)], false), ~firstLeadingBit(u_input.a)), max(~vec3<u32>(4294967295u, 0u, 0u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(9815u, 31820u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(48188u, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_1(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(ceil(876f)), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 13u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(97429u, 13u)]), !global1[_wgslsmith_index_u32(u_input.a, 13u)]), u_input.a)), 648f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, 1572f, 1074f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1052f, -380f, 912f)))))), i32(-1i) * -27943i, Struct_2(Struct_1(~(0u | u_input.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(955f - 373f))), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(true, false), true), u_input.a << (0u % 32u)), Struct_1(_wgslsmith_add_u32(u_input.a, u_input.a) ^ 1u, _wgslsmith_div_f32(-517f, _wgslsmith_f_op_f32(min(-148f, -1487f))), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)] | global1[_wgslsmith_index_u32(u_input.a, 13u)], !global1[_wgslsmith_index_u32(u_input.a, 13u)]), ~(~23130u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 45313u, u_input.a) & vec3<u32>(1u, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(3904u, 65729u, u_input.a))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), select(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, 11413u, u_input.a), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1020f * -913f)), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(82860u, 13u)], false), vec2<bool>(true, false), false), any(vec2<bool>(false, false))), abs(_wgslsmith_sub_u32(u_input.a, 4294967295u)))));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    var var_1 = ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(19849u, 59112u) | var_0.a.c.xx), vec2<u32>(1u >> (u_input.a % 32u), 25237u));
    let var_2 = !(!(!global1[_wgslsmith_index_u32(25826u, 13u)]));
    let var_3 = _wgslsmith_mod_u32(~4294967295u, u_input.a);
    let var_4 = 4294967295u;
    return countOneBits(vec3<u32>(83357u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), var_0.e.c)), 0u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 73449u, 54759u) >> (vec4<u32>(u_input.a, 0u, arg_2, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(77665u, arg_1.e.b.d, 1u, 50747u), vec4<u32>(43190u, arg_2, 35506u, arg_1.e.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.a.a.c, arg_0.x);
    global1 = array<bool, 13>();
    let var_1 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(func_1().x, 35469u));
    let var_2 = _wgslsmith_f_op_f32(func_3(any(!vec4<bool>(false, var_1.x < 28509u, true, var_0.b > arg_1.c.x)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1008f)) - arg_1.c.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-387f, -379f));
    return Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-676f)))), vec2<bool>(true, true), firstTrailingBit(_wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(arg_2, var_1.x, 4294967295u)))), var_0, vec3<u32>(var_0.d, 1u, 4294967295u), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    global1 = array<bool, 13>();
    var var_0 = Struct_3(func_4(func_1(), func_2(), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a, abs(u_input.a)), _wgslsmith_sub_u32(select(u_input.a, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_mult_u32(u_input.a, 0u))), global1[_wgslsmith_index_u32(~(~u_input.a | (u_input.a | 0u)), 13u)]), 771f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2483f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)))), _wgslsmith_dot_vec2_i32(-(~(-vec2<i32>(-1i, -57137i))), abs(max(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b)))), Struct_2(Struct_1(u_input.a, 672f, func_2().e.b.c, abs(_wgslsmith_add_u32(u_input.a, u_input.a))), func_4(func_4(vec3<u32>(11662u, u_input.a, u_input.a) | vec3<u32>(57617u, u_input.a, 36692u), func_2(), 59742u, any(vec4<bool>(false, true, true, false))).c, Struct_3(func_2().e, _wgslsmith_f_op_f32(select(137f, 189f, false)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(241f, -500f, -780f), vec3<f32>(1009f, 1000f, 1000f))), 1i, Struct_2(Struct_1(u_input.a, -1026f, vec2<bool>(global1[_wgslsmith_index_u32(30490u, 13u)], true), 54984u), Struct_1(42580u, 382f, vec2<bool>(false, global1[_wgslsmith_index_u32(64854u, 13u)]), 0u), vec3<u32>(4294967295u, 6577u, u_input.a), Struct_1(u_input.a, 793f, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), 4294967295u))), 115665u, any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(33488u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(4506u, 13u)], true)))).d, vec3<u32>(4294967295u, u_input.a, 1u), Struct_1(_wgslsmith_sub_u32(firstLeadingBit(u_input.a), select(u_input.a, u_input.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 255f)), vec2<bool>(true, global1[_wgslsmith_index_u32(~1u, 13u)]), u_input.a)));
    let var_1 = func_4(func_4(~(~vec3<u32>(u_input.a, u_input.a, 37449u)), Struct_3(Struct_2(func_2().a.a, Struct_1(4294967295u, -1561f, var_0.e.b.c, 1u), ~var_0.e.c, Struct_1(var_0.a.c.x, var_0.c.x, var_0.e.a.c, 1590u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-540f, var_0.e.d.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.c)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.d.b, 690f, var_0.a.d.b)))), abs(u_input.b >> (u_input.a % 32u)), Struct_2(Struct_1(0u, -1653f, vec2<bool>(var_0.e.b.c.x, global1[_wgslsmith_index_u32(var_0.e.b.a, 13u)]), var_0.a.b.d), func_4(vec3<u32>(u_input.a, u_input.a, 1u), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 22u)], var_0.c.x, vec3<f32>(1635f, 1424f, 275f), var_0.d, var_0.a), u_input.a, var_0.e.b.c.x).d, abs(var_0.a.c), func_2().a.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.a.d << (var_0.a.b.a % 32u), ~u_input.a), ~vec2<u32>(var_0.a.c.x, 17115u) ^ var_0.a.c.yx), !global1[_wgslsmith_index_u32(~(~var_0.a.d.d), 13u)]).c, Struct_3(Struct_2(func_4(~var_0.e.c, func_2(), var_0.e.d.d, false).b, Struct_1(var_0.e.b.a, _wgslsmith_f_op_f32(-var_0.c.x), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_div_u32(2287u, var_0.e.a.d)), vec3<u32>(29535u, func_1().x, func_4(var_0.e.c, Struct_3(var_0.a, var_0.b, vec3<f32>(var_0.e.d.b, var_0.e.a.b, -672f), 58859i, Struct_2(Struct_1(1u, var_0.a.d.b, vec2<bool>(var_0.e.a.c.x, false), 0u), Struct_1(33856u, var_0.e.a.b, var_0.e.d.c, u_input.a), var_0.a.c, Struct_1(u_input.a, var_0.b, vec2<bool>(true, var_0.e.a.c.x), 1u))), 4294967295u, true).b.d), Struct_1(51607u, -176f, vec2<bool>(false, true), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))) + var_0.a.d.b), vec3<f32>(func_4(firstTrailingBit(vec3<u32>(28717u, 4294967295u, u_input.a)), func_2(), ~0u, var_0.a.b.c.x).b.b, _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + 1000f) + -1355f)), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(u_input.b), -1i | u_input.b, _wgslsmith_add_i32(87188i, 26813i)), ~(~vec3<i32>(-2147483647i, -30010i, var_0.d))), func_4(_wgslsmith_div_vec3_u32(var_0.a.c, firstLeadingBit(var_0.e.c)), Struct_3(func_4(vec3<u32>(1u, 0u, var_0.a.b.d), Struct_3(var_0.e, var_0.a.a.b, var_0.c, var_0.d, var_0.e), var_0.e.d.d, global1[_wgslsmith_index_u32(42425u, 13u)]), -422f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(238f, 1315f, 654f), var_0.c, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], var_0.a.d.c.x))), 2147483647i & u_input.b, func_4(var_0.a.c, Struct_3(var_0.a, -361f, var_0.c, var_0.d, Struct_2(Struct_1(1u, -1335f, vec2<bool>(var_0.a.b.c.x, false), u_input.a), var_0.e.b, var_0.e.c, var_0.a.d)), u_input.a, false)), _wgslsmith_sub_u32(~u_input.a, ~var_0.e.b.a), func_2().a.a.c.x && true)), 47035u, false);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~vec4<u32>(var_1.a.a, 4294967295u, 4294967295u, var_0.a.d.a)), vec4<i32>(-12333i, ~(-1i), -(~u_input.b), var_0.d) >> (vec4<u32>(firstLeadingBit(~u_input.a), func_1().x, 44778u, 0u) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(-16478i, var_0.d) >> (~(~var_0.a.a.d) % 32u), firstLeadingBit(_wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i)), var_0.d | ~max(5358i, -21444i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_f_op_f32(-var_1.d.b)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-514f, var_1.d.b)), _wgslsmith_div_f32(-1109f, var_1.b.b)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.b * _wgslsmith_f_op_f32(step(var_1.b.b, -1385f))), _wgslsmith_f_op_f32(-var_1.d.b)))));
}

