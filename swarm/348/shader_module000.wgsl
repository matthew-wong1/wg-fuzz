struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-373f, -32959i, 625f, vec4<f32>(-937f, -1168f, -1557f, -3216f), vec3<f32>(441f, 1273f, -571f)), Struct_4(-1023f, 18508i, 614f, vec4<f32>(342f, 1212f, 641f, 107f), vec3<f32>(-1078f, 1000f, -876f)), Struct_4(377f, 4756i, 541f, vec4<f32>(571f, 1233f, 380f, 1244f), vec3<f32>(1088f, -1902f, -920f)), Struct_4(1775f, -22146i, 1140f, vec4<f32>(-694f, 1602f, 938f, 297f), vec3<f32>(522f, 746f, -1062f)), Struct_4(-877f, 49524i, -158f, vec4<f32>(355f, 1429f, 504f, -380f), vec3<f32>(786f, -946f, 575f)), Struct_4(-305f, 11416i, 101f, vec4<f32>(-488f, -1556f, -1644f, -262f), vec3<f32>(-1000f, 358f, -1000f)), Struct_4(-142f, i32(-2147483648), -1841f, vec4<f32>(1000f, 1592f, 131f, -839f), vec3<f32>(1452f, -648f, 165f)), Struct_4(1873f, -1i, 1366f, vec4<f32>(-524f, 1546f, 572f, -707f), vec3<f32>(-1213f, 767f, 179f)), Struct_4(994f, i32(-2147483648), -1339f, vec4<f32>(1000f, 766f, -703f, 272f), vec3<f32>(-1321f, -2279f, 248f)), Struct_4(-2985f, -29149i, 617f, vec4<f32>(-1168f, 449f, 765f, 659f), vec3<f32>(281f, -125f, 2341f)), Struct_4(-749f, -20284i, 3613f, vec4<f32>(-505f, 772f, 628f, 1535f), vec3<f32>(1454f, -927f, 455f)), Struct_4(792f, 1i, 1396f, vec4<f32>(267f, -750f, -466f, -130f), vec3<f32>(-203f, -554f, -655f)), Struct_4(768f, -1i, 353f, vec4<f32>(-581f, -2084f, 928f, -699f), vec3<f32>(1022f, -1000f, -558f)), Struct_4(1000f, -14546i, 158f, vec4<f32>(-144f, -1000f, -488f, 554f), vec3<f32>(356f, -359f, -1267f)), Struct_4(1000f, -40313i, -153f, vec4<f32>(1298f, 153f, 1639f, -649f), vec3<f32>(-257f, 1000f, -1225f)), Struct_4(558f, 1i, -1357f, vec4<f32>(407f, -1000f, 2603f, 975f), vec3<f32>(-261f, 370f, 207f)), Struct_4(-1416f, 14932i, -1973f, vec4<f32>(997f, 2878f, -945f, -1801f), vec3<f32>(-1443f, -734f, 2159f)), Struct_4(-1427f, 1924i, 562f, vec4<f32>(2634f, 529f, 965f, 827f), vec3<f32>(1382f, -820f, -1488f)), Struct_4(-470f, i32(-2147483648), -886f, vec4<f32>(1040f, -1103f, -916f, 1037f), vec3<f32>(395f, 722f, -1702f)), Struct_4(-642f, 5048i, -125f, vec4<f32>(1375f, 1084f, -1013f, -657f), vec3<f32>(-413f, -516f, 613f)));

var<private> global1: vec2<i32> = vec2<i32>(-71111i, 0i);

