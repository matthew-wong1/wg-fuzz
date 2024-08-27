struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1681i)) != -u_input.a), true, (firstTrailingBit(u_input.a) != -u_input.a) || any(vec3<bool>(true, true, true))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), 1u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(arg_0.b, 54850u, ~abs(_wgslsmith_mod_u32(11413u, 18692u)), 1u);
    let var_1 = Struct_1(vec3<bool>(any(arg_0.a.xz) || arg_0.a.x, func_2(_wgslsmith_f_op_f32(379f * -1338f)).a.x, false), _wgslsmith_div_u32(firstTrailingBit(arg_0.b) & arg_0.b, _wgslsmith_add_u32(~_wgslsmith_div_u32(arg_1.b, 1u), 0u)));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    return func_3(arg_1, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f - _wgslsmith_f_op_f32(542f * -636f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1172f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = 0u;
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-474f, _wgslsmith_f_op_f32(393f - 402f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1617f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f * -1542f)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-321f - 1000f)))))));
    let var_3 = ~(~(~(-u_input.a) & -(u_input.a >> (var_2.b % 32u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2617f)), 484f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(307f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-126f, -865f)))));
    return _wgslsmith_add_i32(var_3, min(0i, var_3));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>) -> bool {
    let var_0 = 1i;
    var var_1 = Struct_1(vec3<bool>(368f < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1220f)))), all(select(!vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(arg_1.x, false, false, true), any(arg_1.xw))), false), abs(1u));
    var_1 = func_3(func_1(arg_1.zz, Struct_1(vec3<bool>(true, var_1.a.x, 0u <= var_1.b), ~min(20561u, var_1.b))), Struct_1(select(vec3<bool>(any(vec3<bool>(var_1.a.x, true, arg_1.x)), false, true | var_1.a.x), var_1.a, true), var_1.b));
    var_1 = Struct_1(arg_1.zxy, func_2(-1300f).b);
    var var_2 = arg_1.zwz;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>((_wgslsmith_mod_i32(~u_input.a, u_input.a ^ u_input.a) ^ -2147483647i) > u_input.a, true && func_5(func_4(~1u, func_1(vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, false), 3262u)), true), vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), false)), any(vec4<bool>(true, true, true, true)), true);
    var var_1 = -278f;
    var var_2 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1227f)))));
    var var_3 = !(!vec4<bool>(true, func_5(i32(-1i) * -73715i, var_0), false, var_0.x));
    var var_4 = Struct_1(func_1(var_0.wy, func_3(func_3(Struct_1(vec3<bool>(var_0.x, var_2.a.x, var_0.x), 0u), func_3(Struct_1(vec3<bool>(true, var_0.x, var_0.x), var_2.b), Struct_1(var_2.a, var_2.b))), func_3(Struct_1(vec3<bool>(var_0.x, true, true), var_2.b), func_2(360f)))).a, var_2.b);
    var_3 = !select(select(select(select(var_0, var_0, true), select(var_0, var_0, vec4<bool>(var_2.a.x, var_3.x, true, true)), select(vec4<bool>(true, var_2.a.x, var_3.x, false), var_0, true)), !select(vec4<bool>(false, false, var_3.x, true), var_0, var_4.a.x), var_3.x), vec4<bool>(true, true, var_2.b == (var_4.b | 20517u), var_4.a.x), vec4<bool>(!(u_input.a < u_input.a), false, !var_3.x, _wgslsmith_mod_i32(-1i, 1i) == u_input.a));
    var var_5 = min(firstLeadingBit(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(54467u, 10797u)), ~min(vec2<u32>(0u, var_4.b), vec2<u32>(1u, var_2.b)))), ~(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, var_2.b), vec2<u32>(72953u, var_4.b)) << (~vec2<u32>(var_2.b, 40117u) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(-7800i, u_input.a));
}

