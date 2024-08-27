struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(4294967295u, 849f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> bool {
    var var_0 = all(select(select(vec4<bool>(true, true, any(vec4<bool>(true, true, true, false)), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, !all(vec4<bool>(true, false, false, true)), true), select(select(true, false, false), false, _wgslsmith_dot_vec3_u32(vec3<u32>(45653u, global0.a, global0.a), vec3<u32>(global0.a, global0.a, 22601u)) < 0u)));
    var var_1 = !select(vec2<bool>(false, true), vec2<bool>(true | (u_input.a < 1i), true), all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1608f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1127f, global0.b)) - vec2<f32>(-1482f, -440f))), select(select(vec2<bool>(true, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x)), true), vec2<bool>(true, true), !all(vec4<bool>(false, var_1.x, var_1.x, true))), -(~(u_input.a | u_input.a)), any(!(!vec3<bool>(var_1.x, false, var_1.x)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -462f), var_2.b);
    let var_3 = var_1.x;
    return -1149f <= _wgslsmith_f_op_f32(-var_2.b.a.x);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = all(vec3<bool>(!(!arg_0), -3838i >= -u_input.a, true)) == !select(func_3(), false, arg_0);
    global0 = Struct_5(~(12540u | global0.a), _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1085f))))));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = _wgslsmith_mod_vec4_i32(select(vec4<i32>(abs(_wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a)) & firstTrailingBit(0i), i32(-1i) * -u_input.a, -44973i), abs(vec4<i32>(max(-1i, 14495i), min(u_input.a, -17504i), u_input.a, 1i)), !(!select(vec4<bool>(var_2, arg_0, arg_0, true), vec4<bool>(true, false, var_2, true), true))), vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 15682i, -1i, 1i), vec4<i32>(u_input.a, u_input.a, -250i, 19110i))));
    return all(select(!select(vec2<bool>(true, false), vec2<bool>(var_2, var_2), vec2<bool>(var_2, arg_0)), select(vec2<bool>(false, true), !vec2<bool>(var_2, true), vec2<bool>(true, true)), vec2<bool>(var_2 & true, true))) && var_0;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = true;
    var var_1 = 67474u;
    var_0 = -min(u_input.a, _wgslsmith_clamp_i32(0i, ~u_input.a, -u_input.a)) > u_input.a;
    let var_2 = func_2(select(true, u_input.a != ~select(u_input.a, u_input.a, false), false));
    global0 = Struct_5(_wgslsmith_div_u32(~(~(~global0.a)), ~_wgslsmith_clamp_u32(0u, min(43178u, global0.a), _wgslsmith_mult_u32(50973u, 65484u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))));
    return vec4<bool>(true, var_2, any(!(!vec4<bool>(var_2, var_2, var_2, var_2))), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(select(7454u, ~firstLeadingBit(global0.a), any(func_1(_wgslsmith_f_op_f32(ceil(320f)), vec3<u32>(26660u, global0.a, 0u) | vec3<u32>(10414u, 0u, 63361u)))), 1f);
    let var_0 = firstLeadingBit(0u | (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.a, global0.a)), ~vec2<u32>(global0.a, global0.a)) << (min(_wgslsmith_div_u32(0u, 38610u), global0.a) % 32u)));
    var var_1 = abs(~(~vec2<u32>(97587u, 29411u))) << (countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global0.a, var_0), 4294967295u), vec2<u32>(35851u, 1u))) % vec2<u32>(32u));
    var_1 = _wgslsmith_mod_vec2_u32(~countOneBits(abs(~vec2<u32>(var_0, global0.a))), ~min((vec2<u32>(var_0, 4294967295u) << (vec2<u32>(57756u, 1u) % vec2<u32>(32u))) & vec2<u32>(global0.a, var_1.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(var_1.x, 4294967295u), vec2<u32>(global0.a, 1u))));
    global0 = Struct_5(var_0, _wgslsmith_f_op_f32(1f - -123f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.b, -308f)), 836f, _wgslsmith_f_op_f32(-655f + global0.b), _wgslsmith_f_op_f32(global0.b * -626f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1146f + 472f)), -961f, 535f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1469f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1403f, _wgslsmith_f_op_f32(f32(-1f) * -1661f)))), global0.b, ~((firstTrailingBit(var_0) ^ ~var_1.x) << (_wgslsmith_mod_u32(5311u, 33420u) % 32u)), -vec2<i32>(-abs(-14402i), ~(-1i)));
}

