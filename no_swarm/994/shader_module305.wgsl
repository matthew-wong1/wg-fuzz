struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = 19651i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))), 25383u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1448f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-718f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) * var_1.a))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f * _wgslsmith_f_op_f32(1197f - 346f)))), u_input.c | ~u_input.a);
    return global0.a;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(u_input.b, -2147483647i), -41145i, -10633i);
    global1 = Struct_1(global1.a, ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(17045u, 5362u, 0u, global1.b) & vec4<u32>(arg_0, 3962u, 0u, 43647u)), max(abs(vec4<u32>(1u, 0u, 63633u, 4801u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, global1.b, u_input.c, 10788u), vec4<u32>(0u, 55123u, 99115u, u_input.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0.a))), ~1u);
    global0 = Struct_1(_wgslsmith_f_op_f32(global1.a * -1057f), 40340u);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + -760f), ~_wgslsmith_mult_u32(select(var_1.b, 0u, arg_1.x), abs(var_1.b)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.a, 331f))))) - _wgslsmith_f_op_f32(-global1.a)), global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1885f), 9194u);
    let var_1 = !any(vec3<bool>(true, true, true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f * 1498f) * arg_0.a)) + -2003f), func_2(u_input.c, !select(!vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_1, false, var_1), select(vec4<bool>(var_1, false, false, true), vec4<bool>(true, false, var_1, var_1), vec4<bool>(true, false, true, true)))).b);
    return select(!(!select(!vec4<bool>(false, var_1, false, true), vec4<bool>(false, true, var_1, true), any(vec2<bool>(var_1, true)))), vec4<bool>(all(select(select(vec4<bool>(var_1, var_1, false, false), vec4<bool>(true, false, true, var_1), vec4<bool>(var_1, true, var_1, false)), vec4<bool>(true, true, var_1, true), var_1)), var_1, all(vec2<bool>(var_1, true)), true | any(select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(true, var_1, false, false), false))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(362f)) - _wgslsmith_f_op_f32(global1.a * arg_0.a)) >= _wgslsmith_f_op_f32(-arg_1.a)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = !(!func_4(func_2(_wgslsmith_div_u32(global1.b, 13124u), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_div_f32(global0.a, global0.a), ~4294967295u)));
    global0 = Struct_1(global1.a, 45923u >> (_wgslsmith_add_u32(~(71985u ^ global0.b), 70621u) % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(290f + _wgslsmith_f_op_f32(arg_0.x * global0.a)), 0u);
    let var_2 = Struct_1(_wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(global0.a))))), 79702u);
    var_0 = !vec4<bool>(!(-u_input.b <= _wgslsmith_sub_i32(22494i, -650i)), !var_0.x, true, var_0.x);
    return func_2(10012u, !vec4<bool>(global1.a > _wgslsmith_f_op_f32(ceil(-247f)), all(!vec4<bool>(false, var_0.x, false, var_0.x)), !(!var_0.x), var_0.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global1 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, _wgslsmith_f_op_f32(sign(-268f)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-1000f * global0.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(951f, 444f, 999f, global1.a) + vec4<f32>(arg_1.a, -1450f, 1040f, 910f)), vec4<f32>(global0.a, -576f, arg_1.a, -238f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1511f, global1.a, global1.a, global1.a))))));
    var var_0 = vec3<i32>((_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 20070i, 1i), vec4<i32>(33532i, u_input.b, -1i, -2147483647i)), u_input.b) | u_input.b) ^ (min(u_input.b, _wgslsmith_clamp_i32(-44732i, 5324i, u_input.b)) << (abs(768u) % 32u)), 1i, 1i);
    let var_1 = vec3<i32>(u_input.b, firstLeadingBit(-(~(-1i))), -(-4171i | _wgslsmith_add_i32(-2147483647i ^ var_0.x, u_input.b)));
    global1 = func_1(vec4<f32>(-2134f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(330f)) - -352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-675f))), false)), 1000f, func_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(func_3()), global0.a, _wgslsmith_f_op_f32(-global0.a))).a));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1297f))))), ~(~arg_2.x << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u))), func_2(arg_0.x, vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !all(vec4<bool>(false, false, false, false)), true, func_4(arg_1, Struct_1(1215f, u_input.a)).x))).yx;
    return func_2(14339u, func_4(Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(arg_1.a * 152f)), 34919u), Struct_1(-1048f, abs(~1u))));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    global0 = func_5(min(max(u_input.d, abs(vec2<u32>(global0.b, 17165u))), u_input.d) << (~vec2<u32>(global1.b, ~75742u) % vec2<u32>(32u)), arg_0, ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(30541u, global0.b, global1.b), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(global0.b, 1u, 4294967295u)), ~vec3<u32>(19477u, 8488u, 50009u), ~vec3<u32>(u_input.c, 0u, global1.b)), ~_wgslsmith_add_vec3_u32(vec3<u32>(global1.b, 0u, 33041u), vec3<u32>(global1.b, 1u, global0.b))));
    var var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -264f, global0.a), vec3<f32>(global0.a, global1.a, -1224f), vec3<bool>(false, false, true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -976f, -1350f), vec3<f32>(global0.a, global0.a, -654f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 602f, -136f) * vec3<f32>(734f, -627f, global0.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global0.a, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a, global0.a))) * vec3<f32>(func_5(u_input.d, Struct_1(-581f, global0.b), vec3<u32>(u_input.c, 0u, arg_0.b)).a, _wgslsmith_f_op_f32(global1.a - -1233f), arg_0.a))), true));
    var var_2 = arg_0;
    let var_3 = arg_0;
    return StorageBuffer(func_5(vec2<u32>(arg_0.b, func_1(vec4<f32>(693f, 229f, arg_0.a, 844f)).b), var_3, vec3<u32>(global1.b, var_2.b, func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a, 542f, 275f, global1.a), vec4<f32>(1920f, 208f, -233f, -2245f)))).b)).a, 54153u, -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(501i, u_input.b)), -_wgslsmith_mod_vec2_i32(vec2<i32>(49455i, -1i), vec2<i32>(21771i, 28137i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_0.a, global1.a, 473f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(618f, 187f, 654f, arg_0.a), vec4<f32>(var_2.a, -220f, global1.a, arg_0.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(-934f, arg_0.a, global1.a, 689f), vec4<f32>(276f, var_3.a, 808f, var_3.a)))))), _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.b, arg_0.b), max(4294967295u, u_input.d.x)), ~var_3.b | abs(arg_0.b)), firstLeadingBit(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(firstLeadingBit(~max(vec2<u32>(4294967295u, 1u), u_input.d)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-273f, -359f, global0.a, -171f), vec4<f32>(global1.a, global1.a, 1000f, global0.a))))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<u32>(global1.b, global0.b, 47118u), vec3<u32>(global1.b, global0.b, u_input.c)) ^ ~vec3<u32>(4294967295u, u_input.c, global1.b))));
}

