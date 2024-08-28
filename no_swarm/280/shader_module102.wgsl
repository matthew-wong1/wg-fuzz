struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(~vec2<u32>(74571u >> (firstTrailingBit(u_input.a) % 32u), ~min(arg_0.a.x, arg_0.a.x)));
    var_0 = Struct_1(~vec2<u32>(var_0.a.x | (var_0.a.x ^ u_input.a), arg_1.a.x));
    let var_1 = select(vec4<bool>(!select(true, any(vec3<bool>(true, false, false)), true), true, any(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !(_wgslsmith_f_op_f32(sign(2888f)) > _wgslsmith_f_op_f32(trunc(-1000f)))), !vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)) >= _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_1.a.x), any(vec3<bool>(false, false, true)), true), any(vec3<bool>(true, true, false)));
    let var_2 = vec4<u32>(var_0.a.x, select(max(_wgslsmith_mod_u32(25902u, 12808u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, 0u, arg_0.a.x), vec4<u32>(1u, 51237u, arg_0.a.x, 1u)), 1u), abs(var_0.a.x), !any(select(vec2<bool>(var_1.x, true), var_1.xz, vec2<bool>(var_1.x, false)))), ~1u, 48922u);
    let var_3 = arg_0;
    return 0i;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(~vec2<u32>(arg_0, ~arg_0 ^ u_input.a));
    var_0 = Struct_1(select(reverseBits(abs(vec2<u32>(49924u, u_input.a))), var_0.a, !(false || any(arg_1))));
    let var_1 = -firstLeadingBit(func_3(Struct_1(var_0.a), Struct_1(vec2<u32>(arg_0, 4294967295u))));
    var var_2 = vec2<i32>(-2147483647i, ~min(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, 0i), vec2<i32>(var_1, var_1)), vec2<i32>(-2147483647i, var_1)), _wgslsmith_div_i32(var_1, -2147483647i) << (25165u % 32u)));
    var var_3 = ~1489u;
    return select(select(!vec4<bool>(true, true, false, all(arg_1)), vec4<bool>(all(select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, false, arg_1.x, false), true)), !(!arg_1.x), any(!arg_1), true), false), vec4<bool>(all(vec4<bool>(true, false, arg_1.x, arg_1.x)) == (var_2.x != abs(-2147483647i)), false, any(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(true, arg_1.x, true), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), true))), !arg_1.x), all(select(vec3<bool>(var_1 < var_1, arg_1.x, -4555i <= var_2.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), any(!arg_1))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(max(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(20347u, 5033u, 0u), vec3<u32>(25715u, u_input.a, 4294967295u)), u_input.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(u_input.a, 0u), ~vec2<u32>(1u, 4294967295u))));
    var var_1 = ~1i;
    var var_2 = select(!select(!func_2(28612u, vec2<bool>(false, false)), vec4<bool>(false, 0u > var_0.a.x, 0u >= u_input.a, true), -arg_0.x < -1885i), vec4<bool>((-1i >= ~arg_0.x) != !(var_0.a.x < var_0.a.x), !all(vec2<bool>(false, false)), !func_2(u_input.a, vec2<bool>(true, false)).x, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), !vec4<bool>(true, any(func_2(1u, vec2<bool>(false, true)).wwx), all(vec4<bool>(true, true, true, true)), true));
    var var_3 = !vec4<bool>(!var_2.x, _wgslsmith_div_u32(~57537u, 76257u) >= u_input.a, any(vec4<bool>(select(false, var_2.x, var_2.x), false, false, true)), !var_2.x);
    var var_4 = vec4<bool>(false, -825f >= _wgslsmith_f_op_f32(-676f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -893f)))), var_2.x, _wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(408f + -1494f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-869f)), _wgslsmith_f_op_f32(f32(-1f) * -431f)));
    return Struct_1(vec2<u32>(15396u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, var_0.a.x, var_0.a.x)), vec3<u32>(u_input.a, 0u, u_input.a)) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~vec2<i32>(~2147483647i, -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, 604f, 988f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1372f, -1227f, -1413f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-766f, 529f, -431f), vec3<f32>(-357f, 1972f, 374f))) - vec3<f32>(1f, -491f, _wgslsmith_f_op_f32(-528f + 248f))))));
    var var_2 = ~_wgslsmith_mult_u32(~(u_input.a & u_input.a) & var_0.a.x, var_0.a.x << (~38716u % 32u));
    var var_3 = var_0;
    let var_4 = 1u;
    var var_5 = func_1(_wgslsmith_div_vec2_i32(-select(select(vec2<i32>(13985i, 6814i), vec2<i32>(21009i, 2147483647i), vec2<bool>(false, true)), -vec2<i32>(49309i, 0i), vec2<bool>(true, true)), max(vec2<i32>(1i, 1i), vec2<i32>(i32(-1i) * -45054i, _wgslsmith_div_i32(-53147i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(min(-888f, _wgslsmith_f_op_f32(-616f + 217f))))), ~firstTrailingBit(vec2<i32>(1i, i32(-1i) * -1i)));
}

