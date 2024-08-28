struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: bool) -> bool {
    let var_0 = Struct_1(abs(arg_1.x), !arg_0);
    let var_1 = !(false || (68735u != (_wgslsmith_clamp_u32(4294967295u, 41351u, 60813u) & 20314u)));
    let var_2 = ~u_input.a.x;
    let var_3 = -699f;
    var var_4 = var_2;
    return !(-281f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-4998f + var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f), var_3), false)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x) | -2147483647i, false);
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a.x), u_input.a.x, 1u | u_input.a.x), ~vec3<u32>(100214u, 4294967295u, u_input.a.x)), u_input.a.x << (~(35160u << (u_input.a.x % 32u)) % 32u)), firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2710f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(step(-172f, _wgslsmith_f_op_f32(floor(1376f))))))) + 110f);
    var_1 = vec2<u32>(~var_1.x, max(u_input.a.x, 4294967295u));
    var_1 = ~vec2<u32>(91345u, _wgslsmith_add_u32(reverseBits(u_input.a.x), ~12585u) | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4054u), vec4<u32>(var_1.x, u_input.a.x, 4294967295u, var_1.x)), select(vec4<u32>(58750u, 46400u, 1802u, u_input.a.x), vec4<u32>(4294967295u, var_1.x, 9319u, u_input.a.x), var_0.b)));
    return false;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(u_input.b.x, all(vec4<bool>(true, all(vec3<bool>(arg_0, true, true)), true, true)));
    var_0 = Struct_1(i32(-1i) * -16259i, all(!vec4<bool>(true, var_0.b && arg_0, func_2(arg_0, vec4<i32>(u_input.b.x, var_0.a, var_0.a, var_0.a), var_0.b), select(var_0.b, var_0.b, arg_0))));
    var var_1 = select(vec2<bool>(true, true), select(!vec2<bool>(any(vec2<bool>(var_0.b, var_0.b)), select(false, var_0.b, false)), vec2<bool>(func_2(all(vec4<bool>(true, arg_0, false, false)), vec4<i32>(var_0.a, -2147483647i, u_input.b.x, 1i), true), any(vec3<bool>(var_0.b, var_0.b, arg_0))), !select(arg_0, true, !arg_0)), vec2<bool>(true, arg_0));
    var var_2 = all(select(select(select(vec2<bool>(false, var_0.b), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), !vec2<bool>(arg_0, true), arg_0), vec2<bool>(var_1.x, all(vec2<bool>(var_1.x, true))), arg_0)) | func_3();
    var_0 = Struct_1(u_input.b.x, var_0.b);
    return !vec3<bool>(true, all(vec2<bool>(true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x, true);
    var var_1 = !all(func_1(!(!var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(~u_input.a.yz, u_input.a.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2011f * _wgslsmith_f_op_f32(sign(567f))) - 333f) + -180f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-436f, 222f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1350f, -753f), vec2<f32>(840f, -1000f)))))));
}

