struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = select(select(vec2<bool>(true && any(vec2<bool>(false, false)), select(select(false, true, true), all(vec3<bool>(true, true, false)), select(false, false, false))), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), all(vec4<bool>(false, false, true, false))));
    var_0 = select(select(!(!(!vec2<bool>(var_0.x, false))), !(!select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x))), vec2<bool>(true, true || !var_0.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), true), select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), any(vec4<bool>(false, var_0.x, var_0.x, false))), _wgslsmith_f_op_f32(ceil(-492f)) > _wgslsmith_f_op_f32(1111f + -1190f))), true);
    let var_1 = Struct_3(firstTrailingBit(min(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 9402i, -1i, firstTrailingBit(-2147483647i)))), Struct_1(1u));
    let var_2 = select(vec2<bool>(var_0.x, true), vec2<bool>(!(!var_0.x), true), !any(!vec4<bool>(true, var_0.x, var_0.x, false)) & !any(vec3<bool>(var_0.x, var_0.x, var_0.x)));
    let var_3 = Struct_1(abs((u_input.a & ~var_1.b.a) ^ firstLeadingBit(_wgslsmith_add_u32(107869u, 0u))));
    return all(select(!(!(!vec3<bool>(var_2.x, true, true))), vec3<bool>(true, !(0u != u_input.a), any(var_2)), true));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(3798u));
    var var_1 = func_3() & !func_3();
    var_1 = true;
    var_1 = true;
    let var_2 = true;
    return Struct_2(Struct_1(1u));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(36859u, u_input.a, arg_0), _wgslsmith_mod_vec3_u32(vec3<u32>(44351u, 1u, u_input.a), vec3<u32>(1u, 0u, arg_0)))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-788f, -1389f, -1210f) - vec3<f32>(-1000f, 570f, -128f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -137f, -252f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-743f, 474f, -152f))))));
    let var_2 = 4294967295u <= ~(~_wgslsmith_div_u32(4294967295u, var_0.a.a));
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(197f, 468f, -243f), vec3<f32>(-189f, -1320f, 342f)) * vec3<f32>(-182f, -452f, -2259f))))));
    let var_4 = var_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -549f), -1210f, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -661f;
    var var_1 = (vec2<u32>(u_input.a, 1u) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(82u, 11098u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 23729u, 4114u)), 29007u)) & (~vec2<u32>(_wgslsmith_sub_u32(u_input.a, 256u), ~u_input.a) ^ (_wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 0u)), vec2<u32>(84553u, 20909u)) << (vec2<u32>(67433u, 0u) % vec2<u32>(32u))));
    var var_2 = false;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(368f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-333f, 315f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(u_input.a << (31239u % 32u))))), _wgslsmith_f_op_f32(-988f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1853f)), _wgslsmith_f_op_f32(-1312f * 2220f))))));
    var_1 = ~vec2<u32>(12584u, 18077u);
    var var_3 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-773f, -462f, -575f) + vec3<f32>(-304f, 1756f, -921f)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f + -1217f), -1000f, -849f)))));
    var_2 = true;
    let var_4 = Struct_2(var_3.a);
    var var_5 = 585f >= _wgslsmith_f_op_f32(805f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-902f)), -2713f, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.a.a, _wgslsmith_mult_u32(min(var_3.a.a, 29636u), ~var_1.x)) & (abs(~vec2<u32>(1u, var_4.a.a)) & firstTrailingBit(~vec2<u32>(31106u, 6088u))), vec2<i32>(-24743i, -11532i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(353f - -291f), 702f, -1000f))));
}

