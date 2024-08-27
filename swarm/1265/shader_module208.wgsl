struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<i32, 19> = array<i32, 19>(-1i, 3616i, 5269i, -1i, 2147483647i, 2147483647i, i32(-2147483648), -74174i, -20428i, -1i, 18421i, 0i, -11720i, -1i, i32(-2147483648), 0i, 8901i, 5867i, -42223i);

var<private> global2: array<u32, 4>;

var<private> global3: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(-6359i, -1i), vec2<i32>(i32(-2147483648), -45574i), vec2<i32>(5870i, -68575i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 15444i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -12316i), vec2<i32>(-29188i, 1i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 18781i), vec2<i32>(-1i, -1i), vec2<i32>(-22593i, -35557i), vec2<i32>(-42598i, 2147483647i), vec2<i32>(4569i, 2147483647i), vec2<i32>(-5944i, 34369i), vec2<i32>(-1i, -35095i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, -17169i), vec2<i32>(-1i, 6914i), vec2<i32>(28930i, 0i), vec2<i32>(22024i, 0i), vec2<i32>(-16741i, -5759i), vec2<i32>(0i, 1i));

var<private> global4: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(0u, 35815u, 1u), vec3<u32>(63424u, 33966u, 0u), vec3<u32>(41485u, 20021u, 0u), vec3<u32>(23757u, 1u, 0u), vec3<u32>(31613u, 13871u, 10237u), vec3<u32>(0u, 7002u, 0u), vec3<u32>(85176u, 38934u, 42710u), vec3<u32>(9203u, 6790u, 6192u), vec3<u32>(22956u, 25694u, 28051u), vec3<u32>(30099u, 95204u, 1u), vec3<u32>(4294967295u, 40845u, 1u), vec3<u32>(1u, 4294967295u, 16534u), vec3<u32>(12608u, 1u, 1u), vec3<u32>(56856u, 4294967295u, 34545u), vec3<u32>(69071u, 4294967295u, 79024u), vec3<u32>(41885u, 43358u, 14407u), vec3<u32>(0u, 17416u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(13606u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 74148u), vec3<u32>(1u, 4240u, 22925u), vec3<u32>(9926u, 29099u, 80873u), vec3<u32>(13970u, 0u, 36764u), vec3<u32>(4294967295u, 91538u, 3808u), vec3<u32>(32882u, 45829u, 1u), vec3<u32>(1u, 77395u, 22163u), vec3<u32>(0u, 6970u, 0u), vec3<u32>(14701u, 26130u, 225u), vec3<u32>(19256u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 1u, 24034u), vec3<u32>(1u, 88409u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_i32(reverseBits(select(-u_input.a, u_input.a, (42931i ^ global1[_wgslsmith_index_u32(0u, 19u)]) >= _wgslsmith_dot_vec3_i32(vec3<i32>(-21459i, arg_2, -1i), vec3<i32>(-40588i, 16766i, arg_2)))), u_input.a);
    global1 = array<i32, 19>();
    let var_1 = arg_1;
    global0 = array<Struct_1, 15>();
    let var_2 = global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.d, 4u)], ~u_input.e), 4u)], 32u)];
    return -632f;
}

fn func_2(arg_0: f32) -> f32 {
    global1 = array<i32, 19>();
    var var_0 = ~u_input.e;
    global3 = array<vec2<i32>, 23>();
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_2 = vec4<i32>(~(-global1[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.d)), 19u)]), 655i, global1[_wgslsmith_index_u32(~(~(~countOneBits(u_input.e))), 19u)], u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -308f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, var_1.a.x, false)), Struct_1(var_1.a), 0i, min(var_2.x, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-491f + -1007f) - -1000f))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    global4 = array<vec3<u32>, 32>();
    var var_0 = all(vec3<bool>(!((1u | u_input.d) != countOneBits(34966u)), true, false));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-608f)))), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(-472f, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -215f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1879f, -339f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, 416f, arg_1, -463f), vec4<f32>(arg_1, -341f, -671f, -124f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(110f, -374f, -103f, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, -412f, arg_1, arg_1))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 853f, 203f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, arg_1))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1696f, 1464f), vec2<f32>(-156f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz - vec2<f32>(var_1.x, -1375f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(762f, -108f), vec2<f32>(arg_1, arg_1)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1051f, -535f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x))));
    var var_3 = vec3<u32>(~countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(reverseBits(0u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10268u, 4u)], 4u)] >> (1u % 32u)), 4u)], 4u)]), _wgslsmith_dot_vec4_u32(min(firstTrailingBit(max(vec4<u32>(27984u, 0u, 55974u, u_input.d), vec4<u32>(55118u, 0u, 0u, 41584u))), ~(vec4<u32>(1u, 1u, u_input.e, global2[_wgslsmith_index_u32(0u, 4u)]) | vec4<u32>(6122u, 0u, 65714u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)]))), countOneBits(~vec4<u32>(u_input.d, 1u, u_input.d, u_input.d))), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(~u_input.d), 4u)], 4u)]));
    return 4294967295u ^ min(var_3.x << (firstTrailingBit(~0u) % 32u), _wgslsmith_clamp_u32(4294967295u, firstLeadingBit(min(u_input.e, var_3.x)), global2[_wgslsmith_index_u32(4294967295u, 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_1(select(_wgslsmith_add_vec4_i32(vec4<i32>(max(53991i, u_input.b), global1[_wgslsmith_index_u32(u_input.d, 19u)], -u_input.a.x, countOneBits(27905i)), firstLeadingBit(u_input.a)), u_input.a, vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(692f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)))))), 4u)], 15u)];
    let var_1 = global0[_wgslsmith_index_u32(max(u_input.d, ~7650u), 15u)];
    let var_2 = vec3<u32>(~53641u, u_input.d, 134417u);
    var var_3 = var_2.yy;
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_3.x, u_input.e, var_2.x), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], 35056u, 12794u, 11550u)), reverseBits(vec4<u32>(23855u, var_3.x, var_3.x, 4294967295u)))), max(vec4<u32>(0u, ~u_input.d, 6913u, 21474u), ~(~vec4<u32>(33469u, 0u, 1u, var_2.x))) << (countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.d, u_input.d, 35844u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.e, 4u)], var_3.x, var_3.x, u_input.d))) % vec4<u32>(32u))), 15u)];
    global0 = array<Struct_1, 15>();
    global3 = array<vec2<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(671f * -450f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1257f, -194f)) + -858f), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1196f, 1347f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(439f, -932f, 456f))))), !var_0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-312f, -1591f)))))), _wgslsmith_add_i32(2407i, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~34390u, u_input.e >> (var_2.x % 32u)), 19u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_2.x), 19u)] | global1[_wgslsmith_index_u32(u_input.d, 19u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, -2076f, 673f, -1017f))))))));
}

