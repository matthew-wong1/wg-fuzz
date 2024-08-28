struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-14435i, 9749i, -15792i, i32(-2147483648)), true);

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global2: u32;

var<private> global3: vec4<f32> = vec4<f32>(904f, 137f, -700f, -1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    let var_0 = Struct_2(Struct_1(max(max(-u_input.b, vec4<i32>(1i, -31982i, -3729i, 0i)), ~u_input.b), any(vec3<bool>(any(vec4<bool>(false, global0.b, global0.b, false)), 216f <= arg_0.x, true))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-_wgslsmith_div_i32(59177i, global0.a.x), 0i), global0.a.x));
    global0 = Struct_1(~(global0.a ^ select(vec4<i32>(u_input.b.x, -1i, arg_1.x, 0i), countOneBits(u_input.b), !global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - global3.x) - _wgslsmith_f_op_f32(-1645f * 856f)) * arg_0.x) < -125f);
    let var_1 = global3.xxx;
    var var_2 = arg_0.x;
    global2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(16115u, 12212u), abs(59112u), max(4294967295u, 98083u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(57922u, 0u, 1u), vec3<u32>(1u, 1u, 1u))), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 50349u), vec3<u32>(49677u, 1u, 1u))), 1u);
    return all(select(vec2<bool>(!var_0.a.b | !global0.b, !all(vec4<bool>(false, global0.b, true, true))), vec2<bool>(all(!vec4<bool>(false, true, global0.b, var_0.a.b)), !(var_0.a.b || false)), true));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(vec2<f32>(global3.x, global3.x), func_3(_wgslsmith_f_op_vec3_f32(step(global3.xzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1245f, global3.x, 1000f), global3.yww)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -569f) + vec3<f32>(global3.x, global3.x, global3.x))))), firstTrailingBit(reverseBits(u_input.b.wz))), Struct_1(vec4<i32>(~(-1i), firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(global0.a, ~vec4<i32>(-2147483647i, global0.a.x, 8759i, 2147483647i)), -22i), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(425f, global3.x, 430f, -591f), vec4<f32>(-1710f, -569f, 1084f, global3.x))))))), Struct_1(-abs(min(vec4<i32>(u_input.b.x, -26346i, 1i, global0.a.x), vec4<i32>(2147483647i, u_input.a, u_input.a, -2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-738f)))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2321f * -868f)))));
    global0 = Struct_1(var_0.c.a, _wgslsmith_div_f32(349f, -1000f) <= _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_1 = all(select(vec2<bool>(true, var_0.c.b), vec2<bool>(true, global0.b), true));
    var var_2 = Struct_3(global3.yw, true, var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_0.d.x, 396f, 293f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(951f, -114f, -1799f, var_0.d.x) - var_0.d), select(vec4<bool>(true, var_0.e.b, false, global0.b), vec4<bool>(false, var_0.c.b, false, global0.b), vec4<bool>(var_0.b, true, global0.b, true)))) * var_0.d) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * _wgslsmith_f_op_vec4_f32(exp2(var_0.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.d)) - var_0.d)))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(29905i, var_0.c.a.x) << (0u % 32u), countOneBits(reverseBits(var_0.c.a.x)), -3765i, ~global0.a.x), 1u <= reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 49671u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 48498u)))));
    global1 = array<vec3<bool>, 18>();
    return var_2.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> Struct_1 {
    global2 = arg_2;
    var var_0 = arg_1;
    global0 = func_2();
    var var_1 = Struct_1(reverseBits(~(~arg_1.e.a)), arg_1.b & !(arg_2 < ~64386u));
    let var_2 = 0u;
    return func_2();
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = ~((arg_0.b | -2147483647i) << (_wgslsmith_mod_u32(abs(~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 8897u), vec2<u32>(17538u, 0u))) % 32u));
    var var_1 = _wgslsmith_mod_u32(countOneBits(1u), 21009u);
    var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, 22058u)), ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20201u), vec2<u32>(0u, 9867u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8830u, 1u, 5137u), vec4<u32>(54934u, 58162u, 1u, 1u))));
    var var_2 = Struct_2(func_4(func_2(), Struct_3(global3.xy, true, func_2(), vec4<f32>(_wgslsmith_div_f32(-1000f, 1120f), -1235f, -464f, _wgslsmith_f_op_f32(min(global3.x, -1171f))), func_2()), 12518u, global3.x), arg_0.b);
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -807f)), -285f), var_2.a.b, Struct_1(func_2().a, abs(countOneBits(-5866i)) == var_2.a.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(607f, -403f, global3.x, 502f)) * vec4<f32>(global3.x, -1721f, -369f, -1000f)) - vec4<f32>(-1000f, global3.x, _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(floor(global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1393f, 565f, 930f, global3.x) * vec4<f32>(-1076f, global3.x, 232f, global3.x)))))), Struct_1(reverseBits(abs(global0.a)), !func_2().b));
    return arg_0.a.a.zy;
}

