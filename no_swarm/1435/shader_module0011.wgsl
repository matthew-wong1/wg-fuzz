struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = !(!(!(!select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, global0.x), global0.x))));
    return 1f;
}

fn func_3() -> f32 {
    global0 = !vec2<bool>(true, global0.x);
    var var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(2147483647i, 1i), -1i << (u_input.b.x % 32u)), firstLeadingBit(u_input.c));
    var_0 = vec2<i32>(~0i, ~(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.c.x, 1i, var_0.x), u_input.d), u_input.d)));
    var_0 = ~u_input.d.zz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1920f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 1350f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1330f)))));
    return -128f;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> bool {
    var var_0 = abs(~reverseBits(u_input.b));
    global0 = vec2<bool>(false, _wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -1108f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(-arg_1))))));
    var_0 = ~u_input.a.wz;
    let var_2 = _wgslsmith_f_op_f32(-814f + _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(select(global0.x, all(vec2<bool>(global0.x, !global0.x)), func_1(all(vec2<bool>(global0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -692f), !global0.x) | all(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, false)))), select(select(true, any(select(vec2<bool>(true, false), vec2<bool>(global0.x, true), global0.x)), false), all(!vec4<bool>(true, global0.x, global0.x, global0.x)), true));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(207f, 135f) * vec2<f32>(-1001f, 132f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(703f, -1541f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(827f, -562f), vec2<f32>(567f, 635f))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1139f - 243f), -742f))));
    global0 = !select(select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), !select(vec2<bool>(global0.x, false), vec2<bool>(false, false), false), true), vec2<bool>(global0.x, u_input.a.x <= u_input.a.x), !global0.x);
    global0 = !select(select(select(!vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), true), vec2<bool>(global0.x, any(vec2<bool>(true, false))), true), select(vec2<bool>(true, true), select(!vec2<bool>(false, global0.x), vec2<bool>(true, true), !vec2<bool>(global0.x, false)), vec2<bool>(global0.x, !global0.x)), vec2<bool>(global0.x, !global0.x | global0.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-802f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-883f, var_0.x), vec2<f32>(-264f, 1240f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -510f))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_div_f32(220f, 152f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, 1000f), -630f)))));
    let var_2 = 6298u;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -468f))))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1554f) * vec2<f32>(-397f, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1205f, var_0.x) * vec2<f32>(-516f, var_0.x)))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-812f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1646f, -593f, -2152f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 958f, var_0.x, var_0.x), vec4<f32>(1597f, var_0.x, var_0.x, var_0.x))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1119f), -754f)) + -2947f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(sign(-920f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f - -158f) - -332f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(abs(306f)))), -1364f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f + 1248f)) * _wgslsmith_f_op_f32(f32(-1f) * -108f))));
}

