struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: array<Struct_3, 3>;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-3401i, vec3<bool>(true, false, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), vec4<f32>(-1848f, -625f, 536f, 463f)), vec4<f32>(-347f, -909f, 2007f, -1000f), vec3<f32>(588f, 256f, -107f)), Struct_2(0i, vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<f32>(-177f, 956f, -316f, 1391f)), vec4<f32>(-1791f, -185f, 1224f, 751f), vec3<f32>(189f, 1000f, 220f)), Struct_2(-52027i, vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false), vec4<f32>(437f, 1000f, -1588f, -686f)), vec4<f32>(-1020f, 204f, 1053f, 1235f), vec3<f32>(345f, -503f, 1557f)), Struct_2(34184i, vec3<bool>(false, true, false), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<f32>(531f, 541f, -1000f, 566f)), vec4<f32>(-1511f, -257f, -403f, 578f), vec3<f32>(1110f, 897f, -1216f)), Struct_2(-57746i, vec3<bool>(true, false, true), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<f32>(-1000f, -1005f, 890f, -2136f)), vec4<f32>(1170f, 901f, -1363f, 456f), vec3<f32>(1452f, 547f, -1367f)), Struct_2(-27495i, vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false), vec4<f32>(-1419f, -677f, 942f, -1089f)), vec4<f32>(1355f, 2819f, 1280f, 1000f), vec3<f32>(-242f, 859f, 1000f)), Struct_2(-11476i, vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), vec4<f32>(2246f, -1100f, -529f, 360f)), vec4<f32>(-193f, 1536f, 737f, -335f), vec3<f32>(-207f, 1051f, -716f)), Struct_2(26925i, vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<f32>(513f, -786f, -1303f, -162f)), vec4<f32>(1152f, 2194f, -545f, -603f), vec3<f32>(1230f, 148f, -1144f)), Struct_2(1i, vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false), vec4<f32>(1530f, 1020f, -1791f, 1057f)), vec4<f32>(-188f, -1669f, -1000f, 1963f), vec3<f32>(-464f, 1727f, 613f)), Struct_2(i32(-2147483648), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<f32>(-479f, 774f, -718f, -1554f)), vec4<f32>(-2580f, -1480f, -1403f, -623f), vec3<f32>(-1445f, -1000f, 603f)), Struct_2(1i, vec3<bool>(false, false, false), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false), vec4<f32>(-594f, -831f, 176f, 604f)), vec4<f32>(423f, -1654f, 1014f, 1316f), vec3<f32>(1000f, -1000f, -584f)), Struct_2(1i, vec3<bool>(true, true, false), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<f32>(-584f, -163f, -863f, 1398f)), vec4<f32>(797f, 789f, 1050f, 850f), vec3<f32>(-415f, -1497f, -854f)), Struct_2(-1515i, vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true), vec4<f32>(1171f, 190f, 2938f, -436f)), vec4<f32>(1000f, 575f, -1000f, 556f), vec3<f32>(-345f, 1036f, -214f)), Struct_2(-1i, vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<f32>(551f, 1258f, -634f, 1097f)), vec4<f32>(-1000f, -686f, 959f, -309f), vec3<f32>(1118f, 576f, 227f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    global0 = array<Struct_3, 3>();
    let var_0 = 16183i;
    global1 = array<Struct_2, 14>();
    global0 = array<Struct_3, 3>();
    global1 = array<Struct_2, 14>();
    return _wgslsmith_mod_vec4_u32(abs(firstTrailingBit(select(~vec4<u32>(arg_2.x, 13628u, 47425u, arg_2.x), vec4<u32>(1u, u_input.d.x, 22465u, u_input.b), false))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.e.x, arg_2.x, arg_2.x, 127567u), vec4<u32>(arg_2.x, arg_2.x, 4709u, 4294967295u), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)) ^ vec4<u32>(firstLeadingBit(21333u), ~41050u, u_input.b, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)), vec4<u32>(max(min(4294967295u, u_input.d.x), abs(arg_2.x)), 1u, select(~4294967295u, u_input.c, true), select(_wgslsmith_add_u32(u_input.c, u_input.c), 0u, true))));
}

