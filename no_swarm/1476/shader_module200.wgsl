struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 605f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, -676f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1022f, var_0.x), -1023f, arg_0, -1000f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-203f, 1070f, 521f, -246f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, arg_0, -473f, -869f))))))), 29529u, select(vec2<bool>(true, true), select(vec2<bool>(true, all(vec4<bool>(false, true, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(true, any(vec3<bool>(false, true, false)) || all(vec4<bool>(false, true, true, false)))));
    let var_2 = !var_1.c.x | !(133593u < var_1.b);
    var var_3 = var_1;
    var var_4 = var_1.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f + var_1.a.x) + 697f);
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1005f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-521f, 1848f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1721f, 811f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-397f)))))), _wgslsmith_clamp_u32(1u, countOneBits(_wgslsmith_add_u32(0u, 15923u) ^ _wgslsmith_clamp_u32(54271u, 4294967295u, 19826u)), 71016u), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) & all(vec3<bool>(true, false, true)), false));
    let var_2 = 15859u;
    var_1 = Struct_1(vec4<f32>(-299f, _wgslsmith_f_op_f32(func_3(var_1.a.x)), -702f, _wgslsmith_f_op_f32(var_1.a.x - 688f)), ~var_2, var_1.c);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f - var_1.a.x)))), 1660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1792f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f - _wgslsmith_f_op_f32(func_3(var_1.a.x))))), var_1.b, !var_1.c);
    return Struct_1(vec4<f32>(-1000f, -886f, _wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1938f * 873f)))), _wgslsmith_f_op_f32(func_3(1429f))), 1u & var_2, vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_0.c.x;
    var var_1 = arg_1;
    var_1 = func_2();
    var_1 = func_2();
    let var_2 = arg_1.a.x;
    return vec3<bool>(true, select(arg_0.c.x, var_1.c.x, !(!all(vec3<bool>(var_0, false, false)))), var_0);
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = ~(~(~_wgslsmith_clamp_u32(1u, 1u, firstTrailingBit(arg_0.b))));
    var var_1 = !(!func_4(Struct_1(vec4<f32>(207f, 242f, arg_0.a.x, -1181f), arg_0.b & 0u, vec2<bool>(true, false)), func_2()));
    var var_2 = any(select(vec4<bool>(true, func_2().a.x <= _wgslsmith_f_op_f32(f32(-1f) * -840f), !arg_0.c.x, false), select(!vec4<bool>(arg_0.c.x, true, var_1.x, false), !vec4<bool>(false, arg_0.c.x, false, var_1.x), select(!vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x), any(vec3<bool>(var_1.x, false, false)))), select(!(!vec4<bool>(true, false, arg_0.c.x, true)), !vec4<bool>(true, arg_0.c.x, var_1.x, arg_0.c.x), _wgslsmith_f_op_f32(-1102f - arg_0.a.x) == 1000f)));
    var var_3 = 2147483647i;
    var_2 = true && all(vec4<bool>(arg_0.c.x, true && select(true, var_1.x, true), !select(false, false, true), !(!var_1.x)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(754f, 402f, 100f, -590f) + vec4<f32>(-669f, 752f, -174f, 997f)), 1u << (1u % 32u), select(vec2<bool>(true, true), vec2<bool>(false, true), true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1066f, -1123f, -320f, -895f)) - vec4<f32>(-407f, -1596f, 1000f, -1194f)))), 1u << (select(abs(firstTrailingBit(15128u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 42961u), max(29574u, 0u), 1u), true) % 32u), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, false, false, false)) | true), vec2<bool>(all(vec4<bool>(false, false, true, true)) || true, any(vec4<bool>(false, true, true, false)) != true)));
    let var_1 = vec2<i32>(1i, 22077i);
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    var var_3 = vec4<i32>(-32180i, var_1.x, var_1.x, 13905i);
    var var_4 = var_0.b | 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, -563f, _wgslsmith_f_op_f32(-var_0.a.x), 49629u);
}

