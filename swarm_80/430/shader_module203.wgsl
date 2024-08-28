struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(arg_3.x * arg_3.x)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(u_input.b, 47048i);
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = true;
    let var_3 = vec2<u32>(var_0.a, ~0u) >> (vec2<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(31892u, var_1.a, 53471u), vec3<u32>(var_1.a, 0u, var_0.a)), max(vec3<u32>(var_0.a, 0u, var_0.a), vec3<u32>(var_1.a, var_1.a, var_0.a)))) % vec2<u32>(32u));
    return max(reverseBits(_wgslsmith_div_u32(var_1.a, ~27677u >> (firstTrailingBit(63485u) % 32u))), _wgslsmith_sub_u32(4294967295u, u_input.b));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_1(~_wgslsmith_mod_u32(arg_2, u_input.b), u_input.c);
    var var_1 = Struct_1(var_0.a, _wgslsmith_mod_i32(-36503i & select(791i, -arg_1, arg_2 <= 4714u), var_0.b >> (func_3(787f, u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(551f, 1000f, -475f) + vec3<f32>(-238f, 661f, -1172f)), 34660i) % 32u)));
    var var_2 = ~(var_1.a >> (41801u % 32u));
    var_1 = var_0;
    let var_3 = var_0;
    return vec4<bool>(true, false, any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~48906u, 1i);
    let var_1 = vec3<f32>(-926f, -1086f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1442f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, false), var_0.b, vec3<i32>(var_0.b, -497i, u_input.a.x), vec4<f32>(804f, -1595f, -1533f, 1831f)))))))));
    var var_2 = !(!func_2(select(_wgslsmith_sub_i32(23626i, 2147483647i), 1i, true), -2147483647i, 1u));
    var var_3 = ~select(0i, var_0.b, var_2.x || false);
    let var_4 = -1000f;
    var_2 = vec4<bool>(all(func_2(~abs(u_input.a.x), u_input.d.x, ~u_input.b)), true, !(!any(vec4<bool>(false, var_2.x, var_2.x, false))), !(!all(!vec4<bool>(true, false, var_2.x, false))));
    let var_5 = Struct_1(var_0.a, firstTrailingBit(var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_5.b, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_5.b, u_input.d.x, var_0.b), vec4<i32>(u_input.a.x, var_5.b, -19189i, -19401i)) ^ ~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b, -1i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, u_input.a.x, -35408i, -1i), vec4<i32>(var_5.b, -1i, u_input.d.x, -21886i))) & (i32(-1i) * -8457i)), -(~(~var_5.b)));
}

