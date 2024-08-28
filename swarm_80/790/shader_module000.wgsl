struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 0u;
    let var_1 = u_input.b.x;
    var_0 = ~_wgslsmith_div_u32(arg_0.a.x, ~(~u_input.a));
    var_0 = _wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(4294967295u, 26804u, u_input.a, u_input.a) | vec4<u32>(u_input.a, 39788u, u_input.a, arg_0.a.x)))), ~min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, 465u, 72717u, 24190u), vec4<u32>(4294967295u, 20585u, 4294967295u, u_input.a)), vec4<u32>(u_input.a, 1u << (0u % 32u), arg_0.a.x << (u_input.a % 32u), 92364u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(309f * -1854f), _wgslsmith_f_op_f32(f32(-1f) * -1136f))))) * _wgslsmith_f_op_f32(981f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-318f, -1656f)))))));
    return vec3<i32>(66641i << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.a.x | 4294967295u, arg_0.a.x << (u_input.a % 32u)), abs(max(51708u, 0u))) % 32u), var_1, min(_wgslsmith_div_i32(-19998i, -var_1), -2147483647i));
}

fn func_2() -> vec4<u32> {
    var var_0 = func_3(Struct_1(~select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(49759u, u_input.a) | vec2<u32>(u_input.a, 56145u), true)));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, 4294967295u, u_input.a, 21963u), (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(33040u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 0u, abs(u_input.a), reverseBits(u_input.a)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 80469u, u_input.a)) % vec4<u32>(32u))) << (firstLeadingBit(max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 50966u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 103061u, u_input.a)) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), firstTrailingBit(min(~vec4<u32>(u_input.a, 0u, 9991u, u_input.a), ~vec4<u32>(u_input.a, 34644u, 50225u, u_input.a)))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = vec3<bool>(true, !(_wgslsmith_f_op_f32(f32(-1f) * -756f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1486f, 1093f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1012f - -213f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -934f) + _wgslsmith_f_op_f32(f32(-1f) * -1407f))));
    var var_1 = countOneBits(~abs(vec3<u32>(u_input.a, 28635u, u_input.a) & vec3<u32>(u_input.a, 25134u, u_input.a)));
    let var_2 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(~var_1.x, 2270u, _wgslsmith_mod_u32(u_input.a, var_1.x), u_input.a), select(abs(vec4<u32>(var_1.x, 1u, u_input.a, var_1.x)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 30174u, u_input.a)), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, var_0.x, true)))) | func_2(), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(func_2(), ~vec4<u32>(892u, var_1.x, 53702u, var_1.x)) >> (vec4<u32>(max(u_input.a, 59225u), abs(1u), u_input.a, firstLeadingBit(u_input.a)) % vec4<u32>(32u)), reverseBits(firstLeadingBit(vec4<u32>(594u, 62329u, 0u, 4294967295u)))));
    let var_3 = var_0.x;
    var_1 = ~abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2, var_1.x), var_1.x | 1u), countOneBits(0u), _wgslsmith_mod_u32(1u, min(0u, var_1.x))));
    return StorageBuffer(u_input.b, u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1567f), -260f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f * 275f) * _wgslsmith_div_f32(1413f, -293f)), -247f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -47365i));
}

