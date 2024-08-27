struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: i32;

var<private> global3: array<u32, 10> = array<u32, 10>(29190u, 1u, 0u, 76635u, 4294967295u, 1u, 0u, 4294967295u, 34858u, 25682u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26273u, 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(87874u, 10u)], 10u)], 10u)], 10u)], true), 1u), ~abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)])), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~28534u), 10u)], 10u)]), max(~min(vec2<u32>(global3[_wgslsmith_index_u32(38188u, 10u)], 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 25808u)), firstLeadingBit(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64281u, 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(55877u, 10u)])))), 10u)];
    var var_1 = 11300i;
    var var_2 = u_input.a;
    var var_3 = abs(_wgslsmith_sub_i32(u_input.a, countOneBits(20695i)));
    global2 = ~(i32(-1i) * -_wgslsmith_div_i32(u_input.a, 57675i));
    return ~u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 8>();
    global3 = array<u32, 10>();
    global3 = array<u32, 10>();
    global1 = array<Struct_1, 8>();
    var var_0 = -_wgslsmith_mult_vec3_i32(-vec3<i32>(max(arg_1.b.x, arg_1.a), func_3(vec2<f32>(859f, 1829f)), _wgslsmith_div_i32(-2147483647i, arg_0.e)), vec3<i32>(3242i, 1i, u_input.a));
    return global0[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_mod_u32(~28992u, 4294967295u))), 18u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(abs(~1i), _wgslsmith_mod_vec2_i32(arg_0.b, abs(-vec2<i32>(1i, u_input.a))), arg_1.x & arg_1.x, any(vec4<bool>(false, true, (u_input.a != u_input.a) && false, !(false || arg_1.x))), arg_0.e);
    global3 = array<u32, 10>();
    var var_1 = func_2(func_2(Struct_1(func_2(func_2(global0[_wgslsmith_index_u32(86903u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), func_2(Struct_1(arg_0.e, vec2<i32>(-32508i, arg_0.b.x), var_0.c, arg_0.c, 2147483647i), Struct_1(1i, var_0.b, true, false, u_input.a))).e, arg_0.b, func_2(func_2(Struct_1(-1i, var_0.b, var_0.c, arg_0.d, u_input.a), Struct_1(-2147483647i, arg_0.b, arg_0.d, arg_0.d, 1i)), func_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 18u)], Struct_1(1i, var_0.b, false, arg_1.x, -12311i))).d, (arg_1.x | true) | !var_0.c, reverseBits(reverseBits(arg_0.e))), func_2(Struct_1(1i, vec2<i32>(-25560i, var_0.b.x), false, false, -1047i), func_2(Struct_1(var_0.b.x, arg_0.b, false, true, u_input.a), global0[_wgslsmith_index_u32(firstTrailingBit(10502u), 18u)]))), global1[_wgslsmith_index_u32(~abs(abs(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(12574u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]))), 8u)]);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-608f + 354f), -708f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1278f)), -248f), -484f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1f + -762f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(370f, -974f)) + -514f), _wgslsmith_f_op_f32(trunc(1000f)), -384f))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    return func_2(Struct_1(_wgslsmith_sub_i32(abs(select(-2147483647i, -28383i, var_0.c)), -2147483647i), func_2(Struct_1(func_2(global1[_wgslsmith_index_u32(1u, 8u)], Struct_1(-29589i, vec2<i32>(-5272i, var_1.e), var_1.d, true, 5841i)).a, -var_1.b, true, any(vec4<bool>(true, arg_0.d, var_1.c, true)), 28217i), Struct_1(-30056i, var_1.b, true, true, 1i)).b, !any(!arg_1), !arg_1.x, min(_wgslsmith_add_i32(var_1.b.x, -2147483647i), max(-19297i, -22578i))), var_0);
}

