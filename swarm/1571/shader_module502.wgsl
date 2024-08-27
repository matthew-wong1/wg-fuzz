struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, 13239u));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1275f + 417f) + _wgslsmith_f_op_f32(select(-1776f, _wgslsmith_f_op_f32(min(1661f, 666f)), var_0.x <= u_input.a.x))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f * 358f) + _wgslsmith_f_op_f32(ceil(626f)))), _wgslsmith_f_op_f32(-772f - -1000f), _wgslsmith_f_op_f32(select(-794f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-170f)) * _wgslsmith_f_op_f32(f32(-1f) * -675f)), arg_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, 868f, 344f, 935f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, -1266f, 145f, -942f))) - vec4<f32>(253f, _wgslsmith_f_op_f32(f32(-1f) * -923f), 537f, _wgslsmith_f_op_f32(f32(-1f) * -387f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1052f)))));
    let var_3 = Struct_1(-12330i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f * -747f)), var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 789f, var_1.x, var_1.x)))) * var_1))));
    let var_4 = -8372i;
    return var_1.x;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = u_input.c.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, -613f, -525f, 1157f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(func_3(3532u, true)), -1180f, -1480f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, 1000f, 1858f, -841f) - vec4<f32>(-1000f, 755f, -974f, 339f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1198f, 979f, -737f, -1000f), vec4<f32>(198f, -309f, -852f, -292f))))), !select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), true)))));
    let var_2 = select(vec4<bool>(arg_0, any(!vec3<bool>(arg_0, false, arg_0)), false, arg_0), select(vec4<bool>(select(u_input.a.x >= 57091u, false, true), arg_0, true, false), !select(select(vec4<bool>(false, arg_0, true, true), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, true)), vec4<bool>(arg_0, arg_0, false, true), arg_0 || arg_0), !(!arg_0)), vec4<bool>(true, true, true, true));
    var var_3 = !select(var_2, var_2, var_2.x);
    var_3 = vec4<bool>(true, true, !(_wgslsmith_mod_u32(20474u, max(4294967295u, 33042u)) > (abs(u_input.a.x) >> (4294967295u % 32u))), any(var_2.ywx));
    return -1619f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, 422f, _wgslsmith_f_op_f32(func_2(false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), arg_0.b.x))), -1109f));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 256f;
    let var_1 = arg_0;
    return Struct_1(~(~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(var_1.b.x, arg_0.b.x, -148f, -500f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1464f - 497f);
    var var_1 = true;
    var_1 = true;
    var var_2 = -2147483647i;
    let var_3 = func_4(Struct_1(i32(-1i) * -34841i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2419f) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(874f, 694f)), _wgslsmith_f_op_f32(abs(-834f)))), _wgslsmith_f_op_f32(func_1(Struct_1(u_input.c.x, vec4<f32>(819f, var_0, -2690f, var_0)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec2<i32>(u_input.d, 42742i))))), 23088i, Struct_1(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 677f, var_0, 266f))))));
    let x = u_input.a;
    s_output = StorageBuffer(23234u);
}

