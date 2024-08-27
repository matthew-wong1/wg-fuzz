struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: array<u32, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec2<bool> {
    global2 = array<u32, 4>();
    global1 = array<vec4<i32>, 29>();
    var var_0 = vec2<i32>(-1i) * -u_input.d.yy;
    global1 = array<vec4<i32>, 29>();
    return vec2<bool>(global0[_wgslsmith_index_u32(44578u, 2u)], !(any(vec4<bool>(global0[_wgslsmith_index_u32(39684u, 2u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 2u)], global0[_wgslsmith_index_u32(52667u, 2u)])) || true));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_2(select(vec2<u32>(~u_input.c, u_input.a & 1u), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 0u) & vec2<u32>(71253u, 101077u), select(func_3(Struct_2(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 4u)])), vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), vec4<i32>(u_input.b, -19849i, 26537i, u_input.d.x)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27614u, 4u)], 2u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)]))) ^ vec2<u32>(60043u, ~58355u));
    global2 = array<u32, 4>();
    return vec3<i32>(-u_input.d.x, _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(32042u, 29u)] & vec4<i32>(firstLeadingBit(u_input.b), ~(-34321i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.d.x), vec3<i32>(-41074i, u_input.d.x, -18264i)), -21256i), -vec4<i32>(u_input.b, u_input.b, countOneBits(-2147483647i), ~u_input.d.x)), u_input.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = select(!select(!(!vec3<bool>(global0[_wgslsmith_index_u32(53387u, 2u)], global0[_wgslsmith_index_u32(81063u, 2u)], true)), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(44310u, 2u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 2u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(60557u, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)]), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, false))), vec3<bool>(((-2447f == arg_3.x) || true) & true, global0[_wgslsmith_index_u32(76773u, 2u)], false), !(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(27467u, 2u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 2u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64441u, 4u)], 4u)], 2u)], global0[_wgslsmith_index_u32(35507u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13557u, 4u)], 4u)], 2u)])))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f) - -1000f) + arg_3.x);
    global1 = array<vec4<i32>, 29>();
    global0 = array<bool, 2>();
    var var_2 = vec2<f32>(-210f, arg_3.x);
    return Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 7035i, 1i), arg_1.a.x | -1i, i32(-1i) * -1i), max(-arg_2, max(arg_2, arg_2)), 0i), arg_1.a));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_div_u32(~80927u, ~u_input.c), _wgslsmith_mod_u32(1u, 1u), ~(global2[_wgslsmith_index_u32(u_input.c, 4u)] ^ arg_1.x), select(_wgslsmith_clamp_u32(14897u, arg_2.x, u_input.a), ~20201u, all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(arg_2.x, 2u)]))))), firstTrailingBit(vec4<u32>(22866u, u_input.c, arg_1.x, 21861u)));
    let var_1 = Struct_1(vec3<i32>(reverseBits(_wgslsmith_sub_i32(18479i << (var_0.x % 32u), arg_0.a.x)), _wgslsmith_add_i32(2415i, (1i << (var_0.x % 32u)) & (u_input.d.x & arg_0.a.x)), firstLeadingBit(-(arg_0.a.x | u_input.d.x))), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39323u, 4u)] | (global2[_wgslsmith_index_u32(arg_2.x | 6393u, 4u)] >> (var_0.x % 32u)), 2u)], all(!select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(18781u, 2u)], global0[_wgslsmith_index_u32(var_0.x, 2u)])))), !(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 2u)] & global0[_wgslsmith_index_u32(74265u, 2u)])), !global0[_wgslsmith_index_u32(7426u, 2u)], firstLeadingBit(u_input.d.x));
    let var_2 = func_4(1u, func_4(_wgslsmith_mod_u32(~(~u_input.a), _wgslsmith_add_u32(0u, ~4294967295u)), func_4(~_wgslsmith_div_u32(4294967295u, arg_1.x), Struct_3(u_input.d), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(257f, 613f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-198f, 930f), vec2<f32>(1000f, 1000f)))), max(abs(31669i), arg_0.a.x << (10050u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(49404u, arg_2.x) | vec2<u32>(34278u, 4294967295u), _wgslsmith_clamp_vec2_u32(arg_1.yz, arg_2.xy, arg_2.wy)) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, 845f))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1693f)), _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-475f, -1168f) + vec2<f32>(281f, 319f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 505f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1374f, 1992f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1469f, 534f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2233f, -1444f), -1282f, !global0[_wgslsmith_index_u32(arg_1.x, 2u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-320f * 420f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1515f + 1393f))))) + -1068f);
    let var_4 = 0i;
    return var_1.c.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> i32 {
    global2 = array<u32, 4>();
    global0 = array<bool, 2>();
    let var_0 = -53031i;
    var var_1 = func_5(func_4(4294967295u, Struct_3(func_2()), var_0 << (u_input.c % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1203f, -430f))))), vec4<u32>(1u, global2[_wgslsmith_index_u32(arg_3.x, 4u)], _wgslsmith_sub_u32(arg_3.x, arg_1), arg_3.x), ~vec4<u32>((4294967295u & arg_1) ^ abs(1u), 1u, ~(~30132u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_3 << (vec4<u32>(0u, 60567u, arg_3.x, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, arg_1, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.x, 4u)], 4u)], 1u)), 4u)]));
    var var_2 = vec3<i32>(-_wgslsmith_mult_i32(-2147483647i, var_0) ^ 0i, func_4(select(arg_3.x, ~arg_1, any(arg_0)), Struct_3(select(u_input.d, u_input.d, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 2u)])), (u_input.d.x >> (arg_1 % 32u)) ^ _wgslsmith_mult_i32(var_0, u_input.d.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(arg_2.yy))))).a.x, var_0) >> (arg_3.yxw % vec3<u32>(32u));
    return _wgslsmith_div_i32(-firstLeadingBit(_wgslsmith_mult_i32(-u_input.b, _wgslsmith_add_i32(-1191i, var_0))), ~func_4(_wgslsmith_sub_u32(40674u >> (1u % 32u), global2[_wgslsmith_index_u32(u_input.a, 4u)]), Struct_3(func_4(15796u, Struct_3(u_input.d), var_2.x, arg_2.yz).a), 10119i, vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(round(-770f)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    let var_0 = vec3<bool>(true, all(vec4<bool>(true, !(u_input.c >= u_input.a), all(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.a, 2u)])) & all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(8192u, 2u)])), true)), true);
    var var_1 = false;
    var_1 = true;
    global0 = array<bool, 2>();
    let var_2 = Struct_3(vec3<i32>(u_input.d.x, u_input.b, -func_1(var_0.yz, ~47120u, vec3<f32>(1f, 1f, 1f), ~vec4<u32>(68905u, 47273u, 0u, u_input.c))));
    global2 = array<u32, 4>();
    let var_3 = Struct_1(vec3<i32>(~(-_wgslsmith_mod_i32(32457i, var_2.a.x)), countOneBits(_wgslsmith_add_i32(~632i, var_2.a.x)), u_input.d.x), vec2<bool>(!(!any(var_0.xx)), true), select(!(!var_0), select(var_0, vec3<bool>(true, true, false), all(select(vec4<bool>(global0[_wgslsmith_index_u32(15016u, 2u)], global0[_wgslsmith_index_u32(46402u, 2u)], var_0.x, true), vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(22358u, 2u)], true, var_0.x)))), global0[_wgslsmith_index_u32(1u, 2u)]), func_3(Struct_2(vec2<u32>(~5066u, 19526u)), ~reverseBits(vec3<i32>(39207i, var_2.a.x, var_2.a.x)) & (vec3<i32>(u_input.b, 28883i, 1i) >> (~vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 4u)], u_input.c) % vec3<u32>(32u))), abs(vec4<i32>(1i, -40743i >> (u_input.c % 32u), -36435i, firstLeadingBit(1i)))).x, _wgslsmith_sub_i32(-abs(0i), var_2.a.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-994f, 720f, -509f, -1972f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~global1[_wgslsmith_index_u32(~80490u, 29u)], ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, 16796i, var_3.a.x), _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(18018u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(~u_input.c, 29u)], ~select(vec4<i32>(u_input.b, -1i, var_3.e, var_2.a.x), select(global1[_wgslsmith_index_u32(u_input.c, 29u)], vec4<i32>(29306i, var_2.a.x, var_3.a.x, var_3.a.x), vec4<bool>(global0[_wgslsmith_index_u32(7659u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 4u)], 2u)], global0[_wgslsmith_index_u32(33297u, 2u)], var_0.x)), !vec4<bool>(true, true, var_3.d, false))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i)), -vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(85872u, 68413u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), select(vec3<u32>(1u, 73485u, global2[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26334u, 4u)], 4u)], 4u)], 4u)], 4294967295u, 1u), false)), global2[_wgslsmith_index_u32(40786u, 4u)])), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_4.x, var_4.x)))), var_4.x, 669f), vec3<f32>(var_4.x, var_4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.x * var_4.x), _wgslsmith_div_f32(var_4.x, var_4.x), true))), true)));
}

