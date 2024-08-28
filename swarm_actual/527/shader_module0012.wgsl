struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec2<f32>(-582f, -142f), vec4<bool>(false, false, true, true), 77575u, vec4<u32>(34095u, 4294967295u, 4294967295u, 4294967295u)), vec3<f32>(-1757f, -1000f, 1137f)), Struct_2(Struct_1(vec2<f32>(587f, 1000f), vec4<bool>(true, false, true, true), 0u, vec4<u32>(4294967295u, 38634u, 1u, 4294967295u)), vec3<f32>(-891f, -1266f, 1000f)), Struct_2(Struct_1(vec2<f32>(2877f, 1752f), vec4<bool>(false, true, false, false), 0u, vec4<u32>(0u, 1u, 0u, 71978u)), vec3<f32>(806f, 639f, -2175f)), Struct_2(Struct_1(vec2<f32>(-1645f, -774f), vec4<bool>(true, true, false, false), 0u, vec4<u32>(55723u, 584u, 51976u, 31633u)), vec3<f32>(1721f, -1103f, -2025f)), Struct_2(Struct_1(vec2<f32>(1396f, -981f), vec4<bool>(true, false, true, true), 44404u, vec4<u32>(0u, 1u, 0u, 36636u)), vec3<f32>(578f, -2185f, 309f)), Struct_2(Struct_1(vec2<f32>(188f, 1336f), vec4<bool>(true, true, true, false), 45097u, vec4<u32>(4294967295u, 16614u, 46013u, 4294967295u)), vec3<f32>(-1506f, 335f, -443f)), Struct_2(Struct_1(vec2<f32>(-693f, 1152f), vec4<bool>(false, false, false, false), 34134u, vec4<u32>(0u, 22870u, 1u, 1u)), vec3<f32>(1769f, -493f, 1907f)), Struct_2(Struct_1(vec2<f32>(2367f, -1620f), vec4<bool>(false, false, true, true), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 1u, 11012u)), vec3<f32>(817f, -734f, -631f)), Struct_2(Struct_1(vec2<f32>(1254f, -341f), vec4<bool>(false, false, false, true), 6177u, vec4<u32>(38447u, 4294967295u, 36024u, 4294967295u)), vec3<f32>(-329f, 169f, 780f)), Struct_2(Struct_1(vec2<f32>(220f, -1488f), vec4<bool>(true, false, false, true), 4294967295u, vec4<u32>(0u, 1u, 825u, 11647u)), vec3<f32>(-251f, 345f, 450f)), Struct_2(Struct_1(vec2<f32>(444f, 593f), vec4<bool>(false, true, true, false), 42722u, vec4<u32>(8837u, 4294967295u, 51338u, 4294967295u)), vec3<f32>(-936f, 521f, 891f)), Struct_2(Struct_1(vec2<f32>(1000f, -192f), vec4<bool>(false, false, false, true), 1u, vec4<u32>(4294967295u, 0u, 1u, 0u)), vec3<f32>(-1535f, -930f, 1078f)), Struct_2(Struct_1(vec2<f32>(125f, -433f), vec4<bool>(true, true, true, true), 0u, vec4<u32>(25232u, 46277u, 0u, 1u)), vec3<f32>(-696f, 788f, -1000f)), Struct_2(Struct_1(vec2<f32>(-470f, -116f), vec4<bool>(true, true, false, true), 4294967295u, vec4<u32>(4294967295u, 23861u, 27869u, 204u)), vec3<f32>(715f, 1413f, 186f)), Struct_2(Struct_1(vec2<f32>(315f, -106f), vec4<bool>(true, true, false, false), 0u, vec4<u32>(1u, 1u, 17537u, 1u)), vec3<f32>(-893f, 320f, 1164f)), Struct_2(Struct_1(vec2<f32>(927f, -787f), vec4<bool>(true, true, true, false), 0u, vec4<u32>(30036u, 4294967295u, 1u, 36613u)), vec3<f32>(-1104f, -942f, 788f)), Struct_2(Struct_1(vec2<f32>(-1033f, -458f), vec4<bool>(false, true, true, false), 4294967295u, vec4<u32>(4294967295u, 0u, 1u, 0u)), vec3<f32>(1000f, -839f, -1057f)), Struct_2(Struct_1(vec2<f32>(977f, -186f), vec4<bool>(true, false, false, false), 1u, vec4<u32>(51399u, 10429u, 4294967295u, 10351u)), vec3<f32>(-1697f, 1168f, 1409f)), Struct_2(Struct_1(vec2<f32>(100f, -1176f), vec4<bool>(true, true, false, false), 1u, vec4<u32>(0u, 46352u, 4294967295u, 9736u)), vec3<f32>(294f, -1841f, -1000f)), Struct_2(Struct_1(vec2<f32>(1174f, -791f), vec4<bool>(false, true, true, false), 5876u, vec4<u32>(4294967295u, 18511u, 0u, 52438u)), vec3<f32>(2025f, -467f, 1000f)), Struct_2(Struct_1(vec2<f32>(-440f, 1749f), vec4<bool>(true, true, false, true), 100468u, vec4<u32>(3011u, 50107u, 25709u, 0u)), vec3<f32>(-726f, -379f, 670f)), Struct_2(Struct_1(vec2<f32>(-853f, 273f), vec4<bool>(true, false, true, true), 17513u, vec4<u32>(9134u, 0u, 49026u, 34599u)), vec3<f32>(563f, -237f, 1692f)), Struct_2(Struct_1(vec2<f32>(-646f, 751f), vec4<bool>(true, false, true, true), 19017u, vec4<u32>(4294967295u, 53471u, 0u, 3747u)), vec3<f32>(1429f, -1122f, 1033f)), Struct_2(Struct_1(vec2<f32>(-1171f, -1534f), vec4<bool>(false, true, true, true), 66410u, vec4<u32>(56850u, 0u, 9639u, 75715u)), vec3<f32>(-433f, -434f, -272f)), Struct_2(Struct_1(vec2<f32>(1651f, -1000f), vec4<bool>(false, false, true, true), 21867u, vec4<u32>(0u, 4294967295u, 4294967295u, 41712u)), vec3<f32>(-1264f, 870f, 110f)), Struct_2(Struct_1(vec2<f32>(711f, -172f), vec4<bool>(false, false, true, true), 39772u, vec4<u32>(37748u, 167104u, 4294967295u, 21693u)), vec3<f32>(107f, 158f, 1000f)), Struct_2(Struct_1(vec2<f32>(257f, 914f), vec4<bool>(true, false, true, false), 0u, vec4<u32>(6557u, 1u, 0u, 4294967295u)), vec3<f32>(-108f, 667f, 1689f)), Struct_2(Struct_1(vec2<f32>(1769f, 1052f), vec4<bool>(false, false, true, true), 41679u, vec4<u32>(126601u, 40104u, 11666u, 1u)), vec3<f32>(458f, -398f, 1343f)), Struct_2(Struct_1(vec2<f32>(321f, 1267f), vec4<bool>(false, false, false, true), 4294967295u, vec4<u32>(15512u, 13193u, 1u, 0u)), vec3<f32>(734f, 131f, -1307f)), Struct_2(Struct_1(vec2<f32>(1924f, -633f), vec4<bool>(true, false, true, false), 1u, vec4<u32>(30299u, 0u, 1u, 4294967295u)), vec3<f32>(-2192f, 1833f, -1262f)), Struct_2(Struct_1(vec2<f32>(-105f, 2568f), vec4<bool>(true, true, true, true), 1u, vec4<u32>(85024u, 4294967295u, 0u, 0u)), vec3<f32>(525f, -445f, 1450f)));

