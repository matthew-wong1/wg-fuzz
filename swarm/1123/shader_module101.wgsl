struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(5841u, 34723u, 1u, 0u), vec4<u32>(1u, 53874u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 1u, 16104u), vec4<u32>(11410u, 25461u, 4294967295u, 1u), vec4<u32>(1u, 55594u, 6836u, 56146u), vec4<u32>(117840u, 58207u, 23097u, 39070u), vec4<u32>(0u, 15108u, 0u, 42068u), vec4<u32>(60512u, 3357u, 4294967295u, 1u), vec4<u32>(834u, 4294967295u, 11367u, 4294967295u), vec4<u32>(0u, 93848u, 9100u, 58893u), vec4<u32>(4294967295u, 8720u, 4294967295u, 59585u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(13133u, 4294967295u, 0u, 98027u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -1099f), vec2<f32>(866f, -776f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 421f) + vec2<f32>(arg_0, 1302f)))))));
    let var_1 = !select(vec3<bool>(all(global0[_wgslsmith_index_u32(~49448u, 5u)]), false, false), vec3<bool>(true, all(vec2<bool>(true, true)), true), true);
    var var_2 = !vec2<bool>(var_1.x, any(select(select(var_1.yx, vec2<bool>(true, var_1.x), true), var_1.xy, vec2<bool>(false, var_1.x))));
    global1 = array<vec4<u32>, 13>();
    let var_3 = select(reverseBits(~(~vec3<u32>(34019u, u_input.c.x, 0u))), reverseBits(u_input.d.xww), false);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 299f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 692f)))))), vec3<f32>(1689f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(arg_0 - 1000f)))), -896f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_0 = arg_0.x;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f * -1830f) + 417f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(arg_1))), _wgslsmith_f_op_f32(arg_2.a.b.x + arg_2.c), -209f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1272f, arg_2.c, 1626f), vec3<f32>(arg_1, 1923f, arg_2.d), vec3<bool>(false, arg_3, false)))))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-590f, arg_1.b.x)))))));
    let var_1 = arg_0.a;
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), 1219f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_0.b.wx, var_1.b.x, arg_0, arg_2.x))))));
    var_0 = _wgslsmith_div_vec3_f32(arg_3, arg_3);
    let var_2 = arg_0.b.x;
    return select(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.d.x, arg_1.d.x, _wgslsmith_div_i32(-2147483647i, var_1.d.x)), arg_0.a.a), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-29150i, -1488i), ~var_1.a), firstLeadingBit(select(arg_0.a.d.wz, u_input.b.xz, arg_2.x)))), countOneBits(0i), any(vec3<bool>(false, _wgslsmith_f_op_f32(-var_1.b.x) > _wgslsmith_f_op_f32(-arg_0.d), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(-1609f)).x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-799f - -1798f), -129f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-913f + _wgslsmith_div_f32(arg_2.b.x, arg_1.c)), arg_2.b.x, max(14820i, arg_1.a.d.x) > max(u_input.b.x, arg_1.a.d.x)))));
    let var_1 = _wgslsmith_mult_u32(34265u << (u_input.c.x % 32u), arg_1.a.c) ^ 4163u;
    global1 = array<vec4<u32>, 13>();
    return arg_0.b.x < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(755f * _wgslsmith_div_f32(arg_0.b.x, 1000f))))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global1 = array<vec4<u32>, 13>();
    let var_0 = arg_2.a;
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_1 = any(!vec3<bool>(!select(false, true, true), select(true, any(vec3<bool>(false, false, true)), true), true));
    return Struct_2(arg_2.a, _wgslsmith_div_vec4_u32(select(vec4<u32>(66796u, arg_2.a.c, _wgslsmith_mod_u32(u_input.c.x, 39297u), min(4294967295u, 4294967295u)), _wgslsmith_add_vec4_u32(arg_2.b, arg_2.b) | _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(var_0.c, 13u)], global1[_wgslsmith_index_u32(arg_2.a.c, 13u)]), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false))), arg_3.b), _wgslsmith_f_op_vec3_f32(func_2(max(vec2<u32>(reverseBits(var_0.c), 0u), arg_2.b.yx), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-arg_3.c))).x, arg_3, _wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(arg_2.c * 495f)) >= -1393f)).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(1i, 0i, func_4(Struct_1(func_1(Struct_2(Struct_1(u_input.b.x, vec2<f32>(-774f, -1484f), 0u, vec4<i32>(-56153i, 1i, u_input.b.x, 2147483647i)), global1[_wgslsmith_index_u32(u_input.d.x, 13u)], -1433f, 1028f), Struct_1(u_input.b.x, vec2<f32>(160f, 437f), u_input.d.x, u_input.b), vec2<bool>(true, false), vec3<f32>(-226f, -1000f, -924f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, 576f)), 13091u, firstLeadingBit(u_input.b)), Struct_2(Struct_1(u_input.b.x, vec2<f32>(724f, -806f), u_input.d.x, u_input.b), global1[_wgslsmith_index_u32(~u_input.c.x, 13u)], 431f, -464f), Struct_1(u_input.b.x, vec2<f32>(-834f, -696f), ~1u, ~u_input.b))), u_input.b.x, Struct_2(Struct_1(~u_input.b.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, -246f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-364f, 1799f), vec2<f32>(-1000f, 1525f)))), ~countOneBits(u_input.d.x), abs(select(vec4<i32>(16576i, 37367i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -20548i, 107i, u_input.b.x), vec4<bool>(false, false, false, false)))), ~vec4<u32>(35686u, u_input.c.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.c.x), u_input.c.x), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -993f), 218f))), Struct_2(Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1810f, 1863f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-991f, 1000f)))), u_input.d.x, -u_input.b << (vec4<u32>(u_input.d.x, 0u, 0u, 53377u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(32149u, 14679u, u_input.a, u_input.d.x), global1[_wgslsmith_index_u32(16312u, 13u)]), min(vec4<u32>(0u, u_input.c.x, 49147u, 27838u), vec4<u32>(1u, u_input.d.x, u_input.c.x, 20321u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-235f * 496f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-886f)), -502f))));
    let var_1 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false)), vec3<bool>(true, select(true, true, false), true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), vec3<bool>(_wgslsmith_f_op_f32(-var_0.c) == _wgslsmith_f_op_f32(var_0.a.b.x - -338f), any(vec4<bool>(true, true, true, true)), true)), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), func_4(Struct_1(2147483647i, vec2<f32>(var_0.c, 1166f), u_input.c.x, var_0.a.d), Struct_2(var_0.a, u_input.d, var_0.a.b.x, var_0.c), func_5(u_input.b.x, u_input.b.x, Struct_2(var_0.a, vec4<u32>(20584u, var_0.a.c, var_0.b.x, u_input.c.x), -132f, var_0.a.b.x), Struct_2(Struct_1(var_0.a.a, vec2<f32>(-329f, -400f), var_0.a.c, vec4<i32>(-2147483647i, -2147483647i, var_0.a.d.x, 2147483647i)), vec4<u32>(u_input.d.x, 0u, 0u, 32685u), var_0.d, -302f)).a)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), u_input.b.x <= 2147483647i), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true)), vec3<bool>(false, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))), select(vec3<bool>(true, !(1i < u_input.b.x), true), select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, select(true, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), true));
    let var_2 = !vec4<bool>(true, any(select(select(var_1.zz, vec2<bool>(var_1.x, var_1.x), false), select(vec2<bool>(true, false), var_1.yz, true), all(var_1))), var_1.x, !any(!vec2<bool>(true, var_1.x)));
    let var_3 = ~select(_wgslsmith_mult_i32(reverseBits(var_0.a.a), -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), -13258i, !(false & var_2.x));
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_4 = u_input.c.x;
    var var_5 = func_5(0i, -firstLeadingBit(~(-var_0.a.a)), func_5(~var_3, (_wgslsmith_mod_i32(var_3, u_input.b.x) >> (firstTrailingBit(u_input.c.x) % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(8850i, var_3), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, var_3), u_input.b.yx)), Struct_2(var_0.a, _wgslsmith_add_vec4_u32(vec4<u32>(47794u, 1u, u_input.d.x, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, 0u, 1u, 1u), global1[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_f32(-1926f + _wgslsmith_f_op_f32(-var_0.c)), var_0.d), Struct_2(func_5(-773i, i32(-1i) * -20409i, func_5(u_input.b.x, u_input.b.x, Struct_2(var_0.a, vec4<u32>(var_0.a.c, var_0.b.x, 0u, var_0.a.c), -610f, -526f), Struct_2(var_0.a, vec4<u32>(4294967295u, var_0.a.c, 0u, var_0.a.c), -1495f, 884f)), Struct_2(Struct_1(-25997i, var_0.a.b, 4294967295u, var_0.a.d), global1[_wgslsmith_index_u32(0u, 13u)], var_0.a.b.x, 905f)).a, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, 0u, var_0.a.c), global1[_wgslsmith_index_u32(var_0.b.x, 13u)] << (u_input.d % vec4<u32>(32u))), var_0.c, -342f)), Struct_2(var_0.a, vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.c, 14453u, 86788u), u_input.d.zww & vec3<u32>(23191u, u_input.d.x, u_input.d.x)), 18801u, var_0.b.x), _wgslsmith_f_op_vec3_f32(func_3(575f)).x, _wgslsmith_f_op_f32(var_0.a.b.x - -447f))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_3);
}

