struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = u_input.a.wzz;
    var var_2 = u_input.a ^ ((~(u_input.a << (vec4<u32>(16454u, 6746u, 4294967295u, 1u) % vec4<u32>(32u))) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) & u_input.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a));
    var var_4 = -1222f;
    return !vec4<bool>(true, !(!(!arg_0)), true, all(select(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), false), !vec2<bool>(arg_0, true), true)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1168f))));
    let var_1 = -1868f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(step(arg_3.a, 289f))))));
    let var_3 = _wgslsmith_add_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 1u, 1u, 16821u), vec4<u32>(0u, 16349u, 22923u, 38207u)), ~vec4<u32>(38982u, arg_2, 4294967295u, arg_2)), vec4<u32>(13552u, ~arg_2, ~60659u, select(42655u, 38479u, false)), select(~vec4<u32>(66078u, 60112u, arg_2, arg_2), min(vec4<u32>(arg_2, arg_2, 38900u, arg_2), vec4<u32>(4294967295u, arg_2, arg_2, arg_2)), arg_0)), ~(vec4<u32>(80294u, arg_2, arg_2, arg_2) >> (max(vec4<u32>(0u, arg_2, arg_2, arg_2), vec4<u32>(arg_2, arg_2, 40380u, 1u)) % vec4<u32>(32u))), select(select(func_3(arg_0, arg_3, Struct_1(-2143f)), !vec4<bool>(arg_0, true, false, false), false), select(vec4<bool>(arg_0, arg_0, true, true), select(vec4<bool>(true, false, false, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0)), true), vec4<bool>(any(vec2<bool>(arg_0, false)), all(vec2<bool>(arg_0, false)), false, !arg_0))), ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2, 16884u, 32706u), vec4<u32>(arg_2, arg_2, 22066u, arg_2)), vec4<u32>(arg_2, 42718u, 4294967295u, 1u) & vec4<u32>(40670u, 0u, 92147u, arg_2))));
    let var_4 = ~u_input.a.x;
    return vec4<bool>(arg_0, arg_0, !arg_0, arg_0);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = select(select(select(vec4<bool>(arg_0 == arg_0, true, true, true), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, false), vec4<bool>(-54514i >= u_input.a.x, false, all(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), any(vec3<bool>(true, true, true))), func_2(true, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 283f))), 0u, Struct_1(2118f)), func_3(true, Struct_1(arg_0), Struct_1(-1595f))), vec4<bool>(_wgslsmith_f_op_f32(step(-1437f, 1252f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), !func_2(false, vec2<f32>(arg_0, arg_0), 19367u, Struct_1(arg_0)).x, true, true)), vec4<bool>(all(func_3(func_2(false, vec2<f32>(-454f, -1053f), 1u, Struct_1(arg_0)).x, Struct_1(1459f), Struct_1(arg_0))), all(func_3(true, Struct_1(arg_0), Struct_1(-1000f))), true, func_3(func_3(any(vec3<bool>(true, false, false)), Struct_1(656f), Struct_1(1001f)).x, Struct_1(_wgslsmith_f_op_f32(select(arg_0, arg_0, false))), Struct_1(_wgslsmith_f_op_f32(arg_0 * arg_0))).x), func_3(false, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 163f)))), Struct_1(-1462f)));
    let var_1 = select(vec4<bool>(select(false | (var_0.x & false), true, false), !all(var_0.ww), all(vec2<bool>(true, var_0.x)), true), !vec4<bool>(true | select(var_0.x, false, var_0.x), true | !var_0.x, all(var_0.xw), func_2(false, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-3401f, -647f))), 42412u, Struct_1(-229f)).x), !func_2(false, vec2<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))), 1u, Struct_1(arg_0)).x);
    var_0 = !(!vec4<bool>(var_1.x, any(vec2<bool>(false, true)), true, all(select(var_1, var_1, var_1))));
    var_0 = !func_3(var_1.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0))), Struct_1(arg_0));
    var_0 = select(!func_2(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -1954f), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2245f, -286f))), ~_wgslsmith_mod_u32(113855u, 56777u), Struct_1(_wgslsmith_f_op_f32(-arg_0))), vec4<bool>(true, false, select(!(var_0.x && false), true, any(vec3<bool>(false, true, var_0.x)) == all(var_1.xxy)), var_0.x), !func_2(true & !var_1.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1679f, arg_0) - vec2<f32>(arg_0, 235f)))), ~(~0u), Struct_1(_wgslsmith_div_f32(-810f, arg_0))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), 1201f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(675f, 553f, -725f))))));
    let var_1 = Struct_1(var_0.x);
    var var_2 = var_1;
    var var_3 = Struct_1(var_2.a);
    var var_4 = func_1(var_0.x);
    var var_5 = min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_div_u32(31561u, 73992u), _wgslsmith_mult_u32(4294967295u, 1u), ~1u)) << (0u % 32u));
    var_5 = 1u;
    let var_6 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -761f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~reverseBits(~u_input.a.x), firstLeadingBit(u_input.a.x), 1i), firstTrailingBit(24765u));
}

