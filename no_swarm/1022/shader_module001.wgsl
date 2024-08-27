struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_0.d;
    var var_1 = ~vec4<u32>(32755u, firstLeadingBit(~abs(13013u)), 0u, ~4294967295u);
    var_1 = ~vec4<u32>(1u, ~0u, ~0u, abs(_wgslsmith_mult_u32(var_1.x, 0u))) | select(vec4<u32>(abs(_wgslsmith_div_u32(var_1.x, 58238u)), ~(~var_1.x), _wgslsmith_sub_u32(4294967295u, var_1.x) & var_1.x, 1u), vec4<u32>(~1u, _wgslsmith_mult_u32(var_1.x, select(var_1.x, 1u, arg_0.a.c.x)), 1u, var_1.x), any(vec2<bool>(var_0.c.x & arg_1.c.x, true)));
    var_0 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(-var_0.d);
    return arg_0.a.c;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.d.b.x | reverseBits(u_input.a.x);
    var var_1 = vec4<bool>(!arg_0.c.c.x, select(true, !any(!arg_0.c.c), false), any(select(vec2<bool>(true, true), vec2<bool>(false, arg_0.d.c.x), arg_0.c.c.x)) && false, true);
    let var_2 = arg_0;
    var_1 = select(select(vec4<bool>(var_1.x, select(var_1.x, true | arg_0.a.c.x, !var_1.x), all(vec3<bool>(var_1.x, var_1.x, var_1.x)), !arg_0.c.c.x && all(var_2.a.c.xx)), !vec4<bool>(false, arg_0.a.c.x & true, any(var_1.wz), func_1(var_2, arg_0.c, -366f, var_2.c).x), all(!vec3<bool>(false, arg_0.d.c.x, true))), var_2.a.c, !func_1(var_2, Struct_1(arg_0.d.d, reverseBits(arg_0.a.b), var_2.a.c, arg_0.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(946f * 212f))), var_2.a));
    let var_3 = arg_0.d.c;
    return vec2<bool>(!(35777i > var_0), var_1.x);
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f) + -1701f), _wgslsmith_f_op_f32(ceil(-421f))))));
    let var_1 = (~u_input.a.x >> (~1u % 32u)) | _wgslsmith_dot_vec2_i32(min(min(u_input.a << (vec2<u32>(4294967295u, 27294u) % vec2<u32>(32u)), min(u_input.a, vec2<i32>(-16496i, -1i))), u_input.a), vec2<i32>(_wgslsmith_div_i32(-6577i, -2147483647i), 1i));
    var_0 = vec2<f32>(932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, 1000f)), var_0.x, true)) + _wgslsmith_f_op_f32(abs(var_0.x)))));
    let var_2 = !(!vec3<bool>(func_3(Struct_2(Struct_1(2172f, vec3<i32>(u_input.a.x, 2101i, -1i), vec4<bool>(arg_0.x, true, arg_0.x, false), -1000f), u_input.a, Struct_1(var_0.x, vec3<i32>(u_input.a.x, u_input.a.x, var_1), vec4<bool>(true, false, true, arg_0.x), var_0.x), Struct_1(var_0.x, vec3<i32>(var_1, var_1, -1i), vec4<bool>(false, arg_0.x, false, false), var_0.x))).x | arg_0.x, arg_0.x, arg_0.x));
    var var_3 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(min(abs(4294967295u), 1u), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(4294967295u, 75767u))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 15682u), vec3<u32>(18896u, 30113u, 24168u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 40876u))), abs(vec2<u32>(6784u, 27257u)))), 4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(949f * var_0.x), _wgslsmith_f_op_f32(-212f * var_0.x), _wgslsmith_f_op_f32(abs(-975f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -774f, var_0.x, -1000f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * var_0.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(51800i, 1i, var_1, -1i), ~vec4<i32>(u_input.a.x, u_input.a.x, var_1, u_input.a.x)), ~(var_1 | u_input.a.x), -1i), vec4<bool>(all(!var_2), var_2.x, !arg_0.x, func_3(Struct_2(Struct_1(var_0.x, vec3<i32>(-33225i, u_input.a.x, var_1), vec4<bool>(false, var_2.x, var_2.x, var_2.x), var_0.x), u_input.a, Struct_1(643f, vec3<i32>(u_input.a.x, u_input.a.x, 757i), vec4<bool>(arg_0.x, true, true, true), var_0.x), Struct_1(var_0.x, vec3<i32>(u_input.a.x, 15242i, 13766i), vec4<bool>(false, false, arg_0.x, arg_0.x), -1072f))).x), var_0.x), Struct_1(var_0.x, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(52017i, u_input.a.x, var_1), vec3<i32>(var_1, -13381i, var_1)), vec3<i32>(u_input.a.x, var_1, u_input.a.x) | vec3<i32>(var_1, u_input.a.x, -11404i)) >> (vec3<u32>(_wgslsmith_mod_u32(46857u, 1u), ~4294967295u, ~57829u) % vec3<u32>(32u)), func_1(Struct_2(Struct_1(730f, vec3<i32>(0i, 2147483647i, var_1), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), var_0.x), u_input.a << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), Struct_1(1000f, vec3<i32>(var_1, 0i, var_1), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), 2504f), Struct_1(var_0.x, vec3<i32>(-65189i, u_input.a.x, -19498i), vec4<bool>(true, false, var_2.x, arg_0.x), -412f)), Struct_1(_wgslsmith_f_op_f32(max(-171f, var_0.x)), -vec3<i32>(2147483647i, 1i, 632i), vec4<bool>(var_2.x, arg_0.x, false, arg_0.x), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)), Struct_1(var_0.x, firstLeadingBit(vec3<i32>(var_1, var_1, var_1)), vec4<bool>(arg_0.x, true, var_2.x, true), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(-491f + -196f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_0.x + -107f)))));
    return var_3.e.b.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(!(!select(func_3(Struct_2(Struct_1(-160f, vec3<i32>(u_input.a.x, 2147483647i, 1i), vec4<bool>(false, false, true, true), 1788f), vec2<i32>(35383i, -1i), Struct_1(arg_0, vec3<i32>(34383i, 2147483647i, u_input.a.x), vec4<bool>(true, true, false, true), arg_0), Struct_1(421f, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, false), arg_0))), vec2<bool>(true, true), u_input.a.x != u_input.a.x)));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -620f), arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_0))), vec2<f32>(arg_0, arg_0))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(min(-2335f, _wgslsmith_f_op_f32(arg_0 * arg_0))))));
    var var_3 = true;
    let var_4 = Struct_3(firstLeadingBit(firstTrailingBit(vec2<u32>(35769u, 12526u))) & vec2<u32>(1u, 1u), _wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(0u, 1u))), vec2<u32>(_wgslsmith_mult_u32(43268u, 1u), ~54099u) | select(~vec2<u32>(1u, 82927u), firstLeadingBit(vec2<u32>(1u, 0u)), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(max(1000f, -300f)))), arg_0, 318f, var_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1377f, 1915f, -536f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1000f, 159f, -767f), vec4<f32>(626f, -584f, 1342f, 447f), vec4<bool>(var_1, true, var_1, var_1)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-423f, arg_0)))), vec3<i32>(-14187i, u_input.a.x, ~firstTrailingBit(-2147483647i)), !select(vec4<bool>(var_1, var_1, var_1, var_1), !vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, true, false, var_1)), _wgslsmith_f_op_f32(-arg_0)), Struct_1(_wgslsmith_f_op_f32(-arg_0), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(17850i, 1i, 1i), vec3<i32>(u_input.a.x, var_0, -1i), vec3<i32>(17823i, 28434i, var_0))), func_1(Struct_2(Struct_1(var_2.x, vec3<i32>(-27020i, u_input.a.x, 2147483647i), vec4<bool>(false, var_1, var_1, var_1), arg_0), u_input.a, Struct_1(867f, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec4<bool>(false, var_1, var_1, false), var_2.x), Struct_1(1743f, vec3<i32>(-2147483647i, 0i, var_0), vec4<bool>(var_1, var_1, true, var_1), -1263f)), Struct_1(388f, _wgslsmith_div_vec3_i32(vec3<i32>(25509i, u_input.a.x, var_0), vec3<i32>(u_input.a.x, u_input.a.x, 12342i)), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(var_1, var_1, var_1, var_1), var_1), _wgslsmith_f_op_f32(floor(1094f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, var_2.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1129f)), Struct_1(arg_0, select(vec3<i32>(u_input.a.x, 35117i, 11393i), vec3<i32>(u_input.a.x, var_0, var_0), vec3<bool>(true, false, var_1)), select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, var_1, true, var_1), var_1), var_2.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-194f + arg_0), _wgslsmith_f_op_f32(-var_2.x)), -271f)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e.d)), vec3<i32>(-30707i, 37906i, firstLeadingBit(~u_input.a.x) | (i32(-1i) * -2147483647i)), vec4<bool>(_wgslsmith_div_f32(430f, _wgslsmith_f_op_f32(f32(-1f) * -1900f)) < _wgslsmith_f_op_f32(max(-1313f, var_4.d.d)), var_2.x < arg_0, var_4.e.c.x, all(var_4.d.c.zxx)), 108f);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = max(arg_0.a, ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(34162u, 4294967295u)), ~(~vec2<u32>(1u, 4294967295u))));
    let var_1 = ~(~(~vec4<u32>(arg_1 ^ var_0.x, ~4294967295u, var_0.x, 22093u)));
    var_0 = firstTrailingBit(~vec2<u32>(~firstTrailingBit(8313u), 20673u));
    var_0 = firstTrailingBit(vec2<u32>(~92927u, _wgslsmith_mod_u32(var_0.x, arg_0.a.x)) >> (min(arg_0.a, vec2<u32>(1u, 1u)) % vec2<u32>(32u))) | var_1.xw;
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.a * arg_0.c.x))) - func_2(-2486f).d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-949f, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -14462i, u_input.a.x), vec3<i32>(u_input.a.x, 60698i, 35407i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), func_1(Struct_2(Struct_1(966f, vec3<i32>(-26027i, u_input.a.x, 2147483647i), vec4<bool>(false, true, true, true), -1430f), vec2<i32>(-2147483647i, u_input.a.x), Struct_1(1261f, vec3<i32>(u_input.a.x, 32573i, u_input.a.x), vec4<bool>(true, false, true, false), -1000f), Struct_1(1000f, vec3<i32>(-1i, 40241i, -10591i), vec4<bool>(true, true, false, true), -236f)), Struct_1(2258f, vec3<i32>(0i, -2147483647i, u_input.a.x), vec4<bool>(true, false, true, true), 817f), 1261f, Struct_1(636f, vec3<i32>(u_input.a.x, 42494i, u_input.a.x), vec4<bool>(false, false, false, true), 622f))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f)))), _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.a), reverseBits(~u_input.a)), func_5(Struct_3(vec2<u32>(4294967295u, 1u), ~339u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1043f, -114f, -874f, 549f), vec4<f32>(517f, -1280f, 2072f, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 534f, 344f, -706f))), func_2(_wgslsmith_f_op_f32(select(-1000f, -554f, false))), Struct_1(_wgslsmith_f_op_f32(select(825f, 1208f, true)), vec3<i32>(u_input.a.x, 8216i, u_input.a.x), vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(f32(-1f) * -521f))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 27621u)), 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-831f - _wgslsmith_f_op_f32(f32(-1f) * -1319f)), -vec3<i32>(max(1i, 1i), _wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1056f)))).c, -138f));
    var var_1 = Struct_3(~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 2143u), vec2<u32>(4294967295u, 4294967295u)))), 1u >> (~4294967295u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-524f, 2344f, -1960f, var_0.a.a))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a, -955f, 220f, var_0.a.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_0.a.d, var_0.c.a, -563f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, -1920f, -192f, var_0.c.a) + vec4<f32>(-372f, 356f, var_0.c.a, var_0.a.a)))))), var_0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.d))), var_0.d.b, var_0.d.c, var_0.d.a));
    var_1 = Struct_3(var_1.a, ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + var_1.c))))), func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -270f)))), func_5(Struct_3(vec2<u32>(~35643u, ~var_1.b), ~(~var_1.b), var_1.c, var_1.e, var_1.d), 4946u));
    let var_2 = false;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f))), var_1.e.b >> (abs(vec3<u32>(1u, 18881u, 4294967295u)) % vec3<u32>(32u)), select(var_0.a.c, !var_1.e.c, _wgslsmith_f_op_f32(trunc(var_0.d.d)) == 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(486f - _wgslsmith_f_op_f32(exp2(var_1.c.x))))), var_1.e.b.zx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1131f)), (func_5(Struct_3(var_1.a, var_1.a.x, vec4<f32>(var_1.d.d, -1460f, -1649f, var_1.d.a), Struct_1(-1643f, vec3<i32>(var_1.e.b.x, -47152i, var_0.a.b.x), var_1.e.c, -1074f), var_1.d), var_1.a.x).b << (~vec3<u32>(var_1.a.x, 1u, var_1.b) % vec3<u32>(32u))) << (~select(vec3<u32>(1u, var_1.b, var_1.b), vec3<u32>(var_1.a.x, var_1.b, 0u), var_1.d.c.x) % vec3<u32>(32u)), vec4<bool>(!func_5(Struct_3(vec2<u32>(var_1.b, var_1.b), 51432u, vec4<f32>(var_0.a.d, var_1.c.x, var_0.c.a, -854f), var_0.c, var_1.d), 0u).c.x, !var_0.c.c.x, any(!var_1.d.c.wy), !(!var_2)), -2242f), var_0.d);
    let var_3 = -903f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.c.zyw));
}

