struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, false, false, true, true, false, false, true, false, true, true, false, true, true, true, true, true, false, false, true, true, true, false, false, false, true, false, false, false, false, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<f32> {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = arg_0.d.b;
    let var_2 = u_input.a.x;
    var_1 = !arg_1.b;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-529f, 977f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec4_f32(-arg_3), !(global0[_wgslsmith_index_u32(arg_1.a.x, 32u)] || false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1691f, -848f, arg_3.x) - arg_3) - arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(-564f, 358f, arg_3.x, arg_3.x) + vec4<f32>(-2122f, 1527f, arg_3.x, arg_3.x))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(28431i, u_input.e, global0[_wgslsmith_index_u32(u_input.e.x, 32u)], Struct_1(u_input.e, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), 10708u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)])), Struct_1(u_input.e, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 32u)]), u_input.e.x), Struct_2(-9602i, u_input.e, false, Struct_1(vec4<u32>(4294967295u, u_input.b, 29282u, 1u), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), u_input.b), vec2<bool>(false, false)), vec4<f32>(-1082f, -247f, 1968f, 706f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(568f, 687f, 1000f, 656f) * vec4<f32>(160f, 1218f, -1425f, -894f))))));
    var var_1 = vec4<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), -1000f, true))) >= var_0.x, false);
    var var_2 = countOneBits(80617u & ~u_input.b);
    return 1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(8060i >> (u_input.b % 32u), -15860i, ~arg_0.x), -vec3<i32>(-5148i, arg_0.x, arg_0.x)) | ~22672i, ~(~vec4<u32>(17050u, u_input.e.x, 4294967295u, arg_2.a.x)) & u_input.e, arg_2.b.x, arg_2, !vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)])), true));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(-150f)))), -550f, arg_1.x));
    let var_1 = Struct_2(arg_0.a, select(select(vec4<u32>(u_input.e.x, 0u, ~u_input.e.x, ~0u), arg_0.b, vec4<bool>(global0[_wgslsmith_index_u32(~u_input.e.x, 32u)], true, arg_0.a > u_input.d, true)), arg_0.d.a, false), true, arg_0.d, select(arg_0.e, arg_0.d.b, all(vec3<bool>(any(arg_0.d.b), arg_0.c, global0[_wgslsmith_index_u32(~27190u, 32u)]))));
    var var_2 = func_4(_wgslsmith_add_vec3_i32(select(u_input.a.wzx, vec3<i32>(firstTrailingBit(arg_0.a), var_1.a, -var_1.a), vec3<bool>(true == arg_0.c, true, arg_1.x >= 1469f)), vec3<i32>(_wgslsmith_sub_i32(-10704i, ~u_input.a.x), -598i, ~abs(-37613i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1914f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -1177f)))), Struct_1(~(~(~vec4<u32>(4294967295u, var_1.b.x, 15604u, arg_0.b.x))), select(vec2<bool>(true, true), func_4(u_input.a.ywz, _wgslsmith_f_op_f32(round(-1333f)), func_4(vec3<i32>(0i, u_input.a.x, u_input.a.x), -119f, var_1.d).d).e, any(vec3<bool>(true, false, arg_2)) == var_1.e.x), u_input.e.x));
    var var_3 = all(!vec2<bool>(any(vec4<bool>(var_1.d.b.x, true, global0[_wgslsmith_index_u32(arg_0.b.x, 32u)], true)), global0[_wgslsmith_index_u32(u_input.e.x, 32u)]));
    var_2 = func_4(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(arg_0.a ^ -17765i, -53751i, func_4(vec3<i32>(-43993i, arg_0.a, 17890i), 1000f, var_2.d).a)), -u_input.a.xyy), 1226f, func_4(vec3<i32>(var_2.a << (4294967295u % 32u), -66272i, ~var_1.a) | u_input.c.yyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) - arg_1.x), func_4(u_input.a.wxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + var_0.x) + _wgslsmith_div_f32(1408f, -235f)), func_4(~vec3<i32>(2147483647i, var_2.a, var_1.a), -361f, func_4(u_input.a.wzx, 1406f, arg_0.d).d).d).d).d);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(arg_0, Struct_1(var_2.d.a, vec2<bool>(true, false), var_1.d.a.x), Struct_2(7305i, u_input.e, false, var_1.d, vec2<bool>(arg_2, global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_vec4_f32(func_3(var_1, arg_0.d, var_1, vec4<f32>(-1495f, arg_1.x, arg_1.x, -471f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, 612f, arg_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, arg_1.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, arg_1.x, var_0.x, -1800f)))) + vec4<f32>(-633f, _wgslsmith_f_op_f32(step(var_0.x, -1000f)), arg_1.x, -2353f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, 407f, -544f, _wgslsmith_f_op_f32(select(830f, -840f, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 198f, 253f, var_0.x) - vec4<f32>(var_0.x, var_0.x, -321f, 547f))), vec4<bool>(arg_2, 929f != var_0.x, var_2.e.x && false, true)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(vec3<i32>(func_2(~u_input.a, 1i), 14921i, -1i), 292f, Struct_1(~reverseBits(arg_0), vec2<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(arg_2, 32u)], true, true))), 1u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(154f, arg_1))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1214f), arg_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1))))), arg_3));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(33206u, 0u, 89278u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(72693u, u_input.b, 1u), u_input.e.zxx), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), u_input.e), ~vec4<u32>(3897u, arg_2, 10710u, u_input.b)), arg_2), select(arg_0, ~u_input.e, vec4<bool>(u_input.b == arg_2, true, false, true))), func_4(u_input.c.wzw, -1000f, func_4(firstLeadingBit(vec3<i32>(u_input.d, 2147483647i, u_input.c.x)), 2107f, func_4(u_input.c.yxx, arg_1, Struct_1(vec4<u32>(u_input.b, arg_0.x, 0u, arg_2), vec2<bool>(false, true), arg_2)).d).d));
    global0 = array<bool, 32>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0)));
    global0 = array<bool, 32>();
    return func_4(vec3<i32>(u_input.d, select(var_1.b.a, countOneBits(var_1.b.a ^ 0i), !(!global0[_wgslsmith_index_u32(24732u, 32u)])), -u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1036f, var_0.x)) - 282f), func_4(firstLeadingBit(vec3<i32>(1i, _wgslsmith_add_i32(2147483647i, u_input.d), -44188i)), var_2.x, func_4(u_input.a.ywz, var_2.x, var_1.b.d).d).d).d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> f32 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = -1i;
    global0 = array<bool, 32>();
    var var_1 = _wgslsmith_sub_vec3_i32(~u_input.c.zzz, ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.a), -1119i, 12523i ^ arg_2.b.a)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-844f, _wgslsmith_f_op_f32(trunc(-1408f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1115f, 1410f)) * _wgslsmith_f_op_f32(func_6(func_1(u_input.e, 1423f, 48829u, false), Struct_4(0u, Struct_2(u_input.a.x, vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 0u), global0[_wgslsmith_index_u32(25061u, 32u)], Struct_1(u_input.e, vec2<bool>(false, true), 1u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], false))), Struct_4(u_input.e.x, Struct_2(1i, vec4<u32>(u_input.b, 0u, u_input.e.x, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 32u)], Struct_1(u_input.e, vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), 41642u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)]))))))));
    var_0 = 1374f;
    var var_1 = _wgslsmith_mod_i32(40726i, u_input.c.x);
    let var_2 = Struct_4(u_input.b, func_4(u_input.a.zyz, 1731f, Struct_1(vec4<u32>(~u_input.e.x, min(30080u, 7427u), 11122u, 4294967295u), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 32u)])), ~28548u)));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ _wgslsmith_add_u32(var_2.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_2.a, 0u), ~var_2.b.b.wzw)), func_2(countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(41060i, -11576i, var_2.b.a, -12817i), u_input.c), vec4<i32>(-36762i, -31182i, u_input.c.x, u_input.d) ^ vec4<i32>(-42862i, -8629i, u_input.c.x, 5506i))), _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(1i), -31307i), var_2.b.a)), u_input.a.ww, _wgslsmith_clamp_u32(u_input.b, firstLeadingBit(~var_2.b.b.x), _wgslsmith_sub_u32(abs(457u), u_input.e.x)));
}

