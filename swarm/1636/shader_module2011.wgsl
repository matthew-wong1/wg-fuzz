struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f * _wgslsmith_f_op_f32(1414f + 893f))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(-374f, arg_1.a)));
    var var_1 = select(!vec4<bool>(arg_2.x, arg_3, true, all(!vec4<bool>(true, arg_3, true, true))), vec4<bool>(false | arg_2.x, false, true, true), false);
    let var_2 = Struct_1(arg_1.a);
    var_1 = !vec4<bool>(all(!vec4<bool>(false, arg_2.x, arg_3, arg_3)), all(arg_2), 4294967295u > _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.x, 10461u), 1u), false & var_1.x);
    var_1 = vec4<bool>(arg_2.x, select(arg_3, !(_wgslsmith_f_op_f32(-var_0.a) <= var_2.a), any(!vec4<bool>(arg_2.x, true, arg_2.x, arg_3))), true, (!any(vec4<bool>(false, arg_2.x, var_1.x, var_1.x)) | !any(vec4<bool>(true, true, false, arg_2.x))) | true);
    return vec3<u32>(max(u_input.a, 0u), u_input.a, 0u | (firstLeadingBit(~u_input.a) | ~_wgslsmith_clamp_u32(73723u, 0u, u_input.a)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<bool>(true, arg_1, false);
    let var_1 = arg_0;
    var var_2 = u_input.a;
    let var_3 = ~(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(16778u, 56501u, u_input.a), select(vec3<u32>(u_input.a, 21020u, 88176u), vec3<u32>(u_input.a, u_input.a, u_input.a), arg_1)) >> (vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, 4294967295u) % vec3<u32>(32u))) << ((~func_3(max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(69974u, 0u, 39748u, 29374u)), Struct_1(arg_0.a), vec2<bool>(arg_1, false), arg_1 == false) | vec3<u32>(countOneBits(~1u), u_input.a, 1u)) % vec3<u32>(32u));
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-276f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1465f * -329f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-896f * -216f))) - 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-452f, _wgslsmith_f_op_f32(1661f - 1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1224f));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1781f, -1054f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1672f, var_0.x, var_0.x) - vec3<f32>(var_0.x, -2358f, var_0.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, var_0.x, _wgslsmith_f_op_f32(var_0.x + 1653f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-1017f)), _wgslsmith_f_op_f32(func_2(Struct_1(var_0.x), true, var_0.x, Struct_1(1361f)))), 221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), vec3<bool>(true & (select(false, false, false) & true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1129f))) == var_0.x)));
    var_0 = var_1.yz;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zx * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-413f, var_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(trunc(-233f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.zx, _wgslsmith_div_vec2_f32(var_1.yx, var_1.xy), true)))));
    var_0 = var_1.yx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(998f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1273f, var_1.x), var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -681f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(1129f + var_0.x)), ~(-1i), 237u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 215f, 209f, var_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, 260f, 631f, var_2.a))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), 599f, -1000f, var_2.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-894f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a, 1000f, var_1.x, var_2.a)))))));
}

