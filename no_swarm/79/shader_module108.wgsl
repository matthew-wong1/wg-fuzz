struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = all(vec4<bool>(true, u_input.d.x <= u_input.d.x, all(vec4<bool>(false, arg_0, arg_0 | true, all(vec3<bool>(arg_0, arg_0, arg_0)))), any(!(!vec4<bool>(arg_0, true, arg_0, arg_0)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) + _wgslsmith_f_op_f32(-1438f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f))));
    var var_2 = Struct_1(4294967295u >> (_wgslsmith_sub_u32(abs(1u), ~(23230u ^ u_input.c)) % 32u), 0u, u_input.a.x, _wgslsmith_clamp_i32(u_input.d.x, firstTrailingBit(-8593i), u_input.d.x ^ abs(1i)), 42235u);
    let var_3 = var_1;
    let var_4 = -var_2.d;
    return firstLeadingBit(0u);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = vec4<u32>(u_input.a.x, ~func_3(false) << (~_wgslsmith_add_u32(1u, u_input.a.x) % 32u), select(u_input.a.x, firstLeadingBit(u_input.b), true), _wgslsmith_dot_vec4_u32(u_input.a, (vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u) | u_input.a) & vec4<u32>(1u, u_input.a.x, u_input.c, u_input.c))) << ((~(~u_input.a) >> (_wgslsmith_sub_vec4_u32(reverseBits(~u_input.a), vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a.x, 44522u), 6007u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = -32334i;
    return _wgslsmith_clamp_i32(i32(-1i) * -1i, 1i, firstTrailingBit(abs(42235i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = func_2(1667f);
    var var_1 = !((select(false, false, true) && (38970u == _wgslsmith_add_u32(u_input.b, 1u))) | true);
    var_1 = any(vec4<bool>(all(vec3<bool>(1u < u_input.b, all(vec2<bool>(true, true)), -1462f != arg_0.x)), true, !(~u_input.c != _wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.yw)), all(vec3<bool>(true, true, true))));
    var_1 = !all(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(false, true)), arg_1 == arg_0.x)));
    var_1 = !(!any(vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, true)))));
    return -1868f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-201f, 220f, -657f), -685f)) * -198f) * _wgslsmith_f_op_f32(min(831f, -745f))))));
    let var_1 = !(!((firstTrailingBit(u_input.b) <= u_input.a.x) | true));
    var var_2 = Struct_1(countOneBits(max(u_input.a.x, u_input.c) | ~(u_input.c | 0u)), ~_wgslsmith_clamp_u32(firstLeadingBit(42864u), 1u, _wgslsmith_add_u32(u_input.c, 8650u)), countOneBits(max(abs(22925u), 55759u)), ~(-2147483647i), 1u);
    var_2 = Struct_1(~(~u_input.a.x), u_input.a.x, (~_wgslsmith_sub_u32(79428u, var_2.c) ^ 5776u) & _wgslsmith_mult_u32(func_3(var_1), u_input.c), select(_wgslsmith_div_i32(1i, reverseBits(-u_input.d.x)), min(_wgslsmith_dot_vec2_i32(~u_input.d.zx, u_input.d.xz), -4860i), var_1), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 0u, 34304u), firstLeadingBit(u_input.a.yyw), u_input.a.ywy << (vec3<u32>(69888u, var_2.e, u_input.c) % vec3<u32>(32u)))), vec3<u32>(abs(4294967295u & u_input.a.x), firstLeadingBit(~var_2.b), countOneBits(~34712u))));
    var_2 = Struct_1(var_2.b, u_input.c, u_input.c, u_input.d.x, var_2.a);
    var var_3 = -reverseBits(vec3<i32>(var_2.d, abs(var_2.d), ~u_input.d.x)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(max(u_input.b, u_input.b), u_input.c, ~var_2.b), ~vec3<u32>(0u, 1u, 20596u) << (vec3<u32>(3998u, u_input.b, 14771u) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), ~reverseBits(~(~(-1i))), -17372i, _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(func_2(1514f)), u_input.d.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_3.x), var_3.zz)), var_2.d));
}

