struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global0 = array<vec2<u32>, 19>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.c.x))));
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    return arg_2.b.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(885f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -2813f)));
    return select(select(!vec4<bool>(all(vec4<bool>(arg_1, arg_1, true, arg_1)), all(vec3<bool>(arg_1, false, arg_1)), any(vec3<bool>(arg_1, arg_1, true)), !arg_1), vec4<bool>(false, true, true & !arg_1, false), any(select(vec4<bool>(arg_1, arg_1, true, arg_1), !vec4<bool>(arg_1, false, arg_1, true), !vec4<bool>(false, arg_1, false, false)))), select(vec4<bool>(!all(vec4<bool>(false, arg_1, false, false)), !(var_0.x >= 197f), any(!vec2<bool>(true, arg_1)), !(arg_0.x < 1i)), vec4<bool>(~u_input.a.x >= 0u, !(u_input.c < 1u), arg_1, true), vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-250f * -1073f), true, var_0.x == _wgslsmith_f_op_f32(exp2(var_0.x)), arg_1)), arg_1);
}

fn func_1() -> vec3<bool> {
    var var_0 = 141f;
    var var_1 = !select(select(vec4<bool>(func_2(Struct_1(u_input.a.x, vec3<bool>(true, true, true), vec3<f32>(-147f, 1162f, 2508f), 1676f, 4294967295u), Struct_1(u_input.c, vec3<bool>(true, false, true), vec3<f32>(-1313f, -446f, 336f), -633f, u_input.a.x), Struct_1(u_input.a.x, vec3<bool>(false, true, false), vec3<f32>(-2141f, -418f, 1000f), 1296f, u_input.a.x), u_input.a), false, all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!func_3(vec3<i32>(u_input.b.x, u_input.b.x, 56172i), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(472f))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-439f))))))));
    var var_2 = all(!(!select(!vec3<bool>(var_1.x, false, false), !var_1.xxx, var_1.xzw)));
    var var_3 = Struct_1(u_input.c, vec3<bool>((-u_input.b.x >= -1i) & all(var_1.xz), var_1.x, false), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1540f + _wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-227f * -180f))), _wgslsmith_f_op_f32(f32(-1f) * -284f)))), _wgslsmith_f_op_f32(f32(-1f) * -323f), u_input.c);
    return var_1.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 19>();
    var var_0 = _wgslsmith_f_op_f32(1626f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(159f)))));
    let var_1 = !select(vec3<bool>(true, true, true), func_1(), vec3<bool>(true, select(u_input.c, u_input.a.x, true) < 4294967295u, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, -1000f, -755f)), vec3<f32>(-619f, 1005f, -493f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(257f, 294f, -689f)))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(916f, -846f, -386f), vec3<f32>(-389f, -1212f, -419f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1060f, -126f, 1000f) * vec3<f32>(640f, 1298f, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1629f, 106f, -283f), vec3<f32>(2351f, -443f, 1154f)) * vec3<f32>(-195f, 534f, -1329f)))));
    let var_3 = abs(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.b.zy, firstLeadingBit(vec2<i32>(-2147483647i, var_3)), u_input.b.zz), _wgslsmith_f_op_f32(trunc(2200f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1943f * _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(var_2.x * -284f), var_2.x)));
}

