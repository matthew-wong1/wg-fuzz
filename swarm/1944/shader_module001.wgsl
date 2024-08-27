struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = u_input.a & u_input.a;
    var_0 = vec4<i32>(-2147483647i, firstLeadingBit(var_0.x) << (u_input.b.x % 32u), var_0.x, ~abs(u_input.a.x));
    var_0 = vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(abs(var_0.x), _wgslsmith_add_i32(u_input.a.x, -16600i)), _wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(~u_input.a.x, var_0.x)), select(~u_input.a.x, u_input.a.x, all(vec3<bool>(true, false, true))));
    var var_1 = vec3<u32>(0u, select(u_input.b.x, u_input.b.x, false), countOneBits(~(~u_input.b.x)));
    var_0 = -vec4<i32>(53371i, -_wgslsmith_mod_i32(~(-1i), select(30556i, 0i, true)), ~(-(~29092i)), u_input.a.x & firstLeadingBit(~var_0.x));
    return vec2<bool>(true, (~(~1u) << ((_wgslsmith_clamp_u32(var_1.x, 1u, 0u) >> (firstLeadingBit(36887u) % 32u)) % 32u)) > (u_input.b.x ^ ~firstTrailingBit(108513u)));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), func_3(vec3<f32>(arg_0, 378f, -1820f)), vec2<bool>(true, true)), vec2<bool>(true, true)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -274f, arg_0)))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x > u_input.a.x), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, true, false)))), vec2<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(select(arg_0, arg_0, var_0.x))), _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(-509f, -1000f, -1457f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 458f, arg_0) - vec3<f32>(arg_0, arg_0, arg_0))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -1000f) + vec3<f32>(392f, 1995f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(625f, 829f, true)), -530f, 11864u < u_input.b.x)))));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -702f, var_1.x) + vec3<f32>(var_1.x, var_1.x, arg_0))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1647f, var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, -267f, var_1.x))))))).x;
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - _wgslsmith_f_op_f32(min(-1218f, arg_0))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(491f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1728f, _wgslsmith_f_op_f32(-759f * -1082f))) - _wgslsmith_f_op_f32(var_1.x + -640f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -159f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0, -271f) + vec3<f32>(370f, 1400f, -1462f)), !vec3<bool>(var_2, var_2, false))), vec3<f32>(684f, -1238f, -1402f)))))));
    var var_3 = Struct_2(0i > -_wgslsmith_clamp_i32(u_input.a.x, 1i, ~u_input.a.x), vec3<bool>(all(vec2<bool>(all(var_0), false)), var_2, false), u_input.a.x);
    return ~vec3<u32>(~countOneBits(4294967295u), ~_wgslsmith_mult_u32(1u, 2586u), ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x)) & (vec3<u32>(u_input.b.x, select(~u_input.b.x, u_input.b.x, !var_3.a), ~firstTrailingBit(u_input.b.x)) >> ((vec3<u32>(_wgslsmith_div_u32(12268u, u_input.b.x), u_input.b.x, u_input.b.x << (44276u % 32u)) ^ vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.b.x), u_input.b.x, 78282u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<i32>) -> bool {
    var var_0 = vec3<u32>(117618u, _wgslsmith_add_u32(firstTrailingBit(~countOneBits(2394u)), 64165u), 71712u);
    var_0 = countOneBits(select(vec3<u32>(min(4639u, _wgslsmith_mult_u32(9670u, u_input.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 26699u, 11203u), vec3<u32>(var_0.x, 56103u, u_input.b.x)), ~var_0.x), reverseBits(42904u)), vec3<u32>(u_input.b.x, var_0.x, countOneBits(~48873u)), true));
    var_0 = max(~(~(~(vec3<u32>(var_0.x, 4294967295u, 30457u) << (vec3<u32>(47963u, u_input.b.x, var_0.x) % vec3<u32>(32u))))), _wgslsmith_add_vec3_u32(~firstTrailingBit(func_2(-1413f)), min(vec3<u32>(u_input.b.x, 0u, 1u), select(_wgslsmith_add_vec3_u32(vec3<u32>(30330u, 29449u, var_0.x), vec3<u32>(41721u, var_0.x, var_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.b.x), vec3<u32>(47501u, u_input.b.x, var_0.x)), arg_1))));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~abs(31202u), 1u, countOneBits(~var_0.x), _wgslsmith_dot_vec2_u32(u_input.b ^ vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(0u, 8617u))), min(vec4<u32>(var_0.x, ~var_0.x, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), vec4<u32>(~0u, 1u, var_0.x, _wgslsmith_clamp_u32(1u, 27086u, 17025u)))) | _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b.x, u_input.b.x, ~68262u, 4568u) & firstTrailingBit(~vec4<u32>(var_0.x, 35319u, 85668u, var_0.x)), abs((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.x) << (vec4<u32>(92819u, 0u, 1u, 0u) % vec4<u32>(32u))) ^ ~vec4<u32>(42183u, u_input.b.x, 4294967295u, u_input.b.x)));
    var_0 = ~(~select(func_2(_wgslsmith_f_op_f32(ceil(1216f))), var_1.xxx << (vec3<u32>(2695u, 0u, 0u) % vec3<u32>(32u)), all(vec2<bool>(arg_1, true))));
    return all(!select(select(vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(arg_1, true, false, arg_1), true), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, arg_1, false, false), false), all(vec3<bool>(arg_1, arg_1, arg_1)))) && arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = !func_1(firstTrailingBit(u_input.a), true, vec4<i32>(u_input.a.x, u_input.a.x, -(i32(-1i) * -1i), 4766i));
    var_1 = false;
    let var_2 = 74184u;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, 59126u);
}

