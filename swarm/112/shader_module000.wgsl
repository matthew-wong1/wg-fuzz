struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(2147483647i, -5532i, 2147483647i), false, vec3<i32>(-40509i, -14622i, -32318i), vec4<f32>(223f, -1000f, -631f, -521f), vec2<f32>(1309f, 1083f));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 73920u);

var<private> global2: vec2<i32> = vec2<i32>(0i, 0i);

var<private> global3: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(23676i, -47277i), vec2<i32>(42235i, -56896i), vec2<i32>(-63739i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(7913i, -55400i), vec2<i32>(29763i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(1i, 11269i), vec2<i32>(i32(-2147483648), 12884i), vec2<i32>(7492i, -58165i), vec2<i32>(-20095i, -39834i), vec2<i32>(0i, -1i), vec2<i32>(-61892i, 13525i), vec2<i32>(47496i, 0i), vec2<i32>(-4080i, 16314i), vec2<i32>(-1i, 2147483647i), vec2<i32>(36631i, i32(-2147483648)), vec2<i32>(-41878i, 3969i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-31752i, 0i), vec2<i32>(-4618i, 2147483647i), vec2<i32>(31857i, 1i), vec2<i32>(0i, 0i), vec2<i32>(-4817i, i32(-2147483648)), vec2<i32>(1i, 57347i), vec2<i32>(1i, 29320i), vec2<i32>(1i, -8686i));

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(-1i, -1i, 0i), false, vec3<i32>(0i, 38158i, 23116i), vec4<f32>(-526f, 1062f, 1830f, -656f), vec2<f32>(-1649f, -733f)), Struct_1(vec3<i32>(13644i, 55088i, i32(-2147483648)), false, vec3<i32>(0i, -2844i, 1i), vec4<f32>(1117f, -1264f, -247f, 526f), vec2<f32>(-1461f, 943f)), Struct_1(vec3<i32>(50563i, i32(-2147483648), 2147483647i), true, vec3<i32>(-1i, -5162i, 63402i), vec4<f32>(2165f, 578f, 774f, 1754f), vec2<f32>(1000f, 622f)), Struct_1(vec3<i32>(1i, 2147483647i, 1i), false, vec3<i32>(-1i, 8389i, 53972i), vec4<f32>(-1073f, -219f, 416f, -1000f), vec2<f32>(1000f, 1247f)), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), false, vec3<i32>(1i, 0i, 2147483647i), vec4<f32>(-719f, 314f, -260f, -1914f), vec2<f32>(1210f, -633f)), Struct_1(vec3<i32>(-71701i, i32(-2147483648), 41128i), true, vec3<i32>(-28558i, -5803i, 0i), vec4<f32>(-1000f, -1148f, 1851f, 453f), vec2<f32>(272f, 2273f)), Struct_1(vec3<i32>(16753i, 32734i, 2147483647i), false, vec3<i32>(-35341i, 1i, -14610i), vec4<f32>(405f, 2465f, -914f, 947f), vec2<f32>(1723f, 262f)), Struct_1(vec3<i32>(0i, -34059i, i32(-2147483648)), true, vec3<i32>(-50905i, 2147483647i, 1i), vec4<f32>(1396f, 1000f, 854f, -423f), vec2<f32>(203f, 1554f)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), false, vec3<i32>(32402i, -32560i, 17512i), vec4<f32>(-1000f, -1844f, -149f, -1011f), vec2<f32>(1000f, -245f)), Struct_1(vec3<i32>(-33696i, 14376i, -45087i), true, vec3<i32>(0i, 2147483647i, -24510i), vec4<f32>(-411f, -438f, -763f, -992f), vec2<f32>(-1000f, 1116f)), Struct_1(vec3<i32>(-12822i, -1i, 5395i), true, vec3<i32>(-47493i, 2147483647i, 2147483647i), vec4<f32>(1502f, 176f, 147f, 251f), vec2<f32>(-1000f, 490f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), false, vec3<i32>(845i, 1i, 6126i), vec4<f32>(977f, 897f, -1000f, -1372f), vec2<f32>(-1617f, 450f)), Struct_1(vec3<i32>(i32(-2147483648), -7437i, -15685i), false, vec3<i32>(2241i, -6522i, 39391i), vec4<f32>(-1057f, 272f, -2125f, 1444f), vec2<f32>(168f, -2509f)), Struct_1(vec3<i32>(-2210i, -22325i, -1i), false, vec3<i32>(0i, -39503i, 1i), vec4<f32>(-349f, -1000f, -755f, 1339f), vec2<f32>(862f, 120f)), Struct_1(vec3<i32>(-1i, -45065i, 13609i), true, vec3<i32>(-25024i, 914i, 1i), vec4<f32>(841f, 268f, 1290f, -114f), vec2<f32>(1102f, 1000f)), Struct_1(vec3<i32>(-50490i, -1i, i32(-2147483648)), true, vec3<i32>(10895i, 2147483647i, 1i), vec4<f32>(-647f, 2076f, -337f, -1497f), vec2<f32>(1526f, -761f)), Struct_1(vec3<i32>(0i, -14855i, -5795i), false, vec3<i32>(0i, -8008i, -22660i), vec4<f32>(834f, -235f, -1283f, 1795f), vec2<f32>(-319f, -859f)), Struct_1(vec3<i32>(41370i, -4422i, 1i), true, vec3<i32>(-1i, 0i, 0i), vec4<f32>(-1695f, 1716f, -387f, 810f), vec2<f32>(-202f, -1034f)), Struct_1(vec3<i32>(0i, 19401i, -22989i), false, vec3<i32>(33551i, 2147483647i, 0i), vec4<f32>(-1415f, -1039f, -313f, -249f), vec2<f32>(-1112f, 1624f)), Struct_1(vec3<i32>(-14892i, 39912i, 1i), true, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec4<f32>(593f, 353f, 249f, 1003f), vec2<f32>(-239f, 1000f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    global2 = -(~(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-20498i, 1i, arg_2.c.x, global0.a.x)), 41844i) << (~firstLeadingBit(u_input.b) % vec2<u32>(32u))));
    var var_0 = Struct_1(min(~(-vec3<i32>(-1i, global2.x, global2.x)) & -vec3<i32>(0i, arg_2.c.x, 0i), select(global0.c, reverseBits(vec3<i32>(-1i, global0.a.x, 11740i)), select(vec3<bool>(arg_1.b, arg_3.x, arg_1.b), !arg_3.zwx, true))), arg_3.x, arg_2.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.d))), _wgslsmith_f_op_vec2_f32(global0.e * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(540f, 680f)) + _wgslsmith_f_op_vec2_f32(arg_0 - global0.d.zw)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, -1423f) - vec2<f32>(-529f, arg_0.x)))));
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, -65705i), -11909i);
}

