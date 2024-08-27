struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(855f, -2229f, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = -8378i;
    let var_1 = _wgslsmith_clamp_i32(reverseBits(u_input.d.x), ~_wgslsmith_mult_i32(0i, _wgslsmith_add_i32(-24577i, u_input.b)), u_input.b) == _wgslsmith_dot_vec2_i32(-select(u_input.d.zx, select(u_input.d.xz, vec2<i32>(u_input.d.x, u_input.b), true), true), u_input.d.xx);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.b) - _wgslsmith_f_op_f32(global0.a - global0.b))), global0.a, ~(~22743u) >> (1u % 32u));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x & -13182i, 1i, ~u_input.d.x))));
    var_2 = 20845i;
    return 1294f;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(-182f, _wgslsmith_f_op_f32(func_3()), u_input.c);
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1136f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b - global0.b)))) * global0.a), 0u);
    global0 = Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-194f * global0.b)), _wgslsmith_f_op_f32(floor(1942f))))), _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - global0.b)), -2973f)), 61487u);
    let var_0 = ~firstLeadingBit(4294967295u);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f - _wgslsmith_f_op_f32(-513f * _wgslsmith_f_op_f32(-global0.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1666f))) + -428f)), _wgslsmith_f_op_f32(sign(1865f)), _wgslsmith_mult_u32(8662u, var_0));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1518f, global0.b)), global0.b)) - 1876f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3462f + global0.b)) * global0.a), _wgslsmith_f_op_f32(global0.b * 1874f)), u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - 950f)));
    global0 = func_2();
    let var_1 = any(select(select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), arg_1), !(!vec3<bool>(false, arg_1, arg_1)), arg_1), vec3<bool>(any(vec2<bool>(arg_1, true)) && false, true, false), vec3<bool>(any(select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_1, arg_1))), select(true, arg_1, true), !(true || arg_1))));
    global0 = arg_0;
    global0 = func_2();
    return global0.c ^ arg_2.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * 1f))), _wgslsmith_f_op_f32(f32(-1f) * -1251f))), 1212f, func_4(func_2(), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), countOneBits(u_input.a)));
    var var_1 = var_0;
    var_1 = func_2();
    var var_2 = all(select(vec3<bool>(true, true, false), vec3<bool>(!select(false, true, true), true, select(all(vec4<bool>(true, false, false, true)), select(false, true, false), select(true, true, true))), select(~var_0.c, u_input.a.x << (var_1.c % 32u), u_input.a.x != 47406u) > 34659u));
    var var_3 = var_0;
    return var_0;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec4<f32>(global0.b, global0.a, global0.b, global0.b);
    global0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(374f, _wgslsmith_f_op_f32(min(-296f, -509f)))), _wgslsmith_div_f32(-486f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(func_2().b + _wgslsmith_f_op_f32(arg_2.a - global0.a))), _wgslsmith_f_op_f32(-863f + global0.b)) * vec3<f32>(1296f, var_0.x, 655f));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~2032u, u_input.c), max(~_wgslsmith_add_u32(func_1().c, _wgslsmith_div_u32(71258u, 4294967295u)), arg_2.c));
    var_2 = 9229u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(func_1().b, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global0.a) - _wgslsmith_div_f32(global0.a, var_1.x)), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)))));
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> f32 {
    let var_0 = true & any(vec4<bool>(true, true, true, true));
    let var_1 = Struct_1(249f, _wgslsmith_f_op_f32(-arg_2), 1u);
    var var_2 = func_1();
    var var_3 = any(!select(vec3<bool>(u_input.b > 0i, var_0 | false, all(vec3<bool>(true, false, true))), !vec3<bool>(var_0, true, false), true));
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-258f * arg_1.x))) + global0.a), _wgslsmith_f_op_f32(abs(arg_2)), !(!(var_1.a == -1000f)))), _wgslsmith_f_op_f32(-1583f + global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(-(~u_input.b << (_wgslsmith_add_u32(u_input.c, 47907u) % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(-2147483647i, select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), func_1())) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -269f, global0.a, global0.b))))), -524f)));
    var var_1 = !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0)))) > 1000f);
    var var_2 = countOneBits(min(firstTrailingBit(u_input.d) >> (~reverseBits(vec3<u32>(13816u, u_input.c, 1u)) % vec3<u32>(32u)), vec3<i32>(u_input.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, 1514i), u_input.b), 1i)));
    var var_3 = func_2();
    let var_4 = Struct_1(global0.b, 1421f, ~select(4294967295u & var_3.c, ~global0.c, true) & select(reverseBits(global0.c), ~var_3.c, select(u_input.c, 4294967295u, true) > u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, ~2140i), ~(i32(-1i) * -2147483647i)), u_input.a.wz, countOneBits(func_2().c) << (~func_2().c % 32u), select(vec3<i32>(u_input.d.x, i32(-1i) * -15123i, 18513i), u_input.d, select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))))), -224f);
}

