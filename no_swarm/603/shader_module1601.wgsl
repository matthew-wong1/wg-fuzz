struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_3(vec4<i32>(0i, 40801i, -35098i, 59095i), -842f, Struct_1(-1057f, vec2<bool>(false, true), 47908i, 305f), vec2<u32>(17259u, 31501u)), vec3<f32>(669f, 1781f, 330f), Struct_1(710f, vec2<bool>(true, false), 1i, -301f), -442f, Struct_1(768f, vec2<bool>(true, false), -1i, -593f)), Struct_4(Struct_3(vec4<i32>(-1i, -3749i, 16082i, -10864i), 1607f, Struct_1(1040f, vec2<bool>(false, false), -36416i, 1607f), vec2<u32>(44740u, 58534u)), vec3<f32>(1000f, -303f, -763f), Struct_1(-380f, vec2<bool>(true, true), i32(-2147483648), -2187f), 570f, Struct_1(-1965f, vec2<bool>(false, false), i32(-2147483648), -1464f)), Struct_4(Struct_3(vec4<i32>(-38335i, -1i, 0i, -18407i), -979f, Struct_1(824f, vec2<bool>(false, true), 2147483647i, 2584f), vec2<u32>(1u, 15500u)), vec3<f32>(707f, 507f, -543f), Struct_1(-156f, vec2<bool>(true, true), 43365i, 435f), -1956f, Struct_1(239f, vec2<bool>(false, true), 52323i, 237f)), Struct_4(Struct_3(vec4<i32>(-1i, i32(-2147483648), -1i, -51556i), 1572f, Struct_1(-1002f, vec2<bool>(true, false), -7155i, -553f), vec2<u32>(49157u, 36349u)), vec3<f32>(399f, 643f, -919f), Struct_1(1436f, vec2<bool>(true, true), 0i, -1000f), -1120f, Struct_1(304f, vec2<bool>(false, true), -1704i, -742f)), Struct_4(Struct_3(vec4<i32>(0i, 22417i, 2147483647i, -55476i), 687f, Struct_1(192f, vec2<bool>(true, false), -12655i, 2516f), vec2<u32>(1u, 0u)), vec3<f32>(-235f, -897f, -448f), Struct_1(-788f, vec2<bool>(false, true), 4745i, -120f), 490f, Struct_1(-985f, vec2<bool>(false, true), 20227i, -2269f)), Struct_4(Struct_3(vec4<i32>(-177i, i32(-2147483648), 0i, 1i), -1097f, Struct_1(917f, vec2<bool>(true, true), -6490i, 695f), vec2<u32>(29114u, 0u)), vec3<f32>(-2404f, -167f, 1397f), Struct_1(-1000f, vec2<bool>(true, false), i32(-2147483648), 664f), 1000f, Struct_1(-241f, vec2<bool>(false, true), -25733i, -876f)), Struct_4(Struct_3(vec4<i32>(50833i, -19082i, 2147483647i, -6146i), 1488f, Struct_1(-1251f, vec2<bool>(false, true), 0i, -251f), vec2<u32>(1467u, 8838u)), vec3<f32>(254f, 723f, -763f), Struct_1(1205f, vec2<bool>(false, true), -1i, 1420f), 803f, Struct_1(-732f, vec2<bool>(false, false), -1i, 935f)), Struct_4(Struct_3(vec4<i32>(16088i, i32(-2147483648), i32(-2147483648), -36389i), 999f, Struct_1(1086f, vec2<bool>(false, true), i32(-2147483648), 1862f), vec2<u32>(37241u, 36048u)), vec3<f32>(615f, -1572f, 821f), Struct_1(-184f, vec2<bool>(true, false), 51524i, -686f), -263f, Struct_1(-647f, vec2<bool>(false, false), i32(-2147483648), -1514f)), Struct_4(Struct_3(vec4<i32>(27313i, 34066i, -38209i, 0i), 425f, Struct_1(1676f, vec2<bool>(false, true), -26450i, -391f), vec2<u32>(4294967295u, 15437u)), vec3<f32>(-1000f, -1467f, -1000f), Struct_1(1111f, vec2<bool>(true, false), 0i, -641f), -1333f, Struct_1(-1000f, vec2<bool>(false, false), -1i, 1511f)), Struct_4(Struct_3(vec4<i32>(-35532i, -2124i, -1i, 1i), 1115f, Struct_1(-468f, vec2<bool>(true, false), 1i, 2521f), vec2<u32>(74220u, 4294967295u)), vec3<f32>(-1318f, 480f, 790f), Struct_1(613f, vec2<bool>(false, false), 0i, 1929f), 1529f, Struct_1(290f, vec2<bool>(false, true), -18684i, -756f)), Struct_4(Struct_3(vec4<i32>(1i, -9211i, 2147483647i, 0i), -102f, Struct_1(-2921f, vec2<bool>(false, true), i32(-2147483648), -695f), vec2<u32>(93704u, 7076u)), vec3<f32>(1000f, -553f, 797f), Struct_1(-894f, vec2<bool>(true, false), 2147483647i, -579f), 629f, Struct_1(229f, vec2<bool>(false, false), -340i, -1953f)));

