struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f - -324f))))));
    let var_1 = var_0;
    let var_2 = abs(1u);
    let var_3 = Struct_1(1223f);
    let var_4 = countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(countOneBits(0u), firstTrailingBit(0u), 1u, var_2 ^ var_2), _wgslsmith_div_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(var_2, var_2, 1u, 35987u))), max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_2, var_2, 61169u), vec4<u32>(42053u, var_2, u_input.b, 8413u)), vec4<u32>(var_2, 22917u, u_input.b, var_2) << (vec4<u32>(var_2, 3263u, u_input.b, 27487u) % vec4<u32>(32u))))));
    return u_input.b;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = abs(~_wgslsmith_mod_u32(~0u, 4294967295u)) >> ((1u ^ u_input.b) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1f)));
    return vec3<u32>(func_3(), u_input.b, ~(~(65522u << (~4294967295u % 32u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    var var_0 = !select(any(vec2<bool>(true, true)), true, true && any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))));
    var_0 = select(all(vec3<bool>(true, !any(vec2<bool>(false, false)), true)), false, any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), (1u > arg_2.x) & select(false, false, true))));
    var var_1 = arg_1;
    var var_2 = Struct_1(arg_1.a);
    var_0 = any(vec2<bool>(true || (~u_input.c <= _wgslsmith_add_i32(40335i, u_input.a)), select(false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), true)));
    return 673f;
}

fn func_1() -> f32 {
    return _wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(443f - -352f) - _wgslsmith_f_op_f32(func_4(abs(vec3<u32>(u_input.b, 1u, 0u)) >> (func_2(true, vec4<bool>(false, false, false, true), vec3<i32>(u_input.c, 31669i, u_input.a)) % vec3<u32>(32u)), Struct_1(-982f), vec4<u32>(0u, abs(u_input.b), countOneBits(u_input.b), 53775u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), any(vec3<bool>(true, true, true)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-323f, -1386f, -503f, -269f) + vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(-679f, -1758f, _wgslsmith_f_op_f32(438f * -511f), _wgslsmith_f_op_f32(958f - 483f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(170f - 457f), _wgslsmith_f_op_f32(f32(-1f) * -2490f), _wgslsmith_f_op_f32(trunc(-1820f)), _wgslsmith_f_op_f32(step(-156f, 440f))), vec4<f32>(-988f, -222f, _wgslsmith_div_f32(-345f, 842f), _wgslsmith_f_op_f32(round(1526f)))))) - vec4<f32>(1000f, -1649f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1097f, -280f)), _wgslsmith_f_op_f32(168f + 823f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1036f)))), _wgslsmith_f_op_f32(func_1())));
    var_0 = !vec4<bool>(false, any(vec3<bool>(any(var_0.yzx), false, true)), var_0.x, _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(abs(-1498f))));
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.c), u_input.c, -u_input.a, 1i) ^ _wgslsmith_div_vec4_i32(min(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.c), vec4<i32>(u_input.c, u_input.a, u_input.c, -2147483647i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1371f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x - 1466f))))), firstLeadingBit(firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.b, 52195u, u_input.b)))));
}

