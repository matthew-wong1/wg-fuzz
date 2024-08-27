struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1667f, 329f, 1374f, -375f), vec4<f32>(1898f, -1905f, 999f, -1444f), vec4<f32>(255f, 191f, 1147f, 352f), vec4<f32>(1172f, 1117f, -1228f, -767f), vec4<f32>(-2549f, -218f, -466f, -862f), vec4<f32>(285f, 1074f, 1335f, -853f), vec4<f32>(-415f, -1897f, -250f, 1291f), vec4<f32>(545f, 1298f, 114f, 787f), vec4<f32>(-1283f, 1212f, -380f, -493f), vec4<f32>(-226f, 1078f, 134f, -425f), vec4<f32>(2689f, -850f, 1000f, -258f), vec4<f32>(2606f, -127f, 1122f, -128f), vec4<f32>(-1322f, -569f, 293f, 321f), vec4<f32>(-1475f, 1000f, -118f, 542f), vec4<f32>(-582f, -1000f, -443f, -1000f), vec4<f32>(781f, -1549f, 1000f, 1000f), vec4<f32>(1919f, -112f, -1222f, 409f), vec4<f32>(1000f, 1293f, 588f, -196f), vec4<f32>(1884f, -273f, -1477f, -1125f), vec4<f32>(-172f, -224f, -1070f, -1097f), vec4<f32>(473f, 670f, -789f, 1000f), vec4<f32>(469f, -805f, 1787f, 1358f), vec4<f32>(1000f, 1000f, -993f, -110f), vec4<f32>(-1031f, -927f, -1093f, 826f), vec4<f32>(693f, 1463f, 709f, -572f));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<i32>(-1i, 30386i, 32315i), vec2<f32>(622f, -1081f), 1i, Struct_1(vec2<f32>(-443f, -1005f), 4294967295u, 1i), vec3<f32>(505f, 1360f, -2209f)), Struct_2(vec3<i32>(0i, 2147483647i, 2147483647i), vec2<f32>(1952f, 671f), -1i, Struct_1(vec2<f32>(231f, 142f), 17318u, 1i), vec3<f32>(-1000f, -2677f, -1000f)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec2<f32>(1000f, 195f), 29958i, Struct_1(vec2<f32>(619f, -496f), 865u, 1i), vec3<f32>(-251f, -1667f, -330f)), Struct_2(vec3<i32>(33943i, 0i, 6680i), vec2<f32>(-204f, 1243f), i32(-2147483648), Struct_1(vec2<f32>(-441f, -1000f), 46210u, 0i), vec3<f32>(-1342f, 1518f, 190f)), Struct_2(vec3<i32>(i32(-2147483648), 4914i, 0i), vec2<f32>(1211f, -1875f), 10359i, Struct_1(vec2<f32>(1413f, -1440f), 0u, -1i), vec3<f32>(-711f, -349f, -626f)), Struct_2(vec3<i32>(2147483647i, 1i, 2147483647i), vec2<f32>(-481f, -1229f), -21678i, Struct_1(vec2<f32>(1000f, -1175f), 15102u, 0i), vec3<f32>(-632f, -393f, 1685f)), Struct_2(vec3<i32>(-30735i, 0i, -1i), vec2<f32>(746f, 809f), 16849i, Struct_1(vec2<f32>(597f, 737f), 0u, 2147483647i), vec3<f32>(-411f, 472f, 432f)), Struct_2(vec3<i32>(0i, i32(-2147483648), -24790i), vec2<f32>(527f, 367f), 2147483647i, Struct_1(vec2<f32>(-203f, -145f), 1u, 1i), vec3<f32>(783f, 168f, -760f)), Struct_2(vec3<i32>(-22569i, 20033i, 66715i), vec2<f32>(-1000f, -172f), i32(-2147483648), Struct_1(vec2<f32>(-241f, 541f), 33707u, 11612i), vec3<f32>(-1353f, -858f, 1476f)), Struct_2(vec3<i32>(1i, 1i, 1i), vec2<f32>(-1000f, 1171f), 48820i, Struct_1(vec2<f32>(-2218f, 624f), 4294967295u, -1401i), vec3<f32>(-303f, 783f, -382f)), Struct_2(vec3<i32>(i32(-2147483648), 18539i, 2147483647i), vec2<f32>(920f, -120f), 2147483647i, Struct_1(vec2<f32>(-1977f, -332f), 12820u, -3571i), vec3<f32>(-559f, 336f, -1127f)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 1i), vec2<f32>(-743f, -616f), -1i, Struct_1(vec2<f32>(-1159f, -584f), 4294967295u, 0i), vec3<f32>(1162f, 1400f, -1496f)), Struct_2(vec3<i32>(i32(-2147483648), 0i, -53585i), vec2<f32>(267f, -937f), 0i, Struct_1(vec2<f32>(1000f, -628f), 0u, -29846i), vec3<f32>(-276f, 322f, 1000f)), Struct_2(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec2<f32>(-1520f, -259f), -22920i, Struct_1(vec2<f32>(327f, 1985f), 34345u, 12931i), vec3<f32>(1413f, -962f, 675f)), Struct_2(vec3<i32>(2147483647i, -50580i, 2147483647i), vec2<f32>(-301f, 325f), 32748i, Struct_1(vec2<f32>(1113f, 1000f), 54133u, -7005i), vec3<f32>(859f, 1290f, -1000f)), Struct_2(vec3<i32>(-9699i, 1i, 44988i), vec2<f32>(1394f, -1010f), -615i, Struct_1(vec2<f32>(-543f, -1156f), 26718u, -14569i), vec3<f32>(722f, -259f, 1135f)), Struct_2(vec3<i32>(-1i, -55841i, 1i), vec2<f32>(-729f, -638f), -1i, Struct_1(vec2<f32>(2466f, 376f), 0u, -15274i), vec3<f32>(1634f, -519f, 350f)), Struct_2(vec3<i32>(-76506i, 1i, i32(-2147483648)), vec2<f32>(2291f, 411f), 0i, Struct_1(vec2<f32>(294f, 306f), 50475u, 0i), vec3<f32>(1324f, -656f, 1137f)), Struct_2(vec3<i32>(-6726i, 1i, 1i), vec2<f32>(340f, 1429f), 10258i, Struct_1(vec2<f32>(-706f, 1080f), 4294967295u, 11767i), vec3<f32>(165f, -150f, -574f)), Struct_2(vec3<i32>(46243i, 1i, 5554i), vec2<f32>(681f, -428f), -6088i, Struct_1(vec2<f32>(-787f, 173f), 19126u, -29036i), vec3<f32>(-443f, 1088f, -696f)), Struct_2(vec3<i32>(-10888i, -2593i, i32(-2147483648)), vec2<f32>(-1000f, -434f), 1i, Struct_1(vec2<f32>(710f, -133f), 4294967295u, 31415i), vec3<f32>(-297f, 846f, -762f)), Struct_2(vec3<i32>(12469i, -11128i, -44300i), vec2<f32>(795f, -846f), i32(-2147483648), Struct_1(vec2<f32>(-171f, 1743f), 63879u, -1i), vec3<f32>(1168f, -2701f, -1449f)), Struct_2(vec3<i32>(53381i, 0i, -12303i), vec2<f32>(974f, -703f), 49123i, Struct_1(vec2<f32>(-385f, -1000f), 22101u, i32(-2147483648)), vec3<f32>(-1365f, -461f, 1414f)), Struct_2(vec3<i32>(i32(-2147483648), -4472i, 28014i), vec2<f32>(-409f, -1000f), 2147483647i, Struct_1(vec2<f32>(-1470f, 699f), 23100u, -1i), vec3<f32>(883f, 338f, -719f)), Struct_2(vec3<i32>(1i, -60182i, 18739i), vec2<f32>(419f, 1000f), -20003i, Struct_1(vec2<f32>(-587f, -1710f), 15809u, -1i), vec3<f32>(129f, 1454f, 749f)), Struct_2(vec3<i32>(-1i, 2147483647i, -84551i), vec2<f32>(-143f, 322f), 2147483647i, Struct_1(vec2<f32>(-603f, 578f), 4294967295u, 57385i), vec3<f32>(-1000f, -340f, -598f)), Struct_2(vec3<i32>(i32(-2147483648), 9626i, -49489i), vec2<f32>(1214f, -752f), 0i, Struct_1(vec2<f32>(1000f, 556f), 1u, i32(-2147483648)), vec3<f32>(-139f, -1029f, -292f)), Struct_2(vec3<i32>(-12561i, 0i, 1i), vec2<f32>(-303f, -1338f), 0i, Struct_1(vec2<f32>(-302f, 572f), 0u, -27796i), vec3<f32>(1400f, -1135f, 924f)), Struct_2(vec3<i32>(6012i, 62161i, -6142i), vec2<f32>(1000f, 478f), -850i, Struct_1(vec2<f32>(-1234f, 1163f), 0u, 0i), vec3<f32>(687f, -498f, 912f)));

