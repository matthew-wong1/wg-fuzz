struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(select(true, select(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true), (u_input.a >> (1u % 32u)) == firstLeadingBit(u_input.a)), true, vec4<bool>(true, true, true, true & select(true, true, true)), _wgslsmith_sub_u32(u_input.a << (u_input.a % 32u), 1u) > u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-265f, 580f))), 0u);
    global0 = -1170f;
    global0 = var_0.b;
    global0 = var_0.b;
    var var_1 = var_0.a;
    return var_0.a.d;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1.yyw;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.x)))) * 163f);
    let var_2 = var_0;
    var var_3 = Struct_2(Struct_1(select(false, true, (arg_3.c.x || arg_0.x) & !arg_0.x), !any(arg_3.c), select(!select(vec4<bool>(false, arg_3.c.x, true, true), arg_3.c, false), select(!arg_3.c, select(arg_3.c, arg_3.c, vec4<bool>(true, arg_3.d, arg_0.x, false)), var_0.x >= var_0.x), true), arg_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.x)))), ~abs(~u_input.a) << (4294967295u % 32u));
    var_1 = var_0.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 810f));
}

fn func_2() -> f32 {
    global0 = -956f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f * -1625f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(192f, -1492f) + -900f)))));
    var var_0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(true, func_3()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 190f, _wgslsmith_div_f32(-861f, _wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), min(_wgslsmith_mult_u32(u_input.a, reverseBits(~4294967295u)), _wgslsmith_mod_u32(~min(4294967295u, 0u), 1u)), Struct_1(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), u_input.a >= max(1u | u_input.a, 1u), vec4<bool>(true, true, true, true), !(!select(true, true, true)))));
    let var_1 = firstLeadingBit(i32(-1i) * -2147483647i);
    var var_2 = u_input.a;
    return _wgslsmith_f_op_f32(-1000f - 380f);
}

fn func_1() -> StorageBuffer {
    global0 = 468f;
    global0 = _wgslsmith_f_op_f32(-1315f * 869f);
    global0 = -1595f;
    let var_0 = false;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1040f)) * 1662f), _wgslsmith_f_op_f32(-1687f * -1442f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(993f, -1359f))))))), true));
    return StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11702u, 1u, u_input.a) >> (vec3<u32>(12405u, 4294967295u, u_input.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_add_u32(u_input.a, 1u)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(var_0, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, 1150f, 232f, 1034f)), select(5481u, 0u, var_0), Struct_1(var_0, false, vec4<bool>(false, true, false, true), var_0))))), vec4<i32>(~(~firstLeadingBit(16017i)), -29206i, select(-41758i, -66943i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 6983i, -2147483647i), vec3<i32>(-76164i, -2147483647i, -1i)), var_0), -48046i), _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u) | vec4<u32>(36499u, 27608u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 8447u, u_input.a)), vec4<u32>(~34999u, u_input.a, u_input.a, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a))) ^ (select(u_input.a, u_input.a, true) ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

