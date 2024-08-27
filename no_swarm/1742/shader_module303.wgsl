struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec4<f32>(-1637f, -1092f, -412f, 1059f), vec3<u32>(0u, 1u, 14100u)), Struct_1(vec4<f32>(-843f, 1576f, -740f, 709f), vec3<u32>(1966u, 46495u, 1u))), Struct_3(Struct_1(vec4<f32>(1869f, 388f, -531f, -1489f), vec3<u32>(0u, 27933u, 31687u)), Struct_1(vec4<f32>(-524f, -479f, 1508f, 685f), vec3<u32>(54024u, 13243u, 32667u))), Struct_3(Struct_1(vec4<f32>(-130f, 210f, -414f, -496f), vec3<u32>(0u, 1u, 44419u)), Struct_1(vec4<f32>(-198f, -1464f, 332f, 1343f), vec3<u32>(43525u, 19223u, 13324u))), Struct_3(Struct_1(vec4<f32>(1016f, 1335f, 253f, -670f), vec3<u32>(8880u, 0u, 80969u)), Struct_1(vec4<f32>(-497f, 390f, -254f, -1239f), vec3<u32>(0u, 4294967295u, 62870u))), Struct_3(Struct_1(vec4<f32>(1000f, -1000f, -2248f, 537f), vec3<u32>(3250u, 15264u, 1u)), Struct_1(vec4<f32>(390f, -351f, -1029f, 245f), vec3<u32>(99969u, 0u, 2717u))), Struct_3(Struct_1(vec4<f32>(1000f, -1703f, 1238f, -880f), vec3<u32>(1u, 0u, 34065u)), Struct_1(vec4<f32>(-1661f, -2154f, 1310f, 2789f), vec3<u32>(31707u, 4294967295u, 17914u))), Struct_3(Struct_1(vec4<f32>(2823f, -576f, 398f, 716f), vec3<u32>(0u, 61010u, 0u)), Struct_1(vec4<f32>(675f, 1181f, 129f, 903f), vec3<u32>(54161u, 0u, 1u))), Struct_3(Struct_1(vec4<f32>(804f, -474f, -3461f, -1313f), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec4<f32>(-801f, -122f, -196f, 485f), vec3<u32>(1u, 4294967295u, 0u))), Struct_3(Struct_1(vec4<f32>(251f, 537f, -469f, -1176f), vec3<u32>(42263u, 14714u, 29349u)), Struct_1(vec4<f32>(-1275f, -808f, -436f, 1127f), vec3<u32>(4294967295u, 20869u, 11833u))), Struct_3(Struct_1(vec4<f32>(-696f, 247f, -1000f, 219f), vec3<u32>(10040u, 100775u, 54200u)), Struct_1(vec4<f32>(-494f, 1898f, 338f, 283f), vec3<u32>(4294967295u, 47144u, 96034u))), Struct_3(Struct_1(vec4<f32>(1278f, -293f, -143f, 1200f), vec3<u32>(74270u, 4294967295u, 1u)), Struct_1(vec4<f32>(609f, 1980f, 1059f, 915f), vec3<u32>(4644u, 24126u, 1u))), Struct_3(Struct_1(vec4<f32>(724f, 1000f, -856f, -598f), vec3<u32>(4294967295u, 4294967295u, 46210u)), Struct_1(vec4<f32>(-1010f, 974f, 108f, 1484f), vec3<u32>(0u, 59856u, 5328u))), Struct_3(Struct_1(vec4<f32>(1815f, -1155f, 1270f, -1312f), vec3<u32>(0u, 6988u, 77143u)), Struct_1(vec4<f32>(1511f, 462f, -1561f, -362f), vec3<u32>(30445u, 52621u, 0u))), Struct_3(Struct_1(vec4<f32>(1418f, -768f, -1408f, 399f), vec3<u32>(32798u, 58630u, 0u)), Struct_1(vec4<f32>(369f, -224f, -645f, -674f), vec3<u32>(55140u, 25891u, 0u))), Struct_3(Struct_1(vec4<f32>(1322f, -1548f, -1595f, -1418f), vec3<u32>(27205u, 11002u, 48374u)), Struct_1(vec4<f32>(1083f, 1326f, -227f, -595f), vec3<u32>(1u, 27940u, 0u))), Struct_3(Struct_1(vec4<f32>(-1392f, -1400f, 706f, 1129f), vec3<u32>(4294967295u, 16644u, 0u)), Struct_1(vec4<f32>(-542f, -597f, 842f, 1000f), vec3<u32>(31220u, 35282u, 38161u))), Struct_3(Struct_1(vec4<f32>(154f, -223f, 1573f, 1071f), vec3<u32>(0u, 92072u, 56024u)), Struct_1(vec4<f32>(-1373f, 724f, -203f, 620f), vec3<u32>(0u, 0u, 34021u))), Struct_3(Struct_1(vec4<f32>(-975f, -375f, -1062f, -1000f), vec3<u32>(48299u, 10802u, 0u)), Struct_1(vec4<f32>(-1860f, -166f, 375f, -200f), vec3<u32>(53073u, 0u, 0u))), Struct_3(Struct_1(vec4<f32>(-453f, 1047f, -160f, -381f), vec3<u32>(0u, 12806u, 4294967295u)), Struct_1(vec4<f32>(868f, 1000f, 1000f, -1063f), vec3<u32>(37139u, 1u, 0u))), Struct_3(Struct_1(vec4<f32>(799f, -1833f, -1121f, -1528f), vec3<u32>(42143u, 63826u, 1u)), Struct_1(vec4<f32>(-896f, -1158f, 1000f, 306f), vec3<u32>(24247u, 29189u, 2769u))));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(select(8980u, global1.x, arg_1.b), 3138u, ~global1.x, _wgslsmith_mod_u32(global1.x, global1.x)), select(firstLeadingBit(vec4<u32>(global1.x, 53025u, arg_1.a.b.x, global1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.b.x, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, arg_0.x, 26478u), vec4<u32>(32413u, arg_1.a.b.x, 11493u, 27909u)), !vec4<bool>(arg_1.b, false, arg_1.b, true)))), 18u)];
    global2 = array<Struct_3, 20>();
    var var_1 = ~vec4<u32>(~arg_1.a.b.x, 4294967295u, global1.x, var_0.b.b.x);
    global0 = array<Struct_3, 18>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.a.a, _wgslsmith_f_op_vec4_f32(min(var_0.a.a, arg_1.a.a)))), var_0.b.b), select(any(!(!vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b))), 216f <= _wgslsmith_f_op_f32(step(-343f, arg_1.a.a.x)), select(true, any(select(vec3<bool>(true, false, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(true, true, arg_1.b))), arg_1.b)));
    return vec2<bool>((((u_input.c.x <= u_input.b.x) & (arg_1.b | false)) == !any(vec3<bool>(var_2.b, arg_1.b, arg_1.b))) || true, all(select(vec2<bool>(true, any(vec2<bool>(false, true))), !vec2<bool>(var_2.b, arg_1.b), vec2<bool>(var_0.b.a.x >= var_0.b.a.x, true))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = !any(vec3<bool>(true, true, !all(vec2<bool>(false, false))));
    let var_1 = all(vec3<bool>(any(!func_3(global1.yy, Struct_2(Struct_1(vec4<f32>(-616f, 1542f, -1314f, -1048f), global1.xyw), false), vec2<i32>(-7600i, 4301i), 1000f)), true, all(vec3<bool>(true, true, func_3(vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(vec4<f32>(1112f, 1000f, 461f, -1000f), vec3<u32>(61963u, u_input.a, global1.x)), false), u_input.c, -1413f).x))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, 1000f, 1483f, 822f) + vec4<f32>(-151f, 1208f, 712f, 1000f)), vec4<f32>(-118f, -1019f, -336f, -404f), !vec4<bool>(true, var_1, var_1, true))) - vec4<f32>(1622f, _wgslsmith_f_op_f32(-410f - 1596f), _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_div_f32(378f, -909f))), global1.ywy), false);
    global0 = array<Struct_3, 18>();
    let var_3 = Struct_2(var_2.a, true);
    return Struct_3(Struct_1(var_3.a.a, vec3<u32>(abs(var_3.a.b.x) << (_wgslsmith_add_u32(0u, 41382u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.b.x, var_2.a.b.x, 60041u), vec3<u32>(0u, 4294967295u, 63111u)) ^ ~var_2.a.b.x, ~4294967295u)), var_3.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_4 {
    global2 = array<Struct_3, 20>();
    global0 = array<Struct_3, 18>();
    global1 = ~vec4<u32>(func_2(_wgslsmith_mult_i32(u_input.c.x << (0u % 32u), 15114i)).b.b.x, arg_2.a.b.x, 4294967295u, ~(~arg_0.b.b.x));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), arg_2.b.a.x, arg_2.a.a.x);
    global1 = firstLeadingBit(reverseBits(vec4<u32>(~(u_input.a ^ global1.x), _wgslsmith_add_u32(arg_0.a.b.x, 1u), ~(~u_input.a), 1u)));
    return Struct_4(Struct_1(vec4<f32>(_wgslsmith_div_f32(-493f, 1184f), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -2263f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), vec3<u32>(global1.x, ~(arg_0.a.b.x ^ u_input.a), arg_0.b.b.x)), Struct_3(func_2(0i).a, func_2(~(~u_input.b.x)).b));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_2.a.x;
    let var_1 = func_2(-2147483647i).b;
    global0 = array<Struct_3, 18>();
    let var_2 = func_4(Struct_3(arg_0.b.b, func_4(global2[_wgslsmith_index_u32(0u, 20u)], arg_2.a.xzx, func_4(Struct_3(arg_0.a, Struct_1(arg_0.a.a, arg_0.a.b)), var_1.a.yzz, Struct_3(Struct_1(vec4<f32>(664f, 1000f, 1000f, 351f), arg_1.zzy), Struct_1(var_1.a, vec3<u32>(3417u, arg_1.x, 4294967295u))), vec2<bool>(false, false)).b, vec2<bool>(true, true)).b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, 961f, 1635f)), global2[_wgslsmith_index_u32(4294967295u, 20u)], !func_3(reverseBits(vec2<u32>(5641u, 93461u)), Struct_2(Struct_1(arg_2.a, vec3<u32>(1u, 0u, 87619u)), true), -(vec2<i32>(u_input.b.x, u_input.c.x) & vec2<i32>(-15232i, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -330f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 423f) + _wgslsmith_f_op_f32(f32(-1f) * -1722f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.a.x))) * -1000f), arg_2.a.x);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 341f) - _wgslsmith_f_op_vec2_f32(func_5(func_4(Struct_3(Struct_1(vec4<f32>(-1000f, -635f, 397f, 1278f), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(vec4<f32>(1273f, -337f, 1534f, -1262f), global1.yww)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, -397f, -479f)), func_2(u_input.b.x), vec2<bool>(true, arg_0.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 57111u, 2286u), vec4<u32>(4619u, global1.x, 0u, 0u)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, -606f, -300f, -409f)), vec3<u32>(u_input.a, 0u, 4294967295u) << (vec3<u32>(18472u, global1.x, 27909u) % vec3<u32>(32u)))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)) + -459f), 1f));
    global2 = array<Struct_3, 20>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -2082f)) + var_0.x));
    var var_2 = vec2<u32>(~(1u ^ ~(global1.x | u_input.a)), ~(~4294967295u));
    var var_3 = Struct_3(func_2(2147483647i).a, func_2(reverseBits(-(u_input.c.x & 1i))).a);
    return _wgslsmith_f_op_f32(floor(var_3.b.a.x));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> bool {
    global2 = array<Struct_3, 20>();
    global0 = array<Struct_3, 18>();
    let var_0 = ~21467u;
    global2 = array<Struct_3, 20>();
    global1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~arg_1 | _wgslsmith_sub_u32(9880u, 1u), max(4294967295u, arg_1 ^ global1.x), 1u, max(43855u, global1.x)), ~countOneBits(~(vec4<u32>(4294967295u, var_0, global1.x, 1u) ^ vec4<u32>(global1.x, 53152u, 22645u, arg_0.b.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -2417f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1796f, 649f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(555f, -1530f), vec2<f32>(-312f, 656f))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-379f, -290f))), vec2<f32>(-1823f, -1499f))))));
    var var_1 = func_6(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, false, true))), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 829f) - vec4<f32>(var_0.x, 1353f, var_0.x, -1704f)))), ~(~vec3<u32>(1522u, 4294967295u, global1.x))), ~(0u >> (_wgslsmith_mod_u32(0u >> (0u % 32u), abs(global1.x)) % 32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -573f, var_0.x, var_0.x) + vec4<f32>(1000f, var_0.x, -194f, 674f))), _wgslsmith_div_vec3_u32(global1.www, vec3<u32>(u_input.a, 4294967295u, global1.x))), true), vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true))));
    let var_2 = true;
    let var_3 = firstTrailingBit(~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.a, 12648u, 4294967295u), vec4<u32>(global1.x, 1u, u_input.a, u_input.a)))));
    let var_4 = (811f > _wgslsmith_f_op_f32(-var_0.x)) || !(var_2 || false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(2147483647i, 0i, 20969i, 1i)), max(~vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, 0i), vec4<i32>(u_input.c.x, u_input.b.x, -13382i, -2147483647i)), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)), (abs(vec4<i32>(u_input.c.x, u_input.b.x, -2147483647i, 2147483647i)) << ((vec4<u32>(1u, var_3.x, global1.x, 1u) >> (vec4<u32>(18653u, u_input.a, u_input.a, var_3.x) % vec4<u32>(32u))) % vec4<u32>(32u))) << (var_3 % vec4<u32>(32u))), var_3.xyx, vec2<u32>(1u, ~_wgslsmith_mod_u32(~global1.x, ~4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, 488f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -198f, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-548f, var_0.x, -1141f, 1000f), vec4<f32>(1000f, -1086f, -766f, -502f)), vec4<f32>(-906f, var_0.x, -556f, var_0.x))))));
}

