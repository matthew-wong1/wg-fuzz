struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(true, true), vec4<f32>(-639f, 1557f, -351f, -527f)), Struct_1(vec2<bool>(true, false), vec4<f32>(263f, 980f, 1635f, -492f)), Struct_1(vec2<bool>(true, false), vec4<f32>(831f, 1838f, -1426f, -1000f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1511f, 730f, -388f, 1433f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-502f, 878f, 699f, -597f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1044f, -1722f, 917f, 202f)), Struct_1(vec2<bool>(true, true), vec4<f32>(911f, -1000f, 398f, 153f)), Struct_1(vec2<bool>(true, true), vec4<f32>(590f, -822f, -172f, -2278f)), Struct_1(vec2<bool>(true, true), vec4<f32>(706f, -744f, 768f, 782f)), Struct_1(vec2<bool>(false, true), vec4<f32>(1053f, -562f, 1000f, -827f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-759f, -369f, 1095f, 1000f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-771f, 120f, 1086f, 320f)), Struct_1(vec2<bool>(false, true), vec4<f32>(470f, -1341f, 1156f, -201f)), Struct_1(vec2<bool>(false, true), vec4<f32>(235f, -233f, 1880f, -1272f)), Struct_1(vec2<bool>(true, true), vec4<f32>(-543f, 1000f, 693f, -505f)), Struct_1(vec2<bool>(true, true), vec4<f32>(909f, -605f, 2450f, 792f)), Struct_1(vec2<bool>(false, false), vec4<f32>(1322f, 123f, -885f, -658f)), Struct_1(vec2<bool>(true, false), vec4<f32>(757f, -574f, -260f, -654f)), Struct_1(vec2<bool>(false, false), vec4<f32>(845f, 1790f, 978f, 591f)), Struct_1(vec2<bool>(false, true), vec4<f32>(-733f, 1224f, -437f, -189f)), Struct_1(vec2<bool>(false, false), vec4<f32>(-528f, -1644f, -828f, -524f)), Struct_1(vec2<bool>(true, true), vec4<f32>(575f, 904f, 300f, -1721f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-1421f, 1413f, 1560f, 987f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-160f, 1681f, 349f, -897f)), Struct_1(vec2<bool>(true, false), vec4<f32>(1294f, 350f, -164f, 250f)), Struct_1(vec2<bool>(true, false), vec4<f32>(-592f, 1342f, -387f, 1000f)));

var<private> global1: array<u32, 3>;

var<private> global2: array<u32, 21> = array<u32, 21>(0u, 10139u, 2648u, 11759u, 63777u, 82777u, 4294967295u, 44226u, 33041u, 0u, 2948u, 18694u, 0u, 29735u, 0u, 4059u, 0u, 4294967295u, 10029u, 67682u, 1u);

