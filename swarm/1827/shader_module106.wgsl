struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(1u, firstLeadingBit(reverseBits(31957u))), reverseBits(~1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(83079u, 4294967295u, 20265u, 4993u), vec4<u32>(4294967295u, 4608u, 53566u, 39142u))), 1u) >> (firstTrailingBit(select(~max(vec4<u32>(76324u, 0u, 28008u, 4294967295u), vec4<u32>(1u, 0u, 66503u, 4294967295u)), max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(true, true, true, true))) % vec4<u32>(32u));
    let var_1 = select(select(vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<bool>(!any(vec2<bool>(true, false)), any(vec2<bool>(true, false)) | any(vec3<bool>(true, true, true))), vec2<bool>(true, true)), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), any(vec3<bool>(true, false, false))), true), vec2<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)) | true));
    var var_2 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_mod_i32(-3986i, arg_0.b), ~39420i), -max(arg_1.x, u_input.a.x) ^ ~(-2147483647i)));
    var var_3 = _wgslsmith_f_op_f32(round(1000f));
    var var_4 = vec4<bool>(var_1.x, var_0.x > abs(~_wgslsmith_add_u32(var_0.x, var_0.x)), !select(var_1.x, !(var_1.x | var_1.x), var_0.x > ~var_0.x), false);
    return _wgslsmith_div_i32(reverseBits(firstLeadingBit(_wgslsmith_sub_i32(1i, u_input.a.x))) | 1i, ~(-4729i));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<bool> {
    var var_0 = -1i;
    var var_1 = select(-u_input.a.wzy, countOneBits(u_input.a.yzw), arg_2);
    let var_2 = -1179f;
    let var_3 = arg_2;
    let var_4 = Struct_1(arg_0.a, min(_wgslsmith_mod_i32(func_3(arg_0, abs(vec2<i32>(u_input.a.x, -2147483647i))), arg_0.b), -12061i));
    return vec3<bool>(true, !(!var_3 && arg_2), var_3);
}

fn func_4(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1451f, 617f)))));
    let var_1 = -_wgslsmith_add_vec4_i32(u_input.a, select(~u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, -1i, -1i), u_input.a.x >= -2147483647i));
    let var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, var_0))))));
    var var_3 = _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(min(max(vec2<i32>(2147483647i, 10442i), vec2<i32>(32074i, u_input.a.x)), _wgslsmith_div_vec2_i32(var_1.yw, var_1.yx)), vec2<i32>(64702i, select(1i, u_input.a.x, true)))), u_input.a.zw);
    let var_4 = _wgslsmith_mod_u32(firstTrailingBit(reverseBits(94888u)), ~52393u);
    return ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_4, var_4, 45713u)), ~vec3<u32>(48097u, var_4, var_4), vec3<u32>(~0u, var_4, abs(var_4))) | ~_wgslsmith_div_vec3_u32(~(vec3<u32>(var_4, 4294967295u, var_4) & vec3<u32>(var_4, var_4, 0u)), (vec3<u32>(0u, var_4, var_4) | vec3<u32>(var_4, 92677u, 0u)) & abs(vec3<u32>(64523u, 1u, var_4)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = ~func_4(vec2<bool>(all(func_2(Struct_1(u_input.a.zy, 0i), u_input.a.x, false)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))));
    var_0 = ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 14649u, var_0.x), ~vec3<u32>(var_0.x, var_0.x, 0u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 272f, 117f))))) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), arg_0, arg_0 <= 870f))), 1f));
    let var_2 = func_2(Struct_1(-u_input.a.wy, countOneBits(14274i)), u_input.a.x, false).zz;
    let var_3 = Struct_2(Struct_1(select(_wgslsmith_sub_vec2_i32(~u_input.a.zw, u_input.a.zy), ~vec2<i32>(46928i, u_input.a.x), select(var_2.x, any(vec4<bool>(false, true, true, false)), !var_2.x)), u_input.a.x));
    return Struct_2(var_3.a);
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = select(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~4294967295u, 1u) ^ _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(75431u, 86703u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), select(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 38870u, 0u)), firstTrailingBit(vec3<u32>(69072u, 42724u, 0u))), vec3<u32>(reverseBits(1u), 0u, max(67042u, 80674u)), vec3<bool>(true, true, true))), func_4(vec2<bool>(true, all(vec2<bool>(false, true)))).x ^ firstLeadingBit(~0u), !any(vec3<bool>(true, true, true)));
    let var_1 = u_input.a;
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-752f, -278f))))).a;
    let var_3 = 0i;
    var var_4 = max(_wgslsmith_sub_u32(select(1727u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0, 1u), vec2<u32>(var_0, 0u), vec2<bool>(true, false)), vec2<u32>(4294967295u, var_0) ^ vec2<u32>(5368u, 4294967295u)), true), var_0), reverseBits(0u) >> (~(~var_0) % 32u));
    return StorageBuffer(~(~var_0), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-363f + 155f), -279f))), -376f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 363f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)), -608f)), vec3<f32>(-312f, 898f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(118f, 585f))))))));
    var var_1 = -11020i;
    var_1 = ~1i;
    var var_2 = select(vec3<bool>(false, !select(true, any(vec2<bool>(false, true)), true), (26023i < u_input.a.x) && true), select(!vec3<bool>(true, u_input.a.x >= u_input.a.x, true), !select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, false)), vec3<bool>(true, true, any(vec2<bool>(false, false)))), select(vec3<bool>(false, all(vec2<bool>(true, true)), var_0.x <= _wgslsmith_f_op_f32(floor(var_0.x))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)) && true)));
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 20175u, 72399u, 42565u), vec4<u32>(1u, 1u, 1u, 1u)), max(vec4<u32>(4294967295u, ~57569u, _wgslsmith_clamp_u32(61221u, 104924u, 1u), ~2461u), ~vec4<u32>(21919u, 32114u, 99772u, 37424u))));
    let x = u_input.a;
    s_output = func_5(func_1(-753f));
}

