struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + 955f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(2082f, 2586f, false)))))));
    return select(arg_3, !select(arg_3, arg_3, true), select(!vec2<bool>(false, arg_1), vec2<bool>(arg_3.x, false), vec2<bool>(true, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = u_input.a;
    let var_2 = u_input.a.x;
    var var_3 = Struct_1(vec3<bool>(true, false, any(func_3(-vec4<i32>(arg_0.x, 0i, 0i, 1i), true, vec4<u32>(u_input.b, 1u, 30536u, 30279u) | vec4<u32>(u_input.b, 95033u, 0u, var_1.x), vec2<bool>(arg_1.a.x, arg_1.a.x)))));
    return vec2<u32>(0u, var_2) | var_1;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = -631f;
    var var_1 = -(vec2<i32>(-83761i, 1i << (u_input.a.x % 32u)) ^ vec2<i32>(1i, 1i));
    var_1 = ~(vec2<i32>(var_1.x | var_1.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_1.x, var_1.x), vec2<i32>(-15584i, var_1.x), vec2<bool>(true, true)), -vec2<i32>(2147483647i, -8052i))) >> (func_2(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(1i, var_1.x)) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), arg_1) % vec2<u32>(32u)));
    let var_2 = min(vec4<i32>(firstTrailingBit(max(var_1.x, 42053i) >> (reverseBits(0u) % 32u)), select(_wgslsmith_sub_i32(var_1.x, var_1.x), -39320i, true), -var_1.x, _wgslsmith_add_i32(var_1.x, firstLeadingBit(var_1.x)) & var_1.x), vec4<i32>(1i, ~abs(min(747i, 0i)), min(-(~(-74193i)), firstLeadingBit(var_1.x)), -var_1.x));
    let var_3 = any(select(!select(select(arg_1.a, vec3<bool>(arg_1.a.x, arg_0, arg_0), arg_1.a.x), arg_1.a, vec3<bool>(true, arg_1.a.x, false)), select(select(vec3<bool>(false, true, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(true, false, true), vec3<bool>(arg_1.a.x, arg_0, false)), vec3<bool>(arg_1.a.x, true, arg_0)), select(!arg_1.a, !arg_1.a, vec3<bool>(arg_1.a.x, false, true)), all(vec2<bool>(true, arg_1.a.x)) || all(vec4<bool>(arg_0, arg_1.a.x, arg_0, false))), select(arg_1.a, !select(arg_1.a, vec3<bool>(arg_0, true, true), vec3<bool>(false, true, true)), true)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, func_1(true, Struct_1(vec3<bool>(false, true, true))), any(vec3<bool>(false, true, true)), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-723f * -697f) >= _wgslsmith_f_op_f32(round(-691f))), select(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true);
    var var_1 = Struct_1(select(vec3<bool>(true, var_0.x, false), select(!var_0.wxw, select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, true), var_0.x), var_0.x), var_0.x));
    let var_2 = -109f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1593f, var_2, var_2, 682f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, var_2, var_2, var_2) * vec4<f32>(var_2, 1000f, -842f, -1336f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(-var_2), -1400f, _wgslsmith_f_op_f32(f32(-1f) * -2019f))), vec4<bool>(any(!vec2<bool>(false, var_1.a.x)), _wgslsmith_f_op_f32(trunc(var_2)) >= -741f, false, all(!vec3<bool>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(128f)))) - var_2), ~_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, 53223u, 1u), vec4<u32>(u_input.a.x, 71996u, u_input.a.x, 36859u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4330u, u_input.b), ~vec4<u32>(4294967295u, 4294967295u, 35704u, 16290u), max(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u), vec4<u32>(58682u, u_input.b, u_input.b, 1519u)))));
}