var<private> global3: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-1i, 1i, -11020i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(42155i, 26597i, 5339i), vec3<i32>(1i, -67288i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -19233i), vec3<i32>(-1i, 35135i, 10149i), vec3<i32>(2147483647i, 1577i, -27815i), vec3<i32>(-3696i, 30281i, 20695i), vec3<i32>(-1i, -84692i, 4069i), vec3<i32>(-66574i, -41279i, -29686i), vec3<i32>(12052i, -1i, 56988i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(241f - 2537f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), true & all(vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(323f, 291f, 190f, arg_0.x))))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(425f, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1450f, arg_0.x, 974f, arg_0.x) - vec4<f32>(-187f, 2591f, arg_0.x, arg_0.x))), false))), !vec4<bool>(any(vec2<bool>(true, true)) && true, true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), true)));
    let var_1 = !select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false)), true), abs(u_input.a.x) != _wgslsmith_sub_u32(1u | global1[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u));
    global3 = array<vec3<i32>, 12>();
    let var_2 = Struct_5(global0[_wgslsmith_index_u32(37032u, 26u)], arg_1, max(-vec4<i32>(3366i, arg_1, arg_1, arg_1) & (vec4<i32>(-1i) * -vec4<i32>(u_input.b, 1i, arg_1, 0i)), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), vec4<bool>(select(false, false, false), var_1.x, var_1.x, true));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-604f)) * -759f), var_2.d.yyx);
    return -1091f;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_5(Struct_1(!vec2<bool>(!arg_1.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -466f), 1209f, _wgslsmith_div_f32(-597f, 535f), 415f))), 0i, _wgslsmith_div_vec4_i32(select(~_wgslsmith_sub_vec4_i32(vec4<i32>(52671i, u_input.b, u_input.b, -13256i), vec4<i32>(0i, u_input.b, -31336i, u_input.b)), -(~vec4<i32>(9496i, -59978i, u_input.b, u_input.b)), vec4<bool>(arg_1.x == true, arg_1.x, arg_1.x & arg_1.x, false)), -vec4<i32>(u_input.b, ~(-14116i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-4148i, -10794i)), _wgslsmith_mod_i32(52443i, u_input.b))), vec4<bool>(false, true, !arg_1.x, (abs(0i) & select(-1i, u_input.b, arg_1.x)) >= (-68642i << (1u % 32u))));
    var var_1 = Struct_2(abs(var_0.c.xz), ~var_0.c.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_div_f32(1291f, _wgslsmith_div_f32(var_0.a.b.x, -434f)), -1648f, _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(-var_0.a.b.x))), 8076i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, 3147f, var_0.a.b.x)), _wgslsmith_f_op_vec3_f32(round(var_0.a.b.wzz)), arg_1)), _wgslsmith_dot_vec3_i32(var_0.c.wwy | vec3<i32>(152i, -2147483647i, var_1.b), vec3<i32>(-1i, 2147483647i, 1i))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(818f, var_0.a.b.x) - var_0.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b.x))));
    var var_3 = Struct_4(select(var_0.d.xx, select(vec2<bool>(true, true), !(!var_0.d.xz), select(vec2<bool>(true, true), select(arg_1.yx, var_0.d.xx, var_0.d.yy), select(arg_1.yx, var_0.a.a, vec2<bool>(false, true)))), vec2<bool>(all(arg_1.xy) | !var_0.a.a.x, true)));
    var var_4 = vec3<u32>(~0u, arg_0, ~0u);
    return select(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(countOneBits(38066u), 21u)], 44674u, 1u), select(min(vec4<u32>(firstTrailingBit(global2[_wgslsmith_index_u32(var_4.x, 21u)]), _wgslsmith_sub_u32(arg_0, 1025u), ~1u, var_4.x), u_input.a), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 11361u, global2[_wgslsmith_index_u32(1u, 21u)], var_4.x) << (vec4<u32>(global2[_wgslsmith_index_u32(var_4.x, 21u)], 60062u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), true), -1012f > _wgslsmith_f_op_f32(min(var_0.a.b.x, 878f)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_5 {
    var var_0 = func_2(_wgslsmith_dot_vec3_u32(~(~u_input.a.www), select(vec3<u32>(global1[_wgslsmith_index_u32(41248u, 3u)], 12323u, 1u), u_input.a.xwy, true) ^ (u_input.a.zxx | vec3<u32>(34926u, global2[_wgslsmith_index_u32(0u, 21u)], 71811u))), !vec3<bool>(true, false, -35469i > u_input.b)) | select(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(67305u, 27587u), 3u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5929u, 3u)], 21u)], 50246u), 1283u, 10309u) >> (u_input.a % vec4<u32>(32u)), vec4<u32>(max(global2[_wgslsmith_index_u32(16334u, 21u)], 29661u) & 1u, arg_0.x, countOneBits(32738u) ^ ~arg_0.x, ~(global1[_wgslsmith_index_u32(u_input.a.x, 3u)] << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 21u)], 21u)] % 32u))), false);
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a.x, var_0.x), global2[_wgslsmith_index_u32(31401u, 21u)]) ^ arg_0.x, var_0.x, 21906u, ~1u);
    let var_2 = vec3<u32>((var_0.x ^ 4294967295u) ^ 4294967295u, var_0.x, ~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(19772u, countOneBits(arg_0.x)), 4294967295u));
    global1 = array<u32, 3>();
    global0 = array<Struct_1, 26>();
    return Struct_5(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-351f, 1339f, -1409f, -1000f), vec4<f32>(-733f, -656f, -1540f, 1523f), true)) - vec4<f32>(-656f, -1351f, 1399f, -1459f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), ~u_input.b, -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -u_input.b, u_input.b, i32(-1i) * -15450i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -22388i, -45849i, u_input.b), vec4<i32>(1i, u_input.b, u_input.b, -2147483647i)), reverseBits(vec4<i32>(-17510i, u_input.b, 53999i, -49679i)))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 21>();
    let var_0 = func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x & 1u, 0u, 4294967295u, min(1u, ~4294967295u)), abs(~vec4<u32>(global2[_wgslsmith_index_u32(15561u, 21u)], 21748u, 52476u, 49858u))));
    let var_1 = func_1(max(u_input.a, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 50033u, 4294967295u), u_input.a)))).d;
    let var_2 = reverseBits(abs(-92115i));
    global0 = array<Struct_1, 26>();
    let var_3 = _wgslsmith_f_op_f32(-var_0.a.b.x);
    var var_4 = vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.yz), vec2<u32>(global2[_wgslsmith_index_u32(~14026u, 21u)], 1u)), ~_wgslsmith_dot_vec2_u32(u_input.a.xw, vec2<u32>(16345u, ~4294967295u)), u_input.a.x);
    var var_5 = u_input.a.xyz ^ ~(~(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 38378u, 7898u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1364f, 190f, -891f, var_0.a.b.x))), vec4<f32>(var_3, 1251f, -880f, -1467f)))), var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1909f, var_0.a.b.x), 730f))))));
}

