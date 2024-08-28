struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    let var_0 = 0i;
    global0 = all(vec4<bool>(!(!all(vec4<bool>(true, false, false, false))), select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), !any(vec2<bool>(true, false)), !any(vec4<bool>(true, true, true, false))), false, !any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(step(arg_0.b.a, arg_0.a));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a)))));
    var var_2 = Struct_2(arg_0.b.a, arg_0.b);
    return vec4<u32>(firstTrailingBit(~abs(u_input.a)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, arg_1, 1u, u_input.a) >> (vec4<u32>(4294967295u, 25150u, u_input.a, 53530u) % vec4<u32>(32u))) >> (~(vec4<u32>(113573u, 73433u, arg_1, 99895u) >> (vec4<u32>(u_input.a, u_input.a, 8938u, 12846u) % vec4<u32>(32u))) % vec4<u32>(32u)), max(vec4<u32>(~u_input.a, arg_1, 66764u, select(4294967295u, 23314u, true)), vec4<u32>(~0u, ~1u, u_input.a, u_input.a))), ~(~(~34191u) >> ((abs(62873u) >> (u_input.a % 32u)) % 32u)), 1523u & ~(~(arg_1 << (u_input.a % 32u))));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = ~(max(vec4<u32>(u_input.a, arg_0, u_input.a, 4294967295u) ^ vec4<u32>(1u, u_input.a, u_input.a, 1u), func_3(Struct_2(var_0, Struct_1(arg_1)), u_input.a)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0, arg_0, 17799u), vec4<u32>(u_input.a, u_input.a, u_input.a, arg_0)) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(u_input.a, 21720u, arg_0, 58743u)), ~abs(vec4<u32>(arg_0, arg_0, 0u, 4294967295u))) % vec4<u32>(32u));
    global0 = any(select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, any(vec4<bool>(true, true, true, true))), false, true), (all(vec2<bool>(false, true)) | false) == true));
    global0 = _wgslsmith_div_i32(-34193i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 627i), vec2<i32>(2147483647i, 1879i) << (var_1.zz % vec2<u32>(32u))) << (73052u % 32u)) < -(i32(-1i) * -_wgslsmith_mod_i32(2135i, -2147483647i));
    var var_2 = -289f;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -569f), Struct_1(-1000f));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec4<bool> {
    global0 = !(!(_wgslsmith_div_u32(u_input.a, select(u_input.a, 4294967295u, true)) <= _wgslsmith_sub_u32(u_input.a, 0u)));
    let var_0 = _wgslsmith_f_op_f32(round(arg_1.b.a));
    var var_1 = func_2(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(76704u, ~u_input.a, 4294967295u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(9820u, u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a)))), -2081f);
    global0 = _wgslsmith_mod_u32(reverseBits(u_input.a), ~select(max(u_input.a, u_input.a), 0u, true)) >= abs(4294967295u);
    var var_2 = arg_1;
    return select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), arg_0.x < arg_0.x), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)))), !vec4<bool>(1000f <= arg_1.a, any(vec2<bool>(false, false)) == false, true & all(vec2<bool>(false, true)), false), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f)));
    let var_1 = vec4<bool>(any(!func_1(~vec2<i32>(-2147483647i, 2147483647i), Struct_2(var_0.a, Struct_1(var_0.a)))), false, func_1(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(36010i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-14144i, 7359i, 1i, 0i), vec4<i32>(0i, 0i, 2147483647i, -39755i))), firstLeadingBit(2147483647i << (u_input.a % 32u))), func_2(~0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 507f) + _wgslsmith_f_op_f32(-1490f * -171f)))).x, true);
    let var_2 = var_0;
    var var_3 = var_0;
    let var_4 = ~(~(vec4<u32>(firstLeadingBit(4294967295u), max(0u, u_input.a), _wgslsmith_div_u32(u_input.a, 26363u), ~4294967295u) ^ ~vec4<u32>(54366u, 1u, 26080u, u_input.a)));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(max(var_4, ~select(var_4, var_4, var_1.x)), var_4), max(var_4.xx, var_4.zx));
}

