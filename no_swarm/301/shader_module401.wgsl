struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(47521i, i32(-2147483648), -1i, -24412i, i32(-2147483648), -11589i, 48638i, -1i, -36939i, i32(-2147483648), -29126i, 2147483647i, 1i, i32(-2147483648), -31847i, 11948i, 29465i, 0i, -2868i, 28327i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> bool {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f));
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    return all(vec2<bool>(!(!(!arg_1.x)), arg_1.x));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = vec3<bool>(any(select(vec4<bool>(true, false, true, func_3(true, vec3<bool>(true, true, true))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), all(vec2<bool>(false, true)))), true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1519f, _wgslsmith_f_op_f32(170f + -1300f), _wgslsmith_f_op_f32(ceil(1144f)))))));
    global0 = array<i32, 20>();
    let var_2 = Struct_2(33083i, !(_wgslsmith_f_op_f32(1481f - _wgslsmith_f_op_f32(select(-885f, var_1.x, false))) < var_1.x), !select(var_0.zx, var_0.zz, !select(var_0.yy, var_0.yx, true)), var_1);
    global0 = array<i32, 20>();
    return 476i;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = vec3<u32>(~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)))), _wgslsmith_mod_u32(12386u, u_input.c | _wgslsmith_mod_u32(~u_input.c, 2678u)), reverseBits(u_input.c));
    var var_1 = arg_0;
    var_1 = !arg_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1020f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-244f * -230f)))))));
    var_1 = vec2<bool>(var_1.x, any(select(!vec4<bool>(var_1.x, true, var_1.x, true), select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(arg_0.x, false, var_1.x, true), vec4<bool>(arg_0.x, false, var_1.x, false)), !vec4<bool>(arg_0.x, var_1.x, true, arg_0.x))) & (~func_2(22909u) > ((u_input.d >> (712u % 32u)) | (global0[_wgslsmith_index_u32(var_0.x, 20u)] & global0[_wgslsmith_index_u32(u_input.c, 20u)]))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(~countOneBits(u_input.c), 20u)], -2147483647i), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(160f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, -1000f))))), 29608u, 30279u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_0.c))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1349f, 1662f, var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, var_0.c, var_0.b) + vec3<f32>(-242f, -252f, 623f)))))));
}

