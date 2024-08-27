struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<i32>(0i, 1i), vec4<f32>(-1420f, 469f, 846f, 107f), vec3<u32>(12111u, 44516u, 4294967295u), vec4<bool>(true, false, true, false), vec2<f32>(545f, 2002f)), Struct_2(vec2<i32>(-17722i, i32(-2147483648)), vec4<f32>(-811f, 1288f, -2724f, 1095f), vec3<u32>(0u, 1u, 0u), vec4<bool>(false, false, true, true), vec2<f32>(485f, 1232f)), Struct_2(vec2<i32>(-61040i, -1i), vec4<f32>(109f, 205f, 493f, -186f), vec3<u32>(78686u, 4294967295u, 59251u), vec4<bool>(false, false, true, true), vec2<f32>(-435f, -1163f)), Struct_2(vec2<i32>(-41424i, 38891i), vec4<f32>(237f, 1384f, -1980f, 317f), vec3<u32>(68201u, 0u, 28991u), vec4<bool>(true, true, false, false), vec2<f32>(-498f, 473f)), Struct_2(vec2<i32>(1i, 11845i), vec4<f32>(1357f, 829f, -546f, -684f), vec3<u32>(4294967295u, 19144u, 1u), vec4<bool>(true, true, true, false), vec2<f32>(-1013f, 579f)), Struct_2(vec2<i32>(i32(-2147483648), -11549i), vec4<f32>(456f, 829f, -763f, -1375f), vec3<u32>(10507u, 0u, 0u), vec4<bool>(true, false, true, true), vec2<f32>(-1118f, 1645f)), Struct_2(vec2<i32>(1i, 2147483647i), vec4<f32>(-457f, 738f, -371f, -1000f), vec3<u32>(4294967295u, 51755u, 1u), vec4<bool>(true, true, false, false), vec2<f32>(286f, -300f)), Struct_2(vec2<i32>(6397i, -40209i), vec4<f32>(898f, -147f, -1679f, 612f), vec3<u32>(4294967295u, 1u, 5055u), vec4<bool>(true, false, false, false), vec2<f32>(-1190f, -461f)), Struct_2(vec2<i32>(-17585i, 6091i), vec4<f32>(1419f, 977f, -1265f, 645f), vec3<u32>(4294967295u, 46603u, 15954u), vec4<bool>(false, false, true, false), vec2<f32>(-1000f, -1000f)), Struct_2(vec2<i32>(2147483647i, -9224i), vec4<f32>(-216f, -1610f, 842f, -249f), vec3<u32>(0u, 68059u, 4294967295u), vec4<bool>(true, false, false, true), vec2<f32>(105f, 215f)), Struct_2(vec2<i32>(0i, 1590i), vec4<f32>(-975f, -1097f, -1918f, -1840f), vec3<u32>(1u, 4294967295u, 68226u), vec4<bool>(false, true, true, true), vec2<f32>(206f, 526f)), Struct_2(vec2<i32>(-26044i, -42694i), vec4<f32>(1760f, -847f, -715f, 1517f), vec3<u32>(4294967295u, 16608u, 27466u), vec4<bool>(false, true, false, false), vec2<f32>(-682f, -211f)), Struct_2(vec2<i32>(-37906i, 21359i), vec4<f32>(-2067f, 1000f, 882f, 516f), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<bool>(true, true, true, false), vec2<f32>(427f, -291f)), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec4<f32>(-2112f, 361f, -1000f, -780f), vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(true, false, true, false), vec2<f32>(-1000f, -1000f)), Struct_2(vec2<i32>(-59290i, 10043i), vec4<f32>(-124f, -2371f, 803f, 231f), vec3<u32>(1u, 65828u, 0u), vec4<bool>(false, true, true, true), vec2<f32>(796f, -1503f)), Struct_2(vec2<i32>(-31713i, 62226i), vec4<f32>(-322f, -341f, 311f, -199f), vec3<u32>(0u, 6169u, 0u), vec4<bool>(false, true, false, true), vec2<f32>(-1155f, 1096f)), Struct_2(vec2<i32>(-36864i, 14101i), vec4<f32>(-422f, -1009f, 1318f, 263f), vec3<u32>(1u, 1u, 50982u), vec4<bool>(true, false, false, false), vec2<f32>(-1415f, 623f)), Struct_2(vec2<i32>(1i, 0i), vec4<f32>(114f, 1138f, 184f, -670f), vec3<u32>(26636u, 23094u, 5825u), vec4<bool>(true, false, false, false), vec2<f32>(-325f, -1672f)), Struct_2(vec2<i32>(8902i, -28622i), vec4<f32>(-512f, -325f, 744f, -1162f), vec3<u32>(4294967295u, 0u, 4294967295u), vec4<bool>(true, true, false, true), vec2<f32>(467f, 1234f)), Struct_2(vec2<i32>(1i, 10538i), vec4<f32>(-536f, -1628f, -171f, 661f), vec3<u32>(1u, 6361u, 24123u), vec4<bool>(false, false, true, true), vec2<f32>(1719f, 410f)), Struct_2(vec2<i32>(-49267i, 2147483647i), vec4<f32>(-1231f, 1189f, -558f, -280f), vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(false, false, true, false), vec2<f32>(787f, -655f)), Struct_2(vec2<i32>(0i, -17870i), vec4<f32>(1000f, 263f, -608f, 910f), vec3<u32>(84984u, 5009u, 0u), vec4<bool>(true, false, true, false), vec2<f32>(-784f, 622f)), Struct_2(vec2<i32>(48558i, 29036i), vec4<f32>(1375f, -553f, -336f, -1000f), vec3<u32>(21837u, 1u, 1u), vec4<bool>(true, false, false, false), vec2<f32>(-1169f, -151f)));

