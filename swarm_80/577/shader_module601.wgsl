struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = (all(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), arg_0), !vec2<bool>(arg_0, arg_0))) || (~(-u_input.c.x) >= u_input.c.x)) == any(!(!(!vec3<bool>(false, arg_0, true))));
    var_0 = all(!vec3<bool>(!(true || arg_0), u_input.b > ~u_input.a, arg_0));
    var_0 = !(arg_0 & all(!select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(534f, _wgslsmith_f_op_f32(1000f - 1032f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1895f + -462f))) != -1143f, 15469u, (arg_0 != true) && true);
    var var_2 = Struct_1(true, var_1.b, any(vec2<bool>(!var_1.a, !(arg_0 & var_1.a))));
    return var_1.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(false, u_input.a, arg_0.x);
    let var_1 = Struct_1(true, var_0.b | (var_0.b & reverseBits(abs(var_0.b))), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.x, -620f), _wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(ceil(1182f)), -952f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-329f, arg_1.x, 1206f, 1536f))))) - vec4<f32>(-174f, -1151f, arg_1.x, _wgslsmith_f_op_f32(arg_1.x - -456f)));
    return vec4<bool>(false, all(vec4<bool>(func_3(true), true, !all(vec4<bool>(true, false, var_1.c, false)), any(vec3<bool>(var_1.c, true, var_0.c)) || arg_0.x)), false || !(!arg_0.x | true), !var_0.a);
}

fn func_1() -> bool {
    var var_0 = Struct_1(!any(!func_2(vec3<bool>(false, true, false), vec2<f32>(128f, 805f))), ~(~u_input.b), select(all(vec4<bool>(true, true, true, true)), true, true) && false);
    var var_1 = !(!func_2(vec3<bool>(any(vec2<bool>(true, var_0.a)), true, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-957f, 222f) + vec2<f32>(-1558f, -161f)))).xyx);
    let var_2 = vec3<f32>(-546f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(294f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-858f))))));
    var_1 = !(!func_2(select(func_2(vec3<bool>(true, var_1.x, var_1.x), var_2.xz).zzx, !vec3<bool>(false, true, var_0.a), !vec3<bool>(true, true, var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.xy, vec2<f32>(-392f, var_2.x)) * vec2<f32>(var_2.x, -1000f))).zzy);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy * vec2<f32>(-833f, 1867f)) + var_2.zy));
    return all(!vec4<bool>(var_1.x, true, !func_2(vec3<bool>(var_0.c, true, true), var_2.xx).x, 1u >= var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(96627u, u_input.a), vec2<u32>(u_input.b, u_input.a)), ~1u >> (1u % 32u)) ^ 22917u, !func_1());
    var_0 = Struct_1(any(!select(!vec4<bool>(false, false, false, var_0.c), !vec4<bool>(var_0.a, false, true, false), var_0.a)), 4294967295u, var_0.a);
    var var_1 = Struct_1(select(var_0.a, var_0.a, func_3(var_0.b > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1787u, var_0.b), vec3<u32>(u_input.a, 19227u, 30514u)))), u_input.a, func_3(all(select(func_2(vec3<bool>(var_0.c, false, var_0.a), vec2<f32>(1127f, -557f)).ww, select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.a, var_0.c), var_0.a), !vec2<bool>(false, var_0.a)))));
    var_0 = Struct_1(_wgslsmith_div_u32(~42583u ^ firstLeadingBit(u_input.b), 63963u) < _wgslsmith_dot_vec3_u32(~vec3<u32>(28995u, var_0.b, u_input.b), ~(~vec3<u32>(var_1.b, 4294967295u, var_0.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(~(var_0.b & 4294967295u), 24677u, var_0.b, abs(max(0u, u_input.b))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.b), vec4<u32>(24229u, 1u, 0u, var_0.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(3707u, 27841u, var_0.b), vec3<u32>(var_0.b, 13893u, u_input.b)), var_0.b, ~u_input.a)), select(true, func_1(), func_1()));
    let var_2 = true;
    let var_3 = u_input.c.x;
    var_1 = Struct_1(var_2, ~reverseBits(4294967295u), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.b, ~u_input.a, var_1.b), reverseBits(_wgslsmith_dot_vec2_i32(u_input.c, ~vec2<i32>(24432i, 1i))), vec3<f32>(762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f + -310f))), -365f));
}

