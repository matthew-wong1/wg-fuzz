struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 68454u, 1u), true, false, 409f, 0i), Struct_1(vec4<u32>(49145u, 34707u, 20403u, 5658u), true, false, -1114f, 0i), Struct_1(vec4<u32>(29299u, 8864u, 4458u, 4294967295u), true, false, -913f, i32(-2147483648)), Struct_1(vec4<u32>(61069u, 4294967295u, 46103u, 57544u), false, false, -407f, -12679i), Struct_1(vec4<u32>(0u, 0u, 85425u, 0u), true, true, -1304f, 49965i)), true), Struct_4(Struct_2(Struct_1(vec4<u32>(0u, 52717u, 78066u, 6880u), false, false, 1204f, -13835i), Struct_1(vec4<u32>(1637u, 3775u, 1u, 4294967295u), true, true, 1527f, -1i), Struct_1(vec4<u32>(19268u, 8844u, 0u, 76522u), false, true, -416f, 1i), Struct_1(vec4<u32>(9026u, 4294967295u, 106878u, 4294967295u), true, false, 2383f, 9889i), Struct_1(vec4<u32>(95607u, 26871u, 43781u, 17093u), false, true, 736f, 70481i)), true));

var<private> global2: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(1i), Struct_5(17866i), Struct_5(8909i), Struct_5(2147483647i), Struct_5(i32(-2147483648)), Struct_5(i32(-2147483648)), Struct_5(i32(-2147483648)), Struct_5(0i), Struct_5(i32(-2147483648)), Struct_5(1i), Struct_5(19210i), Struct_5(i32(-2147483648)), Struct_5(-8566i), Struct_5(-35543i), Struct_5(i32(-2147483648)), Struct_5(-1i), Struct_5(1i), Struct_5(2147483647i), Struct_5(8862i), Struct_5(2147483647i), Struct_5(-60077i));

var<private> global3: array<vec2<u32>, 5>;

var<private> global4: array<i32, 27> = array<i32, 27>(28037i, 1i, -1i, 15028i, 2147483647i, -4812i, 43608i, 22923i, i32(-2147483648), -1i, -15942i, 11863i, -1i, 1i, i32(-2147483648), 0i, -23597i, 2147483647i, 0i, -5278i, 58584i, -27130i, -24962i, 152i, 0i, -6928i, -10768i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global3 = array<vec2<u32>, 5>();
    var var_0 = -293f;
    global3 = array<vec2<u32>, 5>();
    var var_1 = reverseBits(-_wgslsmith_sub_i32(u_input.d, -global4[_wgslsmith_index_u32(countOneBits(4294967295u), 27u)]));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b.x, 21u)];
    return _wgslsmith_add_u32(min(abs(u_input.b.x), u_input.a.x) & u_input.b.x, 73541u) >> ((~abs(~u_input.c) & (select(4294967295u, _wgslsmith_sub_u32(46399u, 22275u), true) | ((u_input.a.x << (9598u % 32u)) >> (u_input.a.x % 32u)))) % 32u);
}

