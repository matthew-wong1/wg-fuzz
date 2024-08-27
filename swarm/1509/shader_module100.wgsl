struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(67394u, false, _wgslsmith_add_u32(abs(58666u), 14617u));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), -358f) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, -156f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, -180f, global0.x) - vec3<f32>(314f, -1836f, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1110f, global0.x, global0.x) * vec3<f32>(global0.x, global0.x, global0.x)) - vec3<f32>(global0.x, global0.x, 1000f)))))));
    let var_1 = true;
    let var_2 = Struct_1(~var_0.c, true, u_input.b);
    let var_3 = var_0;
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    var var_0 = arg_0;
    var var_1 = ~u_input.b;
    var var_2 = func_3();
    var var_3 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, -106f)), global0.x))), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x)));
    return _wgslsmith_f_op_f32(global0.x + global0.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = (((_wgslsmith_f_op_f32(410f + global0.x) >= -126f) | select(arg_3, any(vec2<bool>(true, arg_1.b)), !arg_3)) != true) && false;
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x & -10806i, firstTrailingBit(25796i), u_input.d.x, ~(-2147483647i)), vec4<i32>(select(_wgslsmith_dot_vec2_i32(u_input.d.zx & vec2<i32>(47238i, 769i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.d.xy)), u_input.d.x, !arg_3), _wgslsmith_div_i32(u_input.d.x, u_input.a.x & -1i) << (u_input.c % 32u), _wgslsmith_mod_i32(abs(-2468i), ~u_input.d.x), u_input.a.x));
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: f32) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), 446f)));
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1250f) + _wgslsmith_f_op_f32(min(-1263f, arg_3))), _wgslsmith_f_op_f32(func_2(Struct_1(arg_1, true, arg_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(946f, arg_3, arg_3, 770f), vec4<f32>(global0.x, arg_3, 2290f, 1552f))), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), _wgslsmith_clamp_i32(u_input.d.x, 3200i, u_input.d.x))))), Struct_1(firstLeadingBit(~4294967295u << ((4294967295u | arg_1) % 32u)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)) || (-1000f <= _wgslsmith_f_op_f32(round(-769f))), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -551f, 1744f, global0.x)) * vec4<f32>(arg_3, arg_3, global0.x, arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, arg_2, arg_3, -754f))))))), true);
    let var_1 = Struct_1(arg_1, any(select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true))), select(vec2<bool>(true, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(true, true), true), any(vec2<bool>(var_0.b, true))), !(!vec2<bool>(var_0.b, var_0.b)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(85293u), ~var_0.c, 1u, min(116463u, 7878u)), vec4<u32>(_wgslsmith_sub_u32(var_0.c, 0u), func_4(global0.yz, Struct_1(u_input.b, var_0.b, 70291u), vec4<f32>(867f, -863f, arg_3, arg_3), false).a, 23756u << (0u % 32u), 7470u)));
    let var_2 = func_4(global0.yz, Struct_1(var_1.a, !(_wgslsmith_f_op_f32(1467f + arg_3) >= _wgslsmith_f_op_f32(-arg_2)), 2485u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, arg_2, -291f, global0.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-748f, arg_2, -908f, global0.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, -1143f, global0.x) * vec4<f32>(1000f, 181f, global0.x, -2300f)), vec4<f32>(1749f, -610f, -414f, arg_2)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(1u, true, 29281u), vec4<f32>(-522f, arg_2, -593f, arg_3), vec4<bool>(false, var_1.b, var_1.b, var_0.b), 14584i)), global0.x, -201f, _wgslsmith_f_op_f32(f32(-1f) * -411f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global0.x, -2287f, 2012f))))), true && var_1.b);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3)))));
    return countOneBits(~(~vec2<u32>(_wgslsmith_mod_u32(u_input.c, var_2.c), 1u & var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.d.x);
    var var_1 = true;
    var_0 = _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-20385i, 0i), u_input.a), ~(~7764i), true), ~0i));
    var_0 = ~(-(~u_input.a.x));
    let var_2 = Struct_1(u_input.b, !(all(vec4<bool>(true, false, true, false)) & all(vec4<bool>(true, true, false, false))) && true, ~u_input.b);
    let var_3 = Struct_1(firstLeadingBit(1u), var_2.b, u_input.c ^ ~(~17284u | _wgslsmith_sub_u32(var_2.a, u_input.b)));
    let var_4 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_3.c ^ var_3.a, ~var_2.c), ~vec2<u32>(~30903u, 528u | u_input.b)), ~(~(~func_1(-2147483647i, var_3.c, 298f, global0.x))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-406f);
}

