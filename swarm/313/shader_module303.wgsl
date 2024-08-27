struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(947f, 194f, -797f, 1545f), Struct_1(20899u, false, vec2<bool>(false, true), vec2<i32>(1i, -17173i), 69953u), Struct_1(25839u, true, vec2<bool>(true, false), vec2<i32>(7178i, 13715i), 4294967295u)), Struct_2(vec4<f32>(1000f, 995f, -563f, -1198f), Struct_1(0u, true, vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 36068i), 1u), Struct_1(31890u, false, vec2<bool>(true, false), vec2<i32>(0i, 1i), 12859u)), Struct_2(vec4<f32>(1000f, -407f, -1669f, 1000f), Struct_1(25508u, false, vec2<bool>(false, true), vec2<i32>(-1i, -1i), 1u), Struct_1(11940u, false, vec2<bool>(false, false), vec2<i32>(964i, -12399i), 2902u)), Struct_2(vec4<f32>(-1197f, -439f, -499f, 824f), Struct_1(15547u, true, vec2<bool>(true, false), vec2<i32>(-1i, 2147483647i), 12752u), Struct_1(9255u, false, vec2<bool>(false, true), vec2<i32>(26747i, 1i), 22576u)), Struct_2(vec4<f32>(273f, 1930f, 1422f, -1251f), Struct_1(1u, true, vec2<bool>(false, true), vec2<i32>(2147483647i, 0i), 1u), Struct_1(1u, false, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i), 0u)), Struct_2(vec4<f32>(278f, 610f, 1920f, 1204f), Struct_1(54116u, false, vec2<bool>(false, false), vec2<i32>(55342i, i32(-2147483648)), 0u), Struct_1(0u, true, vec2<bool>(true, false), vec2<i32>(-1i, 2147483647i), 1u)), Struct_2(vec4<f32>(747f, -1601f, -196f, -472f), Struct_1(0u, true, vec2<bool>(false, true), vec2<i32>(-15460i, 19766i), 0u), Struct_1(0u, true, vec2<bool>(true, true), vec2<i32>(0i, i32(-2147483648)), 1u)), Struct_2(vec4<f32>(-202f, -741f, 259f, 1252f), Struct_1(1u, false, vec2<bool>(false, true), vec2<i32>(2147483647i, 38400i), 1u), Struct_1(11722u, false, vec2<bool>(false, false), vec2<i32>(-39040i, 29605i), 4294967295u)), Struct_2(vec4<f32>(1000f, -164f, -426f, -1425f), Struct_1(1u, false, vec2<bool>(false, false), vec2<i32>(-62017i, 2147483647i), 0u), Struct_1(39439u, true, vec2<bool>(true, false), vec2<i32>(49486i, 2147483647i), 57251u)), Struct_2(vec4<f32>(1396f, 1097f, -289f, -387f), Struct_1(4294967295u, true, vec2<bool>(true, false), vec2<i32>(36224i, 0i), 84057u), Struct_1(68931u, false, vec2<bool>(false, false), vec2<i32>(-11162i, 1i), 0u)), Struct_2(vec4<f32>(-792f, -1580f, 533f, -211f), Struct_1(0u, false, vec2<bool>(true, false), vec2<i32>(-94846i, -1i), 0u), Struct_1(4294967295u, false, vec2<bool>(true, true), vec2<i32>(-11176i, 1i), 4294967295u)), Struct_2(vec4<f32>(2218f, -1504f, 1977f, -906f), Struct_1(0u, true, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 2147483647i), 4294967295u), Struct_1(55874u, true, vec2<bool>(false, true), vec2<i32>(-1i, -1i), 4294967295u)), Struct_2(vec4<f32>(723f, 680f, 1001f, 144f), Struct_1(4294967295u, false, vec2<bool>(true, false), vec2<i32>(2147483647i, 19209i), 68864u), Struct_1(6498u, true, vec2<bool>(false, false), vec2<i32>(-5581i, 1351i), 1112u)), Struct_2(vec4<f32>(1000f, 1577f, -270f, 1150f), Struct_1(4294967295u, false, vec2<bool>(true, false), vec2<i32>(0i, 5342i), 1u), Struct_1(4294967295u, false, vec2<bool>(true, true), vec2<i32>(42652i, -1i), 4294967295u)), Struct_2(vec4<f32>(880f, 270f, 1706f, 1905f), Struct_1(4294967295u, false, vec2<bool>(false, true), vec2<i32>(0i, i32(-2147483648)), 4294967295u), Struct_1(42713u, true, vec2<bool>(false, false), vec2<i32>(-46260i, -15829i), 1u)), Struct_2(vec4<f32>(376f, -705f, 303f, -1558f), Struct_1(74038u, false, vec2<bool>(false, false), vec2<i32>(-7835i, 1i), 4294967295u), Struct_1(69389u, false, vec2<bool>(true, true), vec2<i32>(-11325i, -80443i), 4294967295u)), Struct_2(vec4<f32>(694f, -791f, 1000f, -1041f), Struct_1(1u, false, vec2<bool>(false, true), vec2<i32>(-27948i, 1i), 18940u), Struct_1(4294967295u, true, vec2<bool>(true, false), vec2<i32>(-58821i, 0i), 4294967295u)), Struct_2(vec4<f32>(-472f, 927f, -700f, 777f), Struct_1(4294967295u, false, vec2<bool>(true, false), vec2<i32>(54794i, -376i), 13566u), Struct_1(70135u, true, vec2<bool>(true, false), vec2<i32>(-26207i, -1i), 53172u)), Struct_2(vec4<f32>(-413f, 443f, 502f, -332f), Struct_1(0u, true, vec2<bool>(true, true), vec2<i32>(-24285i, -1i), 7953u), Struct_1(14606u, false, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 35378i), 0u)), Struct_2(vec4<f32>(-149f, -1333f, -525f, 468f), Struct_1(13177u, true, vec2<bool>(true, false), vec2<i32>(3373i, -1i), 21581u), Struct_1(33382u, false, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), 60758u)), Struct_2(vec4<f32>(-691f, 1000f, 350f, 348f), Struct_1(11803u, false, vec2<bool>(true, true), vec2<i32>(1i, 2147483647i), 0u), Struct_1(4294967295u, false, vec2<bool>(true, true), vec2<i32>(20992i, 1i), 13800u)), Struct_2(vec4<f32>(181f, -328f, -526f, -1000f), Struct_1(14404u, false, vec2<bool>(true, false), vec2<i32>(2147483647i, i32(-2147483648)), 0u), Struct_1(37777u, true, vec2<bool>(false, false), vec2<i32>(4150i, 0i), 4294967295u)), Struct_2(vec4<f32>(-768f, -1386f, 1000f, -940f), Struct_1(4294967295u, true, vec2<bool>(true, true), vec2<i32>(-1i, -28673i), 45724u), Struct_1(1u, true, vec2<bool>(false, false), vec2<i32>(-11707i, i32(-2147483648)), 185u)), Struct_2(vec4<f32>(-1517f, 604f, -233f, 2682f), Struct_1(1u, false, vec2<bool>(true, true), vec2<i32>(6287i, 1i), 1u), Struct_1(62499u, true, vec2<bool>(false, false), vec2<i32>(-24349i, -1i), 1786u)), Struct_2(vec4<f32>(1030f, 217f, 1000f, -423f), Struct_1(0u, false, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 0i), 31016u), Struct_1(1u, true, vec2<bool>(true, true), vec2<i32>(2147483647i, -1i), 18801u)), Struct_2(vec4<f32>(-1000f, -103f, 505f, -867f), Struct_1(114228u, true, vec2<bool>(false, true), vec2<i32>(1i, -1i), 4294967295u), Struct_1(13540u, false, vec2<bool>(true, true), vec2<i32>(-65579i, 0i), 39704u)));

