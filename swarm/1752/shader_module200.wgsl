struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2370f;

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(1652f, -840f), -851f, 78388i, vec2<f32>(685f, 1108f), vec3<f32>(197f, -1512f, -1375f)), Struct_1(vec2<f32>(117f, 334f), -1762f, 12421i, vec2<f32>(185f, 1856f), vec3<f32>(-1077f, -205f, 364f)), Struct_1(vec2<f32>(-481f, -826f), 1044f, -1i, vec2<f32>(1397f, 1000f), vec3<f32>(-1000f, -1651f, -1258f)), Struct_1(vec2<f32>(-217f, -1000f), -620f, 0i, vec2<f32>(325f, -601f), vec3<f32>(675f, 515f, -988f)), Struct_1(vec2<f32>(1000f, 1229f), -1553f, 72042i, vec2<f32>(-1000f, -349f), vec3<f32>(319f, 994f, 753f)), Struct_1(vec2<f32>(-934f, -1430f), 206f, -1i, vec2<f32>(766f, -2154f), vec3<f32>(-1489f, 383f, -1497f)), Struct_1(vec2<f32>(1000f, -1000f), -1332f, 1i, vec2<f32>(-1932f, -1775f), vec3<f32>(316f, -1339f, 1000f)), Struct_1(vec2<f32>(-902f, -308f), 807f, 2147483647i, vec2<f32>(349f, -1000f), vec3<f32>(-287f, -152f, -708f)), Struct_1(vec2<f32>(294f, -1150f), -1160f, i32(-2147483648), vec2<f32>(-494f, 1564f), vec3<f32>(637f, -1891f, -465f)), Struct_1(vec2<f32>(558f, -257f), -332f, 1i, vec2<f32>(-1110f, -402f), vec3<f32>(248f, -871f, 597f)), Struct_1(vec2<f32>(315f, -446f), 196f, -1i, vec2<f32>(269f, 177f), vec3<f32>(761f, 339f, 183f)), Struct_1(vec2<f32>(1000f, 961f), 786f, 2147483647i, vec2<f32>(-294f, -2087f), vec3<f32>(105f, 262f, 1003f)), Struct_1(vec2<f32>(2708f, -1346f), -244f, 36094i, vec2<f32>(612f, -163f), vec3<f32>(1554f, -118f, -1487f)), Struct_1(vec2<f32>(-1000f, -778f), -151f, i32(-2147483648), vec2<f32>(-1392f, -547f), vec3<f32>(-568f, -156f, 1000f)), Struct_1(vec2<f32>(169f, -1448f), 542f, 2147483647i, vec2<f32>(-817f, 249f), vec3<f32>(588f, -204f, 493f)), Struct_1(vec2<f32>(1774f, -324f), -888f, -30352i, vec2<f32>(-457f, 344f), vec3<f32>(-905f, 1245f, 209f)), Struct_1(vec2<f32>(1017f, 394f), -1576f, 0i, vec2<f32>(-478f, -163f), vec3<f32>(-507f, -1507f, -636f)), Struct_1(vec2<f32>(-631f, 2116f), 1208f, 40077i, vec2<f32>(1116f, 401f), vec3<f32>(1123f, -131f, 1627f)), Struct_1(vec2<f32>(-929f, -1197f), 721f, -1i, vec2<f32>(177f, 1688f), vec3<f32>(-251f, -138f, -526f)), Struct_1(vec2<f32>(1536f, -124f), 1000f, 2147483647i, vec2<f32>(-634f, 1541f), vec3<f32>(-223f, 338f, 2336f)), Struct_1(vec2<f32>(436f, 115f), -402f, -42883i, vec2<f32>(-1561f, -823f), vec3<f32>(567f, -469f, -423f)), Struct_1(vec2<f32>(-481f, -283f), -503f, 3191i, vec2<f32>(1148f, -774f), vec3<f32>(815f, 217f, -668f)), Struct_1(vec2<f32>(-944f, 1000f), -1238f, -15456i, vec2<f32>(447f, 455f), vec3<f32>(350f, 1966f, -425f)), Struct_1(vec2<f32>(1082f, 1596f), 304f, 42252i, vec2<f32>(-180f, 851f), vec3<f32>(-167f, -694f, 703f)), Struct_1(vec2<f32>(1000f, -335f), -1141f, 1i, vec2<f32>(-868f, -719f), vec3<f32>(453f, -415f, 393f)), Struct_1(vec2<f32>(-547f, 1204f), -513f, 2147483647i, vec2<f32>(1255f, -847f), vec3<f32>(1493f, -989f, 506f)), Struct_1(vec2<f32>(-745f, -1346f), -890f, -47649i, vec2<f32>(551f, 830f), vec3<f32>(-1552f, -308f, 420f)), Struct_1(vec2<f32>(607f, -763f), -1690f, -1i, vec2<f32>(990f, -1987f), vec3<f32>(-1073f, 523f, 1040f)), Struct_1(vec2<f32>(1245f, -390f), -175f, 2147483647i, vec2<f32>(811f, -1386f), vec3<f32>(-1177f, 575f, -1611f)), Struct_1(vec2<f32>(-485f, -1000f), 1310f, 18513i, vec2<f32>(-608f, -856f), vec3<f32>(1529f, -327f, 413f)), Struct_1(vec2<f32>(-1014f, -407f), 1602f, 19621i, vec2<f32>(-596f, 588f), vec3<f32>(-273f, -462f, -347f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(-1f), -(min(u_input.a.x, 0i) ^ -230i), global1.e.zz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), global1.e) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.e.x, 825f, -446f), global1.e))));
    var var_1 = _wgslsmith_f_op_f32(sign(1147f));
    var_1 = -661f;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(3993u, 4294967295u)), select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 16878u), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, any(vec2<bool>(true, true)))), ~vec2<u32>(abs(711u), 1u)) << (firstLeadingBit(1u) % 32u), 31u)];
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(384f, -1240f)))))));
    return _wgslsmith_f_op_f32(round(var_0.e.x));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = vec4<u32>(arg_0, reverseBits(arg_0) & arg_0, abs(min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, arg_0), reverseBits(arg_0)), arg_0)), ~arg_0);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(global1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(220f - _wgslsmith_div_f32(global1.a.x, global1.b)) + -962f)), ~global2.x, _wgslsmith_f_op_vec2_f32(round(global1.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e - _wgslsmith_f_op_vec3_f32(global1.e * global1.e)) * vec3<f32>(768f, 1123f, -583f)) - vec3<f32>(-662f, _wgslsmith_f_op_f32(func_3()), 1619f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(504f - global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1168f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global1.e, var_1.e))) - var_1.e)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a + var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(f32(-1f) * -195f))), global2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_1.b), vec2<f32>(var_1.e.x, var_1.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.e.yz, var_1.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_1.e - vec3<f32>(var_1.d.x, -1407f, var_2.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_1.e - global1.e))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.e, vec3<f32>(var_1.b, 832f, 236f)))))));
    var var_3 = -vec4<i32>(abs(global2.x), 2147483647i, u_input.a.x, var_1.c) << (vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(countOneBits(var_0.xzz), var_0.yyy & max(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(1u, var_0.x, var_0.x))), max(4294967295u, ~arg_0), abs(min(var_0.x << (arg_0 % 32u), firstTrailingBit(arg_0)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.e.x))), -469f)) + vec3<f32>(_wgslsmith_f_op_f32(-935f * 839f), global1.b, var_2.x));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, arg_0.x), firstTrailingBit(vec4<u32>(0u, 0u, arg_0.x, 0u))), 2433u) >> (~arg_0.x % 32u), !(!vec2<bool>(all(vec4<bool>(false, false, true, true)), true))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2001f, _wgslsmith_f_op_f32(var_0.x * global1.b))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(func_2(64724u, vec2<bool>(true, true))).x, u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + global1.b)) * global1.a.x), _wgslsmith_f_op_f32(abs(1f))), global1.e);
    var var_2 = global3[_wgslsmith_index_u32(6075u, 31u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_2.d.x), _wgslsmith_f_op_f32(var_1.e.x + global1.a.x)), var_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(trunc(-554f)))))), -1052f, global1.c | _wgslsmith_add_i32(0i >> (arg_0.x % 32u), global1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_f_op_vec2_f32(abs(var_2.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, global1.b)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-937f, var_2.e.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1464f, 117f)))))));
    var var_4 = _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(abs(arg_0.x), ~arg_0.x, 1u, _wgslsmith_mult_u32(arg_0.x, arg_0.x))), ~(~(~vec4<u32>(9843u, arg_0.x, arg_0.x, 0u))) << (~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(0u, arg_0.x, 4294967295u, arg_0.x)), vec4<u32>(1u, 1u, 0u, 0u) ^ vec4<u32>(1139u, arg_0.x, 4294967295u, 24857u)) % vec4<u32>(32u)));
    return 22384u << (firstTrailingBit(5297u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 129u, 34144u, 1175u))), vec4<u32>(func_1(vec3<u32>(1u, 4294967295u, 4294967295u)), ~0u, min(11455u, 0u), 0u), vec4<bool>(false, all(vec4<bool>(false, false, false, true)), true, true)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1u, 16931u), ~vec4<u32>(4294967295u, 17644u, 30443u, 0u), ~vec4<u32>(0u, 4294967295u, 0u, 0u)), vec4<u32>(1u, select(27550u, 53472u, true), ~1u, ~0u))) | (vec4<u32>(func_1(vec3<u32>(22827u, 3778u, 76238u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63842u, 40950u), vec2<u32>(4294967295u, 26845u)), 1u), ~1u, abs(4294967295u)) & ~vec4<u32>(0u, ~0u, ~95273u, 17080u));
    global3 = array<Struct_1, 31>();
    global2 = vec4<i32>(abs(~_wgslsmith_sub_i32(firstLeadingBit(global1.c), global1.c)), 49535i, -abs(2147483647i), _wgslsmith_mod_i32(select(u_input.a.x, global1.c >> ((var_0.x << (var_0.x % 32u)) % 32u), select(true, all(vec2<bool>(true, false)), any(vec2<bool>(true, false)))), u_input.a.x));
    var var_1 = ~var_0.x;
    let var_2 = abs(_wgslsmith_sub_vec3_i32(reverseBits(global2.zyx), global2.wxx));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), global1.b);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(113f, global1.a.x) * _wgslsmith_f_op_vec3_f32(func_2(countOneBits(var_0.x | 13194u), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), true))).xx), -339f, -_wgslsmith_div_i32(2147483647i, u_input.a.x >> (~var_0.x % 32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-global1.b)) + vec2<f32>(-293f, var_3.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.e, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1.e, global1.e), _wgslsmith_f_op_vec3_f32(global1.e - vec3<f32>(191f, global1.b, global1.b)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e - vec3<f32>(global1.b, 1216f, 392f)) * _wgslsmith_f_op_vec3_f32(func_2(var_0.x, vec2<bool>(false, true)))))));
    global2 = ~(~(-vec4<i32>(~u_input.a.x, global2.x, var_4.c, _wgslsmith_sub_i32(7035i, global1.c))));
    let x = u_input.a;
    s_output = StorageBuffer((0i ^ -u_input.a.x) | _wgslsmith_dot_vec4_i32(-firstTrailingBit(u_input.a), min(u_input.a, vec4<i32>(var_2.x, global1.c, global1.c, -2147483647i))), max(var_0.x >> (~_wgslsmith_add_u32(4294967295u, var_0.x) % 32u), _wgslsmith_sub_u32(~(~51283u), reverseBits(~var_0.x))), firstLeadingBit(var_0), countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(var_0.wyy ^ vec3<u32>(4294967295u, var_0.x, 72167u), var_0.yxy), select(~vec3<u32>(4294967295u, 1215u, var_0.x), var_0.xxw, vec3<bool>(true, false, false)))), select(countOneBits(vec2<u32>(1u, _wgslsmith_mult_u32(40780u, 52552u))), (abs(var_0.xy) << (_wgslsmith_mult_vec2_u32(var_0.wx, var_0.xw) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.xw), any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)))));
}

