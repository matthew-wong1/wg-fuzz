struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-564f, -333f, -1986f), vec3<f32>(1403f, 888f, -1126f), vec3<f32>(178f, 137f, -1017f), vec3<f32>(1000f, -1041f, -2306f), vec3<f32>(-681f, -235f, 481f), vec3<f32>(1703f, -121f, -536f), vec3<f32>(-1000f, -470f, 128f), vec3<f32>(-2186f, 798f, 810f), vec3<f32>(-662f, 522f, 1989f), vec3<f32>(876f, -489f, 1164f), vec3<f32>(-1363f, -1000f, -507f), vec3<f32>(763f, 308f, 1123f), vec3<f32>(-836f, 2510f, 871f), vec3<f32>(-1000f, -1000f, -1000f), vec3<f32>(-1172f, -142f, -153f), vec3<f32>(-1000f, -1104f, 1410f), vec3<f32>(-348f, 559f, -1132f), vec3<f32>(872f, 673f, 468f), vec3<f32>(-1000f, -977f, 1744f), vec3<f32>(1000f, 568f, -1000f), vec3<f32>(230f, -367f, 582f), vec3<f32>(1000f, 170f, -955f), vec3<f32>(515f, 469f, 394f));

var<private> global1: array<u32, 3> = array<u32, 3>(90970u, 55502u, 34788u);

var<private> global2: array<vec3<u32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(arg_1.a, all(arg_0.a), u_input.d, u_input.d == abs(u_input.d), -1042f);
    let var_2 = arg_1;
    var var_3 = var_2.e;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e))))));
    return var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-118f, arg_0.e, arg_0.e, -215f), vec4<f32>(-320f, 1427f, -710f, 310f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, var_0.e, arg_0.e, var_0.e) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1132f, var_0.e, arg_0.e, var_0.e), vec4<f32>(-1736f, var_0.e, var_0.e, -404f))))), vec4<f32>(350f, arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-550f, arg_0.e, var_0.a.x))), arg_0.e)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.wx);
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e - arg_0.e), -147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - -426f)), -619f, _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e), var_0.e), var_0.e, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.e, var_0.e, var_1.x, -1022f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, var_2.x, var_1.x, -481f), vec4<f32>(-763f, -1082f, var_1.x, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 210f, arg_0.e, arg_0.e)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 740f) + arg_0.e), 823f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-arg_0.e)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) - _wgslsmith_f_op_vec2_f32(select(var_1.yx, var_1.zy, true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + vec2<f32>(_wgslsmith_f_op_f32(643f - _wgslsmith_f_op_f32(min(arg_0.e, arg_0.e))), -586f)));
    return !(!any(!(!vec2<bool>(true, var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(func_1(Struct_1(vec3<bool>(false, true, true), true, u_input.b, false, -981f), Struct_1(vec3<bool>(false, false, false), true, 0u, false, 385f)), vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)), func_2(Struct_1(vec3<bool>(false, true, false), true, u_input.d, false, -2551f), false)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), true, ~(~1u), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f))));
    var var_1 = -1000f;
    var var_2 = vec4<i32>(min(u_input.c.x, 0i) >> (_wgslsmith_sub_u32(~0u, 25114u) % 32u), u_input.c.x, u_input.c.x, u_input.a.x);
    global2 = array<vec3<u32>, 23>();
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(max(var_2.x, 36576i), ~1i, min(22011i, 1i), u_input.a.x)));
}

