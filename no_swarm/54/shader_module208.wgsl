struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(vec4<bool>(firstTrailingBit(min(14357i, -32200i)) <= global0[_wgslsmith_index_u32(abs(~12998u), 29u)], false, select(true, false, true), true), _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_1.d.x, 29u)], i32(-1i) * -11329i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~arg_2 & ~vec4<u32>(u_input.a, arg_3.d.x, 43420u, 1u), ~_wgslsmith_clamp_vec4_u32(arg_1.d, vec4<u32>(36026u, 39632u, 4294967295u, 65377u), vec4<u32>(arg_1.d.x, 76501u, 107082u, u_input.a))), 29u)], global0[_wgslsmith_index_u32(arg_1.d.x, 29u)]), true, arg_2);
    global0 = array<i32, 29>();
    var var_1 = ~var_0.d.zww;
    var var_2 = abs(var_0.d.x);
    let var_3 = !arg_1.a.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1692f, -139f, 1021f)))), vec3<f32>(-381f, -549f, -1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 29u)], -_wgslsmith_sub_i32(select(-38866i, arg_0.b, arg_0.a.x), ~2715i) & -2147483647i);
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_1 = Struct_1(select(vec4<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(arg_0.c, arg_0.c), arg_0.a.yy)), arg_0.a.x), select(select(select(arg_0.a, arg_0.a, vec4<bool>(true, true, true, true)), !arg_0.a, arg_0.c), arg_0.a, arg_0.a), -1210f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1000f) - _wgslsmith_f_op_f32(-arg_1.x))), 32395i, _wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(-arg_1.x), arg_0.d);
    global0 = array<i32, 29>();
    return min(vec3<u32>(0u, ~(~_wgslsmith_div_u32(arg_0.d.x, 0u)), firstTrailingBit(~var_1.d.x)), var_1.d.zwz);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = ~_wgslsmith_mod_u32(89557u, u_input.a);
    let var_1 = -634f;
    let var_2 = Struct_1(select(vec4<bool>(all(vec4<bool>(false, true, arg_0.x, false)) | true, global0[_wgslsmith_index_u32(~25008u, 29u)] >= 54045i, arg_0.x, all(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(all(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !(!arg_0.x), !(u_input.a == u_input.a), true), select(arg_0, select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), select(arg_0, vec4<bool>(true, true, arg_0.x, true), arg_0.x), vec4<bool>(arg_0.x, true, true, false)), select(vec4<bool>(true, arg_0.x, false, true), !vec4<bool>(false, arg_0.x, arg_0.x, true), all(arg_0.zx)))), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(firstTrailingBit(53045u), 29u)], _wgslsmith_mod_i32(min(-global0[_wgslsmith_index_u32(u_input.a, 29u)], ~37947i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 29u)] & firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 29u)]))), !any(select(select(arg_0.zyw, arg_0.yzy, false), !arg_0.xzy, false)), _wgslsmith_sub_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 31581u, u_input.a, u_input.a), vec4<u32>(4294967295u, 57385u, u_input.a, u_input.a)) >> (vec4<u32>(u_input.a, 14920u, u_input.a, 0u) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 12067u), vec3<u32>(0u, 34362u, 50299u)), 47809u, ~5641u)));
    global0 = array<i32, 29>();
    var var_3 = ~var_2.d.www;
    return _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(var_2.d.xxz ^ vec3<u32>(var_3.x, u_input.a, 1u), var_2.d.xwx, !var_2.a.wyy), func_4(Struct_1(arg_0, 362i, true, vec4<u32>(u_input.a, var_2.d.x, 1u, u_input.a)), _wgslsmith_f_op_vec3_f32(func_3(var_2.d.ywx, var_2, vec4<u32>(38873u, 0u, 10759u, var_3.x), Struct_1(arg_0, 2147483647i, arg_0.x, var_2.d))))) ^ var_2.d.x, ~var_3.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 29>();
    let var_0 = vec2<u32>(_wgslsmith_div_u32(func_2(select(vec4<bool>(arg_0.x, arg_1.a.x, false, arg_1.c), arg_1.a, arg_1.a)), ~(~4294967295u)), 13747u) & _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_div_vec2_u32(arg_1.d.zy & arg_1.d.ww, _wgslsmith_add_vec2_u32(arg_1.d.yy, vec2<u32>(u_input.a, arg_1.d.x))), vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_add_u32(28061u, u_input.a))), ~vec2<u32>(func_4(arg_1, vec3<f32>(-832f, -666f, 320f)).x, ~u_input.a));
    var var_1 = arg_1;
    let var_2 = 136f;
    let var_3 = arg_1;
    return Struct_1(select(var_3.a, !vec4<bool>(true, var_1.a.x & false, all(arg_1.a.yy), any(arg_1.a.xx)), all(vec4<bool>(!arg_1.c, var_3.c, arg_1.a.x, var_1.c))), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 29u)]), true, select(firstTrailingBit(arg_1.d), vec4<u32>(u_input.a, select(~4294967295u, 1u, false), _wgslsmith_mult_u32(~var_1.d.x, var_1.d.x), func_2(vec4<bool>(arg_0.x, false, arg_0.x, var_1.a.x))), vec4<bool>(!arg_1.a.x, var_3.c, any(arg_0), false)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> bool {
    var var_0 = arg_1.a.x;
    let var_1 = arg_1;
    let var_2 = var_1;
    var_0 = all(vec4<bool>(all(vec4<bool>(var_1.a.x, var_2.a.x, false, true)) == true, true, ~_wgslsmith_div_u32(var_2.d.x, u_input.a) == (var_1.d.x & 22053u), true));
    let var_3 = var_1;
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = true;
    var var_1 = arg_0;
    var_1 = func_1(vec2<bool>(!arg_0.a.x, true), arg_0);
    var var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(907f))) >= _wgslsmith_f_op_f32(f32(-1f) * -833f)));
    let var_3 = -1099f;
    return !vec3<bool>(true, true, select(var_1.c, arg_0.a.x, true == arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -358f;
    var var_1 = select(func_6(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(57698u, 29u)], global0[_wgslsmith_index_u32(~u_input.a, 29u)]), !any(vec4<bool>(true, false, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(67905u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, 0u, 1u))), func_5(func_1(vec2<bool>(false, true), Struct_1(vec4<bool>(false, false, false, true), 6835i, false, vec4<u32>(1u, 0u, 104022u, 4294967295u))), func_1(vec2<bool>(true, true), func_1(vec2<bool>(false, false), Struct_1(vec4<bool>(false, true, true, true), 20002i, true, vec4<u32>(15177u, u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-1258f - _wgslsmith_div_f32(-1345f, -668f)), vec4<bool>(false, any(vec4<bool>(false, true, false, false)), u_input.a <= u_input.a, true))), func_1(vec2<bool>(func_5(Struct_1(vec4<bool>(false, false, false, true), -1236i, true, vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), Struct_1(vec4<bool>(true, false, false, true), -2147483647i, true, vec4<u32>(u_input.a, u_input.a, 1u, 33280u)), 1000f, vec4<bool>(true, true, false, true)) && any(vec4<bool>(true, false, false, false)), false), func_1(vec2<bool>(true, true), func_1(vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(79334u, 29u)], false, vec4<u32>(36313u, u_input.a, u_input.a, 1u))))).a.wyy, !(!vec3<bool>(true, func_5(Struct_1(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(u_input.a, 29u)], false, vec4<u32>(u_input.a, 8490u, 12640u, u_input.a)), Struct_1(vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(u_input.a, 29u)], true, vec4<u32>(u_input.a, u_input.a, u_input.a, 33311u)), var_0, vec4<bool>(true, false, false, true)), true)));
    global0 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 312f, 1768f, -1310f))) + vec4<f32>(-406f, _wgslsmith_f_op_f32(138f + 1075f), _wgslsmith_f_op_f32(var_0 + var_0), -543f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-366f, -104f, -1513f, 934f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1696f, 1000f, 1412f, var_0)))) * vec4<f32>(_wgslsmith_f_op_f32(var_0 * 291f), var_0, _wgslsmith_f_op_f32(-1325f + var_0), 726f)), vec4<bool>(true, var_1.x, false, true))), vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(597f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2103f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(f32(-1f) * -753f))), false));
    var var_3 = ~select(abs((vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], 2147483647i) | vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], -5360i)) & _wgslsmith_add_vec2_i32(vec2<i32>(12776i, -1i), vec2<i32>(0i, 2147483647i))), max(_wgslsmith_mod_vec2_i32(vec2<i32>(-15166i, global0[_wgslsmith_index_u32(u_input.a, 29u)]), vec2<i32>(2147483647i, 0i)), countOneBits(vec2<i32>(-1i, -1i))) ^ ~(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)])), true);
    var var_4 = select(!any(func_1(!vec2<bool>(var_1.x, false), func_1(vec2<bool>(true, true), Struct_1(vec4<bool>(var_1.x, var_1.x, false, var_1.x), global0[_wgslsmith_index_u32(u_input.a, 29u)], false, vec4<u32>(1u, 5368u, u_input.a, 43844u)))).a.yyx), any(vec4<bool>(true, true, var_1.x, var_1.x)), false);
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-1365f + var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(134f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.a, u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), func_1(vec2<bool>(false, var_1.x), Struct_1(vec4<bool>(var_1.x, true, var_1.x, true), var_3.x, var_1.x, vec4<u32>(u_input.a, u_input.a, u_input.a, 27352u))), ~(vec4<u32>(u_input.a, 1u, 0u, 22724u) ^ vec4<u32>(51868u, u_input.a, 1u, u_input.a)), func_1(vec2<bool>(var_1.x, true), func_1(vec2<bool>(var_1.x, var_1.x), Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), 20007i, var_1.x, vec4<u32>(37728u, 20143u, 15851u, 539u)))))).xx), (~vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], var_3.x) | _wgslsmith_mod_vec4_i32(-vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(u_input.a, 29u)], -16996i, -1i), -vec4<i32>(var_3.x, global0[_wgslsmith_index_u32(1177u, 29u)], -1i, 16788i))) & vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_3.x, -7170i, var_3.x, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 0i, global0[_wgslsmith_index_u32(u_input.a, 29u)], var_3.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], var_3.x, var_3.x, 1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], var_3.x, var_3.x, -2147483647i))), _wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), 0i), -22888i, _wgslsmith_div_i32(-7995i, 1i)));
}

