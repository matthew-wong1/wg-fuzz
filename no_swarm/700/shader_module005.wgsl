struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    var var_0 = false;
    var_0 = arg_1.x;
    var_0 = !(!all(arg_1.yy));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0.a), vec2<f32>(arg_0.a, arg_0.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, 380f) - vec2<f32>(1653f, -1183f))))) + vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)))));
    var_0 = arg_1.x;
    return ~_wgslsmith_mod_i32(u_input.a, -reverseBits(~16073i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a | _wgslsmith_sub_i32(u_input.a, -1i), func_3(Struct_2(-890f, 0u), vec4<bool>(false, false, true, false)) << (~1u % 32u)), -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 10994i), vec3<i32>(-1i, u_input.a, u_input.a)), vec3<i32>(41540i, -33854i, -23575i) ^ vec3<i32>(u_input.a, 5324i, u_input.a))), vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1266u, 27422u, 1u), vec4<u32>(4294967295u, 1u, 36844u, 1u), vec4<u32>(0u, 76539u, 0u, 47053u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 32226u, 0u, 123349u), vec4<u32>(18034u, 85655u, 4294967295u, 6000u)), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-5570i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, 74918i, -1058i)), -2147483647i), vec4<i32>(_wgslsmith_mult_i32(17106i, u_input.a), ~u_input.a, ~u_input.a, func_3(Struct_2(-1672f, 51767u), vec4<bool>(false, true, true, true)))) & vec4<i32>(-(u_input.a << (1u % 32u)), 1i, 3253i, u_input.a), 1674f, vec4<i32>(firstLeadingBit(1i), -_wgslsmith_mult_i32(u_input.a >> (45947u % 32u), u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -16471i, 57725i) | vec3<i32>(0i, u_input.a, 58818i), vec3<i32>(1i, -2147483647i, 0i)), _wgslsmith_div_i32(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + 333f) * -885f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.d)), _wgslsmith_f_op_f32(-var_0.d)), 1149f)));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = !(!vec4<bool>(!all(vec3<bool>(true, true, true)), true, !all(vec3<bool>(true, true, true)), true));
    let var_4 = all(var_3.xw);
    return var_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(arg_0.zyy));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_3.x, -1451f))))))), _wgslsmith_f_op_vec3_f32(arg_3 + arg_0.yyy)), _wgslsmith_f_op_vec3_f32(-arg_0.zxx), select(!vec3<bool>(select(true, false, true), true, true), vec3<bool>(select(any(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, false, false))), !(-1i < arg_2.a.x), true), all(vec4<bool>(false, true, -5569i <= arg_2.c.x, all(vec2<bool>(false, true)))))));
    let var_1 = ~countOneBits(10431u);
    var var_2 = abs(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_2.b.x, var_1), var_1, 0u), 779u, _wgslsmith_add_u32(abs(var_1), ~firstTrailingBit(19383u)), ~(~(0u << (arg_2.b.x % 32u)))));
    var_0 = arg_0.wwz;
    return abs(vec4<u32>(firstTrailingBit(4294967295u ^ var_2.x), 27667u, ~_wgslsmith_clamp_u32(var_2.x, ~var_2.x, firstTrailingBit(var_1)), 47394u & (var_2.x | var_1)));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec4<u32>(min(~1u >> (1u % 32u), firstLeadingBit(1u)), ~_wgslsmith_sub_u32(~abs(1u), ~_wgslsmith_div_u32(17715u, 4701u)), ~(~(~61426u) >> ((~4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(71219u, 1450u, 1u, 4294967295u), vec4<u32>(5864u, 4294967295u, 57582u, 4294967295u))) % 32u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(34573u, 69957u), 15925u, _wgslsmith_mult_u32(0u, 0u)) & 1u));
    var_0 = vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.x, var_0.x, var_0.x, 25165u)), ~vec4<u32>(68095u, var_0.x, var_0.x, var_0.x)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 1u), var_0.x), 4294967295u), 68383u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1583f, -462f, -1142f, -1251f) + vec4<f32>(2326f, -2143f, -1107f, -422f)), 2147483647i, func_2(), vec3<f32>(-925f, -1799f, -243f)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, 59428u, var_0.x), vec4<u32>(0u, var_0.x, 49549u, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u)))), ~_wgslsmith_mod_u32(1u, 6718u) & abs(var_0.x)), _wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_0.x), max(var_0.x, 17934u))));
    var var_1 = vec2<i32>(-30116i, select(~u_input.a, _wgslsmith_div_i32(0i | ~u_input.a, u_input.a), false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f));
    var_2 = 522f;
    return firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.wxy)), var_0.yxz)) & ~vec3<u32>(~(~var_0.x), var_0.x, ~func_4(vec4<f32>(134f, -175f, 720f, -895f), -28264i, Struct_1(vec3<i32>(2147483647i, u_input.a, -65894i), vec4<u32>(var_0.x, 45169u, 488u, 0u), vec4<i32>(var_1.x, -5329i, u_input.a, -1i), 240f, vec4<i32>(-12743i, u_input.a, 45036i, 2147483647i)), vec3<f32>(-707f, -1797f, 2963f)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a, select(u_input.a, _wgslsmith_sub_i32(u_input.a, select(~u_input.a, _wgslsmith_mod_i32(1i, -30482i), false)), false), 1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(664f, -127f)), _wgslsmith_div_f32(-1000f, -181f))), _wgslsmith_f_op_f32(411f - _wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-311f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.x), func_1());
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, 1108f)), -430f, 1f));
    var var_3 = min(vec4<i32>(u_input.a, var_0.x, ~2147483647i, firstTrailingBit(u_input.a ^ var_0.x)) << (select(~(~vec4<u32>(0u, 1u, 64835u, var_2.b.x)), vec4<u32>(var_2.b.x, func_4(vec4<f32>(var_2.a, var_2.a, var_2.a, 2435f), var_0.x, Struct_1(vec3<i32>(2147483647i, -2147483647i, 1i), vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x), vec4<i32>(u_input.a, u_input.a, var_0.x, var_0.x), 1889f, vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x)), vec3<f32>(var_1.x, 410f, -1000f)).x, min(3321u, var_2.b.x), func_2().b.x), any(vec3<bool>(true, true, true))) % vec4<u32>(32u)), vec4<i32>(min(var_0.x, reverseBits(select(2147483647i, var_0.x, false))), func_3(Struct_2(var_2.a, 4294967295u), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), u_input.a, 2147483647i));
    var var_4 = -(~_wgslsmith_add_vec4_i32(~(vec4<i32>(-2147483647i, var_0.x, 0i, -1i) << (vec4<u32>(var_2.b.x, 1u, 26459u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3.x, 1i, -2147483647i), -vec4<i32>(50255i, 72182i, -1i, var_3.x), min(vec4<i32>(2147483647i, 0i, var_3.x, 1i), vec4<i32>(var_0.x, 51507i, var_0.x, -3138i)))));
    let var_5 = all(!(!vec3<bool>(true, all(vec3<bool>(false, false, false)), any(vec2<bool>(false, false)))));
    var var_6 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1121f, -1307f, var_2.a))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(243f, 178f, 468f) - vec3<f32>(var_1.x, var_1.x, var_2.a))))) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(890f)), _wgslsmith_f_op_f32(min(var_1.x, -1218f)))), var_1.x))));
    let var_7 = 671f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2().d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6.x, -776f)) + var_7)), ~func_2().b.xyy, ~58226u);
}

