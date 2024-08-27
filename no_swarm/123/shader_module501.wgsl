struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec2<i32>(-48440i, 64763i), Struct_1(0i, vec2<u32>(49040u, 0u), vec3<i32>(2147483647i, 6952i, -1i), vec4<f32>(1745f, 1000f, 906f, -2193f), vec4<u32>(59223u, 53292u, 2723u, 4294967295u))), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(16630i, -41948i), Struct_1(-1i, vec2<u32>(0u, 1u), vec3<i32>(-10446i, -10082i, 2147483647i), vec4<f32>(315f, 237f, -620f, 955f), vec4<u32>(0u, 64547u, 1u, 88740u))), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(33730i, -23009i), Struct_1(-8933i, vec2<u32>(1u, 4294967295u), vec3<i32>(2147483647i, 34185i, -11550i), vec4<f32>(1186f, 375f, 1102f, 2502f), vec4<u32>(1u, 4294967295u, 0u, 55068u))), vec2<u32>(2084u, 1u)), Struct_3(Struct_2(vec2<i32>(0i, -23966i), Struct_1(-2760i, vec2<u32>(21395u, 4294967295u), vec3<i32>(i32(-2147483648), 1809i, 1i), vec4<f32>(-340f, -302f, 853f, 577f), vec4<u32>(1u, 4294967295u, 4294967295u, 42348u))), vec2<u32>(0u, 8274u)), Struct_3(Struct_2(vec2<i32>(4380i, 1i), Struct_1(-1i, vec2<u32>(52486u, 59239u), vec3<i32>(-15488i, 0i, -1i), vec4<f32>(778f, -1196f, 898f, -791f), vec4<u32>(1u, 62299u, 4766u, 4294967295u))), vec2<u32>(8193u, 0u)), Struct_3(Struct_2(vec2<i32>(0i, -17763i), Struct_1(3958i, vec2<u32>(20244u, 1u), vec3<i32>(-23013i, i32(-2147483648), 1703i), vec4<f32>(1990f, -866f, -530f, 427f), vec4<u32>(702u, 160u, 4294967295u, 17289u))), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(1i, 1i), Struct_1(17829i, vec2<u32>(0u, 1u), vec3<i32>(-634i, 11233i, 37946i), vec4<f32>(1101f, 618f, -1122f, 1468f), vec4<u32>(34129u, 12553u, 4294967295u, 4294967295u))), vec2<u32>(0u, 1u)), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(3127i, vec2<u32>(61271u, 4294967295u), vec3<i32>(23219i, 6623i, i32(-2147483648)), vec4<f32>(-2025f, 279f, -601f, -246f), vec4<u32>(1u, 4294967295u, 22034u, 41979u))), vec2<u32>(26789u, 42191u)), Struct_3(Struct_2(vec2<i32>(-25718i, 36484i), Struct_1(712i, vec2<u32>(37789u, 28100u), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec4<f32>(129f, -117f, -1588f, -1208f), vec4<u32>(767u, 4294967295u, 1u, 4294967295u))), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 2147483647i), Struct_1(9292i, vec2<u32>(14428u, 4294967295u), vec3<i32>(63260i, -21749i, 18847i), vec4<f32>(120f, 254f, 123f, -322f), vec4<u32>(0u, 71774u, 0u, 33132u))), vec2<u32>(16138u, 105159u)), Struct_3(Struct_2(vec2<i32>(32474i, 0i), Struct_1(-45244i, vec2<u32>(1u, 4294967295u), vec3<i32>(-60517i, i32(-2147483648), 2147483647i), vec4<f32>(-2181f, -1000f, -2481f, -344f), vec4<u32>(4294967295u, 6092u, 4294967295u, 0u))), vec2<u32>(1u, 0u)), Struct_3(Struct_2(vec2<i32>(2147483647i, 30507i), Struct_1(-2760i, vec2<u32>(6899u, 0u), vec3<i32>(-87271i, -57403i, -13188i), vec4<f32>(1000f, 771f, -165f, 219f), vec4<u32>(4321u, 12830u, 0u, 17771u))), vec2<u32>(14702u, 30607u)), Struct_3(Struct_2(vec2<i32>(-6283i, 2147483647i), Struct_1(-1317i, vec2<u32>(26995u, 12057u), vec3<i32>(1i, 2147483647i, 2779i), vec4<f32>(-1636f, -1654f, 1815f, 341f), vec4<u32>(4294967295u, 9432u, 47315u, 58063u))), vec2<u32>(14778u, 3944u)), Struct_3(Struct_2(vec2<i32>(0i, 51654i), Struct_1(1i, vec2<u32>(4294967295u, 1u), vec3<i32>(-1i, 0i, i32(-2147483648)), vec4<f32>(-1000f, -337f, -465f, -1341f), vec4<u32>(21915u, 6834u, 42085u, 14603u))), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec2<i32>(11048i, -1i), Struct_1(-781i, vec2<u32>(1840u, 1u), vec3<i32>(2147483647i, -8535i, -1i), vec4<f32>(1109f, -1202f, 418f, -1029f), vec4<u32>(4294967295u, 1u, 30992u, 7998u))), vec2<u32>(4294967295u, 1u)), Struct_3(Struct_2(vec2<i32>(-40919i, 11092i), Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 75370u), vec3<i32>(-1i, i32(-2147483648), 1i), vec4<f32>(-1129f, 1000f, 559f, -752f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30635u))), vec2<u32>(4294967295u, 94086u)), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), -16309i), Struct_1(-29964i, vec2<u32>(1u, 4294967295u), vec3<i32>(5314i, -1i, i32(-2147483648)), vec4<f32>(1504f, 971f, -309f, 118f), vec4<u32>(29385u, 1u, 4294967295u, 18406u))), vec2<u32>(4294967295u, 6892u)), Struct_3(Struct_2(vec2<i32>(9079i, -22377i), Struct_1(36858i, vec2<u32>(0u, 14965u), vec3<i32>(1i, -1i, 8478i), vec4<f32>(-640f, -874f, -806f, -648f), vec4<u32>(13385u, 75049u, 4294967295u, 1u))), vec2<u32>(688u, 0u)), Struct_3(Struct_2(vec2<i32>(21781i, 1i), Struct_1(27749i, vec2<u32>(23214u, 56535u), vec3<i32>(i32(-2147483648), -1i, -1i), vec4<f32>(1409f, -187f, 377f, -729f), vec4<u32>(64322u, 13659u, 26533u, 30089u))), vec2<u32>(9626u, 30694u)), Struct_3(Struct_2(vec2<i32>(i32(-2147483648), 24794i), Struct_1(i32(-2147483648), vec2<u32>(5644u, 33278u), vec3<i32>(44919i, i32(-2147483648), 1i), vec4<f32>(-455f, 802f, -261f, -536f), vec4<u32>(0u, 65885u, 13362u, 14448u))), vec2<u32>(4294967295u, 15780u)), Struct_3(Struct_2(vec2<i32>(-57604i, -43320i), Struct_1(-1i, vec2<u32>(5778u, 1u), vec3<i32>(1i, 47851i, 0i), vec4<f32>(-1515f, 542f, 814f, -539f), vec4<u32>(20657u, 4294967295u, 0u, 1u))), vec2<u32>(119u, 1u)));

