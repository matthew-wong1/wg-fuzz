struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-770f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))));
    var var_1 = _wgslsmith_div_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.a | 2147483647i, ~34763i))), ~select(vec2<i32>(u_input.c, 37709i ^ u_input.a), min(firstLeadingBit(vec2<i32>(u_input.a, u_input.c)), abs(vec2<i32>(71594i, 1i))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_2 = vec3<i32>(-(~(-var_1.x)) & 1i, var_1.x, u_input.a);
    var var_3 = 4725u;
    let var_4 = any(vec3<bool>(u_input.b > min(abs(1u), ~u_input.b), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true));
    return _wgslsmith_f_op_f32(1894f * var_0.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-189f, -266f)))) - _wgslsmith_f_op_f32(select(422f, _wgslsmith_div_f32(1314f, 485f), arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2722f + -591f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1278f)))), -1i, select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.a.x, true, false), select(select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(true, arg_1.a.x, arg_1.a.x), arg_1.a.x), vec3<bool>(false, arg_1.a.x, arg_1.a.x), select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(true, false, true), vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))), false, vec2<u32>(36952u, _wgslsmith_mod_u32(33049u, u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -878f) - -351f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f - -951f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), u_input.a << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 8858u, arg_0.x), vec3<u32>(u_input.b, arg_0.x, 39576u)) % 32u), select(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), select(!vec3<bool>(false, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, true, false), select(vec3<bool>(false, true, false), vec3<bool>(arg_1.a.x, false, arg_1.a.x), false)), vec3<bool>(!arg_1.a.x, arg_1.a.x, true))));
    let var_1 = select(vec3<bool>(arg_1.a.x, -978f > var_0.d.a, any(select(select(vec4<bool>(arg_1.a.x, false, var_0.d.d.x, false), vec4<bool>(var_0.b, arg_1.a.x, false, false), true), !vec4<bool>(var_0.b, true, arg_1.a.x, arg_1.a.x), select(vec4<bool>(var_0.b, var_0.d.d.x, arg_1.a.x, arg_1.a.x), vec4<bool>(true, true, var_0.d.d.x, arg_1.a.x), vec4<bool>(true, true, true, var_0.b))))), vec3<bool>(any(vec4<bool>(true, true, true, var_0.b)) || true, any(!select(vec4<bool>(false, true, var_0.b, true), vec4<bool>(arg_1.a.x, false, false, false), vec4<bool>(true, false, true, arg_1.a.x))), var_0.d.d.x), false);
    let var_2 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.c, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.x, 4294967295u), vec3<u32>(20434u, 0u, 36726u)), 1u), arg_0.wwz));
    let var_3 = arg_1.a.x;
    let var_4 = var_0.d.c;
    return var_3 && !any(select(vec4<bool>(true, true, var_0.b, var_3), select(vec4<bool>(var_0.a.d.x, true, var_1.x, true), vec4<bool>(true, var_3, true, true), vec4<bool>(true, var_3, false, var_1.x)), select(vec4<bool>(var_0.b, true, false, true), vec4<bool>(var_3, var_3, var_0.d.d.x, true), vec4<bool>(true, false, var_1.x, true))));
}

fn func_1() -> vec3<bool> {
    let var_0 = vec4<bool>(~min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<i32>(u_input.a, u_input.a, 0i))) >= 9830i, !(!func_2(vec4<u32>(u_input.b, 0u, 9679u, u_input.b), Struct_3(vec2<bool>(true, false))) & any(vec2<bool>(false, true))), !(!(!all(vec2<bool>(false, false)))), all(vec4<bool>(false, true, true, !(u_input.b >= u_input.b))));
    let var_1 = Struct_4(-1208f);
    var var_2 = _wgslsmith_div_i32(-(~(~abs(u_input.a))), 38000i);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, -199f, -3288f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, -889f, -1000f)))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -1527f, -1233f) + vec3<f32>(var_1.a, var_1.a, 214f))) * vec3<f32>(_wgslsmith_f_op_f32(-672f - var_1.a), -380f, _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1337f, var_1.a, _wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(982f, var_1.a, -253f), vec3<f32>(475f, var_1.a, var_1.a), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, -851f, 660f)))), var_0.x))));
    var_2 = _wgslsmith_mult_i32(u_input.a, (2147483647i << ((min(u_input.b, u_input.b) ^ ~0u) % 32u)) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, ~92517u), ~u_input.b) % 32u));
    return vec3<bool>(var_0.x, true, !(_wgslsmith_add_u32(u_input.b, u_input.b ^ u_input.b) >= abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(func_1(), vec3<bool>(true, true, true), func_1()), !select(func_1(), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(true, false, true))), !(-u_input.a > -2147483647i));
    let var_1 = -448f;
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, select(u_input.b, 115345u, false)), ~reverseBits(1u), _wgslsmith_add_u32(_wgslsmith_div_u32(24776u, u_input.b), u_input.b | u_input.b)), select(~(~firstTrailingBit(vec4<u32>(0u, u_input.b, 16460u, u_input.b))), vec4<u32>(24032u, u_input.b, ~u_input.b, abs(abs(u_input.b))), true && var_0.x));
    var_0 = !(!(!vec3<bool>(var_0.x, !var_0.x, !var_0.x)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -568f), var_1)), var_1));
    var var_4 = max(0u, ~reverseBits(~48486u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, -(_wgslsmith_div_i32(-1281i, -2147483647i) & _wgslsmith_mult_i32(7191i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~(-2147483647i), max(-1i, -19403i), ~u_input.a), ~min(vec4<i32>(u_input.c, u_input.a, -1i, -2147483647i), vec4<i32>(u_input.a, -16244i, u_input.a, -1i)))));
}

