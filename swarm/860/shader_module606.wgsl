struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.d, u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 53857u, u_input.d), vec4<u32>(u_input.d, u_input.d, 35177u, 1u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 1u, 4294967295u) << (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), vec4<u32>(1u, u_input.d, 20918u, 46316u))));
    return select(vec3<bool>(any(vec3<bool>(any(vec3<bool>(false, true, false)), -46576i <= u_input.e, true)), false, false | !any(vec4<bool>(false, false, false, true))), select(!vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), !vec3<bool>(any(vec3<bool>(false, true, true)), true, any(vec4<bool>(false, true, false, false))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))), !vec3<bool>(true, !all(vec2<bool>(true, false)), any(vec2<bool>(true, false))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 2147483647i > u_input.c), true | any(vec3<bool>(true, false, true))), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(false, any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, true)))), true | ((u_input.d >= 0u) && true)), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), 4294967295u <= u_input.d), select(func_2(871f), vec3<bool>(true, false, true), func_2(arg_0.x)), true), vec3<bool>(!(u_input.d > u_input.d), true, _wgslsmith_f_op_f32(floor(-820f)) >= arg_0.x), false), !any(func_2(_wgslsmith_f_op_f32(f32(-1f) * -159f))));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(9528i), ~18125i, _wgslsmith_clamp_i32(u_input.c, -1i, 44215i), -30141i), vec4<i32>(1i, _wgslsmith_mod_i32(u_input.a, u_input.b.x), 1i, i32(-1i) * -2147483647i)) >> (vec4<u32>(u_input.d, 6377u & u_input.d, _wgslsmith_clamp_u32(~u_input.d, u_input.d, 1u), 6653u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-674f - arg_0.x), -1000f) - vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(max(1000f, 1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-240f)), -231f)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-var_1.b));
    let var_2 = !var_0;
    var var_3 = ~_wgslsmith_add_u32(42774u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.d, u_input.d), 1u));
    return Struct_2(var_1.a.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~(vec4<u32>(0u, 18457u, 84465u, u_input.d) ^ vec4<u32>(4294967295u, u_input.d, 36202u, 4294967295u)) << (vec4<u32>(1u << (0u % 32u), select(1u, u_input.d, true), countOneBits(u_input.d), 82u) % vec4<u32>(32u))), abs(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(49696u, 1u, 1u, u_input.d), ~vec4<u32>(u_input.d, u_input.d, 28320u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, 54494u, 0u)))));
    var var_1 = u_input.b;
    let var_2 = 349f <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-399f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(step(660f, arg_0)))) + arg_0));
    var_1 = vec2<i32>(func_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + arg_0))).a, ~arg_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 - -1835f), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-arg_0))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 613f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(307f + _wgslsmith_f_op_f32(sign(-261f)))))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(-arg_0))))));
    return Struct_1(firstLeadingBit(-(~vec4<i32>(arg_1, 8412i, arg_2.a, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, -266f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -974f)) + _wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(min(719f, 1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1633f), 1451f, all(vec4<bool>(false, true, true, true)))) - _wgslsmith_f_op_f32(abs(-1000f)))), select(-max(1i, 0i) ^ u_input.a, -(_wgslsmith_sub_i32(-2147483647i, u_input.a) << (1u % 32u)), true), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-640f, -1832f), vec2<f32>(174f, 1406f), false)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-206f, -1000f), vec2<f32>(-1190f, -574f)))))));
    var var_1 = vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-744f, _wgslsmith_f_op_f32(-1580f + var_0.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -456f));
    var_0 = Struct_1(~(~var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zy)));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(var_0.b.x, -795f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xw) - _wgslsmith_div_vec2_f32(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.b * var_0.b))))), true)));
    let var_3 = vec4<f32>(-1200f, 999f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1001f, -1077f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-357f))))) * var_0.b.x));
    var var_4 = !vec4<bool>(true, true, abs(u_input.d) <= ~u_input.d, !(!(u_input.e > -1i)));
    var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1490f, -511f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zz * vec2<f32>(var_0.b.x, var_3.x)) - vec2<f32>(var_3.x, var_0.b.x)))));
    var_2 = Struct_2(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(u_input.d, 0u, u_input.d, u_input.d) << (select(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(false, var_4.x, var_4.x, var_4.x)) % vec4<u32>(32u))) | vec4<u32>(39692u, 16179u, ~(~1u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d, 1u, 16577u)), vec3<u32>(0u, 22688u, u_input.d))), select(~select(-13245i & u_input.e, -28539i >> (u_input.d % 32u), any(vec2<bool>(var_4.x, true))), select(~(~var_2.a), var_2.a, var_4.x || false), all(select(vec2<bool>(true, var_4.x), !vec2<bool>(false, var_4.x), vec2<bool>(var_4.x, var_4.x)))));
}