fn func_4(arg_0: u32) -> f32 {
    global1 = array<Struct_4, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(-713f - -682f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1245f, 1000f) - vec2<f32>(1745f, 1117f))), true))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1410f, 490f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-802f, 1307f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1240f, 1811f), vec2<f32>(-1000f, 1213f), true)) + _wgslsmith_div_vec2_f32(vec2<f32>(293f, 1335f), vec2<f32>(-479f, -605f)))))));
    var var_1 = select(!vec3<bool>(any(vec2<bool>(false, true)), !all(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), vec3<bool>(!select(true, true, true), any(vec3<bool>(true, true, true)), !(all(vec4<bool>(false, true, false, true)) || (2147483647i <= global4[_wgslsmith_index_u32(arg_0, 27u)]))), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), true), true)));
    global1 = array<Struct_4, 2>();
    global0 = array<vec3<i32>, 10>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1657f, var_0.x))))) + _wgslsmith_f_op_f32(-var_0.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = vec3<f32>(-311f, _wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 814f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -648f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(u_input.a.x, u_input.c, u_input.c, reverseBits(4294967295u))), !arg_1.x, false, var_0.x, ~u_input.d), Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1132f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), !all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -1495f))), 16104i), Struct_1(vec4<u32>(u_input.b.x, ~u_input.a.x, 1u, u_input.b.x), false, false, _wgslsmith_f_op_f32(1000f - var_0.x), 2147483647i | ~_wgslsmith_div_i32(global4[_wgslsmith_index_u32(u_input.b.x, 27u)], u_input.d)), Struct_1(~u_input.b, !all(vec3<bool>(true, arg_1.x, arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + var_0.x))), -u_input.d), Struct_1(u_input.b, arg_1.x, arg_1.x, _wgslsmith_div_f32(2047f, arg_0.x), -42399i));
    global3 = array<vec2<u32>, 5>();
    var var_2 = vec2<i32>(-(~(-32370i)), max(0i, -42332i));
    global2 = array<Struct_5, 21>();
    return select(vec4<bool>(true, arg_1.x && true, var_1.b.c | !(var_1.b.c || var_1.a.b), 4294967295u == ((0u & u_input.c) | 1848u)), select(!vec4<bool>(27973u <= u_input.a.x, any(vec2<bool>(false, false)), true, true), vec4<bool>(arg_1.x, true, select(any(vec4<bool>(var_1.a.b, var_1.c.b, true, var_1.d.b)), !arg_1.x, any(vec4<bool>(false, arg_1.x, var_1.b.b, arg_1.x))), arg_1.x), false), !(!(!vec4<bool>(arg_1.x, var_1.c.c, false, var_1.b.b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global0 = array<vec3<i32>, 10>();
    let var_0 = !any(vec3<bool>(true, true, true));
    global1 = array<Struct_4, 2>();
    global1 = array<Struct_4, 2>();
    var var_1 = select(!select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, 2109f)), !vec2<bool>(arg_0.c.c, false)), vec4<bool>(!arg_0.b.c, arg_2.x < arg_0.e.d, arg_0.d.a.x > 0u, false), !all(vec3<bool>(var_0, true, false))), vec4<bool>(true, _wgslsmith_f_op_f32(arg_0.e.d * -1000f) <= 615f, !arg_3, var_0), !select(vec4<bool>(false, true, arg_0.e.b, false), select(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0.d.c, true, false)), func_2(vec2<f32>(arg_0.c.d, arg_2.x), vec2<bool>(true, false)), false), vec4<bool>(true, arg_0.c.b, all(vec4<bool>(false, arg_3, false, true)), all(vec3<bool>(arg_0.e.c, false, var_0)))));
    return arg_0.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(arg_2, 21u)];
    global1 = array<Struct_4, 2>();
    let var_1 = arg_1;
    let var_2 = all(!(!vec4<bool>(true, all(vec2<bool>(var_1.b.b, arg_1.a.b)), true, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.d, var_1.c.d, var_1.d.d, -880f)))))))));
    return arg_1.d;
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    global3 = array<vec2<u32>, 5>();
    var var_0 = abs(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_0.c.a.x, 28770u, u_input.c, arg_0.c.a.x), vec4<u32>(arg_0.a.a.x, 36272u, u_input.a.x, 38738u)), ~u_input.b) | max(vec4<u32>(firstTrailingBit(arg_0.b.a.x), _wgslsmith_mult_u32(52279u, 30757u), firstTrailingBit(u_input.a.x), ~arg_0.e.a.x), ~u_input.b | _wgslsmith_div_vec4_u32(arg_0.a.a, vec4<u32>(4294967295u, 64544u, arg_0.b.a.x, 73164u))));
    let var_1 = Struct_3(select(_wgslsmith_clamp_vec2_u32(var_0.yy, _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_0.a.a.x, var_0.x)), _wgslsmith_mult_vec2_u32(arg_0.e.a.zz, u_input.a.yx), ~vec2<u32>(12150u, 0u)), vec2<u32>(1u & u_input.b.x, var_0.x)), ~arg_0.b.a.zx, vec2<bool>(true, arg_0.d.b)), ~(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.d.a.x << (arg_0.b.a.x % 32u), arg_0.d.a.x), 10u)] | firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 10u)])), Struct_2(arg_0.c, arg_0.c, arg_0.a, arg_0.c, Struct_1(arg_0.a.a, !any(vec4<bool>(true, false, true, false)), arg_0.b.c, _wgslsmith_f_op_f32(func_5(arg_0.c.a, arg_0, arg_0.a.a.x).d * _wgslsmith_f_op_f32(-855f + arg_0.d.d)), -(~global4[_wgslsmith_index_u32(48420u, 27u)]))));
    let var_2 = _wgslsmith_mod_vec2_u32(u_input.a.yx, ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 75723u, 4294967295u), u_input.a)), ~1u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-640f, arg_0.a.d)) + _wgslsmith_f_op_f32(-var_1.c.a.d));
    return global1[_wgslsmith_index_u32(0u >> ((~(~arg_0.c.a.x) & func_3()) % 32u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.c;
    var var_1 = func_6(Struct_2(func_5(~u_input.b, Struct_2(Struct_1(u_input.b, false, false, -424f, u_input.d), Struct_1(vec4<u32>(u_input.a.x, 14155u, 0u, 17264u), true, true, 101f, u_input.d), Struct_1(vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.c), true, false, 607f, global4[_wgslsmith_index_u32(0u, 27u)]), Struct_1(vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.c), true, false, 361f, global4[_wgslsmith_index_u32(0u, 27u)]), func_1(Struct_2(Struct_1(u_input.b, true, true, -1856f, u_input.d), Struct_1(u_input.b, true, false, 1580f, -27039i), Struct_1(vec4<u32>(1u, 32445u, u_input.c, u_input.c), false, false, 1614f, 2147483647i), Struct_1(u_input.b, false, false, 522f, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(u_input.b, true, true, -1607f, u_input.d)), vec2<i32>(31080i, 1i), vec2<f32>(1060f, -232f), true)), 0u), func_1(Struct_2(Struct_1(u_input.b, false, false, -2097f, -2147483647i), Struct_1(u_input.b, false, true, -2617f, 2147483647i), Struct_1(u_input.b, true, false, 868f, -76813i), func_5(vec4<u32>(u_input.a.x, u_input.c, 0u, 25371u), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 46681u), true, true, -504f, 2147483647i), Struct_1(u_input.b, false, false, 1949f, u_input.d), Struct_1(u_input.b, true, true, 949f, u_input.d), Struct_1(vec4<u32>(4294967295u, 4294967295u, 28308u, u_input.b.x), true, true, -548f, -2147483647i), Struct_1(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 7746u), true, true, -160f, 5576i)), 0u), func_5(vec4<u32>(4294967295u, u_input.a.x, 28800u, u_input.c), Struct_2(Struct_1(vec4<u32>(43016u, 1u, u_input.b.x, u_input.c), true, true, 1950f, u_input.d), Struct_1(vec4<u32>(4294967295u, u_input.c, u_input.b.x, 0u), true, false, 1563f, 61635i), Struct_1(vec4<u32>(u_input.a.x, u_input.c, u_input.c, 13543u), false, true, -380f, 1i), Struct_1(u_input.b, false, false, -375f, u_input.d), Struct_1(u_input.b, false, true, 500f, u_input.d)), 25939u)), vec2<i32>(1i, _wgslsmith_mod_i32(u_input.d, u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1236f, -555f) * vec2<f32>(1000f, 313f))), false & (u_input.c <= 0u)), func_5(~u_input.b, Struct_2(func_5(u_input.b, Struct_2(Struct_1(vec4<u32>(60278u, 12315u, 0u, 4294967295u), true, false, -2324f, -1i), Struct_1(vec4<u32>(u_input.c, u_input.b.x, 30522u, u_input.c), false, false, -657f, u_input.d), Struct_1(u_input.b, false, false, -453f, u_input.d), Struct_1(u_input.b, true, false, -131f, -2147483647i), Struct_1(vec4<u32>(u_input.a.x, 50499u, 22264u, 16158u), true, false, -1370f, 1i)), u_input.c), Struct_1(vec4<u32>(u_input.c, u_input.b.x, 34527u, u_input.b.x), true, false, 983f, u_input.d), func_5(u_input.b, Struct_2(Struct_1(u_input.b, false, true, 399f, global4[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(u_input.b, false, true, 532f, u_input.d), Struct_1(vec4<u32>(u_input.a.x, 0u, 1u, 69514u), true, true, -1377f, global4[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_1(u_input.b, true, true, 103f, u_input.d), Struct_1(vec4<u32>(1u, 1u, 26850u, 0u), true, true, -1316f, -42643i)), u_input.b.x), func_1(Struct_2(Struct_1(u_input.b, true, true, 550f, 2147483647i), Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.c, u_input.a.x), false, true, -1000f, -1i), Struct_1(u_input.b, false, true, -283f, 2147483647i), Struct_1(vec4<u32>(1u, u_input.a.x, u_input.c, 30563u), false, false, -554f, u_input.d), Struct_1(vec4<u32>(1u, u_input.b.x, 10968u, 4294967295u), true, false, 1556f, u_input.d)), vec2<i32>(26642i, 1i), vec2<f32>(1000f, -2545f), true), func_5(u_input.b, Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), false, true, 245f, -2147483647i), Struct_1(u_input.b, false, true, 905f, 2147483647i), Struct_1(u_input.b, true, false, 465f, u_input.d), Struct_1(vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.c), false, false, 386f, -2147483647i), Struct_1(u_input.b, true, true, 1319f, u_input.d)), 25822u)), reverseBits(u_input.c >> (u_input.c % 32u))), func_5(u_input.b, Struct_2(func_1(Struct_2(Struct_1(u_input.b, true, true, -293f, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(u_input.b, true, false, -955f, 1i), Struct_1(u_input.b, true, true, -235f, 32471i), Struct_1(vec4<u32>(u_input.c, 1u, u_input.c, u_input.a.x), true, false, 834f, -43879i), Struct_1(u_input.b, false, true, -1404f, 37866i)), vec2<i32>(56349i, 0i), vec2<f32>(753f, 197f), true), func_1(Struct_2(Struct_1(vec4<u32>(60378u, 5226u, u_input.c, u_input.b.x), false, true, -1000f, 1i), Struct_1(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), false, false, 960f, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(u_input.b, true, true, 1925f, -29570i), Struct_1(u_input.b, true, true, -119f, 35240i), Struct_1(u_input.b, true, false, 559f, -47121i)), vec2<i32>(0i, -39255i), vec2<f32>(-1025f, -104f), true), func_1(Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, u_input.c, u_input.a.x), true, true, -358f, 17286i), Struct_1(vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x), true, false, 571f, u_input.d), Struct_1(u_input.b, false, true, 549f, -17126i), Struct_1(vec4<u32>(90286u, u_input.c, u_input.c, 74374u), true, false, -1587f, global4[_wgslsmith_index_u32(u_input.a.x, 27u)]), Struct_1(u_input.b, true, true, -716f, u_input.d)), vec2<i32>(-38905i, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<f32>(-1274f, 1258f), false), func_1(Struct_2(Struct_1(u_input.b, false, false, 1710f, 0i), Struct_1(u_input.b, true, false, -541f, u_input.d), Struct_1(vec4<u32>(0u, 38278u, u_input.c, u_input.c), false, true, 853f, 36070i), Struct_1(u_input.b, true, false, 706f, 0i), Struct_1(u_input.b, false, true, 1000f, u_input.d)), vec2<i32>(41633i, global4[_wgslsmith_index_u32(1u, 27u)]), vec2<f32>(1944f, 543f), false), func_5(vec4<u32>(164477u, 4078u, u_input.b.x, 0u), Struct_2(Struct_1(u_input.b, false, false, -823f, global4[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true, false, 1523f, -22918i), Struct_1(u_input.b, false, false, 1231f, 3575i), Struct_1(vec4<u32>(16581u, u_input.a.x, u_input.c, u_input.b.x), false, true, 2039f, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 58966u, u_input.a.x), true, true, 1241f, -2147483647i)), u_input.b.x)), abs(firstLeadingBit(u_input.b.x))), func_1(Struct_2(func_1(Struct_2(Struct_1(u_input.b, false, false, 1148f, 1i), Struct_1(u_input.b, true, true, 1010f, 1i), Struct_1(vec4<u32>(u_input.c, 0u, u_input.b.x, 4294967295u), false, false, -1837f, -1i), Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.c, 123228u), true, false, -1173f, global4[_wgslsmith_index_u32(46337u, 27u)]), Struct_1(vec4<u32>(54998u, u_input.b.x, u_input.c, 19690u), true, false, -665f, -59785i)), vec2<i32>(0i, 0i), vec2<f32>(-493f, 570f), false), func_1(Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.a.x, 236u, 34980u), true, true, -1488f, 47617i), Struct_1(vec4<u32>(u_input.c, 28571u, 1u, u_input.b.x), true, true, -1187f, -20i), Struct_1(vec4<u32>(1u, u_input.a.x, u_input.b.x, 41673u), true, true, 371f, u_input.d), Struct_1(u_input.b, true, false, -1000f, 2147483647i), Struct_1(u_input.b, false, true, 1725f, 4236i)), vec2<i32>(global4[_wgslsmith_index_u32(u_input.c, 27u)], -39184i), vec2<f32>(1913f, 1279f), false), Struct_1(u_input.b, false, true, 1000f, u_input.d), Struct_1(u_input.b, true, false, 272f, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), func_5(u_input.b, Struct_2(Struct_1(u_input.b, false, true, 579f, 16245i), Struct_1(vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x), true, false, -1000f, u_input.d), Struct_1(vec4<u32>(4294967295u, u_input.c, u_input.b.x, 4294967295u), true, true, -519f, u_input.d), Struct_1(vec4<u32>(18082u, u_input.b.x, 0u, u_input.a.x), true, false, 463f, u_input.d), Struct_1(vec4<u32>(1688u, u_input.a.x, u_input.c, u_input.a.x), false, true, 1196f, 1i)), 4294967295u)), ~vec2<i32>(u_input.d, -2147483647i) >> (~vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-530f, 1000f)))), func_5(u_input.b, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 109946u, u_input.a.x, 5211u), true, true, -514f, u_input.d), Struct_1(u_input.b, true, true, -190f, global4[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(u_input.b, false, true, -210f, global4[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_1(u_input.b, true, false, 1007f, 1i), Struct_1(vec4<u32>(u_input.a.x, 4389u, u_input.a.x, u_input.a.x), true, true, 1199f, u_input.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(101904u, 4294967295u, 1u, 0u), u_input.b)).c)));
    let var_2 = global4[_wgslsmith_index_u32(u_input.b.x, 27u)];
    var_0 = 0u;
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), global3[_wgslsmith_index_u32(3336u, 5u)]) | ~vec2<u32>(u_input.a.x, 17916u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(select(global3[_wgslsmith_index_u32(0u, 5u)], vec2<u32>(var_1.a.d.a.x, 1711u), vec2<bool>(var_1.b, var_1.a.e.c)), ~u_input.b.xw, vec2<u32>(u_input.a.x, 1u) | global3[_wgslsmith_index_u32(var_1.a.e.a.x, 5u)]), select(var_1.a.d.a.xy & global3[_wgslsmith_index_u32(u_input.b.x, 5u)], func_1(Struct_2(var_1.a.b, var_1.a.a, var_1.a.e, var_1.a.b, Struct_1(u_input.b, false, true, var_1.a.b.d, global4[_wgslsmith_index_u32(37130u, 27u)])), vec2<i32>(global4[_wgslsmith_index_u32(u_input.c, 27u)], -2147483647i), vec2<f32>(116f, 626f), var_1.b).a.zz, vec2<bool>(true, true)))), -reverseBits(~global0[_wgslsmith_index_u32(49036u, 10u)] ^ ~global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), Struct_2(Struct_1(var_1.a.b.a, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1447f)), global4[_wgslsmith_index_u32(var_1.a.c.a.x, 27u)] | var_1.a.e.e), func_5(~vec4<u32>(36379u, 0u, var_1.a.d.a.x, u_input.b.x) << ((vec4<u32>(var_1.a.c.a.x, var_1.a.d.a.x, var_1.a.d.a.x, var_1.a.e.a.x) & u_input.b) % vec4<u32>(32u)), func_6(Struct_2(var_1.a.d, var_1.a.c, Struct_1(vec4<u32>(u_input.c, 4294967295u, 1u, 1u), false, var_1.b, var_1.a.b.d, u_input.d), Struct_1(u_input.b, var_1.b, var_1.b, var_1.a.e.d, var_1.a.e.e), var_1.a.c)).a, _wgslsmith_dot_vec4_u32(~u_input.b, var_1.a.b.a)), var_1.a.d, func_6(Struct_2(var_1.a.d, Struct_1(u_input.b, false, var_1.a.b.b, var_1.a.e.d, 138i), Struct_1(vec4<u32>(4294967295u, 46610u, var_1.a.e.a.x, var_1.a.a.a.x), var_1.a.d.b, var_1.a.b.b, -698f, global4[_wgslsmith_index_u32(var_1.a.e.a.x, 27u)]), var_1.a.a, Struct_1(vec4<u32>(var_1.a.d.a.x, 16038u, 42282u, var_1.a.c.a.x), var_1.a.b.b, true, 371f, 2147483647i))).a.e, var_1.a.c));
    let var_4 = !(-43249i <= -var_1.a.c.e);
    var var_5 = vec3<i32>(func_6(func_6(func_6(Struct_2(Struct_1(vec4<u32>(65927u, var_1.a.b.a.x, 4294967295u, 1u), var_3.c.c.b, true, -558f, var_3.b.x), var_3.c.a, Struct_1(vec4<u32>(var_1.a.a.a.x, 0u, 4294967295u, 0u), var_3.c.e.c, true, -636f, var_3.c.e.e), Struct_1(var_1.a.d.a, false, true, -159f, global4[_wgslsmith_index_u32(var_3.c.d.a.x, 27u)]), var_1.a.a)).a).a).a.e.e, 0i >> (u_input.c % 32u), min(_wgslsmith_clamp_i32(u_input.d, var_3.c.a.e, global4[_wgslsmith_index_u32(~1u, 27u)]), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1570f * -468f), _wgslsmith_f_op_f32(round(var_1.a.b.d)))), func_6(func_6(var_3.c).a).a.c.d, -669f))));
}