var<private> global2: array<vec4<u32>, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = u_input.c.x;
    var var_1 = abs(~(~vec3<u32>(max(18623u, 0u), ~68663u, _wgslsmith_div_u32(69471u, 26699u))));
    global2 = array<vec4<u32>, 20>();
    let var_2 = all(vec3<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true))), !any(vec4<bool>(true, true, true, true)), false));
    let var_3 = Struct_2(true, select(!vec4<bool>(any(vec4<bool>(var_2, var_2, var_2, false)), select(true, true, false), all(vec4<bool>(var_2, var_2, var_2, true)), var_2), vec4<bool>(false, !any(vec2<bool>(false, true)), false, var_2), vec4<bool>(true, select(var_2, var_2, var_2) != true, all(vec2<bool>(true, false)), (false & var_2) && true)), Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 29946u, 71117u), vec3<u32>(0u, 25014u, 54924u)), 17641u, u_input.a.x, ~(~1u)), !(false & !var_2), !vec3<bool>(false, all(vec4<bool>(var_2, var_2, true, var_2)), !var_2)));
    return ~min((var_1.x >> (var_3.c.a.x % 32u)) << (45233u % 32u), 0u) << (u_input.d % 32u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_1(~arg_1.a, all(vec2<bool>(u_input.a.x <= ~903u, true)), vec3<bool>(arg_1.c.x, arg_1.c.x, false));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(~var_0.a.x), ~func_3()) << (((firstLeadingBit(var_0.a.x) << (~4294967295u % 32u)) << (countOneBits(max(u_input.d, arg_1.a.x)) % 32u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 101542u, ~arg_1.a.x), firstTrailingBit(~vec3<u32>(47795u, 0u, u_input.d) >> (_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, 84161u), arg_2.xzx) % vec3<u32>(32u)))), var_0.a.x);
    global1 = firstTrailingBit(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -44605i, 49247i, 1i), -vec4<i32>(1i, u_input.c.x, 74605i, 21676i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, 2147483647i, 65657i), vec3<i32>(-2147483647i, global1.x, u_input.c.x), var_0.b), -vec3<i32>(-1i, 2147483647i, 1992i))));
    global0 = array<Struct_4, 20>();
    let var_2 = vec3<i32>(global1.x, _wgslsmith_mod_i32(~(-u_input.c.x), global1.x), 1i) & (~(-(~vec3<i32>(0i, -15672i, -19360i))) & (vec3<i32>(-4676i << (0u % 32u), _wgslsmith_sub_i32(-1i, u_input.b.x), max(u_input.c.x, 46176i)) << (abs(reverseBits(vec3<u32>(0u, 4294967295u, 49912u))) % vec3<u32>(32u))));
    return Struct_2(any(vec4<bool>(var_2.x == 0i, arg_1.c.x, !arg_1.c.x, arg_1.b)) & true, !vec4<bool>(any(vec3<bool>(arg_1.b, false, false)), false, all(arg_1.c.zz) && true, false), Struct_1(var_0.a, arg_1.c.x, arg_1.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global2 = array<vec4<u32>, 20>();
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1462f, arg_0.b, 160f))))) + arg_0.a), Struct_1(~firstTrailingBit(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 20u)]), false, vec3<bool>(!any(vec4<bool>(false, arg_1.a, arg_1.b.x, arg_1.b.x)), arg_1.b.x, all(!vec4<bool>(arg_1.c.b, arg_1.c.b, false, true)))), global2[_wgslsmith_index_u32(abs(abs(u_input.d)), 20u)]).c;
    global0 = array<Struct_4, 20>();
    let var_1 = ~min(arg_1.c.a.xw, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.a.x, 54687u), u_input.a) << (abs(vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, ~u_input.d), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, arg_1.c.a.x), vec2<u32>(4294967295u, 1u))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(42755i, 6088i << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, 1u), vec4<u32>(var_1.x, 40420u, arg_1.c.a.x, 4294967295u))) % 32u)), u_input.c.x, -16906i);
    return countOneBits(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(538f, arg_0.b, 1000f), arg_0.a)), arg_1.a))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, arg_1.c.a.x, 46432u), vec4<u32>(77919u, 4294967295u, 4294967295u, var_1.x)) ^ ~vec4<u32>(566u, 74169u, u_input.a.x, u_input.d), arg_1.b.x, vec3<bool>(true, true, true)), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(27388u, 3570u, 1u, 35830u)), _wgslsmith_clamp_vec4_u32(~global2[_wgslsmith_index_u32(arg_1.c.a.x, 20u)], ~vec4<u32>(4294967295u, 7803u, u_input.a.x, 45300u), var_0.a))).c.a.x);
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<f32>(845f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(425f)), 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-646f + -265f), -1541f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -514f) + _wgslsmith_f_op_f32(-104f - 120f)))));
    var var_1 = ~vec3<u32>(func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-642f, 1098f, 1031f)), -1000f), func_2(var_0.xwx, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 20u)], true, vec3<bool>(false, true, true)), ~vec4<u32>(u_input.d, 67077u, u_input.d, 0u))), u_input.d, _wgslsmith_mod_u32(~u_input.d, 1u));
    global1 = u_input.b;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(select(~func_2(vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_1(global2[_wgslsmith_index_u32(var_1.x, 20u)], false, vec3<bool>(true, true, true)), vec4<u32>(var_1.x, u_input.a.x, var_1.x, 74525u)).c.a.x, _wgslsmith_dot_vec2_u32(select(u_input.a, var_1.yz, vec2<bool>(false, false)), select(vec2<u32>(24285u, var_1.x), vec2<u32>(16823u, 40835u), false)), all(func_2(var_0.xzy, Struct_1(vec4<u32>(var_1.x, 1u, u_input.a.x, var_1.x), false, vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(29800u, 20u)]).c.c.yz)), _wgslsmith_sub_u32(u_input.a.x, (u_input.d & 48718u) ^ _wgslsmith_div_u32(4294967295u, u_input.d))), var_1.x);
    var var_3 = !vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), true, true, ~(~global1.x) < 0i);
    return Struct_3(_wgslsmith_div_vec3_f32(var_0.ywz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1324f, -988f, var_0.x) - _wgslsmith_f_op_vec3_f32(-var_0.wyw)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, var_0.x, 420f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_div_f32(var_0.x, 578f)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_4) -> vec2<bool> {
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(min(-2147483647i, arg_3.b), 45191i), u_input.b);
    let var_0 = !arg_1.d;
    global0 = array<Struct_4, 20>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(770f))), func_1().a.x)), -410f);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_3.e))), func_2(arg_0.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1351f, 310f) * arg_0.a)), func_2(arg_0.a, func_2(arg_3.d.wzy, Struct_1(vec4<u32>(u_input.d, 22448u, u_input.d, 5252u), true, var_0), vec4<u32>(1u, 0u, u_input.d, u_input.a.x)).c, vec4<u32>(4294967295u, 0u, u_input.d, 13561u)).c, select(vec4<u32>(32784u, 6883u, 95134u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 66244u, u_input.a.x, 90862u), global2[_wgslsmith_index_u32(u_input.a.x, 20u)] | global2[_wgslsmith_index_u32(u_input.a.x, 20u)], func_2(vec3<f32>(-179f, arg_1.a.e.x, -1000f), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], true, var_0), global2[_wgslsmith_index_u32(31013u, 20u)]).b)).c, ~global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.d), 20u)]).c, firstLeadingBit(~(_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(42949u, 20u)], global2[_wgslsmith_index_u32(38561u, 20u)]) | ~global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))).c;
    return func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, var_1.a.x, arg_2.a)), vec3<bool>(false, arg_1.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d.zwz) - vec3<f32>(var_1.a.x, arg_0.a.x, 2375f)), all(vec4<bool>(var_0.x, var_2.b, arg_1.b, var_2.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.e) - _wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(select(arg_3.e, var_1.a, arg_1.d)), var_0.x && false))))), Struct_1(var_2.a, !(!(!arg_1.d.x)), !arg_1.d), ~var_2.a).c.c.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(countOneBits(u_input.c), u_input.c, func_5(func_1(), Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(u_input.a.x, 1u), 4294967295u), 20u)], 0i < _wgslsmith_add_i32(-2147483647i, global1.x), 0i, !func_2(vec3<f32>(-200f, 951f, 248f), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], true, vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(u_input.d, 20u)]).c.c), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(25482u, firstTrailingBit(~0u)), 20u)]));
    var var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-354f * -915f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-722f)), -216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))));
    global2 = array<vec4<u32>, 20>();
    global1 = _wgslsmith_add_vec2_i32(u_input.c, u_input.b);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1745f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + _wgslsmith_f_op_f32(var_0.d.x - var_0.a)))))));
    global2 = array<vec4<u32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-504f, var_0.d.x, _wgslsmith_f_op_f32(min(-154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, var_2)) + _wgslsmith_div_f32(663f, -1559f))))));
}

