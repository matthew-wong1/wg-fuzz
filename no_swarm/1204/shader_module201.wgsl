struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = !arg_2 | (1i < (firstTrailingBit(-u_input.e) >> (~(~1u) % 32u)));
    let var_1 = Struct_3(4294967295u, all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, arg_2), vec2<bool>(true, true), vec2<bool>(false, true)), arg_2), select(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2), arg_2))), arg_1.a, arg_1, Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.b), vec2<u32>(76363u, arg_1.c.a.x)), _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-arg_1.c.b)), arg_1.a.c), arg_1.a.a.x, Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c.a.x, 4294967295u), vec2<u32>(0u, 8804u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.b, -274f))), -943f)));
    var var_2 = Struct_3(2474u, arg_2, arg_1.c, Struct_2(Struct_1(abs(vec2<u32>(1u, var_1.a)), _wgslsmith_f_op_f32(var_1.d.c.c + arg_1.c.b), _wgslsmith_f_op_f32(max(arg_1.c.c, var_1.c.c))), firstTrailingBit(0u), Struct_1(vec2<u32>(var_1.d.a.a.x, 9622u), _wgslsmith_f_op_f32(-var_1.d.a.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.c.b, arg_1.c.b, false)), -143f, any(vec3<bool>(arg_2, true, var_1.b)))))), arg_1);
    var var_3 = vec3<u32>(firstLeadingBit(61553u), 4294967295u, ~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18092u), arg_1.c.a) & (var_1.c.a.x >> (var_1.d.c.a.x % 32u))));
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-446f, 212f)))) * 469f);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec2<u32>(~6738u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1869f))), -188f), 4294967295u, Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(40607u, arg_0), vec2<u32>(~5915u, _wgslsmith_mod_u32(arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(430f, _wgslsmith_f_op_f32(func_3(0i, Struct_2(Struct_1(vec2<u32>(0u, arg_0), 618f, 849f), 12783u, Struct_1(vec2<u32>(0u, 4294967295u), -303f, 1246f)), true)), 45859u < arg_0)) * -748f), 1203f));
    var var_1 = Struct_1(select(vec2<u32>(0u, arg_0), vec2<u32>(_wgslsmith_mod_u32(var_0.a.a.x, 67205u), _wgslsmith_clamp_u32(46157u, var_0.a.a.x, var_0.b)) >> (vec2<u32>(~28101u, 84447u ^ var_0.b) % vec2<u32>(32u)), select(!(u_input.c.x != 25533i), true, false)), 949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(var_0.c.b - var_0.c.b)))));
    var var_2 = vec4<i32>(u_input.b.x, -16671i, countOneBits(select(_wgslsmith_mod_i32(37381i, 1i), ~_wgslsmith_div_i32(u_input.b.x, 49258i), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))))), -27342i);
    var var_3 = (~8667u <= (var_0.c.a.x ^ (reverseBits(var_1.a.x) << (_wgslsmith_sub_u32(var_1.a.x, 4740u) % 32u)))) | true;
    var_1 = var_0.a;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b)), -657f)), var_1.c, 1080f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, -317f, var_0.c.b, var_1.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(125f, var_0.c.c, var_1.c, var_0.c.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, -338f, -200f, var_0.c.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.a.b, -191f), -707f, _wgslsmith_div_f32(-784f, var_1.c), _wgslsmith_f_op_f32(select(var_0.c.c, 951f, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, var_0.a.b, 730f, var_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(458f, var_0.c.b, 113f, var_1.c) - vec4<f32>(-975f, 249f, 952f, 1000f)), true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(147f, 2097f)), var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -442f), 397f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, -1629f, var_1.b, -1000f))))), false));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_2) -> Struct_1 {
    var var_0 = min(u_input.a, -1i);
    var_0 = firstTrailingBit(0i);
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mult_i32(~(-32712i), -12058i & u_input.b.x)) >> (~arg_0.x % 32u));
    var_0 = countOneBits(select(abs(-1i), -13697i, select(arg_2.a.a.x >= 1u, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), false)));
    let var_1 = Struct_5(vec4<f32>(-664f, arg_2.a.b, _wgslsmith_f_op_f32(min(-1267f, _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-arg_1.a.x)), Struct_1(vec2<u32>(1u & _wgslsmith_add_u32(arg_0.x, arg_2.a.a.x), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.c, arg_2.c.b)))), -577f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c.b)) * arg_1.c)), arg_1.d);
    return Struct_1(firstTrailingBit(~(~arg_2.a.a)), -1104f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - arg_1.b.c), _wgslsmith_f_op_f32(arg_1.b.c * var_1.a.x)))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = Struct_1(max(countOneBits(select(min(vec2<u32>(var_0.c.a.x, 57810u), vec2<u32>(19211u, 79370u)), max(vec2<u32>(var_0.b, 1u), vec2<u32>(33669u, arg_0.c.a.x)), true)), vec2<u32>(arg_1.a.x, arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(-20365i, _wgslsmith_sub_i32(41675i, u_input.a)), var_0, true | any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)) * _wgslsmith_f_op_f32(round(var_1.c.c))) + func_4(vec2<u32>(max(42040u, 1u), ~4294967295u), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, 1423f, 2038f, var_1.a.c)), func_4(vec2<u32>(var_0.a.a.x, arg_1.a.x), Struct_5(vec4<f32>(var_0.c.b, -1472f, arg_1.b, -1023f), arg_1, 1552f, vec2<u32>(4294967295u, arg_0.a.a.x)), var_0), -285f, ~vec2<u32>(18115u, 0u)), arg_0).c));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c));
    var var_4 = vec2<bool>(!all(vec2<bool>(true, true)), arg_0.c.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_1.c.a.x)).x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.b)))));
    return Struct_2(var_0.a, ~(~1u), var_2);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_2(Struct_1(vec2<u32>(1u, 24632u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-264f, 1426f)), -1000f), firstLeadingBit(reverseBits(~48422u)), Struct_1(~(~vec2<u32>(25693u, 4294967295u)), 1103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1160f))))), func_4(countOneBits(~vec2<u32>(21292u, 0u)), Struct_5(_wgslsmith_f_op_vec4_f32(func_2(~4294967295u)), Struct_1(abs(vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -178f), -213f), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_sub_u32(4294967295u, 4315u))).x, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(15196u, 10387u), vec2<u32>(92235u, 21310u), vec2<u32>(4906u, 0u))), Struct_2(Struct_1(~vec2<u32>(4294967295u, 4294967295u), -468f, _wgslsmith_f_op_f32(180f + -474f)), 4294967295u, Struct_1(vec2<u32>(1u, 1u), _wgslsmith_div_f32(1009f, 301f), -1359f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1436f, 727f, -105f) + vec3<f32>(-1010f, -152f, 2512f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(312f, 289f, -883f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1195f, 258f, -445f) - vec3<f32>(-1543f, -1307f, 1567f)))))));
    var_0 = func_5(Struct_2(Struct_1(var_0.c.a, -1352f, -805f), 75296u, var_0.c), var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.b, var_0.c.c, var_0.c.c), vec3<f32>(var_0.c.b, 403f, var_0.c.c), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c, var_0.a.c, var_0.a.c) * vec3<f32>(var_0.c.b, 666f, -487f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2483f, var_0.c.b, -986f), vec3<f32>(var_0.a.c, var_0.a.c, 704f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(615f, -1081f, 1000f), vec3<f32>(var_0.a.b, 247f, var_0.a.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, -1000f, -1150f))))));
    var_0 = Struct_2(func_4(min(_wgslsmith_div_vec2_u32(var_0.c.a, vec2<u32>(var_0.c.a.x, var_0.b) | vec2<u32>(var_0.c.a.x, 51814u)), ~(~var_0.a.a)), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.c, 358f, var_0.a.c, -142f), vec4<f32>(var_0.a.c, -633f, 261f, -1011f))), var_0.c, _wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(f32(-1f) * -1653f)), var_0.c.a), Struct_2(func_4(_wgslsmith_add_vec2_u32(vec2<u32>(21142u, var_0.a.a.x), vec2<u32>(var_0.c.a.x, 1u)), Struct_5(vec4<f32>(var_0.a.b, -579f, 808f, -493f), var_0.a, var_0.a.c, var_0.a.a), func_5(Struct_2(var_0.c, 23738u, var_0.c), var_0.c, vec3<f32>(var_0.a.b, 262f, var_0.a.b))), firstLeadingBit(_wgslsmith_div_u32(var_0.a.a.x, 46156u)), var_0.c)), var_0.a.a.x, var_0.c);
    var_0 = func_5(Struct_2(var_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(vec2<u32>(16438u, var_0.b), Struct_5(vec4<f32>(-347f, var_0.a.c, 691f, var_0.a.c), Struct_1(var_0.c.a, var_0.c.c, var_0.a.c), -581f, var_0.a.a), Struct_2(var_0.c, 1u, var_0.a)).a.x, 22582u, _wgslsmith_sub_u32(var_0.c.a.x, 4294967295u), _wgslsmith_clamp_u32(var_0.c.a.x, 20176u, 0u)), vec4<u32>(4294967295u >> (var_0.b % 32u), reverseBits(4294967295u), ~var_0.a.a.x, ~var_0.b)), Struct_1(vec2<u32>(30321u, var_0.a.a.x), var_0.a.b, 552f)), func_5(Struct_2(var_0.a, 37930u, var_0.a), func_4(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(var_0.a.a.x, var_0.c.a.x)), var_0.a.a), Struct_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1267f, var_0.a.c, var_0.c.b, -679f))), var_0.c, -1001f, select(var_0.a.a, vec2<u32>(var_0.a.a.x, 0u), true)), func_5(Struct_2(Struct_1(vec2<u32>(var_0.a.a.x, var_0.a.a.x), -1620f, -320f), 4294967295u, var_0.c), Struct_1(var_0.a.a, -380f, -688f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, var_0.a.b, var_0.a.c)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, var_0.a.c, 2184f))))))).c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, _wgslsmith_f_op_f32(max(1916f, -489f)), var_0.a.c)));
    let var_1 = _wgslsmith_mult_u32(var_0.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.c.a.x, 1u, 1u)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.a.a.x, 47198u, 26763u)), vec3<u32>(31001u, 40164u, var_0.b))));
    return Struct_1(var_0.a.a, _wgslsmith_f_op_f32(select(2360f, -213f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - var_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 50844i;
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1174f, -326f, -1026f, -1220f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-856f, 301f, -1414f, -1335f), vec4<f32>(250f, 480f, 492f, -962f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2256f, 888f, 836f, 1000f))))), func_1(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1303f), -1020f)))), vec2<u32>(_wgslsmith_div_u32(0u, 1u), ~0u));
    var_0 = max(-33401i, _wgslsmith_mult_i32(-u_input.c.x, u_input.c.x));
    var_0 = 2147483647i;
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(max(u_input.e, select(-1i, u_input.b.x, false))), -min(-2147483647i, -2147483647i), u_input.b.x & -_wgslsmith_div_i32(0i, u_input.e)), u_input.c, vec3<i32>(-1i) * -u_input.c);
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.a.ww), vec2<f32>(-1314f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 10181u), var_1.d), var_1, func_5(Struct_2(Struct_1(vec2<u32>(1u, 1u), var_1.c, 1059f), 13674u, var_1.b), var_1.b, var_1.a.xwz)).c + var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-553f, var_1.c);
}

