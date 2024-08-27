struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.a;
    return abs(0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1943f, 225f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-490f, 168f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-763f, 673f), vec2<f32>(-728f, -631f), vec2<bool>(false, false))) * vec2<f32>(-682f, -1084f)), vec2<f32>(_wgslsmith_f_op_f32(floor(-245f)), -1000f), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1039f + -1402f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(933f))))));
    let var_1 = 28965i;
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, _wgslsmith_div_f32(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-139f, var_0.x)))));
    let var_2 = Struct_1(select(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, 85691u, 0u, u_input.a) & vec4<u32>(33452u, 52070u, u_input.a, 30290u))), vec4<u32>(11631u >> (~u_input.a % 32u), u_input.a, 1u, select(u_input.a, 1u, false) << (_wgslsmith_sub_u32(1u, 0u) % 32u)), select(vec4<bool>(true, select(true, false, false), any(vec2<bool>(true, true)), any(vec3<bool>(true, false, false))), vec4<bool>(true, true, any(vec2<bool>(false, false)), u_input.a >= 4294967295u), true & (var_1 > var_1))), -1920f, vec3<u32>(~u_input.a, u_input.a, 112796u), 34233u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(-var_0.x))))));
    var var_3 = var_2;
    return var_3.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = vec2<f32>(arg_0.b, arg_0.b);
    var_0 = vec2<f32>(arg_0.b, 758f);
    var var_1 = Struct_1(vec4<u32>(0u, ~(~abs(35101u)), _wgslsmith_mult_u32(0u, func_2(arg_0)), 77597u), _wgslsmith_f_op_f32(1252f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 2081f))), arg_0.a.xyy, _wgslsmith_mult_u32(firstTrailingBit(u_input.a), ~_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(58991u, 4294967295u, 1u, 0u) & arg_0.a)), _wgslsmith_f_op_f32(-var_0.x));
    var_1 = Struct_1(func_3(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + arg_0.e), _wgslsmith_f_op_f32(f32(-1f) * -408f)), 632f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * _wgslsmith_f_op_f32(var_1.b - arg_0.e)))), ~arg_2, 7823u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f - _wgslsmith_f_op_f32(arg_0.b - -1669f))))));
    var var_2 = select(!vec3<bool>(!arg_1 && true, any(!vec4<bool>(true, arg_1, arg_1, arg_1)), !arg_1), !select(select(!vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, false)), vec3<bool>(true, true, true), vec3<bool>(!arg_1, any(vec2<bool>(arg_1, true)), arg_1 & false)), vec3<bool>(arg_1, any(select(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), arg_1), vec2<bool>(true, arg_1), true)), false));
    return func_3().yxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(-879f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-427f, -812f, true)), _wgslsmith_f_op_f32(f32(-1f) * -122f)))))) < 750f;
    let var_1 = _wgslsmith_clamp_vec3_u32(~(~(min(vec3<u32>(u_input.a, 39000u, 0u), vec3<u32>(u_input.a, u_input.a, 1u)) << (~vec3<u32>(u_input.a, 35030u, 22975u) % vec3<u32>(32u)))), ~vec3<u32>(~(u_input.a ^ u_input.a), u_input.a, ~2880u), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(15119u, u_input.a, 19414u))) << (func_1(Struct_1(vec4<u32>(u_input.a, 3055u, 33507u, 22589u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -972f), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, u_input.a, 9838u, u_input.a)), 1647f), any(vec3<bool>(false, true, true)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 27156u, 1u), vec3<u32>(100085u, u_input.a, 65159u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f * _wgslsmith_div_f32(728f, 1000f)))), _wgslsmith_add_vec3_i32(-min(select(vec3<i32>(-1i, -9801i, -1i), vec3<i32>(-11291i, -2147483647i, -5113i), vec3<bool>(true, false, false)), vec3<i32>(0i, -8957i, -15917i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 0i) >> (_wgslsmith_clamp_vec3_u32(var_1, var_1, var_1) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))));
}

