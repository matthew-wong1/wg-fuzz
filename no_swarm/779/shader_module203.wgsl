struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(0i, i32(-2147483648), -1i, -15574i), vec4<i32>(6647i, -1i, 1i, 2147483647i), vec4<i32>(2147483647i, 0i, 20549i, 13569i), vec4<i32>(-8753i, i32(-2147483648), 2147483647i, 24383i), vec4<i32>(0i, 2147483647i, 6386i, 61230i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 44995i, 23682i, -38702i), vec4<i32>(-30749i, -61616i, -40652i, -3682i), vec4<i32>(50587i, -22556i, 43603i, 84460i), vec4<i32>(i32(-2147483648), 4871i, i32(-2147483648), -47705i), vec4<i32>(1i, 0i, 1i, 20417i), vec4<i32>(-1i, i32(-2147483648), 59342i, -29564i), vec4<i32>(-1i, -12919i, -39328i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 65791i, -18462i, -1i), vec4<i32>(4316i, -1i, -19715i, 23498i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(2147483647i, 0i, 1i, 2147483647i), vec4<i32>(57388i, 4640i, i32(-2147483648), 14954i), vec4<i32>(-35705i, 0i, 34844i, -63665i), vec4<i32>(i32(-2147483648), 28436i, -1i, 1875i), vec4<i32>(i32(-2147483648), 1952i, 1i, 23478i), vec4<i32>(39696i, 34890i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), -23701i, 69091i, 0i), vec4<i32>(-56949i, -22271i, -1i, 2147483647i), vec4<i32>(-60694i, 20417i, 1i, 1i));

var<private> global1: f32 = 330f;

var<private> global2: f32;

var<private> global3: i32 = 0i;

