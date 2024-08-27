struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(vec2<bool>(true, any(vec3<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -735f, 2175f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1505f)), _wgslsmith_f_op_f32(ceil(-336f)), arg_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, arg_0.x, 249f))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_2 = arg_1.x;
    var_2 = 2147483647i;
    var_2 = ~select(-arg_1.x, -63919i, var_0.a.x);
    return true;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(select(select(select(!arg_0.a, !arg_0.a, vec2<bool>(true, arg_0.a.x)), vec2<bool>(arg_0.a.x, true), arg_0.a.x), select(!arg_0.a, select(vec2<bool>(arg_0.a.x, false), arg_0.a, func_3(arg_0.b.zx, vec4<i32>(u_input.b, -2147483647i, u_input.e.x, u_input.c))), !(u_input.a >= 1u)), !vec2<bool>(any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(-113f, -371f, arg_0.b.x), vec3<bool>(false, true, arg_0.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-176f, arg_0.b.x, -1025f), arg_0.b, select(false, arg_0.a.x, false))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, -907f, arg_0.b.x)))));
    var var_1 = Struct_1(select(select(!vec2<bool>(arg_0.a.x, false), !select(arg_0.a, var_0.a, false), select(vec2<bool>(true, arg_0.a.x), var_0.a, any(vec3<bool>(false, true, var_0.a.x)))), select(!arg_0.a, select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.x), false), vec2<bool>(true, var_0.a.x), all(vec2<bool>(arg_0.a.x, false))), all(select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, var_0.a.x), vec4<bool>(true, true, var_0.a.x, arg_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)))), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.b)))), var_0.b, !(!(!vec3<bool>(arg_0.a.x, true, false))))));
    var var_2 = arg_0.b.x;
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b.x, 140f, 300f), vec3<f32>(var_0.b.x, var_1.b.x, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(sign(var_0.b)))));
    let var_4 = arg_0;
    return min(u_input.a, 70207u);
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = ~(vec3<u32>(firstTrailingBit(u_input.a), 1u, u_input.a) & ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 50167u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 1152u, u_input.a)) & min(vec3<u32>(1u, 6267u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) | firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 43589u, 9369u)))));
    let var_1 = _wgslsmith_add_u32(~(~(~(~0u))), _wgslsmith_add_u32(reverseBits(~u_input.a), ~var_0.x) >> (58226u % 32u));
    var var_2 = vec2<u32>(var_1, var_0.x);
    var_2 = var_0.yy;
    var_2 = ~(~_wgslsmith_div_vec2_u32(firstTrailingBit(var_0.zz), vec2<u32>(54854u, var_1)) & select(_wgslsmith_mod_vec2_u32(~var_0.zz, var_0.zx << (vec2<u32>(0u, var_2.x) % vec2<u32>(32u))), vec2<u32>(~u_input.a, func_2(Struct_1(vec2<bool>(true, false), vec3<f32>(-662f, 163f, -175f)))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))));
    return StorageBuffer(_wgslsmith_div_vec2_u32(var_0.zy, ~vec2<u32>(4294967295u, 1u)) & vec2<u32>(var_2.x, u_input.a), _wgslsmith_f_op_f32(sign(1000f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2532f, -489f, true)) - -273f) - -1258f), 609f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1833f - _wgslsmith_f_op_f32(max(-307f, -1252f)))))), -258f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~select(~vec3<i32>(u_input.e.x, u_input.c, u_input.c), -vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i), _wgslsmith_f_op_f32(-755f * 630f) < _wgslsmith_f_op_f32(step(-293f, -811f))));
}

