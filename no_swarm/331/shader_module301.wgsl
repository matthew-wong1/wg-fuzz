struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(328f))));
    let var_1 = arg_2;
    var var_2 = Struct_1(max(firstLeadingBit(~vec3<u32>(2640u, arg_2.a.x, u_input.a)), var_1.a), arg_2.b);
    let var_3 = firstTrailingBit(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, u_input.d, u_input.d, 29644i)), countOneBits(firstTrailingBit(vec4<i32>(-25076i, 0i, 2147483647i, u_input.d)))) | _wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(12859i, u_input.d) ^ ~u_input.d));
    var var_4 = _wgslsmith_f_op_f32(arg_1 + var_0);
    return Struct_1(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(54117u, u_input.a, 12775u), vec3<u32>(var_1.a.x, var_2.a.x, 36758u)), ~vec3<u32>(1u, var_2.a.x, 25726u)), var_2.a), !select(!vec4<bool>(arg_2.b.x, true, true, var_2.b.x), vec4<bool>(var_2.b.x, var_1.a.x > u_input.b.x, 84132u >= var_2.a.x, all(vec3<bool>(true, var_2.b.x, true))), vec4<bool>(true, false, arg_2.b.x, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = select(vec4<bool>((u_input.a >> (arg_1 % 32u)) > 4294967295u, _wgslsmith_div_f32(-274f, -291f) >= arg_0.x, true, (~u_input.d & -26219i) < _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(41387i, -1i), vec2<i32>(-33088i, -38057i)), u_input.d)), vec4<bool>(true, select(true, _wgslsmith_div_u32(u_input.c, arg_1) < (u_input.a ^ u_input.c), all(vec2<bool>(true, arg_2)) & !arg_2), !all(select(vec2<bool>(arg_2, arg_3), vec2<bool>(false, true), false)), arg_2), !vec4<bool>(true, false, any(select(vec2<bool>(arg_2, true), vec2<bool>(false, false), vec2<bool>(arg_3, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, arg_2), vec2<bool>(arg_3, arg_2)))));
    let var_1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(~(~12421u), 0u | _wgslsmith_div_u32(arg_1, u_input.a)), 14278u, 74754u), select(select(!vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, true, false, arg_3 || arg_2), (var_0.x || var_0.x) && true), vec4<bool>(true, arg_3, arg_2, true), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.x))))));
    var var_3 = func_2(~arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1607f - arg_0.x), _wgslsmith_f_op_f32(691f * arg_0.x)))))), Struct_1(var_1.a, select(vec4<bool>(arg_3, arg_2, !arg_3, -10227i <= u_input.d), vec4<bool>(arg_0.x != arg_0.x, false, false, any(vec2<bool>(arg_3, true))), var_1.b)));
    var var_4 = Struct_1(~firstTrailingBit(var_3.a), !func_2(var_3.a.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x * 842f)), var_1).b);
    return Struct_1(_wgslsmith_sub_vec3_u32(var_4.a, _wgslsmith_clamp_vec3_u32(var_4.a, _wgslsmith_add_vec3_u32(var_1.a, _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, 1u, 1u), var_4.a)), ~(~vec3<u32>(1u, var_3.a.x, 4294967295u)))), select(vec4<bool>(!all(vec3<bool>(var_4.b.x, var_1.b.x, true)), !var_0.x & var_3.b.x, true, !var_3.b.x), vec4<bool>(!(!arg_3), var_4.b.x, false, var_3.b.x || (arg_0.x <= -222f)), false));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<bool>(arg_2.b.x, !arg_2.b.x, false, all(!arg_2.b));
    var var_1 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2229f, -136f))))) * vec2<f32>(_wgslsmith_f_op_f32(-1888f - 1934f), -2490f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_div_f32(-1368f, 1000f))))), arg_1.x, true, all(vec3<bool>(!all(arg_2.b.zy), var_0.x, true)));
    var_1 = func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-187f, 348f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(741f)), _wgslsmith_f_op_f32(f32(-1f) * -267f))), vec2<bool>(false, false))), ~func_2(~firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1649f, 235f))), func_2(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1620f), Struct_1(vec3<u32>(8077u, 1u, u_input.c), var_0))).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(961f)), 1700f))) <= -335f, var_1.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1726f, 1000f, 1080f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 372f, 597f), vec3<f32>(-2326f, -1357f, -462f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1574f, 283f, _wgslsmith_f_op_f32(-1018f + 1263f))))));
    var_1 = Struct_1(arg_0.xzz, vec4<bool>(all(vec4<bool>(func_2(arg_1.x, -530f, arg_2).b.x, arg_2.b.x, var_0.x, select(var_0.x, true, true))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, -147f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -2149f) + vec2<f32>(675f, -533f))), ~30016u, true && (u_input.d >= u_input.d), select(any(vec4<bool>(true, true, true, true)), true, false)).b.x, !var_1.b.x, var_1.b.x));
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(!all(vec3<bool>(true, false, true)), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), false));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(450f, -560f)));
    var_1 = 103f;
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1161f, 692f) * vec2<f32>(438f, -421f))))), ~u_input.c, var_0.x, false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(59258u, 30955u, _wgslsmith_mult_u32(14481u, 1u), min(var_2.a.x, 13643u)), vec3<u32>(var_2.a.x, 0u, min(u_input.c, u_input.c)), func_2(u_input.a | 0u, _wgslsmith_f_op_f32(768f * 1164f), func_1(vec2<f32>(760f, -1059f), u_input.c, true, var_2.b.x)))) - -497f));
    var_3 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2103f, -323f)), -726f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