var<private> global2: array<f32, 5>;

var<private> global3: Struct_3;

var<private> global4: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = global3.c.b.x && any(select(select(!arg_0.c, !vec3<bool>(global3.c.b.x, false, false), vec3<bool>(arg_0.b.b.x, false, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, arg_0.c.x), vec3<bool>(true, false, false)), arg_0.c, vec3<bool>(false, global3.c.b.x, arg_0.a.b.x)), arg_0.c));
    global0 = i32(-1i) * -20296i;
    var var_1 = Struct_4(Struct_3(vec4<i32>(-firstLeadingBit(global3.c.c), -_wgslsmith_add_i32(14737i, arg_3), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.b.c), global3.a.wy), firstTrailingBit(global3.c.c) ^ -1i), _wgslsmith_f_op_f32(max(arg_1.x, global2[_wgslsmith_index_u32(global3.d.x, 5u)])), Struct_1(_wgslsmith_f_op_f32(sign(-1044f)), arg_0.c.xx, -16431i, global3.b), abs(global3.d)), vec3<f32>(global2[_wgslsmith_index_u32(0u, 5u)], -613f, -1000f), Struct_1(_wgslsmith_f_op_f32(sign(arg_0.b.a)), !select(global3.c.b, vec2<bool>(var_0, arg_0.c.x), true), arg_2, global2[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_f_op_f32(483f * 1f), Struct_1(1f, !select(vec2<bool>(var_0, global3.c.b.x), select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), arg_0.d.b.x), all(vec3<bool>(true, global3.c.b.x, var_0))), select(1i, 1i, true), global3.b));
    var var_2 = 0i & global3.c.c;
    global3 = Struct_3(vec4<i32>(-1i, ~_wgslsmith_mod_i32(global3.c.c, arg_0.b.c), arg_2, global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, global3.c.a))))), var_1.e, ~vec2<u32>(_wgslsmith_add_u32(1u, min(global3.d.x, var_1.a.d.x)), _wgslsmith_sub_u32(global3.d.x, ~4294967295u)));
    return 1883f;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global3 = arg_1.a;
    var var_0 = Struct_4(arg_1.a, arg_1.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-933f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - -1082f)), vec2<bool>(arg_1.c.b.x, !(!arg_1.c.b.x)), ~(~global3.c.c), -677f), arg_1.c.d, global3.c);
    let var_1 = arg_0.x;
    return Struct_2(global3.c, var_0.e, vec3<bool>(var_0.c.b.x, any(vec4<bool>(-393f >= global3.b, var_0.e.b.x, arg_1.a.d.x != arg_2, true)), all(vec3<bool>(1u > var_0.a.d.x, true, var_0.c.b.x == true))), Struct_1(387f, vec2<bool>(var_0.a.c.b.x, select(true, arg_1.a.c.b.x, true)), abs(u_input.a << (0u % 32u)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 5u)], vec2<bool>(false, var_1), global3.a.x, global2[_wgslsmith_index_u32(4294967295u, 5u)]), global3.c, select(vec3<bool>(true, arg_0.x, arg_1.e.b.x), vec3<bool>(arg_1.e.b.x, var_1, true), false), arg_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 5u)], global3.b, -522f, 569f))), reverseBits(~(-54588i)), -arg_1.a.a.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<f32> {
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(firstTrailingBit(arg_0.a.wxy)), firstTrailingBit(global3.a.zyz)), arg_0.a.yyx);
    let var_0 = func_2(func_2(!func_2(vec2<bool>(true, arg_0.c.b.x), global1[_wgslsmith_index_u32(arg_0.d.x << (64517u % 32u), 11u)], 0u).b.b, global1[_wgslsmith_index_u32(max(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(arg_0.d.x, 0u)), 1u), 11u)], _wgslsmith_mult_u32(min(global3.d.x, ~15292u), arg_0.d.x)).b.b, global1[_wgslsmith_index_u32(~global3.d.x, 11u)], ~(~firstTrailingBit(10447u) | arg_0.d.x));
    global3 = Struct_3(global3.a, global3.c.d, func_2(vec2<bool>(false, var_0.c.x), Struct_4(arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-214f, 1702f, arg_0.c.a) - vec3<f32>(arg_2.x, 612f, -1587f)))), func_2(vec2<bool>(var_0.b.b.x, true), Struct_4(arg_0, vec3<f32>(-1000f, arg_2.x, arg_2.x), arg_0.c, -104f, Struct_1(arg_0.c.a, vec2<bool>(global3.c.b.x, var_0.b.b.x), arg_1.b.c, 866f)), global3.d.x).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1164f, global3.c.a))), global3.c), (0u >> (1u % 32u)) >> (~(global3.d.x >> (52420u % 32u)) % 32u)).d, vec2<u32>(global3.d.x, _wgslsmith_add_u32(global3.d.x, _wgslsmith_sub_u32(~41435u, arg_0.d.x >> (global3.d.x % 32u)))));
    let var_1 = -(vec4<i32>(i32(-1i) * -1i, arg_1.d.c, 1i << (~arg_0.d.x % 32u), _wgslsmith_clamp_i32(u_input.a, 1i, var_0.a.c) ^ var_0.d.c) >> (select(reverseBits(~vec4<u32>(41063u, global3.d.x, 3028u, 22651u)), ~vec4<u32>(arg_0.d.x, 13746u, global3.d.x, global3.d.x), select(true | global3.c.b.x, global3.c.b.x, false)) % vec4<u32>(32u)));
    global3 = arg_0;
    return vec4<f32>(arg_0.b, arg_2.x, global3.b, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, ~4294967295u), 5u)]);
}

