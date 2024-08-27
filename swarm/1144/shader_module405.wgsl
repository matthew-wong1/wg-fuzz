struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(2147483647i, 20925i, 17086i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(0i, 17252i, 38501i), vec3<i32>(-6823i, -25810i, -22678i), vec3<i32>(-7132i, i32(-2147483648), -52983i), vec3<i32>(-32638i, -1i, -28036i), vec3<i32>(-27717i, -2693i, i32(-2147483648)), vec3<i32>(-1i, 0i, 0i), vec3<i32>(0i, 2147483647i, -21769i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(1i, 61934i, i32(-2147483648)), vec3<i32>(-24826i, 29451i, 6466i), vec3<i32>(-31836i, 0i, 0i), vec3<i32>(47641i, -1i, 30558i), vec3<i32>(i32(-2147483648), 1i, 32751i), vec3<i32>(-34661i, 22425i, 4810i), vec3<i32>(0i, -1i, 0i), vec3<i32>(0i, 4114i, 1i), vec3<i32>(-1i, 1733i, 19576i), vec3<i32>(-14003i, 48706i, 18754i), vec3<i32>(-32401i, -1i, i32(-2147483648)), vec3<i32>(36931i, 1i, 3401i), vec3<i32>(i32(-2147483648), -30173i, -71143i), vec3<i32>(i32(-2147483648), 5383i, 2147483647i), vec3<i32>(-1542i, -28999i, 2147483647i), vec3<i32>(26877i, -5405i, 13478i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(-20003i, 1i, 0i), vec3<i32>(1i, -16864i, 85208i), vec3<i32>(-1i, 2147483647i, -1i));

var<private> global2: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    return !(!select(!vec3<bool>(arg_2.a.b.x, false, arg_3.a.b.x), vec3<bool>(all(vec2<bool>(true, arg_2.a.b.x)), true, arg_3.a.b.x), all(vec4<bool>(true, true, true, true)) || !arg_3.a.b.x));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1627f, 1789f, -832f, 832f)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec4<i32>(1i, 1i, 1i, 1i), 1i), -392f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(146f, 1064f, 2086f), vec3<f32>(-1033f, 906f, 1090f), false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), 9072i << (u_input.d.x % 32u)), 0i, Struct_2(true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(208f)), 1726f, _wgslsmith_f_op_f32(-973f + -962f), -1022f), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), ~vec4<i32>(1i, 1i, 1i, 1i), 1i), 1f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-844f)) + 1051f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(664f, -2339f))), 687f), -_wgslsmith_mult_i32(~660i, min(-28998i, -1i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-746f))))));
    var var_1 = Struct_3(var_0.a, _wgslsmith_div_i32(-1i | var_0.c.e, abs(1i) | _wgslsmith_mult_i32(-2147483647i, var_0.b ^ var_0.a.e)), Struct_2(!any(select(vec4<bool>(var_0.c.a, true, var_0.a.b.b.x, var_0.a.b.b.x), vec4<bool>(false, var_0.a.b.b.x, true, false), false)), var_0.a.b, _wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.b.a.x)) + _wgslsmith_f_op_f32(select(var_0.d, -135f, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1307f, 199f, var_0.c.c), var_0.a.b.a.xyz, vec3<bool>(true, var_0.a.b.b.x, true)))) - vec3<f32>(var_0.d, _wgslsmith_f_op_f32(max(var_0.a.b.a.x, 533f)), -399f)), var_0.a.b.d), var_0.a.b.a.x);
    global2 = var_1.a.a;
    let var_2 = var_1.c.b.c.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.c.c) + _wgslsmith_f_op_f32(var_1.d * var_1.c.d.x)), var_0.c.d.x, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-1399f + _wgslsmith_f_op_f32(251f * var_0.a.b.a.x)))), var_1.a.b.b, -abs(firstTrailingBit(var_1.c.b.c) >> (max(arg_0, arg_0) % vec4<u32>(32u))), 0i);
    return var_1.a.b.a;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = -494f;
    global2 = arg_1.a.a;
    var var_1 = ~(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.c, 1u, u_input.b.x), vec4<u32>(4294967295u, 67616u, 6862u, 1u)), ~vec4<u32>(u_input.c, 82529u, u_input.c, u_input.b.x))));
    global0 = array<vec2<f32>, 17>();
    var var_2 = Struct_1(vec4<f32>(-1227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(round(-1261f)), _wgslsmith_f_op_f32(-var_0)), vec2<bool>(any(vec4<bool>(1349f < var_0, any(arg_1.c.b.b), true, false)), arg_1.c.a), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_1.c.b.d, -20731i, arg_1.c.b.c.x)), -13896i);
    return Struct_2(select(false, arg_0, all(vec2<bool>(select(false, true, false), arg_0))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(9684u, var_1.x, u_input.b.x), u_input.b), 71672u, u_input.a, 0u))), var_2.b, vec4<i32>(1i, -11260i, abs(_wgslsmith_dot_vec3_i32(var_2.c.ywz, vec3<i32>(arg_1.c.b.d, 2147483647i, 0i))), 1i), _wgslsmith_mod_i32(-select(-2147483647i, arg_1.a.b.d, true), var_2.d)), -1005f, var_2.a.yww, max(var_2.c.x, select(firstTrailingBit(arg_1.c.b.d), -1i, false)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_0;
    global0 = array<vec2<f32>, 17>();
    let var_1 = countOneBits(vec2<i32>(arg_2.x, select(arg_3.b.x, max(~arg_1.e, _wgslsmith_dot_vec4_i32(arg_1.b.c, arg_1.b.c)), all(vec4<bool>(true, arg_1.b.b.x, arg_0, false)))));
    let var_2 = !all(vec3<bool>(arg_1.a, false, true));
    var var_3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c + 1210f), _wgslsmith_f_op_f32(740f - arg_1.b.a.x), !var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.d.x, arg_1.c))) * 1f)));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<f32>) -> bool {
    global1 = array<vec3<i32>, 30>();
    let var_0 = arg_1.a;
    var var_1 = u_input.a;
    let var_2 = arg_1;
    let var_3 = abs(~arg_1.a.c.xyz);
    return (_wgslsmith_f_op_f32(arg_2.x * arg_1.a.a.x) < arg_1.a.a.x) || !((true || !var_2.a.b.x) && false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !func_5(func_4(all(func_1(vec3<u32>(u_input.b.x, u_input.a, 72662u), 43947i, Struct_4(Struct_1(vec4<f32>(-370f, 2040f, -1922f, -1000f), vec2<bool>(false, false), vec4<i32>(42528i, 13252i, -38216i, -26631i), 1i), vec2<i32>(-2147483647i, 0i)), Struct_4(Struct_1(vec4<f32>(-100f, -121f, 1028f, -346f), vec2<bool>(false, true), vec4<i32>(30159i, 0i, 2147483647i, 26338i), -75333i), vec2<i32>(-847i, 7813i)))), func_2(true, Struct_3(Struct_2(false, Struct_1(vec4<f32>(596f, 1208f, 1238f, -1683f), vec2<bool>(true, true), vec4<i32>(-1i, 29219i, -1i, 0i), -1i), -483f, vec3<f32>(817f, -225f, 1999f), -5801i), 17481i, Struct_2(false, Struct_1(vec4<f32>(-298f, 417f, -502f, -707f), vec2<bool>(false, true), vec4<i32>(0i, 33552i, -2147483647i, 1i), 1i), 228f, vec3<f32>(-686f, 803f, -1000f), -2147483647i), 1227f), _wgslsmith_f_op_f32(sign(283f))), _wgslsmith_add_vec4_i32(vec4<i32>(-40202i, -33023i, -2147483647i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), Struct_4(func_2(true, Struct_3(Struct_2(false, Struct_1(vec4<f32>(1056f, -1007f, -1000f, -1634f), vec2<bool>(true, false), vec4<i32>(-3817i, 9664i, -47438i, 1i), 1i), 1575f, vec3<f32>(-479f, -553f, -1000f), -2147483647i), -28339i, Struct_2(true, Struct_1(vec4<f32>(-397f, 840f, 409f, 1930f), vec2<bool>(true, false), vec4<i32>(23198i, 19523i, -16913i, 2147483647i), 36170i), -1680f, vec3<f32>(-465f, -1701f, -454f), -2147483647i), -1000f), 743f).b, -vec2<i32>(-6169i, 48157i))), Struct_4(Struct_1(vec4<f32>(857f, -502f, -1000f, 218f), func_4(false, Struct_2(true, Struct_1(vec4<f32>(222f, -1731f, 499f, -2277f), vec2<bool>(false, true), vec4<i32>(-31960i, 1i, -2147483647i, -59130i), 26110i), 1167f, vec3<f32>(926f, -1325f, -1406f), 2147483647i), vec4<i32>(20115i, -2147483647i, -24688i, 0i), Struct_4(Struct_1(vec4<f32>(1115f, 2008f, -943f, -500f), vec2<bool>(false, false), vec4<i32>(-2147483647i, 0i, 0i, 18279i), -2147483647i), vec2<i32>(29517i, -1i))).b.b, max(vec4<i32>(4057i, -33130i, 3761i, 53298i), vec4<i32>(14419i, -1i, 0i, -48429i)), 1i), vec2<i32>(~(-25072i), min(-2147483647i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(574f, 677f, 1140f), vec3<f32>(-186f, 543f, 1691f)))))));
    global1 = array<vec3<i32>, 30>();
    global1 = array<vec3<i32>, 30>();
    global0 = array<vec2<f32>, 17>();
    let var_0 = Struct_3(func_4(false, func_4(!func_1(u_input.b, -12333i, Struct_4(Struct_1(vec4<f32>(-677f, 1127f, -822f, 135f), vec2<bool>(true, true), vec4<i32>(167i, -2147483647i, -31249i, 0i), 0i), vec2<i32>(0i, -26076i)), Struct_4(Struct_1(vec4<f32>(1123f, 1000f, 1000f, 609f), vec2<bool>(false, true), vec4<i32>(-1i, -1i, 6955i, -15682i), -1i), vec2<i32>(-19566i, 19450i))).x, func_4(false, func_2(true, Struct_3(Struct_2(true, Struct_1(vec4<f32>(-1347f, 1824f, -1049f, 1399f), vec2<bool>(true, false), vec4<i32>(24891i, 2085i, 14200i, 1i), 1i), -360f, vec3<f32>(-1235f, -1000f, -1271f), -30333i), -1i, Struct_2(true, Struct_1(vec4<f32>(467f, -1125f, 2323f, -1645f), vec2<bool>(true, true), vec4<i32>(30653i, -25084i, -15345i, -19068i), 6585i), -1000f, vec3<f32>(636f, -2004f, 448f), 2147483647i), 118f), -966f), vec4<i32>(0i, 0i, 0i, 2147483647i), Struct_4(Struct_1(vec4<f32>(-924f, 969f, -1000f, 1000f), vec2<bool>(false, false), vec4<i32>(-23133i, -1i, 0i, -10569i), -1i), vec2<i32>(42736i, 25458i))), countOneBits(vec4<i32>(1i, -18877i, -11765i, -2147483647i)), Struct_4(Struct_1(vec4<f32>(326f, -1068f, 180f, 1000f), vec2<bool>(true, true), vec4<i32>(1i, -26418i, 2147483647i, 0i), -23643i), _wgslsmith_sub_vec2_i32(vec2<i32>(-24017i, 44505i), vec2<i32>(29582i, 6629i)))), firstTrailingBit(~min(vec4<i32>(1i, 2147483647i, -43250i, 2147483647i), vec4<i32>(-2288i, 51363i, 0i, 1i))), Struct_4(func_2(false, Struct_3(Struct_2(true, Struct_1(vec4<f32>(454f, -328f, -1234f, 2738f), vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), 87004i), -1523f, vec3<f32>(759f, 139f, 512f), -2147483647i), 863i, Struct_2(false, Struct_1(vec4<f32>(-115f, 406f, 1000f, 748f), vec2<bool>(true, true), vec4<i32>(-26787i, 2147483647i, -67798i, -35827i), 2147483647i), -1000f, vec3<f32>(-2089f, -128f, 1548f), -3539i), 363f), -267f).b, vec2<i32>(1i, 1i))), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(7452i, 17772i, -1i, 15544i), vec4<i32>(43189i, 1i, 1i, -11461i)) | 1i, ~(-629i)), Struct_2(true && !any(vec3<bool>(true, true, false)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, 855f, 1104f, 251f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-466f, 2268f, -1000f, 837f))), vec2<bool>(true, true), vec4<i32>(-1i) * -vec4<i32>(1i, 4408i, -1i, 0i), firstTrailingBit(17928i >> (u_input.a % 32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-321f))))), vec3<f32>(_wgslsmith_f_op_f32(-func_2(true, Struct_3(Struct_2(false, Struct_1(vec4<f32>(-466f, -1855f, -226f, 1422f), vec2<bool>(true, false), vec4<i32>(3236i, 11375i, 28189i, -39682i), 1i), 214f, vec3<f32>(1647f, -1753f, 2304f), 1i), 1i, Struct_2(true, Struct_1(vec4<f32>(1237f, -1630f, -450f, 374f), vec2<bool>(false, true), vec4<i32>(2147483647i, 2147483647i, 0i, -2147483647i), -2147483647i), -1632f, vec3<f32>(127f, -1000f, 189f), -2147483647i), 1000f), -719f).c), func_4(true, func_2(false, Struct_3(Struct_2(true, Struct_1(vec4<f32>(-328f, 1600f, -712f, 1776f), vec2<bool>(true, true), vec4<i32>(2147483647i, 21735i, -15115i, 37255i), -23547i), 524f, vec3<f32>(-242f, -1000f, -1171f), -46991i), 1i, Struct_2(false, Struct_1(vec4<f32>(-701f, -568f, 910f, 1040f), vec2<bool>(false, true), vec4<i32>(-2147483647i, -1i, -15299i, -33069i), 10080i), -1082f, vec3<f32>(539f, -1930f, 1110f), -1i), -524f), -660f), -vec4<i32>(-14931i, 11501i, -1i, 14778i), Struct_4(Struct_1(vec4<f32>(312f, 1133f, -1000f, 526f), vec2<bool>(true, true), vec4<i32>(19243i, -19828i, -1i, -2147483647i), -1i), vec2<i32>(-19172i, 80733i))).b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f))), -_wgslsmith_clamp_i32(-18125i, 1i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1125f + 349f), _wgslsmith_f_op_f32(select(-1000f, -1165f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(813f * 1303f) + -1385f)), -766f, func_2(true, Struct_3(Struct_2(true, Struct_1(vec4<f32>(-1442f, -708f, -209f, 752f), vec2<bool>(true, true), vec4<i32>(-24118i, 71654i, 1i, 3808i), 2147483647i), 693f, vec3<f32>(965f, -628f, -196f), -1i), i32(-1i) * -2147483647i, Struct_2(false, Struct_1(vec4<f32>(-967f, -200f, 1357f, 710f), vec2<bool>(true, false), vec4<i32>(-20958i, -2147483647i, 24587i, -1477i), -4264i), 931f, vec3<f32>(-320f, 2928f, -758f), -1i), 1000f), _wgslsmith_f_op_f32(func_2(false, Struct_3(Struct_2(false, Struct_1(vec4<f32>(-604f, 282f, 1011f, -2506f), vec2<bool>(false, false), vec4<i32>(1i, -6344i, -835i, -55534i), -12696i), 478f, vec3<f32>(3175f, -234f, -442f), 0i), 89382i, Struct_2(false, Struct_1(vec4<f32>(543f, -299f, -2100f, 259f), vec2<bool>(true, false), vec4<i32>(2147483647i, 6176i, 64663i, 1i), 0i), 345f, vec3<f32>(-552f, -747f, -1781f), 32833i), -1000f), 751f).b.a.x + _wgslsmith_f_op_f32(977f + 590f))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.e, vec2<u32>(u_input.d.x, 5332u), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.b, _wgslsmith_add_i32(-43963i, 0i), _wgslsmith_mult_i32(var_0.b, -626i), _wgslsmith_div_i32(-1i, var_0.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(3915i, 1i, 2147483647i, 49257i), vec4<i32>(-2147483647i, 2147483647i, var_0.a.e, var_0.c.b.c.x)) << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(55681u, 16809u, u_input.c, 8159u)), vec4<u32>(u_input.d.x, u_input.c, 68220u, 0u) & vec4<u32>(18866u, 42238u, u_input.c, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1347f));
}