var<private> global3: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(0i, 1i), vec2<i32>(0i, 725i), vec2<i32>(-31348i, 1i), vec2<i32>(-11764i, 1i), vec2<i32>(-30108i, 66776i), vec2<i32>(17667i, 0i), vec2<i32>(12808i, 1i), vec2<i32>(0i, -53978i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-30675i, 1i));

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(72167i), Struct_3(2147483647i), Struct_3(26662i), Struct_3(-10893i), Struct_3(2147483647i), Struct_3(2147483647i), Struct_3(i32(-2147483648)), Struct_3(1i), Struct_3(-14514i), Struct_3(2147483647i), Struct_3(-1i), Struct_3(23643i), Struct_3(-50074i), Struct_3(-6525i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> f32 {
    global0 = array<i32, 14>();
    global3 = array<vec2<i32>, 10>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(33827u, u_input.a), 14u)];
    let var_1 = Struct_3(~14870i);
    var var_2 = vec4<bool>(arg_0.a.x > arg_0.d.c, true, any(vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))), any(vec2<bool>(var_1.a <= 2147483647i, true)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(arg_1 + arg_2)) * arg_0.e.x) + arg_1)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = ~(~vec2<u32>(max(~u_input.a, 4898u), ~(u_input.a ^ 0u)));
    let var_1 = _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~((_wgslsmith_div_u32(arg_0.b, arg_0.b) & ~u_input.a) << (15388u % 32u)), 29u)], arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -986f)));
    var var_2 = var_0;
    var var_3 = -37827i;
    let var_4 = ~min(vec3<u32>(~(~var_0.x), reverseBits(u_input.a << (70524u % 32u)), 2128u), select(vec3<u32>(6008u, 62077u, abs(var_2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(6566u, 47133u, 42286u), abs(vec3<u32>(var_2.x, 4294967295u, 0u)), ~vec3<u32>(var_2.x, var_2.x, u_input.a)), any(select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, false)))));
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> i32 {
    var var_0 = func_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(136f)))), -196f), u_input.a >> (_wgslsmith_sub_u32(28825u, _wgslsmith_mult_u32(u_input.a, 0u)) % 32u), max(-32124i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 0i, global0[_wgslsmith_index_u32(u_input.a, 14u)], arg_1.x), vec4<i32>(arg_0.a, 22161i, arg_1.x, arg_0.a) << (vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u) % vec4<u32>(32u))))), false);
    var var_1 = vec2<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    var var_2 = Struct_2(-vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)] ^ var_0.c, global0[_wgslsmith_index_u32(u_input.a, 14u)], -1i << (_wgslsmith_mod_u32(var_0.b, u_input.a) % 32u)), _wgslsmith_f_op_vec2_f32(-var_0.a), select(_wgslsmith_mult_i32(~(-8234i), arg_0.a), var_0.c, any(select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x), select(false, var_1.x, true)))), func_2(func_2(func_2(Struct_1(vec2<f32>(var_0.a.x, -981f), 1u, var_0.c), var_1.x), var_1.x), all(!vec2<bool>(var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(162f, var_0.a.x, var_0.a.x) + vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_3 = var_2.d;
    let var_4 = vec3<bool>((var_0.c | ~var_3.c) == _wgslsmith_dot_vec2_i32(firstTrailingBit(countOneBits(vec2<i32>(1i, var_3.c))), vec2<i32>(_wgslsmith_div_i32(0i, var_3.c), 1i)), false, any(vec3<bool>(var_0.b <= 1u, true, all(vec3<bool>(true, true, var_1.x)))) != true);
    return var_0.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(min(arg_1.a, vec2<f32>(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - 343f) - _wgslsmith_f_op_f32(-1000f - 109f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 25>();
    global1 = array<vec4<f32>, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2197f, 2283f) * vec2<f32>(1183f, -226f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, -709f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, -2499f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, -337f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-909f, -1000f)))) + _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(false, false, true, true), Struct_1(vec2<f32>(309f, -1666f), 483u, -2147483647i), vec4<bool>(true, true, true, true), func_1(global4[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(0u, 10u)])))), select(vec2<bool>(all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), true))), u_input.a, -global0[_wgslsmith_index_u32(max(~u_input.a, 16436u), 14u)]);
    let var_1 = func_2(var_0, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~7576u, 14u)], global0[_wgslsmith_index_u32(67987u, 14u)], -15470i) <= 1i);
    var var_2 = Struct_3(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~(~var_1.b), 14u)], var_1.c, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(var_0.b, 36751u, _wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_add_u32(abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(25339u, u_input.a, 51259u), vec3<u32>(var_1.b, 1u, 25347u)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.b, 0u, 16593u, 4294967295u)), abs(firstLeadingBit(vec4<u32>(4294967295u, 0u, u_input.a, var_0.b))))), max(~_wgslsmith_mult_u32(~19841u, var_0.b), ~43409u), min(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1.b, 1u, var_1.b), vec4<u32>(20907u, var_1.b, var_0.b, var_0.b)) & ~vec4<u32>(var_1.b, var_1.b, var_1.b, u_input.a)), vec4<u32>(max(var_0.b, 1u) | 1u, var_1.b, max(max(var_0.b, 28646u), u_input.a), _wgslsmith_add_u32(24732u, 1u))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, var_1.b, u_input.a, var_1.b)) << (vec4<u32>(var_1.b, 1u, 1u, 15221u) % vec4<u32>(32u)), ~(~vec4<u32>(0u, u_input.a, var_0.b, 0u))));
}

