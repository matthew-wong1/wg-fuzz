struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(507f, Struct_2(vec3<i32>(-1i, -1i, -40039i), Struct_1(vec3<i32>(63229i, 2147483647i, 8437i)), 34852u, 44093u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_4(_wgslsmith_f_op_f32(global0.a - -1155f), Struct_2(-countOneBits(select(vec3<i32>(global0.b.b.a.x, -10929i, global0.b.a.x), vec3<i32>(u_input.d.x, -35701i, global0.b.b.a.x), vec3<bool>(false, false, true))), global0.b.b, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(112708u, u_input.a), ~u_input.a), 23962u));
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a), Struct_2(countOneBits(vec3<i32>(select(u_input.c.x, u_input.d.x, true), reverseBits(1i), firstTrailingBit(2147483647i))), global0.b.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 0u, 89254u, 4294967295u), vec4<u32>(global0.b.c, 1u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.b.d, 57376u, 1397u), vec4<u32>(1u, u_input.a, 27435u, global0.b.c))), ~(~u_input.a)), ~_wgslsmith_mult_u32(u_input.a | 1690u, u_input.a)));
    global0 = Struct_4(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(min(1f, global0.a))), global0.b);
    global0 = Struct_4(global0.a, global0.b);
    global0 = Struct_4(1000f, Struct_2(global0.b.a & u_input.c, Struct_1(global0.b.a), 10105u, ~firstLeadingBit(1u | u_input.a)));
    return select(vec3<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), global0.a <= global0.a)), 0u >= _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1868u, 54413u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(46700u, 1u, 4294967295u, global0.b.c), vec4<u32>(1u, u_input.a, global0.b.c, 22512u)))), vec3<bool>(false, !(_wgslsmith_dot_vec3_i32(u_input.d, global0.b.b.a) > _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a.x, -1i, 0i), global0.b.b.a)), 0u <= _wgslsmith_clamp_u32(~u_input.a, ~global0.b.d, _wgslsmith_clamp_u32(global0.b.d, u_input.a, 5345u))), all(vec2<bool>(any(vec4<bool>(false, true, true, true)) && any(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = u_input.d.x;
    let var_1 = Struct_3(u_input.c.zy);
    let var_2 = !select(func_3(), vec3<bool>(!select(true, false, true), _wgslsmith_f_op_f32(ceil(-875f)) >= _wgslsmith_f_op_f32(-479f * 1645f), false), !vec3<bool>(true, any(vec2<bool>(true, true)), true));
    let var_3 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(max(global0.a, global0.a)))));
    let var_4 = firstTrailingBit(select(arg_0 & arg_0, max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, global0.b.c), vec3<u32>(103334u, arg_0.x, arg_0.x)), vec3<u32>(31122u, 0u, global0.b.c)), !(!vec3<bool>(var_2.x, true, false))) >> (~arg_0 % vec3<u32>(32u)));
    return Struct_3(vec2<i32>(global0.b.b.a.x >> (_wgslsmith_div_u32(global0.b.c, 17002u) % 32u), var_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = global0.b.b;
    var_0 = Struct_1((~(-vec3<i32>(arg_3.a.x, var_0.a.x, 1i)) >> (vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(1u, 67998u, u_input.a)), ~34705u) % vec3<u32>(32u))) & countOneBits(vec3<i32>(arg_3.a.x, ~arg_2, var_0.a.x)));
    let var_1 = -249f;
    let var_2 = Struct_4(1351f, global0.b);
    let var_3 = select(vec4<bool>(true, true, 1u >= ~(global0.b.d | u_input.a), !select(false, 17096u == global0.b.d, true)), select(select(vec4<bool>(true, func_3().x, true, var_1 > 376f), vec4<bool>(true, false, false, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), func_3().x, !all(vec4<bool>(true, true, false, true)), func_3().x), select(vec4<bool>(false, 27857u <= u_input.a, any(vec2<bool>(true, false)), true), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), false), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))))), select(select(vec4<bool>(true, true, any(vec3<bool>(false, false, true)), false), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), (var_2.b.c & 66884u) != 1u), !vec4<bool>(any(vec4<bool>(false, false, false, false)), true, func_3().x, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_div_u32(0u, global0.b.c) < u_input.a)));
    return Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(global0.b.b.a, arg_0.a), u_input.c));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = ~(~vec2<u32>(0u, arg_1));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.a)), global0.a, true)), global0.b);
    let var_2 = !all(vec2<bool>(!(53588u != var_1.b.d), true));
    let var_3 = Struct_5(var_1.b, Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -258f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1946f, var_1.a), _wgslsmith_f_op_f32(1121f * var_1.a))))), Struct_2(~vec3<i32>(u_input.d.x, u_input.d.x, var_1.b.b.a.x), func_4(func_4(Struct_1(vec3<i32>(global0.b.a.x, -87201i, -2147483647i)), vec2<i32>(0i, 2147483647i), -11436i, Struct_3(vec2<i32>(-2147483647i, u_input.b))), global0.b.a.yx, global0.b.b.a.x, func_2(vec3<u32>(global0.b.c, 1u, global0.b.d))), ~(var_1.b.d | var_1.b.d), 65884u)), _wgslsmith_f_op_f32(global0.a + 511f));
    let var_4 = -28012i;
    return select(!vec4<bool>(!var_2 | false, !any(vec4<bool>(false, var_2, true, var_2)), true, !any(vec3<bool>(var_2, var_2, false))), !vec4<bool>(!(global0.a >= global0.a), any(select(vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, true, var_2), var_2)), !var_2, all(vec2<bool>(var_2, var_2))), any(vec4<bool>(true, select(false, any(vec4<bool>(var_2, true, var_2, var_2)), true), ~arg_1 >= ~var_1.b.c, !any(vec2<bool>(true, var_2)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = !select(func_5(func_4(Struct_1(arg_1.a), global0.b.b.a.zx | vec2<i32>(global0.b.b.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, 57013i, arg_1.a.x), arg_1.a), func_2(vec3<u32>(77753u, 78516u, u_input.a))), select(923u, firstLeadingBit(arg_2), false)), select(!(!vec4<bool>(arg_0, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(true, arg_0, true, arg_0)), true), !vec4<bool>(true, arg_0, true, false)), arg_0);
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1556f * global0.a)) - _wgslsmith_f_op_f32(step(1101f, _wgslsmith_f_op_f32(exp2(global0.a))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1251f)))), global0.b);
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1458f * 720f))), global0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-464f, 292f, global0.a, 251f)))))))))));
    var var_2 = !var_0.wxw;
    return Struct_4(var_1.x, global0.b);
}

