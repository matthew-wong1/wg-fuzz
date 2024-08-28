struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = false;
    return select(!(!vec4<bool>(var_0, false && var_0, true, var_0)), !vec4<bool>(var_0, all(vec2<bool>(var_0, var_0)) | true, select(true, any(vec3<bool>(var_0, var_0, var_0)), false || var_0), var_0), !vec4<bool>(any(!vec4<bool>(false, var_0, var_0, var_0)), false, true, var_0));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = select(select(vec4<bool>(any(arg_0), arg_1, !any(arg_0), !(arg_1 & arg_0.x)), !arg_0, false), arg_0, arg_0);
    var_0 = !func_3();
    let var_1 = Struct_1(155f, !var_0.yw, 1u, max(4294967295u, ~1u));
    var var_2 = var_1;
    var_0 = !select(arg_0, arg_0, u_input.a.x > abs(max(u_input.c.x, -2147483647i)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.a, 207f)), _wgslsmith_f_op_f32(-var_1.a)) - var_1.a), var_2.a), vec2<bool>(var_1.b.x, (select(false, false, true) | arg_0.x) | !func_3().x), firstLeadingBit(var_1.c), 26877u);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> bool {
    let var_0 = u_input.d.yxw;
    let var_1 = true;
    var var_2 = func_2(select(vec4<bool>(arg_0 || arg_2.x, arg_2.x, true, select(false, !arg_2.x, true)), select(vec4<bool>(true, any(vec4<bool>(true, arg_2.x, true, arg_0)), true, true), !vec4<bool>(true, arg_0, true, arg_2.x), select(vec4<bool>(arg_2.x, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_2.x, arg_0), !arg_0)), vec4<bool>((arg_2.x && arg_2.x) | true, true, !(!var_1), false)), 0u != reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(48883u, 0u, 0u, 257u), vec4<u32>(1u, 4294967295u, 32201u, 1u), arg_0), vec4<u32>(4294967295u, 11690u, 0u, 4294967295u))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_2.a - -463f), 1631f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 260f))), var_2.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-1080f, -801f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -687f))))), vec2<f32>(func_2(select(vec4<bool>(true, false, arg_2.x, true), !vec4<bool>(false, false, arg_0, false), false), any(!vec4<bool>(false, arg_2.x, var_1, arg_2.x))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))));
    var var_4 = 3964u;
    return !select(var_2.b.x, arg_2.x, all(func_2(func_3(), arg_2.x).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = 25674u;
    var var_1 = !vec2<bool>(func_1(true, u_input.a.x, vec2<bool>(true, true)), true);
    var var_2 = vec2<u32>(1u, 1u);
    let var_3 = u_input.c.x;
    var var_4 = var_1.x != true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1425f))) - -2218f), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * -1316f) + _wgslsmith_f_op_f32(round(3128f))))))), ~var_2.x);
}