var<private> global4: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec3<f32>(1160f, -416f, -1234f), Struct_1(11299u, 1u, vec3<bool>(false, true, true), -216f), false), Struct_3(vec3<f32>(222f, 884f, -1611f), Struct_1(14652u, 1u, vec3<bool>(true, false, true), 256f), false), Struct_3(vec3<f32>(-1303f, 1454f, -1323f), Struct_1(23796u, 1u, vec3<bool>(false, true, true), 1721f), false), Struct_3(vec3<f32>(-1020f, 1381f, 399f), Struct_1(0u, 21351u, vec3<bool>(false, true, false), -536f), true), Struct_3(vec3<f32>(-1261f, 1000f, -354f), Struct_1(1u, 0u, vec3<bool>(false, true, false), -437f), false), Struct_3(vec3<f32>(-1000f, 1991f, -887f), Struct_1(4294967295u, 152184u, vec3<bool>(true, true, true), 690f), false), Struct_3(vec3<f32>(-819f, -464f, 857f), Struct_1(1u, 57245u, vec3<bool>(true, true, false), 2535f), true), Struct_3(vec3<f32>(-195f, -1192f, -305f), Struct_1(14387u, 1486u, vec3<bool>(false, true, false), -552f), true), Struct_3(vec3<f32>(198f, 1359f, 1500f), Struct_1(43124u, 43820u, vec3<bool>(false, true, false), 426f), true), Struct_3(vec3<f32>(-337f, 737f, -290f), Struct_1(12629u, 1u, vec3<bool>(false, false, false), -146f), true), Struct_3(vec3<f32>(-481f, -838f, 425f), Struct_1(17384u, 0u, vec3<bool>(true, true, true), 527f), true), Struct_3(vec3<f32>(-1417f, 1064f, -785f), Struct_1(4294967295u, 61922u, vec3<bool>(false, false, false), -759f), true), Struct_3(vec3<f32>(-854f, 1191f, 1000f), Struct_1(25540u, 3571u, vec3<bool>(true, false, true), -1049f), false), Struct_3(vec3<f32>(-1000f, 1111f, 719f), Struct_1(69183u, 0u, vec3<bool>(false, false, true), 1277f), false), Struct_3(vec3<f32>(1258f, 830f, 1326f), Struct_1(37467u, 36587u, vec3<bool>(true, true, false), 452f), false), Struct_3(vec3<f32>(-209f, -729f, 194f), Struct_1(14169u, 1007u, vec3<bool>(true, false, true), -574f), true), Struct_3(vec3<f32>(-1568f, 121f, -517f), Struct_1(30305u, 58301u, vec3<bool>(false, false, false), 419f), false), Struct_3(vec3<f32>(-1303f, -411f, 1199f), Struct_1(32247u, 4294967295u, vec3<bool>(false, false, true), -1476f), true), Struct_3(vec3<f32>(381f, -1268f, 1867f), Struct_1(86698u, 1u, vec3<bool>(true, true, false), 1052f), true), Struct_3(vec3<f32>(498f, 1329f, 138f), Struct_1(0u, 42274u, vec3<bool>(true, true, false), 1000f), false), Struct_3(vec3<f32>(-308f, -1347f, 493f), Struct_1(77144u, 34814u, vec3<bool>(false, false, false), -647f), true), Struct_3(vec3<f32>(659f, -326f, 451f), Struct_1(0u, 20794u, vec3<bool>(true, true, true), 457f), false), Struct_3(vec3<f32>(1044f, 709f, -948f), Struct_1(1u, 35081u, vec3<bool>(false, false, true), 1000f), false), Struct_3(vec3<f32>(870f, -1141f, -1336f), Struct_1(18538u, 0u, vec3<bool>(true, true, false), 2578f), false), Struct_3(vec3<f32>(115f, 2266f, 1648f), Struct_1(9163u, 42181u, vec3<bool>(false, false, true), -253f), true), Struct_3(vec3<f32>(283f, 325f, -633f), Struct_1(1u, 54980u, vec3<bool>(false, false, false), -224f), true), Struct_3(vec3<f32>(1586f, -738f, 1677f), Struct_1(1u, 0u, vec3<bool>(false, false, false), 335f), true), Struct_3(vec3<f32>(1000f, -1868f, -1000f), Struct_1(38237u, 4294967295u, vec3<bool>(true, true, true), -354f), true), Struct_3(vec3<f32>(-179f, 1000f, -1000f), Struct_1(62032u, 37584u, vec3<bool>(true, true, false), -292f), false), Struct_3(vec3<f32>(1000f, -3412f, -725f), Struct_1(1u, 1u, vec3<bool>(true, false, true), 267f), false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec4<i32>, 25>();
    global1 = -1158f;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -517f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1494f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1197f);
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(820f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-646f, -981f)), _wgslsmith_f_op_f32(round(-1184f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, 754f))), vec2<f32>(_wgslsmith_f_op_f32(select(657f, 890f, false)), 798f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(289f, -265f), vec2<f32>(1387f, -552f), false))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-961f, 1298f), vec2<f32>(-1098f, 1002f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(808f, 604f)), true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1323f, -334f)) * -2304f), _wgslsmith_f_op_f32(-1298f - _wgslsmith_f_op_f32(-673f + -1090f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = vec2<u32>(arg_1, arg_2.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1000f))))), _wgslsmith_f_op_f32(var_1.x + var_1.x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, var_3.a.x))))));
    return Struct_1(u_input.a, _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(firstLeadingBit(u_input.a), firstLeadingBit(1u)) & _wgslsmith_clamp_u32(~0u, 11307u, 4294967295u)), select(vec3<bool>(any(arg_0), true, true), !vec3<bool>(true, false, arg_0.x), !select(arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - 633f));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = func_2(!arg_1.xyx, u_input.a, vec3<u32>(_wgslsmith_div_u32(52481u, u_input.a) | _wgslsmith_mult_u32(0u, u_input.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 378u, u_input.a, u_input.a)), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, u_input.a)))));
    global0 = array<vec4<i32>, 25>();
    var var_1 = -u_input.b.yyz;
    var_1 = select(u_input.b.wyx, vec3<i32>(max(0i, i32(-1i) * -26207i), u_input.b.x, 9212i), all(select(select(arg_1, select(arg_1, vec4<bool>(false, true, true, true), false), true), !(!arg_1), !arg_1.x)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x);
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> vec3<i32> {
    global3 = -49806i;
    var var_0 = vec2<u32>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, 518f) - vec3<f32>(2150f, -1523f, -1287f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, arg_0.d)))), select(select(!vec4<bool>(false, arg_0.c.x, true, arg_1), !vec4<bool>(arg_1, arg_0.c.x, true, true), true), select(vec4<bool>(true, arg_0.c.x, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, false, arg_0.c.x, false), vec4<bool>(false, false, true, true)), vec4<bool>(arg_1, false, false, false)), !vec4<bool>(true, arg_1, true, arg_1))), ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, arg_0.a, arg_0.b), vec3<u32>(u_input.a, 1u, arg_0.b)), u_input.a << (10114u % 32u)) << ((~u_input.a >> (0u % 32u)) % 32u)));
    var var_1 = !(!(arg_0.d > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, arg_0.d))));
    let var_2 = vec4<bool>(-1993f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(ceil(-357f))), arg_0.d)), true || !(!all(vec3<bool>(false, true, true))), func_2(!func_2(select(vec3<bool>(arg_0.c.x, arg_1, arg_0.c.x), vec3<bool>(arg_1, arg_0.c.x, arg_0.c.x), arg_0.c), arg_0.b, ~vec3<u32>(var_0.x, 0u, 34530u)).c, 15413u, _wgslsmith_div_vec3_u32(max(vec3<u32>(4294967295u, 28222u, arg_0.a) | vec3<u32>(u_input.a, 1u, 4294967295u), ~vec3<u32>(17804u, u_input.a, 65569u)), vec3<u32>(19766u, ~arg_0.b, ~var_0.x))).c.x, true);
    global1 = _wgslsmith_f_op_f32(round(-542f));
    return u_input.b.xzw;
}

fn func_5(arg_0: vec3<i32>) -> StorageBuffer {
    global0 = array<vec4<i32>, 25>();
    var var_0 = vec4<bool>(false, !any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))), true, true);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 25u)];
    global4 = array<Struct_3, 30>();
    var var_2 = (_wgslsmith_mult_i32(-var_1.x, var_1.x) >> (~u_input.a % 32u)) | abs(2584i);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(166f, -1000f, 1672f), vec3<f32>(-1091f, 611f, 833f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, -1000f, 258f) * vec3<f32>(1174f, 1967f, -743f)))))), _wgslsmith_mod_vec2_i32(~countOneBits(~u_input.b.wx), _wgslsmith_mod_vec2_i32(-select(vec2<i32>(-2147483647i, -841i), arg_0.zx, var_0.x), ~vec2<i32>(1i, 43089i))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.c;
    let x = u_input.a;
    s_output = func_5(func_4(Struct_1(_wgslsmith_div_u32(0u, func_1(vec3<f32>(-634f, -265f, 121f), vec4<bool>(false, false, false, false))), ~u_input.a, select(func_2(vec3<bool>(false, false, false), 73114u, vec3<u32>(u_input.a, u_input.a, u_input.a)).c, select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f + 473f))), !(!(u_input.a > u_input.a)), (select(u_input.b.yyw, u_input.b.zyy, vec3<bool>(true, true, false)) & firstLeadingBit(vec3<i32>(u_input.b.x, -26023i, 30944i))) ^ -select(vec3<i32>(0i, u_input.b.x, 14728i), vec3<i32>(u_input.c, u_input.b.x, -1i), vec3<bool>(false, true, false))));
}

