struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(283f))), _wgslsmith_f_op_f32(990f * 1870f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1)) * vec2<f32>(621f, 1465f)))))));
    let var_1 = Struct_3(_wgslsmith_mult_u32(~(~abs(global0.a)), (~u_input.a & _wgslsmith_div_u32(4294967295u, global0.a)) ^ ~u_input.a));
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b, -47538i), vec2<i32>(arg_0.a, -3816i), vec2<i32>(-2147483647i, arg_0.a))) | -select(vec2<i32>(-47723i, -2147483647i), vec2<i32>(26269i, arg_0.a), false), -_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b, 52121i), ~vec2<i32>(arg_0.b, arg_0.b))) >> (min(38079u, ~select(max(1u, 66641u), _wgslsmith_sub_u32(u_input.a, var_1.a), true)) % 32u);
    let var_3 = vec3<bool>(true, true, any(select(vec3<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    global0 = Struct_3(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(var_1.a, firstTrailingBit(11347u))));
    return select(!(!vec2<bool>(any(vec3<bool>(false, var_3.x, true)), true)), vec2<bool>(any(select(vec3<bool>(var_3.x, true, false), !vec3<bool>(var_3.x, var_3.x, false), var_3)), !(!var_3.x) & var_3.x), false);
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(~global0.a);
    var var_0 = any(vec4<bool>(any(!func_3(Struct_4(-43213i, 2147483647i), vec2<f32>(-1573f, -326f))), all(vec4<bool>(true, true, true, true)) == !any(vec4<bool>(false, false, true, false)), !all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true))));
    global0 = Struct_3(_wgslsmith_clamp_u32(1u, ~(4294967295u & u_input.a), 1u) | abs(4202u));
    var var_1 = vec3<bool>(!(!all(vec3<bool>(true, true, true))), any(vec3<bool>(!all(vec2<bool>(true, true)), true, true)), ~firstTrailingBit(0i) != -_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(20153i, 12850i, -28160i), vec3<i32>(47965i, -20914i, 0i))));
    return Struct_1(~(select(vec2<u32>(u_input.a, global0.a), vec2<u32>(global0.a, global0.a) | vec2<u32>(u_input.a, 1u), !var_1.yz) ^ max(vec2<u32>(57134u, global0.a) ^ vec2<u32>(global0.a, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, u_input.a)))), -20508i, (var_1.x & false) == var_1.x, countOneBits(~global0.a));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    var var_0 = -arg_1.yzy >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, ~13218u, global0.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(19223u), 1u, global0.a), ~(vec3<u32>(0u, 4294967295u, global0.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), firstTrailingBit(~vec3<u32>(global0.a, u_input.a, 14003u)))) % vec3<u32>(32u));
    let var_1 = func_2();
    let var_2 = 37125i;
    global0 = Struct_3(~71666u);
    var_0 = arg_1.zyy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-276f, 764f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -855f) + 1727f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-799f, -310f) + vec2<f32>(570f, -942f)))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f + var_0.x))))), _wgslsmith_f_op_f32(max(-815f, var_0.x)), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(~39266i, select(-1675i, 2147483647i, false))), vec4<i32>(2147483647i, _wgslsmith_mult_i32(0i >> (u_input.a % 32u), 2147483647i), -_wgslsmith_mult_i32(-528i, 32196i), i32(-1i) * -2147483647i))), -357f);
    var var_2 = Struct_5(all(func_3(Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17200i), vec2<i32>(-4504i, -17513i)), 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.wz, vec2<f32>(-585f, var_1.x)))))), i32(-1i) * -(i32(-1i) * -2147483647i));
    let var_3 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.b & 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(24417i, 2147483647i, var_2.b), vec3<i32>(var_2.b, -1i, -18819i))), ~(~vec3<i32>(var_2.b, 44181i, var_2.b))), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(17272i, var_2.b), vec2<i32>(-28422i, 11882i)), firstTrailingBit(vec2<i32>(var_2.b, var_2.b))));
    let var_4 = ~abs(vec3<i32>(1i, -2147483647i, -42611i));
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.zyw), ~(~63677u), _wgslsmith_f_op_f32(trunc(-1832f)));
}

