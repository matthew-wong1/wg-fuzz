struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, arg_2, arg_1.a)) * arg_2);
    let var_1 = Struct_3(Struct_1(firstLeadingBit(~(~73795u))), Struct_1(u_input.d), true & !(arg_2 > _wgslsmith_f_op_f32(f32(-1f) * -625f)));
    let var_2 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(8742i, 2147483647i, 0i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 135714u, 0u), vec3<u32>(0u, 6947u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-29051i, 19932i, 1i), var_1.c), reverseBits(vec3<i32>(0i, max(-62489i, -1i), firstTrailingBit(0i)))) & (0i ^ firstLeadingBit(select(-46382i, _wgslsmith_mod_i32(1276i, 2713i), false)));
    let var_3 = Struct_5(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_2, var_2, -25902i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 3927i, -2147483647i), vec4<i32>(-1i, 1i, var_2, var_2), vec4<i32>(var_2, 0i, var_2, var_2)), vec4<i32>(min(var_2, -2147483647i), _wgslsmith_sub_i32(var_2, 33212i), var_2, var_2)), -1149f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0), 552f, _wgslsmith_f_op_f32(step(var_0, 429f)), -1099f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, var_0, var_0, arg_2))))))));
    var var_4 = vec3<bool>(select(all(select(!vec2<bool>(false, var_1.c), select(vec2<bool>(true, false), vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, true)), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.a), var_1.c))), false, false), arg_1.a, true);
    return _wgslsmith_clamp_i32(-6936i, -1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(var_2, -39948i)), 44135i)) ^ ~select(2147483647i, reverseBits(-var_2), var_4.x);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> bool {
    let var_0 = Struct_5(vec4<i32>(countOneBits(1i), 4843i, -21577i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-4838i << (u_input.e % 32u), func_3(u_input.a.x, Struct_2(false), 244f)), ~(-1i >> (u_input.b % 32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -551f))), vec4<f32>(_wgslsmith_f_op_f32(-227f - _wgslsmith_f_op_f32(363f - 2093f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-574f)), _wgslsmith_f_op_f32(trunc(-229f)))), 838f, 1106f));
    let var_1 = Struct_3(Struct_1(~4294967295u), Struct_1(1u), false);
    var var_2 = Struct_1(var_1.a.a);
    let var_3 = select(-max(vec2<i32>(1i, var_0.a.x), _wgslsmith_add_vec2_i32(max(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a.yw), var_0.a.yy)), vec2<i32>(firstLeadingBit(-2147483647i), var_0.a.x), !(!(~var_2.a > 30899u)));
    let var_4 = var_0.a;
    return any(arg_1);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = vec4<bool>(select(false, true, true) && any(vec4<bool>(true, true, func_2(true, vec4<bool>(true, true, false, true)), true)), all(vec2<bool>(true, true)), !(!(_wgslsmith_dot_vec4_i32(vec4<i32>(-13992i, -2147483647i, -21535i, 25635i), vec4<i32>(-2147483647i, -12695i, -50439i, 1i)) == -58480i)), _wgslsmith_sub_u32(~abs(u_input.a.x), ~arg_0.a.x) > (1u << (1u % 32u)));
    var_0 = vec4<bool>(var_0.x, var_0.x, all(vec2<bool>(false, true)), var_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f * 787f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, -1286f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 2595f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 1187f)))), select(var_0.wy, select(vec2<bool>(var_0.x, true), var_0.xy, var_0.xy), !var_0.zw)))))));
    var var_2 = -abs(firstTrailingBit(-576i >> (u_input.c % 32u)));
    var_2 = _wgslsmith_clamp_i32(1i, reverseBits(max(-1950i, i32(-1i) * -566i)), _wgslsmith_add_i32(func_3(1u, Struct_2(var_0.x), 2490f), 1i ^ (2147483647i << (u_input.c % 32u)))) ^ _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(countOneBits(-57080i), 1i, 13497i), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(71124i, 1i), countOneBits(-1i)));
    return firstLeadingBit(u_input.a) & (abs(countOneBits(vec2<u32>(0u, arg_1.a))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(1u, abs(arg_1.a)), select(select(vec2<u32>(5485u, 1u), u_input.a, var_0.zx), vec2<u32>(4294967295u, 13944u), select(var_0.xy, vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true)))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -1i, 12891i), select(-10144i, select(-60357i, -20726i, true), select(true, false, true))), countOneBits(_wgslsmith_div_i32(1i, ~(-14620i))), -2147483647i), 987f, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1062f, -1156f, -1762f, -288f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, 620f, -1208f, -445f) - vec4<f32>(-801f, 929f, -1089f, -529f)) - vec4<f32>(1315f, 151f, 1176f, -648f))))));
    let var_1 = !select(!vec3<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), false | all(vec3<bool>(false, true, false)), false));
    var var_2 = var_0.a.x;
    var var_3 = vec4<i32>(var_0.a.x >> (abs(u_input.b) % 32u), var_0.a.x, firstLeadingBit(~_wgslsmith_mod_i32(select(-2147483647i, 2147483647i, var_1.x), max(var_0.a.x, var_0.a.x))), 2128i);
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 51742u, u_input.d, u_input.e), vec4<u32>(u_input.d, 11097u, 9069u, 1u)), _wgslsmith_div_u32(u_input.b, u_input.a.x), true), 0u), (firstTrailingBit(u_input.a) | (vec2<u32>(u_input.c, u_input.e) >> (u_input.a % vec2<u32>(32u)))) ^ (func_1(Struct_4(vec2<u32>(u_input.e, u_input.e)), Struct_1(u_input.e)) | min(u_input.a, u_input.a))) ^ u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~4294967295u, func_1(Struct_4(~u_input.a), Struct_1(func_1(Struct_4(vec2<u32>(8797u, 1u)), Struct_1(var_4)).x)).x), reverseBits(-7142i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.c, vec4<f32>(-923f, var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))))));
}

