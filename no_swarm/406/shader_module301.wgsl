struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9>;

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: Struct_1 = Struct_1(1u, -10535i, vec2<f32>(-2406f, -1000f), false, vec3<bool>(false, true, false));

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    global1 = array<vec2<u32>, 2>();
    let var_0 = ~(vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, ~arg_2.a), arg_2.a, ~u_input.b.x | ~34907u, 6944u) & (~vec4<u32>(u_input.b.x, u_input.b.x, 36634u, 0u) & ~firstLeadingBit(vec4<u32>(56019u, arg_2.a, arg_2.a, 1u))));
    global3 = array<Struct_2, 3>();
    var var_1 = global3[_wgslsmith_index_u32(47740u, 3u)];
    var var_2 = Struct_3(~var_1.a);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, 1008f)) * _wgslsmith_f_op_vec2_f32(sign(arg_2.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1381f)), arg_2.d))));
}

fn func_2() -> vec4<u32> {
    global2 = Struct_1(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~29260u), ~u_input.a.x, vec2<f32>(global2.c.x, global2.c.x), false, global2.e);
    let var_0 = false;
    var var_1 = global2.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(global2.d, true, global2.b < 2147483647i), ~_wgslsmith_mod_i32(global2.b, 0i), Struct_1(23332u | global2.a, -96959i, _wgslsmith_f_op_vec2_f32(-global2.c), var_0, global2.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(313f, global2.c.x), global2.c))))));
    let var_3 = !(!vec2<bool>(var_0, !any(vec3<bool>(true, var_0, false))));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.a, global2.a, 0u), vec4<u32>(_wgslsmith_mult_u32(~u_input.b.x, 4294967295u | global2.a), u_input.b.x, global2.a, 4294967295u) << (vec4<u32>(~1u, _wgslsmith_add_u32(u_input.b.x, 1u) & 4294967295u, ~global2.a, global2.a) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * -838f)) <= arg_1.x;
    global3 = array<Struct_2, 3>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_div_f32(2514f, arg_1.x), 506f, _wgslsmith_f_op_f32(f32(-1f) * -749f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(global2.c.x * -530f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(44923u, 9u)])))));
    var var_2 = select(!(!vec4<bool>(arg_2 || false, true, !global2.d, global2.e.x)), vec4<bool>(global2.e.x, all(select(vec3<bool>(false, arg_2, true), select(vec3<bool>(arg_2, false, arg_2), global2.e, global2.e), false)), countOneBits(global2.b) >= -23334i, true), any(vec4<bool>(any(vec2<bool>(global2.e.x, global2.d)), global2.d, false, arg_2)));
    var_2 = select(select(select(vec4<bool>(any(vec4<bool>(false, false, false, true)), false & global2.d, global2.b > -2147483647i, false), !(!vec4<bool>(false, arg_2, false, global2.d)), vec4<bool>(true, any(global2.e.yy), true, any(vec4<bool>(global2.e.x, var_2.x, true, var_2.x)))), select(!select(vec4<bool>(true, false, global2.e.x, false), vec4<bool>(global2.e.x, var_2.x, true, global2.d), global2.d), !(!vec4<bool>(global2.d, true, true, true)), !(u_input.a.x >= 1i)), vec4<bool>(true, any(select(var_2.xxw, vec3<bool>(true, global2.e.x, var_2.x), var_2.x)), select(true, var_2.x && false, all(vec2<bool>(global2.e.x, arg_2))), var_2.x)), !(!(!vec4<bool>(arg_2, arg_2, false, false))), true);
    return Struct_2(min(arg_0, _wgslsmith_add_vec4_u32(arg_0, firstTrailingBit(vec4<u32>(0u, 67088u, 0u, u_input.b.x) & vec4<u32>(1u, u_input.b.x, 1u, global2.a)))), countOneBits(~0i ^ global2.b), vec2<bool>((!arg_2 | global2.e.x) | !select(false, true, true), false));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(4294967295u, 41059i, global2.c, global2.e.x, global2.e);
    var var_1 = arg_0.b;
    global0 = array<vec4<f32>, 9>();
    var_1 = u_input.a.x;
    global0 = array<vec4<f32>, 9>();
    return var_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<u32> {
    global2 = arg_1;
    global1 = array<vec2<u32>, 2>();
    global1 = array<vec2<u32>, 2>();
    global1 = array<vec2<u32>, 2>();
    global2 = func_5(func_4(func_2(), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(~u_input.b.x, 9u)])))), global2.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * -1914f)));
    return ~_wgslsmith_add_vec4_u32(vec4<u32>(~(~1u), ~(~arg_1.a), 0u, 0u), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(8481u, 1u, 1u, 1500u), vec4<u32>(arg_0, 6902u, 4294967295u, 0u))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_2(countOneBits(vec4<u32>(func_1(1u, func_5(Struct_2(vec4<u32>(1363u, 4294967295u, arg_1.x, 1u), arg_2, global2.e.yz)), countOneBits(vec2<i32>(-18476i, 0i))).x, 66138u & ~u_input.b.x, 4294967295u, 7952u)), 0i, global2.e.xx);
    global0 = array<vec4<f32>, 9>();
    let var_1 = 1i & abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, arg_2 | 12207i), -(~(-6738i))));
    let var_2 = global2.e;
    var var_3 = func_5(Struct_2(vec4<u32>(var_0.a.x << (countOneBits(10703u) % 32u), 63903u, _wgslsmith_add_u32(~1u, arg_0.x), ~_wgslsmith_mod_u32(8162u, arg_0.x)), i32(-1i) * -1i, var_2.yy));
    return _wgslsmith_mult_u32(~(~(~u_input.b.x)) & 28434u, arg_0.x >> (20503u % 32u));
}

