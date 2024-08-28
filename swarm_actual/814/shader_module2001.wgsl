struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = 0i;
    var_0 = _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 1i));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(6016i), 48282i, min(7225i, 1i)), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, -18982i), -21694i << (1u % 32u), arg_1.a)), 16466i, -min(abs(arg_1.a), 0i)), false);
    let var_2 = var_1;
    var var_3 = Struct_1(~(max(min(-12101i, -2147483647i), ~var_2.a) & var_2.a), false);
    return select(~4294967295u, firstLeadingBit(arg_2) ^ abs(33598u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(325f * 922f))) - _wgslsmith_f_op_f32(round(-1266f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f - 151f))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(true, Struct_1(arg_3, arg_1.x), 1u), ~0u), ~(select(vec2<u32>(6438u, 11330u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), 41607u);
    var_0 = 0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1597f * -629f) - _wgslsmith_f_op_f32(f32(-1f) * -1032f)), 2522f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(956f, _wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_f32(ceil(559f))));
    let var_2 = _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, firstLeadingBit(0u >> (1u % 32u)), ~1u, firstTrailingBit(4294967295u)), ~vec4<u32>(7361u, _wgslsmith_div_u32(4294967295u, ~1u), 0u, 4294967295u));
    var var_3 = Struct_1(-18365i, true);
    return ~(~(~var_2.x) & ~var_2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = 37078i;
    let var_1 = 1i;
    let var_2 = ~(firstTrailingBit(~52599u) | _wgslsmith_mod_u32(func_2(true, vec2<bool>(false, true), u_input.a.x, 1i), _wgslsmith_div_u32(4294967295u, 112065u))) | 79730u;
    let var_3 = -u_input.a.x <= -11796i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(140f, _wgslsmith_f_op_f32(f32(-1f) * -230f)))))));
    return Struct_1(1i, all(select(vec4<bool>(true, true, var_3, var_0 == var_0), select(select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(true, var_3, true, false), vec4<bool>(var_3, true, var_3, false)), select(vec4<bool>(true, true, false, var_3), vec4<bool>(var_3, var_3, true, false), vec4<bool>(false, var_3, var_3, var_3)), true), var_3)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1358f)), _wgslsmith_f_op_f32(abs(2130f)), _wgslsmith_f_op_f32(abs(-1146f)), _wgslsmith_f_op_f32(round(1389f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1539f, -428f, 1170f, 640f), vec4<f32>(-229f, 214f, -1337f, -371f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(585f, 483f, -799f, -1233f) * vec4<f32>(159f, 322f, -2208f, -128f)), select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(var_0.b, false, true, true), true))), !select(vec4<bool>(true, var_0.b, var_0.b, arg_2.b), vec4<bool>(var_0.b, false, arg_2.b, false), vec4<bool>(arg_1, true, arg_2.b, var_0.b)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1101f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-384f, -1232f) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(step(-1000f, 323f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_1.x, var_1.x, -310f), vec4<f32>(434f, -700f, -862f, -1701f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(vec4<u32>(1u, 1u, 1u, 1u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(19372u, 45828u, 4294967295u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 45225u, 0u, 0u), vec4<u32>(37659u, 0u, 4294967295u, 29507u)), ~vec4<u32>(38931u, 33332u, 0u, 64773u))), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f - _wgslsmith_f_op_f32(max(-1261f, -1198f)))), 1634f));
    var var_2 = func_4(Struct_1(u_input.a.x, any(vec4<bool>(true, true, true, true))), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), func_1(), func_2(true, !select(vec2<bool>(true, false), vec2<bool>(false, false), 1u == var_0.x), _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-27692i, 42650i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, -1i)), select(vec3<i32>(0i, u_input.a.x, 0i), vec3<i32>(-30305i, u_input.a.x, u_input.a.x), vec3<bool>(true, false, false)) >> (~var_0.xwy % vec3<u32>(32u))), u_input.a.x));
    var_2 = Struct_1(abs(~u_input.a.x), any(vec3<bool>(!any(vec4<bool>(var_2.b, false, true, var_2.b)), !(!var_2.b), all(!vec3<bool>(var_2.b, true, true)))));
    let var_3 = func_4(Struct_1(u_input.a.x, select(true, true, any(vec3<bool>(false, false, var_2.b))) || (1u == _wgslsmith_div_u32(var_0.x, 1u))), var_2.b, func_4(Struct_1(func_4(Struct_1(var_2.a, false), var_2.b, Struct_1(u_input.a.x, var_2.b), var_0.x).a | _wgslsmith_mod_i32(42455i, u_input.a.x), true), any(select(vec3<bool>(var_2.b, false, false), vec3<bool>(false, var_2.b, false), vec3<bool>(var_2.b, true, var_2.b))) & !(-9566i <= u_input.a.x), Struct_1(_wgslsmith_mult_i32(countOneBits(var_2.a), var_2.a), var_0.x != select(698u, 0u, var_2.b)), func_3(!all(vec2<bool>(false, var_2.b)), Struct_1(_wgslsmith_div_i32(-24244i, -2147483647i), true), 4294967295u)), _wgslsmith_add_u32(var_0.x, ~(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-979f, 922f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1078f, -1050f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(407f, _wgslsmith_div_f32(696f, 294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-614f)) * _wgslsmith_f_op_f32(f32(-1f) * -1623f)))), ~_wgslsmith_div_u32(~var_0.x, 1u) & ~32478u);
}

