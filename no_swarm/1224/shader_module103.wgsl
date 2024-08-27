struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: array<u32, 32>;

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(i32(-2147483648), -11578i, -63750i, i32(-2147483648)), vec4<i32>(2147483647i, -30149i, 2147483647i, 2147483647i), vec4<i32>(1i, 46106i, -26923i, 3508i), vec4<i32>(2147483647i, -39486i, -13841i, 48277i), vec4<i32>(3559i, i32(-2147483648), -37976i, -60430i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-1i, 2147483647i, -57606i, -24891i), vec4<i32>(2147483647i, 0i, 6699i, i32(-2147483648)), vec4<i32>(1i, -8606i, 0i, -9453i), vec4<i32>(-50479i, 55817i, 1i, 26091i), vec4<i32>(0i, 23027i, 38881i, 1i), vec4<i32>(0i, -5402i, 2147483647i, -39423i), vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec4<i32>(0i, 29887i, -66432i, 1i), vec4<i32>(-24108i, -61008i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), -5352i, -13744i, 0i), vec4<i32>(-3314i, 58657i, -20762i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -27594i, -1i), vec4<i32>(0i, 2147483647i, 28012i, i32(-2147483648)), vec4<i32>(-53309i, -1i, 33708i, 12773i), vec4<i32>(i32(-2147483648), -6173i, i32(-2147483648), 4188i), vec4<i32>(i32(-2147483648), 0i, -1i, -1i), vec4<i32>(0i, 2147483647i, -612i, i32(-2147483648)), vec4<i32>(-52994i, -16718i, 6639i, 0i), vec4<i32>(-1i, -1i, 151i, 23103i), vec4<i32>(1i, -43257i, 11602i, i32(-2147483648)), vec4<i32>(2147483647i, -8930i, 2147483647i, -55274i), vec4<i32>(28807i, 19210i, 0i, -28924i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(reverseBits(max(10869u, countOneBits(arg_0.x))), ~arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(574f, arg_3)))) - _wgslsmith_f_op_f32(trunc(arg_1)))));
    return -630f;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<i32>, 25>();
    let var_0 = vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a));
    let var_1 = vec4<f32>(-528f, _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), !(-29453i == var_0.x) != select(true, all(vec3<bool>(true, true, false)), true))), arg_1, _wgslsmith_f_op_f32(abs(1f)));
    global0 = array<vec3<i32>, 25>();
    let var_2 = i32(-1i) * -2147483647i;
    return Struct_1(~u_input.b, _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, global1[_wgslsmith_index_u32(arg_0.x, 32u)], u_input.d), _wgslsmith_f_op_f32(113f - var_1.x), vec2<bool>(true, false), _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -489f) + -1328f)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(~(~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(func_3(vec3<u32>(global1[_wgslsmith_index_u32(50650u, 32u)], 0u, arg_1), arg_0.b, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), arg_0.b)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(872f, -969f)))))));
    var var_1 = var_0.b;
    var var_2 = arg_0;
    var_1 = _wgslsmith_div_f32(var_2.b, -727f);
    var_2 = Struct_1(arg_3, 389f);
    return func_2(vec4<u32>(arg_0.a, 1u, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], u_input.b), 32u)], u_input.d) << (~_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a, 4294967295u, 4294967295u, 5672u), firstTrailingBit(vec4<u32>(24022u, var_0.a, 1u, 0u))) % vec4<u32>(32u)), -199f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), -620f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)) - func_2(~firstTrailingBit(vec4<u32>(4294967295u, var_0.a, var_0.a, 9765u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 1f)).b));
    var var_2 = !vec4<bool>(arg_2, all(vec4<bool>(arg_2, all(vec4<bool>(true, false, arg_2, arg_2)), !arg_2, any(vec3<bool>(false, arg_2, false)))), any(select(vec3<bool>(true, true, arg_2), select(vec3<bool>(true, arg_2, true), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, arg_2)), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, true), vec3<bool>(false, true, arg_2)))), arg_2);
    let var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yx | ~vec2<u32>(var_0.a, 58650u), vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 1620u), _wgslsmith_mult_u32(u_input.b, 4294967295u))), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0.a), u_input.c.yy) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), countOneBits(_wgslsmith_add_vec2_u32(u_input.c.yx, firstTrailingBit(vec2<u32>(u_input.b, 4778u)) & u_input.c.zy)));
    var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    return func_4(Struct_1(~22522u, 1000f), var_3.x, _wgslsmith_add_i32(abs(46756i), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, arg_3), ~2147483647i)), _wgslsmith_sub_u32(1u ^ _wgslsmith_sub_u32(abs(var_0.a), min(41821u, global1[_wgslsmith_index_u32(1u, 32u)])), 4294967295u));
}

