struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    return select(!(!arg_0.c), !(!vec2<bool>(arg_0.c.x, arg_0.b.e.x)), true);
}

fn func_2(arg_0: f32) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(f32(-1f) * -507f)), -1672f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -764f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1795f, arg_0, -127f), vec3<f32>(-1000f, arg_0, 1373f), vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, _wgslsmith_f_op_f32(-497f * 417f)))), ~(-1i), u_input.a, select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), true), vec2<bool>(true, true), true), vec2<bool>(false, any(vec3<bool>(true, true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)));
    var_0 = Struct_1(-248f, var_0.b, _wgslsmith_mult_i32(30272i, -1i), u_input.a, func_3(Struct_2(vec3<bool>(true, var_0.e.x || false, var_0.e.x), Struct_1(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, -2512f, -349f))), abs(-13995i), vec2<i32>(var_0.d.x, 1271i), !var_0.e), vec2<bool>(var_0.e.x, var_0.e.x))));
    var_0 = Struct_1(411f, var_0.b, 40324i, ~vec2<i32>(_wgslsmith_mod_i32(~(-1i), ~(-2147483647i)), select(~(-2147483647i), _wgslsmith_clamp_i32(2147483647i, var_0.c, -1i), any(vec4<bool>(true, true, var_0.e.x, var_0.e.x)))), !vec2<bool>(countOneBits(u_input.c) != select(u_input.c, u_input.c, var_0.e.x), true != var_0.e.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -525f))), _wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, 551f)) * _wgslsmith_f_op_f32(-532f - 1807f)))));
    var_0 = Struct_1(890f, _wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, var_1.x, var_1.x)))))), -max(~var_0.c, var_0.d.x), vec2<i32>(var_0.d.x | var_0.c, ~var_0.d.x), !(!select(select(var_0.e, var_0.e, var_0.e), vec2<bool>(false, false), !vec2<bool>(false, var_0.e.x))));
    return var_0.d;
}

