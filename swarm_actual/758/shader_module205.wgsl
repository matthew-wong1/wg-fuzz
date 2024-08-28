struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-arg_2);
    var var_2 = 1i;
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(arg_0, var_3.x, 6631u), var_3.x);
    return -(~u_input.c.x) & -15868i;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.yzw);
    var var_1 = Struct_2(Struct_1(vec3<i32>(~(-6787i), _wgslsmith_mult_i32(u_input.e.x << (u_input.a.x % 32u), _wgslsmith_mult_i32(u_input.d, u_input.d)), _wgslsmith_add_i32(func_3(u_input.b.x, -32710i, -114f, vec4<bool>(false, false, true, true)), ~u_input.e.x))), Struct_1(u_input.e), _wgslsmith_f_op_vec3_f32(arg_0.zxz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-706f)), _wgslsmith_f_op_f32(round(arg_0.x)), -353f))));
    let var_2 = vec4<i32>(-var_1.a.a.x, _wgslsmith_mult_i32(-22858i, -23438i), 2147483647i, -(select(select(15492i, var_1.a.a.x, true), ~u_input.e.x, var_1.b.a.x <= -2147483647i) | abs(2147483647i)));
    var_1 = Struct_2(Struct_1(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(21116i, 1i, 1i))), var_1.b, _wgslsmith_f_op_vec3_f32(round(var_1.c)));
    let var_3 = true;
    return var_1.b;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_1(~abs(select(u_input.e, u_input.e, false)) ^ ~vec3<i32>(~u_input.d, ~(-51332i), select(30392i, -24923i, arg_1)));
    var var_1 = 0u;
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1543f), -204f, _wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(1000f * -1142f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-393f, 678f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, -321f, 468f, -750f) * vec4<f32>(534f, 202f, -119f, 520f)))))));
    var_1 = 1u;
    var var_3 = vec2<i32>(2147483647i, -53427i);
    return !select(arg_1, all(!vec2<bool>(arg_1, arg_1)), !all(!vec3<bool>(true, false, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(min(u_input.e, vec3<i32>(-9328i, u_input.d, -1i)) << (firstLeadingBit(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - -1742f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-684f, var_2, -1191f, var_2) + vec4<f32>(var_2, -1919f, var_2, var_2))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, _wgslsmith_f_op_f32(var_2 + 571f), var_2), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, 372f, var_2, var_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1736f, 1149f, var_2, var_2) - vec4<f32>(2103f, -480f, var_2, 1717f)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)))), select(vec4<bool>(func_1(4294967295u, true, vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 73939u)), false, all(vec2<bool>(false, true)), false), vec4<bool>(true, true, true, true), false))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, var_2, var_2, 704f) + vec4<f32>(2220f, 143f, -970f, 888f)))) + vec4<f32>(var_2, _wgslsmith_f_op_f32(floor(305f)), _wgslsmith_f_op_f32(step(-299f, var_2)), _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -497f, -527f, 1012f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -525f, var_2, -574f) + vec4<f32>(-1400f, -150f, -904f, -631f)))), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)))));
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2)) * -1347f), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(374f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_3)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(var_3)), _wgslsmith_f_op_vec4_f32(min(var_3, var_3))))))));
    var_4 = var_1;
    var_4 = func_2(_wgslsmith_f_op_vec4_f32(-var_3));
    var var_5 = Struct_2(Struct_1(firstTrailingBit(select(vec3<i32>(u_input.d, var_0.a.x, 41337i), ~var_1.a, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))))), Struct_1(-_wgslsmith_sub_vec3_i32(var_0.a, u_input.e) & ~u_input.e), var_3.zyx);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) ^ (vec4<u32>(u_input.a.x, 31338u, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.a.x, 4294967295u, 27825u, 1u) % vec4<u32>(32u))), vec4<u32>(61769u, u_input.b.x, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(~var_4.a.x), var_5.b.a.x), reverseBits(_wgslsmith_div_i32(var_0.a.x ^ var_4.a.x, 47856i)), var_1.a.x), vec4<i32>(var_1.a.x, 18314i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-13424i, -28945i, var_0.a.x, 50703i), vec4<i32>(23849i, var_0.a.x, 49145i, var_5.a.a.x), vec4<bool>(false, false, false, true)), max(vec4<i32>(9616i, var_0.a.x, -17989i, 29922i), vec4<i32>(var_1.a.x, 0i, var_5.b.a.x, var_4.a.x))), -vec4<i32>(var_4.a.x, u_input.d, var_1.a.x, -2147483647i)), ~(~var_4.a.x)), 0i);
}