var<private> global2: array<Struct_3, 26>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> vec4<i32> {
    let var_0 = vec4<u32>(u_input.c.x, ~0u, _wgslsmith_add_u32(0u, u_input.c.x), ~(~147u));
    var var_1 = Struct_5(Struct_4(arg_0.a, arg_0.b, true, false), Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(1u, arg_1)), 23u)], Struct_2(_wgslsmith_add_vec2_i32(arg_0.a.yz, abs(vec2<i32>(1i, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, 107f, 1863f, 382f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, 830f, 464f, arg_0.b)))), vec3<u32>(~var_0.x, u_input.d >> (var_0.x % 32u), _wgslsmith_clamp_u32(28279u, 4294967295u, 72260u)), select(vec4<bool>(true, arg_0.d, false, true), vec4<bool>(arg_3, false, arg_3, arg_0.c), select(vec4<bool>(true, false, arg_3, true), vec4<bool>(true, arg_0.c, arg_0.d, false), vec4<bool>(false, arg_0.d, arg_3, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2)) * _wgslsmith_f_op_vec2_f32(max(arg_2, arg_2))))));
    let var_2 = var_1.b;
    var_1 = Struct_5(var_1.a, var_1.b);
    var var_3 = 1f;
    return ~(-reverseBits(-var_1.a.a));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 23>();
    var var_0 = Struct_5(Struct_4(~vec4<i32>(arg_2, ~arg_2, _wgslsmith_mod_i32(arg_0.a.x, arg_2), -2147483647i), arg_1.b.x, false, arg_3.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_1.c.x), 26u)]);
    var var_1 = vec2<bool>(!(2878f > _wgslsmith_f_op_f32(sign(-1083f))), !(arg_1.e.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + -1099f))));
    var_0 = Struct_5(Struct_4(vec4<i32>(i32(-1i) * -arg_0.a.x, 2147483647i, min(~(-8926i), 29381i), _wgslsmith_mult_i32(~1i, -arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - arg_0.b), all(select(!vec4<bool>(false, var_1.x, false, arg_1.d.x), !vec4<bool>(var_0.b.a.d.x, true, true, arg_3.x), select(vec4<bool>(var_1.x, true, false, false), var_0.b.b.d, var_1.x))), all(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(arg_0.c, var_1.x, arg_3.x, arg_1.d.x), any(arg_1.d.xx)))), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.b.a.c.x, u_input.d, 12224u, arg_1.c.x), vec4<u32>(var_0.b.a.c.x, u_input.d, var_0.b.b.c.x, 0u)) & abs(vec4<u32>(1u, 1u, 0u, 66711u)), firstTrailingBit(~vec4<u32>(11506u, u_input.d, 37881u, 1u)))), 26u)]);
    global1 = array<Struct_2, 23>();
    return abs(var_0.b.a.c.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = abs(func_4(Struct_4(func_3(Struct_4(vec4<i32>(1i, u_input.a.x, 38241i, u_input.b), 258f, false, true), u_input.d >> (17828u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-565f, 1071f)), false), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-163f, 1000f), 2381f, arg_0)), arg_0, !any(vec3<bool>(false, arg_0, false))), global1[_wgslsmith_index_u32(u_input.c.x, 23u)], -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) >> (vec3<u32>(69973u, 19885u, 45188u) % vec3<u32>(32u)), vec3<i32>(5675i, u_input.b, u_input.b)), vec3<bool>(!arg_0, abs(u_input.c.x) <= 4294967295u, true)));
    let var_1 = true;
    var var_2 = global2[_wgslsmith_index_u32(select(var_0 | u_input.c.x, u_input.d, false), 26u)];
    let var_3 = select(select(vec3<bool>(true, any(!vec3<bool>(true, arg_0, false)), !(var_2.b.e.x >= var_2.a.e.x)), select(select(!vec3<bool>(arg_0, arg_0, false), !var_2.a.d.zyy, !arg_0), select(var_2.a.d.wyz, var_2.a.d.zyy, select(vec3<bool>(true, var_2.b.d.x, true), vec3<bool>(arg_0, true, var_1), true)), false), false), var_2.a.d.wyw, vec3<bool>(!(!arg_0 & false), true, true & (~var_2.b.a.x < 2147483647i)));
    var_2 = global2[_wgslsmith_index_u32(82530u, 26u)];
    return global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0, var_2.b.c.x, u_input.c.x, 16649u) >> (vec4<u32>(u_input.d, 39390u, 13135u, 31356u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 8597u, var_0, u_input.d), vec4<u32>(7366u, 13762u, var_0, var_2.b.c.x) << (vec4<u32>(var_2.a.c.x, u_input.c.x, 20306u, var_0) % vec4<u32>(32u)))), 4294967295u)), 21u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global2 = array<Struct_3, 26>();
    let var_0 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(round(-1744f)), false, all(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    var var_1 = Struct_5(Struct_4(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b, arg_1)))), var_0.d, false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_2), 26u)]);
    let var_2 = vec4<u32>(~var_1.b.a.c.x, 0u, ~min(max(61632u, var_1.b.a.c.x), 1u), 73105u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1258f), 937f, var_1.a.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1417f, var_0.b)))), _wgslsmith_f_op_f32(round(arg_3.x))))));
    return 825f;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec4<i32> {
    global0 = array<Struct_1, 21>();
    var var_0 = Struct_3(Struct_2(-select(vec2<i32>(arg_1.x, -2147483647i), vec2<i32>(37094i, 2147483647i), false) & _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, arg_1.x), arg_1.zz), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(u_input.a.x, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(arg_0.x), -628f, firstLeadingBit(20769u), vec4<f32>(1612f, -1560f, 677f, -285f))), -1116f, 913f, -899f), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(0u, u_input.d, 82860u)), min(vec3<u32>(u_input.d, 50216u, 0u), vec3<u32>(22467u, 84890u, u_input.c.x))) | ~select(vec3<u32>(u_input.d, 5660u, 4294967295u), vec3<u32>(u_input.c.x, u_input.d, 6557u), arg_0), vec4<bool>(u_input.a.x < _wgslsmith_clamp_i32(5271i, 2147483647i, 16031i), select(false, true, false), false, any(select(arg_0.yx, arg_0.zy, vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1037f, 1539f)))), _wgslsmith_div_f32(1237f, _wgslsmith_f_op_f32(-436f + 664f)))), Struct_2(u_input.a.zy, vec4<f32>(357f, _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(reverseBits(u_input.d), 21u)], _wgslsmith_f_op_f32(-600f + 962f), func_4(Struct_4(vec4<i32>(-30824i, -40768i, arg_1.x, arg_1.x), 1210f, arg_0.x, arg_0.x), Struct_2(vec2<i32>(-2147483647i, u_input.b), vec4<f32>(-180f, 531f, 704f, -1581f), vec3<u32>(u_input.d, 25652u, 1u), vec4<bool>(true, false, arg_0.x, true), vec2<f32>(619f, 1073f)), -59664i, arg_0), vec4<f32>(-874f, -2507f, 1237f, 453f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -843f), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec4<bool>(false, true, !arg_0.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-185f, -1152f), _wgslsmith_f_op_vec2_f32(vec2<f32>(623f, -1140f) - vec2<f32>(-978f, 101f)), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(478f, -2316f), vec2<f32>(-2388f, 1256f), arg_0.zy))))));
    var var_1 = select(arg_0.zy, var_0.a.d.wz, vec2<bool>(arg_0.x & true, !(!all(arg_0.yz))));
    let var_2 = var_0.a.a.x;
    global2 = array<Struct_3, 26>();
    return vec4<i32>(func_2(~abs(57731u) < abs(_wgslsmith_div_u32(42573u, var_0.b.c.x))).a.x, -2147483647i, -2147483647i, arg_1.x);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.c;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 26u)];
    var_0 = true;
    var var_2 = Struct_3(var_1.a, var_1.a);
    var_2 = global2[_wgslsmith_index_u32(var_1.a.c.x, 26u)];
    return global0[_wgslsmith_index_u32(~(var_1.a.c.x << (var_2.a.c.x % 32u)), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global1 = array<Struct_2, 23>();
    let var_1 = 502f;
    global2 = array<Struct_3, 26>();
    let var_2 = func_6(Struct_4(_wgslsmith_add_vec4_i32(select(func_1(vec3<bool>(true, true, true), vec3<i32>(u_input.a.x, 0i, 17526i)), max(vec4<i32>(7292i, 16934i, u_input.a.x, -10273i), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 0i)), u_input.b <= u_input.b), func_1(vec3<bool>(false, true, false), countOneBits(u_input.a))), _wgslsmith_f_op_f32(2272f + var_1), true && (_wgslsmith_f_op_f32(min(-684f, var_1)) >= -2364f), all(vec2<bool>(true, true))));
    let var_3 = ~reverseBits(113803u);
    var var_4 = ~vec2<u32>(~u_input.c.x | ~4294967295u, _wgslsmith_mult_u32(50314u, ~min(u_input.d, 4294967295u)));
    let var_5 = func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_4.x >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u), firstLeadingBit(select(var_3, var_3, false)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, var_3), vec4<u32>(41917u, var_3, var_3, 1u))), countOneBits(~vec3<u32>(36102u, 53459u, 43130u)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d, var_3) << (vec3<u32>(22795u, var_3, 54839u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(28868u, var_3, var_4.x), vec3<u32>(1u, var_4.x, var_4.x)))), u_input.a, var_5.a);
}

