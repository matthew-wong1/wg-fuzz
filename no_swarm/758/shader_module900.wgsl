struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1466f - 581f), _wgslsmith_f_op_f32(f32(-1f) * -2786f), -1089f))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 1i, -1i)), vec3<i32>(u_input.a, u_input.a, -1i) & vec3<i32>(-1i, -1936i, u_input.a)), vec3<i32>(u_input.a, 62883i, u_input.a) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 25748u), vec3<u32>(u_input.b.x, 21796u, 70828u)) % vec3<u32>(32u))), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(45976i, u_input.a, u_input.a), vec3<i32>(-1i, -2147483647i, u_input.a)) ^ vec3<i32>(u_input.a, u_input.a, -25934i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-49120i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)))));
    var var_1 = vec4<bool>(!(847f > var_0.a.x), true, false == (_wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-709f, var_0.a.x), _wgslsmith_f_op_f32(sign(var_0.a.x))))), all(vec3<bool>(_wgslsmith_f_op_f32(-496f * 1000f) > _wgslsmith_f_op_f32(612f + var_0.a.x), (u_input.a << (63455u % 32u)) > -36357i, u_input.b.x != u_input.b.x)));
    let var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(18983i, 0i) << (0u % 32u)), _wgslsmith_mod_vec2_i32(min(vec2<i32>(var_0.b.x, -32034i), var_0.b.xy), -var_0.b.xx) ^ vec2<i32>(u_input.a, var_0.b.x));
    var var_3 = var_0.a.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -281f, -1417f)) * vec4<f32>(2230f, -1337f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.a.x)), var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -915f, 1834f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, 116f, var_0.a.x, -457f) + vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -462f), -588f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 669f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-893f, -1000f, -280f, var_0.a.x) - vec4<f32>(-745f, var_0.a.x, 1143f, 772f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x)));
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(u_input.b.x, 11340u);
    var var_1 = ~vec2<i32>(41513i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, -2147483647i) ^ vec4<i32>(u_input.a, -3386i, u_input.a, u_input.a)) >> (_wgslsmith_mod_u32(firstLeadingBit(var_0.x), u_input.b.x) % 32u));
    var_1 = max(-(-vec2<i32>(-2793i, 0i) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_1.x, -11189i))), abs(select(reverseBits(vec2<i32>(u_input.a, var_1.x)), select(vec2<i32>(var_1.x, 2147483647i), vec2<i32>(u_input.a, -52137i), false), vec2<bool>(true, false)))) & vec2<i32>(min(0i, -1i & max(u_input.a, var_1.x)), -1i);
    let var_2 = Struct_2(145f > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-415f, -424f, false)), -737f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-666f, -1006f), _wgslsmith_f_op_f32(436f + -594f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 292f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-891f, -1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1955f, 426f))))), -520f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f + 1364f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f - 969f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -609f), _wgslsmith_f_op_f32(trunc(1690f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-516f, 778f)))), _wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-634f, -394f) + -450f))));
    global0 = 11711u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x));
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = !all(!vec4<bool>(!arg_0.a, true, true, arg_0.a));
    let var_1 = 532f;
    let var_2 = ~countOneBits(0u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, -566f, 1023f, -128f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.b.x, 149f, 915f), vec4<f32>(1000f, -517f, 437f, var_1)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-492f, 729f, arg_0.d.x, 356f)))) - vec4<f32>(-1711f, _wgslsmith_f_op_f32(round(537f)), _wgslsmith_f_op_f32(select(var_1, var_1, var_0)), 1940f))));
    var var_4 = vec4<bool>(!(!any(vec4<bool>(var_0, var_0, var_0, false))), var_0, any(vec3<bool>(!all(vec2<bool>(var_0, false)), var_0 & (u_input.a > -1i), false)), select(any(select(!vec4<bool>(var_0, arg_0.a, true, var_0), vec4<bool>(var_0, arg_0.a, var_0, arg_0.a), all(vec3<bool>(var_0, true, arg_0.a)))), !var_0, !(!arg_0.a)));
    return min(min(~u_input.b, u_input.b) & ~vec2<u32>(~var_2, max(4294967295u, 4294967295u)), vec2<u32>(4294967295u, ~reverseBits(22664u)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = func_4(Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(max(1119f, _wgslsmith_f_op_f32(2550f + -1000f))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 2075f, 772f)) - _wgslsmith_div_vec3_f32(vec3<f32>(2140f, 1198f, -126f), vec3<f32>(1690f, -1157f, -459f))))));
    var var_1 = -reverseBits(abs(~select(vec4<i32>(0i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, -2147483647i, -1i), arg_0.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2299f - _wgslsmith_div_f32(1211f, -503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + 3093f) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-355f * _wgslsmith_div_f32(-1000f, -1610f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(304f, 102f, -1414f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2371f, 1504f, 1562f)))), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))))), reverseBits(select(-var_1.zzx, vec3<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a), -34276i, var_1.x), countOneBits(u_input.b.x) > var_0.x)));
    let var_3 = vec4<u32>(~(~(~var_0.x)) ^ _wgslsmith_clamp_u32(~(var_0.x << (var_0.x % 32u)), 1u, var_0.x), ~(1u ^ ~(~var_0.x)), 4294967295u, abs(u_input.b.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-382f, 826f), -125f, _wgslsmith_f_op_f32(-var_2.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2359f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-var_2.a.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.x - -1491f), _wgslsmith_f_op_f32(-var_2.a.x), false))), _wgslsmith_f_op_f32(step(1000f, var_2.a.x)))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1425f, -1358f, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 6527u;
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1243f, 728f), -270f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-966f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(2235f, 987f))))))), 1442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(433f, 237f, false)) - _wgslsmith_div_f32(-1000f, 537f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -124f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(426f, -164f)), -931f));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -965f, _wgslsmith_f_op_f32(func_1(vec4<bool>(47543u >= u_input.b.x, true, all(vec3<bool>(false, true, false)), u_input.a > u_input.a))), _wgslsmith_f_op_f32(var_0.x * var_0.x))));
    global0 = _wgslsmith_clamp_u32(~4294967295u, min(countOneBits(47805u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(98938u, 0u, u_input.b.x), vec3<u32>(4294967295u, 9780u, u_input.b.x) | vec3<u32>(27289u, u_input.b.x, 3303u))), _wgslsmith_dot_vec3_u32(vec3<u32>(77760u << (~u_input.b.x % 32u), ~1u, ~select(u_input.b.x, u_input.b.x, false)), vec3<u32>(u_input.b.x | u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 46341u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~vec3<u32>(37734u, u_input.b.x, 22860u) & _wgslsmith_sub_vec3_u32(vec3<u32>(90349u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~1u)) >> (vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x), ~countOneBits(u_input.b.x), ~max(u_input.b.x, 9787u)) % vec3<u32>(32u)), ~72069u);
}

