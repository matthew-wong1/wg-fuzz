struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = (_wgslsmith_dot_vec2_u32(abs(u_input.e.zy), abs(u_input.c.xx)) & ~(~(~10931u))) >> (4294967295u % 32u);
    var_0 = 1u;
    let var_1 = Struct_1(_wgslsmith_mult_u32(~abs(firstLeadingBit(4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.e.x, 0u), u_input.c), ~vec3<u32>(0u, 4294967295u, u_input.e.x))), ~0u);
    var_0 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(0u), 30705u), u_input.a.x);
    var var_2 = -reverseBits(0i);
    return select(vec2<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(all(vec2<bool>(false, true)), all(vec2<bool>(true, false)), u_input.d.x < (u_input.d.x ^ 2147483647i))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(true, false)))), true);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(43724u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, u_input.e.x, arg_0.b), ~vec3<u32>(arg_0.a, 0u, 19256u)), arg_0.b & 4294967295u) % 32u), ~0u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, ~arg_0.a), _wgslsmith_mod_vec2_u32(u_input.e.zz, vec2<u32>(94138u, u_input.a.x))));
    var var_1 = select(func_3(), !func_3(), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true), true))));
    var_0 = arg_0;
    var_1 = !func_3();
    let var_2 = Struct_1(firstLeadingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.a.yy), firstLeadingBit(vec2<u32>(69182u, arg_0.a)))), 9530u);
    return vec3<bool>(any(!vec2<bool>(func_3().x, any(vec2<bool>(var_1.x, var_1.x)))), true, any(vec3<bool>(true, (var_1.x & true) & true, any(vec2<bool>(var_1.x, var_1.x)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec4<i32>(_wgslsmith_add_i32(-1i >> (0u % 32u), 5825i), -(i32(-1i) * -2147483647i), firstTrailingBit(~u_input.d.x), firstLeadingBit(firstLeadingBit(17205i))) >> (~vec4<u32>(_wgslsmith_sub_u32(~arg_1.a, _wgslsmith_mod_u32(arg_1.a, arg_1.a)), 39661u, firstLeadingBit(_wgslsmith_div_u32(u_input.e.x, arg_1.b)), select(12112u, countOneBits(4294967295u), true)) % vec4<u32>(32u));
    var var_1 = arg_1;
    var var_2 = arg_0;
    var_1 = arg_1;
    var_2 = arg_0;
    return Struct_1(~(~var_1.a) & u_input.e.x, ~(select(_wgslsmith_sub_u32(4627u, u_input.a.x), 0u, u_input.b != 2147483647i) | ~select(0u, 4294967295u, var_2.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(42410u, u_input.a.x, 1u, 52026u))), u_input.a);
    var var_1 = func_4(select(vec3<bool>(!arg_0, !all(vec3<bool>(true, false, arg_0)), false), select(select(vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), true), vec3<bool>(any(vec2<bool>(arg_0, false)), true, arg_0), select(func_2(arg_1), vec3<bool>(true, true, false), !vec3<bool>(arg_0, arg_0, arg_0))), func_2(Struct_1(min(var_0.x, 0u), abs(56865u)))), Struct_1(~(14373u | _wgslsmith_add_u32(u_input.a.x, var_0.x)), _wgslsmith_clamp_u32(6567u, 0u, _wgslsmith_add_u32(22536u, 75689u)) | 0u));
    var_1 = arg_1;
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(~u_input.b, -(~(-1i)))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.d), u_input.d));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_div_f32(953f, arg_2))), _wgslsmith_f_op_f32(-arg_2), -1000f) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), -294f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-701f, -144f) * 306f), -1119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -1090f, arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 * -1245f))), 360f)))));
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = select(u_input.b, u_input.b, true);
    let var_1 = -951f;
    var var_2 = abs(~(~u_input.e));
    var var_3 = -vec4<i32>(_wgslsmith_clamp_i32(abs(-2147483647i), 1i, -1i), i32(-1i) * -(u_input.b >> (arg_0.a % 32u)), firstTrailingBit(var_0), ~firstLeadingBit(select(var_0, u_input.d.x, true)));
    let var_4 = _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1380f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + 211f)) - -281f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(func_5(func_1(true, Struct_1(u_input.e.x, 3085u), _wgslsmith_f_op_f32(max(899f, 1283f))))) == 250f);
    let var_1 = countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.b | 73111i, u_input.d.x), (_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(-19699i, 2397i)) & u_input.d) & u_input.d));
    var var_2 = !(!select(vec3<bool>(var_0, true && var_0, true), vec3<bool>(!var_0, true, var_0), select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, true, var_0), vec3<bool>(false, var_0, var_0)), vec3<bool>(true, true, true), func_2(Struct_1(u_input.c.x, u_input.a.x)))));
    let var_3 = Struct_1(u_input.a.x, _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_sub_u32(firstLeadingBit(u_input.c.x), u_input.e.x) ^ ~u_input.c.x, 28525u));
    let var_4 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(var_1.x, -2147483647i) >> (1u % 32u), u_input.d.x));
}

