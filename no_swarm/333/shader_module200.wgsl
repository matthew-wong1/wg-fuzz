struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(199f, -719f, -851f, 1186f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1041f, -787f, 277f, -298f))), vec4<f32>(_wgslsmith_f_op_f32(1808f * -1086f), _wgslsmith_f_op_f32(max(-2051f, 587f)), -456f, -860f))));
    var var_1 = _wgslsmith_mult_vec3_u32(~abs(~max(vec3<u32>(0u, 9678u, 11009u), vec3<u32>(1u, 13695u, 4294967295u))), ~vec3<u32>(u_input.a, max(u_input.a << (11824u % 32u), ~u_input.a), 25986u));
    let var_2 = _wgslsmith_div_i32(abs(select(~1i, -35393i, true)), _wgslsmith_add_i32(max(1576i, -_wgslsmith_mod_i32(-28541i, 23966i)), i32(-1i) * -9245i));
    var var_3 = u_input.a;
    let var_4 = vec4<i32>(var_2, ~(~var_2), var_2, _wgslsmith_div_i32(~_wgslsmith_clamp_i32(abs(-1i), -20547i, -2147483647i), var_2));
    return ~vec4<u32>(min(1u | ~u_input.a, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(var_1.x, 15343u)))), 55327u, countOneBits(~5748u), ~_wgslsmith_sub_u32(~var_1.x, ~u_input.a));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> bool {
    let var_0 = ~abs(18159u ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 12916u), _wgslsmith_div_u32(u_input.a, u_input.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1089f, arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x)))));
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(var_1.a)))) * vec4<f32>(-265f, var_1.a.x, _wgslsmith_f_op_f32(502f * arg_1.x), var_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(121f)) * arg_1.x);
    let var_3 = _wgslsmith_sub_i32(select(1i, select(1i, 1i, all(vec4<bool>(true, true, true, true))), true), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-91596i, -38210i), vec2<i32>(-1i, 0i)), _wgslsmith_mult_i32(1i, 14459i)), -firstTrailingBit(-54354i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-3240i, 246i, -13861i), vec3<i32>(15i, -1i, -1i), vec3<i32>(-1i, -14154i, 42829i)) | max(vec3<i32>(12034i, 0i, 0i), vec3<i32>(-20933i, -31023i, 47880i)), vec3<i32>(1i, 1i, 1i))));
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<bool>(true || all(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0)), true, func_4(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(29172u, 4294967295u, u_input.a, 4u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0, true, true, true)), func_3()), ~vec4<u32>(u_input.a, 20304u, u_input.a, u_input.a) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 12367u, 56132u, u_input.a), vec4<u32>(0u, u_input.a, 40027u, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1238f, 1379f, -127f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1381f, -1000f))))));
    let var_1 = countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), reverseBits(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(48154u, 114133u) % vec2<u32>(32u)))));
    var var_2 = ~(~func_3());
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(570f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -213f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(587f, 1f)), 553f)), (-(~arg_1) <= ~_wgslsmith_mod_i32(arg_1, -29087i)) && arg_0));
    let var_4 = ~1u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_3.x, 1695f, var_3.x) * vec4<f32>(var_3.x, var_3.x, 259f, -440f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 197f, -117f, var_3.x) + vec4<f32>(var_3.x, var_3.x, 772f, var_3.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -917f, 571f, var_3.x) - vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2(false, i32(-1i) * -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.zyw, _wgslsmith_f_op_vec3_f32(-var_0.a.zxx), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1000f))) - vec3<f32>(var_0.a.x, -745f, _wgslsmith_f_op_f32(-var_0.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.wyx) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wwz))))));
    let var_2 = vec3<bool>(any(vec3<bool>(true, true, true)), true, false);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1600f + -295f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 557f)), _wgslsmith_f_op_f32(abs(var_0.a.x))))), var_0.a.x, 2128f);
    let var_3 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0, 1i), arg_0), -1i), arg_0, 0i);
    return func_2(var_2.x | false, max(-91267i, firstLeadingBit(-1i)));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = ~reverseBits(firstLeadingBit(vec4<i32>(~(-17435i), _wgslsmith_clamp_i32(36762i, 2147483647i, 2147483647i), 4505i, 1i)));
    var_1 = -countOneBits(max(-vec4<i32>(var_1.x, 2147483647i, var_1.x, -6694i), -vec4<i32>(var_1.x, 1i, 956i, 624i))) | -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(33050i, var_1.x, var_1.x, 0i), vec4<i32>(var_1.x, var_1.x, 0i, 2147483647i)) & (vec4<i32>(1i, 0i, var_1.x, 1i) << (vec4<u32>(u_input.a, 54287u, 15381u, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, var_1.x, -2147483647i, var_1.x), reverseBits(vec4<i32>(var_1.x, var_1.x, 11872i, var_1.x))));
    var_1 = max(~(-min(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) | vec4<i32>(var_1.x, var_1.x, var_1.x, 1594i), -vec4<i32>(-2147483647i, var_1.x, -30639i, 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_1.x, -1i, 2147483647i, var_1.x)), ~reverseBits(vec4<i32>(var_1.x, var_1.x, -6165i, var_1.x) ^ vec4<i32>(0i, var_1.x, 1i, -2147483647i))));
    let var_2 = arg_0;
    return u_input.a;
}

