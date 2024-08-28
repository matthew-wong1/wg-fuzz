struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), arg_0.a.x))));
    var var_1 = Struct_1(arg_0.a);
    let var_2 = Struct_1(var_1.a);
    let var_3 = -(u_input.a.yz | u_input.a.yy) & vec2<i32>(~_wgslsmith_add_i32(u_input.a.x, -21220i), u_input.a.x);
    let var_4 = true;
    return -(~(~80384i ^ (u_input.a.x | 1i)) & -_wgslsmith_dot_vec2_i32(-var_3, var_3));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = vec2<bool>(true, false & !any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_mod_i32(~(~(-_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 8300i)))), select(~(~u_input.a.x), abs(-func_3(Struct_1(vec3<f32>(-463f, 383f, -1133f)))), false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, 1937f, 438f)))));
    var var_3 = var_2;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f) - _wgslsmith_f_op_f32(-var_2.a.x)) * 292f), 1339f, 2039f);
    return select(var_0, var_0, select(!(!all(vec2<bool>(true, var_0.x))), false, !(select(u_input.a.x, u_input.a.x, false) >= _wgslsmith_add_i32(var_1, var_1))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = select(select(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 29817u, u_input.c.x, 7354u)) >= 0u, -161f >= _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x)), select(func_2(1u), vec2<bool>(true, true), !all(vec4<bool>(false, false, true, false))), vec2<bool>(all(vec3<bool>(true, true, true)), u_input.c.x <= u_input.c.x)), select(vec2<bool>(true, func_2(~u_input.c.x).x), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !(true || (u_input.b.x >= u_input.c.x))), select(vec2<bool>(false, _wgslsmith_add_u32(u_input.d, u_input.d) >= (1210u << (u_input.b.x % 32u))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), !select(func_2(4294967295u), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1009f, arg_2.a.x, arg_2.a.x), _wgslsmith_f_op_vec3_f32(-arg_2.a)) - vec3<f32>(468f, _wgslsmith_f_op_f32(arg_2.a.x + 1496f), arg_2.a.x))));
    var var_2 = var_0.x;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x)));
    return true && ((~u_input.c.x << (~4294967295u % 32u)) <= abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-822f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 206f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1794f * 391f) * _wgslsmith_div_f32(186f, -331f)))), _wgslsmith_f_op_f32(ceil(-588f))));
    var var_1 = select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(all(vec2<bool>(true, true)), (var_0 >= var_0) & true)), !vec2<bool>(!func_1(u_input.a.x, vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), Struct_1(vec3<f32>(var_0, 155f, 538f))), true), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(var_0, -847f), -1253f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0, 450f, false)), -124f))), var_2.a)));
    var var_4 = u_input.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(select(var_3.a.zx, _wgslsmith_f_op_vec2_f32(-var_3.a.zx), true)), 24540i);
}