fn func_1(arg_0: u32) -> vec4<f32> {
    global1 = array<Struct_4, 11>();
    var var_0 = global3.c;
    let var_1 = Struct_3(vec4<i32>(-17277i, 1i, _wgslsmith_mult_i32(var_0.c, var_0.c), -7488i), -1554f, global3.c, ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(select(global3.d, vec2<u32>(1780u, global3.d.x), false), global3.d), vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), countOneBits(74304u))));
    var var_2 = var_0.c;
    global0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, var_1.c.c & 0i, var_0.c, global3.a.x)), firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), var_0.c, var_1.a.x, -2147483647i))) & global3.c.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(-var_1.a, _wgslsmith_f_op_f32(-411f * global3.b), Struct_1(-1119f, vec2<bool>(true, true), var_0.c, global2[_wgslsmith_index_u32(var_1.d.x, 5u)]), ~vec2<u32>(4294967295u, var_1.d.x)), func_2(select(vec2<bool>(true, true), global3.c.b, false), Struct_4(var_1, vec3<f32>(328f, -189f, -1530f), global3.c, global3.b, Struct_1(410f, vec2<bool>(var_1.c.b.x, true), var_0.c, -733f)), ~var_1.d.x), vec2<f32>(var_1.b, func_2(vec2<bool>(true, var_1.c.b.x), Struct_4(var_1, vec3<f32>(-792f, 944f, global2[_wgslsmith_index_u32(4294967295u, 5u)]), var_1.c, -1000f, global3.c), global3.d.x).b.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -306f;
    var var_1 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.b, 384f)) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 5u)] - global2[_wgslsmith_index_u32(24136u, 5u)])) == 925f, ((-775f != global2[_wgslsmith_index_u32(global3.d.x, 5u)]) && !global3.c.b.x) | any(select(vec3<bool>(false, global3.c.b.x, global3.c.b.x), vec3<bool>(global3.c.b.x, false, global3.c.b.x), global3.c.b.x))), !(!global3.c.b), global3.c.b.x | any(global3.c.b));
    let var_2 = global3.a.x;
    let var_3 = vec2<bool>(all(global3.c.b), !all(vec3<bool>(var_1.x & var_1.x, !var_1.x, global3.c.b.x)));
    var var_4 = ~global3.a;
    var var_5 = _wgslsmith_f_op_vec4_f32(func_1(global3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(global3.a, var_5.x, Struct_1(672f, global3.c.b, 1342i, 377f), vec2<u32>(global3.d.x, 1u)), Struct_2(global3.c, Struct_1(var_0, vec2<bool>(global3.c.b.x, global3.c.b.x), -13660i, -223f), vec3<bool>(global3.c.b.x, true, true), Struct_1(622f, vec2<bool>(var_3.x, false), u_input.a, global2[_wgslsmith_index_u32(global3.d.x, 5u)])), vec2<f32>(var_5.x, global2[_wgslsmith_index_u32(global3.d.x, 5u)]))).wyz)))), vec2<i32>(-19708i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-var_4.x, 1i), i32(-1i) * -2147483647i)), var_4.zw, ~_wgslsmith_div_u32(select(~global3.d.x, 1u, false), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.d.x, global3.d.x, global3.d.x), vec4<u32>(0u, global3.d.x, 4294967295u, 15683u)), firstTrailingBit(4294967295u))), vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-9337i), -global3.c.c), ~(~_wgslsmith_mod_i32(var_4.x, u_input.a)), _wgslsmith_div_i32(-53970i, ~var_4.x << (global3.d.x % 32u)), _wgslsmith_dot_vec4_i32(global3.a, (vec4<i32>(u_input.a, global3.c.c, -42330i, 2147483647i) | vec4<i32>(u_input.a, -20192i, global3.a.x, -2147483647i)) | vec4<i32>(17335i, 31885i, var_4.x, 0i))));
}