fn func_1() -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-268f, -915f))))), -1109f, _wgslsmith_f_op_f32(f32(-1f) * -342f));
    let var_1 = firstLeadingBit(func_2(567f));
    var var_2 = ~firstTrailingBit(~vec4<u32>(~u_input.c, 0u, 2988u, ~1u));
    var_2 = ~firstLeadingBit(countOneBits(~reverseBits(vec4<u32>(u_input.b, 0u, var_2.x, u_input.c))));
    var_2 = ~(vec4<u32>(u_input.b, ~var_2.x, 4294967295u, ~(~var_2.x)) | vec4<u32>(countOneBits(1u << (var_2.x % 32u)), 8912u, firstTrailingBit(max(112897u, 27936u)), u_input.c));
    return _wgslsmith_f_op_f32(abs(-233f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(u_input.b, u_input.b, ~(~(~u_input.c)) & _wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.c, 4294967295u), 1u), u_input.c);
    var var_1 = arg_3;
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1124f)), arg_1.a, _wgslsmith_f_op_f32(floor(arg_2))))), min(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -17160i, arg_1.d.x, arg_1.c)), ~vec4<i32>(var_1.b.c, arg_3.b.d.x, 25736i, 1i)), _wgslsmith_div_i32(-2147483647i, 1i)) & 0i, _wgslsmith_clamp_vec2_i32(arg_3.b.d, var_1.b.d, vec2<i32>(var_1.b.d.x, arg_1.c)), var_1.c);
    var_1 = arg_3;
    var_1 = arg_3;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<bool>) -> bool {
    let var_0 = arg_0.c.x;
    var var_1 = u_input.c;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.b.a)), arg_1.b.a)) + -1000f)), arg_0.b.b.x);
    let var_3 = 3004f;
    let var_4 = arg_1.c.x;
    return func_4(var_3, arg_1.b, _wgslsmith_f_op_f32(-var_3), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a * -825f)), arg_1.b, arg_0.b.a, Struct_2(!select(vec3<bool>(false, arg_0.c.x, true), vec3<bool>(true, arg_2.x, true), arg_2), arg_1.b, !arg_2.xz))).b.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1024f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2468f, 528f, -942f) * vec3<f32>(1415f, 577f, 389f)) + vec3<f32>(-522f, -664f, 1000f))) + vec3<f32>(1216f, -1289f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1164f)))))), ~(~1i) << (_wgslsmith_mult_u32(firstTrailingBit(u_input.c) | _wgslsmith_dot_vec2_u32(vec2<u32>(79897u, u_input.c), vec2<u32>(22885u, 4294967295u)), 26751u) % 32u), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(abs(firstLeadingBit(vec2<i32>(5588i, u_input.d.x))), ~vec2<i32>(13863i, u_input.a.x)), ~vec2<i32>(0i & u_input.a.x, u_input.d.x & 2147483647i)), !vec2<bool>(all(vec4<bool>(true, true, true, true)) & true, !all(vec2<bool>(true, true))));
    let var_1 = ((u_input.c << (u_input.b % 32u)) <= (u_input.b ^ u_input.b)) | var_0.e.x;
    var_0 = Struct_1(291f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), -1740f, -1258f)))), u_input.d.x, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.d.x), vec2<i32>(7832i, _wgslsmith_dot_vec2_i32(u_input.d, var_0.d) | 2147483647i)), vec2<bool>(false, func_5(func_4(_wgslsmith_f_op_f32(-var_0.b.x), Struct_1(var_0.a, vec3<f32>(var_0.a, var_0.a, var_0.a), 2147483647i, vec2<i32>(2147483647i, -9570i), vec2<bool>(var_1, var_1)), _wgslsmith_f_op_f32(func_1()), Struct_2(vec3<bool>(var_1, true, false), Struct_1(-750f, vec3<f32>(275f, 1642f, var_0.a), 22449i, var_0.d, var_0.e), var_0.e)), func_4(var_0.a, func_4(var_0.a, Struct_1(var_0.b.x, var_0.b, var_0.d.x, vec2<i32>(u_input.d.x, u_input.a.x), var_0.e), -1742f, Struct_2(vec3<bool>(var_1, var_0.e.x, var_0.e.x), Struct_1(var_0.a, var_0.b, u_input.d.x, vec2<i32>(var_0.d.x, var_0.d.x), var_0.e), vec2<bool>(false, var_1))).b, -322f, func_4(var_0.a, Struct_1(-1846f, vec3<f32>(var_0.b.x, var_0.b.x, -755f), -2147483647i, u_input.d, var_0.e), -474f, Struct_2(vec3<bool>(true, var_0.e.x, var_0.e.x), Struct_1(var_0.b.x, vec3<f32>(2686f, var_0.a, var_0.b.x), u_input.d.x, vec2<i32>(-67891i, var_0.d.x), vec2<bool>(false, true)), vec2<bool>(var_1, var_0.e.x)))), select(!vec3<bool>(false, true, var_0.e.x), select(vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, true), vec3<bool>(true, var_1, var_1)), func_4(var_0.a, Struct_1(var_0.b.x, var_0.b, 7737i, var_0.d, var_0.e), 262f, Struct_2(vec3<bool>(var_0.e.x, false, var_0.e.x), Struct_1(var_0.b.x, vec3<f32>(-380f, 555f, var_0.b.x), u_input.d.x, vec2<i32>(u_input.a.x, 2147483647i), vec2<bool>(var_1, false)), vec2<bool>(false, var_0.e.x))).a), select(vec3<bool>(true, true, true), vec3<bool>(var_1, false, var_0.e.x), true))));
    let var_2 = _wgslsmith_dot_vec3_i32(-countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_0.d.x, var_0.c), vec3<i32>(1903i, 37564i, 12088i))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, var_0.d.x), var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-47615i, -2147483647i), vec2<i32>(-2147483647i, -16414i))), -(~vec3<i32>(var_0.c, var_0.c, u_input.d.x)))) >> (189u % 32u);
    var var_3 = var_0.b.x;
    var_0 = func_4(-1013f, func_4(-435f, Struct_1(966f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-196f, -511f, var_0.b.x))), -513i, firstTrailingBit(var_0.d), var_0.e), _wgslsmith_f_op_f32(func_1()), Struct_2(!vec3<bool>(var_1, var_1, true), func_4(-1110f, Struct_1(-1137f, vec3<f32>(var_0.a, 205f, var_0.b.x), u_input.d.x, u_input.a, var_0.e), 1011f, func_4(-375f, Struct_1(-213f, vec3<f32>(-868f, 763f, var_0.b.x), var_0.d.x, vec2<i32>(-2147483647i, -2147483647i), var_0.e), var_0.a, Struct_2(vec3<bool>(var_0.e.x, var_1, var_0.e.x), Struct_1(var_0.b.x, vec3<f32>(var_0.a, 2370f, -1239f), 1i, var_0.d, var_0.e), vec2<bool>(var_0.e.x, var_1)))).b, vec2<bool>(true, true))).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b.x)))), Struct_2(func_4(1313f, Struct_1(1f, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), ~var_0.d.x, vec2<i32>(2147483647i, u_input.a.x) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), func_4(var_0.a, Struct_1(var_0.a, var_0.b, 17971i, vec2<i32>(-64308i, u_input.a.x), var_0.e), var_0.b.x, Struct_2(vec3<bool>(var_1, var_1, true), Struct_1(-1000f, var_0.b, var_2, vec2<i32>(-7312i, -2147483647i), vec2<bool>(var_0.e.x, true)), vec2<bool>(var_0.e.x, var_1))).a.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(floor(var_0.a))), Struct_2(func_4(-236f, Struct_1(-1000f, var_0.b, u_input.a.x, vec2<i32>(var_0.c, -1i), var_0.e), var_0.a, Struct_2(vec3<bool>(var_1, var_0.e.x, false), Struct_1(var_0.b.x, vec3<f32>(var_0.b.x, var_0.a, var_0.b.x), var_0.d.x, u_input.a, vec2<bool>(true, true)), vec2<bool>(false, false))).a, func_4(464f, Struct_1(-444f, vec3<f32>(-618f, 205f, var_0.b.x), var_2, u_input.a, var_0.e), var_0.b.x, Struct_2(vec3<bool>(var_0.e.x, true, var_1), Struct_1(var_0.b.x, var_0.b, 0i, var_0.d, vec2<bool>(false, false)), vec2<bool>(false, true))).b, vec2<bool>(true, var_1))).a, func_4(_wgslsmith_f_op_f32(-1000f * 2499f), Struct_1(var_0.b.x, vec3<f32>(-1590f, var_0.b.x, var_0.a), _wgslsmith_mult_i32(-2551i, var_0.c), vec2<i32>(0i, var_2), func_3(Struct_2(vec3<bool>(false, var_1, var_1), Struct_1(-820f, vec3<f32>(125f, var_0.b.x, var_0.b.x), var_2, u_input.d, var_0.e), vec2<bool>(false, var_1)))), var_0.b.x, Struct_2(!vec3<bool>(var_0.e.x, false, var_1), func_4(-1400f, Struct_1(614f, var_0.b, 0i, var_0.d, vec2<bool>(true, true)), var_0.b.x, Struct_2(vec3<bool>(false, var_1, var_0.e.x), Struct_1(-488f, vec3<f32>(var_0.a, var_0.b.x, -134f), var_2, vec2<i32>(var_2, 26476i), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, true))).b, vec2<bool>(true, true))).b, var_0.e)).b;
    var_3 = var_0.b.x;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(-var_0.b.x), Struct_1(var_0.a, var_0.b, 2147483647i, vec2<i32>(-2147483647i, var_0.c), vec2<bool>(false, true)), _wgslsmith_f_op_f32(-var_0.a), func_4(267f, Struct_1(var_0.b.x, var_0.b, u_input.a.x, u_input.d, vec2<bool>(var_0.e.x, false)), var_0.b.x, Struct_2(vec3<bool>(true, true, var_1), Struct_1(-349f, vec3<f32>(var_0.a, var_0.a, var_0.b.x), var_2, vec2<i32>(-2147483647i, var_0.c), vec2<bool>(var_1, var_1)), var_0.e))).b.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)))), vec3<f32>(_wgslsmith_div_f32(var_0.a, -1087f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(ceil(-785f))), 1335f))), max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2, -24189i), var_0.d.x), var_0.d.x) << (reverseBits(0u) % 32u), vec2<i32>(~countOneBits(-1i), u_input.d.x) << (reverseBits(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 32231u)), select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(43184u, 16989u), var_0.e))) % vec2<u32>(32u)), !select(vec2<bool>(u_input.c <= 4294967295u, !var_0.e.x), !var_0.e, var_1));
    let var_4 = ~vec4<u32>(max(0u, u_input.b), _wgslsmith_mod_u32(1u, ~u_input.b), 1u, max(abs(0u), _wgslsmith_div_u32(firstLeadingBit(u_input.b), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.b, ~var_4.x));
}