fn func_2() -> u32 {
    var var_0 = global0.a.x;
    let var_1 = Struct_1(vec3<i32>(abs(-12258i), reverseBits(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, -499f)), Struct_1(vec3<i32>(2147483647i, u_input.a.x, -2147483647i), global0.b, u_input.a.xzy, vec4<f32>(-1292f, global0.d.x, 1000f, global0.e.x), vec2<f32>(-146f, -196f)), global4[_wgslsmith_index_u32(4294967295u, 20u)], vec4<bool>(global0.b, false, true, true))), firstLeadingBit(~_wgslsmith_clamp_i32(u_input.a.x, u_input.c, -1i))), !global0.b, vec3<i32>(global0.a.x, ~global0.a.x, -2147483647i), global0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1164f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, _wgslsmith_f_op_f32(-934f * global0.e.x)))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)) + var_1.e.x) + global0.e.x)));
    let var_3 = _wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(~(~(~4294967295u)), _wgslsmith_div_u32(~(~11745u), max(35325u, global1.x) ^ global1.x)));
    var var_4 = Struct_1(var_1.a & vec3<i32>(firstLeadingBit(20735i) >> ((var_3 | 1u) % 32u), _wgslsmith_sub_i32(53787i, ~(-1i)), global0.a.x), 4294967295u <= min(_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(62195u, 4294967295u)), u_input.b.x), abs(vec3<i32>(9792i, u_input.c, abs(global0.c.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f + -993f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, var_1.e.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(sign(-1731f)))));
    return 7033u;
}

fn func_1() -> Struct_1 {
    let var_0 = global0.d.zz;
    global4 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, func_2(), u_input.b.x, 1u), ~firstTrailingBit(vec4<u32>(~global1.x, firstTrailingBit(u_input.b.x), 0u, ~u_input.b.x)));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(global1.x, var_1.x), u_input.b) >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~var_1.xw, min(u_input.b, vec2<u32>(global1.x, 1u)))), ~select(22132u, global1.x, all(vec4<bool>(global0.b, false, global0.b, global0.b)))), firstLeadingBit(vec3<u32>(firstTrailingBit(4294967295u), ~u_input.b.x, ~1u) ^ vec3<u32>(5779u, 0u, u_input.b.x))), 20u)];
    global4 = array<Struct_1, 20>();
    return Struct_1(countOneBits(~abs(vec3<i32>(var_2.c.x, 24615i, 0i) & vec3<i32>(u_input.a.x, var_2.c.x, -1i))), global0.b, (-vec3<i32>(global2.x, 16730i, -62488i) << (~var_1.wzz % vec3<u32>(32u))) & vec3<i32>(11253i, min(global0.c.x, global2.x), -1i), global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2.e + vec2<f32>(var_2.d.x, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-742f, -677f) * vec2<f32>(var_0.x, 222f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1();
    global3 = array<vec2<i32>, 27>();
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, _wgslsmith_mod_u32(~(~0u), func_2())), _wgslsmith_mult_vec3_u32(min(vec3<u32>(~1080u, 1489u, ~global1.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, global1.x), reverseBits(vec3<u32>(78037u, global1.x, 4294967295u)), vec3<u32>(19867u, 33202u, global1.x) | vec3<u32>(41176u, global1.x, 4294967295u))), ~countOneBits(max(vec3<u32>(0u, global1.x, 34883u), vec3<u32>(global1.x, 4294967295u, u_input.b.x)))));
    let var_3 = ~select(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_2.x), vec2<u32>(u_input.b.x, global1.x)), _wgslsmith_mod_u32(var_2.x & var_2.x, 52810u)), ~select(global1.yz & u_input.b, _wgslsmith_mult_vec2_u32(var_2.xx, vec2<u32>(31619u, global1.x)), global0.b), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.e * vec2<f32>(-656f, global0.e.x)), -firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-57293i, 1i, var_1.c.x, u_input.a.x), u_input.a >> (vec4<u32>(19235u, 1u, u_input.b.x, 1u) % vec4<u32>(32u)))), var_0.d, var_2);
}

