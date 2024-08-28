struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 20373u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0.a;
    global0 = ~u_input.c;
    global0 = ~_wgslsmith_mod_u32(~u_input.c, _wgslsmith_div_u32(u_input.c, ~u_input.c)) >> (0u % 32u);
    var var_1 = u_input.c;
    global0 = _wgslsmith_dot_vec3_u32(~(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)))), firstTrailingBit(_wgslsmith_mult_vec3_u32(select(select(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(0u, 0u, 19727u), vec3<bool>(arg_2, true, arg_2)), vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(u_input.c, u_input.c, 67054u), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, false, true), arg_1)), select(~vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.c), select(vec3<bool>(arg_2, arg_1, arg_1), vec3<bool>(true, arg_1, false), true)))));
    return Struct_1(-5563i);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -771f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-737f + 947f));
    let var_1 = vec3<bool>(~countOneBits(_wgslsmith_mult_u32(1u, u_input.c)) == _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 26996u, 1u, u_input.c) ^ select(vec4<u32>(u_input.c, 35065u, 20498u, u_input.c), vec4<u32>(23750u, u_input.c, 17516u, 127044u), false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 12810u, u_input.c, u_input.c), vec4<u32>(3678u, 1u, 2631u, 1u)) | select(vec4<u32>(27104u, u_input.c, 6813u, u_input.c), vec4<u32>(u_input.c, u_input.c, 35415u, 0u), false)), _wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(-44148i)), max(u_input.b, 0i) | 0i) < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0, 47453i), vec3<i32>(arg_0, u_input.b, 60625i) ^ vec3<i32>(arg_2.a, arg_1, 0i)), vec3<i32>(arg_2.a, arg_2.a, arg_0) ^ firstLeadingBit(vec3<i32>(42153i, arg_0, arg_1))), any(vec2<bool>(true, any(vec4<bool>(true, false, true, true)) | true)));
    let var_2 = _wgslsmith_mod_i32(u_input.b, min(_wgslsmith_clamp_i32((-32139i >> (u_input.c % 32u)) & max(-1i, u_input.b), ~_wgslsmith_add_i32(arg_0, arg_2.a), arg_1), arg_1));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2307f)))) - -1742f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -952f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(291f + 417f) * _wgslsmith_div_f32(-1440f, 320f)))))));
    return vec3<u32>(~u_input.c, u_input.c, ~45410u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = func_3(u_input.a.x, max(~(-5586i), abs(abs(countOneBits(u_input.a.x)))), func_2(Struct_1(u_input.b), ~0u > (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 1u, 0u), vec4<u32>(4294967295u, 53500u, u_input.c, u_input.c)) & 93836u), true));
    let var_1 = -1000f > _wgslsmith_f_op_f32(-arg_0.x);
    global0 = var_0.x;
    let var_2 = var_0.xz;
    var var_3 = ~var_0.x;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -401f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = ~(~_wgslsmith_mult_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 8853u), vec2<u32>(u_input.c, u_input.c)), func_3(-26945i, arg_1.a, arg_1).zx, vec2<bool>(true, true)), vec2<u32>(4294967295u, u_input.c)));
    let var_1 = ~vec4<i32>(u_input.a.x, arg_1.a, reverseBits(-arg_1.a), _wgslsmith_sub_i32(min(-1i, abs(arg_1.a)), reverseBits(-2147483647i) | arg_1.a));
    var var_2 = func_2(Struct_1(-u_input.a.x >> (u_input.c % 32u)), _wgslsmith_mod_u32(firstLeadingBit(u_input.c & u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 0u) >> (vec2<u32>(61575u, 1u) % vec2<u32>(32u)), ~vec2<u32>(10005u, u_input.c))) <= reverseBits(_wgslsmith_mult_u32(~var_0.x, u_input.c | 8829u)), true);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1463f, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(round(-2730f)), arg_0.a.x))))));
    var_2 = arg_1;
    return -337f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f - 1564f) + _wgslsmith_f_op_f32(f32(-1f) * -520f)), _wgslsmith_f_op_f32(func_4(func_1(vec2<f32>(-1074f, 1000f)), func_2(Struct_1(u_input.a.x), false, true))), _wgslsmith_f_op_f32(473f - 1214f), 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1771f, -905f, 896f, -600f) * vec4<f32>(-136f, -1000f, -214f, -238f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-750f, -517f, -2149f, -879f) * vec4<f32>(-2161f, -426f, -954f, -374f)))))));
    var var_1 = false;
    let var_2 = func_2(func_2(func_2(Struct_1(-u_input.b), true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)))), firstTrailingBit(0u) < _wgslsmith_div_u32(~u_input.c, 45476u), !(!(2449u >= u_input.c))), true, all(vec4<bool>(true, true, true, false)));
    var var_3 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-2159f - var_0.x)), select(vec2<bool>(true, true), vec2<bool>(u_input.c > u_input.c, u_input.c == u_input.c), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), _wgslsmith_mod_i32(var_2.a, 1i) > 1i));
    var_3 = !any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1u));
}

