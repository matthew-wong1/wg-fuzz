struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_1(true);
    var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_0)))))), arg_0);
    var_0 = Struct_1(u_input.a.x > countOneBits(max(31434u, u_input.a.x)));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), 1085f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1335f)), _wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(sign(arg_1)))) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(368f, arg_1))), 912f)));
    var var_1 = func_2(arg_1, Struct_1(any(vec2<bool>(true, true)) | true));
    var var_2 = Struct_1(false);
    let var_3 = func_2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), func_2(arg_1, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-652f - -135f)), Struct_1(var_2.a))));
    return var_3;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = func_1(firstTrailingBit(arg_0), arg_2);
    let var_1 = vec4<bool>(var_0.a, arg_2 != _wgslsmith_f_op_f32(trunc(1f)), !all(vec2<bool>(!var_0.a, true)), !arg_1);
    var var_2 = _wgslsmith_f_op_f32(sign(318f));
    let var_3 = Struct_1(any(!(!vec4<bool>(true, false, false, var_1.x))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 747f)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = all(vec2<bool>(true, -select(2147483647i, 2147483647i, false) <= 34093i));
    let var_1 = func_1(44990u & (u_input.a.x ^ ~(~4294967295u)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2143f))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1675f + 968f)))));
    let var_2 = !(!(!select(!vec2<bool>(var_1.a, false), vec2<bool>(true, true), select(vec2<bool>(false, var_1.a), vec2<bool>(false, true), var_1.a))));
    let var_3 = vec2<f32>(1f, _wgslsmith_f_op_f32(floor(1528f)));
    var_0 = select(true, any(select(select(select(vec3<bool>(var_1.a, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false), true), !vec3<bool>(true, var_2.x, var_1.a), !vec3<bool>(false, false, var_2.x)), vec3<bool>(any(vec4<bool>(var_2.x, true, var_2.x, false)), true, var_1.a), vec3<bool>(func_3(u_input.a.x, false, var_3.x, Struct_1(false)), 41094u == u_input.a.x, true))), var_2.x && any(!var_2));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, firstTrailingBit(_wgslsmith_mult_u32(max(u_input.a.x, u_input.b), 4294967295u ^ select(u_input.a.x, u_input.a.x, false))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -629f, var_3.x, var_4), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, 354f, var_4, var_3.x))))), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_4, -674f, var_1.a)))), var_4))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-318f, -477f, 482f, -2965f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4, 1933f, var_4, -464f)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, 501f, var_4, var_3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_3.x, var_4, -999f) + vec4<f32>(-230f, -138f, var_4, var_3.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, 132f, var_4) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_4, var_4, -1423f))))))), ~vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 12429u) >> ((0u | u_input.a.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 108611u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a.x, u_input.b)))));
}

