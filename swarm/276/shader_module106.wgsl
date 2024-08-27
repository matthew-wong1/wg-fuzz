struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(select(arg_1.a, any(!(!vec4<bool>(arg_1.a, true, arg_1.a, true))), select(any(select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(false, false, true), vec3<bool>(arg_1.a, arg_1.a, true))), arg_1.a, (arg_0 <= arg_0) != arg_1.a)));
    let var_1 = Struct_3(u_input.a, var_0, Struct_1(-278f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1687f) + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -176f)))), vec3<u32>(11767u >> (firstLeadingBit(1u) % 32u), arg_0, arg_0)), vec4<u32>(4294967295u, ~arg_0, _wgslsmith_add_u32(arg_0, 4294967295u), ~(~(~362u))));
    var var_2 = firstLeadingBit(0u);
    var var_3 = var_1.a.x;
    var_3 = 8630i;
    return !(reverseBits(u_input.a.x) != (abs(var_1.a.x) | ~reverseBits(-27039i)));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_4(Struct_2(!func_3(4294967295u, Struct_2(true)) & false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 - -706f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - arg_0)), 1580f), ~(0i << (_wgslsmith_mod_u32(1u, firstTrailingBit(33398u)) % 32u)));
    return 986f;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(-2255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-993f)) - _wgslsmith_f_op_f32(sign(-788f))) * -1028f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(155f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(916f)) * _wgslsmith_f_op_f32(ceil(414f)))), 1f), vec3<u32>(1u, 1u, 1u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -251f), 721f, ~(~vec3<u32>(4294967295u, select(6220u, var_0.c.x, true), 5944u | var_0.c.x)));
    let var_1 = false;
    let var_2 = 27759u;
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1142f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.b, 694f, var_1)))))))), -153f, vec3<u32>(min(_wgslsmith_dot_vec2_u32(var_0.c.zy << (vec2<u32>(var_2, 42399u) % vec2<u32>(32u)), abs(vec2<u32>(var_0.c.x, var_0.c.x))), max(~var_0.c.x, 8150u & var_2)), ~(~29731u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_2, var_2, var_2), vec4<u32>(var_0.c.x, var_2, 66984u, 129313u)) % 32u)), abs(var_0.c.x)));
    return vec3<f32>(1555f, var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a + -1946f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, u_input.a.zzx), -(~(-vec3<i32>(u_input.a.x, 1i, u_input.a.x))));
    let var_1 = true;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(195f, 1227f, 1141f) - vec3<f32>(-312f, 580f, -483f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, -1451f, 844f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1732f, -1602f, -1961f)))));
    var var_3 = ~select(_wgslsmith_mod_u32(1u, countOneBits(1u)), 25075u, true);
    var_3 = 44290u;
    let var_4 = select(select(select(!select(vec3<bool>(true, var_1, true), vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, var_1)), !(!vec3<bool>(var_1, true, false)), any(vec2<bool>(true, var_1))), vec3<bool>(false, all(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), false)), func_3(10853u, Struct_2(true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(var_1, true, var_1), var_1))), !vec3<bool>(true, !(!var_1), select(false, any(vec2<bool>(var_1, true)), var_1)), !(true & !var_1));
    let var_5 = ~(~select(vec2<u32>(27849u, 102702u), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(1u, 5830u)), _wgslsmith_div_vec2_u32(vec2<u32>(9497u, 34050u), vec2<u32>(1u, 1u))), !vec2<bool>(var_1, true)));
    var_3 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x));
}