var<private> global2: array<vec4<u32>, 14>;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = arg_3;
    global0 = array<Struct_2, 3>();
    global1 = array<Struct_2, 26>();
    var var_1 = arg_0.c;
    let var_2 = ~(~arg_2.a);
    return true;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_3 {
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    global0 = array<Struct_2, 3>();
    var var_0 = 1i;
    global2 = array<vec4<u32>, 14>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(297f)) + _wgslsmith_f_op_f32(234f * 1428f)), _wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(-740f - -195f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 459f)) * _wgslsmith_f_op_f32(-1000f + -812f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(835f + -655f) * _wgslsmith_div_f32(-1402f, -118f)))), arg_1.d.x, global1[_wgslsmith_index_u32(u_input.b, 26u)]);
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = func_3(u_input.c, Struct_1((max(u_input.c.x, u_input.c.x) >> (_wgslsmith_mult_u32(99101u, u_input.c.x) % 32u)) | u_input.b, false, vec2<bool>(true, !func_2(Struct_3(vec4<f32>(432f, 936f, arg_0.x, arg_0.x), 41546i, global1[_wgslsmith_index_u32(43384u, 26u)]), global0[_wgslsmith_index_u32(0u, 3u)], Struct_1(u_input.b, true, vec2<bool>(false, false), u_input.a.yy, 1u), 1i)), -vec2<i32>(firstLeadingBit(u_input.a.x), u_input.a.x), 89743u));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, u_input.c) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(28852u & var_0.c.c.a, _wgslsmith_div_u32(0u, u_input.c.x)), countOneBits(~u_input.c)) % vec2<u32>(32u));
    global1 = array<Struct_2, 26>();
    var var_2 = func_3(max(select(abs(u_input.c), ~(~vec2<u32>(u_input.c.x, var_1.x)), var_0.c.c.c), u_input.c), var_0.c.b).c;
    global1 = array<Struct_2, 26>();
    return func_3(u_input.c, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.c.a, 52019u), var_1.x), 17u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~arg_2.c.c.a, 17u)];
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1489f, 121f, -1526f, -855f) - vec4<f32>(arg_2.a.x, 1714f, arg_2.a.x, arg_2.c.a.x))).a.x * 1406f) + 393f);
    global0 = array<Struct_2, 3>();
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(1i >> (arg_2.c.b.e % 32u), _wgslsmith_mult_i32(~arg_0.x, 1i)), -arg_0.x, -1i, 43960i) >> (max(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1948u, 14453u), u_input.c), 14u)], vec4<u32>(arg_2.c.c.a, 4294967295u, ~14883u, max(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(u_input.b, 14u)]), u_input.b))) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_clamp_u32(var_0.a ^ min(var_0.e, 88314u), (func_3(vec2<u32>(38440u, arg_2.c.b.a), Struct_1(0u, true, vec2<bool>(arg_1, true), arg_2.c.b.d, 1u)).c.c.e & _wgslsmith_div_u32(arg_2.c.b.e, 12541u)) << (~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(arg_2.c.b.e, 14u)], vec4<u32>(29762u, 17001u, arg_2.c.c.e, 4387u)) % 32u), reverseBits(_wgslsmith_div_u32(1u, var_0.a) | 4051u)), all(vec3<bool>(var_0.c.x || var_0.b, any(vec3<bool>(true, false, true)), var_2 > arg_2.c.a.x)) & true, arg_2.c.c.c, arg_2.c.b.d, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 14>();
    global1 = array<Struct_2, 26>();
    let var_0 = global3[_wgslsmith_index_u32(abs(u_input.c.x), 17u)];
    var var_1 = func_4(vec3<i32>(var_0.d.x & var_0.d.x, 17421i >> (_wgslsmith_add_u32(~57041u, var_0.e) % 32u), ~((var_0.d.x >> (42634u % 32u)) ^ var_0.d.x)), var_0.c.x, func_1(vec4<f32>(1f, 1f, 1f, 1f)), ~var_0.d.x);
    var var_2 = false;
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1401f, -151f)) * -238f)))), ~(~1u));
}