fn func_1() -> Struct_1 {
    var var_0 = (-u_input.a <= -u_input.a) & !(u_input.a >= _wgslsmith_mult_i32(-u_input.a, _wgslsmith_mod_i32(7705i, 2147483647i)));
    global1 = array<u32, 32>();
    var var_1 = -(~vec4<i32>(u_input.a, 0i, -1i, _wgslsmith_mod_i32(1i, u_input.a)));
    let var_2 = func_5(func_4(func_2(max(~vec4<u32>(18792u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 7552u, u_input.d), ~vec4<u32>(48600u, 4294967295u, 14560u, global1[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_f32(-369f * _wgslsmith_div_f32(1551f, -1060f))), global1[_wgslsmith_index_u32(u_input.c.x, 32u)], -_wgslsmith_mult_i32(var_1.x, -1i), abs(~global1[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(1413f + -243f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -666f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true, -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.zw, vec2<i32>(var_1.x, u_input.a) ^ var_1.zw), -2147483647i));
    global0 = array<vec3<i32>, 25>();
    return Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(u_input.d, 4294967295u, 28845u), ~var_2.a), vec2<u32>(~abs(1u), ~var_2.a)), _wgslsmith_f_op_f32(-747f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_2.a, 48667u), u_input.c), -1000f, vec2<bool>(true, true), 1f)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(-u_input.a, -12012i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i), false) & vec2<i32>(1i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, u_input.a), -u_input.a), -select(vec2<i32>(-25484i, 2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, false)))) >> (u_input.d % 32u);
    global1 = array<u32, 32>();
    var var_1 = func_1();
    var var_2 = arg_2;
    var var_3 = vec4<bool>(func_5(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, arg_3.b, 802f, 934f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, var_2.b, -911f, 768f) + vec4<f32>(404f, arg_0.b, var_1.b, var_1.b))), true, var_0).a == var_2.a, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(538f, -360f) * _wgslsmith_f_op_f32(f32(-1f) * -590f))) || true, true | (_wgslsmith_f_op_f32(f32(-1f) * -1077f) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.b))))), false);
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = ~abs(41512i);
    let var_1 = true;
    var var_2 = !(!all(select(!vec3<bool>(false, true, var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, var_1)), var_1)));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-107f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.b, 630f, all(vec3<bool>(var_1, var_1, true)))))))));
    global1 = array<u32, 32>();
    return arg_0;
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 25>();
    var var_0 = arg_1;
    var var_1 = true;
    var var_2 = _wgslsmith_mod_i32(-14541i, ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-20071i, u_input.a)), _wgslsmith_mod_i32(u_input.a, -29298i))) | -1i;
    var var_3 = vec3<f32>(711f, 1000f, _wgslsmith_f_op_f32(func_4(arg_1, _wgslsmith_sub_u32(33163u, global1[_wgslsmith_index_u32(arg_1.a, 32u)]) >> (countOneBits(97043u) % 32u), u_input.a, 0u).b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - 834f) * _wgslsmith_f_op_f32(trunc(1227f))))));
    return arg_1;
}

fn func_9(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> StorageBuffer {
    global0 = array<vec3<i32>, 25>();
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(u_input.d, 32u)], arg_0.a), ~(~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x))), select(~firstTrailingBit(vec4<u32>(arg_0.a, u_input.c.x, 1u, arg_0.a)), firstLeadingBit(~vec4<u32>(arg_0.a, 0u, 7420u, 0u)), true));
    var var_1 = all(select(select(vec2<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, true, false))), vec2<bool>(any(vec3<bool>(false, true, false)), true), true), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, false)) && true, true)));
    let var_2 = func_1().b;
    var var_3 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1581f), func_4(arg_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 1i, global1[_wgslsmith_index_u32(u_input.b, 32u)]).b, 1725f, _wgslsmith_f_op_f32(-arg_2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(var_2, 166f, arg_2.x, -1308f))) - _wgslsmith_f_op_vec4_f32(-arg_2))), vec3<i32>(arg_1, min(~arg_1, -arg_1), -2147483647i) << (u_input.c % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 25>();
    var var_0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], 25u)])), -1i), abs(-vec2<i32>(_wgslsmith_mod_i32(u_input.a, 25400i), u_input.a)));
    global0 = array<vec3<i32>, 25>();
    var_0 = vec2<i32>(-_wgslsmith_mod_i32(-select(4407i, 2147483647i, true), -33835i), u_input.a);
    global0 = array<vec3<i32>, 25>();
    let x = u_input.a;
    s_output = func_9(func_8(~vec2<u32>(global1[_wgslsmith_index_u32(117757u, 32u)] ^ 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 32u)], 32u)] | 15526u, 32u)]), func_7(func_6(func_1(), Struct_1(u_input.d, -456f), func_1(), Struct_1(0u, -826f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)))), ~var_0.x, vec4<f32>(1f, 1f, 1f, 1f));
}