var<private> global1: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, -1516f, 1000f, 1089f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.d, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.d.x), _wgslsmith_f_op_f32(ceil(arg_0.d.x)), 247f, -185f))));
    let var_1 = Struct_1(33758i, countOneBits(vec2<u32>(~_wgslsmith_div_u32(arg_2.b.e.x, u_input.a), 67290u)), vec3<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(arg_2.a.x, arg_2.b.a)), _wgslsmith_mult_i32(select(arg_0.a, arg_0.a, true), ~arg_2.a.x), -_wgslsmith_sub_i32(arg_0.c.x, 23631i)), 1i & arg_2.b.a, ~(~(-1i) & -arg_2.b.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.d, var_0)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, arg_0.d.x, var_0.x, 1369f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(300f, 852f, -681f, 410f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(297f, arg_0.d.x, -1110f, 838f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-426f, 662f, 846f, var_0.x), var_0, vec4<bool>(global1.x, global1.x, global1.x, false))))))), ~arg_0.e);
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(countOneBits(0u)), 30877u, ~var_1.b.x), vec3<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.x, arg_0.b.x)), arg_2.b.b), ~(var_1.b.x ^ 1u), 0u));
    var var_3 = Struct_3(Struct_2(~abs(arg_0.c.xx), arg_2.b), max(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.b.b.x, 31176u) & var_1.b, reverseBits(vec2<u32>(40335u, 0u))), var_2.yy) << (_wgslsmith_add_vec2_u32(~arg_0.b >> (abs(arg_1.yz) % vec2<u32>(32u)), var_2.yz) % vec2<u32>(32u)));
    let var_4 = ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_2.a.x, arg_0.a), _wgslsmith_div_i32(-2147483647i, arg_2.b.a), _wgslsmith_mod_i32(var_3.a.b.a, arg_2.b.a)), vec3<i32>(firstLeadingBit(-50251i), firstTrailingBit(arg_0.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, 1i), vec2<i32>(25862i, arg_0.c.x)))));
    return !(!global1.x);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    global1 = !vec3<bool>(global1.x, true, global1.x);
    var var_0 = global0[_wgslsmith_index_u32(~(~45621u & _wgslsmith_div_u32(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(119891u, u_input.a), vec2<u32>(u_input.a, 4786u)))), 21u)];
    var var_1 = !(func_3(var_0.a.b, vec3<u32>(_wgslsmith_mod_u32(var_0.a.b.e.x, var_0.b.x), 1u, countOneBits(3081u)), Struct_2(-var_0.a.a, Struct_1(0i, var_0.b, vec3<i32>(arg_0, var_0.a.a.x, -2147483647i), vec4<f32>(1000f, 796f, var_0.a.b.d.x, -1453f), var_0.a.b.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - 411f) - _wgslsmith_f_op_f32(-989f * -845f))) | true);
    global1 = vec3<bool>(false, any(!select(select(global1.yz, global1.yx, vec2<bool>(false, global1.x)), select(global1.zy, global1.zx, global1.x), !vec2<bool>(false, global1.x))), true);
    global1 = select(vec3<bool>(all(global1.zz), any(global1.yz), false), vec3<bool>(false, true, all(vec3<bool>(true, global1.x, false)) != !(var_0.a.b.d.x < 297f)), any(!vec4<bool>(true, !global1.x, global1.x, !global1.x)));
    return ~u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<f32> {
    var var_0 = vec3<bool>(arg_1, true, (abs(20212u) <= arg_0.b.x) | any(select(vec3<bool>(global1.x, true, true), vec3<bool>(false, false, arg_1), !vec3<bool>(false, arg_1, arg_1))));
    let var_1 = Struct_2(-vec2<i32>(arg_0.a, max(arg_0.a, _wgslsmith_mod_i32(-1i, 1i))), arg_0);
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    var var_2 = !(func_3(arg_0, arg_0.e.yxz, Struct_2(countOneBits(vec2<i32>(-2147483647i, var_1.a.x)), Struct_1(-11254i, var_1.b.e.xy, vec3<i32>(arg_0.c.x, var_1.b.c.x, 2147483647i), arg_0.d, vec4<u32>(arg_0.e.x, 28287u, arg_0.e.x, u_input.a))), 1000f) != select(global1.x, var_0.x, var_0.x));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.d.x)), _wgslsmith_f_op_f32(select(1000f, arg_0.d.x, !any(!vec4<bool>(global1.x, true, var_0.x, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.d.x))))), -1000f);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1165f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(func_4(arg_1.a.b, all(vec3<bool>(global1.x, global1.x, true)))).x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.b.d.x))));
    var var_1 = select(vec4<bool>(false, firstTrailingBit(46876u) <= 9676u, global1.x, -1841f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a.b.d.x), 1f))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(global1.xx), true, global1.x), !select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, false), global1.x), false), !(!select(false, true, global1.x) || any(vec4<bool>(true, global1.x, false, false))));
    let var_2 = arg_1.a;
    let var_3 = arg_1.a.b.d.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-776f)));
    return Struct_1(i32(-1i) * -23248i, _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, arg_3), vec2<u32>(arg_3, var_2.b.e.x)), vec2<u32>(1u >> (reverseBits(arg_2.e.x) % 32u), u_input.a)), var_2.b.c >> (arg_2.e.yxy % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(abs(143f)), -859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-197f))), 612f), select(vec4<u32>(1u, 16389u, 1u, ~74064u) >> (~arg_2.e % vec4<u32>(32u)), select(vec4<u32>(40260u, 1u, 1u, u_input.a) >> ((arg_2.e & vec4<u32>(var_2.b.b.x, 1u, arg_2.b.x, arg_1.a.b.e.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.b.e.wyy, vec3<u32>(var_2.b.e.x, 4294967295u, 74210u)), _wgslsmith_dot_vec2_u32(arg_1.a.b.b, arg_1.b), arg_2.e.x, 0u), select(!vec4<bool>(false, var_1.x, false, true), !vec4<bool>(global1.x, false, false, true), true)), vec4<bool>(global1.x, ~arg_1.a.a.x != countOneBits(var_2.b.c.x), all(vec2<bool>(false, false)), global1.x && true)));
}