fn func_5(arg_0: vec2<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.wx)))), global0.b, Struct_1(vec4<i32>(global0.a.x << (34339u % 32u), abs(-2147483647i), countOneBits(global0.a.x), global0.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(59029u, 64058u, 66386u, 20101u), ~vec4<u32>(66381u, 67612u, 0u, 4294967295u)) % vec4<u32>(32u)), !(-1016f != global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 613f, 903f)))))), func_2());
    var var_1 = func_1(Struct_2(Struct_1(~_wgslsmith_mod_vec4_i32(global0.a, var_0.e.a), true), -1i)).x;
    global1 = array<vec3<bool>, 18>();
    global3 = var_0.d;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-global3.wx), func_4(var_0.c, Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(315f, 1115f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, var_0.a.x))))), global0.b, Struct_1(var_0.c.a, global0.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(var_0.d, var_0.d, global0.b)))), func_2()), 1u, _wgslsmith_div_f32(273f, var_0.d.x)).b, var_0.c, vec4<f32>(-883f, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.x, 1916f)))), var_0.d.x), Struct_1(vec4<i32>(func_2().a.x, func_1(Struct_2(Struct_1(vec4<i32>(41810i, arg_0.x, 1i, u_input.a), global0.b), var_0.c.a.x)).x, var_0.c.a.x, _wgslsmith_sub_i32(u_input.a, u_input.b.x)) & -u_input.b, global0.b));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec2_i32(min(-vec2<i32>(global0.a.x, u_input.b.x), -vec2<i32>(global0.a.x, -3734i)) & -(~vec2<i32>(42553i, global0.a.x)), countOneBits(func_1(Struct_2(Struct_1(global0.a, global0.b), global0.a.x)))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, ~1u), min(reverseBits(14929u), _wgslsmith_dot_vec3_u32(vec3<u32>(~107618u, 10010u >> (1u % 32u), ~26401u), vec3<u32>(~15490u, _wgslsmith_sub_u32(43992u, 1u), min(4294967295u, 1u)))));
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(global3.yy, global3.zy), global0.b, Struct_1(reverseBits(~vec4<i32>(var_0, 2147483647i, 2147483647i, global0.a.x) & (u_input.b >> (vec4<u32>(71808u, 52854u, 109482u, 0u) % vec4<u32>(32u)))), all(!select(vec2<bool>(false, global0.b), vec2<bool>(false, false), vec2<bool>(false, true)))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(exp2(global3.x)), global3.x, global3.x), func_2());
    var var_3 = var_2.c;
    var var_4 = _wgslsmith_f_op_f32(floor(global3.x));
    let var_5 = _wgslsmith_mod_u32(1u, 84278u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, 1i, countOneBits(countOneBits(4294967295u)), ~max(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(31672u, var_5)), vec2<u32>(1u, 45186u)), min(select(vec2<u32>(0u, var_5), vec2<u32>(4294967295u, var_5), true), ~vec2<u32>(var_5, 15177u))), abs(_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(var_5, 135438u, var_5)), ~vec3<u32>(0u, 1u, var_5) | vec3<u32>(95505u, 27935u, var_5))));
}

