struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 298f;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = -251f;
    var var_1 = _wgslsmith_f_op_f32(860f + arg_1);
    var var_2 = vec4<f32>(var_0, arg_1, _wgslsmith_f_op_f32(max(1000f, 1969f)), 688f);
    var var_3 = select(_wgslsmith_add_vec3_i32(vec3<i32>(select(u_input.a.x, u_input.c, true), _wgslsmith_clamp_i32(48628i, -42149i, u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(-21303i, u_input.c, 2147483647i), ~vec3<i32>(u_input.c, u_input.c, 2147483647i))), vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 38301i), select(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), -655f <= _wgslsmith_f_op_f32(var_0 + arg_1))) & vec3<i32>(u_input.a.x, ~(-39063i), u_input.a.x);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-735f - 2136f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + 1099f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(max(var_2.x, -1149f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 - var_0))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_3(~arg_1.b, -750f, 14077u)), -981f, 267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)), _wgslsmith_f_op_f32(1760f - _wgslsmith_f_op_f32(func_3(0u, 1089f, 92587u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(step(-402f, 154f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f * _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-235f))))) + 1456f));
    global0 = _wgslsmith_f_op_f32(ceil(var_2.x));
    return _wgslsmith_f_op_f32(ceil(515f));
}

fn func_1(arg_0: u32) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1464f, _wgslsmith_f_op_f32(ceil(1022f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -405f);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1109f), -349f);
    var var_0 = -vec2<i32>(-2147483647i, _wgslsmith_mult_i32(2147483647i, 1i));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.c, u_input.c, 1i, 14562i), Struct_1(6056i, 4294967295u))) * 2111f), -1089f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-953f, _wgslsmith_f_op_f32(f32(-1f) * -760f)) - -805f))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2840f))))))));
    let var_0 = select(select(vec3<bool>(~49407u >= abs(u_input.b), func_1(u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -954f) < _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 67514i), Struct_1(u_input.c, u_input.b)))), select(vec3<bool>(true, true, any(vec3<bool>(true, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))))), !select(vec3<bool>(false, any(vec2<bool>(false, false)), true), vec3<bool>(true, u_input.b < 0u, func_1(u_input.b)), !func_1(u_input.b)), true);
    let var_1 = -1401f;
    let var_2 = var_0.xy;
    var var_3 = Struct_1(u_input.c, ~(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_sub_vec2_u32(vec2<u32>(max(u_input.b, abs(85666u)), ~u_input.b), abs(vec2<u32>(var_3.b, 52134u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(245f, var_1, -640f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1249f, 1000f, var_1)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -608f))), vec3<f32>(-2246f, _wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(func_2(vec4<i32>(var_3.a, var_3.a, u_input.c, u_input.a.x), Struct_1(var_3.a, 4294967295u)))), -427f), func_1(~20648u))));
}

