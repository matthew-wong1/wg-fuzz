struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = ~vec3<u32>(u_input.d, abs(u_input.d), 10330u);
    var_0 = _wgslsmith_sub_vec3_u32(min(~(abs(vec3<u32>(u_input.d, u_input.d, var_0.x)) << (~vec3<u32>(28475u, var_0.x, var_0.x) % vec3<u32>(32u))), vec3<u32>(57212u, 1u, 12709u)), abs(~((vec3<u32>(4294967295u, 2417u, u_input.d) | vec3<u32>(0u, var_0.x, var_0.x)) | ~vec3<u32>(u_input.d, 1u, u_input.d))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    let var_2 = ~vec4<u32>(u_input.d, u_input.d, ~u_input.d, u_input.d);
    var var_3 = true;
    return _wgslsmith_f_op_f32(ceil(arg_1.a));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(1f);
    let var_1 = vec2<bool>(true, true);
    var_0 = Struct_1(var_0.a);
    let var_2 = true;
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(-1728f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))))), false)));
    return Struct_1(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, Struct_1(var_0.a)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = func_2(u_input.d << (1u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_3);
    var_0 = arg_0;
    var var_2 = _wgslsmith_sub_vec3_u32(firstTrailingBit(~abs(vec3<u32>(0u, 0u, 73015u))) ^ vec3<u32>(u_input.d, min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2767u, 71811u, u_input.d), vec4<u32>(0u, 15739u, u_input.d, u_input.d))), u_input.d), ~vec3<u32>(~firstLeadingBit(16372u), 33918u, min(76707u >> (1u % 32u), 14913u)));
    var_2 = ~(~vec3<u32>(1u, 61757u, _wgslsmith_mult_u32(u_input.d, u_input.d)) | ((vec3<u32>(88429u, u_input.d, u_input.d) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, var_2.x, u_input.d), vec3<u32>(0u, u_input.d, var_2.x)) % vec3<u32>(32u))) | ~vec3<u32>(6411u, var_2.x, 1u)));
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(1000f), Struct_1(1456f), select(~u_input.c, vec4<i32>(-2338i, u_input.a, u_input.a, u_input.a), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), vec3<f32>(-125f, _wgslsmith_f_op_f32(f32(-1f) * -889f), -931f))), -1476f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(676f))))));
    var_0 = _wgslsmith_f_op_f32(573f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1661f)), -798f)), -634f)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2612f * -2393f)), 113f) + -1207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-460f))));
    let var_1 = countOneBits(vec4<u32>(reverseBits(_wgslsmith_mult_u32(37092u, 53721u & u_input.d)), u_input.d, 0u, u_input.d));
    let var_2 = any(vec3<bool>(true, true, true));
    let var_3 = func_2(~abs(22713u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) - 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_3, func_2(var_1.x), u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, var_3.a, -637f)))) + _wgslsmith_f_op_f32(trunc(var_3.a)))) - 291f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

