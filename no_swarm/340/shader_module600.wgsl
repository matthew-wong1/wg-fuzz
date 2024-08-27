struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    let var_0 = -(-2147483647i | u_input.c);
    var var_1 = arg_1.zw;
    let var_2 = !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_1 = vec2<f32>(arg_1.x, var_1.x);
    var_1 = arg_1.xx;
    return -347f;
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)) - vec4<f32>(arg_1, arg_1, 925f, 114f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1, 243f, true)), -1067f)), arg_1)));
    let var_1 = Struct_3(36600u, u_input.b, u_input.c);
    let var_2 = Struct_5(vec4<u32>(~0u, u_input.a, 1u, reverseBits(u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(707f)), -1026f)), Struct_3(countOneBits(0u), u_input.c, -(var_1.c << (47004u % 32u)) | 1i), -firstLeadingBit(min(reverseBits(vec4<i32>(-1i, -6231i, var_1.b, var_1.b)), vec4<i32>(1i, var_1.b, var_1.b, 46086i) >> (vec4<u32>(113350u, u_input.a, arg_0, var_1.a) % vec4<u32>(32u)))));
    let var_3 = max(abs(abs(-3786i) | var_1.c), ~var_2.d.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_0, arg_1) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_0, var_0)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1256f, 1983f, _wgslsmith_f_op_f32(-var_0))))));
    return 70702u > _wgslsmith_sub_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_2.c.a, 92903u, 27285u), var_2.a) >> (u_input.a % 32u)), firstLeadingBit(308u));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    return ((27021u != arg_1.a.x) & func_3(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-502f, -1614f) + _wgslsmith_f_op_f32(502f * -248f)))) || !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(func_1(u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1581f, -1120f, 940f, -1691f)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(580f, 624f), _wgslsmith_f_op_f32(ceil(-917f)))), any(vec3<bool>(true, true, true)), any(!vec2<bool>(func_2(true, Struct_2(vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec3<u32>(u_input.a, 29465u, 4294967295u)), Struct_3(u_input.a, 34091i, u_input.c), Struct_3(4294967295u, 15669i, 0i)), true)));
    var_0 = !vec3<bool>(all(vec3<bool>(true, true, true)), any(!vec3<bool>(false, var_0.x, var_0.x)), 0u != (~35920u & u_input.a));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(floor(-1234f));
    var_0 = !(!select(select(vec3<bool>(false, false, false), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), true), select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, false), false), !vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b | -24172i, u_input.c, select(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), countOneBits(~vec4<u32>(u_input.a, 24485u, 17278u, u_input.a)), vec4<bool>(var_0.x, var_0.x, all(vec3<bool>(var_0.x, var_0.x, true)), true)) & ~max(~vec4<u32>(4294967295u, 66030u, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, 43148u, u_input.a)));
}

