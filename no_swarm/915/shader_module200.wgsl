struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_3(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, arg_0, 0u)), ~abs(vec3<u32>(u_input.b, u_input.a, 29282u))), _wgslsmith_f_op_f32(arg_1.x * arg_1.x));
    var_0 = Struct_3(vec3<u32>(firstLeadingBit(~arg_0 >> (arg_0 % 32u)), 0u, ~u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1129f - var_0.b))));
    let var_1 = !select(!vec3<bool>(any(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, false)), all(vec2<bool>(false, false))), vec3<bool>(select(all(vec2<bool>(true, true)), true, 3193u > arg_0), _wgslsmith_f_op_f32(select(1235f, arg_1.x, true)) <= var_0.b, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), true), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(11298u, 21751u)) == 15877u));
    let var_2 = true;
    var_0 = Struct_3(var_0.a << (vec3<u32>(61968u, _wgslsmith_add_u32(28911u, arg_0) << (4294967295u % 32u), max(~27093u, _wgslsmith_div_u32(4294967295u, 57796u))) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) - _wgslsmith_f_op_f32(-1252f * -364f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(787f))))))));
    return -834f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = 21648i;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1093f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1433f) - -932f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-915f, 1000f, false)) * 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(328f, _wgslsmith_f_op_f32(-222f - _wgslsmith_f_op_f32(-1035f - -265f)))), 107f);
    let var_2 = ~_wgslsmith_div_vec3_u32(~((vec3<u32>(arg_0.x, 43288u, u_input.b) << (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u))) | (vec3<u32>(u_input.b, 4294967295u, 69855u) & vec3<u32>(u_input.b, arg_0.x, u_input.a))), select(vec3<u32>(~u_input.b, ~arg_0.x, arg_0.x), vec3<u32>(countOneBits(arg_0.x), u_input.a, u_input.b), any(vec2<bool>(false, false))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_u32(1u, 27310u), vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_f32(abs(var_1.x)))) + -1669f);
    global0 = var_1.x;
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(select(u_input.b, _wgslsmith_mult_u32(48297u, 1u), all(vec2<bool>(false, false))), reverseBits(arg_0.x | arg_0.x)), countOneBits(2897u), ~(~select(var_2.x, arg_0.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, var_1.x))))) * var_1.x));
}

fn func_1() -> f32 {
    global0 = 1748f;
    var var_0 = func_2(~(~reverseBits(~vec2<u32>(u_input.b, 82825u))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(~var_0.a, var_0.a), var_0.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec2<u32>(var_0.a.x, 2515u)).b)));
    var var_2 = ~_wgslsmith_clamp_vec2_u32(var_0.a.yz, var_0.a.yx, vec2<u32>(abs(42825u), u_input.a) ^ vec2<u32>(countOneBits(var_1.a.x), abs(u_input.b)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1419f, _wgslsmith_f_op_f32(f32(-1f) * -672f), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))))), _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(f32(-1f) * -881f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1581f)), var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.b)) + var_0.b) + var_1.b), var_1.b);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1760f + var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2448f, 904f)) + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_2(vec4<i32>(abs(countOneBits(1i)), ~u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 23730i) & vec3<i32>(u_input.d, u_input.e, -23076i), vec3<i32>(u_input.e, u_input.e, u_input.c)), -4179i) | -countOneBits(vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i)), ~max(-1i, ~u_input.d), select(max(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 1u, u_input.a), vec4<u32>(1u, u_input.b, u_input.a, u_input.b), vec4<bool>(false, true, var_0.x, true)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 4294967295u, 33956u))), vec4<u32>(1u, u_input.a & 42384u, 0u, countOneBits(u_input.b))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, 1u), vec4<u32>(8344u, u_input.b, 4294967295u, 4466u))), !vec4<bool>(!var_0.x, all(vec2<bool>(var_0.x, false)), true, select(false, var_0.x, true))), Struct_1(reverseBits(64207i & u_input.e) >> (~(u_input.b | u_input.b) % 32u)));
    var var_2 = ~select(_wgslsmith_mult_u32(var_1.c.x, var_1.c.x) << (u_input.a % 32u), _wgslsmith_div_u32(90887u, var_1.c.x), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), var_0.x), !var_0.x)));
    let var_3 = select(select(!vec3<bool>(true, var_0.x, true), vec3<bool>(-231f <= _wgslsmith_f_op_f32(trunc(-919f)), true, !var_0.x | true), true), select(vec3<bool>(var_0.x, true, true), !select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), false)), !select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false)))), select(vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(var_0.x, false, false)), false), vec3<bool>(!var_0.x, (var_1.c.x > u_input.b) || true, false), all(!(!vec4<bool>(true, var_0.x, var_0.x, true)))));
    let var_4 = Struct_1(~reverseBits(u_input.e) ^ u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(~(var_1.c.x >> (4294967295u % 32u)), ~(var_1.c.x >> (0u % 32u))), ~_wgslsmith_mult_u32(~5594u, 4294967295u << (u_input.b % 32u))), vec2<u32>(u_input.a, abs(var_1.c.x)), u_input.b);
}

