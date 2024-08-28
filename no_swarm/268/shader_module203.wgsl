struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, -496f)), _wgslsmith_f_op_f32(floor(arg_0))))), ~(~u_input.a), arg_0, u_input.a < (0u | ~countOneBits(u_input.a)), u_input.b.x | u_input.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(vec4<u32>(arg_1.b, u_input.a & 10977u, arg_1.b, ~(~48452u)));
    let var_1 = var_0.yy;
    return func_2(arg_1.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), 944i >= u_input.b.x, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_div_f32(288f, 1327f))), ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-781f)) + -670f)), !(true | all(vec3<bool>(false, false, false))), u_input.b.x));
    var var_1 = vec3<i32>(~var_0.e, _wgslsmith_clamp_i32(23736i, -20775i, 1i), var_0.e);
    var var_2 = var_0.d || false;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_clamp_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, u_input.a), vec2<u32>(var_0.b, 31522u)) >> (vec2<u32>(u_input.a, var_0.b) % vec2<u32>(32u))), ~countOneBits(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u)), vec2<u32>(1u ^ var_0.b, 17012u))));
}