fn func_1() -> f32 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(-2147483647i, vec2<u32>(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(61429u, 11358u, 30173u, u_input.a), vec4<u32>(4016u, u_input.a, 0u, 0u))), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(2147483647i, -1i), 0i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(390f, 606f, -346f, 965f), vec4<f32>(-765f, 581f, -821f, -799f), vec4<bool>(global1.x, global1.x, global1.x, false))), vec4<f32>(-599f, 563f, 239f, 2112f))), vec4<u32>(u_input.a, ~u_input.a, func_2(1i, vec2<f32>(360f, 1140f), vec2<i32>(0i, -20089i)), ~u_input.a)), global1.x)), Struct_3(Struct_2(~(-vec2<i32>(1i, -2147483647i)), Struct_1(1i, vec2<u32>(25598u, 4294967295u), vec3<i32>(-2147483647i, -27143i, -23658i), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1581f, -418f, -1427f, -930f))), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), min(max(vec2<u32>(0u, u_input.a) ^ vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 13971u))), vec2<u32>(~49041u, 1u))), Struct_1(-6713i, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(15821u, 1u, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, 26895u)), reverseBits(min(u_input.a, 12895u))), -(~max(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(-51224i, -2147483647i, 1i))), vec4<f32>(-191f, _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(953f + 126f)), 1000f), vec4<u32>(~u_input.a, ~(u_input.a >> (1u % 32u)), ~(~u_input.a), (u_input.a >> (4294967295u % 32u)) ^ _wgslsmith_add_u32(u_input.a, 1u))), u_input.a);
    global1 = select(vec3<bool>(false, _wgslsmith_f_op_f32(ceil(-2468f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - _wgslsmith_f_op_f32(var_0.d.x + var_0.d.x)), !all(!vec4<bool>(global1.x, global1.x, true, global1.x))), vec3<bool>(true && all(!vec3<bool>(false, global1.x, global1.x)), global1.x, (firstTrailingBit(38165u) | func_5(var_0.d, Struct_3(Struct_2(var_0.c.zz, Struct_1(var_0.c.x, vec2<u32>(0u, 0u), var_0.c, vec4<f32>(340f, var_0.d.x, -2198f, 139f), var_0.e)), var_0.e.zx), var_0, 1u).e.x) == var_0.e.x), select(!vec3<bool>(global1.x, true, true), vec3<bool>(!func_3(Struct_1(var_0.c.x, var_0.b, vec3<i32>(-1i, 1i, var_0.c.x), var_0.d, var_0.e), var_0.e.zyx, Struct_2(vec2<i32>(var_0.c.x, var_0.c.x), var_0), -967f), false, !global1.x), select(vec3<bool>(global1.x, global1.x, 470f > var_0.d.x), !select(vec3<bool>(true, global1.x, true), vec3<bool>(true, true, global1.x), global1.x), vec3<bool>(!global1.x, any(vec3<bool>(true, true, global1.x)), global1.x))));
    global0 = array<Struct_3, 21>();
    var var_1 = vec4<bool>(true, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.e.zx, _wgslsmith_mult_vec2_u32(var_0.e.yw, var_0.e.yz)), 5997u | (u_input.a >> (var_0.b.x % 32u))) > 31024u, !global1.x, all(!select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x)) && !global1.x);
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.d)) * vec4<f32>(783f, -1120f, var_0.d.x, -1596f)), global0[_wgslsmith_index_u32(107326u, 21u)], Struct_1(-1i, var_0.b, _wgslsmith_mult_vec3_i32(var_0.c, select(vec3<i32>(var_0.a, var_0.a, -2147483647i), var_0.c, false) ^ -vec3<i32>(var_0.a, var_0.c.x, 2147483647i)), var_0.d, var_0.e), countOneBits(~firstLeadingBit(0u & u_input.a)));
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, 684f, 727f, 1026f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2059f, 1294f, -495f, -1155f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -649f)), -1310f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(239f)), _wgslsmith_div_f32(876f, -932f)), _wgslsmith_f_op_f32(func_1())))));
    global0 = array<Struct_3, 21>();
    global1 = vec3<bool>(true, global1.x, select(false, global1.x, true));
    var var_1 = Struct_2(abs(vec2<i32>(min(min(-2147483647i, -13917i), ~41202i), -1i)), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.x, -1010f, 2000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, 1062f, var_0.x, 1311f))))), Struct_3(Struct_2(vec2<i32>(-13174i, 2147483647i), Struct_1(-8681i, vec2<u32>(u_input.a, 17619u), vec3<i32>(0i, -2147483647i, 41672i), vec4<f32>(var_0.x, var_0.x, var_0.x, 515f), vec4<u32>(4294967295u, u_input.a, 4294967295u, 17416u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, u_input.a))), func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(2147483647i, vec2<u32>(108197u, u_input.a), vec3<i32>(-47233i, 8025i, 0i), var_0, vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)), global1.x)))), global0[_wgslsmith_index_u32(u_input.a, 21u)], func_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 756f, var_0.x, 120f))), global0[_wgslsmith_index_u32(6136u, 21u)], Struct_1(552i, vec2<u32>(1u, 19692u), vec3<i32>(-2147483647i, 32714i, 2147483647i), var_0, vec4<u32>(u_input.a, u_input.a, 3935u, 0u)), 0u), 1u), 1u));
    var var_2 = var_1.b;
    let var_3 = !any(vec2<bool>(true, true));
    global1 = vec3<bool>(all(!(!(!vec3<bool>(var_3, false, var_3)))), true, any(!select(select(vec3<bool>(false, var_3, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(var_3, var_3, var_3)), !vec3<bool>(false, false, var_3), vec3<bool>(false, var_3, false))));
    let var_4 = vec4<bool>(true, true, global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.e.x, max(~(vec2<i32>(-10737i, 53645i) & var_1.a), var_2.c.zz), var_2.c.x);
}