fn func_6(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u >> (arg_0 % 32u), ~arg_0), arg_0));
    var var_1 = func_2(all(vec3<bool>(firstTrailingBit(-19934i) != ~0i, _wgslsmith_dot_vec3_u32(vec3<u32>(2740u, 38103u, u_input.a), vec3<u32>(4294967295u, 4798u, u_input.a)) > u_input.a, any(vec4<bool>(true, false, true, true)) & true)), 38790i);
    var var_2 = ~(vec2<u32>(1u << (countOneBits(u_input.a) % 32u), arg_0) << (firstTrailingBit(~vec2<u32>(arg_0, 3403u) ^ min(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u)));
    var_0 = vec2<u32>(var_2.x, func_5(func_2(func_4(vec4<u32>(1u, 28626u, 1u, arg_0), var_1.a.xyw), i32(-1i) * -7610i)));
    let var_3 = Struct_1(var_1.a);
    return func_2(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(18190u, 4294967295u, u_input.a, 34503u), select(vec4<u32>(arg_0, u_input.a, var_2.x, u_input.a), vec4<u32>(arg_0, var_0.x, 43269u, var_2.x), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, true)), ~(vec4<u32>(var_0.x, arg_0, 1u, var_2.x) << (vec4<u32>(u_input.a, var_2.x, arg_0, 4294967295u) % vec4<u32>(32u)))) < ~var_0.x, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(6424u, u_input.a, u_input.a, 0u)), vec4<u32>(u_input.a, u_input.a, 41671u, u_input.a)) | func_5(func_1(_wgslsmith_mod_i32(18943i, 6539i))), func_1(-11671i).a.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)) * var_0.a));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, 1333f, -301f, 1083f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a, var_0.a))) * vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) - 1597f), func_6(u_input.a, _wgslsmith_f_op_f32(round(-541f))).a.x, 871f)));
    var_0 = func_2(!(func_4(countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), func_2(true, -34342i).a.yyz) && true), 1i);
    var var_1 = Struct_1(var_0.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, var_0.a.x, var_0.a.x, 1545f))), _wgslsmith_f_op_vec4_f32(min(var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1493f, 1662f)), _wgslsmith_f_op_f32(abs(var_1.a.x)), var_1.a.x, func_1(-35937i).a.x)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, -100f, -318f, 1000f), _wgslsmith_f_op_vec4_f32(-var_0.a))), true))));
    let var_4 = vec2<u32>(u_input.a, firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13144u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(2715u << (u_input.a % 32u), u_input.a) << (abs(1u << (1u % 32u)) % 32u), ~_wgslsmith_div_u32(firstLeadingBit(var_4.x), ~var_4.x), ~(~u_input.a)));
}

