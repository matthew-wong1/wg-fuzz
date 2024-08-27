struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = all(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), true), true))));
    return ~(firstLeadingBit(_wgslsmith_sub_u32(4711u, 0u)) << (1u % 32u)) ^ firstTrailingBit(~_wgslsmith_mod_u32(~37605u, ~1u));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_1(-376f, ~_wgslsmith_mod_u32(~1u, 1u), vec3<u32>(firstTrailingBit(~41288u), reverseBits(~18874u), ~countOneBits(64837u)) ^ abs(~vec3<u32>(1u, 1u, 1u)), func_3());
    return any(vec2<bool>(true, true));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = -u_input.a.x;
    return !(!func_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -1005f, arg_0.x, 452f)) - vec4<f32>(-309f, arg_0.x, 289f, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(select(true, !all(vec3<bool>(true, true, false)), select(true, true, true)), true, true, func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(step(432f, -1000f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-323f, -1000f)) + _wgslsmith_f_op_f32(-1000f - -1278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(301f, 957f))))), _wgslsmith_mult_u32(92650u, func_3()), select(vec3<u32>(~24252u, ~1u, 1u), vec3<u32>(abs(35360u), 1u, 1u), var_0 && false), 76891u);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), ~(~reverseBits(~var_1.d)), vec3<u32>(firstTrailingBit(1u), _wgslsmith_mult_u32(49006u, 0u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(73649u, var_1.b, 1u, var_1.c.x), ~vec4<u32>(10623u, 1u, var_1.b, 0u)) % 32u), min(~var_1.d, abs(_wgslsmith_mult_u32(1u, 61631u)))), 0u);
    var_1 = Struct_1(292f, 64723u, _wgslsmith_div_vec3_u32(vec3<u32>(~0u, _wgslsmith_add_u32(87902u, var_1.c.x), 1u), ~firstTrailingBit(var_1.c)) >> (~firstLeadingBit(var_1.c) % vec3<u32>(32u)), var_1.b);
    let var_2 = _wgslsmith_f_op_f32(-var_1.a);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_2), ~firstTrailingBit(~4294967295u), var_1.c, _wgslsmith_div_u32(countOneBits(_wgslsmith_add_u32(42530u, 1u)), ~(~var_1.c.x)) << (func_3() % 32u));
    let var_3 = vec2<u32>(_wgslsmith_div_u32(var_1.d | 4294967295u, 12892u), _wgslsmith_mod_u32(select(var_1.d, var_1.d, false) | firstTrailingBit(0u), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(var_1.d, var_1.d)))) & reverseBits(var_1.c.yy >> (vec2<u32>(abs(var_1.d), 1u) % vec2<u32>(32u)));
    var var_4 = Struct_1(-1575f, ~var_3.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(17964u, 0u, 4294967295u) >> (var_1.c % vec3<u32>(32u)), var_1.c), ~(var_1.c >> (vec3<u32>(43518u, var_3.x, 0u) % vec3<u32>(32u)))), vec3<u32>(1u, ~(~var_1.d) ^ 0u, abs(select(~var_1.b, var_1.b, var_0))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, -37547i, 0i, 16505i))), u_input.a.x), vec2<i32>(firstLeadingBit(abs(u_input.a.x) ^ max(40526i, u_input.b.x)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
}

