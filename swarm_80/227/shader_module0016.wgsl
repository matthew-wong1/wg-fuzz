struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1000f, -446f, -2543f, 398f, -972f, -103f, 1837f, -1665f, 768f, 474f, -1397f, -1196f, -1655f, 1328f, -955f, 1155f, 1112f, 1296f, 497f, -136f, -782f, 103f, 410f, -281f, 947f, 1568f, 975f, -1168f);

var<private> global1: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-733i, 1318i, -1i), vec3<i32>(22287i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), -11320i, 0i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(23637i, 0i, 2147483647i), vec3<i32>(-18698i, -31925i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -37248i, 0i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(0i, -1i, -24569i), vec3<i32>(34660i, 2147483647i, 1i), vec3<i32>(-1768i, 0i, -497i), vec3<i32>(0i, -21892i, i32(-2147483648)), vec3<i32>(1i, -23541i, -17720i), vec3<i32>(-15073i, -1i, i32(-2147483648)));

var<private> global2: array<f32, 27> = array<f32, 27>(1040f, -1170f, -472f, -1000f, -117f, -1348f, -191f, 1529f, -1114f, -172f, 1049f, -1902f, -108f, -952f, 573f, -178f, -1000f, -1163f, -2460f, 846f, -154f, 1085f, 1417f, -461f, -286f, -550f, 615f);

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(21936u, 1u), vec2<u32>(4294967295u, 36625u), vec2<u32>(9941u, 1u), vec2<u32>(77151u, 32900u), vec2<u32>(55800u, 0u), vec2<u32>(53330u, 2052u), vec2<u32>(4294967295u, 9163u), vec2<u32>(8703u, 5063u), vec2<u32>(1u, 4294967295u), vec2<u32>(60866u, 0u), vec2<u32>(75507u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(20939u, 4294967295u), vec2<u32>(19987u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 95704u), vec2<u32>(1u, 81020u), vec2<u32>(0u, 7951u), vec2<u32>(86752u, 0u), vec2<u32>(11615u, 57561u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = reverseBits(21504u);
    let var_1 = 4294967295u & arg_0.b.d.x;
    var var_2 = vec4<bool>(true, any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec2<bool>(true, true)))), false, all(select(vec3<bool>(true, true, select(false, true, false)), vec3<bool>(true, false, all(vec2<bool>(true, true))), true)));
    let var_3 = 0i;
    return _wgslsmith_clamp_u32(71548u, ~abs(~var_1 >> (abs(21182u) % 32u)), firstTrailingBit(countOneBits(_wgslsmith_div_u32(~arg_0.b.d.x, arg_0.b.a >> (4294967295u % 32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> Struct_4 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(func_3(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 28u)], -1197f, global2[_wgslsmith_index_u32(arg_2.x, 27u)]), arg_0, arg_1.c)), 28u)])) - -768f), arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1101f))))), Struct_1(_wgslsmith_dot_vec4_u32(arg_1.d, vec4<u32>(arg_0.a | arg_1.a, 26297u, 14104u, ~arg_1.d.x)), _wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f * arg_1.b)), -337f)), arg_1.d), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(32559u, 28u)] + -388f));
    let var_1 = -global1[_wgslsmith_index_u32(0u, 14u)];
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(422f, _wgslsmith_f_op_f32(-arg_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-330f)) * arg_1.c)))), -1245f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(min(33967u, 19907u), 28u)])))), _wgslsmith_f_op_f32(sign(arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * 1588f)) * _wgslsmith_f_op_f32(floor(arg_1.b))) + 928f));
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9860u, 27u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f - -851f) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.d.x, 27u)] - -712f)))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b * -368f)))), arg_1, var_3.x);
    return Struct_4(Struct_1(1894u, -2224f, _wgslsmith_f_op_f32(f32(-1f) * -350f), vec4<u32>(arg_1.d.x, 4294967295u, ~arg_0.d.x >> (~u_input.c.x % 32u), firstLeadingBit(arg_2.x))), Struct_1(~_wgslsmith_dot_vec3_u32(~var_0.b.d.yxw, vec3<u32>(43788u, arg_2.x, arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b))) - 1463f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, 1489f)), arg_0.d), _wgslsmith_add_vec4_u32(countOneBits(var_0.b.d), ~(~arg_0.d)), Struct_2(var_3, arg_0, _wgslsmith_f_op_f32(min(623f, 994f))), arg_0.d.ww);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = 1u;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0.b.c, 385f), global0[_wgslsmith_index_u32(arg_0.d.b.d.x << (u_input.e % 32u), 28u)], _wgslsmith_f_op_f32(floor(-221f)), _wgslsmith_f_op_f32(floor(arg_0.a.b))))), 28187i, 4294967295u);
    let var_2 = max(4503i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-25932i, 1670i, ~arg_3.x, var_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, var_1.b, arg_2.x, var_1.b), min(vec4<i32>(-1i, -2147483647i, -41600i, -23345i), vec4<i32>(-23442i, 2147483647i, -1i, arg_3.x)))), vec4<i32>(-31325i, -38004i, var_1.b | arg_2.x, -2147483647i << (u_input.a % 32u)) | vec4<i32>(reverseBits(arg_3.x), -39966i, arg_2.x, -5450i ^ arg_3.x)));
    global2 = array<f32, 27>();
    global1 = array<vec3<i32>, 14>();
    return firstTrailingBit(select(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b, u_input.b) ^ vec2<i32>(var_2, arg_2.x), min(vec2<i32>(-1i, 8701i), u_input.d)), max(vec2<i32>(-2147483647i, -315i) << (u_input.c.yz % vec2<u32>(32u)), -arg_2.yz)), 1i, !arg_1));
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    global3 = array<vec2<u32>, 23>();
    var var_0 = (vec2<i32>(0i, arg_0.x) | (select(-vec2<i32>(arg_0.x, u_input.b), -arg_0.yz, true) >> ((~u_input.c.zy >> ((vec2<u32>(u_input.a, 75081u) >> (global3[_wgslsmith_index_u32(4294967295u, 23u)] % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)))) | ~vec2<i32>(-arg_0.x, ~2147483647i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, global0[_wgslsmith_index_u32(25691u, 28u)], 789f, -1547f)))))), firstTrailingBit(arg_0.x & u_input.d.x), _wgslsmith_dot_vec3_u32(~(~(~u_input.c)), firstLeadingBit(u_input.c) >> (max(~vec3<u32>(u_input.e, 74922u, u_input.a), u_input.c) % vec3<u32>(32u))));
    let var_2 = 1i << (max(_wgslsmith_mult_u32(0u, firstTrailingBit(49745u)), 4294967295u) % 32u);
    var var_3 = ~select(vec2<u32>(68996u, select(67324u, 4294967295u, false) ^ _wgslsmith_mult_u32(u_input.e, var_1.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(~53509u, ~var_1.c), u_input.c.xx), false);
    return Struct_1(~(~0u << (abs(abs(var_1.c)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~107406u, 28u)]) + _wgslsmith_f_op_f32(-498f - -2527f)), var_1.a.x, ~(~select(vec4<u32>(u_input.a, 93842u, 4294967295u, var_3.x), vec4<u32>(var_1.c, 80300u, u_input.a, var_1.c) << (vec4<u32>(27204u, 16848u, 154107u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(false, false, true, false))));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_4(func_5(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.d.x), -u_input.d), func_4(func_2(Struct_1(u_input.a, -1699f, 290f, vec4<u32>(u_input.a, 4294967295u, 1u, 7421u)), Struct_1(u_input.c.x, 395f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], vec4<u32>(4294967295u, 4294967295u, u_input.e, 4294967295u)), vec3<u32>(u_input.e, u_input.a, u_input.e), u_input.b), true, max(global1[_wgslsmith_index_u32(u_input.e, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]), global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(31580i, -13305i, u_input.b, -2147483647i) & vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, 5170i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b) << (vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))), Struct_1(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.c.x, 0u), 4294967295u), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4104u, 0u), ~vec2<u32>(1u, u_input.c.x)), 28u)] + _wgslsmith_f_op_f32(f32(-1f) * -1534f)), 624f, _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.c.x, 16285u), vec4<u32>(1u, u_input.a, u_input.e, u_input.c.x)), vec4<u32>(0u, abs(1u), _wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.c.x), ~41835u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.a), select(vec4<u32>(19718u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.e, u_input.e, 4294967295u, 3135u), vec4<bool>(true, false, false, false))))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(abs(1u), ~u_input.a, u_input.c.x, func_2(Struct_1(61826u, global0[_wgslsmith_index_u32(u_input.a, 28u)], 513f, vec4<u32>(u_input.e, 95228u, u_input.c.x, u_input.e)), Struct_1(u_input.c.x, global2[_wgslsmith_index_u32(6490u, 27u)], -599f, vec4<u32>(u_input.c.x, u_input.a, 1u, u_input.c.x)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), u_input.d.x).e.x)), ~vec4<u32>(~u_input.e, ~u_input.c.x, u_input.e, ~41814u)), func_2(func_2(func_2(Struct_1(u_input.e, 496f, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], vec4<u32>(4548u, 0u, u_input.e, 12142u)), func_2(Struct_1(15728u, 930f, 1020f, vec4<u32>(0u, 1u, 0u, u_input.e)), Struct_1(4294967295u, global0[_wgslsmith_index_u32(29638u, 28u)], global2[_wgslsmith_index_u32(17441u, 27u)], vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a)), vec3<u32>(24560u, u_input.c.x, 4294967295u), u_input.d.x).d.b, ~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, 0i, u_input.b, -12706i))).d.b, Struct_1(u_input.a, _wgslsmith_f_op_f32(314f * -765f), global0[_wgslsmith_index_u32(~1u, 28u)], max(vec4<u32>(12883u, u_input.c.x, 60243u, 1u), vec4<u32>(4692u, 0u, 96644u, 1u))), vec3<u32>(u_input.e, u_input.a, u_input.a), firstLeadingBit(u_input.b)).b, func_2(func_2(func_5(global1[_wgslsmith_index_u32(4294967295u, 14u)]), Struct_1(u_input.a, 1000f, global2[_wgslsmith_index_u32(19364u, 27u)], vec4<u32>(31626u, 48075u, u_input.c.x, 43539u)), max(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), 0i).b, func_5(global1[_wgslsmith_index_u32(u_input.c.x, 14u)] & vec3<i32>(1i, -2147483647i, u_input.b)), u_input.c, -13924i).a, vec3<u32>(22748u, u_input.c.x, u_input.c.x), u_input.b).d, ~vec2<u32>(_wgslsmith_mult_u32(reverseBits(u_input.c.x), u_input.a), u_input.c.x));
    var var_1 = select(select(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), vec3<bool>(any(vec3<bool>(true, true, true)), -14603i == u_input.d.x, true)), select(vec3<bool>(all(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false)) & true, all(vec3<bool>(true, false, false)) & true), vec3<bool>(true || all(vec4<bool>(true, false, false, true)), true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)]) >= -2883f), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), vec3<bool>(select(true, 2147483647i <= _wgslsmith_div_i32(-2147483647i, u_input.b), true), !(!(2147483647i >= u_input.b)), any(vec2<bool>(all(vec2<bool>(true, true)), true))));
    var var_2 = _wgslsmith_f_op_f32(max(-291f, -386f));
    let var_3 = ~(~45216u);
    let var_4 = vec2<f32>(-2012f, var_0.a.b);
    return firstLeadingBit(select(vec4<i32>(max(1i, 45783i), min(~(-4376i), ~0i), u_input.b, max(-u_input.b, 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b), ~vec4<i32>(4327i, -53384i, u_input.d.x, u_input.d.x)), vec4<i32>(-47318i, u_input.d.x, -1651i, u_input.d.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x != var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 28u)] - global0[_wgslsmith_index_u32(95953u, 28u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24812u, 28u)]), -1486f, global2[_wgslsmith_index_u32(u_input.e, 27u)])))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(~u_input.c.x, 14u)]), u_input.b, firstLeadingBit(u_input.d.x), -(~(-58250i))), func_1());
    var var_2 = vec4<f32>(615f, global0[_wgslsmith_index_u32(~u_input.a, 28u)], global2[_wgslsmith_index_u32(~(~(~u_input.e)), 27u)], _wgslsmith_f_op_f32(sign(964f)));
    var var_3 = func_2(Struct_1(1858u, _wgslsmith_div_f32(742f, 524f), global0[_wgslsmith_index_u32(~(u_input.c.x ^ u_input.e), 28u)], ~(~(vec4<u32>(u_input.a, 16947u, u_input.e, u_input.c.x) >> (vec4<u32>(45712u, u_input.a, u_input.a, 1u) % vec4<u32>(32u))))), func_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-8852i, -var_1, max(2147483647i, u_input.b)), vec3<i32>(abs(var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(-45413i, u_input.d.x, 7232i, u_input.b), vec4<i32>(var_1, u_input.d.x, -2147483647i, -3406i)), firstTrailingBit(-39719i)), ~(global1[_wgslsmith_index_u32(1u, 14u)] >> (u_input.c % vec3<u32>(32u))))), ~(~u_input.c), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, u_input.d.x, 56122i), vec3<i32>(7085i, var_1, 40444i)) >> (51866u % 32u), min(53763i, var_1) << (firstLeadingBit(u_input.c.x) % 32u)))).d;
    var var_4 = func_2(var_3.b, func_5(vec3<i32>(var_1, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), _wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(2147483647i, var_1))), _wgslsmith_dot_vec2_i32(vec2<i32>(-6953i, 50154i), vec2<i32>(u_input.b, -21095i)))), firstLeadingBit(_wgslsmith_add_vec3_u32(var_3.b.d.xww, var_3.b.d.xwy)), 5899i);
    let var_5 = (1u | ~u_input.e) >= var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_3.b.a, 27u)], var_4.a.c, var_5))), _wgslsmith_div_f32(func_2(Struct_1(0u, global2[_wgslsmith_index_u32(1u, 27u)], -1208f, var_4.a.d), Struct_1(var_3.b.a, var_3.c, global2[_wgslsmith_index_u32(1u, 27u)], var_4.d.b.d), var_3.b.d.xxy, 2147483647i).a.b, var_3.a.x), -695f), var_5)), firstTrailingBit(var_4.d.b.d.xz) & ~vec2<u32>(~12443u, reverseBits(var_3.b.a)), vec4<f32>(-673f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1906f, 155f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1766f, var_2.x)), _wgslsmith_f_op_f32(select(1876f, var_3.a.x, false)))), -706f));
}

