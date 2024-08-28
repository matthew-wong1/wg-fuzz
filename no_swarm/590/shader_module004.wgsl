struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-491f, -747f, -242f), -1i, 11606u, 2147483647i), Struct_1(vec3<f32>(-1505f, -1520f, -784f), -1i, 63247u, 12046i), Struct_1(vec3<f32>(-729f, -793f, -1000f), 0i, 0u, 19936i), Struct_1(vec3<f32>(-968f, -1515f, 778f), 2147483647i, 44281u, -1i), Struct_1(vec3<f32>(-1530f, -1883f, 2519f), 17704i, 1u, 21669i), Struct_1(vec3<f32>(-351f, -603f, 1117f), -20853i, 0u, -1i), Struct_1(vec3<f32>(308f, 1416f, -460f), -39471i, 1u, 1i), Struct_1(vec3<f32>(-706f, 1000f, 1680f), i32(-2147483648), 2808u, -10022i), Struct_1(vec3<f32>(1000f, -335f, 1181f), 25047i, 1u, 1i), Struct_1(vec3<f32>(119f, -659f, 368f), 54459i, 0u, 6060i), Struct_1(vec3<f32>(-175f, 1218f, 222f), -1i, 0u, 56042i), Struct_1(vec3<f32>(-903f, -893f, -343f), 2147483647i, 11566u, 2147483647i), Struct_1(vec3<f32>(470f, -629f, -840f), -1i, 4294967295u, -48323i), Struct_1(vec3<f32>(1000f, -682f, -383f), 49009i, 1u, -50431i), Struct_1(vec3<f32>(-360f, 498f, 1349f), 2147483647i, 26482u, 12312i), Struct_1(vec3<f32>(-791f, -235f, 1000f), -50768i, 4294967295u, 8549i), Struct_1(vec3<f32>(-900f, 1000f, 1110f), -14815i, 0u, 0i), Struct_1(vec3<f32>(917f, 3044f, -1000f), -28699i, 4294967295u, -1396i), Struct_1(vec3<f32>(-396f, 585f, 963f), 2147483647i, 66165u, -79351i), Struct_1(vec3<f32>(1148f, -969f, -149f), -80677i, 4294967295u, i32(-2147483648)), Struct_1(vec3<f32>(-1931f, 825f, 1226f), -37587i, 0u, -28735i), Struct_1(vec3<f32>(-1275f, 1711f, -787f), 1i, 45621u, -57007i), Struct_1(vec3<f32>(-220f, 966f, -1009f), -45901i, 4294967295u, 2147483647i), Struct_1(vec3<f32>(985f, -476f, -623f), i32(-2147483648), 0u, -33506i), Struct_1(vec3<f32>(-1870f, -155f, -2005f), 0i, 0u, 2147483647i), Struct_1(vec3<f32>(1031f, -463f, 394f), 0i, 49419u, i32(-2147483648)));

var<private> global2: array<vec4<f32>, 2>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(1000f, -731f, -1835f), -1i, 11532u, 4133i), Struct_1(vec3<f32>(1776f, 1137f, -129f), -3286i, 0u, -1i), Struct_1(vec3<f32>(1000f, 1996f, -1201f), -42320i, 12650u, -26835i), Struct_1(vec3<f32>(-801f, 389f, -2037f), 2147483647i, 4294967295u, 1i), Struct_1(vec3<f32>(-1106f, 802f, -988f), 5132i, 0u, -7667i), Struct_1(vec3<f32>(-1655f, -1336f, 1000f), 35370i, 65627u, -36952i), Struct_1(vec3<f32>(-170f, -565f, 247f), 18987i, 82106u, 0i), Struct_1(vec3<f32>(582f, 1554f, -317f), -50258i, 3122u, 3993i), Struct_1(vec3<f32>(-718f, -543f, 1346f), 1i, 4294967295u, -1i), Struct_1(vec3<f32>(321f, 320f, 797f), 9161i, 4294967295u, -2287i), Struct_1(vec3<f32>(-1000f, -2129f, 1000f), -1i, 0u, i32(-2147483648)), Struct_1(vec3<f32>(-534f, -372f, -980f), 15771i, 4294967295u, -1i), Struct_1(vec3<f32>(1150f, -945f, -455f), 2147483647i, 1u, -13204i), Struct_1(vec3<f32>(-1166f, 1007f, 1242f), 16473i, 1u, 1i), Struct_1(vec3<f32>(-1053f, -210f, -1307f), -1i, 4113u, i32(-2147483648)), Struct_1(vec3<f32>(-436f, 395f, -1838f), 46659i, 63060u, -1i), Struct_1(vec3<f32>(-3120f, 264f, 502f), 1980i, 0u, -20522i), Struct_1(vec3<f32>(-1518f, 2012f, 377f), i32(-2147483648), 1u, 12181i), Struct_1(vec3<f32>(-1811f, -551f, 356f), -20896i, 23722u, 22213i), Struct_1(vec3<f32>(1000f, -685f, -1123f), 1i, 1u, 11915i), Struct_1(vec3<f32>(434f, -1000f, 164f), -1i, 0u, i32(-2147483648)), Struct_1(vec3<f32>(938f, -274f, -657f), -10627i, 127691u, 24512i), Struct_1(vec3<f32>(-367f, 487f, -459f), -12749i, 38993u, 0i), Struct_1(vec3<f32>(-1462f, -102f, 1907f), 7328i, 0u, -11047i), Struct_1(vec3<f32>(314f, 294f, 443f), 3002i, 4294967295u, -1i), Struct_1(vec3<f32>(1412f, -1896f, -223f), -13234i, 1u, -21830i), Struct_1(vec3<f32>(1137f, 693f, 782f), -7613i, 4294967295u, 1621i), Struct_1(vec3<f32>(133f, -1326f, -1616f), 31627i, 4294967295u, -58245i), Struct_1(vec3<f32>(-522f, -429f, 616f), -1i, 60683u, 45742i), Struct_1(vec3<f32>(-1566f, 1349f, -150f), 0i, 1u, 32356i), Struct_1(vec3<f32>(-1361f, -1000f, 1000f), -17808i, 67686u, -1i));

