struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-265f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-951f, -1833f))))))), u_input.c.x > -13619i));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 158f) * vec2<f32>(var_0.x, 1306f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    var var_1 = !select(vec3<bool>(_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x) <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.b.wz), !all(vec4<bool>(false, false, false, true)), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true));
    let var_2 = Struct_2(true, u_input.c.wwx);
    return _wgslsmith_f_op_f32(trunc(-1000f)) != _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 316f) - var_0.x) + _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_2() -> vec2<bool> {
    global0 = false;
    global0 = !func_3();
    global0 = all(!vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, u_input.d == u_input.d));
    let var_0 = select(true, false, select(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)), ~select(u_input.d, -1i, true) > firstTrailingBit(1i)));
    let var_1 = u_input.c.wxx;
    return !(!vec2<bool>(var_0, true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> bool {
    let var_0 = ~u_input.a.x;
    global0 = false;
    global0 = any(vec2<bool>(true || any(func_2()), 1i == abs(_wgslsmith_div_i32(-17717i, u_input.a.x))));
    global0 = any(vec4<bool>(true, !any(vec2<bool>(true, true)), true, false));
    let var_1 = Struct_1(vec3<bool>(all(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true)), true, false));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    global0 = arg_2.a.x | true;
    global0 = false;
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-283f, arg_1)))) + vec2<f32>(_wgslsmith_f_op_f32(-889f - 2126f), _wgslsmith_div_f32(arg_1, -986f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-899f)), arg_1) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1602f, arg_1) * vec2<f32>(-1000f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 722f) * vec2<f32>(arg_1, 552f)))))), !select(vec2<bool>(!var_0.a.x, !arg_2.a.x), select(select(arg_3.yx, arg_0.a.yz, false), func_2(), true), false)));
    var var_2 = true && func_2().x;
    return -25443i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(select(vec2<bool>(any(vec4<bool>(false, true, true, true)), false), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-833f, _wgslsmith_f_op_f32(152f * -1302f), _wgslsmith_f_op_f32(f32(-1f) * -2321f), _wgslsmith_f_op_f32(-864f * 2072f))))), _wgslsmith_add_i32(-38812i, func_4(Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1428f)) * _wgslsmith_f_op_f32(505f + -655f)), Struct_1(vec3<bool>(false, true, false)), vec3<bool>(func_1(u_input.b.xz, vec4<u32>(u_input.b.x, 4164u, u_input.b.x, 57402u), vec2<u32>(62490u, u_input.b.x)), false, true))), -vec2<i32>(~u_input.a.x, ~(-2147483647i)));
}

