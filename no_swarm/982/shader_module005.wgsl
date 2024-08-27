struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_5) -> u32 {
    global1 = Struct_2(Struct_1(global1.a.a, max(select(_wgslsmith_add_vec3_i32(arg_3.a, global1.a.b), _wgslsmith_div_vec3_i32(global1.a.a.yyw, arg_3.a), any(arg_2.yyy)), global1.a.a.zwz), global1.c.c, arg_0), 0u, global1.c, vec4<u32>(~4294967295u, max(_wgslsmith_mult_u32(~u_input.a, 0u), 414u), 9447u, ~4294967295u));
    var var_0 = !vec4<bool>(~(~u_input.a) <= 106459u, arg_2.x, false, arg_2.x);
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global1.c.a, global1.a.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-41444i, 0i), vec2<i32>(arg_3.a.x, global1.c.a.x)), arg_1), arg_3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2053f, -1000f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(global1.b, 30u)]) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], -201f, 331f, 1634f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(756f + 449f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(75399u, 30u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_f_op_f32(1390f * -763f)), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3305u, 30u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_f_op_f32(1000f - -741f), _wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(39721u, 30u)])), select(vec4<bool>(true, true, true, false), !vec4<bool>(true, arg_0, true, false), !vec4<bool>(var_0.x, arg_0, global1.a.d, global1.c.d)))))));
    var_1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, 13157i)), global1.c.a.wx, arg_3.a.zx)), -1i), var_1.b, _wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36170u ^ global1.d.x, 30u)]), _wgslsmith_div_f32(-735f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(56031u, 30u)], -820f))), _wgslsmith_f_op_f32(245f - _wgslsmith_f_op_f32(var_1.b.x - global0[_wgslsmith_index_u32(1u, 30u)])), global0[_wgslsmith_index_u32(u_input.a, 30u)]))));
    let var_2 = _wgslsmith_dot_vec3_i32(max(~arg_3.a, vec3<i32>(-20655i, _wgslsmith_mult_i32(30029i, ~(-30700i)), -73997i)), countOneBits(vec3<i32>(~_wgslsmith_clamp_i32(0i, 0i, arg_1), _wgslsmith_mod_i32(-27837i, global1.a.b.x) ^ _wgslsmith_dot_vec4_i32(global1.a.a, vec4<i32>(var_1.a.x, arg_3.a.x, 463i, global1.a.b.x)), -firstLeadingBit(2147483647i))));
    return ~(~(~global1.a.c));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~func_3(true, select(_wgslsmith_div_i32(global1.c.b.x, _wgslsmith_mod_i32(-15309i, global1.a.b.x)), _wgslsmith_dot_vec4_i32(global1.a.a, countOneBits(global1.c.a)), global1.c.d), vec4<bool>(global1.a.d, global1.a.d, global1.a.d & true, max(-40649i, arg_0.a.x) == global1.c.a.x), Struct_5(-_wgslsmith_mod_vec3_i32(vec3<i32>(55232i, global1.a.a.x, arg_0.a.x), global1.c.a.xzy)));
    var var_1 = ~abs(_wgslsmith_clamp_vec3_i32(global1.a.a.zxx, select(firstTrailingBit(vec3<i32>(arg_0.a.x, -18324i, arg_0.a.x)), abs(global1.a.b), select(vec3<bool>(true, global1.c.d, true), vec3<bool>(false, global1.a.d, global1.c.d), vec3<bool>(global1.c.d, false, false))), ~global1.a.b));
    var var_2 = Struct_4(11569i, var_1.x);
    var_2 = Struct_4(arg_0.a.x, _wgslsmith_dot_vec2_i32(-(~var_1.yz), global1.c.b.zz));
    global1 = Struct_2(Struct_1(global1.c.a, vec3<i32>(31700i, -5834i, 43400i) ^ -global1.c.a.xzy, func_3(false, _wgslsmith_mult_i32(var_1.x, 728i) ^ -1i, select(select(vec4<bool>(true, global1.c.d, false, global1.a.d), vec4<bool>(global1.c.d, true, global1.a.d, true), true), !vec4<bool>(true, false, global1.c.d, global1.a.d), !vec4<bool>(true, global1.a.d, true, global1.c.d)), Struct_5(global1.a.a.yzw)), global1.c.d), min(_wgslsmith_div_u32(1u, ~38355u), 1u), global1.a, global1.d);
    return Struct_2(global1.c, ~max(67194u, _wgslsmith_mult_u32(~31816u, u_input.a)), global1.a, min(abs(~min(vec4<u32>(4294967295u, u_input.a, u_input.a, 28864u), vec4<u32>(var_0, var_0, global1.a.c, 27966u))), ~((vec4<u32>(46531u, var_0, 1u, global1.b) | vec4<u32>(u_input.a, var_0, var_0, 4294967295u)) >> (global1.d % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    global0 = array<f32, 30>();
    let var_0 = 32828u;
    let var_1 = Struct_5(firstLeadingBit(vec3<i32>(global1.a.b.x, 1i, 1i) << (vec3<u32>(~var_0, 60362u, global1.b) % vec3<u32>(32u))));
    let var_2 = 1u;
    return Struct_3(arg_0.c.b.zy & ~min(var_1.a.yx, vec2<i32>(global1.c.b.x, arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global1.d.x, 30u)], -1566f, 1011f, 1430f), vec4<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 30u)], 1000f, global0[_wgslsmith_index_u32(4294967295u, 30u)])) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(132f, -877f, 1914f, global0[_wgslsmith_index_u32(1u, 30u)]))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.d.yz, vec2<u32>(global1.a.c, var_0)), 30u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_2), 30u)]), global0[_wgslsmith_index_u32(~min(4294967295u, 1u), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-643f, global0[_wgslsmith_index_u32(34651u, 30u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2, 30u)], _wgslsmith_f_op_f32(min(957f, -113f)), global0[_wgslsmith_index_u32((4294967295u & arg_0.d.x) & ~var_2, 30u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 30u)], -458f), arg_1))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0.b, 30u)], -1518f, false)), _wgslsmith_f_op_f32(round(1651f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 916f), global0[_wgslsmith_index_u32(firstLeadingBit(var_0), 30u)]))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    return func_4(func_2(Struct_3(global1.a.a.yx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, -1893f, -1089f, global0[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1315f, -1000f, -316f, -232f) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(47809u, 30u)], -603f, global0[_wgslsmith_index_u32(arg_2, 30u)])))))), true);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = func_1(func_2(func_4(func_2(Struct_3(arg_0.a, vec4<f32>(326f, -337f, -484f, -1564f), vec4<f32>(global0[_wgslsmith_index_u32(arg_1.c, 30u)], global0[_wgslsmith_index_u32(global1.a.c, 30u)], global0[_wgslsmith_index_u32(29229u, 30u)], 1025f))), arg_1.d)), Struct_4(~1i ^ global1.c.b.x, i32(-1i) * -(i32(-1i) * -1i)), 30795u).b;
    let var_1 = 1u;
    var var_2 = ~1u;
    var var_3 = true;
    var var_4 = reverseBits(arg_0.a.x);
    return 46084u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(2147483647i, global1.a.a.x);
    let var_1 = global1.c.d;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -763f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-724f, 1743f) + _wgslsmith_f_op_f32(min(-1000f, -284f))), global0[_wgslsmith_index_u32(func_5(func_1(Struct_2(global1.c, global1.d.x, Struct_1(global1.c.a, vec3<i32>(var_0, var_0, global1.a.b.x), u_input.a, true), vec4<u32>(global1.d.x, global1.b, 1u, global1.d.x)), Struct_4(1i, global1.c.b.x), u_input.a), global1.c, ~max(global1.d, vec4<u32>(16271u, 14283u, 4294967295u, u_input.a)), Struct_1(-vec4<i32>(-53136i, -79190i, var_0, 1i), ~global1.a.b, _wgslsmith_sub_u32(4294967295u, u_input.a), any(vec3<bool>(global1.a.d, true, true)))), 30u)], global1.a.d)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 73733u, global1.c.c), global1.d.wzw), 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29331u, 30u)] * 196f)))))), -1533f);
    global0 = array<f32, 30>();
    let var_4 = vec2<bool>(any(vec4<bool>(false, true, true, select(-1806f < var_3, 1i <= global1.c.a.x, global1.c.d))), !(!(global1.a.d | global1.c.d)));
    let var_5 = select(_wgslsmith_dot_vec2_i32(global1.c.b.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(81680i, 23789i), countOneBits(global1.a.b.yx))) ^ (~_wgslsmith_mod_i32(1i, global1.c.b.x) >> (44675u % 32u)), _wgslsmith_mult_i32(2147483647i, var_0), false);
    global1 = Struct_2(global1.a, global1.c.c, func_2(Struct_3(min(global1.c.b.zx >> (vec2<u32>(4294967295u, global1.d.x) % vec2<u32>(32u)), global1.a.b.zx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, 1546f, var_3, -1566f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3, var_3, 191f, -273f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, -1000f, -231f, global0[_wgslsmith_index_u32(u_input.a, 30u)])))))).c, vec4<u32>(55807u, firstTrailingBit(~4294967295u), _wgslsmith_div_u32(global1.a.c, global1.c.c & global1.b) >> (u_input.a % 32u), ~global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_2(Struct_3(vec2<i32>(-9894i, global1.a.a.x), func_1(Struct_2(Struct_1(global1.c.a, global1.c.a.xzz, global1.a.c, true), global1.b, Struct_1(global1.a.a, vec3<i32>(17204i, 2147483647i, global1.a.b.x), global1.d.x, global1.c.d), vec4<u32>(4294967295u, u_input.a, global1.a.c, global1.a.c)), Struct_4(var_5, 4367i), global1.d.x).b, func_4(Struct_2(Struct_1(global1.a.a, vec3<i32>(12264i, global1.a.a.x, var_5), u_input.a, global1.c.d), 0u, Struct_1(global1.a.a, global1.c.b, 41272u, false), vec4<u32>(15497u, u_input.a, u_input.a, global1.a.c)), global1.a.d).c)), Struct_4(global1.a.b.x, var_0), firstTrailingBit(u_input.a)).b.zxy, -vec4<i32>(abs(~var_5), global1.a.b.x, ~(-16189i | global1.c.b.x), func_4(Struct_2(global1.a, 1u, Struct_1(vec4<i32>(var_5, 2147483647i, 0i, -61808i), vec3<i32>(25769i, var_0, global1.a.a.x), 4294967295u, true), global1.d), true).a.x), global1.a.a.wy);
}

