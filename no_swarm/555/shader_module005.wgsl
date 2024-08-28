struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(any(select(arg_2.a.wyy, select(vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, arg_1.x), arg_2.a.x), true)) && arg_0, true);
    let var_1 = Struct_1(vec4<bool>(true, !arg_2.a.x, true, true));
    var var_2 = arg_0;
    let var_3 = arg_2;
    var var_4 = var_3;
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> bool {
    let var_0 = vec3<u32>(reverseBits(4294967295u), min(u_input.d.x, func_3(!all(vec3<bool>(false, arg_1, false)), !vec2<bool>(false, arg_1), Struct_1(vec4<bool>(true, true, true, arg_1)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), u_input.d))), 0u);
    var var_1 = true;
    let var_2 = u_input.a.x;
    var_1 = arg_1;
    var_1 = arg_1;
    return true;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = select((countOneBits(arg_0) == _wgslsmith_dot_vec2_u32(vec2<u32>(8119u, 0u), vec2<u32>(u_input.c.x, 7552u))) & !(true && any(vec2<bool>(false, false))), any(vec3<bool>(select(func_2(vec4<bool>(true, true, arg_1.x, false), false, vec2<f32>(-1809f, -1000f)), true, all(vec4<bool>(arg_1.x, false, arg_1.x, false))), all(vec4<bool>(arg_1.x, false, false, false)), func_2(select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, false, false), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1090f, -591f) + vec2<f32>(605f, -1601f))))), all(!select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, false), vec3<bool>(true, true, true)), vec3<bool>(arg_1.x, true, arg_1.x), arg_0 <= 21879u)));
    let var_1 = -512f;
    return Struct_1(vec4<bool>(true, any(select(vec2<bool>(arg_1.x, arg_1.x), arg_1, !arg_1)), !(!var_0), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~23810u, select(vec2<bool>(true, true), vec2<bool>(true || any(vec3<bool>(false, false, false)), false), false));
    var_0 = Struct_1(vec4<bool>(true, var_0.a.x, false, func_2(!vec4<bool>(false, true, var_0.a.x, true), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(935f, -306f) - vec2<f32>(1398f, 1605f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, 1000f))))));
    var_0 = Struct_1(!select(var_0.a, !var_0.a, true | var_0.a.x));
    let var_1 = !(!var_0.a.x && var_0.a.x);
    var_0 = Struct_1(vec4<bool>(var_0.a.x, true, false, true));
    let var_2 = vec3<i32>(~(-u_input.a.x), select(~u_input.a.x, -34882i, true) << (_wgslsmith_sub_u32(u_input.b, 40479u) % 32u), -u_input.a.x >> (~367u % 32u)) << (~(firstLeadingBit(~vec3<u32>(0u, u_input.c.x, u_input.e)) ^ ~(~vec3<u32>(u_input.b, 46612u, u_input.d.x))) % vec3<u32>(32u));
    var var_3 = Struct_1(vec4<bool>((u_input.b << (countOneBits(u_input.b) % 32u)) >= _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(u_input.c.x, 40658u)), var_0.a.x && !func_1(27107u, var_0.a.zy).a.x, !var_0.a.x, true));
    let var_4 = Struct_1(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-286f * 686f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1274f)))), 1f, -888f), vec4<u32>(_wgslsmith_add_u32(~1u, u_input.b), 41561u, _wgslsmith_dot_vec4_u32(~vec4<u32>(6167u, 1u, 52364u, 32143u), vec4<u32>(u_input.c.x, min(15630u, 70530u), select(u_input.e, u_input.e, var_0.a.x), 66605u)), u_input.d.x), u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1543f, -975f, -1245f) + vec3<f32>(216f, -159f, 449f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-635f, -1419f, -1703f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1793f, -1000f, -2055f) * vec3<f32>(1228f, 1621f, -704f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1566f, 113f, 474f)))))));
}

