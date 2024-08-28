struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(697f, -1000f), vec2<f32>(-3113f, 1134f), vec2<f32>(-880f, 219f), vec2<f32>(-832f, -1000f), vec2<f32>(-768f, -737f), vec2<f32>(-2252f, 755f), vec2<f32>(919f, 560f), vec2<f32>(-1603f, -2297f), vec2<f32>(274f, 492f), vec2<f32>(-463f, -1000f), vec2<f32>(-193f, -257f), vec2<f32>(1639f, 401f), vec2<f32>(1000f, -217f), vec2<f32>(1548f, 1586f), vec2<f32>(1279f, -1000f), vec2<f32>(1482f, -874f), vec2<f32>(1742f, -1000f), vec2<f32>(851f, 134f), vec2<f32>(289f, 259f), vec2<f32>(908f, -522f), vec2<f32>(-1844f, -269f), vec2<f32>(-1000f, -1000f), vec2<f32>(647f, 1000f), vec2<f32>(1115f, 1116f));

var<private> global1: array<u32, 18> = array<u32, 18>(61939u, 4294967295u, 17860u, 23373u, 12520u, 0u, 6036u, 4294967295u, 60243u, 59592u, 4294967295u, 22524u, 0u, 5542u, 0u, 23407u, 36421u, 2016u);

var<private> global2: array<bool, 29> = array<bool, 29>(false, false, true, true, true, true, false, true, false, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, true, false, false, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    global1 = array<u32, 18>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-40059i, u_input.b, u_input.b, u_input.b)), abs(-vec4<i32>(u_input.b, u_input.b, -9679i, u_input.b))), min(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, -71326i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -8785i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, -26777i, u_input.b), vec4<i32>(u_input.b, u_input.b, -33600i, -9198i)), -vec4<i32>(1i, u_input.b, u_input.b, -57830i)))), u_input.b, -2147483647i);
    var var_1 = vec3<i32>(~var_0.x, 15882i, u_input.b);
    return ~(~abs(var_0.zz ^ abs(var_0.zx)));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(-arg_0.x))))), ~(firstLeadingBit(vec2<i32>(-29777i, u_input.b)) ^ -func_3()), vec2<bool>(!(!all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 29u)], true, true))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, global2[_wgslsmith_index_u32(17332u, 29u)]), global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 29u)]), any(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 29u)], global2[_wgslsmith_index_u32(4059u, 29u)], true, false))))), 645f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44792u, 18u)], 29u)]);
    var var_1 = _wgslsmith_sub_i32(-17006i, func_3().x & select(-74294i, u_input.b, true));
    global0 = array<vec2<f32>, 24>();
    return 312f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -556f), -firstTrailingBit(vec2<i32>(countOneBits(-1i), ~0i)), vec2<bool>(arg_1.c.x, arg_0.e), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(floor(arg_0.d)))))), 103f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1125f * _wgslsmith_div_f32(-2286f, 1361f)) + arg_0.a));
    global2 = array<bool, 29>();
    let var_1 = Struct_2(!(!all(vec2<bool>(false, arg_0.c.x))) | true, 412f);
    var var_2 = vec4<bool>(all(!arg_1.c) & global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(19083u, 18u)], u_input.a.x) | vec2<u32>(35205u, u_input.c.x), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)))), 18u)], 18u)], 29u)], -546f <= var_1.b, false, any(vec3<bool>(all(select(vec2<bool>(arg_1.e, arg_0.c.x), vec2<bool>(true, arg_1.e), true)), _wgslsmith_div_f32(-1385f, 261f) >= _wgslsmith_f_op_f32(var_1.b + arg_1.a), true)));
    var_2 = !(!select(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 29u)], false, var_1.a), vec4<bool>(!arg_0.c.x, false, true, true), true));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = -414f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0)), var_0))), arg_0.b, arg_0.c, -939f, select(true, !any(select(vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 29u)], arg_0.e, global2[_wgslsmith_index_u32(50004u, 29u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(4148u, 29u)], false))), select(arg_0.e, true, arg_0.e)));
    var var_2 = Struct_2(any(!(!select(vec4<bool>(var_1.e, true, true, global2[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(arg_0.c.x, false, true, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1820f))));
    var var_3 = -reverseBits(-45478i);
    var_2 = Struct_2(global2[_wgslsmith_index_u32(~u_input.a.x, 29u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1995f - var_0), func_4(Struct_1(arg_0.a, var_1.b, var_1.c, -229f, false), arg_0).a))))));
    return Struct_2(any(select(func_4(Struct_1(var_2.b, vec2<i32>(arg_0.b.x, 1i), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(23674u, 29u)]), -461f, var_1.e), Struct_1(arg_0.d, var_1.b, arg_0.c, var_1.a, true)).c, var_1.c, vec2<bool>(var_1.e, true))), -1305f);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = array<bool, 29>();
    global2 = array<bool, 29>();
    let var_0 = func_5(func_4(Struct_1(193f, -(arg_0.b & vec2<i32>(-16543i, u_input.b)), select(vec2<bool>(false, global2[_wgslsmith_index_u32(55335u, 29u)]), arg_0.c, !arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1869f))), false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(428f + arg_0.d) * _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(822u, 18u)], 24u)]))), ~arg_0.b, select(arg_0.c, !arg_0.c, !arg_0.e), _wgslsmith_f_op_f32(-arg_0.a), select(true, global2[_wgslsmith_index_u32(u_input.c.x, 29u)], !arg_0.c.x))));
    global1 = array<u32, 18>();
    var var_1 = !select(any(vec3<bool>(all(vec4<bool>(arg_0.c.x, true, var_0.a, var_0.a)), func_5(Struct_1(-565f, vec2<i32>(arg_0.b.x, u_input.b), arg_0.c, arg_0.a, false)).a, !global2[_wgslsmith_index_u32(4294967295u, 29u)])), arg_0.e, !any(!arg_0.c));
    return var_0;
}

