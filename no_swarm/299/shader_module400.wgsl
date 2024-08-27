struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(66343u, 40516u), vec2<u32>(1u, 14458u), vec2<u32>(1u, 61859u), vec2<u32>(26373u, 81732u), vec2<u32>(0u, 4294967295u), vec2<u32>(60402u, 4294967295u), vec2<u32>(25191u, 1u), vec2<u32>(4294967295u, 12721u), vec2<u32>(18947u, 0u), vec2<u32>(4294967295u, 5622u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 13422u), vec2<u32>(0u, 57098u), vec2<u32>(6441u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 26874u), vec2<u32>(65788u, 0u), vec2<u32>(54286u, 0u), vec2<u32>(1u, 48781u), vec2<u32>(0u, 0u), vec2<u32>(8892u, 75172u), vec2<u32>(721u, 4294967295u), vec2<u32>(6154u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 43523u), vec2<u32>(47328u, 67400u));

var<private> global1: array<f32, 8>;

var<private> global2: array<f32, 21>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global3 = Struct_1(global3.b.xxw, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(904f, 467f)), -929f)), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-743f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 21u)]), true)))), _wgslsmith_f_op_f32(floor(global3.a.x))), _wgslsmith_mod_vec4_i32(min(countOneBits(min(vec4<i32>(-1i, u_input.a.x, global3.c.x, u_input.a.x), global3.c)), ~vec4<i32>(3070i, -2147483647i, -1i, -2147483647i) & (vec4<i32>(u_input.e, global3.c.x, 1i, -24106i) ^ global3.c)), -global3.c));
    return !vec4<bool>(false, true, true, ((4294967295u == u_input.b) | true) && false);
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_add_u32(23151u, 1u);
    let var_1 = vec4<bool>(any(select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, false, select(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), select(true, all(select(func_3(vec3<u32>(35634u, 33113u, 4294967295u)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), select(false, !any(vec4<bool>(true, false, true, true)), false)), true, !((var_0 & var_0) <= (u_input.b & 0u)) & all(vec3<bool>(true, true, false)));
    let var_2 = var_1.x;
    let var_3 = vec2<f32>(global2[_wgslsmith_index_u32(var_0 & var_0, 21u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 27736u), 21u)] * arg_0)))));
    let var_4 = Struct_2(-1006f, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, var_3.x, arg_0, var_3.x)) * vec4<f32>(323f, global2[_wgslsmith_index_u32(var_0, 21u)], 1716f, global1[_wgslsmith_index_u32(4294967295u, 8u)])) - vec4<f32>(_wgslsmith_div_f32(840f, global2[_wgslsmith_index_u32(arg_1, 21u)]), -1218f, -552f, _wgslsmith_f_op_f32(2444f * 427f))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global3.c.x, 18667i, 38883i), ~_wgslsmith_clamp_vec4_i32(global3.c, global3.c, global3.c))));
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 8u)]) * _wgslsmith_f_op_f32(311f + -216f)), _wgslsmith_f_op_f32(f32(-1f) * -146f))), Struct_1(_wgslsmith_f_op_vec3_f32(global3.b.wyy - vec3<f32>(542f, global1[_wgslsmith_index_u32(u_input.b, 8u)], -1000f)), vec4<f32>(122f, _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1, 21u)], 146f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 21u)])), vec4<i32>(~(-1i), countOneBits(2147483647i), u_input.a.x | 2147483647i, global3.c.x >> (1u % 32u)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1445f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(22917u, 8u)] + 1000f))), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 647f, 241f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1400f, global3.b.x, 633f, -1063f))), global3.c)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(18906u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1989f, global2[_wgslsmith_index_u32(arg_2.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)]), global3.b.xxz)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, -956f, -859f, global1[_wgslsmith_index_u32(0u, 8u)]) + global3.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_1, 8u)], global2[_wgslsmith_index_u32(19144u, 21u)], -1483f, global2[_wgslsmith_index_u32(23435u, 21u)]) - global3.b)), -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 3143i, 2147483647i, -2147483647i), global3.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-265f))), -1095f), Struct_2(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_2.x, 8u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(608f, global3.a.x, -285f) * global3.b.xyy), vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global3.a.x, global3.b.x, 978f), -global3.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(1u, 8u)], 1000f))))));
    var var_1 = -743f;
    let var_2 = !(!select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(true, true, false)), true)));
    global1 = array<f32, 8>();
    var var_3 = ~max(vec2<u32>(~(~arg_2.x), countOneBits(arg_0.x) << (max(0u, arg_2.x) % 32u)), vec2<u32>(u_input.b, ~arg_0.x));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.a.a)), _wgslsmith_f_op_f32(max(var_0.b.a.a, var_0.b.c)))))), Struct_1(_wgslsmith_f_op_vec3_f32(global3.a * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(634f, 1123f, 1000f)), var_0.a.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 779f, 1095f, global2[_wgslsmith_index_u32(9616u, 21u)])), _wgslsmith_f_op_vec4_f32(global3.b - vec4<f32>(780f, 2074f, var_0.b.c, global2[_wgslsmith_index_u32(23505u, 21u)]))))), -(~abs(vec4<i32>(global3.c.x, u_input.c.x, -2147483647i, var_0.a.b.c.x)))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec4<f32> {
    global1 = array<f32, 8>();
    global0 = array<vec2<u32>, 26>();
    var var_0 = Struct_4(func_4(vec2<u32>(0u, u_input.b & 4850u) | vec2<u32>(func_2(1899f, arg_0), 75106u), _wgslsmith_add_u32(max(arg_0, 13659u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(arg_0, arg_0)), ~90522u), ~min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 44515u, u_input.b, 1u), vec4<u32>(32571u, arg_0, u_input.b, arg_0)), vec4<u32>(4740u, arg_0, 1u, arg_0))), Struct_3(func_4(max(select(global0[_wgslsmith_index_u32(14076u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], false), select(vec2<u32>(0u, 3454u), global0[_wgslsmith_index_u32(u_input.b, 26u)], true)), 1u, firstTrailingBit(~vec4<u32>(1u, arg_0, arg_0, arg_0))), func_4(select(~vec2<u32>(arg_0, 20938u), ~vec2<u32>(1u, arg_0), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), 0u, vec4<u32>(u_input.b, ~11662u, u_input.b, min(1u, 0u))).b, global2[_wgslsmith_index_u32(reverseBits(41472u), 21u)], func_4(_wgslsmith_add_vec2_u32(vec2<u32>(39219u, 4294967295u), firstLeadingBit(global0[_wgslsmith_index_u32(60441u, 26u)])), 7096u, vec4<u32>(_wgslsmith_clamp_u32(34264u, u_input.b, u_input.b), ~29663u, _wgslsmith_dot_vec2_u32(vec2<u32>(41747u, arg_0), global0[_wgslsmith_index_u32(u_input.b, 26u)]), ~7877u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(523f, 433f) + vec2<f32>(func_4(vec2<u32>(1u, arg_0), u_input.b, vec4<u32>(arg_0, u_input.b, arg_0, 6779u)).a, _wgslsmith_f_op_f32(ceil(105f))))));
    var_0 = Struct_4(func_4(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, u_input.b), u_input.b), 1u, max(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 11451u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), ~(~vec4<u32>(4294967295u, arg_0, 4294967295u, 1u)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-527f - _wgslsmith_f_op_f32(f32(-1f) * -650f)), Struct_1(_wgslsmith_f_op_vec3_f32(-global3.b.yzw), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-324f, global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(19286u, 21u)]), var_0.a.b.b)), ~global3.c)), var_0.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.b.a.x + 591f))), _wgslsmith_f_op_f32(floor(353f))), func_4(~(~vec2<u32>(u_input.b, arg_0)), 59104u, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 2973u, 0u, arg_0), vec4<u32>(4294967295u, 1u, u_input.b, 0u)), max(vec4<u32>(1u, 1u, 0u, u_input.b), vec4<u32>(0u, 17330u, 17725u, arg_0)))), global3.a.yy));
    global1 = array<f32, 8>();
    return _wgslsmith_f_op_vec4_f32(step(var_0.b.b.b, _wgslsmith_f_op_vec4_f32(exp2(var_0.a.b.b))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(arg_1.a, arg_1);
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.a - global2[_wgslsmith_index_u32(u_input.b, 21u)]) - global2[_wgslsmith_index_u32(reverseBits(21285u), 21u)]), arg_2.e.x), arg_2.a.b), arg_2);
    var var_2 = vec3<i32>(arg_3.b.c.x | abs(abs(_wgslsmith_div_i32(var_0.a.b.c.x, -25631i))), 1i, _wgslsmith_dot_vec4_i32(var_0.b.d.b.c, global3.c));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(func_1(~(~(~u_input.b)), func_4(vec2<u32>(u_input.b, ~1u), 48514u, abs(~vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u))).b.c.ww)).x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1671f, global2[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_f_op_f32(arg_2.a.b.a.x - global1[_wgslsmith_index_u32(u_input.b, 8u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.b.b - vec4<f32>(arg_0.a, var_0.a.b.b.x, -555f, 1557f))) - _wgslsmith_f_op_vec4_f32(-var_1.b.b.b)), -(var_1.b.d.b.c ^ vec4<i32>(-6858i, -1i, 61433i, 0i))));
    global0 = array<vec2<u32>, 26>();
    return func_4(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(7543u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), global0[_wgslsmith_index_u32(122792u, 26u)]))), 0u, _wgslsmith_add_vec4_u32(min(select(_wgslsmith_mod_vec4_u32(vec4<u32>(35697u, 97710u, u_input.b, 66955u), vec4<u32>(u_input.b, 0u, 0u, u_input.b)), abs(vec4<u32>(4012u, 1u, u_input.b, 13993u)), 73544u >= u_input.b), vec4<u32>(8805u, _wgslsmith_sub_u32(4294967295u, u_input.b), 4294967295u, _wgslsmith_mult_u32(9505u, 13264u))), ~vec4<u32>(0u >> (0u % 32u), u_input.b, abs(u_input.b), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_5(Struct_2(-1002f, Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(func_1(u_input.b, vec2<i32>(-4229i, global3.c.x))), vec4<i32>(u_input.c.x, 28440i, u_input.d.x, global3.c.x))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-1000f - 871f), Struct_1(global3.b.xwx, vec4<f32>(-781f, global1[_wgslsmith_index_u32(5816u, 8u)], global3.a.x, 584f), global3.c)), Struct_1(_wgslsmith_f_op_vec3_f32(min(global3.a, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(55200u, 8u)], -1000f))), _wgslsmith_f_op_vec4_f32(min(global3.b, global3.b)), vec4<i32>(global3.c.x, u_input.e, global3.c.x, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(104690u, 21u)]) - _wgslsmith_f_op_f32(f32(-1f) * -149f)), Struct_2(_wgslsmith_f_op_f32(-1085f - -810f), Struct_1(global3.b.wzx, global3.b, global3.c)), vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(72550u, 21u)], 806f), _wgslsmith_div_f32(232f, -363f))), Struct_3(func_4(global0[_wgslsmith_index_u32(u_input.b, 26u)], 1u, reverseBits(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u))), Struct_1(vec3<f32>(-176f, global2[_wgslsmith_index_u32(1u, 21u)], -1872f), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 1208f, global3.b.x, -1549f), select(global3.c, vec4<i32>(u_input.c.x, u_input.e, 0i, -73661i), vec4<bool>(true, false, false, false))), -1000f, func_4(max(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_1(4294967295u, vec2<i32>(global3.c.x, 5626i))).zz)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 8u)] - global1[_wgslsmith_index_u32(u_input.b, 8u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 8u)])), func_4(~vec2<u32>(4294967295u, u_input.b), 37694u, abs(vec4<u32>(4294967295u, 47906u, 1u, 1u))).b)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global3.a)), global3.b, countOneBits(vec4<i32>(global3.c.x, 0i, i32(-1i) * -12364i, global3.c.x ^ global3.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] + _wgslsmith_f_op_f32(-482f - _wgslsmith_f_op_f32(1203f + -1293f))), 582f), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, global1[_wgslsmith_index_u32(1u, 8u)])), -766f, _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global3.b, global3.b)) - global3.b), ~_wgslsmith_mult_vec4_i32(global3.c, global3.c))), global3.a.xx);
    let var_1 = var_0.b.a;
    global3 = var_0.b;
    let var_2 = abs(global3.c.ww);
    var var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 0i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(55366i, var_0.b.c.x, var_0.b.c.x, global3.c.x), global3.c), 18212i, _wgslsmith_clamp_i32(-var_2.x, var_0.a.b.c.x, -2147483647i >> (u_input.b % 32u))) << (u_input.b % 32u), ~1i);
    var_3 = -(firstTrailingBit(countOneBits(14996i) >> (u_input.b % 32u)) & _wgslsmith_clamp_i32(0i, -2147483647i, max(var_2.x | 23149i, global3.c.x)));
    var var_4 = func_5(func_5(var_0.d, Struct_3(func_4(vec2<u32>(u_input.b, u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.b), vec4<u32>(u_input.b, 46219u, u_input.b, u_input.b)), func_5(Struct_2(740f, Struct_1(vec3<f32>(global3.b.x, global2[_wgslsmith_index_u32(u_input.b, 21u)], -1318f), var_0.a.b.b, global3.c)), Struct_3(var_0.d, Struct_1(vec3<f32>(-983f, -628f, 746f), var_0.b.b, vec4<i32>(var_2.x, -1i, var_2.x, -15935i)), -854f, var_0.a, var_0.e), Struct_3(var_0.d, var_0.b, global3.a.x, var_0.a, var_1.xx), var_0.d).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f) - _wgslsmith_f_op_f32(-976f - global2[_wgslsmith_index_u32(u_input.b, 21u)])), func_5(func_5(Struct_2(-1048f, Struct_1(vec3<f32>(global3.b.x, global1[_wgslsmith_index_u32(16666u, 8u)], 1585f), vec4<f32>(global3.a.x, global1[_wgslsmith_index_u32(u_input.b, 8u)], var_0.e.x, 1328f), vec4<i32>(-25063i, 66898i, 14118i, var_2.x))), Struct_3(var_0.a, Struct_1(vec3<f32>(-1556f, var_1.x, -1056f), vec4<f32>(var_0.a.a, var_0.a.a, var_1.x, 1354f), global3.c), -1690f, Struct_2(global3.a.x, Struct_1(var_0.d.b.a, var_0.b.b, vec4<i32>(1i, global3.c.x, 61784i, var_0.d.b.c.x))), global3.b.xx), Struct_3(Struct_2(global3.a.x, var_0.b), Struct_1(global3.a, vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], var_0.d.b.b.x, 1057f, -390f), global3.c), var_0.b.b.x, var_0.d, global3.b.yz), Struct_2(952f, var_0.a.b)), Struct_3(var_0.a, Struct_1(global3.b.zyw, vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], global3.a.x, global2[_wgslsmith_index_u32(u_input.b, 21u)], -584f), global3.c), 520f, Struct_2(var_0.c, var_0.b), var_1.zz), Struct_3(var_0.a, var_0.d.b, 189f, var_0.a, vec2<f32>(var_1.x, global2[_wgslsmith_index_u32(u_input.b, 21u)])), Struct_2(var_1.x, Struct_1(var_0.b.b.xyw, var_0.a.b.b, var_0.a.b.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, 995f))))), Struct_3(Struct_2(_wgslsmith_f_op_f32(select(var_0.b.b.x, -1041f, true)), var_0.a.b), func_4(select(vec2<u32>(u_input.b, 1u), vec2<u32>(0u, u_input.b), false), ~1u, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 46883u), vec4<u32>(u_input.b, 15575u, 1u, 1u))).b, -1086f, var_0.d, global3.a.zy), var_0.a), Struct_3(Struct_2(global3.b.x, func_5(func_4(global0[_wgslsmith_index_u32(34110u, 26u)], u_input.b, vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), Struct_3(Struct_2(129f, var_0.d.b), var_0.a.b, -316f, Struct_2(1000f, Struct_1(global3.b.wxw, vec4<f32>(700f, global1[_wgslsmith_index_u32(164u, 8u)], global2[_wgslsmith_index_u32(u_input.b, 21u)], var_0.a.b.b.x), vec4<i32>(u_input.e, var_2.x, var_2.x, var_0.d.b.c.x))), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], -1000f)), Struct_3(var_0.d, Struct_1(global3.a, var_0.d.b.b, var_0.a.b.c), 1419f, var_0.d, var_1.xz), var_0.a).b), func_4(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(countOneBits(37017u), 26u)], vec2<u32>(4294967295u, u_input.b), global0[_wgslsmith_index_u32(~u_input.b, 26u)]), ~(~u_input.b), ~reverseBits(vec4<u32>(27903u, 4294967295u, u_input.b, 31935u))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f - -421f)), 2083f), func_5(func_4(vec2<u32>(4294967295u, u_input.b) | global0[_wgslsmith_index_u32(u_input.b, 26u)], u_input.b, vec4<u32>(u_input.b, 10316u, u_input.b, u_input.b) ^ vec4<u32>(28426u, 1u, 17335u, 4294967295u)), Struct_3(func_5(var_0.a, Struct_3(Struct_2(var_0.c, Struct_1(global3.b.zyy, var_0.b.b, var_0.a.b.c)), var_0.d.b, 749f, var_0.a, global3.b.xz), Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(vec3<f32>(1398f, var_0.c, global1[_wgslsmith_index_u32(u_input.b, 8u)]), var_0.d.b.b, var_0.d.b.c)), var_0.a.b, var_0.b.a.x, Struct_2(var_0.d.a, Struct_1(vec3<f32>(209f, -235f, var_1.x), vec4<f32>(-595f, 1313f, global3.a.x, -528f), global3.c)), global3.b.xz), Struct_2(499f, Struct_1(global3.a, vec4<f32>(var_1.x, 1399f, global2[_wgslsmith_index_u32(4206u, 21u)], -577f), global3.c))), var_0.d.b, -1685f, func_5(Struct_2(global1[_wgslsmith_index_u32(0u, 8u)], var_0.b), Struct_3(Struct_2(global2[_wgslsmith_index_u32(29022u, 21u)], Struct_1(global3.b.yyz, var_0.b.b, vec4<i32>(2147483647i, u_input.c.x, 7117i, var_2.x))), Struct_1(global3.b.wyw, var_0.a.b.b, vec4<i32>(global3.c.x, u_input.a.x, global3.c.x, var_0.a.b.c.x)), global2[_wgslsmith_index_u32(u_input.b, 21u)], var_0.d, var_0.a.b.a.xy), Struct_3(var_0.a, var_0.a.b, global2[_wgslsmith_index_u32(8436u, 21u)], var_0.a, vec2<f32>(-1000f, -2343f)), var_0.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1752f, 1708f))), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.b, 21u)], Struct_1(vec3<f32>(global3.b.x, -226f, -1052f), var_0.a.b.b, var_0.a.b.c)), func_4(global0[_wgslsmith_index_u32(27519u, 26u)], u_input.b, vec4<u32>(u_input.b, 1u, 31173u, u_input.b)).b, global1[_wgslsmith_index_u32(u_input.b, 8u)], Struct_2(global1[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(vec3<f32>(var_1.x, global1[_wgslsmith_index_u32(84658u, 8u)], -933f), vec4<f32>(global3.b.x, -452f, global1[_wgslsmith_index_u32(u_input.b, 8u)], 1403f), var_0.a.b.c)), var_0.a.b.a.xy), Struct_2(1173f, var_0.d.b)), _wgslsmith_f_op_vec2_f32(-global3.a.zz)), Struct_3(func_5(func_5(func_5(var_0.d, Struct_3(var_0.d, var_0.d.b, 277f, Struct_2(2407f, var_0.d.b), var_0.a.b.b.wx), Struct_3(var_0.a, var_0.b, global3.a.x, var_0.a, global3.a.xy), Struct_2(var_0.d.a, var_0.d.b)), Struct_3(var_0.d, Struct_1(global3.a, global3.b, vec4<i32>(u_input.d.x, -2147483647i, var_0.d.b.c.x, var_2.x)), 1328f, var_0.d, global3.b.wx), Struct_3(Struct_2(var_0.c, Struct_1(var_0.d.b.a, var_0.b.b, vec4<i32>(var_0.b.c.x, var_0.b.c.x, u_input.a.x, u_input.c.x))), Struct_1(vec3<f32>(-831f, global1[_wgslsmith_index_u32(u_input.b, 8u)], 178f), vec4<f32>(global3.a.x, 1000f, global3.a.x, 396f), vec4<i32>(u_input.c.x, -1i, u_input.e, 2147483647i)), -694f, Struct_2(216f, var_0.b), var_0.a.b.a.zx), func_5(Struct_2(829f, var_0.d.b), Struct_3(Struct_2(var_0.b.b.x, Struct_1(global3.b.yxz, vec4<f32>(var_1.x, 625f, 1378f, global2[_wgslsmith_index_u32(5262u, 21u)]), vec4<i32>(var_0.b.c.x, 0i, -23324i, u_input.a.x))), var_0.a.b, -1000f, Struct_2(-1294f, var_0.d.b), vec2<f32>(-416f, var_0.e.x)), Struct_3(var_0.a, Struct_1(var_0.d.b.b.xyz, global3.b, var_0.d.b.c), 665f, var_0.d, var_1.xy), var_0.a)), Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(u_input.b, 8u)]), Struct_2(-222f, Struct_1(var_0.a.b.b.yzz, vec4<f32>(var_1.x, var_0.d.a, 595f, var_1.x), global3.c)), global3.b.xw), Struct_3(var_0.a, var_0.d.b, var_0.e.x, func_5(var_0.a, Struct_3(var_0.a, var_0.b, 719f, Struct_2(1000f, Struct_1(vec3<f32>(var_0.b.a.x, -479f, global2[_wgslsmith_index_u32(1u, 21u)]), global3.b, vec4<i32>(0i, var_2.x, var_2.x, 1i))), global3.b.zy), Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(var_0.b.a, global3.b, vec4<i32>(0i, u_input.c.x, -1i, -1i))), var_0.b, global1[_wgslsmith_index_u32(4294967295u, 8u)], var_0.a, var_0.d.b.b.xz), var_0.d), _wgslsmith_f_op_vec2_f32(var_1.yx * global3.b.xz)), Struct_2(global3.b.x, Struct_1(vec3<f32>(-380f, 517f, global1[_wgslsmith_index_u32(20990u, 8u)]), var_0.b.b, var_0.d.b.c))), var_0.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(895f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(233f)), _wgslsmith_f_op_f32(trunc(1628f)), true))), var_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_0.e.x), global1[_wgslsmith_index_u32(u_input.b, 8u)]) - vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c, global2[_wgslsmith_index_u32(23497u, 21u)], false)), 1481f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.a.x - var_0.b.b.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b.x)))), func_4(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], ~vec2<u32>(u_input.b, 17977u)), ~u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b) | vec4<u32>(1u, 21876u, u_input.b, 66457u), ~vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u))).b)).b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<i32>(0i, _wgslsmith_clamp_i32(global3.c.x, -16408i, 1i))));
}

