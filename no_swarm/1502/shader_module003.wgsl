struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<bool> {
    let var_0 = vec3<bool>((arg_1 != -860f) | true, false, true);
    global0 = _wgslsmith_f_op_f32(142f - arg_1);
    let var_1 = abs(reverseBits(~vec4<i32>(32193i, -u_input.c, u_input.e, ~u_input.c)));
    var var_2 = Struct_2(Struct_1(var_0.yy, all(select(!vec2<bool>(var_0.x, false), vec2<bool>(true, true), !var_0.x)), -1i, u_input.e), max(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, u_input.b.x), u_input.b.xy, var_0.zz), u_input.b.zy), 0u), ~abs(~u_input.a)));
    let var_3 = Struct_3(~_wgslsmith_add_u32(~4294967295u, 1u));
    return select(vec4<bool>(var_0.x, var_0.x, true, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(57992u, arg_0), u_input.b.xx), ~u_input.b.yz) >= 4294967295u), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, true, false), all(var_0.yx))), vec4<bool>(var_0.x, all(select(vec3<bool>(true, false, true), var_0, true)), all(var_2.a.a), any(var_2.a.a)));
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = func_3(~(4294967295u >> (u_input.b.x % 32u)), arg_0);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-480f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(-arg_0)))), -1169f, arg_0));
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), 1130f, _wgslsmith_f_op_f32(step(623f, -1133f)), -869f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), -333f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, var_0.x), vec2<f32>(-1097f, var_0.x))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1595f * -688f), -1245f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zw)))), vec2<bool>(true, func_3(1u << (0u % 32u), _wgslsmith_f_op_f32(max(-834f, var_0.x))).x)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(729f, var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(-950f)).x)))), var_1.x, _wgslsmith_f_op_f32(var_1.x + var_0.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2911f, 258f, -1625f, -1265f)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1496f, var_0.x, -337f, var_0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -492f, -1000f, -1445f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1762f, var_1.x, -1000f, var_0.x)), vec4<f32>(var_1.x, var_0.x, 812f, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1133f) * vec4<f32>(var_1.x, var_0.x, 792f, 798f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1292f, 328f, -376f, -1087f), vec4<f32>(-797f, var_1.x, var_0.x, var_0.x))), vec4<f32>(-284f, -354f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(max(-224f, -653f)))))) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(trunc(var_1.x)))).x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(575f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(542f, var_0.x)))));
    return StorageBuffer(~vec3<i32>(~u_input.d, min(u_input.d, min(u_input.e, -1i)), -44943i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.zy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, var_0.x))), true)), _wgslsmith_f_op_vec2_f32(-var_0.yx), any(vec4<bool>(true, true, u_input.c != u_input.d, 198f < var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f - 854f)), -1000f))));
    let var_0 = ~(~u_input.a);
    global0 = -744f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1249f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(f32(-1f) * -271f))) + _wgslsmith_f_op_f32(f32(-1f) * -1135f));
    var var_2 = true;
    let x = u_input.a;
    s_output = func_1();
}

