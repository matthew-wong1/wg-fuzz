struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(true, -704f, Struct_2(-874f, vec2<i32>(i32(-2147483648), -1i)), true, Struct_1(1668u, 85381u)), Struct_3(false, -277f, Struct_2(1301f, vec2<i32>(-7841i, 35132i)), true, Struct_1(25183u, 27883u)), Struct_3(false, 301f, Struct_2(-1000f, vec2<i32>(-24068i, -1i)), false, Struct_1(63411u, 0u)), Struct_3(true, 1464f, Struct_2(-1444f, vec2<i32>(20790i, i32(-2147483648))), false, Struct_1(0u, 11386u)), Struct_3(true, 890f, Struct_2(1000f, vec2<i32>(-11342i, 62164i)), false, Struct_1(0u, 30457u)), Struct_3(false, -424f, Struct_2(-1594f, vec2<i32>(i32(-2147483648), 1i)), true, Struct_1(4294967295u, 11564u)), Struct_3(false, 232f, Struct_2(-825f, vec2<i32>(0i, 23163i)), true, Struct_1(4294967295u, 4294967295u)), Struct_3(true, 180f, Struct_2(1131f, vec2<i32>(0i, -19642i)), false, Struct_1(0u, 0u)), Struct_3(true, 1628f, Struct_2(1420f, vec2<i32>(2630i, -27502i)), false, Struct_1(59810u, 6928u)), Struct_3(false, -707f, Struct_2(-397f, vec2<i32>(26634i, -44184i)), true, Struct_1(35084u, 1u)), Struct_3(true, 220f, Struct_2(-1324f, vec2<i32>(-1i, 43773i)), false, Struct_1(31536u, 1u)), Struct_3(true, 110f, Struct_2(-1239f, vec2<i32>(-45339i, -1i)), true, Struct_1(0u, 1u)), Struct_3(true, 143f, Struct_2(-1086f, vec2<i32>(0i, 35113i)), false, Struct_1(16408u, 961u)), Struct_3(false, 386f, Struct_2(-476f, vec2<i32>(i32(-2147483648), -8330i)), true, Struct_1(4294967295u, 4294967295u)), Struct_3(false, -326f, Struct_2(-954f, vec2<i32>(1i, 7896i)), true, Struct_1(1u, 92771u)), Struct_3(true, 712f, Struct_2(-331f, vec2<i32>(-9712i, -10464i)), false, Struct_1(0u, 22949u)), Struct_3(true, 990f, Struct_2(652f, vec2<i32>(37704i, 1i)), true, Struct_1(1u, 4294967295u)), Struct_3(false, 1186f, Struct_2(2018f, vec2<i32>(11282i, -37254i)), false, Struct_1(38703u, 32899u)), Struct_3(false, -1501f, Struct_2(-416f, vec2<i32>(-32263i, i32(-2147483648))), false, Struct_1(43078u, 28273u)), Struct_3(true, -618f, Struct_2(824f, vec2<i32>(63099i, 0i)), true, Struct_1(1u, 1u)), Struct_3(false, 1208f, Struct_2(-773f, vec2<i32>(-3682i, 165i)), false, Struct_1(4294967295u, 72181u)), Struct_3(false, -380f, Struct_2(-740f, vec2<i32>(33976i, 0i)), false, Struct_1(15813u, 1u)), Struct_3(false, -1174f, Struct_2(-738f, vec2<i32>(2147483647i, 3772i)), false, Struct_1(31391u, 76340u)));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(true, -622f, Struct_2(-370f, vec2<i32>(i32(-2147483648), 0i)), false, Struct_1(1u, 1u)), Struct_3(true, 1260f, Struct_2(2573f, vec2<i32>(51724i, 2813i)), false, Struct_1(0u, 0u)), Struct_3(false, -1261f, Struct_2(1109f, vec2<i32>(0i, i32(-2147483648))), true, Struct_1(1u, 21970u)), Struct_3(true, -665f, Struct_2(-565f, vec2<i32>(-3341i, 66091i)), true, Struct_1(21841u, 0u)), Struct_3(false, 1202f, Struct_2(1109f, vec2<i32>(-1i, -1904i)), false, Struct_1(84309u, 1u)), Struct_3(false, -479f, Struct_2(865f, vec2<i32>(18176i, 30684i)), false, Struct_1(0u, 9789u)), Struct_3(true, -103f, Struct_2(-875f, vec2<i32>(1i, i32(-2147483648))), false, Struct_1(0u, 8400u)), Struct_3(true, 673f, Struct_2(-1622f, vec2<i32>(-1073i, 2147483647i)), false, Struct_1(41210u, 5048u)), Struct_3(true, -1297f, Struct_2(-606f, vec2<i32>(0i, -43290i)), true, Struct_1(4294967295u, 27845u)), Struct_3(true, 519f, Struct_2(-101f, vec2<i32>(2147483647i, 1i)), false, Struct_1(4294967295u, 0u)), Struct_3(false, -1039f, Struct_2(-2611f, vec2<i32>(12115i, -25848i)), true, Struct_1(1u, 1u)), Struct_3(true, -285f, Struct_2(-232f, vec2<i32>(1i, 6699i)), true, Struct_1(16880u, 4294967295u)), Struct_3(false, -1778f, Struct_2(430f, vec2<i32>(0i, 2147483647i)), false, Struct_1(0u, 34994u)), Struct_3(false, -558f, Struct_2(-1127f, vec2<i32>(i32(-2147483648), -52033i)), true, Struct_1(22550u, 3013u)), Struct_3(false, 181f, Struct_2(-354f, vec2<i32>(2147483647i, 1i)), false, Struct_1(18880u, 50984u)), Struct_3(true, 408f, Struct_2(-967f, vec2<i32>(1i, 12272i)), true, Struct_1(23693u, 0u)), Struct_3(true, -2775f, Struct_2(-153f, vec2<i32>(6013i, 0i)), true, Struct_1(12868u, 55234u)), Struct_3(true, 2456f, Struct_2(-2252f, vec2<i32>(-6678i, -3323i)), false, Struct_1(4294967295u, 61039u)), Struct_3(true, -573f, Struct_2(-1305f, vec2<i32>(i32(-2147483648), -60314i)), true, Struct_1(4294967295u, 4294967295u)), Struct_3(false, 122f, Struct_2(-408f, vec2<i32>(-15009i, -3405i)), true, Struct_1(1u, 4294967295u)), Struct_3(true, -414f, Struct_2(756f, vec2<i32>(-1i, -1i)), true, Struct_1(0u, 25793u)), Struct_3(false, -429f, Struct_2(1511f, vec2<i32>(32466i, 0i)), true, Struct_1(47269u, 4253u)), Struct_3(false, 582f, Struct_2(-103f, vec2<i32>(2960i, 18712i)), true, Struct_1(7723u, 0u)), Struct_3(true, 827f, Struct_2(2043f, vec2<i32>(-36541i, 1i)), false, Struct_1(27034u, 4294967295u)), Struct_3(true, 136f, Struct_2(-647f, vec2<i32>(58603i, 2147483647i)), false, Struct_1(13830u, 4294967295u)), Struct_3(true, 521f, Struct_2(-942f, vec2<i32>(7489i, i32(-2147483648))), true, Struct_1(0u, 26155u)), Struct_3(true, 532f, Struct_2(-1115f, vec2<i32>(i32(-2147483648), 26721i)), true, Struct_1(1u, 1u)));

