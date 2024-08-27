struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(true, Struct_1(-1i, -46571i, true)), vec4<f32>(-1383f, -1032f, -395f, -981f), vec2<u32>(0u, 50273u), Struct_2(false, Struct_1(i32(-2147483648), -1i, false)), Struct_1(-3886i, i32(-2147483648), false)), Struct_3(Struct_2(false, Struct_1(2147483647i, 1i, false)), vec4<f32>(1141f, -1540f, -542f, -1057f), vec2<u32>(4294967295u, 0u), Struct_2(false, Struct_1(2147483647i, -1203i, true)), Struct_1(2147483647i, 48298i, false)), Struct_3(Struct_2(true, Struct_1(-1i, -50755i, false)), vec4<f32>(-475f, -630f, -329f, 450f), vec2<u32>(0u, 1u), Struct_2(true, Struct_1(-1i, 2147483647i, false)), Struct_1(i32(-2147483648), 0i, true)), Struct_3(Struct_2(false, Struct_1(51854i, 27578i, true)), vec4<f32>(-1000f, 1329f, 579f, 708f), vec2<u32>(4294967295u, 0u), Struct_2(false, Struct_1(-12628i, 21853i, false)), Struct_1(-51100i, 2147483647i, false)), Struct_3(Struct_2(true, Struct_1(-1i, 7903i, false)), vec4<f32>(1000f, 516f, -482f, 419f), vec2<u32>(4294967295u, 1u), Struct_2(false, Struct_1(17238i, -41933i, false)), Struct_1(-33594i, 44296i, true)), Struct_3(Struct_2(true, Struct_1(2147483647i, 2147483647i, false)), vec4<f32>(-943f, -1799f, -592f, 259f), vec2<u32>(60581u, 0u), Struct_2(true, Struct_1(-11550i, -18302i, true)), Struct_1(27317i, 9822i, true)), Struct_3(Struct_2(true, Struct_1(-55445i, 0i, true)), vec4<f32>(1027f, -1050f, -1235f, 454f), vec2<u32>(39823u, 5047u), Struct_2(false, Struct_1(-1i, 86120i, false)), Struct_1(-63303i, 1i, false)), Struct_3(Struct_2(true, Struct_1(-11860i, -63166i, false)), vec4<f32>(1300f, 142f, 1760f, 762f), vec2<u32>(1u, 4294967295u), Struct_2(false, Struct_1(55239i, 2147483647i, false)), Struct_1(2147483647i, 0i, false)), Struct_3(Struct_2(false, Struct_1(0i, -1i, false)), vec4<f32>(725f, -886f, -935f, -102f), vec2<u32>(1u, 0u), Struct_2(false, Struct_1(i32(-2147483648), 2147483647i, true)), Struct_1(-15034i, 1224i, false)), Struct_3(Struct_2(false, Struct_1(2141i, 28842i, true)), vec4<f32>(313f, 921f, 179f, 1000f), vec2<u32>(0u, 4294967295u), Struct_2(true, Struct_1(0i, 34725i, true)), Struct_1(23928i, -51516i, true)), Struct_3(Struct_2(true, Struct_1(10550i, 1i, true)), vec4<f32>(-357f, -1786f, 107f, -585f), vec2<u32>(0u, 39212u), Struct_2(false, Struct_1(-33573i, 1i, false)), Struct_1(1i, -4816i, true)), Struct_3(Struct_2(true, Struct_1(71247i, 2147483647i, false)), vec4<f32>(-611f, 523f, 1056f, 482f), vec2<u32>(0u, 1u), Struct_2(true, Struct_1(-31319i, 25055i, true)), Struct_1(-1210i, 52827i, false)), Struct_3(Struct_2(false, Struct_1(35525i, 1i, false)), vec4<f32>(-632f, 366f, 1149f, -1878f), vec2<u32>(4294967295u, 4294967295u), Struct_2(true, Struct_1(33823i, -12182i, false)), Struct_1(61218i, i32(-2147483648), true)), Struct_3(Struct_2(true, Struct_1(19529i, -1i, false)), vec4<f32>(275f, 475f, 851f, -1919f), vec2<u32>(1u, 4294967295u), Struct_2(true, Struct_1(0i, 2147483647i, false)), Struct_1(-1i, 37082i, true)), Struct_3(Struct_2(true, Struct_1(15032i, 0i, false)), vec4<f32>(-517f, 818f, 747f, -1035f), vec2<u32>(1u, 18948u), Struct_2(false, Struct_1(0i, 41147i, true)), Struct_1(-1i, -5385i, true)), Struct_3(Struct_2(true, Struct_1(2147483647i, -967i, true)), vec4<f32>(1836f, 1712f, 1000f, -1547f), vec2<u32>(4294967295u, 12845u), Struct_2(false, Struct_1(30563i, i32(-2147483648), false)), Struct_1(0i, -76654i, false)), Struct_3(Struct_2(true, Struct_1(i32(-2147483648), -45267i, true)), vec4<f32>(1034f, -1000f, 1064f, 1836f), vec2<u32>(34463u, 1u), Struct_2(false, Struct_1(13943i, -31975i, false)), Struct_1(56613i, 2147483647i, false)), Struct_3(Struct_2(true, Struct_1(-49429i, 26143i, false)), vec4<f32>(-752f, -1086f, 971f, 1476f), vec2<u32>(51075u, 4294967295u), Struct_2(false, Struct_1(i32(-2147483648), -15037i, true)), Struct_1(-25697i, -5054i, true)), Struct_3(Struct_2(false, Struct_1(-7509i, 67230i, true)), vec4<f32>(-221f, 1607f, 1000f, -299f), vec2<u32>(4294967295u, 37433u), Struct_2(true, Struct_1(1i, 0i, true)), Struct_1(2147483647i, 0i, false)), Struct_3(Struct_2(true, Struct_1(i32(-2147483648), 0i, true)), vec4<f32>(1040f, -836f, -1000f, -1109f), vec2<u32>(4294967295u, 48246u), Struct_2(false, Struct_1(4306i, -18236i, true)), Struct_1(13851i, -16324i, false)), Struct_3(Struct_2(true, Struct_1(i32(-2147483648), -68045i, true)), vec4<f32>(-329f, 1000f, 210f, -108f), vec2<u32>(3037u, 4294967295u), Struct_2(true, Struct_1(-1i, 7293i, true)), Struct_1(0i, 7225i, true)));

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: Struct_1 = Struct_1(-1i, -15425i, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    let var_0 = 23927i;
    var var_1 = _wgslsmith_f_op_f32(min(-893f, arg_1.a.x));
    let var_2 = Struct_1(select(firstLeadingBit(-u_input.d.x) >> (max(_wgslsmith_mult_u32(arg_1.d.x, 32396u), arg_1.d.x ^ u_input.a) % 32u), firstTrailingBit(u_input.d.x), any(arg_1.c)), -var_0, arg_2.x);
    var var_3 = _wgslsmith_clamp_vec4_i32(~abs(arg_1.b), min(~(-vec4<i32>(2147483647i, u_input.c.x, 1i, 7994i)), ~(-vec4<i32>(u_input.c.x, -1i, 1i, global2.b))) | vec4<i32>(107268i, firstLeadingBit(i32(-1i) * -26918i), reverseBits(u_input.c.x >> (4294967295u % 32u)), -1i), vec4<i32>(countOneBits(_wgslsmith_div_i32(~0i, var_0 >> (u_input.b % 32u))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global2.b, var_0, var_2.b)), ~(~arg_0.yzy)), arg_0.x, -(~var_0)));
    global0 = array<Struct_3, 21>();
    return arg_1.d.x;
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_3, 21>();
    let var_0 = vec3<u32>(39822u, u_input.a, ~(~countOneBits(func_3(vec4<i32>(-9315i, 11516i, -1i, u_input.c.x), Struct_4(vec2<f32>(-647f, 1500f), u_input.d, vec4<bool>(global2.c, global2.c, global2.c, global2.c), vec4<u32>(1u, u_input.b, u_input.a, u_input.a)), vec2<bool>(true, false)))));
    global2 = Struct_1(~2147483647i, 2147483647i, !all(!(!vec2<bool>(global2.c, false))));
    var var_1 = Struct_1(-1i, global2.b, true || (true & global2.c));
    let var_2 = -1160f;
    return vec2<u32>(_wgslsmith_div_u32(~4294967295u, abs(_wgslsmith_dot_vec2_u32(~var_0.yz, select(var_0.zz, var_0.yy, vec2<bool>(false, false))))), _wgslsmith_clamp_u32(var_0.x, ~1u, _wgslsmith_add_u32(1u | firstTrailingBit(23257u), _wgslsmith_add_u32(min(0u, 30778u), 1u))));
}

