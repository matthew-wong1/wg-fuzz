struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = vec3<bool>(true, false, any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, false, true))));
    var_0 = vec3<bool>(true, any(var_0.yx), !var_0.x);
    let var_1 = false;
    var_0 = !(!vec3<bool>(true || (var_0.x & true), var_0.x, !(false == var_0.x)));
    var_0 = !select(vec3<bool>(!any(var_0.xz), any(select(vec4<bool>(false, var_0.x, true, var_1), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(true, false, true, false))), false), !select(select(vec3<bool>(true, var_1, var_0.x), vec3<bool>(var_0.x, var_1, var_1), true), !vec3<bool>(var_0.x, false, true), !vec3<bool>(false, false, var_0.x)), select(select(select(vec3<bool>(false, var_1, var_0.x), vec3<bool>(true, false, true), vec3<bool>(false, var_0.x, var_1)), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_1), true), select(vec3<bool>(false, false, false), vec3<bool>(var_1, var_0.x, var_1), vec3<bool>(false, var_0.x, false))), select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_1, false), vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, true), vec3<bool>(var_0.x, false, true)), 7378i < u_input.e.x), !var_1));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    var var_0 = ~func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1611f, -2230f, _wgslsmith_div_f32(133f, -464f), _wgslsmith_div_f32(-648f, 1354f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, 1888f, -809f, -222f) * vec4<f32>(835f, 128f, 1671f, -380f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(211f, 888f, 543f, -988f)))));
    var_0 = u_input.d;
    return Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(false, true)), false)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, false, false), true)), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = -792f;
    let var_1 = Struct_2(arg_0.x, any(func_2().a), Struct_1(vec4<bool>(any(arg_0), (u_input.e.x >= -1i) & true, arg_1.a.x, u_input.e.x < -52239i)), 857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_2 = any(select(func_2().a, vec4<bool>(!any(vec4<bool>(arg_1.a.x, false, arg_0.x, false)), !any(arg_1.a.www), true, true), func_2().a));
    let var_3 = var_1;
    var_0 = 217f;
    return !arg_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = vec4<bool>(false, func_4(vec3<bool>(any(vec2<bool>(false, false)), true, u_input.e.x >= u_input.e.x), func_2(), ~firstLeadingBit(u_input.c.x)) & (any(vec4<bool>(true, false, false, false)) && true), !(_wgslsmith_mult_u32(18505u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 16879u), arg_0)) == ~select(0u, 40696u, true)), any(!vec2<bool>(true, func_4(vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, true, true, false)), 23110u))));
    let var_2 = all(var_1.zz);
    let var_3 = Struct_2(!(func_4(select(var_1.zxz, var_1.www, vec3<bool>(var_1.x, true, true)), Struct_1(vec4<bool>(true, var_1.x, var_1.x, true)), 0u) | all(select(var_1.ww, var_1.ww, var_2))), u_input.c.x != (1u << (arg_0.x % 32u)), func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-500f - _wgslsmith_f_op_f32(abs(-1249f))) * 882f))), 1310f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-480f - -271f), 1000f))))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, -622f, -159f, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(891f, -2519f, -1540f, -729f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(341f, 365f, -1387f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 200f, 1636f, 930f))))), vec4<u32>(u_input.a >> (u_input.a % 32u), u_input.d, u_input.d, ~4294967295u), vec3<u32>(u_input.c.x, ~(~(u_input.a | 1u)), func_1(vec4<u32>(~20539u, ~u_input.b, ~u_input.a, 60157u), _wgslsmith_f_op_f32(f32(-1f) * -1685f), vec3<f32>(1000f, _wgslsmith_f_op_f32(-1000f - 280f), _wgslsmith_f_op_f32(floor(1184f))))));
}