fn func_7(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = all(vec4<bool>(!any(arg_3), arg_3.x, select(true && (global2.b > global2.b), !func_4(vec4<u32>(12046u, 0u, 0u, global2.a), vec4<f32>(-895f, -761f, -438f, 503f), global2.e.x).c.x, any(!arg_3.zzx)), any(func_5(Struct_2(vec4<u32>(0u, u_input.b.x, arg_2, 32156u), 1i, vec2<bool>(global2.d, arg_3.x))).e)));
    let var_1 = firstLeadingBit(vec2<i32>(global2.b, -1i));
    let var_2 = arg_0;
    global2 = Struct_1(1u | (~(global2.a << (arg_2 % 32u)) | ~_wgslsmith_div_u32(u_input.b.x, global2.a)), -17206i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(arg_1.x - global2.c.x))), _wgslsmith_sub_u32(4294967295u, arg_2) < 26544u, select(arg_3.zwy, !vec3<bool>(false, true, arg_3.x), func_5(func_4(~vec4<u32>(1u, arg_2, 76750u, 17296u), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 9u)] * global0[_wgslsmith_index_u32(11287u, 9u)]), true)).e));
    var var_3 = Struct_3(vec4<u32>(global2.a, global2.a, u_input.b.x, u_input.b.x));
    return func_4(vec4<u32>(_wgslsmith_div_u32(global2.a, ~32342u) << ((~u_input.b.x ^ select(var_3.a.x, global2.a, var_2)) % 32u), countOneBits(~4294967295u), ~0u, reverseBits(var_3.a.x) | u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-1057f + _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(round(-472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.x, 247f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-482f)) - _wgslsmith_f_op_f32(-430f + -202f)) * _wgslsmith_f_op_f32(-global2.c.x)), global2.c.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(!(global2.b >= abs(u_input.a.x ^ 2147483647i)), vec3<f32>(-121f, global2.c.x, -672f), func_6(~vec4<u32>(0u, global2.a, global2.a, 19488u) | vec4<u32>(1953u, _wgslsmith_sub_u32(global2.a, global2.a), 34482u, abs(global2.a)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, global2.a, u_input.b.x, global2.a), vec4<u32>(1u, 15678u, 5449u, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(global2.a, ~global2.a, max(global2.a, global2.a), 42947u)), 2147483647i, vec4<u32>(~(~u_input.b.x), u_input.b.x, 1u, _wgslsmith_dot_vec4_u32(func_1(73447u, Struct_1(4294967295u, global2.b, vec2<f32>(-1477f, global2.c.x), false, global2.e), vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global2.a, 1u, u_input.b.x), vec4<u32>(global2.a, 14167u, global2.a, u_input.b.x))))), select(select(!vec4<bool>(true, global2.d, false, true), !select(vec4<bool>(global2.e.x, false, false, global2.d), vec4<bool>(false, global2.d, true, false), vec4<bool>(false, global2.d, global2.d, global2.d)), !global2.d), !(!vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x)), !(!select(vec4<bool>(false, false, global2.d, false), vec4<bool>(global2.d, global2.d, true, false), true))));
    var var_1 = _wgslsmith_div_vec2_i32(min(vec2<i32>(3353i, ~max(var_0.b, 0i)), (_wgslsmith_mod_vec2_i32(u_input.a, u_input.a) << (firstLeadingBit(vec2<u32>(4294967295u, 7326u)) % vec2<u32>(32u))) & u_input.a), firstLeadingBit(~(vec2<i32>(-1i) * -u_input.a)));
    let var_2 = ~var_0.a.x;
    global2 = Struct_1(~(~_wgslsmith_add_u32(var_0.a.x & 0u, ~var_0.a.x)), -24510i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), -607f)) - global2.c), !global2.e.x, vec3<bool>(true, all(select(vec4<bool>(var_0.c.x, var_0.c.x, global2.d, false), !vec4<bool>(global2.d, false, false, global2.e.x), !var_0.c.x)), true));
    let var_3 = select(global2.e, select(vec3<bool>(var_0.c.x, (14628u << (0u % 32u)) <= ~var_2, true), global2.e, select(select(global2.e, global2.e, false), vec3<bool>(any(var_0.c), func_7(false, vec3<f32>(209f, global2.c.x, global2.c.x), u_input.b.x, vec4<bool>(true, true, var_0.c.x, false)).c.x, all(vec3<bool>(false, false, false))), global2.e)), !vec3<bool>(!(!global2.d), select(var_0.c.x, false, any(global2.e)), func_7(global2.e.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(313f, 518f, global2.c.x), vec3<f32>(-751f, global2.c.x, global2.c.x), true)), 0u, select(vec4<bool>(global2.e.x, false, global2.e.x, global2.d), vec4<bool>(false, global2.d, false, true), var_0.c.x)).c.x));
    let var_4 = Struct_1(global2.a | 15593u, -52542i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1680f, global2.c.x)) * _wgslsmith_f_op_vec2_f32(-global2.c)))), func_7(false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(840f - global2.c.x), global2.c.x, global2.c.x), vec3<f32>(_wgslsmith_f_op_f32(global2.c.x * 239f), global2.c.x, -468f), var_0.c.x)), var_2, select(select(select(vec4<bool>(var_3.x, true, true, var_0.c.x), vec4<bool>(false, false, true, false), global2.e.x), vec4<bool>(true, var_0.c.x, var_3.x, false), vec4<bool>(true, var_0.c.x, var_3.x, false)), select(vec4<bool>(var_0.c.x, true, global2.e.x, false), !vec4<bool>(global2.e.x, false, false, var_3.x), select(vec4<bool>(true, var_3.x, global2.e.x, false), vec4<bool>(var_0.c.x, true, true, var_3.x), false)), vec4<bool>(var_3.x && global2.e.x, -2147483647i <= var_0.b, func_5(Struct_2(var_0.a, -1i, vec2<bool>(true, false))).d, true))).c.x, select(global2.e, !vec3<bool>(all(vec2<bool>(true, global2.e.x)), all(global2.e.zy), var_2 == 12628u), 0u < var_2));
    var var_5 = 15877u;
    let var_6 = var_4;
    let var_7 = ~var_6.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_6.b ^ var_1.x, ~(-24669i)), 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(!global2.e, u_input.a.x, func_5(Struct_2(vec4<u32>(1u, 1u, u_input.b.x, 1u), 25592i, var_3.zx)))).x - func_5(global3[_wgslsmith_index_u32(global2.a, 3u)]).c.x), global2.b, var_6.c, _wgslsmith_div_f32(-1371f, _wgslsmith_f_op_f32(-global2.c.x)));
}

