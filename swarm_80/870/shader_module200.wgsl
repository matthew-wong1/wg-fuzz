struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: array<f32, 9> = array<f32, 9>(-1010f, -1213f, -685f, -127f, -648f, -1000f, -534f, -557f, 1000f);

var<private> global2: f32;

var<private> global3: Struct_3 = Struct_3(1341f, Struct_2(vec4<i32>(-13942i, i32(-2147483648), 0i, 1297i), Struct_1(vec2<i32>(0i, -33514i), -40049i, 29217u)), vec4<u32>(4294967295u, 0u, 4147u, 4294967295u), Struct_2(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 20958i), Struct_1(vec2<i32>(42463i, -1i), 1i, 0u)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<u32> {
    let var_0 = global3.b.b;
    let var_1 = firstLeadingBit(u_input.a);
    global2 = -1008f;
    var var_2 = Struct_2(vec4<i32>(30150i, -global3.b.b.b, -1i, countOneBits(~(u_input.c.x ^ 32896i))), global3.d.b);
    let var_3 = u_input.a;
    return global3.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_3 {
    global1 = array<f32, 9>();
    var var_0 = arg_0.xw;
    let var_1 = Struct_3(global3.a, global3.d, select(_wgslsmith_div_vec4_u32(~global3.c, ~func_3(global3.d.b.a.x, u_input.a)), ~abs(~global3.c), arg_0), Struct_2(firstLeadingBit(~_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(2147483647i, 0i, -2147483647i, u_input.d))), Struct_1(global3.b.a.wx, global3.b.a.x, u_input.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f * -827f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.b.b.c, 9u)])))), var_1.a) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], 231f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))))));
    let var_3 = global3.c.x;
    return var_1;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    return func_2(select(select(vec4<bool>(any(vec2<bool>(false, true)), true, true, true), vec4<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), arg_1.a.x).b.b;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> i32 {
    global1 = array<f32, 9>();
    global3 = func_2(select(vec4<bool>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32328u, 9u)]) < global3.a, false, true, true), vec4<bool>(true, true, true, true), !(false && all(vec4<bool>(false, true, false, true)))), 2147483647i);
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, 351f, global3.a, -166f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-715f, global3.a, 628f, global1[_wgslsmith_index_u32(4294967295u, 9u)]) - vec4<f32>(-948f, global1[_wgslsmith_index_u32(42365u, 9u)], -1089f, -421f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(23041u, 9u)], 1463f)), _wgslsmith_f_op_f32(abs(1027f)), global1[_wgslsmith_index_u32(global3.c.x, 9u)], _wgslsmith_f_op_f32(round(1365f))))));
    global2 = _wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(func_2(vec4<bool>(any(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, false)), true), -12176i).a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(386f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1100u, 9u)] - global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2347f)))))));
    var var_1 = 0i ^ func_2(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), global3.b.b.a.x).d.b.a.x;
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(-arg_0.a.x, arg_0.b), _wgslsmith_mult_i32(global3.d.a.x, _wgslsmith_dot_vec2_i32(global3.d.a.yx, global3.d.b.a)) >> (~21927u % 32u)) << (_wgslsmith_div_u32(~_wgslsmith_clamp_u32(~35835u, _wgslsmith_dot_vec3_u32(global3.c.zzy, global3.c.xxz), _wgslsmith_mult_u32(u_input.a, arg_0.c)), ~(~0u)) % 32u);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = vec2<u32>(~(~(arg_1.c >> (2818u % 32u))), 36461u);
    let var_1 = _wgslsmith_add_i32(func_5(func_4(Struct_5(global3.c, Struct_3(198f, global3.b, vec4<u32>(arg_0, global3.b.b.c, var_0.x, 18545u), global3.d), _wgslsmith_mod_vec4_u32(global3.c, global3.c), Struct_3(global3.a, Struct_2(global3.d.a, Struct_1(u_input.c.zw, -42750i, 1u)), vec4<u32>(var_0.x, 0u, arg_0, 47324u), global3.d), vec2<i32>(global3.d.a.x, -1i)), Struct_1(vec2<i32>(-2147483647i, arg_1.a.x) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), ~global3.d.b.b, ~0u), arg_1, Struct_5(vec4<u32>(arg_0, 1u, global3.d.b.c, arg_0), func_2(vec4<bool>(false, true, false, false), u_input.d), vec4<u32>(2026u, u_input.a, 0u, var_0.x), func_2(vec4<bool>(true, true, false, true), arg_1.a.x), ~vec2<i32>(global3.d.a.x, global3.b.a.x))), -10535i << ((min(arg_0, 1u) >> (2793u % 32u)) % 32u)), ~(~u_input.d));
    let var_2 = !select(select(vec4<bool>(true, true, select(false, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, u_input.a > 0u)), !vec4<bool>(all(vec4<bool>(true, false, true, false)), true, any(vec4<bool>(true, true, true, true)), select(false, true, true)), firstTrailingBit(0i) == u_input.d);
    global1 = array<f32, 9>();
    let var_3 = arg_1;
    return func_2(var_2, -31755i);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    global2 = -1713f;
    global3 = func_1(_wgslsmith_mod_u32(min(~global3.d.b.c, arg_0.d.b.c), _wgslsmith_div_u32(select(_wgslsmith_clamp_u32(1u, 0u, arg_0.d.b.c), arg_0.b.b.c, true), ~min(arg_0.b.b.c, 4294967295u))), Struct_1(global3.d.a.xx, _wgslsmith_dot_vec4_i32(~func_1(13081u, arg_0.d.b).b.a, -func_1(2064u, arg_0.d.b).d.a), reverseBits(arg_0.b.b.c)));
    var var_0 = vec3<i32>(-64165i, _wgslsmith_mult_i32(-1i, global3.d.a.x), -2147483647i);
    var var_1 = ~4294967295u;
    let var_2 = arg_0;
    return Struct_3(global1[_wgslsmith_index_u32(708u, 9u)], func_2(select(vec4<bool>(1529f > global1[_wgslsmith_index_u32(u_input.a, 9u)], true, true, false), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, select(true, true, true))), -1i).b, min(~((vec4<u32>(var_2.d.b.c, 1u, u_input.a, 4294967295u) >> (vec4<u32>(var_2.b.b.c, arg_0.d.b.c, var_2.d.b.c, u_input.a) % vec4<u32>(32u))) & (global3.c >> (vec4<u32>(54622u, var_2.c.x, global3.c.x, 1u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.c.x, 22154u & arg_0.d.b.c, arg_0.c.x, 17380u), max(vec4<u32>(31427u, arg_0.b.b.c, 105019u, global3.c.x), vec4<u32>(4294967295u, var_2.b.b.c, arg_0.b.b.c, 0u)) << ((global3.c & vec4<u32>(arg_0.d.b.c, arg_0.d.b.c, global3.b.b.c, var_2.c.x)) % vec4<u32>(32u)))), var_2.b);
}

fn func_7(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_5(vec4<u32>(arg_3.c, arg_0.a.b.b.c, abs(~countOneBits(global3.c.x)), 0u), arg_0.a, arg_2.a, func_2(select(select(select(vec4<bool>(arg_0.b, arg_0.d.x, arg_0.d.x, false), vec4<bool>(true, arg_0.d.x, arg_0.d.x, false), true), select(vec4<bool>(arg_0.d.x, arg_0.e, arg_0.e, arg_0.e), vec4<bool>(arg_0.d.x, false, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b)), vec4<bool>(false, arg_0.e, arg_0.b, true)), select(!vec4<bool>(arg_0.b, arg_0.d.x, arg_0.d.x, false), select(vec4<bool>(arg_0.d.x, arg_0.e, true, true), vec4<bool>(arg_0.e, true, false, arg_0.b), vec4<bool>(false, false, arg_0.d.x, false)), true), true), global3.b.b.a.x), ~(-_wgslsmith_mult_vec2_i32(max(u_input.c.wy, vec2<i32>(arg_3.b, arg_2.e.x)), min(arg_2.d.d.a.yz, u_input.c.zy))));
    var var_1 = ~vec4<u32>(~var_0.c.x, 1u, ~29629u, ~(~(~global3.c.x)));
    global1 = array<f32, 9>();
    global0 = array<vec3<i32>, 2>();
    var var_2 = arg_0.e;
    return var_0.d.d.b;
}

fn func_8(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_5 {
    var var_0 = !(!select(select(vec4<bool>(arg_2.d.x, arg_2.d.x, false, false), vec4<bool>(arg_2.d.x, false, true, true), select(vec4<bool>(false, true, arg_2.d.x, arg_2.d.x), vec4<bool>(true, false, false, arg_2.e), true)), !vec4<bool>(arg_2.b, false, false, true), vec4<bool>(true, true, false, true)));
    var_0 = !select(select(vec4<bool>(all(vec2<bool>(true, var_0.x)), -10179i > arg_1.b, arg_2.e, any(vec2<bool>(arg_2.d.x, var_0.x))), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, arg_2.e, arg_2.e), !var_0.x), any(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, arg_2.e), vec4<bool>(true, arg_2.d.x, arg_2.b, var_0.x)))), select(vec4<bool>(true, var_0.x, var_0.x & false, all(var_0.xz)), vec4<bool>(false && arg_2.d.x, true, true, var_0.x), !arg_2.d.x), vec4<bool>(false || any(vec4<bool>(true, false, arg_2.b, arg_2.d.x)), any(vec4<bool>(false, true, false, true)), any(select(vec4<bool>(var_0.x, true, arg_2.e, true), vec4<bool>(arg_2.d.x, arg_2.e, false, false), vec4<bool>(arg_2.d.x, var_0.x, false, false))), true));
    let var_1 = Struct_5(_wgslsmith_mult_vec4_u32(max(~_wgslsmith_sub_vec4_u32(global3.c, global3.c), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c, 878u, 21847u, global3.d.b.c), arg_2.a.c), ~arg_2.a.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(global3.c), vec4<u32>(70912u, 4294967295u, 1u, arg_2.a.b.b.c)), func_2(!vec4<bool>(true, arg_2.d.x, true, arg_2.d.x), arg_1.a.x).c)), Struct_3(_wgslsmith_f_op_f32(-arg_2.a.a), Struct_2(vec4<i32>(func_1(arg_0, arg_2.a.b.b).d.b.a.x, i32(-1i) * -63149i, arg_1.b, 53881i), func_6(Struct_3(297f, arg_2.a.d, global3.c, Struct_2(vec4<i32>(global3.b.b.a.x, 6783i, u_input.b, arg_1.a.x), global3.b.b))).b.b), ~vec4<u32>(~arg_2.a.b.b.c, 5504u, ~40242u, 4294967295u), Struct_2(_wgslsmith_mod_vec4_i32(-u_input.c, -u_input.c), func_4(Struct_5(global3.c, arg_2.a, global3.c, Struct_3(global1[_wgslsmith_index_u32(global3.b.b.c, 9u)], arg_2.a.b, arg_2.a.c, Struct_2(u_input.c, global3.b.b)), arg_2.a.d.a.zx), Struct_1(vec2<i32>(51033i, -33792i), arg_1.a.x, 20777u), Struct_1(global3.b.a.xw, 1072i, u_input.a), Struct_5(vec4<u32>(arg_2.a.d.b.c, 1u, 4775u, arg_2.a.c.x), arg_2.a, vec4<u32>(arg_1.c, 0u, 4294967295u, global3.c.x), arg_2.a, arg_2.a.d.b.a)))), ~(~arg_2.a.c), func_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(min(global3.c.x, 66838u), global3.b.b.c ^ arg_1.c), arg_1.c), func_1(func_1(arg_0, arg_2.a.b.b).b.b.c, global3.d.b).d.b), func_1(~countOneBits(1u), func_4(Struct_5(vec4<u32>(arg_2.a.c.x, arg_2.a.d.b.c, 1u, global3.d.b.c) | global3.c, func_1(arg_2.a.d.b.c, Struct_1(vec2<i32>(-1i, arg_2.a.d.b.a.x), arg_1.a.x, 87784u)), arg_2.a.c, Struct_3(-866f, Struct_2(global3.b.a, Struct_1(vec2<i32>(1i, arg_1.a.x), arg_2.a.d.a.x, 4294967295u)), vec4<u32>(4294967295u, 9775u, 84175u, 4294967295u), Struct_2(vec4<i32>(23461i, arg_1.b, arg_2.a.d.b.b, global3.b.a.x), Struct_1(u_input.c.zx, arg_2.a.d.b.a.x, 10124u))), abs(vec2<i32>(24455i, 144i))), func_1(14269u, Struct_1(u_input.c.wz, -24239i, 4294967295u)).b.b, func_4(Struct_5(vec4<u32>(arg_2.a.b.b.c, arg_1.c, 0u, arg_0), Struct_3(arg_2.c, Struct_2(vec4<i32>(1i, 1i, -33506i, 0i), Struct_1(vec2<i32>(global3.d.a.x, u_input.c.x), -29137i, global3.d.b.c)), vec4<u32>(arg_2.a.d.b.c, global3.d.b.c, arg_2.a.c.x, u_input.a), Struct_2(arg_2.a.d.a, arg_1)), arg_2.a.c, arg_2.a, vec2<i32>(u_input.c.x, u_input.c.x)), Struct_1(arg_2.a.d.b.a, 13016i, arg_1.c), func_1(global3.c.x, Struct_1(arg_1.a, -2147483647i, arg_2.a.c.x)).d.b, Struct_5(vec4<u32>(1u, 0u, u_input.a, global3.b.b.c), Struct_3(global3.a, global3.d, vec4<u32>(4294967295u, 2499u, arg_0, arg_0), Struct_2(u_input.c, Struct_1(vec2<i32>(arg_2.a.d.a.x, arg_2.a.d.b.b), u_input.b, 1u))), vec4<u32>(0u, 0u, arg_0, 13238u), arg_2.a, global3.d.b.a)), Struct_5(~vec4<u32>(4294967295u, 1351u, arg_2.a.c.x, 1u), arg_2.a, vec4<u32>(arg_0, 0u, 1u, 183452u), arg_2.a, -vec2<i32>(arg_2.a.b.a.x, global3.b.b.a.x)))).d.b.a);
    var_0 = select(vec4<bool>(arg_2.e, true, !(!(var_1.b.d.a.x >= var_1.b.d.b.a.x)), all(!var_0.xww)), vec4<bool>(arg_2.d.x, true, false, false | all(select(vec2<bool>(true, var_0.x), arg_2.d, true))), !var_0.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 2>();
    let var_0 = ~(~(~(~select(global3.b.b.a.x, 1i, true))));
    global0 = array<vec3<i32>, 2>();
    var var_1 = 39789u;
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(global3.d.b.c, u_input.a), global3.c.x | global3.d.b.c), 9u)]));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f * _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(48032u, 9u)])))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 9u)] * 1470f))), true)) - _wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~4294967295u, 9u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.b.b.c, 9u)])))))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(497f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global3.d.b.c, 9u)])))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1128f - global3.a) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(41934u, 9u)], global3.a)), 1172f)), (_wgslsmith_f_op_f32(f32(-1f) * -1049f) > _wgslsmith_f_op_f32(global3.a + global3.a)) == true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + 423f)));
    var var_2 = func_8(u_input.a, func_7(Struct_4(func_6(func_1(global3.b.b.c, Struct_1(vec2<i32>(u_input.c.x, 2147483647i), var_0, u_input.a))), true, -545f, vec2<bool>(true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.c.x, 9u)]), global3.a), Struct_5(vec4<u32>(~global3.c.x, _wgslsmith_clamp_u32(u_input.a, 22938u, global3.b.b.c), 28644u, countOneBits(global3.c.x)), Struct_3(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.d.b.c, 9u)], 2049f), func_2(vec4<bool>(true, false, true, false), -2147483647i).d, _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.b.b.c, 76129u, u_input.a, u_input.a), vec4<u32>(0u, 23105u, 5674u, global3.d.b.c), global3.c), func_6(Struct_3(635f, Struct_2(vec4<i32>(var_0, global3.b.a.x, 13152i, -21995i), Struct_1(vec2<i32>(global3.b.b.b, u_input.c.x), -68026i, u_input.a)), global3.c, global3.b)).d), func_3(-1i & var_0, 11652u), Struct_3(_wgslsmith_f_op_f32(global3.a - global3.a), Struct_2(global3.b.a, Struct_1(vec2<i32>(-2147483647i, global3.d.a.x), var_0, 0u)), func_1(1u, global3.b.b).c, func_2(vec4<bool>(false, false, false, false), var_0).d), vec2<i32>(_wgslsmith_add_i32(var_0, 1i), global3.d.a.x)), Struct_1(firstTrailingBit(global3.d.b.a ^ global3.d.a.xw), u_input.d, 1u)), Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - global1[_wgslsmith_index_u32(0u, 9u)])), func_6(func_6(Struct_3(global1[_wgslsmith_index_u32(u_input.a, 9u)], global3.b, global3.c, Struct_2(vec4<i32>(0i, -11370i, u_input.d, global3.b.b.b), global3.d.b)))).b, global3.c, Struct_2(global3.b.a, global3.d.b)), ~_wgslsmith_div_i32(0i, u_input.d) <= -65077i, -1142f, vec2<bool>(false, _wgslsmith_f_op_f32(-1000f + global3.a) == _wgslsmith_f_op_f32(global3.a + 400f)), any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(countOneBits(func_2(vec4<bool>(true, true, true, false), u_input.c.x).b.b.b), 26724i, var_2.b.d.a.x, -10712i), global3.b.a));
}