var<private> global4: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global4 = false & any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), false & any(vec3<bool>(true, false, true))));
    global3 = array<Struct_1, 31>();
    var var_0 = Struct_3(vec2<u32>(min(1u, u_input.a) >> (~(~1u) % 32u), ~global0.a.x));
    global1 = array<Struct_1, 26>();
    var_0 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(countOneBits(57577u), ~global0.a.x), countOneBits(1u)), vec2<u32>(~abs(var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.a.x, 4294967295u, global0.a.x), vec4<u32>(var_0.a.x, 1u, var_0.a.x, 41747u)))));
    return -159f;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(firstTrailingBit(firstLeadingBit(arg_0.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(arg_2.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), u_input.c), u_input.c) & ~global0.a.x, ~(~(~56095u))));
    global3 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(step(1416f, arg_1))))), -116f));
    var var_2 = arg_0;
    global2 = array<vec4<f32>, 2>();
    return Struct_3(~(~vec2<u32>(var_0.b.x, 4294967295u) ^ max(~u_input.c.zy, arg_0.a >> (arg_0.a % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-888f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 808f, -155f)), arg_1))), _wgslsmith_div_i32(firstLeadingBit(~0i), var_0.d), reverseBits(~var_0.c), _wgslsmith_mod_i32(_wgslsmith_mult_i32(~var_0.b, -1i), 49499i) & 3828i);
    global4 = true;
    global3 = array<Struct_1, 31>();
    let var_2 = 2147483647i;
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    global1 = array<Struct_1, 26>();
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(22703u, 2u)] + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, _wgslsmith_f_op_f32(-645f + 1072f), _wgslsmith_div_f32(-2170f, 520f), -888f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, countOneBits(0u), _wgslsmith_dot_vec2_u32(global0.a, arg_0.b)), 2u)])))));
    var var_1 = arg_0;
    global0 = func_4(func_2(Struct_3(_wgslsmith_sub_vec2_u32(arg_0.b << (vec2<u32>(arg_0.b.x, u_input.b) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, u_input.a)))), var_0.x, vec4<u32>(arg_0.a << (23157u % 32u), max(1u, 13157u), ~14437u, u_input.c.x) | (vec4<u32>(u_input.a, 0u, 45849u, global0.a.x) | vec4<u32>(arg_0.a, global0.a.x, 37024u, 0u))), select(select(vec3<bool>(arg_0.b.x == global0.a.x, all(vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), select(true, false, false)), true), vec3<bool>(true, true, ~4294967295u > (1u ^ global0.a.x)), true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(~u_input.c ^ (vec4<u32>(func_1(Struct_2(u_input.a, u_input.c.xw), vec3<u32>(76348u, u_input.c.x, 79586u)), global0.a.x, 4294967295u & global0.a.x, _wgslsmith_mult_u32(14656u, 0u)) ^ min(vec4<u32>(1u, 10138u, 4294967295u, u_input.a), vec4<u32>(43995u, 16002u, u_input.c.x, u_input.b))), u_input.c);
    let var_1 = abs(u_input.c.x);
    global4 = all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(select(false, false, true), true, any(vec4<bool>(false, false, true, true)))));
    global2 = array<vec4<f32>, 2>();
    var_0 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-936f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1109f)), -1071f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1585f))), _wgslsmith_f_op_f32(146f - -571f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(823f, 1000f) - -1241f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-742f - 1014f)))))), 1i);
}

