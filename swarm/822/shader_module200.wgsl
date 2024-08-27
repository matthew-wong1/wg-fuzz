struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(-807f, -1282f), vec2<f32>(815f, -571f), vec2<f32>(284f, 687f), vec2<f32>(1000f, -1333f), vec2<f32>(394f, -1016f), vec2<f32>(1000f, -614f), vec2<f32>(916f, -722f), vec2<f32>(1088f, 881f), vec2<f32>(-891f, 1392f), vec2<f32>(2447f, -113f), vec2<f32>(580f, -1000f), vec2<f32>(1000f, 2393f), vec2<f32>(517f, 150f), vec2<f32>(-811f, 240f), vec2<f32>(-1862f, -809f), vec2<f32>(-1161f, 261f), vec2<f32>(-577f, -2363f), vec2<f32>(815f, -1000f), vec2<f32>(-1333f, -1462f), vec2<f32>(-316f, -178f), vec2<f32>(483f, 1886f), vec2<f32>(1135f, 192f), vec2<f32>(1845f, -618f), vec2<f32>(-323f, -596f), vec2<f32>(-840f, 279f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    return vec2<bool>(true, false);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<f32>, 25>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)))));
    return arg_0.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1577f, 1148f, arg_1.b))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))), _wgslsmith_f_op_f32(func_3(arg_1, arg_1, Struct_1(true, -117f, arg_1.c))), arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b))))));
    var var_1 = vec3<bool>(all(select(arg_1.c, select(select(vec2<bool>(arg_1.a, arg_1.c.x), arg_1.c, vec2<bool>(false, true)), arg_1.c, arg_1.c), !select(vec2<bool>(arg_1.c.x, false), arg_1.c, vec2<bool>(arg_1.a, false)))), arg_1.a & arg_1.c.x, any(!func_1(arg_1)));
    var_1 = vec3<bool>(arg_1.c.x, 23078u >= ~(u_input.c.x >> (~u_input.c.x % 32u)), arg_1.a);
    var var_2 = vec3<u32>(u_input.c.x, select(u_input.c.x, ~firstLeadingBit(u_input.c.x), !any(vec4<bool>(arg_1.c.x, false, var_1.x, false))) ^ u_input.c.x, 17970u);
    global0 = array<vec2<f32>, 25>();
    return true != (firstTrailingBit(43911u) == (var_2.x & 63017u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(44171u, ~abs(u_input.c.x));
    let var_1 = var_0.x;
    let var_2 = Struct_1(true, -682f, select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), !all(vec4<bool>(true, true, false, true))), !(!func_1(Struct_1(false, -860f, vec2<bool>(true, false)))), select(vec2<bool>(true, u_input.b.x == u_input.a.x), vec2<bool>(var_0.x == 4294967295u, func_2(u_input.a.x, Struct_1(true, 493f, vec2<bool>(false, false)))), vec2<bool>(true, u_input.a.x == 0i))));
    let var_3 = Struct_1(u_input.a.x == _wgslsmith_add_i32(1i, 0i), _wgslsmith_f_op_f32(-var_2.b), vec2<bool>(var_2.a, var_2.c.x));
    let var_4 = abs(u_input.a.xx) << (u_input.c.xz % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.b, -465f, _wgslsmith_f_op_f32(-var_3.b)))), vec4<f32>(_wgslsmith_f_op_f32(max(726f, -359f)), 1203f, var_2.b, var_3.b), -28261i);
}

