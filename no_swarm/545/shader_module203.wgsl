struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(82550u), vec3<bool>(false, true, false), vec4<f32>(433f, -1137f, 441f, -1611f)), Struct_2(Struct_1(0u), vec3<bool>(true, true, true), vec4<f32>(1917f, 153f, -966f, 1354f)), Struct_2(Struct_1(0u), vec3<bool>(false, false, true), vec4<f32>(458f, 782f, 814f, -2766f)), Struct_2(Struct_1(54814u), vec3<bool>(true, false, true), vec4<f32>(-574f, -270f, -915f, 1000f)), Struct_2(Struct_1(69066u), vec3<bool>(false, true, false), vec4<f32>(-533f, -120f, -788f, -1887f)), Struct_2(Struct_1(11633u), vec3<bool>(false, false, false), vec4<f32>(921f, 1842f, -1321f, 307f)), Struct_2(Struct_1(0u), vec3<bool>(true, true, true), vec4<f32>(1655f, 856f, -337f, -901f)), Struct_2(Struct_1(4294967295u), vec3<bool>(false, false, true), vec4<f32>(-442f, -629f, -1375f, 1000f)), Struct_2(Struct_1(30790u), vec3<bool>(false, false, false), vec4<f32>(-473f, 2407f, 128f, 538f)), Struct_2(Struct_1(92150u), vec3<bool>(false, true, false), vec4<f32>(2996f, 1285f, -1780f, -515f)), Struct_2(Struct_1(61413u), vec3<bool>(false, true, true), vec4<f32>(-563f, -468f, -944f, -252f)), Struct_2(Struct_1(1u), vec3<bool>(false, true, true), vec4<f32>(-605f, 1000f, -1442f, -149f)), Struct_2(Struct_1(4294967295u), vec3<bool>(true, false, false), vec4<f32>(-356f, 259f, -1000f, -607f)));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(4294967295u), vec3<bool>(false, false, false), vec4<f32>(137f, 1292f, 1338f, 1806f)), Struct_2(Struct_1(52456u), vec3<bool>(false, false, true), vec4<f32>(1000f, 961f, -1000f, 365f)), Struct_2(Struct_1(0u), vec3<bool>(false, true, true), vec4<f32>(792f, -1858f, -826f, 560f)), Struct_2(Struct_1(0u), vec3<bool>(true, true, false), vec4<f32>(-231f, 2454f, 985f, -142f)), Struct_2(Struct_1(80589u), vec3<bool>(false, false, false), vec4<f32>(-2254f, 348f, 852f, -115f)), Struct_2(Struct_1(124382u), vec3<bool>(false, true, false), vec4<f32>(1732f, 413f, -494f, -1347f)), Struct_2(Struct_1(19752u), vec3<bool>(true, true, true), vec4<f32>(676f, 469f, 1786f, -298f)), Struct_2(Struct_1(8451u), vec3<bool>(true, true, true), vec4<f32>(704f, -170f, -190f, -898f)), Struct_2(Struct_1(51274u), vec3<bool>(false, false, false), vec4<f32>(991f, 612f, 1233f, -1000f)), Struct_2(Struct_1(0u), vec3<bool>(true, false, true), vec4<f32>(-173f, 202f, -2601f, 475f)), Struct_2(Struct_1(21699u), vec3<bool>(true, true, true), vec4<f32>(-206f, 364f, 327f, -1305f)), Struct_2(Struct_1(4294967295u), vec3<bool>(false, true, true), vec4<f32>(-889f, -1620f, 212f, -643f)), Struct_2(Struct_1(0u), vec3<bool>(false, true, false), vec4<f32>(299f, -761f, 809f, 504f)), Struct_2(Struct_1(0u), vec3<bool>(false, true, false), vec4<f32>(-1525f, 1000f, 913f, 470f)), Struct_2(Struct_1(17090u), vec3<bool>(false, true, true), vec4<f32>(539f, 279f, 144f, 728f)), Struct_2(Struct_1(4294967295u), vec3<bool>(false, true, false), vec4<f32>(-187f, -1411f, 229f, -936f)), Struct_2(Struct_1(1u), vec3<bool>(true, true, false), vec4<f32>(182f, -1361f, -678f, 1000f)), Struct_2(Struct_1(1u), vec3<bool>(true, true, false), vec4<f32>(1275f, 1681f, 226f, -1152f)), Struct_2(Struct_1(52398u), vec3<bool>(true, false, false), vec4<f32>(-484f, 494f, -103f, 617f)), Struct_2(Struct_1(4294967295u), vec3<bool>(false, true, false), vec4<f32>(1002f, -628f, -452f, 316f)), Struct_2(Struct_1(0u), vec3<bool>(false, false, true), vec4<f32>(-2606f, 603f, 1000f, 105f)), Struct_2(Struct_1(1u), vec3<bool>(false, true, true), vec4<f32>(755f, -771f, 2234f, -1030f)), Struct_2(Struct_1(1u), vec3<bool>(false, true, false), vec4<f32>(-821f, 922f, 2207f, 319f)), Struct_2(Struct_1(1u), vec3<bool>(true, true, false), vec4<f32>(-438f, 1118f, -1319f, 802f)), Struct_2(Struct_1(75408u), vec3<bool>(false, false, true), vec4<f32>(-172f, 771f, -1656f, -1810f)), Struct_2(Struct_1(0u), vec3<bool>(false, true, false), vec4<f32>(-1000f, 490f, -366f, -196f)), Struct_2(Struct_1(57059u), vec3<bool>(false, false, true), vec4<f32>(-827f, 1242f, -514f, 1237f)), Struct_2(Struct_1(4294967295u), vec3<bool>(true, false, false), vec4<f32>(1850f, -346f, -1000f, 433f)));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(9709u), vec3<bool>(false, false, true), vec4<f32>(-485f, -381f, -347f, -514f)), Struct_2(Struct_1(0u), vec3<bool>(false, true, false), vec4<f32>(1000f, -596f, -220f, -249f)), Struct_2(Struct_1(10389u), vec3<bool>(true, true, true), vec4<f32>(-1000f, 498f, -680f, 465f)), Struct_2(Struct_1(4294967295u), vec3<bool>(false, true, false), vec4<f32>(-353f, -1000f, 773f, 324f)), Struct_2(Struct_1(5163u), vec3<bool>(false, true, false), vec4<f32>(652f, 199f, -847f, 954f)), Struct_2(Struct_1(4294967295u), vec3<bool>(true, true, true), vec4<f32>(396f, 2099f, 1070f, -293f)), Struct_2(Struct_1(4294967295u), vec3<bool>(true, true, true), vec4<f32>(-132f, 636f, -439f, -2815f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = -1472f;
    var var_1 = Struct_1(_wgslsmith_div_u32(max(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a), u_input.a, u_input.a), u_input.a), 76490u));
    let var_2 = arg_3.x;
    let var_3 = vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(-5616i, 1i >> (u_input.a % 32u))), _wgslsmith_div_i32(select(7775i, 1i, arg_2), firstTrailingBit(-countOneBits(-48472i))));
    var_0 = -208f;
    return vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-var_2))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_3(-51473i, max(vec3<i32>(_wgslsmith_add_i32(~(-23183i), 1i), firstTrailingBit(25731i), i32(-1i) * -56513i), max(firstTrailingBit(~vec3<i32>(-25971i, 0i, 0i)), vec3<i32>(~(-1i), _wgslsmith_sub_i32(2147483647i, 11445i), firstTrailingBit(27481i)))), Struct_2(Struct_1(~min(arg_1, 1u)), vec3<bool>(true, arg_0, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-547f, 1000f, 1398f, 1697f), vec4<f32>(811f, 1472f, -791f, -204f)))) - vec4<f32>(-238f, _wgslsmith_f_op_f32(trunc(-121f)), _wgslsmith_f_op_f32(abs(-1614f)), _wgslsmith_f_op_f32(select(1669f, -760f, arg_0))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.c.x))), var_0.c.c.x), _wgslsmith_f_op_vec2_f32(func_3(select(select(vec4<bool>(var_0.c.b.x, false, true, false), vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, true, var_0.c.b.x)), select(vec4<bool>(false, var_0.c.b.x, arg_0, true), vec4<bool>(true, var_0.c.b.x, var_0.c.b.x, arg_0), false), !vec4<bool>(true, arg_0, arg_0, var_0.c.b.x)), any(vec3<bool>(arg_0, false, var_0.c.b.x)), select(!arg_0, true, all(vec4<bool>(true, false, arg_0, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1290f, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x) * var_0.c.c), _wgslsmith_f_op_vec4_f32(abs(var_0.c.c)), all(vec2<bool>(true, true)))))), arg_0))));
    let var_2 = vec3<bool>(arg_0 && false, true, !arg_0);
    let var_3 = Struct_1(~min(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1, arg_2.x), vec3<u32>(var_0.c.a.a, u_input.a, 1u) >> (vec3<u32>(var_0.c.a.a, arg_1, var_0.c.a.a) % vec3<u32>(32u)))));
    var var_4 = vec4<u32>(min(var_3.a, 34838u) << (7651u % 32u), 30770u, _wgslsmith_mult_u32(4294967295u, ~4294967295u), min(abs(~(~u_input.a)), u_input.a));
    return all(select(var_2, vec3<bool>(!var_2.x, true, any(vec4<bool>(true, false, true, true))), select(var_2, vec3<bool>(true, true, true), var_0.c.b))) != (_wgslsmith_f_op_f32(var_0.c.c.x + var_0.c.c.x) >= var_0.c.c.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(min(u_input.a, arg_1.x), 28u)];
    let var_1 = arg_0.x;
    var var_2 = ~(-_wgslsmith_sub_vec3_i32(abs(arg_2.b), vec3<i32>(arg_2.b.x, _wgslsmith_clamp_i32(70548i, -12691i, arg_2.b.x), -arg_2.a)));
    let var_3 = true;
    let var_4 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.a, 22990i), 1i)), -(~abs(arg_2.b.yz))), arg_2.b, global2[_wgslsmith_index_u32(abs(1u), 7u)]);
    return var_4.c;
}

