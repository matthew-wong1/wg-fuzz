struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    return any(vec3<bool>(global0.b.x > ~(11709i & global0.b.x), true && all(select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true), global0.d.x)), !(!(!global0.d.x))));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -897f))))), 231f);
    var var_1 = vec2<i32>(global0.b.x, firstTrailingBit(firstLeadingBit(-(global0.b.x >> (u_input.a.x % 32u)))));
    return _wgslsmith_f_op_f32(round(-1000f));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -891f);
    global0 = arg_1;
    var var_1 = select(arg_0.x, !arg_0.x, -1i != arg_3.b.x);
    var var_2 = arg_3.e.a;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1358f, _wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2099f))), 962f) + vec4<f32>(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(ceil(1183f)))), arg_3.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.e.a, 863f, -1000f, 1000f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1.e.a, -2442f))))), vec3<bool>(global0.d.x, true, !(!arg_1.d.x)), Struct_1(_wgslsmith_f_op_f32(1528f + _wgslsmith_f_op_f32(min(arg_3.a.x, _wgslsmith_div_f32(arg_2, 1215f)))), arg_1.c.b));
    return var_3.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = 4294967295u | arg_2;
    let var_1 = ~vec4<u32>(1u, 1u, _wgslsmith_div_u32(min(u_input.a.x, 0u), u_input.a.x | 42472u), 1u) << (~vec4<u32>(arg_2, arg_2 & max(arg_2, 147887u), ~u_input.a.x, select(~4294967295u, ~16439u, arg_1.x)) % vec4<u32>(32u));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, select(!(!vec4<bool>(global0.d.x, arg_1.x, global0.d.x, false)), select(vec4<bool>(global0.d.x, false, true, false), select(vec4<bool>(true, global0.d.x, arg_1.x, true), vec4<bool>(global0.d.x, arg_1.x, arg_1.x, false), false), vec4<bool>(global0.d.x, false, global0.d.x, true)), all(arg_1.zx)))), global0.b, Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.b)))), 668f), select(arg_1, arg_1, global0.d), Struct_1(_wgslsmith_f_op_f32(442f + -2167f), _wgslsmith_div_f32(arg_0.b, -1257f)));
    return global0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1594f * global0.a.x) - 1000f));
    let var_1 = global0.e;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(394f, 833f))))), _wgslsmith_f_op_f32(sign(global0.a.x)));
    var_2 = func_4(global0.c, select(global0.d, vec3<bool>(!(var_2.b <= global0.a.x), func_1(), !global0.d.x), vec3<bool>((true & global0.d.x) | func_1(), !func_2(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), Struct_2(global0.a, vec2<i32>(-37199i, -6671i), global0.c, vec3<bool>(false, global0.d.x, true), Struct_1(2180f, -549f)), var_0.a, Struct_2(global0.a, vec2<i32>(5105i, -34104i), Struct_1(var_2.b, -269f), global0.d, global0.c)), !all(global0.d))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(~64300u, u_input.a.x), 1607u));
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-456f * 140f), _wgslsmith_f_op_f32(-global0.c.b))), _wgslsmith_f_op_f32(-var_1.a)), 614f);
    let var_3 = any(select(!select(select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, false, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)), !vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x), all(global0.d)), !select(vec4<bool>(global0.d.x, true, true, global0.d.x), select(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x)), select(vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(true, global0.d.x, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, false, true))), !vec4<bool>(true, false, !global0.d.x, true)));
    var_2 = global0.e;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1345f)), 791f);
    let var_5 = firstLeadingBit(vec4<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(8426u, 4294967295u, 20576u, 4294967295u)), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 7251u) | vec4<u32>(1u, u_input.a.x, 20660u, u_input.a.x))), ~(u_input.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, 0u, u_input.a.x)) % 32u)), _wgslsmith_sub_u32(1u, min(1u, u_input.a.x)) ^ 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-623f, _wgslsmith_f_op_f32(sign(875f))), 36035i);
}

