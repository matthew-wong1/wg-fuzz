struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + var_0.c))))) + arg_0.c));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(-arg_1.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(max(345f, var_0.a)))))), ~_wgslsmith_mult_u32(~arg_0.b << (_wgslsmith_clamp_u32(var_0.b, 4294967295u, arg_1.b) % 32u), select(_wgslsmith_mult_u32(arg_1.b, arg_1.b), 434u ^ u_input.c, true)), 426f);
    let var_3 = _wgslsmith_mult_vec3_u32(u_input.b.zxx, max(_wgslsmith_clamp_vec3_u32(countOneBits(u_input.b.wxy), vec3<u32>(4294967295u, _wgslsmith_add_u32(60518u, var_0.b), 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, u_input.c, arg_1.b), max(u_input.b.yyx, vec3<u32>(arg_1.b, arg_0.b, 1u)), ~vec3<u32>(4294967295u, arg_1.b, arg_1.b))), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(33404u, 1u, u_input.b.x), vec3<u32>(arg_1.b, var_0.b, arg_0.b), false), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.b, 13108u), vec3<u32>(u_input.c, 49396u, 0u)), vec3<u32>(u_input.c, var_2.b, arg_1.b) >> (vec3<u32>(arg_1.b, var_0.b, 4294967295u) % vec3<u32>(32u))), vec3<u32>(~77729u, min(20254u, arg_1.b), _wgslsmith_clamp_u32(u_input.a, u_input.c, arg_0.b)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_2.c - var_0.c), ~(~var_3.x), arg_0.a);
    return var_2.c;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = vec2<bool>(1i > u_input.d.x, false);
    let var_2 = u_input.d.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(986f * 1000f), 1u, -1685f), Struct_1(_wgslsmith_f_op_f32(568f * -1000f), _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_div_f32(560f, 1124f))))), 32645u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(150f)), -698f))));
    let var_4 = var_0;
    return Struct_1(1030f, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1448f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1259f, -424f), -465f))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = select(vec2<bool>(false, arg_2.x && false), vec2<bool>((1i >= u_input.d.x) | !(u_input.d.x <= u_input.d.x), (1u & arg_1.b) >= _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 1u), u_input.a)), arg_2.zy);
    let var_1 = func_2();
    let var_2 = var_1.b == 52005u;
    var var_3 = !arg_2.x;
    var_3 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), func_1(), vec3<bool>(all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), false, false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1414f))))) <= -2299f;
    let var_2 = Struct_1(var_0.a, _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), 29054u), _wgslsmith_div_u32(~(~1u), _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(21993u, 82134u), u_input.b.zw)))), _wgslsmith_f_op_f32(-1098f - var_0.a));
    let var_3 = _wgslsmith_f_op_f32(var_0.c * func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(305f, var_2.c) + _wgslsmith_f_op_f32(max(-1222f, -1878f))), u_input.b.x, var_2.a), func_2(), vec3<bool>(var_1 & select(true, var_1, true), var_1, !any(vec3<bool>(false, false, false)))).a);
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(var_2.b, var_0.b), 1u), ~(~u_input.b.xzy)), firstLeadingBit(countOneBits(u_input.b.xxw << (u_input.b.zzy % vec3<u32>(32u))))));
}