var<private> global2: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(-33231i, -1i, 17541i, -1i), vec4<i32>(0i, -82561i, 0i, i32(-2147483648)), vec4<i32>(-23401i, 0i, -1i, 0i), vec4<i32>(-7961i, -41074i, -21383i, 0i), vec4<i32>(-29186i, 12388i, i32(-2147483648), -10429i), vec4<i32>(1i, -26726i, i32(-2147483648), 1i), vec4<i32>(-21786i, -1i, 0i, 28432i), vec4<i32>(-1i, -2531i, -17944i, -21910i), vec4<i32>(0i, 31908i, 0i, 2147483647i), vec4<i32>(1i, 2147483647i, 1i, 0i), vec4<i32>(-1551i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(2147483647i, -31956i, -8248i, 21008i), vec4<i32>(50507i, 0i, 0i, 0i), vec4<i32>(-20869i, 13611i, 1i, 1i), vec4<i32>(2147483647i, 2147483647i, -10341i, 0i), vec4<i32>(-40707i, 50936i, 12840i, 1i), vec4<i32>(81635i, 1i, 2147483647i, 19934i), vec4<i32>(1i, -45168i, -15864i, -69073i), vec4<i32>(0i, 1i, -19987i, -17850i));

var<private> global3: Struct_4 = Struct_4(Struct_1(0u, 1u));

