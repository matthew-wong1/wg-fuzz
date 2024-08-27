struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    return arg_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1538f, 1f)), _wgslsmith_f_op_f32(sign(226f)));
    let var_1 = true;
    let var_2 = countOneBits(abs(vec3<u32>(abs(u_input.b | u_input.b), ~(~u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, u_input.b), firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.b))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-270f, 1000f));
    let var_3 = select(~var_2, ~(~abs(max(var_2, var_2))), select(select(vec3<bool>(u_input.b >= 4294967295u, !var_1, false), vec3<bool>(true, !var_1, true), vec3<bool>(var_1, !var_1, func_1(Struct_1(vec4<f32>(1276f, -210f, -1000f, -185f), -1171f, u_input.c.x, vec4<bool>(false, var_1, var_1, var_1)), vec3<i32>(-2147483647i, u_input.a, u_input.e.x), Struct_2(2349i, Struct_1(vec4<f32>(-1213f, -1483f, 1187f, -1000f), 419f, u_input.a, vec4<bool>(var_1, false, false, true)), Struct_1(vec4<f32>(143f, -132f, 1064f, 1098f), 711f, -66449i, vec4<bool>(var_1, true, true, var_1)), vec4<bool>(true, true, false, true))))), vec3<bool>(false, abs(u_input.e.x) <= 0i, true), false && (22465u > ~var_2.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-131f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -795f);
    var_0 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, var_3.x & ~var_2.x)));
}

