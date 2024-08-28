struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 0i, i32(-2147483648), -14088i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, -757f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1060f, 576f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1614f, arg_0, 662f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1311f, 609f, arg_0))), _wgslsmith_div_vec3_f32(vec3<f32>(-590f, arg_0, arg_0), vec3<f32>(-1991f, arg_0, arg_0)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)))))), (37920u ^ ((u_input.a ^ u_input.a) << (4294967295u % 32u))) == u_input.d.x, ~vec4<u32>(53979u, 12569u, ~(~u_input.e), _wgslsmith_dot_vec3_u32(u_input.d >> (u_input.d % vec3<u32>(32u)), select(vec3<u32>(u_input.a, u_input.e, 46216u), u_input.d, false))));
    let var_1 = !vec2<bool>(!(!(!var_0.d)), false);
    let var_2 = var_0;
    var var_3 = var_2;
    global0 = u_input.b;
    return _wgslsmith_f_op_f32(step(var_0.c.x, 688f));
}

fn func_2() -> vec3<f32> {
    global0 = reverseBits(-u_input.b ^ u_input.b);
    global0 = u_input.b;
    global0 = ~reverseBits(~(-u_input.b) & firstLeadingBit(vec4<i32>(u_input.b.x, global0.x, 0i, -1i)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -982f, -513f) + vec3<f32>(943f, 242f, 428f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -1053f, 783f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1164f, _wgslsmith_f_op_f32(func_3(-315f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -704f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-332f, -346f, 1643f))) - vec3<f32>(574f, -212f, -514f))) + vec3<f32>(778f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - 486f)), 1255f)), false & any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), vec4<u32>(4294967295u, u_input.a, u_input.e, select(u_input.e, 31188u, !all(vec4<bool>(false, true, true, true)))));
    var var_1 = ~max(var_0.e.wzx, vec3<u32>(u_input.a, 1u, 4546u));
    return vec3<f32>(566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -584f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, -383f))), true)) + _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-669f + _wgslsmith_f_op_f32(-var_0.c.x)))), 471f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = 26426i;
    var var_1 = !select(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), (4879u << (u_input.a % 32u)) != 1u, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)) & true), vec4<bool>((907f == arg_0) & true, true, true, false), true);
    var_0 = -(~(~(u_input.c >> (1u % 32u))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 198f, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(545f, -1237f, arg_0), vec3<f32>(arg_0, arg_0, -1324f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1276f, arg_0)), select(select(var_1.wxy, var_1.wyw, true), var_1.yxy, var_1.ywy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1448f + arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -1319f)))) * arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-611f, arg_0, _wgslsmith_f_op_f32(arg_0 + -2236f)))))), var_1.x, vec4<u32>(19313u, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(u_input.a), 1u, 0u, 54413u), max(min(vec4<u32>(17117u, u_input.d.x, 109448u, 6067u), vec4<u32>(1u, 25692u, 0u, u_input.a)), vec4<u32>(4294967295u, u_input.e, 75718u, 5086u))), ~(~abs(u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(u_input.a, 1u, 1u, ~min(61675u, countOneBits(138139u)));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-291f))) - 1f));
    let var_2 = Struct_1(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1749f), _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2005f + -1969f), _wgslsmith_f_op_f32(-var_1.c.x), -761f) * var_1.a)), true, var_0);
    global0 = u_input.b;
    let var_3 = _wgslsmith_mod_u32(var_2.e.x, _wgslsmith_clamp_u32(max(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec3_u32(var_0.xzw, vec3<u32>(0u, 1u, u_input.d.x))), 1u), _wgslsmith_mult_u32(countOneBits(~u_input.e), _wgslsmith_mult_u32(13194u, abs(1u))), _wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(countOneBits(34139u), 25852u, 58711u, 0u))));
    var var_4 = _wgslsmith_add_i32(u_input.c | global0.x, abs(-_wgslsmith_add_i32(~(-1i), -55582i)));
    global0 = ~u_input.b;
    var var_5 = func_1(var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yw);
}

