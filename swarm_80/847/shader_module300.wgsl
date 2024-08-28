struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1219f, 865f, -813f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-309f, 202f, 421f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(738f, 849f, 104f))), !vec3<bool>(false, arg_0.x, arg_0.x)))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(-arg_2.a), _wgslsmith_mod_vec2_i32(firstTrailingBit(arg_2.a), u_input.c.ww)));
    var var_2 = arg_2;
    var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    return all(!vec3<bool>(!(51986u != u_input.a), arg_0.x, _wgslsmith_clamp_i32(var_2.a.x, 0i, 2147483647i) < 2147483647i));
}

fn func_3(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, 1u, 0u)), ~vec4<u32>(37672u, 11896u, u_input.a, u_input.a), ~vec4<u32>(10817u, u_input.a, 41411u, u_input.a)), ~vec4<u32>(19228u, 0u, u_input.a, 1u)));
    let var_1 = vec2<u32>(93473u, ~var_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, -599f)))), vec2<f32>(861f, _wgslsmith_f_op_f32(-1000f - 1000f)), select(vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a), any(vec4<bool>(arg_0.a, true, arg_0.a, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2010f, -123f) + vec2<f32>(1028f, -1485f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, -1970f)))), true)));
    var_0 = abs(abs(~vec4<u32>(4294967295u, select(0u, 83474u, arg_0.a), countOneBits(var_1.x), 13609u)));
    let var_3 = Struct_1(-vec2<i32>(abs(u_input.c.x), -firstTrailingBit(33927i)));
    return vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (var_0.x % 32u), _wgslsmith_clamp_u32(1u, 515u, 38031u), 4294967295u), abs(vec3<u32>(var_0.x, u_input.a, var_1.x))), ~_wgslsmith_mult_u32(~u_input.a, abs(4294967295u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~1u), _wgslsmith_mult_u32(countOneBits(2233u), max(u_input.a, var_0.x))), max(~var_1.x, var_1.x)), 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(reverseBits(4294967295u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.x, 33423u, var_0.x), vec4<u32>(8904u, 0u, 0u, u_input.a))), vec3<u32>(~var_0.x, 4294967295u, u_input.a), true), _wgslsmith_sub_vec3_u32(select(var_0.zzy, firstLeadingBit(var_0.xyx), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(61769u, var_1.x, 1u), _wgslsmith_sub_vec3_u32(var_0.yzx, var_0.zyy)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1279f) - _wgslsmith_f_op_f32(step(1000f, 1292f))), _wgslsmith_f_op_f32(1913f - _wgslsmith_div_f32(-2052f, -2480f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-618f))))))));
    let var_1 = ~_wgslsmith_div_u32(u_input.a, 2236u >> (firstTrailingBit(arg_0.x) % 32u));
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 455f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2468f + 502f), _wgslsmith_f_op_f32(max(-1158f, 1642f)))))));
    var var_2 = ~u_input.a;
    return select(vec2<bool>(true, true), select(vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true)), false), vec2<bool>(true, true), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<bool>(all(vec2<bool>(true, true)), true, true || !(true & func_2(vec2<bool>(false, true), u_input.c.x, Struct_1(u_input.d.xy))));
    var var_1 = Struct_5(var_0.x);
    let var_2 = func_4(_wgslsmith_clamp_vec4_u32(~(vec4<u32>(13371u, 1u, 59645u, u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 18462u, 56173u), vec4<u32>(131936u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))), ~vec4<u32>(~u_input.a, 32625u, u_input.a, 44989u), vec4<u32>(55599u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 0u, 1u)), vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4957u)), firstTrailingBit(4294967295u))), func_3(Struct_5(true)), u_input.b, vec4<u32>(~u_input.a, ~8421u, _wgslsmith_clamp_u32(7750u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(41914u, u_input.a, u_input.a, u_input.a)) | 1u), firstTrailingBit(~4294967295u)));
    let var_3 = Struct_3((_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.xw, vec2<i32>(1i, u_input.d.x), vec2<i32>(u_input.c.x, 0i)), min(u_input.b.xz, u_input.d.yz)) & ~(-u_input.c.zx)) ^ vec2<i32>(-u_input.b.x >> (42156u % 32u), ~u_input.c.x));
    let var_4 = Struct_3(-u_input.d.yx);
    return Struct_1(vec2<i32>(u_input.c.x, -_wgslsmith_add_i32(u_input.b.x, var_4.a.x)) & firstTrailingBit(var_3.a));
}

