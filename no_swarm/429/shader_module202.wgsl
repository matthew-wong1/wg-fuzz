struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = false;
    let var_1 = vec2<u32>(0u, ~(~_wgslsmith_clamp_u32(u_input.d.x, arg_0, 16694u))) & min(u_input.b.yx, _wgslsmith_mod_vec2_u32(u_input.b.zz, u_input.b.zx));
    return 51792u;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = -820f;
    var var_1 = func_2(select(reverseBits(vec4<i32>(abs(arg_2.c), -6900i, arg_2.c, arg_1)), vec4<i32>(u_input.c.x, i32(-1i) * -26561i, abs(2147483647i), -11969i), false), abs(firstTrailingBit(1u) << (max(arg_2.b.x, max(80784u, 31220u)) % 32u)), arg_2, vec2<bool>(!all(vec3<bool>(false, arg_2.a, arg_2.a)), ((21511i & u_input.e.x) <= u_input.e.x) == select(arg_2.a, arg_2.a, false)));
    var var_2 = countOneBits(vec2<u32>(var_1.b.x, max(~arg_0, ~(42664u << (u_input.b.x % 32u)))));
    var_1 = func_2(vec4<i32>(i32(-1i) * -1i, -2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e.x, -15258i, 2147483647i), vec3<i32>(arg_2.c << (4294967295u % 32u), 21318i, _wgslsmith_mod_i32(arg_2.c, arg_2.c))), -_wgslsmith_sub_i32(~(-2147483647i), 50080i)), 0u, arg_2, select(vec2<bool>(true, arg_2.a & var_1.a), select(vec2<bool>(false, true), !vec2<bool>(false, var_1.a), vec2<bool>(false, arg_2.a & true)), ~func_1(u_input.d.x) < var_1.b.x));
    let var_3 = arg_2;
    return !(1363f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 - var_0)))) || false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!func_3(func_1(4294967295u), u_input.e.x, func_2(vec4<i32>(8633i, u_input.c.x, u_input.e.x, u_input.c.x), u_input.d.x, Struct_1(false, vec3<u32>(10394u, 5733u, 4294967295u), -23348i), vec2<bool>(true, true))) && true, vec3<u32>(~4294967295u >> (~select(36564u, 0u, true) % 32u), 27769u, ~(~(~u_input.b.x))), 1i);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1129f)), -2070f)), ~(~(~_wgslsmith_div_vec3_u32(u_input.b, var_0.b))), min(-var_0.c, max(-69128i, ~(-14477i)) | firstTrailingBit(func_2(vec4<i32>(2147483647i, var_0.c, -2147483647i, u_input.c.x), 0u, Struct_1(var_0.a, vec3<u32>(1u, 90645u, 0u), -5115i), vec2<bool>(true, var_0.a)).c)));
    let var_1 = 361f;
    let var_2 = Struct_1(func_2(countOneBits(vec4<i32>(var_0.c, -var_0.c, ~var_0.c, -1i)), ~u_input.b.x, Struct_1(true, max(reverseBits(vec3<u32>(4294967295u, var_0.b.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), u_input.b)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.e.x, var_0.c)), _wgslsmith_clamp_i32(0i, u_input.e.x, var_0.c), true)), !vec2<bool>(u_input.c.x >= 0i, func_2(vec4<i32>(-29305i, u_input.e.x, var_0.c, var_0.c), u_input.b.x, Struct_1(var_0.a, vec3<u32>(4294967295u, var_0.b.x, 0u), var_0.c), vec2<bool>(false, var_0.a)).a)).a, ~u_input.d & vec3<u32>(_wgslsmith_dot_vec2_u32(~var_0.b.xy, vec2<u32>(var_0.b.x, var_0.b.x)), _wgslsmith_sub_u32(~1u, u_input.b.x), 0u), min(-26888i, reverseBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.c, 718i), -19443i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -572f, var_1), vec3<f32>(-704f, -212f, -586f), vec3<bool>(var_0.a, false, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1097f, var_1, var_1)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -246f, var_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) + vec3<f32>(var_1, 1652f, -988f)))))), -222f);
}

