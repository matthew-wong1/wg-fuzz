struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)), 662f));
    return u_input.b;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.b);
    var var_2 = vec2<i32>(var_0, select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -50670i, var_0) >> (vec3<u32>(8716u, 12295u, u_input.b.x) % vec3<u32>(32u)), ~vec3<i32>(-8966i, var_0, var_0)), 7920i, !(-21154i == var_0)) << (28071u % 32u));
    var_1 = 1870f;
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(1u, 159278u))), firstTrailingBit(select(u_input.b, u_input.b, vec2<bool>(true, false))), vec2<u32>(_wgslsmith_div_u32(arg_0.a.c.x, arg_0.a.a.x), ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b))), ~vec2<u32>(1u, 1u)), arg_0.a.b);
    return !any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), !(var_3.a.b == -1869f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(arg_0.x, 4294967295u, arg_1.x))), arg_0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(21048u, u_input.a.x ^ 23974u), vec2<u32>(u_input.b.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(317f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1153f))), select(true, true, true)))), vec2<u32>(11808u, u_input.b.x));
    let var_1 = -2274f;
    let var_2 = all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), select(all(vec4<bool>(false, true, true, true)), true, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), false), vec4<bool>(-arg_2 <= 0i, false, func_3(Struct_2(Struct_1(vec2<u32>(var_0.c.x, u_input.a.x), var_1, vec2<u32>(0u, 23245u)), -1000f)), true), !vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, true, false)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_0.b, _wgslsmith_f_op_f32(floor(var_1)));
    let var_4 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), _wgslsmith_div_u32(28238u, arg_0.x)), _wgslsmith_mult_vec2_u32(~var_0.a, select(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 69933u), var_0.c), u_input.b, all(vec2<bool>(var_2, var_2))))), var_3.x, func_1(abs(1i >> ((24516u ^ u_input.a.x) % 32u))));
    return Struct_1(countOneBits(~abs(_wgslsmith_div_vec2_u32(var_4.a, var_0.c))), var_4.b, ~min((u_input.b & arg_1) | var_4.c, ~(~vec2<u32>(4294967295u, 23262u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_mod_u32(u_input.b.x & 93751u, 17008u), 8113u), _wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(floor(-990f))), _wgslsmith_mult_vec2_u32(u_input.b, countOneBits(_wgslsmith_mult_vec2_u32(u_input.b ^ u_input.b, abs(u_input.b)))));
    var var_1 = var_0.b;
    var var_2 = func_2(u_input.b, func_1(-1i), 68320i);
    var_1 = var_0.b;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b, var_2.b)))) + 728f) + -207f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + var_0.b)));
    var_2 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(~min(21762u, var_0.c.x), u_input.b.x), vec2<u32>(~select(28462u, 4294967295u, true), 43638u)), 1350f, select(countOneBits(vec2<u32>(5634u, ~u_input.a.x)), max(vec2<u32>(var_2.a.x, 38342u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a.x, u_input.a.x), var_0.c, u_input.a.yz) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a.yz, func_2(var_0.a, vec2<u32>(var_2.c.x, 24517u), 6839i).a)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, 6462i, -33419i), vec3<i32>(-1i, 18371i, 2147483647i)), min(vec3<i32>(-32107i, -1i, -2147483647i), vec3<i32>(-70754i, -2147483647i, -1i))) | ~58765i), 1i);
}

