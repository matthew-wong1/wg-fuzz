struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    let var_0 = select(!(!vec2<bool>(1000f < arg_0.b.x, true)), select(!(!vec2<bool>(arg_0.a, false)), select(vec2<bool>(false, true), !vec2<bool>(false, arg_0.a), arg_0.a), arg_0.a), true);
    var var_1 = 0i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_3 = ~max(_wgslsmith_mod_vec3_i32(arg_1, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 16859i), abs(vec3<i32>(u_input.a, u_input.a, -41788i)))), ~(~vec3<i32>(2147483647i, 40785i, u_input.a) >> (countOneBits(vec3<u32>(1u, 1u, 84548u)) % vec3<u32>(32u))));
    var_1 = _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-21957i, 7505i, 19050i, var_3.x)), countOneBits(vec4<i32>(-3850i, var_3.x, arg_1.x, u_input.a)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.a, var_3.x, 14620i)), -(~vec3<i32>(-23345i, -2147483647i, var_3.x))), u_input.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(348f * _wgslsmith_f_op_f32(max(400f, _wgslsmith_f_op_f32(min(var_2.a, var_2.a))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a, -1763f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - -148f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-1204f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-415f)) + -527f))) - var_0), var_0);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1288f, 633f)), -494f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(func_3(Struct_5(true, vec4<f32>(arg_0, -528f, -804f, var_1.x)), vec3<i32>(7146i, -22905i, 5076i))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-1107f * 1262f)), _wgslsmith_f_op_f32(var_1.x + var_0))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), 1138f)));
    let var_2 = Struct_5(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 589f, -1039f, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2453f, 265f, -164f, var_1.x) + vec4<f32>(var_0, 794f, -348f, arg_0)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_0, -700f, var_1.x))))));
    let var_3 = Struct_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec3<u32>(1u, 1u, 1u)), arg_0, Struct_1(arg_0));
    return ~((55568u | var_3.a.x) ^ countOneBits(4294967295u));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = ~(~6317u);
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(min(vec3<u32>(86217u, 0u, 42123u), vec3<u32>(1u, 25585u, 0u))), ~vec3<u32>(1u, 10755u, 2420u)), ~(~(~vec3<u32>(40939u, 67865u, 59561u)))), _wgslsmith_sub_u32(reverseBits(~(~4294967295u)), min(func_2(-263f), ~139381u)), ~_wgslsmith_mod_u32(0u, ~28321u));
    var_0 = _wgslsmith_sub_u32(~_wgslsmith_div_u32(~var_1.x, firstTrailingBit(~var_1.x)), 51644u);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, arg_0.c.a, arg_0.c.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2512f, -423f, 122f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.a + arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(arg_0.a.x, -181f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a, 1100f, arg_0.c.a)))))))));
    var var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) * -734f)) < 1306f);
    return all(select(vec2<bool>(false, any(vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true))) == all(vec2<bool>(!(var_1.x < 38138u), true));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(1123f, arg_2.a, arg_1.x)), _wgslsmith_f_op_f32(-arg_2.a), arg_2.a)))));
    let var_1 = _wgslsmith_div_i32(u_input.a, select(u_input.a, 1i, false));
    let var_2 = vec4<u32>(26608u, 31875u, abs(20975u), max((_wgslsmith_sub_u32(31506u, 25056u) & select(4294967295u, 1u, arg_0)) | 99434u, ~_wgslsmith_mod_u32(1u, ~1u)));
    let var_3 = vec4<bool>(true, false, true, true);
    let var_4 = Struct_3(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), -858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - var_0.x)), 32354i, arg_2);
    return Struct_3(_wgslsmith_div_vec4_f32(var_4.a, var_4.a), _wgslsmith_div_i32(-11132i, var_1), var_4.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), all(vec3<bool>(true, false, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, -754f, 1000f, -1000f) - vec4<f32>(-1224f, 980f, 272f, -2202f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1127f, -1423f, -997f, 854f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(516f, 100f, 1198f, -667f) * vec4<f32>(151f, 494f, -205f, 1110f)))))), firstLeadingBit(1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1294f - -906f)))));
    var var_2 = min(vec3<u32>(1u, 1u, 1u), max(firstLeadingBit(~vec3<u32>(41197u, 1u, 0u)), vec3<u32>(_wgslsmith_mod_u32(11673u, 1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 50854u)) | 0u)));
    var_2 = vec3<u32>(~var_2.x, var_2.x, var_2.x);
    var var_3 = func_4(func_1(var_1), select(!vec3<bool>(!var_0.x, !var_0.x, true), !select(vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), any(var_0)), all(vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, var_2.x >= var_2.x, var_0.x))), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_5(false, vec4<f32>(-1463f, 859f, -262f, var_1.a.x)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, -4708i, 2147483647i), vec3<i32>(2147483647i, var_1.b, -2722i)))))));
    let var_4 = Struct_5(false, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-431f)), 143f, var_3.a.x, 341f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.a, var_1.c.a, var_3.c.a, -1006f), var_1.a)))))));
    var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(296f, _wgslsmith_f_op_f32(-1265f + var_3.a.x), var_1.a.x, _wgslsmith_div_f32(var_3.c.a, var_3.c.a))))), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, var_1.b, var_1.b) ^ vec3<i32>(u_input.a, -32321i, -20398i)) ^ vec3<i32>(abs(-52915i), u_input.a | 2147483647i, 1i), ~reverseBits(~vec3<i32>(1i, -2147483647i, var_1.b))), var_1.c);
    let var_5 = _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -abs(2147483647i)), _wgslsmith_add_i32(select(-1i, ~var_3.b, !var_0.x), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x >> (_wgslsmith_dot_vec2_u32(~abs(var_2.zy), vec2<u32>(1u, 4294967295u)) % 32u), firstTrailingBit(reverseBits(-countOneBits(vec2<i32>(-1i, var_1.b)))), _wgslsmith_f_op_f32(-var_3.c.a), vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1006f, 232f)) * 1000f)), var_2.x);
}

