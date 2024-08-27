struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<i32>(-19319i, i32(-2147483648), 3074i), vec3<bool>(true, false, true), 1082f, -1904f), Struct_1(vec3<i32>(1i, 66584i, 0i), vec3<bool>(false, false, false), -260f, -205f), Struct_1(vec3<i32>(0i, 1i, 2147483647i), vec3<bool>(true, true, false), 1395f, 116f), Struct_1(vec3<i32>(-39313i, 2147483647i, -46862i), vec3<bool>(false, false, true), -1344f, -1737f), Struct_1(vec3<i32>(-41168i, 0i, 0i), vec3<bool>(false, false, true), 821f, 321f), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), vec3<bool>(false, true, false), -261f, -1142f), Struct_1(vec3<i32>(1i, -3888i, 1i), vec3<bool>(true, false, false), -1000f, 711f), Struct_1(vec3<i32>(-29078i, 4880i, 8510i), vec3<bool>(false, false, true), -226f, 184f), Struct_1(vec3<i32>(i32(-2147483648), -7654i, 1i), vec3<bool>(false, true, true), -1876f, -248f), Struct_1(vec3<i32>(-36179i, 0i, -20537i), vec3<bool>(true, true, true), -225f, -859f), Struct_1(vec3<i32>(7129i, 23763i, -16602i), vec3<bool>(true, false, true), -1000f, 101f), Struct_1(vec3<i32>(9583i, i32(-2147483648), 2147483647i), vec3<bool>(false, true, true), -1574f, 1066f), Struct_1(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<bool>(true, true, true), -778f, -633f), Struct_1(vec3<i32>(34097i, 0i, i32(-2147483648)), vec3<bool>(false, false, true), -275f, -1671f), Struct_1(vec3<i32>(12626i, 13297i, -7250i), vec3<bool>(false, false, false), -395f, -1000f), Struct_1(vec3<i32>(0i, 31302i, -19122i), vec3<bool>(false, true, true), -2273f, 966f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -43500i), vec3<bool>(true, true, false), -230f, -1161f), Struct_1(vec3<i32>(8929i, -31457i, -19697i), vec3<bool>(false, true, false), -1756f, -422f), Struct_1(vec3<i32>(i32(-2147483648), 31776i, 25894i), vec3<bool>(true, true, false), 122f, 680f), Struct_1(vec3<i32>(-1i, -1i, -11204i), vec3<bool>(false, false, false), -2029f, -110f), Struct_1(vec3<i32>(43726i, i32(-2147483648), 1i), vec3<bool>(true, false, true), -799f, 255f), Struct_1(vec3<i32>(49237i, -51655i, i32(-2147483648)), vec3<bool>(false, true, false), -242f, 888f), Struct_1(vec3<i32>(-1i, 0i, 0i), vec3<bool>(true, true, false), -1265f, 1439f), Struct_1(vec3<i32>(-38201i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true), -161f, 1420f), Struct_1(vec3<i32>(-25614i, 1i, 1i), vec3<bool>(false, false, true), -1636f, 1000f), Struct_1(vec3<i32>(35550i, 1i, 2147483647i), vec3<bool>(true, false, false), 934f, -107f), Struct_1(vec3<i32>(64478i, -29096i, i32(-2147483648)), vec3<bool>(false, false, true), -398f, -718f), Struct_1(vec3<i32>(-41857i, -9112i, -1i), vec3<bool>(false, true, true), -1031f, 540f), Struct_1(vec3<i32>(-46345i, -187i, 2147483647i), vec3<bool>(true, false, false), 1411f, 396f), Struct_1(vec3<i32>(20168i, -9846i, 49920i), vec3<bool>(false, true, true), 531f, 656f), Struct_1(vec3<i32>(1i, 0i, -34838i), vec3<bool>(false, true, true), 1468f, 1231f), Struct_1(vec3<i32>(-8450i, -3223i, -52951i), vec3<bool>(true, false, false), -1146f, 120f));

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 1u, 34449u, 62474u), vec4<u32>(0u, 1u, 55892u, 20964u), vec4<u32>(20814u, 1u, 18204u, 4294967295u), vec4<u32>(0u, 24495u, 16916u, 67303u), vec4<u32>(23048u, 52960u, 55159u, 1u), vec4<u32>(0u, 0u, 12109u, 63813u), vec4<u32>(1u, 0u, 4294967295u, 67902u), vec4<u32>(35766u, 28939u, 26952u, 52530u), vec4<u32>(1u, 19294u, 0u, 0u), vec4<u32>(54545u, 0u, 4294967295u, 4294967295u), vec4<u32>(8983u, 4294967295u, 0u, 20616u), vec4<u32>(4294967295u, 1u, 87100u, 10506u), vec4<u32>(86304u, 1u, 67129u, 4294967295u), vec4<u32>(14645u, 0u, 55414u, 4294967295u), vec4<u32>(92443u, 93858u, 1u, 54381u), vec4<u32>(74848u, 0u, 21477u, 4294967295u), vec4<u32>(0u, 1u, 63921u, 4294967295u), vec4<u32>(24951u, 107341u, 4294967295u, 17672u), vec4<u32>(1u, 20453u, 35007u, 1u), vec4<u32>(28594u, 4294967295u, 13843u, 30091u), vec4<u32>(41666u, 24222u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 64269u), vec4<u32>(0u, 4294967295u, 51436u, 51030u), vec4<u32>(25688u, 9645u, 0u, 4294967295u), vec4<u32>(15698u, 82104u, 0u, 0u), vec4<u32>(4294967295u, 13850u, 4294967295u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(0u, 30442u, 4294967295u, 92582u));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(2147483647i, -28651i, 1i), vec3<bool>(false, true, false), 1417f, 1330f);

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_1, 32>();
    global1 = array<vec4<u32>, 28>();
    return _wgslsmith_f_op_f32(-global2.c);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(min(-29549i, i32(-1i) * -2546i), ~global2.a.x | -6393i), u_input.c.x) << (firstTrailingBit(u_input.a.x) % 32u);
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * _wgslsmith_f_op_f32(global2.d * 530f)))));
    let var_3 = Struct_1(reverseBits(vec3<i32>(-1i, u_input.c.x, ~var_0)), global2.b, global2.d, _wgslsmith_f_op_f32(global2.d + global2.d));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(716f - global2.c), -866f);
    return any(global2.b.xx);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = arg_1.x;
    global2 = global0[_wgslsmith_index_u32(~(var_0 | 28276u), 32u)];
    let var_1 = Struct_1(-reverseBits(_wgslsmith_mod_vec3_i32(firstTrailingBit(arg_0.a), global2.a)), vec3<bool>(all(!select(arg_0.b.yx, global2.b.yx, global2.b.x)), true, func_3()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(arg_0.a, vec3<bool>(true, false, arg_0.b.x), arg_0.c, arg_0.d), arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-292f)))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -611f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.d, var_1.c))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.c, -530f))), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d, 191f), vec2<f32>(var_1.d, 237f), vec2<bool>(global2.b.x, arg_0.b.x))) + _wgslsmith_div_vec2_f32(vec2<f32>(-291f, 2231f), vec2<f32>(global2.d, global2.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, 1425f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, 1240f))))) * vec2<f32>(var_1.c, _wgslsmith_div_f32(-1249f, -1000f))));
    let var_3 = _wgslsmith_dot_vec3_i32(-max(var_1.a, ~reverseBits(global2.a)), -vec3<i32>(56060i, 8161i, var_1.a.x));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(firstTrailingBit(u_input.a.x << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)));
    var var_1 = global2.b.x;
    global1 = array<vec4<u32>, 28>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1485f, 2152f, global2.c, -553f) * vec4<f32>(global2.c, global2.c, global2.c, -881f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, global2.d, global2.d, global2.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1161f, global2.c, global2.c, -508f))), true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-404f, global2.d, global2.d, _wgslsmith_f_op_f32(global2.d + -594f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(var_0, 7u)], u_input.a)), _wgslsmith_f_op_f32(func_2(Struct_1(global2.a, global2.b, 974f, 680f), vec2<u32>(u_input.b.x, u_input.a.x))), 1651f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(841f, -581f, global2.d, 517f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1379f, -383f, -1000f, -369f), vec4<f32>(569f, global2.d, -858f, global2.c))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c, -569f, global2.d, 788f))), vec4<f32>(783f, 556f, -289f, global2.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(913f, -636f, global2.c, -1761f)) + vec4<f32>(723f, 1845f, 318f, -706f)))));
    let var_3 = global0[_wgslsmith_index_u32(var_0, 32u)];
    let var_4 = select(-(global2.a.xz ^ u_input.c) | (vec2<i32>(-49151i, 1i) ^ var_3.a.yy), vec2<i32>(~1i, -2147483647i), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_3.a | abs(vec3<i32>(global2.a.x, var_4.x, 25923i)), countOneBits(var_3.a), -firstLeadingBit(vec3<i32>(u_input.c.x, -63769i, var_4.x))), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, u_input.c.x, var_3.a.x), vec3<i32>(2147483647i >> (var_0 % 32u), u_input.c.x & global2.a.x, var_4.x))));
}

