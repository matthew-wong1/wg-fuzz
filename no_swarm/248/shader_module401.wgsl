struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(324f, 1879f, -742f, 1114f), vec4<f32>(-127f, -728f, 560f, -816f), vec4<f32>(1000f, -1233f, 493f, -858f), vec4<f32>(-191f, -1115f, -1000f, 1827f), vec4<f32>(1000f, 1176f, 1273f, -1927f), vec4<f32>(203f, -345f, -235f, 974f), vec4<f32>(-1325f, -640f, 612f, -1718f), vec4<f32>(-1312f, 244f, 850f, 1270f), vec4<f32>(-1407f, 342f, -852f, -166f), vec4<f32>(-2189f, 888f, -508f, 137f), vec4<f32>(-1000f, -1000f, 823f, -598f), vec4<f32>(-766f, -555f, 1092f, 1508f), vec4<f32>(883f, -184f, 2092f, 719f), vec4<f32>(-1000f, -338f, 1067f, 511f), vec4<f32>(1000f, -584f, -1000f, 145f), vec4<f32>(621f, -835f, 280f, 136f), vec4<f32>(-1000f, -2835f, -399f, -1363f), vec4<f32>(-2156f, -1809f, -153f, 185f), vec4<f32>(1890f, 130f, -1344f, -1000f), vec4<f32>(1692f, 1482f, 563f, 921f), vec4<f32>(-246f, 1135f, -706f, -680f), vec4<f32>(-1299f, 1800f, 1995f, 779f), vec4<f32>(751f, 104f, -1425f, -957f), vec4<f32>(411f, 319f, -1357f, 1139f), vec4<f32>(2109f, 524f, 544f, 874f), vec4<f32>(-1006f, -746f, -287f, -150f), vec4<f32>(1058f, 1000f, -278f, 1000f), vec4<f32>(324f, -957f, 225f, -1624f), vec4<f32>(678f, -1000f, -1000f, 114f), vec4<f32>(-543f, 839f, 315f, -561f));

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1955f, 1059f, 710f, 1041f), -171f, vec4<i32>(2147483647i, -43731i, 1i, -39113i), false), Struct_1(vec3<bool>(false, false, true), vec4<f32>(1383f, -1000f, 186f, -1187f), -1142f, vec4<i32>(57838i, i32(-2147483648), 12988i, -65598i), false), Struct_1(vec3<bool>(true, false, true), vec4<f32>(1298f, -723f, 218f, -377f), 1191f, vec4<i32>(i32(-2147483648), 13315i, 50452i, -1i), true), Struct_1(vec3<bool>(true, true, true), vec4<f32>(556f, 1000f, 805f, 248f), -358f, vec4<i32>(42807i, 23421i, -570i, 2147483647i), true), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-935f, -566f, 1526f, 1720f), 1000f, vec4<i32>(2147483647i, 6071i, -34255i, 13817i), false), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-836f, 835f, -545f, -242f), -1607f, vec4<i32>(62756i, -4723i, 38827i, -21070i), false), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1681f, -530f, 210f, -1205f), 1000f, vec4<i32>(2899i, 2147483647i, -1i, 1i), true), Struct_1(vec3<bool>(true, false, false), vec4<f32>(730f, 1702f, 1000f, 997f), -1000f, vec4<i32>(7117i, -13579i, 25539i, 30863i), true), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1159f, -621f, 183f, -856f), -759f, vec4<i32>(-1i, 7273i, 0i, 2147483647i), false), Struct_1(vec3<bool>(false, true, true), vec4<f32>(1365f, 119f, -259f, 358f), -1883f, vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i), true), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-158f, -826f, -1175f, -2059f), 963f, vec4<i32>(-48288i, 2147483647i, i32(-2147483648), -30457i), false), Struct_1(vec3<bool>(false, true, true), vec4<f32>(1539f, -535f, -1592f, 663f), -437f, vec4<i32>(-10559i, -70877i, 1i, 0i), false), Struct_1(vec3<bool>(true, true, false), vec4<f32>(880f, -1411f, 1049f, -1000f), -496f, vec4<i32>(0i, 2147483647i, i32(-2147483648), -22763i), false), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-374f, -1000f, 884f, -381f), 616f, vec4<i32>(1i, 1i, 43168i, -1i), false), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-856f, 1060f, -969f, 1564f), -601f, vec4<i32>(2147483647i, 35385i, 2147483647i, 1i), true), Struct_1(vec3<bool>(false, true, false), vec4<f32>(1000f, 491f, -1224f, -204f), 690f, vec4<i32>(0i, -8343i, 1i, -2498i), false), Struct_1(vec3<bool>(false, true, true), vec4<f32>(744f, 501f, -422f, 1917f), 2101f, vec4<i32>(-1i, 1i, 10101i, -49809i), true), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1645f, 186f, -1190f, -1000f), -1130f, vec4<i32>(0i, 0i, 1i, -1i), true), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1016f, -494f, -1624f, 405f), -388f, vec4<i32>(-1i, 1i, 0i, 26307i), false), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-667f, 1324f, 661f, 1035f), 584f, vec4<i32>(0i, i32(-2147483648), -29580i, 25545i), true), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-354f, -711f, -833f, -1403f), -595f, vec4<i32>(i32(-2147483648), 34989i, -34786i, -39028i), false), Struct_1(vec3<bool>(true, true, true), vec4<f32>(355f, 720f, -177f, 434f), -178f, vec4<i32>(15095i, -13952i, -18934i, -18515i), false), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-200f, 847f, 1097f, -565f), -1663f, vec4<i32>(2147483647i, -1i, -61726i, -27591i), false), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-574f, 112f, 528f, 491f), 700f, vec4<i32>(2147483647i, i32(-2147483648), 33055i, -6564i), true), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-538f, -527f, -319f, 883f), 508f, vec4<i32>(2147483647i, 4204i, 0i, -28250i), false), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-341f, -1212f, 2489f, -238f), 1180f, vec4<i32>(-25110i, 38879i, -29424i, 1i), true), Struct_1(vec3<bool>(false, false, true), vec4<f32>(536f, 605f, 2324f, -524f), 1263f, vec4<i32>(-35489i, -48683i, 8552i, -14845i), false));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec4<f32>(880f, -1506f, -1773f, -277f), -1000f, vec4<i32>(-1i, i32(-2147483648), 1i, -6411i), false);

