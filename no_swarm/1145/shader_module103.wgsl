struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(0u, firstTrailingBit(abs(15041u)))), 8464u);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-219f, _wgslsmith_f_op_f32(select(194f, _wgslsmith_f_op_f32(min(-180f, 328f)), true))))))));
    var_0 = _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 81001u, 1u, 37479u), ~vec4<u32>(8016u, 4294967295u, 4294967295u, 1469u))), ~reverseBits(~reverseBits(0u)));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(1u, max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 63524u))))) > 8090u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1 - -809f), _wgslsmith_f_op_f32(ceil(1000f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2308f, var_1) - _wgslsmith_div_vec2_f32(vec2<f32>(-687f, 1430f), vec2<f32>(var_1, 111f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), vec2<f32>(155f, var_1)))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_3.a.x;
    var var_1 = select(vec4<bool>(any(arg_3.a), any(!vec3<bool>(true, false, arg_3.a.x)), all(!vec2<bool>(arg_3.a.x, true)), true || !arg_3.a.x), arg_3.a, vec4<bool>(true, select(all(arg_3.a), true, arg_3.a.x), all(!select(arg_3.a, vec4<bool>(true, false, arg_3.a.x, false), arg_3.a.x)), all(arg_3.a.zx)));
    var_0 = arg_3.a.x;
    var var_2 = Struct_1(arg_3.a);
    var var_3 = ~(~vec4<u32>(24890u, 69684u, ~(~4294967295u), countOneBits(arg_0)));
    return vec4<bool>((arg_0 != _wgslsmith_sub_u32(20581u, var_3.x)) & true, var_2.a.x, all(vec2<bool>(true || var_1.x, (arg_2.x >= arg_2.x) || true)), false);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-436f, -457f)) + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f), -809f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(875f)), _wgslsmith_f_op_f32(-110f - 1426f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1241f)), _wgslsmith_div_f32(410f, _wgslsmith_div_f32(1000f, -531f))))), -260f);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(753f * var_0.x), _wgslsmith_f_op_f32(169f + -180f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1543f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1380f - _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(902f, 827f, var_0.x, -620f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var var_1 = Struct_1(!func_4(_wgslsmith_mult_u32(~4294967295u, 1u), vec4<i32>(arg_0.x ^ arg_0.x, max(arg_0.x, u_input.a.x), arg_0.x, _wgslsmith_clamp_i32(-1i, u_input.d, u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, 683i, Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)))) - var_0.xw), Struct_1(vec4<bool>(true, true, true, true))));
    let var_2 = var_0.x;
    return all(vec2<bool>(-5411i == select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, -1i, arg_0.x), vec4<i32>(13181i, arg_0.x, 0i, u_input.c)), abs(-1i), var_1.a.x), false));
}

fn func_1() -> Struct_1 {
    var var_0 = any(vec2<bool>(true, !all(vec2<bool>(true, true))));
    var_0 = true;
    var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -672f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(707f)) * 499f))));
    var_0 = true;
    return Struct_1(!vec4<bool>(func_2(select(vec4<i32>(17973i, 2147483647i, u_input.b, 2147483647i), vec4<i32>(u_input.a.x, u_input.c, 16415i, u_input.c), true)), true, true, true));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(arg_2.a);
    var var_1 = abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(reverseBits(u_input.c), -1i, -1i), vec3<i32>(_wgslsmith_sub_i32(select(u_input.d, -33362i, arg_0.x), 1i), ~(-46363i), 70478i & (u_input.d & u_input.a.x))));
    let var_2 = func_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_1), 4294967295u), vec2<u32>(arg_1, 0u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(22499i, 1i), var_1.x >> (arg_1 % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(19868i, var_1.x, -2147483647i), vec3<i32>(2147483647i, u_input.a.x, -18414i))), abs(0i)), _wgslsmith_clamp_i32(firstLeadingBit(2147483647i), _wgslsmith_div_i32(15439i, u_input.a.x), firstLeadingBit(var_1.x)) ^ ~_wgslsmith_mult_i32(u_input.d, 35378i), u_input.a.x, ~(~(-1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(567f * 316f), -280f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - 695f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(502f, -433f), vec2<f32>(-601f, -1193f))))), func_1()).xyz;
    var_0 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(718f)))));
    return vec2<u32>(~abs(arg_1), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(max(1u, select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), ~vec4<u32>(4940u, 6832u, 1u, 0u)), ~65937u, true)), 4294967295u);
    var_0 = select(~func_5(vec3<bool>(true, true, false), ~66296u >> ((var_0.x >> (3598u % 32u)) % 32u), func_1()), ~(~vec2<u32>(0u, var_0.x)), vec2<bool>(true, true));
    var_0 = _wgslsmith_mod_vec2_u32(~(~select(vec2<u32>(var_0.x, var_0.x), func_5(vec3<bool>(false, false, true), var_0.x, Struct_1(vec4<bool>(false, true, false, true))), any(vec2<bool>(false, true)))), ~_wgslsmith_div_vec2_u32((vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(var_0.x, var_0.x)) << (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), ~(~vec2<u32>(var_0.x, var_0.x))));
    var_0 = select(~(~countOneBits(vec2<u32>(var_0.x, 0u))), reverseBits(~(~vec2<u32>(4294967295u, var_0.x))), all(vec3<bool>(var_0.x >= 105897u, false, false))) >> (~vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u));
    let var_1 = func_1();
    let var_2 = Struct_1(vec4<bool>(!any(vec4<bool>(var_1.a.x, false, true, var_1.a.x)) | true, var_1.a.x, true, (_wgslsmith_dot_vec4_u32(vec4<u32>(3179u, 0u, var_0.x, 0u), vec4<u32>(0u, var_0.x, var_0.x, 32369u)) << (var_0.x % 32u)) >= _wgslsmith_div_u32(reverseBits(51814u), var_0.x)));
    var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 10273u), vec2<u32>(0u, 9407u))) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, ~var_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 4294967295u) ^ vec2<u32>(4222u, var_0.x), vec2<u32>(var_0.x, 14112u))), vec2<u32>(0u & select(var_0.x ^ var_0.x, abs(var_0.x), !var_1.a.x), ~var_0.x));
    var var_3 = all(var_2.a.wyx);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, reverseBits(63696i)), u_input.a | firstLeadingBit(u_input.a)), ~(i32(-1i) * -38404i));
}