fn func_1(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = func_4(func_2(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 10u)], 18u)]), select(vec2<bool>(true, false), vec2<bool>(true, true), !select(true, true, false)));
    var var_1 = select(select(vec2<bool>(var_0.d, !any(vec4<bool>(var_0.c, var_0.c, var_0.d, false))), select(!(!vec2<bool>(var_0.d, false)), select(!vec2<bool>(var_0.d, true), !vec2<bool>(false, var_0.d), var_0.d | false), !select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, var_0.d), true)), abs(select(4294967295u, 1u, true)) > firstTrailingBit(~42307u)), vec2<bool>(true, all(vec2<bool>(func_4(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(false, var_0.d)).d, true))), ~(~firstTrailingBit(86525u)) <= max(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)] | 8155u, 10u)]), countOneBits(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 20658u, var_0.d))));
    global2 = select(var_0.a, ~(-26914i), true);
    var var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(34459u, 10u)], 1u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(53971u, 10u)], 10u)], 10u)]), firstTrailingBit(~(vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17774u, 10u)], 10u)], global3[_wgslsmith_index_u32(0u, 10u)]) << (vec4<u32>(40249u, 0u, global3[_wgslsmith_index_u32(842u, 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78613u, 10u)], 10u)], 10u)]) % vec4<u32>(32u)))) << (~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29437u, 10u)], 10u)], global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], 32444u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20333u, 10u)], 10u)], 79149u, global3[_wgslsmith_index_u32(38112u, 10u)], 12321u)), vec4<u32>(global3[_wgslsmith_index_u32(14537u, 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 1u, 112902u)) % vec4<u32>(32u))), 18u)];
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(abs(-1160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f * -2395f))) + _wgslsmith_f_op_f32(-761f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2677f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1761f * 1028f) - 2259f))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.zy))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1695f, arg_0), arg_1.ww)) + arg_1.zy))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1584f + arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, -1448f), arg_1.x)))));
    global1 = array<Struct_1, 8>();
    let var_1 = vec3<u32>(112661u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(68335u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)]) << (~(~global3[_wgslsmith_index_u32(15711u, 10u)]) % 32u), 10u)], 10u)], 10u)], 56397u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24091u, 10u)], 10u)], 10u)], 10u)]), firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 10u)]) ^ ~40305u, ~22724u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(62627u, 10u)], global3[_wgslsmith_index_u32(53947u, 10u)]), 10u)]), ~firstLeadingBit(vec3<u32>(57279u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)], 10u)])))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(countOneBits(u_input.a), u_input.a), 43407i, select(-35760i, -34883i, false) ^ func_4(Struct_1(2147483647i, vec2<i32>(u_input.a, 1i), false, false, u_input.a), vec2<bool>(true, true)).e), u_input.a), -(-countOneBits(vec4<i32>(u_input.a, u_input.a, -2147483647i, 60063i)) >> (vec4<u32>(var_1.x, var_1.x, 8101u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 10u)], 10u)], var_1.x) % vec4<u32>(32u))));
    var var_3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(38725u, global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(var_1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)] & var_1.x)), 10u)])), 18u)];
    return (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], var_1.x), ~var_1.zz)) & var_1.x) & firstLeadingBit(_wgslsmith_mult_u32(~var_1.x, abs(14161u >> (1u % 32u))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    global2 = -26962i;
    var var_0 = false;
    global2 = 1i;
    let var_1 = abs(reverseBits(-vec2<i32>(arg_3, countOneBits(u_input.a))));
    let var_2 = !arg_2.xx;
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27287u, 10u)], 10u)], 8672u), false)), countOneBits(~vec2<u32>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(89668u, 10u)], 10u)]))) & 4294967295u, 18u)], func_4(Struct_1(~(i32(-1i) * -46169i), arg_0.b, true, false, -u_input.a), var_2));
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = ~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(select(vec4<i32>(arg_1, 8772i, arg_0.a, 2147483647i), vec4<i32>(-1i, -11968i, u_input.a, arg_0.a), false), ~vec4<i32>(-41822i, 2147483647i, -19500i, 698i)));
    let var_1 = _wgslsmith_div_f32(-2262f, 925f);
    let var_2 = func_2(func_4(global1[_wgslsmith_index_u32(35898u, 8u)], select(select(select(vec2<bool>(arg_2, false), vec2<bool>(arg_0.d, true), vec2<bool>(arg_2, arg_0.d)), vec2<bool>(false, false), 1u >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82419u, 10u)], 10u)]), vec2<bool>(func_2(Struct_1(var_0.x, var_0.yy, arg_2, arg_2, var_0.x), global1[_wgslsmith_index_u32(4294967295u, 8u)]).d, arg_2), all(!vec3<bool>(false, arg_2, false)))), Struct_1(arg_0.b.x, ~func_4(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(1u, 10u)]), 10u)], 8u)], vec2<bool>(arg_0.d, false)).b, func_2(global0[_wgslsmith_index_u32(16617u, 18u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 8u)]).d, true, -8199i));
    var var_3 = Struct_1(u_input.a, vec2<i32>(select(~arg_0.b.x, _wgslsmith_sub_i32(1i, u_input.a), all(vec2<bool>(true, arg_2))), ~_wgslsmith_mod_i32(func_2(Struct_1(4014i, vec2<i32>(var_2.b.x, var_2.a), false, arg_0.c, 47226i), arg_0).a, ~var_0.x)), !(!arg_2), true, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-29536i, -8777i, var_2.e)), _wgslsmith_clamp_vec3_i32(var_0.wyz, var_0.zxz, vec3<i32>(-21095i, -31400i, u_input.a))) << (4294967295u % 32u), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, u_input.a, -1i, -1i), vec4<i32>(1i, -2147483647i, -2147483647i, arg_1))));
    let var_4 = Struct_1(arg_1, -(~arg_0.b), !(!(countOneBits(36616u) != global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(919u, 10u)], 10u)], 0u), 10u)], 10u)])), arg_0.c, 1i);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 44497u), vec3<u32>(42861u, 0u, 1u))), 10u)], 18u)], Struct_1(reverseBits(~(-26586i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true)), all(vec4<bool>(true, true, true, true)), firstLeadingBit(-u_input.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), firstLeadingBit(firstTrailingBit(u_input.a)) >> (func_5(-340f, _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-48860i, 36656i, u_input.a, -28961i)))) % 32u)), _wgslsmith_mult_i32(9092i, ~u_input.a), -1714f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-241f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(893f - 366f), 2059f, _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-16752i, 1i, 1i, var_0.a))).x)))));
    let var_2 = ~_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 0u, 5521u), 10u)], 10u)], 10u)], 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 10u)])), 10u)], 10u)], 10u)]) | (select(4294967295u, 1u, var_0.d) & 16672u);
    global2 = 0i;
    global2 = min((-func_7(Struct_1(-1i, vec2<i32>(u_input.a, -1i), true, var_0.c, -44995i), 2199i, false).a >> (_wgslsmith_add_u32(~var_2, global3[_wgslsmith_index_u32(4294967295u, 10u)] ^ global3[_wgslsmith_index_u32(var_2, 10u)]) % 32u)) ^ -u_input.a, ~0i);
    global2 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