fn func_6(arg_0: Struct_2) -> i32 {
    global0 = array<vec2<f32>, 24>();
    global2 = array<bool, 29>();
    var var_0 = ~(-2147483647i);
    let var_1 = ~96152u | global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~firstTrailingBit(25500u), min(0u, u_input.c.x)), ~1u), 18u)];
    var var_2 = true;
    return _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(-(~u_input.b), -(~_wgslsmith_div_i32(u_input.b, u_input.b))));
}

fn func_7(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(max(-(~vec2<i32>(-2147483647i, arg_1.x)), vec2<i32>(arg_0.x, -2147483647i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x | global1[_wgslsmith_index_u32(0u, 18u)], countOneBits(global1[_wgslsmith_index_u32(21801u, 18u)])), vec2<u32>(u_input.c.x, 21223u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(arg_0.zz, vec2<i32>(-2147483647i, abs(-2147483647i)) ^ abs(vec2<i32>(25888i, arg_1.x))));
    let var_1 = _wgslsmith_mult_vec2_u32(~u_input.a.xy, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9467u, 18u)], 18u)], u_input.c.x), vec2<u32>(13241u, u_input.a.x)) & _wgslsmith_mult_vec2_u32(u_input.a.yx, vec2<u32>(global1[_wgslsmith_index_u32(116124u, 18u)], 1u)), vec2<u32>(1u, 50676u))) ^ vec2<u32>(select(u_input.c.x, ~u_input.c.x, _wgslsmith_mod_u32(42834u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)]) >= global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(6317u, 18u)], 18u)]), ~2744u);
    global1 = array<u32, 18>();
    let var_2 = func_1(func_4(Struct_1(-854f, arg_1.zz, select(vec2<bool>(global2[_wgslsmith_index_u32(15929u, 29u)], true), vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 29u)]), var_0.x <= -76088i), _wgslsmith_f_op_f32(round(-1000f)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 18u)], 29u)]), func_4(Struct_1(_wgslsmith_f_op_f32(round(738f)), vec2<i32>(u_input.b, -30422i), vec2<bool>(true, false), _wgslsmith_f_op_f32(-579f * -467f), any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(1583u, 29u)]))), func_4(func_4(Struct_1(344f, arg_1.xx, vec2<bool>(global2[_wgslsmith_index_u32(24597u, 29u)], true), -792f, global2[_wgslsmith_index_u32(28620u, 29u)]), Struct_1(-977f, vec2<i32>(-21501i, 14859i), vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(37550u, 29u)]), -1477f, global2[_wgslsmith_index_u32(1u, 29u)])), func_4(Struct_1(1774f, arg_0.yy, vec2<bool>(global2[_wgslsmith_index_u32(93854u, 29u)], global2[_wgslsmith_index_u32(27164u, 29u)]), 251f, false), Struct_1(1000f, vec2<i32>(26459i, 30336i), vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 29u)]), 818f, true))))));
    global2 = array<bool, 29>();
    return func_4(func_4(func_4(func_4(Struct_1(-1185f, arg_0.yz, vec2<bool>(global2[_wgslsmith_index_u32(26585u, 29u)], var_2.a), var_2.b, var_2.a), Struct_1(var_2.b, arg_0.xx, vec2<bool>(var_2.a, var_2.a), var_2.b, false)), Struct_1(var_2.b, vec2<i32>(1i, arg_0.x), !vec2<bool>(true, var_2.a), var_2.b, true)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1066f * var_2.b))), -vec2<i32>(417i, arg_0.x), !(!vec2<bool>(var_2.a, global2[_wgslsmith_index_u32(0u, 29u)])), var_2.b, true)), func_4(Struct_1(452f, _wgslsmith_div_vec2_i32(select(vec2<i32>(-11548i, 70496i), arg_1.yx, var_2.a), arg_1.xx), !vec2<bool>(false, var_2.a), var_2.b, false), Struct_1(-1000f, _wgslsmith_clamp_vec2_i32(func_4(Struct_1(-650f, arg_0.wy, vec2<bool>(var_2.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2549u, 18u)], 18u)], 29u)]), var_2.b, false), Struct_1(var_2.b, arg_0.wy, vec2<bool>(var_2.a, var_2.a), var_2.b, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 29u)])).b, arg_0.yz, vec2<i32>(u_input.b, -2147483647i)), vec2<bool>(any(vec2<bool>(var_2.a, true)), func_1(Struct_1(-458f, arg_0.wy, vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 29u)], var_2.a), var_2.b, global2[_wgslsmith_index_u32(var_1.x, 29u)])).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + -886f)), u_input.b != select(arg_1.x, -19639i, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 29>();
    let var_0 = func_7(vec4<i32>(u_input.b, -1i, u_input.b, -2147483647i), vec3<i32>(func_6(func_1(Struct_1(1000f, vec2<i32>(8439i, 43165i), vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 29u)]), 224f, global2[_wgslsmith_index_u32(4294967295u, 29u)]))), ~func_3().x, 5520i));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)] >> ((18348u & ~u_input.c.x) % 32u), 24u)])));
    global0 = array<vec2<f32>, 24>();
    var var_2 = u_input.a;
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(643f, var_0.a, false)) + var_0.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-858f + var_0.a), _wgslsmith_f_op_f32(var_1.x - 1000f))))), var_0.b, !var_0.c, var_1.x, !any(vec4<bool>(var_0.c.x, global2[_wgslsmith_index_u32(1u, 29u)], var_0.c.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.b, var_0.b.x, u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0.b.x, u_input.b), vec4<i32>(u_input.b, -11145i, u_input.b, 63970i))), vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, 2147483647i, -54126i, -2147483647i), false), ~vec4<u32>(_wgslsmith_mult_u32(30649u, 66328u), var_2.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~79108u, _wgslsmith_div_u32(0u, 4294967295u)), 18u)], 18u)], (global1[_wgslsmith_index_u32(0u, 18u)] ^ 1u) & max(u_input.a.x, u_input.a.x)));
}