var<private> global1: array<f32, 19>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(-450f, 72103u, vec3<i32>(31339i, -21655i, -6537i), vec2<u32>(28517u, 53414u)), Struct_3(1238f, 630u, vec3<i32>(-1i, i32(-2147483648), -1i), vec2<u32>(4294967295u, 0u)), Struct_3(1477f, 84431u, vec3<i32>(2147483647i, 0i, -30806i), vec2<u32>(16011u, 68128u)), Struct_3(-299f, 64434u, vec3<i32>(0i, 21219i, -41971i), vec2<u32>(0u, 0u)), Struct_3(-492f, 1u, vec3<i32>(-1i, 1i, 26961i), vec2<u32>(0u, 50175u)), Struct_3(-1569f, 35226u, vec3<i32>(-76332i, -1i, 24299i), vec2<u32>(7748u, 4294967295u)), Struct_3(-1221f, 84984u, vec3<i32>(1i, 41991i, 0i), vec2<u32>(4294967295u, 40234u)), Struct_3(1412f, 1u, vec3<i32>(-1i, 14321i, 19430i), vec2<u32>(1u, 28513u)), Struct_3(984f, 25770u, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec2<u32>(0u, 41978u)), Struct_3(689f, 15263u, vec3<i32>(-1i, 38247i, i32(-2147483648)), vec2<u32>(46143u, 28414u)), Struct_3(320f, 70580u, vec3<i32>(2655i, -1i, -1i), vec2<u32>(34038u, 4294967295u)));

