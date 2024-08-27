struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(true, false && (!any(vec2<bool>(false, true)) || (~u_input.a == (-2147483647i >> (global0.x % 32u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> f32 {
    global0 = vec4<u32>(~(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.x, 57261u, 6062u), 90160u)), reverseBits(0u) << (min(select(~4294967295u, ~0u, false), ~_wgslsmith_clamp_u32(4294967295u, 28704u, arg_0.x)) % 32u), 0u, 4969u);
    let var_0 = ~global0.xy;
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -(~u_input.c.x)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(34565u << (0u % 32u), var_0.x, ~arg_1, 4294967295u | var_0.x), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(44771u, arg_1, 66666u, 92804u)), vec4<u32>(4294967295u, 1u, arg_0.x, var_0.x), vec4<u32>(1u, 0u, var_0.x, global0.x))) % 32u), u_input.a);
    global0 = ~firstTrailingBit(~vec4<u32>(min(global0.x, 4294967295u), 4294967295u, 0u, 19416u));
    var var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(439f + 784f), 1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(308f)) * _wgslsmith_f_op_f32(580f * 114f))))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-990f)), -463f, _wgslsmith_f_op_f32(abs(-1138f)), arg_1.x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, arg_1.x)) - _wgslsmith_f_op_f32(611f + arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), -341f), _wgslsmith_f_op_f32(func_4(vec3<u32>(arg_0, 20598u, 21123u), 23222u, func_3(), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), arg_1.x)), arg_1, select(select(vec4<bool>(0u > global0.x, true, true, true), vec4<bool>(true, true, true, 23052u < arg_0), vec4<bool>(true, true, true, true)), vec4<bool>(func_3().x, true, true, true | any(vec3<bool>(true, false, true))), vec4<bool>(true, countOneBits(0u) > arg_0, true, any(vec3<bool>(false, false, false))))));
    global0 = firstLeadingBit(countOneBits(~(~vec4<u32>(arg_0, global0.x, arg_0, arg_0)) >> (firstLeadingBit(~vec4<u32>(40196u, 63523u, 6332u, global0.x)) % vec4<u32>(32u))));
    global0 = ~(~reverseBits(countOneBits(~vec4<u32>(global0.x, arg_0, 0u, arg_0))));
    let var_1 = ~(-vec3<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 39991i) ^ -u_input.a, u_input.d, select(firstTrailingBit(u_input.d), u_input.d, var_0.x <= var_0.x)));
    let var_2 = Struct_2(Struct_1(vec3<bool>(false, false, false), select(all(vec2<bool>(true, true)), func_3().x && false, true), -535f));
    return Struct_1(!var_2.a.a, func_3().x, var_0.x);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: u32) -> vec2<f32> {
    var var_0 = func_2(global0.x ^ 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1357f * -165f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1623f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_1 = func_2(15321u << (1u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, -505f, -1544f, -1816f)))))));
    var var_2 = max(u_input.c.zy, u_input.c.yz);
    var var_3 = Struct_2(Struct_1(!var_0.a, !(var_0.a.x | !var_0.a.x), var_0.c));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.a.c, 1485f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1040f, -356f) * var_0.c)))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(var_4, -426f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 747f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a.c, var_4)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1590f, 273f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c, var_1.c), vec2<f32>(var_4, 749f))))), vec2<f32>(1542f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(182f - -676f)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> vec4<u32> {
    global0 = vec4<u32>(abs(1u), global0.x, 43349u, 4294967295u);
    var var_0 = Struct_2(func_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.x, global0.x | global0.x), _wgslsmith_clamp_u32(global0.x, global0.x, 88667u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_2, arg_2, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, 869f, arg_0.x))), vec4<f32>(-655f, _wgslsmith_div_f32(arg_0.x, arg_2), arg_0.x, 876f)))));
    var_0 = Struct_2(var_0.a);
    let var_1 = 4294967295u;
    global0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 5384u, 0u, global0.x), vec4<u32>(global0.x, 35709u, global0.x, global0.x)), ~vec4<u32>(var_1, arg_1, var_1, var_1)) >> (~vec4<u32>(max(40359u, global0.x), _wgslsmith_mod_u32(global0.x, var_1), var_1, var_1) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 13286u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.zzx, global0.zwy), global0.x, ~1u), max(~global0.x, ~global0.x)), ~(~vec4<u32>(arg_1, 58606u, arg_1, 0u) | vec4<u32>(var_1, 1u, global0.x, 0u))));
    return vec4<u32>(arg_1, global0.x, _wgslsmith_dot_vec2_u32(global0.yy, abs(min(global0.xw, vec2<u32>(4864u, global0.x)))), (4294967295u ^ var_1) | 94552u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(reverseBits(global0.x), global0.x, _wgslsmith_dot_vec3_u32(~global0.zzw ^ select(global0.yyz, global0.zxy, vec3<bool>(false, true, true)), abs(vec3<u32>(global0.x, 4294967295u, global0.x))) & global0.x, global0.x);
    var var_0 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1273f, 458f)), _wgslsmith_f_op_vec2_f32(func_1(0i, u_input.b & -2147483647i, global0.x << (27678u % 32u), global0.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-140f, -1000f), 1893f)))), ~4294967295u, 171f);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1449f * 2852f), 400f)), func_2(~var_0.x, vec4<f32>(-346f, 1774f, -479f, -356f)).c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f - 451f)))));
    let var_2 = vec3<i32>(37545i, u_input.b, _wgslsmith_clamp_i32(u_input.b, u_input.d, -(~0i)) << (~(~(51477u & var_0.x)) % 32u));
    let var_3 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))));
    var var_4 = Struct_2(Struct_1(vec3<bool>(true, var_3, !(var_3 && true)), !all(vec2<bool>(false, false)), _wgslsmith_f_op_f32(select(-1052f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(792f * -1004f))), !any(vec4<bool>(var_3, true, false, false))))));
    var_0 = ~(countOneBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 4294967295u, var_0.x, 4294967295u), vec4<u32>(global0.x, global0.x, 4294967295u, 28270u)), ~vec4<u32>(global0.x, var_0.x, global0.x, var_0.x), !vec4<bool>(var_3, var_4.a.a.x, var_3, var_3))) & vec4<u32>(var_0.x, global0.x, 4294967295u, 57242u));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1583f, var_4.a.c))));
    var var_6 = select(!vec4<bool>(true, any(vec4<bool>(var_4.a.a.x, false, true, true)), select(var_4.a.a.x, any(vec3<bool>(var_3, var_3, false)), true), -336f < var_4.a.c), vec4<bool>(var_4.a.a.x, select(var_4.a.b, var_3, var_4.a.b), var_4.a.a.x, var_4.a.a.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, select(var_2.x, 1i, true), 1i), -(var_2 | vec3<i32>(-56148i, u_input.c.x, var_2.x)) << (~(~var_0.yyx) % vec3<u32>(32u))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -10444i, u_input.a), countOneBits(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-33094i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, 1i, var_2.x), _wgslsmith_mult_i32(var_2.x, var_2.x)), -2147483647i), u_input.c));
}

