struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<i32>) -> vec4<u32> {
    return ~firstTrailingBit(~(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x) | vec4<u32>(arg_0.x, arg_0.x, 1u, 1u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = Struct_1(i32(-1i) * -2147483647i, !((var_0.c.x | _wgslsmith_clamp_u32(35482u, 1u, arg_2.c.x)) >= arg_2.c.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.c.x, var_0.c.x), ~13205u), countOneBits(reverseBits(vec2<u32>(var_0.c.x, 15149u)))));
    var_0 = Struct_1(firstLeadingBit(i32(-1i) * -arg_1.a), select(true, arg_1.b, true & any(vec3<bool>(true, true, true))), arg_2.c);
    var var_2 = _wgslsmith_mod_i32(-(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.a, arg_1.a, arg_1.a), u_input.a)) << (((1u | var_1.c.x) | arg_2.c.x) % 32u)), reverseBits(max(u_input.a.x, -1i)));
    var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(40568i, -33296i, -2147483647i, -91430i), u_input.a) << (_wgslsmith_sub_vec4_u32(func_3(vec3<u32>(1u, arg_1.c.x, arg_1.c.x), vec4<bool>(false, arg_1.b, var_1.b, var_1.b), 115f, vec4<i32>(-2147483647i, -1i, 1i, u_input.a.x)), ~vec4<u32>(arg_2.c.x, 56474u, var_0.c.x, var_1.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-2147483647i, 63082i, var_0.a, arg_1.a)), reverseBits(vec4<i32>(arg_2.a, arg_2.a, 1i, arg_2.a))), u_input.a)), -35122i, -1i);
    return ~vec4<u32>(~arg_2.c.x, var_1.c.x, 1u, arg_2.c.x);
}

fn func_1() -> bool {
    var var_0 = Struct_1(~u_input.a.x, (_wgslsmith_dot_vec4_u32(vec4<u32>(68531u, 2973u, 8664u, 14136u), func_2(vec2<bool>(true, false), Struct_1(1i, false, vec2<u32>(1u, 37793u)), Struct_1(0i, true, vec2<u32>(1u, 32627u)))) | 13110u) < 3044u, ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(33148u, 0u))));
    var_0 = Struct_1(~abs(abs(i32(-1i) * -1i)), !(!(!(var_0.b & var_0.b))), ~_wgslsmith_div_vec2_u32(abs(min(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(38957u, var_0.c.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), vec3<u32>(4294967295u, var_0.c.x, var_0.c.x)), 1u)));
    var_0 = Struct_1(u_input.a.x, any(vec4<bool>(all(!vec2<bool>(var_0.b, var_0.b)), true, true, !(!var_0.b))), reverseBits(~vec2<u32>(4294967295u, 0u)));
    let var_1 = ~vec3<u32>(~_wgslsmith_mod_u32(~6003u, var_0.c.x), var_0.c.x, 0u);
    var_0 = Struct_1(-9781i, !(!var_0.b), vec2<u32>(59384u, 47103u));
    return var_0.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(~2147483647i, arg_0.x && any(vec3<bool>(!arg_1.b, 0u < arg_1.c.x, all(vec3<bool>(false, arg_1.b, false)))), arg_1.c);
    var var_1 = var_0;
    var_1 = Struct_1(reverseBits(u_input.a.x) << (_wgslsmith_div_u32(arg_1.c.x, var_0.c.x) % 32u), arg_0.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.c.x, ~var_1.c.x), vec2<u32>(~(~var_1.c.x), var_1.c.x)));
    var var_2 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 2636f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(737f + 1379f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2275f)))));
    var var_3 = ~max(var_0.c.x >> (min(arg_1.c.x, var_1.c.x) % 32u), ~(~var_0.c.x)) ^ _wgslsmith_add_u32(0u, arg_1.c.x);
    return select(vec4<bool>(var_1.b, true || (false && !var_0.b), !(true | var_0.b), true), select(vec4<bool>(_wgslsmith_div_f32(640f, var_2.x) >= -1121f, true, !(var_0.b | false), arg_0.x), !select(!vec4<bool>(true, false, true, var_1.b), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), vec4<bool>(var_0.b, var_1.b, true, true)), _wgslsmith_f_op_f32(round(var_2.x)) <= -1209f), -2147483647i != ((-1i & firstTrailingBit(var_1.a)) | -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(!func_1(), !(all(vec2<bool>(true, true)) && all(vec4<bool>(false, false, true, false)))), Struct_1(firstLeadingBit(abs(-33697i)), all(vec3<bool>(true, true, true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 24281u), vec2<u32>(1u, 1u))));
    var var_1 = Struct_1(-u_input.a.x, var_0.x, ~vec2<u32>(26443u, _wgslsmith_div_u32(0u, ~0u)));
    let var_2 = ~(~var_1.a) >> (_wgslsmith_sub_u32(max(_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(var_1.c.x, var_1.c.x)), 22380u), firstTrailingBit(~62121u) ^ ~4294967295u) % 32u);
    let var_3 = var_1.a;
    var_1 = Struct_1(~(~1i | reverseBits(min(var_2, 21466i))), all(var_0.yz), vec2<u32>(var_1.c.x, var_1.c.x));
    var_1 = Struct_1(-_wgslsmith_mult_i32(-41992i, -3007i), var_0.x, var_1.c);
    let var_4 = vec3<u32>(51571u, var_1.c.x, var_1.c.x);
    let var_5 = !select(vec3<bool>(true, var_1.b, all(vec2<bool>(var_0.x, var_1.b))), select(vec3<bool>(true, var_0.x, var_1.b), vec3<bool>(var_1.b, var_1.b, true), func_3(vec3<u32>(5436u, 0u, var_4.x), vec4<bool>(false, var_1.b, var_1.b, var_1.b), -369f, vec4<i32>(1i, var_1.a, 13345i, -2147483647i)).x < abs(7441u)), vec3<bool>(var_1.b, var_0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~var_1.c, var_1.c), min(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_4.x, 4294967295u, 37336u), vec4<u32>(39219u, var_4.x, var_4.x, 4294967295u)), ~vec4<u32>(var_4.x, 42886u, var_1.c.x, var_1.c.x), select(var_0, var_0, false)), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, var_4.x, 21488u, 4294967295u), vec4<u32>(var_4.x, var_1.c.x, 56651u, var_1.c.x)))));
}

