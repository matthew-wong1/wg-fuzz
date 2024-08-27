struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = !any(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false));
    var var_1 = _wgslsmith_f_op_f32(670f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-442f))), _wgslsmith_f_op_f32(f32(-1f) * -579f)))));
    var var_2 = !select(vec3<bool>(var_0, false, any(!vec4<bool>(var_0, var_0, true, false))), !select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, true), select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, var_0, false), vec3<bool>(false, var_0, var_0))), var_0);
    var_1 = 978f;
    var var_3 = true;
    return ~u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = -1769f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1250f - _wgslsmith_f_op_f32(f32(-1f) * -1161f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-271f, -1303f))), true)));
    var var_1 = Struct_2(-862f, _wgslsmith_f_op_f32(floor(784f)), Struct_1(1u > func_3(), select(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, 0u, 0u), vec4<u32>(arg_1.x, arg_1.x, 1u, 33288u))), ~(~arg_0.c.b), !(arg_0.a < 1550f)), !vec2<bool>(arg_0.c.c.x, true), select(arg_0.c.d, all(arg_0.c.c), !(3323u == arg_0.c.b))));
    let var_2 = vec2<bool>(arg_0.c.c.x, true);
    let var_3 = Struct_1(var_2.x, arg_1.x, arg_0.c.c, true && var_1.c.c.x);
    return var_2;
}

fn func_1() -> StorageBuffer {
    var var_0 = true;
    let var_1 = true;
    var var_2 = Struct_1(var_1, ~(~4294967295u), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), var_1)), !select(func_2(Struct_2(161f, 615f, Struct_1(false, u_input.b, vec2<bool>(true, true), var_1)), vec3<u32>(1u, u_input.b, u_input.a), -2147483647i, vec4<f32>(-583f, -1809f, -660f, 253f)), vec2<bool>(var_1, false), !vec2<bool>(false, var_1)), !vec2<bool>(!var_1, u_input.c.x <= u_input.c.x)), true);
    var var_3 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, var_2.b, var_2.b), vec4<u32>(4294967295u, u_input.b, 73751u, 26413u))), var_2.b, ~(~(~min(27668u, 0u))));
    var_3 = ~(~select(u_input.a << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, 38379u), vec3<u32>(0u, 4294967295u, var_2.b)), true)) & u_input.a;
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = func_1();
}