fn func_2(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_mod_vec4_u32(func_3(vec4<f32>(_wgslsmith_f_op_f32(-387f - -861f), 1424f, 193f, arg_0.c.c.x), Struct_1(arg_0.c.a, !(!arg_0.b.zz), arg_0.c.c), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.d, vec2<u32>(u_input.d.x, u_input.b) | vec2<u32>(u_input.d.x, 4294967295u)), ~(~u_input.d))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 44420u, 21777u) & vec4<u32>(4294967295u, u_input.e.x, 1u, 6637u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.b), vec4<u32>(35782u, 1u, u_input.c, 1u)), ~vec4<u32>(u_input.c, u_input.e.x, 4294967295u, u_input.d.x)) | vec4<u32>(u_input.c >> (0u % 32u), 75673u, ~1u, ~47549u)));
    global0 = array<Struct_3, 3>();
    var var_1 = -41806i << (1u % 32u);
    var var_2 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a), _wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(8567i, arg_0.a)), vec2<i32>(9616i, -7858i), arg_0.c.a.x) >> (vec2<u32>(var_0.x, var_0.x >> (u_input.c % 32u)) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-55446i, -1i), u_input.a)), ~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), ~(-vec2<i32>(countOneBits(u_input.a.x), 1i)));
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-249f - -510f)), 271f)));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = u_input.a & vec2<i32>(u_input.a.x, ~(-2147483647i) | (45505i << (u_input.b % 32u)));
    let var_1 = Struct_1(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, 46142u == u_input.c), false), vec3<bool>(true, true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(0i, vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), vec4<f32>(1049f, 183f, -1758f, 423f)), vec4<f32>(-1182f, -716f, 204f, -2321f), vec3<f32>(-578f, 876f, -1486f)))) + vec4<f32>(-1345f, 351f, _wgslsmith_div_f32(-968f, 2131f), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(0i, vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<f32>(1157f, -1137f, 244f, 793f)), vec4<f32>(1570f, -1262f, 1094f, 1000f), vec3<f32>(-857f, -192f, 407f)))).x))));
    let var_2 = vec2<bool>(false, !(!any(vec4<bool>(var_1.b.x, var_1.a.x, var_1.a.x, true))));
    var_0 = vec2<i32>(u_input.a.x, -6351i);
    let var_3 = ~(~vec2<u32>(28851u, ~(~arg_0)));
    return vec3<i32>(-((~u_input.a.x << (_wgslsmith_div_u32(11089u, 105238u) % 32u)) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 16716u, u_input.b), vec3<u32>(1u, var_3.x, u_input.d.x)) | var_3.x) % 32u)), 1i, -27033i);
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = any(!vec3<bool>(true || (arg_0.x == 0i), true, true));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(max(~vec4<u32>(58440u, u_input.e.x, u_input.e.x, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 0u, 1u, u_input.b), vec4<u32>(23564u, u_input.d.x, u_input.e.x, u_input.d.x))) >> (vec4<u32>(countOneBits(4595u), ~4294967295u, countOneBits(4992u), func_3(vec4<f32>(1348f, -369f, -554f, 839f), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true), vec4<f32>(-519f, 1073f, 243f, 1000f)), vec2<u32>(u_input.b, u_input.c)).x) % vec4<u32>(32u))), countOneBits(vec4<u32>(~34579u, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(13899u, 11442u, u_input.c)), ~15194u, select(3613u, u_input.c, false))) >> (firstTrailingBit(~vec4<u32>(u_input.b, u_input.d.x, 0u, u_input.d.x)) % vec4<u32>(32u))), 3u)];
    global0 = array<Struct_3, 3>();
    var var_2 = Struct_1(select(select(select(var_1.c.a, var_1.e.a, false), !var_1.c.a, !vec3<bool>(var_1.c.a.x, false, false)), var_1.e.a, !vec3<bool>(any(vec3<bool>(true, var_1.e.b.x, var_1.d.a.x)), true, any(vec4<bool>(var_1.d.b.x, true, var_1.e.b.x, var_1.d.b.x)))), vec2<bool>(var_1.d.a.x, true), var_1.d.c);
    var var_3 = _wgslsmith_clamp_vec3_i32(-abs(~(~arg_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(-32295i, 59041i, _wgslsmith_div_i32(arg_0.x, ~u_input.a.x)), vec3<i32>(func_1(3975u).x, u_input.a.x, arg_0.x)), firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(19312i, max(u_input.a.x, 1i), 23956i), _wgslsmith_dot_vec3_i32(abs(arg_0), arg_0), arg_0.x)));
    return global1[_wgslsmith_index_u32(max(~var_1.b.x, 56252u), 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1133f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) - _wgslsmith_f_op_f32(-568f - -319f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1058f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1946f, -839f))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))))))), _wgslsmith_f_op_f32(-1f));
    var var_1 = func_4(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(18522i, 34681i, u_input.a.x)), func_1(min(u_input.c, u_input.b)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-15507i, u_input.a.x, u_input.a.x), abs(vec3<i32>(2738i, 30985i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, 34651i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), ~(max(vec3<i32>(-1i, u_input.a.x, -23122i), vec3<i32>(30793i, 37497i, 44961i)) ^ (vec3<i32>(u_input.a.x, -63061i, 0i) & vec3<i32>(-8848i, -9555i, -26769i)))));
    let var_2 = Struct_1(select(!func_4(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)).b, func_4(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(10962i, -17442i, u_input.a.x))).b, false), vec2<bool>(!var_1.b.x, false), vec4<f32>(1879f, func_4(vec3<i32>(u_input.a.x ^ 55132i, u_input.a.x, ~var_1.a)).d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_vec4_f32(func_2(Struct_2(-39795i, vec3<bool>(false, var_1.c.b.x, var_1.c.b.x), var_1.c, var_1.d, vec3<f32>(1447f, 284f, 2253f)))).x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1849f + var_1.d.x) + _wgslsmith_div_f32(var_1.e.x, 895f)), var_1.e.x))));
    global1 = array<Struct_2, 14>();
    global0 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(func_4(vec3<i32>(var_1.a, 35002i, var_1.a)))).x, var_0.x, true)), _wgslsmith_f_op_f32(trunc(var_0.x))), ~(~u_input.b), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, u_input.e.x), ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.e.x))), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 4294967295u, u_input.e.x, 13443u), vec4<u32>(9326u, 577u, u_input.e.x, u_input.d.x), select(vec4<bool>(var_1.c.a.x, false, var_2.b.x, false), vec4<bool>(false, var_1.b.x, var_2.a.x, true), vec4<bool>(false, var_2.a.x, var_1.b.x, var_2.b.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 57568u, 84198u, 0u), vec4<u32>(1u, 1u, u_input.b, u_input.c) | vec4<u32>(27772u, 0u, 1u, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.e.x, 1u, u_input.c), vec4<u32>(u_input.e.x, u_input.c, 0u, 86181u)))));
}

