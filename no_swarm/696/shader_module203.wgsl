struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(~(~select(vec4<u32>(21540u, u_input.a.x, u_input.b.x, 101910u), u_input.b, vec4<bool>(false, false, true, false))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 35888u, 0u, 0u), u_input.b)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = var_0;
    var var_2 = select(~(~(-(u_input.c ^ u_input.c))), u_input.c, select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false && any(vec3<bool>(true, true, false))), vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    var var_3 = 4294967295u;
    let var_4 = Struct_1(u_input.b);
    return !vec4<bool>(false, var_2.x > (0i << (~var_4.a.x % 32u)), true, max(var_2.x, var_2.x) >= reverseBits(u_input.d.x & -2147483647i));
}

fn func_2() -> vec4<f32> {
    let var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1884f, -1535f), vec2<f32>(-1063f, -1498f), true)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(831f, -2188f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(674f, -350f), vec2<f32>(396f, -713f))), true))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x), -859f, _wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, var_2.x, true)), 1457f));
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_2.xyx);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3, -1382f, 873f, var_3))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, -978f, var_4.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1561f, 1443f, var_3, 139f)), vec4<bool>(var_0.x, var_0.x, true, var_0.x))))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1361f, -1140f, 2366f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1333f, 193f, 193f, 1501f), vec4<f32>(676f, 1853f, 284f, -693f), vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1117f, 648f))), _wgslsmith_f_op_f32(-179f - _wgslsmith_div_f32(-1185f, 868f)), 1f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(129f, -522f, 931f, -788f), vec4<f32>(811f, 1723f, 1592f, 905f), vec4<bool>(false, true, true, false))))))), true || any(vec2<bool>(true, true))));
    let var_1 = 1i;
    let var_2 = (vec2<i32>(_wgslsmith_mod_i32(0i, -11457i), -(~var_1)) << (_wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(0u, 36936u)), ~(vec2<u32>(arg_0.a.x, arg_0.a.x) ^ vec2<u32>(u_input.b.x, 51608u))) % vec2<u32>(32u))) & ~u_input.c.yz;
    let var_3 = var_0.zwz;
    var var_4 = -3485i;
    return any(!vec3<bool>(_wgslsmith_add_u32(arg_0.a.x, arg_0.a.x) >= ~23613u, true, true));
}

fn func_4(arg_0: bool) -> vec2<bool> {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(244f * -187f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(212f))), _wgslsmith_f_op_f32(1937f - _wgslsmith_f_op_f32(-1194f * -716f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(227f * -1000f), _wgslsmith_f_op_f32(step(-227f, 780f)), -220f, _wgslsmith_f_op_f32(ceil(969f))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, -698f, 1216f, _wgslsmith_f_op_f32(781f - 1092f)))));
    let var_2 = Struct_1(u_input.b);
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(abs(select(~vec4<u32>(var_0, 4294967295u, 21387u, 4294967295u), select(u_input.b, vec4<u32>(var_0, 21909u, var_0, var_0), false), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(true, true, arg_0, false)))), ~vec4<u32>(var_0, u_input.a.x, var_0, min(var_2.a.x, 4294967295u)), ~vec4<u32>(1u, ~0u, 90525u, _wgslsmith_clamp_u32(var_2.a.x, var_0, var_2.a.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_1.zxz);
    return !func_3().xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(~(~u_input.b)));
    var var_1 = func_4(func_1(var_0));
    var var_2 = Struct_1(~u_input.b << (u_input.b % vec4<u32>(32u)));
    var_2 = Struct_1(~_wgslsmith_clamp_vec4_u32(abs(abs(var_2.a)), firstLeadingBit(firstLeadingBit(u_input.b)), ~var_2.a | max(vec4<u32>(var_2.a.x, var_0.a.x, 23563u, u_input.b.x), vec4<u32>(var_2.a.x, 128536u, 19438u, u_input.b.x))));
    var_1 = vec2<bool>(true, !var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(43945i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(45541i, 1i, u_input.d.x, u_input.c.x), -vec4<i32>(-9646i, -6483i, 1i, -37168i)), u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-675f, 789f, -2040f, 1000f) + vec4<f32>(169f, -652f, -191f, 1355f)))), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 52571u, 65673u, 0u), abs(vec4<u32>(var_2.a.x, u_input.b.x, 4294967295u, 2828u)))));
}