fn func_5(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1269f - -1000f) + _wgslsmith_f_op_f32(step(184f, 571f)))))));
    var var_1 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !(!func_4(vec4<u32>(u_input.a, 68472u, u_input.a, u_input.a), vec4<u32>(107272u, 53357u, u_input.a, 0u), vec4<i32>(u_input.b.x, -15767i, u_input.c.x, arg_0.a.x), vec4<u32>(125743u, u_input.a, 0u, 0u))), func_4(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(45872u, u_input.a, 109356u, 1u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u)), firstTrailingBit(u_input.c), ~select(vec4<u32>(0u, u_input.a, 61163u, 12381u), vec4<u32>(51165u, 63245u, u_input.a, u_input.a), false))), !select(func_4(~vec4<u32>(1u, 1u, u_input.a, 9605u), ~vec4<u32>(u_input.a, u_input.a, 51823u, u_input.a), u_input.c ^ vec4<i32>(0i, u_input.d.x, u_input.e.x, 0i), select(vec4<u32>(19794u, u_input.a, 43181u, 29290u), vec4<u32>(u_input.a, u_input.a, 95583u, u_input.a), vec4<bool>(false, true, false, false))), func_4(min(vec4<u32>(u_input.a, u_input.a, 79294u, 4294967295u), vec4<u32>(13766u, 65826u, u_input.a, u_input.a)), vec4<u32>(0u, 76115u, u_input.a, 4294967295u), vec4<i32>(-16246i, arg_0.a.x, -23981i, -22278i) >> (vec4<u32>(u_input.a, 1483u, u_input.a, u_input.a) % vec4<u32>(32u)), func_3(Struct_5(true))), false), false);
    var var_2 = Struct_2(vec3<bool>(false, true, false), arg_0, arg_0, min(_wgslsmith_mult_vec3_i32(u_input.c.yxy, reverseBits(vec3<i32>(33618i, 1i, u_input.e.x))), vec3<i32>(_wgslsmith_clamp_i32(max(arg_0.a.x, 3005i), 2147483647i, arg_0.a.x << (4294967295u % 32u)), ~u_input.b.x, u_input.b.x)), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-var_0.x), -1000f, -605f)));
    let var_3 = Struct_3(~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c.a.x, 0i) | var_2.c.a, _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.a.x, 0i), var_2.b.a), u_input.b.xy)));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(102f, -1431f, var_2.a.x)) * _wgslsmith_f_op_f32(var_0.x + -287f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -305f) - _wgslsmith_div_f32(var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, var_0.x) + vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-833f, var_0.x) + vec2<f32>(-585f, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), u_input.c.xwy >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(25907i, u_input.b.x), vec2<i32>(0i, -6355i)))), ~(~(-17129i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, i32(-1i) * -28131i), vec2<i32>(max(u_input.c.x, u_input.e.x), _wgslsmith_mod_i32(73593i, 2147483647i))), u_input.b.x, _wgslsmith_mult_i32(33461i, 0i));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(vec4<f32>(1749f, -488f, 753f, 1896f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-699f, 526f) * _wgslsmith_div_vec2_f32(vec2<f32>(-1148f, -482f), vec2<f32>(-1266f, -599f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, 1583f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, -2227f)))))));
    let var_2 = !vec4<bool>(true, func_4(~vec4<u32>(45335u, 8464u, u_input.a, 0u) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 50267u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, abs(u_input.a), u_input.a), abs(u_input.b) << (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u)), select(vec4<u32>(52108u, 1u, u_input.a, u_input.a) & vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), 4294967295u <= u_input.a)).x, true, true);
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(862f, var_1.x, var_1.x, -424f)))))))));
    let var_4 = false;
    var_3 = func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-970f, 135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), -1000f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, -1005f, 516f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 838f, var_1.x, -467f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, var_1.x, var_1.x, 1440f)), select(var_2, var_2, vec4<bool>(false, true, var_4, true))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1147f) + var_1.x)), -176f)));
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-692f - var_1.x), _wgslsmith_f_op_vec2_f32(func_5(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(510f, -1153f, var_1.x, var_1.x) * vec4<f32>(-2710f, 1000f, 706f, var_1.x))))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(1u, u_input.a) | vec2<u32>(u_input.a, 4294967295u))), firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) * _wgslsmith_f_op_f32(max(-1000f, 380f))), 502f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1015f, -2235f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -273f)) - var_1.x), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -584f)))), ~(-1i));
}