fn func_6(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1506f, global0.a, global0.a, -1019f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, 1531f, -595f, -493f))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), -162f, 932f, 797f))));
    global0 = Struct_4(-291f, Struct_2(func_1(true, arg_1.b.b, ~max(1u, 8961u), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(0u, global0.b.d))).b.b.a, Struct_1(abs(vec3<i32>(-23927i, -18625i, arg_0))), ~1u, func_1(true, func_4(arg_1.b.b, -vec2<i32>(u_input.b, arg_2), _wgslsmith_mod_i32(arg_2, 2147483647i), func_2(vec3<u32>(4294967295u, arg_1.b.c, u_input.a))), 36593u, vec2<u32>(countOneBits(4294967295u), ~global0.b.c)).b.c));
    let var_1 = -1672f;
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))) + global0.a), func_1(select(true, true, true), global0.b.b, 0u, select(vec2<u32>(abs(u_input.a), min(1u, 42926u)), vec2<u32>(_wgslsmith_add_u32(arg_1.b.d, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.b.c, global0.b.c, 40836u), vec4<u32>(u_input.a, 63677u, 41759u, u_input.a))), (-1244f > global0.a) & true)).b);
    global0 = func_1(true, func_1(true, global0.b.b, 4294967295u, firstLeadingBit(~(~vec2<u32>(arg_1.b.c, 0u)))).b.b, firstTrailingBit(_wgslsmith_add_u32(~u_input.a, 2337u)), vec2<u32>(abs(_wgslsmith_mult_u32(arg_1.b.c, 1u) | abs(global0.b.d)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_1(true, arg_1.b.b, 32941u, vec2<u32>(arg_1.b.c, global0.b.d)).b.c, countOneBits(u_input.a)), u_input.a)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(938f, _wgslsmith_f_op_f32(func_6(_wgslsmith_mult_i32(1i, u_input.d.x), func_1(true, global0.b.b, 1182u | u_input.a, vec2<u32>(global0.b.c, 42882u)), global0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.a))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(~10039i, Struct_4(188f, Struct_2(vec3<i32>(u_input.d.x, 20477i, u_input.c.x), Struct_1(global0.b.a), u_input.a, global0.b.c)), -2147483647i))), global0.a, _wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(min(-1454f, -1169f)))), global0.a));
    global0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(func_6(_wgslsmith_div_i32(-9394i, ~u_input.c.x), Struct_4(var_0.x, Struct_2(global0.b.a, global0.b.b, 60858u, 8179u)), 14842i)))), global0.b);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(521f, var_0.x, global0.a, global0.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1000f, global0.a)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - 788f) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(func_1(false, global0.b.b, 0u, vec2<u32>(u_input.a, 0u)).a - -1000f))), vec4<bool>(all(func_5(Struct_1(vec3<i32>(global0.b.a.x, u_input.d.x, -2147483647i)), firstLeadingBit(4294967295u)).zw), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true))), !all(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(true, func_4(global0.b.b, u_input.d.yz, global0.b.a.x, Struct_3(u_input.c.yy)), reverseBits(4294967295u), vec2<u32>(u_input.a, u_input.a)).a, func_1(func_3().x, global0.b.b, 1u, vec2<u32>(4294967295u, u_input.a)).a, -1804f, 173f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1714f, -1000f, 501f, global0.a) + vec4<f32>(2545f, var_0.x, 1223f, -1489f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, -1678f, var_0.x), vec4<f32>(var_0.x, 839f, global0.a, -621f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, global0.a, -327f, 214f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f - 123f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, var_0.x) * var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1110f, -1498f, global0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 510f, -650f, 1791f)))))));
    let var_1 = vec3<u32>(28550u, 51670u, global0.b.d);
    let var_2 = vec4<i32>(-25583i, global0.b.a.x, ~(~4634i), ~(-35552i));
    global0 = Struct_4(_wgslsmith_f_op_f32(floor(-1403f)), func_1(true, Struct_1(vec3<i32>(-1i, ~global0.b.a.x, var_2.x)), ~_wgslsmith_mod_u32(1u, global0.b.c & u_input.a), var_1.zy).b);
    var var_3 = vec4<i32>(u_input.c.x, min(-_wgslsmith_clamp_i32(-42349i, -90249i, -1i), -46832i), var_2.x, -(u_input.b << (func_1(true, global0.b.b, 11903u, vec2<u32>(u_input.a, var_1.x)).b.c % 32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~(~11214u), u_input.a, abs(1u), ~0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c, u_input.a, global0.b.c), select(var_1, vec3<u32>(global0.b.d, u_input.a, u_input.a), true)), var_1.x, u_input.a ^ ~u_input.a, global0.b.d)) % vec4<u32>(32u));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, max(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36399u, 4294967295u, var_1.x, 25622u), vec4<u32>(1u, u_input.a, u_input.a, global0.b.d), vec4<u32>(var_1.x, var_1.x, 2345u, 1u)), vec4<u32>(u_input.a, var_1.x, var_1.x, var_1.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(global0.b.d, u_input.a, var_1.x, var_1.x)), abs(vec4<u32>(4914u, 4528u, var_1.x, var_1.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.a), abs(vec2<u32>(global0.b.d, var_1.x)))), var_0.xw, 1u, 355f);
}