var<private> global3: array<Struct_2, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    global2 = global1[_wgslsmith_index_u32(firstLeadingBit(~(max(u_input.b, u_input.b) & (u_input.b << (0u % 32u)))) >> (u_input.b % 32u), 27u)];
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(firstTrailingBit(-14730i), _wgslsmith_sub_i32(-18853i, _wgslsmith_sub_i32(12724i, global2.d.x)), global2.d.x);
    var_0 = global2.d.xxx;
    global1 = array<Struct_1, 27>();
    return ~abs(~(~1u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c * global2.c) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-342f + arg_0.a.b.x), _wgslsmith_div_f32(arg_1.c, global2.b.x), arg_1.e))))));
    var var_1 = _wgslsmith_mult_vec2_i32(arg_2.xx, select(vec2<i32>(-35319i, global2.d.x), vec2<i32>(global2.d.x | arg_1.d.x, ~arg_1.d.x), arg_1.a.zz)) | vec2<i32>(_wgslsmith_add_i32(abs(26906i), 7345i), arg_2.x);
    var_1 = arg_0.b.d.yx;
    return global2.d.x;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> bool {
    global2 = Struct_1(select(arg_0.a.a, !arg_0.a.a, false), global0[_wgslsmith_index_u32(func_2(), 30u)], global2.b.x, -vec4<i32>(47753i, select(2147483647i, _wgslsmith_add_i32(-38452i, arg_2.b.d.x), global2.a.x), arg_0.b.d.x, -2147483647i), !arg_0.b.e);
    var var_0 = Struct_1(vec3<bool>(arg_0.c.e, false, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, global2.c, arg_2.c.b.x, arg_2.c.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, 180f, arg_2.a.c, arg_2.a.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, arg_2.b.b.x, global2.b.x, arg_2.a.c) - vec4<f32>(-1000f, arg_0.b.c, 1000f, -313f)) * _wgslsmith_f_op_vec4_f32(abs(arg_0.c.b)))), _wgslsmith_f_op_vec4_f32(-arg_2.c.b)), global2.c, vec4<i32>(func_3(arg_2, arg_0.a, ~vec3<i32>(29381i, -12321i, -6274i)) & 37222i, arg_0.b.d.x, -(~(~0i)), abs(reverseBits(-1i))), any(select(arg_2.b.a.yz, select(vec2<bool>(true, true), vec2<bool>(true, arg_0.c.a.x), arg_0.c.a.x), all(arg_2.b.a))) && true);
    var_0 = Struct_1(arg_0.b.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.b, arg_2.c.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, 271f, arg_0.b.c, arg_0.a.b.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)), var_0.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(851f)) - arg_0.c.b.x)))), abs(_wgslsmith_clamp_vec4_i32(global2.d, min(vec4<i32>(arg_2.b.d.x, 31609i, arg_2.b.d.x, -10948i), vec4<i32>(arg_0.a.d.x, var_0.d.x, var_0.d.x, global2.d.x)), ~global2.d)) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(34092i, var_0.d.x, arg_0.c.d.x) | vec3<i32>(-1i, -28319i, -2147483647i), arg_2.a.d.wwy), _wgslsmith_clamp_i32(arg_0.a.d.x, ~arg_0.c.d.x, arg_2.c.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, 2147483647i, 1i, arg_2.c.d.x), firstLeadingBit(vec4<i32>(global2.d.x, global2.d.x, -1134i, 3858i))), -22810i), all(!arg_2.a.a.yz));
    global3 = array<Struct_2, 25>();
    return -610f < arg_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.e, global2.a.x, false, true), global2.e), select(vec4<bool>(global2.a.x, false, global2.a.x, global2.e), vec4<bool>(false, false, false, global2.e), global2.e), select(vec4<bool>(false, true, false, false), vec4<bool>(global2.a.x, true, true, false), global2.a.x)), vec4<bool>((global2.e || global2.e) && !global2.e, true, false, select(true, global2.a.x, u_input.b <= u_input.b)), vec4<bool>(true, -1148f <= _wgslsmith_f_op_f32(exp2(global2.c)), global2.a.x, func_1(global3[_wgslsmith_index_u32(0u, 25u)], 4294967295u, global3[_wgslsmith_index_u32(u_input.c, 25u)]) && true)));
    let var_1 = 48780u;
    let var_2 = global1[_wgslsmith_index_u32((10371u << (var_1 % 32u)) | _wgslsmith_dot_vec3_u32(select(vec3<u32>(71877u | var_1, ~var_1, max(37317u, var_1)), abs(~vec3<u32>(0u, var_1, var_1)), func_1(global3[_wgslsmith_index_u32(~u_input.a.x, 25u)], 46765u >> (var_1 % 32u), Struct_2(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_1(global2.a, vec4<f32>(1000f, global2.b.x, global2.b.x, global2.b.x), global2.b.x, vec4<i32>(14806i, 46457i, -48210i, global2.d.x), global2.a.x)))), vec3<u32>(~1u, _wgslsmith_mult_u32(var_1, 41071u) >> (~22027u % 32u), var_1)), 27u)];
    global2 = global1[_wgslsmith_index_u32(47792u, 27u)];
    var var_3 = global3[_wgslsmith_index_u32(1u, 25u)];
    global1 = array<Struct_1, 27>();
    global3 = array<Struct_2, 25>();
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(firstLeadingBit(firstTrailingBit(4294967295u)) & ~(~1u), ~(~u_input.a.x), true), select(_wgslsmith_mult_u32(~var_1, ~(var_1 ^ var_1)), firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u))), var_3.c.d.x > -(var_3.a.d.x >> (1u % 32u)))), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.c.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.b.x)) * _wgslsmith_f_op_f32(-1028f * -1573f)), 529f)), var_3.b.d, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_3.c.b + global2.b))));
}

