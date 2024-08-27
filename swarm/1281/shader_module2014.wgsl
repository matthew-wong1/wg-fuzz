struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(true);
    let var_1 = u_input.a.x;
    var var_2 = 1519f;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-627f, -109f, false))) - _wgslsmith_f_op_f32(-1118f - -1929f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-777f - 513f), _wgslsmith_f_op_f32(f32(-1f) * -657f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(383f))), _wgslsmith_f_op_f32(-1353f * _wgslsmith_f_op_f32(-var_3)))));
    return Struct_1((_wgslsmith_mod_u32(~17806u, u_input.b.x | u_input.b.x) & u_input.b.x) < ~4294967295u);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(false);
    var var_1 = -869f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -114f) - 439f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1394f))))))));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(sign(-143f));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = ~(~arg_2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(136f, arg_0, arg_0) * vec3<f32>(809f, 1000f, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))))));
    let var_2 = func_2();
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0, 1000f) - vec3<f32>(-1247f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 2786f, var_1.x) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-366f, 2013f, 357f)))))));
    var var_3 = vec3<u32>(arg_1, ~_wgslsmith_sub_u32(101609u, _wgslsmith_mult_u32(~arg_2.x, u_input.c >> (51098u % 32u))), _wgslsmith_sub_u32(~max(arg_2.x, _wgslsmith_mult_u32(67067u, 40955u)), arg_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(31506u, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<i32>(-1i, u_input.a.x, -1i & u_input.a.x, -13414i)) & ~vec4<i32>(_wgslsmith_add_i32(abs(2147483647i), -u_input.a.x), -(~52683i), -11824i, ~(-39275i));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-553f * -119f))) * -606f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1619f * _wgslsmith_div_f32(-967f, _wgslsmith_f_op_f32(f32(-1f) * -1710f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1148f) + _wgslsmith_f_op_f32(func_1(-198f, 3192u, vec4<u32>(u_input.c, u_input.b.x, 136934u, u_input.c))))))));
    let var_2 = -603f;
    var var_3 = vec3<bool>(true, true, true);
    var_3 = select(!select(select(vec3<bool>(true, var_3.x, true), vec3<bool>(false, var_3.x, var_3.x), true), vec3<bool>(all(vec3<bool>(var_3.x, var_3.x, true)), true, true != var_3.x), !vec3<bool>(var_3.x, true, true)), select(!select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, false, var_3.x), var_3.x), select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(true, var_3.x, var_3.x), true), true), select(vec3<bool>(false, any(vec3<bool>(false, var_3.x, var_3.x)), false), select(!vec3<bool>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), var_3.x), var_1 < 898f), all(select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(false, var_3.x, var_3.x), var_3.x))), !select(select(vec3<bool>(var_3.x, true, false), vec3<bool>(false, false, var_3.x), true), select(vec3<bool>(false, false, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), false), select(vec3<bool>(var_3.x, false, true), vec3<bool>(false, false, var_3.x), vec3<bool>(var_3.x, true, true)))), true);
    var_3 = select(select(select(!(!vec3<bool>(var_3.x, var_3.x, false)), vec3<bool>(var_3.x, -2114f <= var_2, any(vec3<bool>(var_3.x, true, false))), select(!vec3<bool>(var_3.x, false, false), select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, false), var_3.x), true)), select(!select(vec3<bool>(var_3.x, false, false), vec3<bool>(var_3.x, false, false), var_3.x), select(!vec3<bool>(false, false, var_3.x), !vec3<bool>(true, var_3.x, var_3.x), true), vec3<bool>(!var_3.x, select(var_3.x, var_3.x, true), any(vec3<bool>(false, var_3.x, false)))), true), !select(!vec3<bool>(var_3.x, false, false), select(vec3<bool>(false, false, true), !vec3<bool>(false, false, var_3.x), vec3<bool>(true, var_3.x, false)), var_3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~0u, func_2())), var_1) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1, var_2, true))))));
    var_3 = !select(vec3<bool>(var_3.x, var_3.x, all(!vec3<bool>(false, false, var_3.x))), !select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, var_3.x, false), var_3.x), select(vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, true, true), vec3<bool>(var_3.x, false, var_3.x)), !var_3.x), select(select(vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(var_3.x, false, var_3.x), all(vec4<bool>(var_3.x, false, false, false))), !select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, false, var_3.x), var_3.x), select(select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, var_3.x, true), var_3.x), !vec3<bool>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(var_3.x, true, true), vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, ~(max(u_input.b.x, u_input.c) >> (u_input.b.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1082f + var_2) - _wgslsmith_f_op_f32(var_1 * var_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(136f, 503f, 2018f, -468f))))) - vec4<f32>(_wgslsmith_f_op_f32(var_2 + 135f), -1000f, _wgslsmith_div_f32(1981f, var_2), _wgslsmith_f_op_f32(sign(var_2))))), _wgslsmith_f_op_f32(var_2 + var_1));
}

