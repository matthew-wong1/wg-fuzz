struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_2(max(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, ~u_input.b), 1u), select(~(u_input.b ^ 1u), 4294967295u, arg_0)), Struct_1(u_input.b, !select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), arg_0), true), _wgslsmith_sub_vec3_i32(abs(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.c, u_input.c))), ~vec3<i32>(u_input.c, -2147483647i, 2147483647i)), select(~vec3<u32>(66472u, 8217u, 0u), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(5287u, 0u, u_input.b)), ~vec3<u32>(u_input.b, 13967u, 56064u)), vec3<bool>(arg_0, any(vec2<bool>(false, true)), true))), !all(!select(vec2<bool>(false, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(select(u_input.c, -44766i, true)), 23563i), -1i));
    let var_1 = var_0.c;
    var var_2 = var_0.b;
    var_2 = Struct_1(u_input.b, select(select(select(var_0.b.b, vec2<bool>(var_0.c, true), false), select(select(vec2<bool>(true, false), vec2<bool>(arg_0, var_2.b.x), var_0.b.b), var_0.b.b, true | arg_0), arg_0), var_0.b.b, all(select(select(vec4<bool>(false, var_2.b.x, false, arg_0), vec4<bool>(false, false, true, false), vec4<bool>(true, false, var_2.b.x, true)), vec4<bool>(false, false, var_0.b.b.x, var_0.b.b.x), all(vec3<bool>(var_1, var_0.c, arg_0))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, var_0.d, 0i), abs(var_2.c | var_0.b.c)), firstTrailingBit(var_0.b.d));
    let var_3 = select(!(!vec3<bool>(any(vec3<bool>(true, arg_0, var_0.b.b.x)), any(vec2<bool>(var_1, var_1)), true)), !vec3<bool>(true, all(vec2<bool>(false, true)), var_0.c), any(!vec4<bool>(any(vec2<bool>(var_0.b.b.x, var_0.c)), all(vec4<bool>(var_1, arg_0, arg_0, false)), !var_0.c, !arg_0)));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(357f, 1000f, 719f, 626f) - vec4<f32>(-705f, 1779f, 1040f, -791f))), vec4<f32>(_wgslsmith_f_op_f32(893f - 617f), _wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(192f * 885f), _wgslsmith_f_op_f32(abs(-192f))), select(select(vec4<bool>(var_3.x, var_0.b.b.x, arg_0, var_0.c), vec4<bool>(false, true, true, var_1), vec4<bool>(arg_0, false, false, true)), vec4<bool>(true, var_0.b.b.x, true, true), var_2.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(593f, 662f, -774f, 902f), vec4<f32>(-998f, 1000f, 1375f, 616f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1844f, -1644f, 1975f), vec4<f32>(-141f, 254f, 1139f, -530f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-593f, -386f, -1347f, 359f), vec4<f32>(478f, 952f, 1885f, -262f)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, -185f, -520f, 661f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -563f, 707f, 588f))) + vec4<f32>(_wgslsmith_f_op_f32(729f * 243f), -1078f, 1669f, _wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_vec4_f32(func_3(true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1261f, -442f, -360f, -935f))) + vec4<f32>(_wgslsmith_f_op_f32(683f - 2149f), -858f, _wgslsmith_f_op_f32(ceil(-2045f)), -981f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1541f, -613f, -1220f, -1448f), vec4<f32>(1000f, -784f, -1441f, 1000f))) + vec4<f32>(530f, -2747f, 1037f, 398f)))));
    var var_1 = arg_0;
    let var_2 = Struct_1(max(10857u, 25871u), select(vec2<bool>(true, true), vec2<bool>(true, -1215f >= var_0.x), vec2<bool>(-1320f < _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), u_input.a.x > _wgslsmith_mult_i32(-5335i, u_input.a.x))), -vec3<i32>(u_input.a.x, abs(_wgslsmith_add_i32(-19797i, 0i)), i32(-1i) * -2147483647i), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(select(var_1.zyw, vec3<u32>(arg_0.x, 75397u, 4294967295u), false), vec3<u32>(30141u, arg_1.x, 0u)), 69296u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 43711u), vec2<u32>(var_1.x, var_1.x)))), 10571u, 0u));
    var_1 = ~_wgslsmith_mod_vec4_u32(reverseBits(firstTrailingBit(select(vec4<u32>(var_2.d.x, 41634u, u_input.b, var_1.x), arg_0, var_2.b.x))), select(~(vec4<u32>(2104u, var_2.a, 25355u, arg_0.x) << (arg_0 % vec4<u32>(32u))), arg_0, !var_2.b.x));
    let var_3 = ~firstTrailingBit(~abs(~var_2.d));
    return (firstTrailingBit(~countOneBits(8739i)) | u_input.a.x) & (-(~(~var_2.c.x)) >> (~var_1.x % 32u));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = -countOneBits(-vec4<i32>(i32(-1i) * -2147483647i, max(u_input.c, u_input.c), func_2(vec4<u32>(11722u, 19894u, arg_1, u_input.b), vec3<u32>(8491u, 0u, 41006u)), u_input.c & arg_0));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-855f))));
    let var_2 = ~(vec4<i32>(-arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -8773i, 27000i), vec3<i32>(-24426i, var_0.x, arg_0)), ~1i, i32(-1i) * -35055i) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, u_input.b, 4294967295u, 1u), ~vec4<u32>(39168u, 33105u, u_input.b, 0u)), ~(~vec4<u32>(arg_1, arg_1, arg_1, u_input.b))) % vec4<u32>(32u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-102f, var_1))))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-411f, -603f) + vec2<f32>(-1000f, -951f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(543f, -476f), vec2<f32>(var_1, -1295f), true))))) * vec2<f32>(-1075f, _wgslsmith_f_op_f32(round(var_3.x)))), var_3.zy, select(vec2<bool>(any(vec3<bool>(true, true, true)), true & (u_input.c < 34198i)), vec2<bool>(true, true), any(vec4<bool>(all(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)), all(vec3<bool>(true, false, true)))))));
    return Struct_2(countOneBits(4294967295u), Struct_1(min(31062u & u_input.b, countOneBits(~41691u)), vec2<bool>(true, true), var_0.yzy, vec3<u32>(~_wgslsmith_mult_u32(0u, 23798u), firstTrailingBit(59785u), 1u ^ u_input.b)), !(-(~(-2147483647i)) > _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.x, 6762i), _wgslsmith_mult_i32(-1i, 2147483647i))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x, firstLeadingBit(~0u));
    var_0 = func_1(-1i, ~(var_0.b.d.x >> (var_0.a % 32u)));
    var var_1 = func_1(_wgslsmith_add_i32(-1842i, firstLeadingBit(var_0.b.c.x)), firstTrailingBit(var_0.a)).b;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1122f), -495f, var_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(579f, -1009f)) * _wgslsmith_f_op_f32(852f * -314f)), _wgslsmith_f_op_f32(f32(-1f) * -336f)))) + vec2<f32>(1f, 1f));
    let var_3 = func_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(var_1.c.x, var_0.b.c.x), -2147483647i), -u_input.a ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -43949i), -var_0.b.c.xx)), var_1.a).c;
    var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, var_1.c.x), _wgslsmith_clamp_vec2_i32(u_input.a, var_1.c.xy, var_1.c.zx)), 2147483647i, u_input.a.x, max(_wgslsmith_mod_i32(var_0.b.c.x, 0i), u_input.c)), select(~vec2<u32>(var_0.b.a, ~var_1.a), ~var_0.b.d.zx, vec2<bool>(var_3, false)), countOneBits(firstTrailingBit(var_1.a)), -1000f);
}

