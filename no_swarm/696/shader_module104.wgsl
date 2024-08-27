struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, arg_0), vec2<bool>(false, true)), select(vec2<bool>(arg_0, true), vec2<bool>(true, false), true), false), vec2<bool>(all(vec2<bool>(arg_0, true)), false), vec2<bool>(any(vec2<bool>(arg_0, true)), false)), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), !vec2<bool>(false, arg_0), any(vec3<bool>(arg_0, arg_0, true))), vec2<bool>(all(vec2<bool>(arg_0, arg_0)), all(vec4<bool>(true, arg_0, true, true))), !arg_0), arg_0), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f * 1058f) + _wgslsmith_f_op_f32(sign(-1016f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2198f * -657f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1105f) - _wgslsmith_f_op_f32(-473f * -1012f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1943f)), _wgslsmith_f_op_f32(sign(-307f)))))), -496f);
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))) - vec4<f32>(255f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + var_1.x))), -378f, var_1.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-257f, var_1.x, -485f, 391f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1234f, var_1.x, -1204f) - vec4<f32>(var_1.x, 551f, 378f, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(852f, var_1.x, -680f, var_1.x), vec4<f32>(var_1.x, -245f, -193f, var_1.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(357f, _wgslsmith_f_op_f32(ceil(-987f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -536f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 181f, var_1.x, var_1.x))))));
    return ~1u < u_input.e;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(true, true), any(vec3<bool>(true, func_3(false), true)));
    var_0 = Struct_1(!var_0.a, abs((arg_1.x ^ 4222u) >> (~4294967295u % 32u)) <= arg_0);
    var var_1 = vec4<f32>(-115f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-654f)), -608f, !var_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1435f, 1696f)))), -701f, -329f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1956f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, 1437f, var_1.x, -332f), vec4<f32>(var_1.x, 1628f, -2317f, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 715f, 580f, var_1.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -351f, -1000f, var_1.x), vec4<f32>(-878f, -780f, -976f, var_1.x))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -442f, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, -769f, -1911f))))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1026f + 890f)), 1334f, var_1.x)));
    let var_2 = Struct_1(!var_0.a, var_0.a.x & (-19801i == ~(arg_2 ^ 2147483647i)));
    return var_2.a;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(select(false, arg_1, arg_1) && (u_input.a.x >= u_input.e), arg_0 & true), select(select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, false)), select(vec2<bool>(arg_0, true), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1))), select(!vec2<bool>(false, arg_1), vec2<bool>(false, true), true), !(!vec2<bool>(true, arg_1)))), all(func_2(1u & ~u_input.a.x, ~_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), u_input.d.x)));
    var var_1 = !select(!select(!vec3<bool>(arg_1, arg_0, var_0.b), !vec3<bool>(var_0.b, true, arg_0), all(vec4<bool>(true, arg_1, false, false))), !vec3<bool>(select(arg_1, var_0.b, var_0.a.x), arg_0, false), select(vec3<bool>(true, arg_1, var_0.a.x), vec3<bool>(!arg_1, !arg_0, func_2(0u, u_input.a, u_input.c.x).x), !arg_1));
    var var_2 = ~u_input.a.zx;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-292f, _wgslsmith_f_op_f32(-722f + -1891f)))))));
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(1i, -2147483647i), ~(~u_input.c.x), 2147483647i, -2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!all(vec4<bool>(false, true, true, true))), !(!(true | any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((_wgslsmith_clamp_u32(0u, u_input.e, u_input.e) | ~1u) << (1u % 32u), u_input.e));
}

