struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = vec3<i32>(19766i >> (~global0.x % 32u), max(~u_input.b.x, u_input.b.x) & u_input.b.x, i32(-1i) * -8821i);
    var var_1 = u_input.b;
    return vec3<u32>(21384u, arg_3.x, _wgslsmith_sub_u32(global0.x, ~_wgslsmith_mod_u32(global0.x, 1u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> u32 {
    return 1u >> (global0.x % 32u);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1766f, 101f, 1480f, -1000f) - vec4<f32>(-595f, -135f, -276f, -685f)))))));
    let var_1 = Struct_1(select(select(vec4<bool>(true, global0.x <= 10277u, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), vec4<bool>(all(vec3<bool>(true, false, false)), true, false, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), true), any(vec4<bool>(all(vec3<bool>(true, false, false)), all(vec2<bool>(false, false)), true, any(vec3<bool>(false, true, true))))));
    var var_2 = !select(!vec2<bool>(all(vec3<bool>(var_1.a.x, false, var_1.a.x)), true && var_1.a.x), !var_1.a.wx, vec2<bool>(var_1.a.x, true));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1981f * 918f) + 694f))), _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(-(~(-2147483647i)));
    global1 = u_input.a;
    global1 = i32(-1i) * -u_input.b.x;
    global0 = min(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, global0.x, 32954u), ~vec3<u32>(17674u, global0.x, global0.x)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, global0.x), vec4<u32>(0u, 37040u, 51792u, 4294967295u)), ~4294967295u, 1u), countOneBits(~func_1(Struct_1(vec4<bool>(true, true, false, false)), -130f, Struct_1(vec4<bool>(true, true, true, false)), vec4<u32>(1u, global0.x, 4294967295u, 1u)))) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(~global0.x, global0.x & 0u, func_2(vec3<f32>(-1000f, 2125f, -2104f), vec4<u32>(global0.x, global0.x, 29983u, global0.x))), _wgslsmith_sub_vec3_u32(func_1(Struct_1(vec4<bool>(false, true, false, true)), -661f, Struct_1(vec4<bool>(false, false, true, false)), vec4<u32>(global0.x, 0u, 37115u, global0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(global0.x, global0.x, global0.x))));
    let var_0 = global0.xz;
    global1 = u_input.b.x;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-741f, 215f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-354f, _wgslsmith_f_op_f32(max(1419f, 535f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(888f)) * _wgslsmith_f_op_f32(round(-447f)))), _wgslsmith_f_op_f32(func_3())));
    let var_2 = global0.xz;
    global1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_1.x)))))), firstLeadingBit(_wgslsmith_sub_vec4_i32(u_input.b, ~select(vec4<i32>(57958i, 77308i, u_input.a, u_input.a), vec4<i32>(u_input.a, 64079i, -59009i, u_input.a), vec4<bool>(true, false, false, true)))));
}