fn func_1() -> Struct_3 {
    global2 = array<Struct_2, 7>();
    let var_0 = func_4(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true | func_2(true, u_input.a, vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), true, all(vec4<bool>(true, true, false, false)), !any(vec3<bool>(false, true, true))), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 25211u), ~(~vec2<u32>(0u, 29622u)) & (vec2<u32>(38693u, 4294967295u) >> (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(24798u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))), Struct_3(-1i, vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(min(37489u, 0u), u_input.a, select(u_input.a, u_input.a, false)) % vec3<u32>(32u)), Struct_2(Struct_1(0u), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(739f, -545f, 583f, -1072f)))), true & all(vec4<bool>(true, true, true, true)));
    var var_1 = func_4(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), true), vec4<bool>(var_0.b.x, select(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x, true), true), vec4<bool>(true, var_0.b.x, true, func_4(vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec2<u32>(1435u, u_input.a), Struct_3(-32131i, vec3<i32>(2147483647i, 2147483647i, 0i), Struct_2(var_0.a, vec3<bool>(true, var_0.b.x, false), vec4<f32>(784f, var_0.c.x, 1054f, -365f))), false).b.x != select(false, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(floor(var_0.c.x)), var_0.b.x, false)), vec2<u32>(u_input.a, 29431u), Struct_3(0i, firstTrailingBit(~vec3<i32>(1i, 2147483647i, 28119i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(47553u, u_input.a, 0u, u_input.a)), ~vec4<u32>(27714u, u_input.a, 24055u, 84555u) | vec4<u32>(var_0.a.a, 31705u, 0u, u_input.a)), 28u)]), var_0.b.x).a;
    let var_2 = 1i;
    let var_3 = ~select(vec4<u32>(~0u, _wgslsmith_sub_u32(17407u, var_1.a), var_1.a, 4294967295u), abs(vec4<u32>(var_1.a, var_1.a, u_input.a, var_0.a.a)), select(true, false, true)) >> (vec4<u32>(max(4294967295u, ~func_4(vec4<bool>(true, false, var_0.b.x, var_0.b.x), vec2<u32>(var_1.a, 25153u), Struct_3(var_2, vec3<i32>(var_2, var_2, var_2), Struct_2(Struct_1(var_0.a.a), vec3<bool>(true, false, var_0.b.x), vec4<f32>(var_0.c.x, -1672f, var_0.c.x, -618f))), false).a.a), ~(var_1.a << (select(12975u, var_0.a.a, var_0.b.x) % 32u)), _wgslsmith_div_u32(func_4(vec4<bool>(var_0.b.x, true, true, true), vec2<u32>(0u, 1u) << (vec2<u32>(1u, var_1.a) % vec2<u32>(32u)), Struct_3(var_2, vec3<i32>(var_2, var_2, var_2), Struct_2(var_0.a, var_0.b, var_0.c)), var_0.b.x).a.a, u_input.a), u_input.a) % vec4<u32>(32u));
    return Struct_3(var_2, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(var_2, var_2, var_2)), select(vec3<i32>(var_2, -2147483647i, var_2), vec3<i32>(var_2, 2147483647i, var_2), var_0.b)), vec3<i32>(_wgslsmith_sub_i32(var_2, -10816i), -1i, ~0i)) << ((var_3.xxx ^ max(var_3.yzw, max(vec3<u32>(var_0.a.a, 0u, 21615u), vec3<u32>(0u, u_input.a, 4294967295u)))) % vec3<u32>(32u)), func_4(select(select(vec4<bool>(false, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), func_4(vec4<bool>(false, var_0.b.x, false, var_0.b.x), var_3.yy, Struct_3(var_2, vec3<i32>(9100i, -1i, var_2), global1[_wgslsmith_index_u32(36150u, 28u)]), var_0.b.x).b.x), vec4<bool>(func_4(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), var_3.yy, Struct_3(1i, vec3<i32>(var_2, -50653i, -7816i), Struct_2(var_0.a, var_0.b, vec4<f32>(-873f, 431f, 1000f, -1205f))), true).b.x, true, var_0.b.x != false, select(false, var_0.b.x, var_0.b.x)), func_2(var_0.c.x >= 128f, ~35740u, _wgslsmith_clamp_vec4_u32(var_3, var_3, vec4<u32>(0u, 4294967295u, u_input.a, 20552u)))), vec2<u32>(var_3.x, ~(~var_0.a.a)), Struct_3(var_2, vec3<i32>(var_2, 1i, var_2) | vec3<i32>(var_2, -36405i, 0i), func_4(vec4<bool>(false, var_0.b.x, false, var_0.b.x), abs(vec2<u32>(104619u, var_0.a.a)), Struct_3(-22957i, vec3<i32>(2147483647i, -2147483647i, 6783i), global2[_wgslsmith_index_u32(var_3.x, 7u)]), true)), any(!var_0.b)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    return Struct_1(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-972f, 788f)), _wgslsmith_f_op_f32(1000f * -560f), 124f), _wgslsmith_f_op_vec3_f32(func_4(vec4<bool>(false, false, true, true), vec2<u32>(u_input.a, u_input.a), Struct_3(-1i, vec3<i32>(0i, -1i, 2147483647i), global2[_wgslsmith_index_u32(4294967295u, 7u)]), true).c.zyw + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1715f, 444f, -159f) - vec3<f32>(189f, -494f, 163f))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1450f, 1068f))) + func_4(vec4<bool>(false, true, true, false), vec2<u32>(1u, u_input.a), Struct_3(1i, vec3<i32>(-2147483647i, -3266i, 2147483647i), Struct_2(Struct_1(u_input.a), vec3<bool>(false, false, true), vec4<f32>(973f, 893f, 3217f, 1402f))), true).c.xyy)))), u_input.a);
    var var_1 = -vec3<i32>(19372i << (func_1().c.a.a % 32u), _wgslsmith_mod_i32(i32(-1i) * -4060i, _wgslsmith_clamp_i32(2366i, 30081i, -1i >> (0u % 32u))), -1i);
    global0 = array<Struct_2, 13>();
    var var_2 = Struct_3(~(_wgslsmith_mult_i32(~(-54464i), firstTrailingBit(24600i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(58629i, var_1.x))), abs(select(firstTrailingBit(firstLeadingBit(vec3<i32>(-42077i, var_1.x, -2147483647i))), countOneBits(-vec3<i32>(70516i, 5409i, -2147483647i)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), true))), Struct_2(Struct_1(~u_input.a), !vec3<bool>(true, true, var_1.x != -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(398f, 1177f, -406f, 1887f), vec4<f32>(-829f, 1040f, -1200f, 1100f), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(400f, -101f, 350f, 1000f), vec4<f32>(575f, 1398f, -1006f, 790f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1161f, 940f, 1320f, 706f) * vec4<f32>(-1206f, 388f, 448f, 126f))))));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-947f + var_2.c.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -304f), var_2.c.b.x)), _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(!var_2.c.b.x, u_input.a < var_2.c.a.a, any(vec2<bool>(false, var_2.c.b.x)), func_4(vec4<bool>(true, var_2.c.b.x, true, true), vec2<u32>(var_0.a, u_input.a), Struct_3(var_2.a, var_2.b, global2[_wgslsmith_index_u32(u_input.a, 7u)]), var_2.c.b.x).b.x), u_input.a != ~var_2.c.a.a, func_1().c.b.x, vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.c.x), var_2.c.c.x, _wgslsmith_f_op_f32(-419f - 1254f), _wgslsmith_f_op_f32(-var_2.c.c.x)))).x), -881f, _wgslsmith_f_op_f32(floor(-575f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(199f, _wgslsmith_f_op_f32(abs(972f)))), ~(~24317u), var_2.a & _wgslsmith_div_i32(var_2.b.x, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c.x))) + 644f), 52439u);
}