var<private> global4: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_4 {
    global3 = Struct_4(Struct_1(~14794u, select(42807u, arg_0.x, arg_3.x)));
    let var_0 = select(true || (6050u >= _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_div_u32(28160u, 4294967295u))), any(!(!select(vec4<bool>(arg_3.x, arg_3.x, true, false), vec4<bool>(true, arg_3.x, true, true), arg_3.x))), arg_3.x);
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    let var_1 = Struct_4(global3.a);
    return Struct_4(Struct_1(_wgslsmith_mult_u32(35134u, u_input.a.x), ~global3.a.a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    global2 = array<vec4<i32>, 19>();
    let var_0 = Struct_4(arg_0);
    let var_1 = func_1(max(select(vec3<u32>(~u_input.b.x, 4294967295u, ~global3.a.b), u_input.a.xxx, vec3<bool>(true, true, true)), vec3<u32>(arg_2.b, 8371u, 4294967295u)), -31599i, func_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, global3.a.a, 0u, 0u), vec4<u32>(0u, u_input.a.x, 0u, 25386u) >> (u_input.a % vec4<u32>(32u))), ~global3.a.b | arg_2.b, arg_0.a), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, 1i)), vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_sub_u32(u_input.b.x, 84u), 26248u), !vec3<bool>(any(vec4<bool>(arg_1, false, arg_1, arg_1)), true || arg_1, true)).a, vec3<bool>(true, arg_1 && (arg_1 != true), true)).a;
    global3 = var_0;
    global3 = Struct_4(func_1(~select(u_input.b, abs(u_input.a.xyw), select(vec3<bool>(arg_1, false, true), vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, arg_1))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(33093i, -1i), vec2<i32>(1i, 1i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-60382i, -15135i, 0i, 20129i), global2[_wgslsmith_index_u32(arg_0.b, 19u)])), arg_0, select(select(!vec3<bool>(false, true, arg_1), select(vec3<bool>(false, true, arg_1), vec3<bool>(true, arg_1, false), arg_1), vec3<bool>(arg_1, true, arg_1)), select(!vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1)), !vec3<bool>(arg_1, false, false)), arg_1)).a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, _wgslsmith_f_op_f32(floor(arg_3)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, 950f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-278f, 1537f), vec2<f32>(1575f, 233f), true)), vec2<f32>(arg_3, arg_3))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) + _wgslsmith_f_op_f32(arg_3 * arg_3)), _wgslsmith_f_op_f32(round(arg_3))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 433f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) + vec2<f32>(1188f, 122f)))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_add_u32(reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(33691u, 22997u, 10551u, u_input.a.x), u_input.a)), u_input.b.x), true, global3.a, _wgslsmith_f_op_f32(-935f * _wgslsmith_f_op_f32(round(1f))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x * var_0.x);
    let var_2 = ~(firstTrailingBit(12335u) ^ global3.a.b);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(global3.a, true, func_1(min(u_input.b, vec3<u32>(u_input.a.x, 19761u, 0u)), min(0i, 31344i), Struct_1(var_2, var_2), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))).a, _wgslsmith_div_f32(-2044f, -1482f))).x, var_0.x)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -54714i), vec2<i32>(1i, 2147483647i)) << (var_2 % 32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_div_f32(var_0.x, 1029f), _wgslsmith_f_op_f32(min(var_0.x, 529f))))));
    return -var_3.b.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_3.x;
    var var_1 = arg_2.x;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 748f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1259f - -569f))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(arg_2.x >> (20490u % 32u), arg_2.x >> (4294967295u % 32u))), vec2<i32>(_wgslsmith_div_i32(min(-2147483647i, arg_2.x), reverseBits(-2147483647i)), -11891i)));
    global3 = func_1(~(~vec3<u32>(_wgslsmith_div_u32(arg_0.x, arg_1.a.a), firstLeadingBit(12923u), 1u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, -var_2.b.x), ~var_2.b), global3.a, arg_3.zzy);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), -362f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - 2095f), 687f))) * 360f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(~u_input.b, func_1(vec3<u32>(_wgslsmith_sub_u32(4294967295u, global3.a.b), _wgslsmith_mod_u32(global3.a.a, global3.a.b), global3.a.a), -(~1i), global3.a, !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), max(vec2<i32>(0i, func_2()), ~(~vec2<i32>(9957i, 40598i))), vec4<bool>(false, true, true, false))), -vec2<i32>(_wgslsmith_mod_i32(~2147483647i, i32(-1i) * -3929i), _wgslsmith_add_i32(1i, 39282i)));
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<u32>(u_input.b.x, 0u, 48878u)), _wgslsmith_div_f32(var_0.a, var_0.a), min(abs(~vec3<i32>(var_0.b.x, 26218i, -37557i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_1, 1i), vec3<i32>(-39969i, var_0.b.x, var_0.b.x)), ~vec3<i32>(var_0.b.x, -44041i, var_0.b.x))) << (~vec3<u32>(firstLeadingBit(u_input.b.x), u_input.b.x, ~7663u) % vec3<u32>(32u)));
}

