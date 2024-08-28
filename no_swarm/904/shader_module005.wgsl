struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.x)))), -1000f), arg_0.b);
    var_1 = arg_0;
    var_0 = arg_0.b.x;
    var_0 = arg_0.b.x;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.a))) - _wgslsmith_f_op_vec2_f32(-var_1.a)))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(-1086f, -534f), vec2<i32>(-22071i, 40846i)), vec4<f32>(411f, 881f, -578f, -1179f)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -953f), vec2<f32>(-882f, -151f))))))));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(335f * _wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -727f), 125f, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)) | any(vec3<bool>(arg_1, arg_1, true)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_2(0i & (firstTrailingBit(22656i) | -12681i))), firstTrailingBit(~reverseBits(max(vec2<i32>(-1i, -61078i), vec2<i32>(-28377i, 1i)))));
    var var_2 = 1000f;
    let var_3 = !vec4<bool>(!(arg_1 | select(false, arg_1, false)), arg_1, false, all(select(select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(false, false, arg_1, true)), vec4<bool>(true, true, true, true), arg_0 == 97361u)));
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(262f * var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1063f))), _wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_mod_vec2_i32(var_1.b, ~vec2<i32>(-2147483647i, _wgslsmith_mod_i32(829i, 11982i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 95293u;
    var var_1 = !all(vec4<bool>(false, !any(vec3<bool>(true, true, false)), true, false));
    let var_2 = func_1(_wgslsmith_mod_u32(~_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a), u_input.a), false);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(func_1(u_input.a, true), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, 347f, 206f, -1637f), vec4<f32>(1000f, var_2.a.x, var_2.a.x, 248f))))))), var_2.b);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-32830i, 928f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.x, -697f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, -1551f, -117f)))))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.x))), var_2.a.x, var_3.a.x)));
}