fn func_1() -> vec3<f32> {
    var var_0 = ~u_input.b;
    let var_1 = func_2();
    var var_2 = !vec2<bool>(any(select(vec4<bool>(global2.c, false, false, global2.c), !vec4<bool>(true, true, global2.c, global2.c), global2.c)), global2.c);
    global0 = array<Struct_3, 21>();
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1764f, 232f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(495f, -1000f))), vec2<f32>(-1399f, _wgslsmith_f_op_f32(ceil(-718f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-245f - -1148f), _wgslsmith_f_op_f32(f32(-1f) * -1332f))), !select(!var_2.x, var_2.x, true))), u_input.d, select(!vec4<bool>(var_2.x, u_input.a != 157626u, all(vec3<bool>(true, true, global2.c)), all(vec3<bool>(false, false, true))), !(!(!vec4<bool>(true, var_2.x, var_2.x, global2.c))), global2.a == countOneBits(_wgslsmith_mod_i32(u_input.c.x, u_input.d.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 93865u), ~(4294967295u & u_input.b), 4294967295u, var_1.x), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 90316u)), ~firstTrailingBit(vec4<u32>(4294967295u, 7589u, 0u, u_input.b)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_3.a.x, var_3.a.x))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(839f, -156f, var_3.a.x)) - vec3<f32>(var_3.a.x, var_3.a.x, var_3.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    global2 = Struct_1(u_input.c.x, -41901i, global2.c);
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    global0 = array<Struct_3, 21>();
    global1 = array<vec3<u32>, 14>();
    var var_1 = ~vec4<u32>(func_3(u_input.d | vec4<i32>(19821i, global2.a, global2.b, global2.b), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, var_0.x)), reverseBits(vec4<i32>(0i, global2.a, u_input.d.x, 0i)), select(vec4<bool>(global2.c, global2.c, global2.c, true), vec4<bool>(global2.c, true, false, global2.c), vec4<bool>(global2.c, global2.c, global2.c, false)), vec4<u32>(u_input.a, 0u, 1u, 0u) & vec4<u32>(88404u, u_input.b, u_input.a, 27764u)), !vec2<bool>(global2.c, true)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 21938u), ~vec2<u32>(u_input.a, 35611u)), ~(~1u), max(~29044u << (_wgslsmith_clamp_u32(3168u, 0u, 24560u) % 32u), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2.a, u_input.d.x), vec3<i32>(2147483647i, global2.b, u_input.d.x))), -2147483647i, -1i), -19786i, u_input.a);
}

