struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(false);

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false));

var<private> global2: array<i32, 21>;

var<private> global3: array<u32, 27>;

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-8378i, select(_wgslsmith_div_i32(50694i, global2[_wgslsmith_index_u32(4294967295u, 21u)]) | select(-41182i, 1i, false), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, 41442i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 56905i, 0i, -10193i)), vec4<i32>(2147483647i, -4175i, 1329i, 47852i) >> (vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 22918u, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 27u)]) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42427u, 0u), 1u)]), -_wgslsmith_sub_i32(global4.x, global4.x), global4.x), abs(select(vec4<i32>(-3382i, select(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], 0i, global0[_wgslsmith_index_u32(37769u, 1u)]), u_input.d, _wgslsmith_mod_i32(1i, global4.x)), vec4<i32>(1i, 18692i ^ u_input.c, global4.x << (global3[_wgslsmith_index_u32(u_input.b.x, 27u)] % 32u), u_input.d), arg_1.x)));
    global4 = ~vec4<i32>(8819i, countOneBits(u_input.d), global4.x ^ global4.x, _wgslsmith_mult_i32(0i, -(~1i)));
    global0 = array<bool, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-186f))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_1.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c.x, 185f, arg_0.a, 253f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1265f, -1097f, arg_0.a, arg_0.c.x)))) * arg_0.c));
    let var_2 = Struct_3(Struct_2(Struct_1(239f, vec2<bool>(arg_0.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 21u)] == 1i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, -1290f, 434f, -2311f)))), 4294967295u, arg_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x) >> ((u_input.b.x & 38843u) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 6386u), 12586u)), arg_0), select(!var_1.b, arg_1.yx, select(select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(false, true), vec2<bool>(false, arg_0.b.x)), vec2<bool>(false, true), select(vec2<bool>(arg_0.b.x, arg_1.x), select(vec2<bool>(false, arg_1.x), arg_1.wx, arg_0.b), vec2<bool>(true, true)))), select(vec2<bool>(arg_1.x, global2[_wgslsmith_index_u32(1u, 21u)] > ~2147483647i), vec2<bool>(!(var_1.b.x && false), 17075u > u_input.b.x), vec2<bool>(arg_0.b.x, arg_1.x)), -628f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(62360u, ~(global3[_wgslsmith_index_u32(u_input.a.x, 27u)] | global3[_wgslsmith_index_u32(4971u, 27u)])), ~global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x)), 27u)]), 27u)]);
    return select(arg_1.xy, var_1.b, true);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = vec2<f32>(147f, arg_2.x);
    let var_1 = Struct_1(-1980f, func_3(Struct_1(arg_2.x, select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(11456u, 1u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 894f, -609f, 115f) + vec4<f32>(var_0.x, 978f, var_0.x, 1000f))), select(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 1u)], true, global0[_wgslsmith_index_u32(arg_0, 1u)], all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, global0[_wgslsmith_index_u32(35905u, 1u)]))), global1[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)]), 10u)], vec4<bool>(false, true, false, !global0[_wgslsmith_index_u32(1894u, 1u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_f32(-var_0.x), arg_2.x, _wgslsmith_f_op_f32(min(-732f, 595f))), vec4<f32>(1586f, 1f, 621f, _wgslsmith_f_op_f32(select(-244f, _wgslsmith_f_op_f32(var_0.x + arg_2.x), all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false, false, global0[_wgslsmith_index_u32(1u, 1u)])))))));
    global4 = max(select(_wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(arg_1, global2[_wgslsmith_index_u32(21771u, 21u)], arg_1, 2147483647i)), ~_wgslsmith_div_vec4_i32(arg_3, vec4<i32>(u_input.d, arg_1, u_input.d, 0i))), max(firstTrailingBit(vec4<i32>(arg_3.x, u_input.d, global2[_wgslsmith_index_u32(arg_0, 21u)], arg_1)), abs(vec4<i32>(0i, -2147483647i, 33903i, 0i))), vec4<bool>(!var_1.b.x, any(select(vec3<bool>(true, false, false), vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(false, true, false))), global0[_wgslsmith_index_u32(select(firstTrailingBit(0u), 17124u, all(global1[_wgslsmith_index_u32(arg_0, 10u)])), 1u)], true)), vec4<i32>(i32(-1i) * -1i, ~(~countOneBits(u_input.c)), -14379i, _wgslsmith_add_i32(arg_3.x, arg_1)));
    global4 = arg_3;
    var var_2 = vec2<u32>(max(min(u_input.b.x & arg_0, ~4294967295u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(18597u, 27u)], u_input.a.x), vec2<u32>(31355u, 0u)) % 32u), ~arg_0), arg_0);
    return !var_1.b;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -565f), func_2(24200u, ~u_input.c, vec3<f32>(-223f, -950f, -199f), select(vec4<i32>(20346i, global2[_wgslsmith_index_u32(1u, 21u)], 0i, u_input.d), vec4<i32>(u_input.d, global4.x, 2147483647i, global4.x), false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(740f, 625f, 958f, -502f)))), max(~(~3373u), _wgslsmith_mult_u32(u_input.a.x, 32152u)), Struct_1(-1073f, !(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(490f, -1064f, 1951f, 261f)))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 4065u), ~u_input.a.zy, vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 34446u), u_input.a.yx)), Struct_1(449f, vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, -225f, 171f, -481f))))), func_3(Struct_1(_wgslsmith_f_op_f32(-656f * _wgslsmith_f_op_f32(-860f - 449f)), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)])), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1369f, 1709f, 1341f, -1617f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(496f, 1551f, 1453f, 1963f) * vec4<f32>(320f, 553f, -696f, -1349f))))), !(!select(global1[_wgslsmith_index_u32(107032u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]))), select(vec2<bool>(true, true), vec2<bool>(func_2(abs(global3[_wgslsmith_index_u32(11507u, 27u)]), abs(global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-378f, -1836f, -1130f)), -vec4<i32>(-1i, 25733i, 9664i, -18804i)).x, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(54053u, 21u)], -1i) < _wgslsmith_add_i32(global4.x, -4840i)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1617f + 1955f) + 802f), -1814f)), ~firstLeadingBit(4294967295u));
    global3 = array<u32, 27>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1006f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1193f + var_0.a.c.c.x), -666f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d)))));
    var var_2 = true;
    global3 = array<u32, 27>();
    return 4294967295u | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.e, 11958u), ~u_input.a.x, 1u, ~0u), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(72898u, var_0.a.d, global3[_wgslsmith_index_u32(40461u, 27u)], 0u), vec4<u32>(4294967295u, var_0.a.d, 4294967295u, var_0.a.d)))), arg_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global3 = array<u32, 27>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.e.a + arg_0.e.c.x))) + arg_0.a.c.x);
    global2 = array<i32, 21>();
    var var_1 = Struct_2(arg_0.c, u_input.b.x, arg_0.a, firstLeadingBit(arg_0.b), Struct_1(_wgslsmith_div_f32(arg_0.e.c.x, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(abs(-527f)))), select(!(!arg_0.e.b), !func_3(Struct_1(arg_0.c.a, arg_0.e.b, arg_0.a.c), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d, 1u)], arg_0.a.b.x, global0[_wgslsmith_index_u32(arg_2.x, 1u)], true)), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(28354u, 1u)]), vec2<bool>(arg_0.e.b.x, arg_0.a.b.x), func_3(Struct_1(arg_3, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.d, 1u)]), vec4<f32>(984f, 1841f, var_0, 303f)), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.e.a, 161f, arg_3, arg_3), arg_0.c.c)))))));
    var var_2 = var_1.e.c;
    return Struct_1(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), vec2<bool>(func_3(arg_0.e, select(vec4<bool>(arg_0.a.b.x, true, arg_0.c.b.x, arg_0.a.b.x), !global1[_wgslsmith_index_u32(0u, 10u)], true)).x, all(vec4<bool>(!var_1.c.b.x, global0[_wgslsmith_index_u32(~arg_0.b, 1u)], select(var_1.c.b.x, global0[_wgslsmith_index_u32(arg_0.b, 1u)], var_1.c.b.x), true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -484f))) + arg_3), _wgslsmith_f_op_f32(1241f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.e.a)))), arg_0.c.c.x, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~55575u, u_input.b.x), ~global3[_wgslsmith_index_u32(abs(0u), 27u)]);
    var var_1 = Struct_2(func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(742f)), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], 1u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, -430f, -693f, 1000f))), ~global3[_wgslsmith_index_u32(func_1(u_input.a), 27u)], Struct_1(-1385f, vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(532f, 278f, 290f, 807f)))), 0u, Struct_1(_wgslsmith_f_op_f32(abs(773f)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 1u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1034f, -685f, -559f, -146f)))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], u_input.d, u_input.c, -37230i), vec4<i32>(u_input.d, 2147483647i, u_input.c, global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), vec4<i32>(-1i, 1i, 78776i, global4.x) & vec4<i32>(-2147483647i, 0i, 31996i, -29795i), vec4<i32>(0i, global2[_wgslsmith_index_u32(68787u, 21u)], -2147483647i, 2147483647i)), min(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 27u)] & u_input.a.x, global3[_wgslsmith_index_u32(u_input.b.x, 27u)] << (3078u % 32u), ~0u, u_input.b.x), ~abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], 27u)], 39093u, u_input.b.x, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1946f))))), countOneBits(u_input.b.x), func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-2210f + -1571f), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-182f, -992f, 653f, -1760f) + vec4<f32>(-940f, -1672f, 1326f, -801f))), u_input.b.x, Struct_1(_wgslsmith_div_f32(398f, -572f), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<f32>(-1000f, 586f, 2484f, -824f)), ~(~u_input.b.x), func_4(Struct_2(Struct_1(-635f, vec2<bool>(false, global0[_wgslsmith_index_u32(7545u, 1u)]), vec4<f32>(-180f, -505f, -543f, -1000f)), 0u, Struct_1(685f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<f32>(2214f, 639f, -294f, 1000f)), 14733u, Struct_1(-1541f, vec2<bool>(false, false), vec4<f32>(622f, -2152f, 369f, -277f))), reverseBits(vec4<i32>(-57987i, u_input.c, u_input.c, global4.x)), ~vec4<u32>(107057u, u_input.b.x, 77354u, global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -294f))), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i & global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 21u)], reverseBits(-23193i), global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(1u, 27u)], 1u), 21u)]), vec4<i32>(~u_input.c, _wgslsmith_clamp_i32(u_input.d, -2147483647i, 2147483647i), global4.x, _wgslsmith_sub_i32(1i, 1i))), vec4<u32>(_wgslsmith_div_u32(~10648u, 111997u), ~58585u, 68476u, _wgslsmith_mult_u32(~7685u, _wgslsmith_mod_u32(6301u, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]))), -638f), ~(~_wgslsmith_mod_u32(min(4294967295u, 43792u), global3[_wgslsmith_index_u32(u_input.b.x, 27u)])), func_4(Struct_2(func_4(Struct_2(Struct_1(-495f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<f32>(-293f, -711f, 1740f, -1371f)), 4294967295u, Struct_1(389f, vec2<bool>(false, true), vec4<f32>(-1000f, -213f, 1129f, 404f)), 4294967295u, Struct_1(-2119f, vec2<bool>(global0[_wgslsmith_index_u32(24780u, 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec4<f32>(1913f, 1201f, -925f, -739f))), vec4<i32>(global4.x, 23688i, -2147483647i, -50059i) >> (vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 53684u, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 3403u, 4294967295u, 36828u), _wgslsmith_div_f32(-930f, 810f)), firstLeadingBit(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 1u)), Struct_1(_wgslsmith_f_op_f32(704f + 835f), vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], 1u)], global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, 900f, 395f, 864f) - vec4<f32>(-1070f, -476f, 1095f, 1950f))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(u_input.a), 27u)], 27u)], func_4(Struct_2(Struct_1(-650f, vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<f32>(-859f, 1281f, 683f, -1000f)), 4294967295u, Struct_1(1000f, vec2<bool>(global0[_wgslsmith_index_u32(17141u, 1u)], false), vec4<f32>(866f, -897f, -1846f, -337f)), global3[_wgslsmith_index_u32(6785u, 27u)], Struct_1(-415f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec4<f32>(1548f, -215f, -365f, 1954f))), vec4<i32>(18724i, u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global4.x), select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39233u, 27u)], 27u)], u_input.a.x, global3[_wgslsmith_index_u32(112052u, 27u)], 0u), vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 1u)]), _wgslsmith_div_f32(614f, -1072f))), vec4<i32>(13435i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 0i, 0i)), vec3<i32>(2147483647i, -2147483647i, global4.x)), firstTrailingBit(u_input.d), -2147483647i), (~vec4<u32>(u_input.b.x, 1u, 36513u, 9600u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u), vec4<u32>(1u, global3[_wgslsmith_index_u32(54088u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], 1482u)) % vec4<u32>(32u))) << ((~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x, 24099u, global3[_wgslsmith_index_u32(82555u, 27u)]) & firstLeadingBit(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x))) % vec4<u32>(32u)), 1261f));
    var var_2 = Struct_4(Struct_3(Struct_2(func_4(Struct_2(Struct_1(1009f, vec2<bool>(var_1.e.b.x, true), var_1.a.c), 4294967295u, Struct_1(var_1.e.a, var_1.a.b, vec4<f32>(var_1.e.a, -990f, 1102f, var_1.c.c.x)), global3[_wgslsmith_index_u32(u_input.b.x, 27u)], Struct_1(-1137f, var_1.e.b, vec4<f32>(var_1.a.c.x, 342f, 1261f, var_1.c.a))), _wgslsmith_div_vec4_i32(vec4<i32>(-8047i, global4.x, global4.x, -6142i), vec4<i32>(0i, -1i, -1i, u_input.c)), ~vec4<u32>(58016u, u_input.a.x, 55631u, 91547u), _wgslsmith_f_op_f32(var_1.e.c.x + var_1.e.c.x)), _wgslsmith_clamp_u32(~60924u, _wgslsmith_mult_u32(var_1.d, global3[_wgslsmith_index_u32(1u, 27u)]), 32943u), func_4(Struct_2(Struct_1(var_1.c.a, var_1.a.b, var_1.e.c), 33145u, Struct_1(497f, vec2<bool>(false, var_1.e.b.x), vec4<f32>(665f, 623f, -608f, var_1.a.c.x)), 1u, Struct_1(var_1.e.a, var_1.e.b, var_1.c.c)), -vec4<i32>(global4.x, global4.x, u_input.d, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(91497u, 1u, 1u, var_1.d), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 27u)], 42447u, 0u, var_1.b)), _wgslsmith_f_op_f32(-var_1.e.a)), select(~4294967295u, 0u, true), func_4(Struct_2(Struct_1(378f, vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], var_1.e.b.x), vec4<f32>(var_1.c.c.x, 1000f, var_1.a.c.x, 736f)), 30201u, Struct_1(var_1.e.a, vec2<bool>(true, false), var_1.a.c), 104522u, Struct_1(-1042f, var_1.c.b, vec4<f32>(-884f, -697f, 318f, -447f))), vec4<i32>(u_input.c, 42563i, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(10508u, 21u)]), ~vec4<u32>(0u, u_input.b.x, 47142u, 49616u), _wgslsmith_f_op_f32(1571f + var_1.a.a))), var_1.c.b, select(vec2<bool>(var_1.a.b.x, true), vec2<bool>(func_4(Struct_2(Struct_1(329f, var_1.e.b, var_1.a.c), u_input.a.x, var_1.e, 0u, var_1.e), vec4<i32>(global4.x, global4.x, -81709i, global2[_wgslsmith_index_u32(35948u, 21u)]), vec4<u32>(var_1.b, u_input.a.x, global3[_wgslsmith_index_u32(12039u, 27u)], 49954u), 142f).b.x, 1u >= var_1.b), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-var_1.a.c.x), global3[_wgslsmith_index_u32(abs((0u >> (global3[_wgslsmith_index_u32(var_1.b, 27u)] % 32u)) << (countOneBits(9631u) % 32u)), 27u)]), Struct_2(Struct_1(_wgslsmith_div_f32(1067f, 747f), !var_1.e.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.c * vec4<f32>(882f, -1008f, -602f, -650f)) + _wgslsmith_div_vec4_f32(vec4<f32>(384f, -756f, var_1.a.a, 743f), var_1.e.c))), _wgslsmith_add_u32(1u, countOneBits(u_input.b.x)) ^ ~0u, func_4(Struct_2(Struct_1(var_1.a.a, vec2<bool>(true, true), var_1.c.c), 1u >> (u_input.b.x % 32u), Struct_1(var_1.a.c.x, var_1.c.b, vec4<f32>(var_1.e.a, 313f, var_1.c.c.x, -1360f)), global3[_wgslsmith_index_u32(u_input.a.x, 27u)], var_1.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, 2147483647i, u_input.d, global2[_wgslsmith_index_u32(var_1.d, 21u)]), max(vec4<i32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27767u, 27u)], 21u)], -47199i, u_input.c, global4.x), vec4<i32>(global4.x, global4.x, global4.x, global2[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global2[_wgslsmith_index_u32(39744u, 21u)], 743i, 0i), vec4<i32>(-1i, 1i, global2[_wgslsmith_index_u32(var_1.d, 21u)], 0i))), (vec4<u32>(4294967295u, u_input.a.x, 0u, 1u) << (vec4<u32>(28942u, 4294967295u, global3[_wgslsmith_index_u32(48576u, 27u)], var_1.b) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(7707u, global3[_wgslsmith_index_u32(8963u, 27u)], 73661u, u_input.b.x), vec4<u32>(var_1.d, 3116u, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.a.x, 27u)])), -1488f), u_input.a.x, func_4(Struct_2(var_1.e, ~4294967295u, var_1.e, u_input.b.x, var_1.a), min(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.d, -2147483647i), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(20938u, 21u)], global4.x, global4.x)), -vec4<i32>(u_input.c, -2147483647i, -2147483647i, 1i)), vec4<u32>(24110u, u_input.b.x, u_input.b.x, 1350u) & (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.b.x) | vec4<u32>(var_1.d, 40047u, 465u, 4294967295u)), _wgslsmith_f_op_f32(-var_1.a.a))));
    var_1 = var_2.a.a;
    var var_3 = -select(~reverseBits(_wgslsmith_sub_i32(0i, 23264i)), -_wgslsmith_mod_i32(abs(u_input.c), u_input.c), global0[_wgslsmith_index_u32(~var_2.a.a.b, 1u)]);
    let var_4 = Struct_1(var_2.a.a.e.c.x, func_3(var_2.b.c, global1[_wgslsmith_index_u32(47387u, 10u)]), _wgslsmith_f_op_vec4_f32(floor(var_2.b.c.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.c.x, var_4.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e.c.x * var_1.c.c.x), var_2.b.e.a)))) - var_4.a), _wgslsmith_f_op_vec2_f32(-func_4(var_2.a.a, -vec4<i32>(1i, u_input.d, global2[_wgslsmith_index_u32(24985u, 21u)], 54713i), ~(vec4<u32>(var_1.d, 13273u, u_input.b.x, global3[_wgslsmith_index_u32(27920u, 27u)]) & vec4<u32>(0u, var_2.a.e, 1u, var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1237f * 682f), -1122f)).c.wz), -1i, firstTrailingBit(min(~abs(vec4<u32>(0u, u_input.b.x, var_1.b, var_1.b)), ~(~vec4<u32>(0u, var_1.b, 1u, var_1.b)))));
}

