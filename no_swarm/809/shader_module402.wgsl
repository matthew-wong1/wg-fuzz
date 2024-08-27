struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = countOneBits(min(~(~1u), abs(select(u_input.a.x, 0u, false) | 37274u)));
    let var_1 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, all(vec2<bool>(false, false))), true), true);
    var var_2 = Struct_1(max(~(~(vec3<i32>(-4425i, 31419i, -2147483647i) & vec3<i32>(u_input.b, 2147483647i, -23019i))), -_wgslsmith_add_vec3_i32(vec3<i32>(22902i, arg_0, u_input.b), -vec3<i32>(25379i, u_input.b, u_input.b))), i32(-1i) * -u_input.b, 34013u);
    var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, -17093i, 34921i, var_2.a.x), vec4<i32>(var_2.a.x, var_2.b, u_input.b, var_2.b)) | (~15393i & _wgslsmith_mod_i32(arg_0, arg_0)), i32(-1i) * -8345i, 15788i), max(countOneBits(-21788i), ~u_input.b), var_0);
    var_2 = Struct_1(var_2.a, u_input.b, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(1221u, ~55434u)));
    return -(~54323i);
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b >> (u_input.a.x % 32u), _wgslsmith_mult_i32(u_input.b, -10505i), 1i), vec3<i32>(u_input.b & -2147483647i, _wgslsmith_add_i32(u_input.b, u_input.b), firstLeadingBit(-59562i)));
    let var_1 = Struct_1(~vec3<i32>(var_0.x, -25337i, var_0.x), func_3(var_0.x), ~u_input.a.x);
    let var_2 = vec3<bool>(true, false, true);
    let var_3 = var_1;
    let var_4 = 232f;
    return min(var_3.a, reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0.x, -17736i), abs(-44155i), var_0.x), -var_1.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -17391i, -21950i), min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, u_input.b, u_input.b))) | _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(40795i, 8390i, u_input.b), vec3<bool>(false, false, true)), vec3<i32>(u_input.b, u_input.b, u_input.b) << (u_input.a.zwx % vec3<u32>(32u)), func_2(vec3<f32>(-1166f, -105f, -1171f)))), 0i, u_input.a.x);
    var var_1 = max(var_0.a, vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(var_0.b), _wgslsmith_mod_i32(~0i, var_0.b | -2147483647i)), i32(-1i) * -8014i, _wgslsmith_dot_vec3_i32(-vec3<i32>(9542i, u_input.b, 36773i), var_0.a)));
    var_1 = ~abs(var_0.a);
    var_1 = firstTrailingBit(vec3<i32>(1i, 1i, 1i) >> (u_input.a.zxz % vec3<u32>(32u)));
    let var_2 = var_0;
    return Struct_1(-vec3<i32>(max(-19741i, var_1.x << (0u % 32u)), var_2.b, -49455i), min(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.x, u_input.b), abs(var_0.a.x), 1i)), ~max(-2147483647i, _wgslsmith_sub_i32(1i, 22750i))), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(57509u);
    let var_1 = countOneBits(firstLeadingBit(vec3<i32>(-2147483647i, ~1i << (var_0 % 32u), reverseBits(1i))));
    let var_2 = arg_1;
    let var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), false), vec3<bool>(false, all(vec4<bool>(true, true, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), ~4294967295u == _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.zw), u_input.a.yy));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(u_input.a ^ vec4<u32>(0u, 22756u, arg_1.c, 3585u)), vec4<u32>(~30150u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1.c, var_2.c, arg_1.c, 1u)), var_0, ~arg_0.c), vec4<u32>(~81970u, ~var_2.c, 4294967295u, 0u)), u_input.a & min(u_input.a, ~u_input.a)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.c, var_2.c << (arg_1.c % 32u), ~arg_1.c), arg_0.c) | _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(26464u, var_2.c), 1u), var_0));
    return ~19784u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1915f, 253f, -477f, 796f))), vec4<f32>(-1671f, _wgslsmith_f_op_f32(151f * -640f), -376f, 1f), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), true))) - vec4<f32>(-185f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-784f + -2572f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-632f - _wgslsmith_f_op_f32(f32(-1f) * -662f)))));
    let var_1 = vec2<f32>(-387f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), 881f));
    let var_2 = _wgslsmith_mult_u32(countOneBits(14994u), abs(abs(abs(1u))));
    var var_3 = select(!vec3<bool>(true, true, var_0.x < var_0.x), vec3<bool>(any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true)), true, !any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)))), all(vec2<bool>(true && (var_0.x < 1011f), false)));
    var_3 = select(select(vec3<bool>(false, ~u_input.a.x > select(4294967295u, var_2, true), true), vec3<bool>(true, true, var_3.x), any(select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(var_3.x, true, true), true))), select(!vec3<bool>(!var_3.x, true, false), !select(select(vec3<bool>(false, false, var_3.x), vec3<bool>(true, true, true), vec3<bool>(true, var_3.x, false)), vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(true, true, true)), all(select(select(var_3.yx, vec2<bool>(var_3.x, var_3.x), vec2<bool>(false, var_3.x)), vec2<bool>(false, var_3.x), vec2<bool>(false, false)))), true);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_5(~vec2<u32>(_wgslsmith_div_u32(~0u, ~25574u), u_input.a.x), Struct_1(-vec3<i32>(1i, u_input.b, 10019i | u_input.b), 0i, ~func_4(func_1(), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(239f, -1000f, -302f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1583f, 922f, 820f, 836f)))))), u_input.a.yz, ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(83231u, u_input.a.x) | vec2<u32>(27230u, var_1.c), ~vec2<u32>(0u, 1u)), firstLeadingBit(min(u_input.a.zy, u_input.a.wy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2132f, 1440f) - vec2<f32>(-756f, -316f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1448f, 374f), vec2<f32>(1030f, -300f))), vec2<f32>(976f, -131f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1393f, -1508f)) - vec2<f32>(-209f, 909f)), vec2<f32>(_wgslsmith_f_op_f32(min(718f, -307f)), _wgslsmith_f_op_f32(trunc(508f)))))));
}