var<private> global4: array<bool, 31> = array<bool, 31>(true, true, true, false, true, false, true, true, false, true, true, true, true, false, false, false, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(-457f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, ~(~(u_input.b.x | 4294967295u))), 19u)]));
    global4 = array<bool, 31>();
    var var_1 = ~u_input.c.x;
    let var_2 = !vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x ^ ~(u_input.b.x << (0u % 32u)), 31u)], true);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(39218u, 0u), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -549f))), 1f, 759f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-601f)))))));
    return _wgslsmith_div_vec2_f32(var_3.yw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_3.yw))), var_3.xw, !vec2<bool>(global2.x, select(var_2.x, true, false)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 31>();
    global1 = array<f32, 19>();
    var var_0 = global3[_wgslsmith_index_u32(34396u, 11u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), arg_1.a.b, var_0.d.x, ~vec4<u32>(select(_wgslsmith_div_u32(1u, 4294967295u), var_0.b >> (0u % 32u), false), _wgslsmith_div_u32(u_input.a.x ^ var_0.d.x, abs(var_0.d.x)), 0u, ~4294967295u << (u_input.b.x % 32u)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.a.x, -1422f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x * 1025f)))), arg_0, (-u_input.c >> (vec3<u32>(1u, 0u, _wgslsmith_mult_u32(arg_0, var_0.b)) % vec3<u32>(32u))) >> (firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.a.d.x, 38257u, var_1.c), var_1.d.wyx << (vec3<u32>(var_0.b, 39032u, var_1.c) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~(~(~var_1.d.yy)) & vec2<u32>(~arg_0, var_0.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = u_input.b.yx;
    let var_1 = !select(vec3<bool>(select(969f >= global1[_wgslsmith_index_u32(4294967295u, 19u)], any(vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b.x, 31u)])), global2.x & true), !(!global2.x), true), vec3<bool>(global2.x, false, true || (4294967295u >= var_0.x)), true);
    var var_2 = !vec4<bool>(all(global2.xy), true, any(vec3<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, var_0.x), 31u)], true)), any(global2.xy) || true);
    global4 = array<bool, 31>();
    var var_3 = -reverseBits(-vec3<i32>(u_input.c.x, ~u_input.c.x, _wgslsmith_add_i32(arg_0.x, 53591i)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1000f + 1438f), -285f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1781f) * vec2<f32>(arg_2, arg_2))), var_1.xx)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, arg_1))))))), vec4<bool>(!all(!var_2.xy), select(var_2.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.a) >= (u_input.a.x >> (u_input.a.x % 32u)), true), true, false), u_input.a.x, vec4<u32>(abs(~12099u), 40042u, countOneBits(~var_0.x), ~1u));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    var var_0 = func_4(abs(u_input.c) ^ u_input.c, global1[_wgslsmith_index_u32(arg_0.a.d.x, 19u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(126885u, 1684u), vec2<u32>(arg_0.a.c, arg_0.a.c)), 19u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.c, 19u)])))), _wgslsmith_f_op_f32(func_2(countOneBits(1u), arg_0)))));
    let var_1 = _wgslsmith_sub_vec3_i32(u_input.c, u_input.c);
    global0 = array<Struct_2, 31>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + global1[_wgslsmith_index_u32(arg_0.a.d.x, 19u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(21887u, 19u)]))), vec3<f32>(global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), global1[_wgslsmith_index_u32(~(~0u), 19u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 19>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 31u)], -47026i & u_input.c.x)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), -1108f, global1[_wgslsmith_index_u32(u_input.b.x | u_input.a.x, 19u)]))), vec3<f32>(global1[_wgslsmith_index_u32(~(~countOneBits(u_input.a.x)), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, reverseBits(u_input.a.x & 31035u)), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)] - global1[_wgslsmith_index_u32(u_input.b.x, 19u)]) * global1[_wgslsmith_index_u32(u_input.b.x | u_input.b.x, 19u)]) * _wgslsmith_f_op_f32(610f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 19u)] - global1[_wgslsmith_index_u32(1u, 19u)])))));
    var var_1 = _wgslsmith_mult_vec2_u32(func_4(select(u_input.c, vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<bool>(true, all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 31u)], true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * -700f))) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)))).d.ww, _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx), vec2<u32>(abs(25907u), u_input.b.x)) | ~(func_4(u_input.c, -357f, global1[_wgslsmith_index_u32(4294967295u, 19u)]).d.xx << (vec2<u32>(u_input.b.x, u_input.a.x) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(49232u, 19u)], 868f, var_0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, 1000f) * vec3<f32>(var_0.x, -1000f, -1483f)))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -719f, _wgslsmith_f_op_f32(f32(-1f) * -1916f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(962f, global1[_wgslsmith_index_u32(0u, 19u)], -431f) * vec3<f32>(-859f, global1[_wgslsmith_index_u32(0u, 19u)], var_0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(267f, global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0.x))), 1192f == global1[_wgslsmith_index_u32(var_1.x, 19u)])) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], var_0.x) + vec3<f32>(var_0.x, -560f, 1323f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1048f, -514f, -122f) * vec3<f32>(338f, var_0.x, var_0.x))))))));
    var_1 = select(~vec2<u32>(max(~333u, firstLeadingBit(63072u)), min(34308u ^ u_input.b.x, 1u)), u_input.b.xz, global2.x);
    global2 = !func_4(vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), reverseBits(0i), 1i), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 25462u), 19u)] + _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(max(var_2.x, -1777f)))).b.xzz;
    let var_3 = var_1.x;
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -406f))))), var_2));
    global3 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))));
}

