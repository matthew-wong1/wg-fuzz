struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(873f - _wgslsmith_f_op_f32(trunc(-1439f)))))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2019f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1145f, _wgslsmith_f_op_f32(step(-791f, -1084f)))) - _wgslsmith_div_f32(-122f, _wgslsmith_f_op_f32(floor(-1073f)))), _wgslsmith_f_op_f32(874f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -270f)))), _wgslsmith_f_op_f32(-1f)));
    var var_2 = (select(u_input.a ^ abs(18773u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 24648u), vec2<u32>(35430u, u_input.a)) & u_input.a, var_1.a.x <= _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)) > ~u_input.a) && any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), any(vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_f32(-683f * -337f);
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(233f, 1085f, 1f, -791f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(916f, var_1.a.x, -450f, var_1.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, 157f, 562f) - var_1.a)), var_1.a))));
    return u_input.a;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_4(vec4<u32>(arg_0, ~_wgslsmith_sub_u32(3394u, max(u_input.a, 15680u)), _wgslsmith_mult_u32(65998u, func_3(28323i)) << (_wgslsmith_mod_u32(u_input.a, ~u_input.a) % 32u), ~_wgslsmith_mult_u32(~4294967295u, ~u_input.a)), ~1u, Struct_1(vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(435f, 583f, -399f, -615f) - vec4<f32>(-306f, 989f, -764f, 445f))))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, -56455i), -u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1i, -4569i), vec3<i32>(u_input.b.x, -2147483647i, -2147483647i)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(~u_input.b.x, u_input.b.x >> (u_input.a % 32u), firstTrailingBit(-2033i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(984f + -1689f), 1f, _wgslsmith_f_op_f32(step(313f, 152f)), -865f)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2274f, -105f, -378f, -528f))))))));
    var var_1 = Struct_3(~vec3<u32>(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, arg_0, 11298u)), abs(33933u)), -_wgslsmith_add_vec3_i32(-vec3<i32>(63435i, 55641i, -41850i), ~vec3<i32>(var_0.d.c.x, u_input.b.x, -1i)) & _wgslsmith_add_vec3_i32(abs(-vec3<i32>(var_0.d.c.x, u_input.b.x, 0i)), vec3<i32>(-43747i >> (u_input.a % 32u), reverseBits(0i), -5415i)), _wgslsmith_f_op_f32(-var_0.c.a.x), 37786u);
    let var_2 = vec3<bool>(!(false | all(vec2<bool>(true, false))), true, false);
    var_1 = Struct_3(vec3<u32>(firstTrailingBit(countOneBits(11511u)), 0u, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(4294967295u, arg_0, u_input.a)))), _wgslsmith_div_vec3_i32(vec3<i32>(abs(-2147483647i), firstTrailingBit(_wgslsmith_sub_i32(4958i, u_input.b.x)), reverseBits(1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 30031i, select(u_input.b.x, 1i, true)), vec3<i32>(-73024i, -4644i, 2147483647i) & var_0.d.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-248f)) * 1f), firstLeadingBit(_wgslsmith_add_u32(1u, var_1.a.x) | 1u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(1338f * -1103f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.a.a.x, 342f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x))))), var_0.d.e.a.x, _wgslsmith_f_op_f32(sign(var_1.c)));
    return _wgslsmith_mult_u32(var_0.a.x, (_wgslsmith_mod_u32(~1u, 65326u) | var_0.b) & (4294967295u << (arg_0 % 32u)));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = !(true == (u_input.a == func_2(67454u >> (u_input.a % 32u))));
    var_0 = true;
    var var_1 = vec3<u32>(57737u, 1u, ~reverseBits(u_input.a));
    let var_2 = Struct_5(-41574i, -(-42157i & min(u_input.b.x | -74854i, ~2147483647i)), abs(~vec4<i32>(1i | u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -18581i), u_input.b.x, -1i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(919f * 310f), 255f)), 144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -996f) * 795f)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(665f, 236f))), -1240f, -244f, _wgslsmith_f_op_f32(f32(-1f) * -217f))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.a.x, var_2.d.x, var_2.e.a.x, -1000f))))), var_2.e, _wgslsmith_mult_vec3_i32(~var_2.c.xwz, abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_2.b, -26291i), var_2.c.xzz), -55703i, u_input.b.x))), var_2.e, var_2.e);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(11713u, u_input.a)) ^ 4294967295u, ~15879u), abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(17403u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), ~(~vec2<u32>(u_input.a, abs(u_input.a))));
    var_0 = _wgslsmith_clamp_vec2_u32(countOneBits(abs(reverseBits(vec2<u32>(258u, 32943u)))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 39932u) >> (min(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.a, 77794u)) % vec2<u32>(32u)), select(vec2<u32>(var_0.x, 44327u), vec2<u32>(21534u, u_input.a), true)), vec2<u32>(func_1(true), func_1(true) >> (firstTrailingBit(31643u) % 32u)));
    let var_1 = vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, var_0.x), 0u) >> (~(_wgslsmith_div_u32(31102u, u_input.a) ^ (var_0.x | 63911u)) % 32u), ~0u, (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 12535u), vec3<u32>(8617u, var_0.x, 12728u) << (vec3<u32>(u_input.a, var_0.x, u_input.a) % vec3<u32>(32u))) & _wgslsmith_div_u32(func_3(u_input.b.x), 4294967295u)) >> (_wgslsmith_sub_u32(firstTrailingBit(~var_0.x), 1u & u_input.a) % 32u));
    var_0 = vec2<u32>(1351u, func_2(var_1.x));
    var var_2 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(43914u, -vec2<i32>(1i, u_input.b.x) & u_input.b);
}

