struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.e, _wgslsmith_f_op_f32(step(-158f, arg_0.a.x)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), -1918f >= arg_0.a.x)))));
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, -261f, var_2.d)), var_2.a))), min(vec3<u32>(var_2.b.x, u_input.d >> (1u % 32u), ~50740u) | _wgslsmith_mod_vec3_u32(~arg_0.b, max(var_2.b, vec3<u32>(4294967295u, 4294967295u, 0u))), var_2.b), -var_2.c, _wgslsmith_f_op_f32(sign(1595f)), 844f);
    var var_4 = select(select(vec3<bool>(!any(vec3<bool>(false, false, false)), all(vec3<bool>(false, true, true)) | all(vec2<bool>(false, true)), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, false)))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !vec3<bool>(false, any(vec4<bool>(false, true, true, true)), true));
    return arg_0.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - arg_2.a), vec3<u32>(firstTrailingBit(func_3(arg_2, vec3<i32>(u_input.e.x, u_input.e.x, -33841i) << (vec3<u32>(var_0, 12u, arg_2.b.x) % vec3<u32>(32u)))), arg_2.b.x >> ((_wgslsmith_mod_u32(arg_1.x, 49456u) ^ ~38439u) % 32u), ~max(~4294967295u, _wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(0u, 11687u)))), ~55042i, _wgslsmith_f_op_f32(arg_2.e * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * 337f) * _wgslsmith_div_f32(-320f, arg_0.x)))) * 535f));
    var var_2 = Struct_1(var_1.a, vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.b, _wgslsmith_mod_vec3_u32(firstTrailingBit(var_1.b), var_1.b)), ~u_input.d, 1u), 2147483647i, arg_2.e, _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(593f * var_1.e)))), arg_2.d));
    var var_3 = var_1.b.yy;
    var var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1094f, _wgslsmith_f_op_f32(470f * 153f))))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(-1023f, 460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(390f + 884f)))), ~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.d, 1u, u_input.a)) >> (vec3<u32>(u_input.d, 1u, u_input.a) % vec3<u32>(32u))), _wgslsmith_sub_i32(arg_0 & u_input.b, u_input.b), _wgslsmith_f_op_f32(906f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-942f * 307f), -636f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(1000f, 158f, 117f), vec4<u32>(u_input.d, u_input.d, 1u, 4294967295u), Struct_1(vec3<f32>(1475f, 329f, -1308f), vec3<u32>(1u, u_input.d, u_input.d), 1i, 807f, 2039f))) + _wgslsmith_f_op_f32(f32(-1f) * -628f)))), 881f);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.a)) * _wgslsmith_f_op_vec3_f32(-var_0.a))))), var_0.b, 29659i, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(1179f, var_0.d, true)), _wgslsmith_f_op_f32(var_0.a.x + -711f), var_0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-125f, 338f, var_0.d), var_0.a, true)) + _wgslsmith_f_op_vec3_f32(trunc(var_0.a))))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, var_0.b.x), vec4<u32>(u_input.a, u_input.a, u_input.d, 89892u)) | ~abs(vec4<u32>(u_input.d, u_input.a, u_input.d, 0u)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.d, var_0.a.x, var_0.a.x)))), vec3<u32>(u_input.a, ~1u, 61323u), -32029i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f), var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * var_0.e)))), _wgslsmith_div_f32(-1656f, _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_1 = !vec3<bool>(false, select(all(vec3<bool>(true, true, false)), true, var_0.e <= _wgslsmith_f_op_f32(f32(-1f) * -1329f)), any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a.xx)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1286f, var_2.x, -242f), var_0.a, var_1.x)) * _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)) + vec3<f32>(_wgslsmith_f_op_f32(-1704f * var_2.x), _wgslsmith_f_op_f32(min(-425f, -537f)), _wgslsmith_f_op_f32(abs(715f)))))), firstLeadingBit(firstTrailingBit(countOneBits(var_0.b))), arg_1.x, var_0.a.x, var_0.e);
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-404f, _wgslsmith_f_op_f32(-640f - var_2.x), -920f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_2.x, var_2.x) + var_0.a)))))), var_0.b, firstLeadingBit(var_0.c), var_2.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f * var_2.x) - 908f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    var var_0 = u_input.b;
    let var_1 = abs(min(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, arg_0.b.x), 1u, select(61295u, u_input.d, false), u_input.d), vec4<u32>(0u, 4294967295u | arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(89200u, arg_0.b.x, 62219u, u_input.d), vec4<u32>(39256u, u_input.d, 46372u, 11340u)), _wgslsmith_dot_vec3_u32(arg_0.b, arg_0.b)))) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, u_input.a), u_input.d, arg_0.b.x | u_input.a, u_input.d), ~abs(vec4<u32>(u_input.a, arg_0.b.x, u_input.a, 4294967295u)));
    var var_2 = -firstTrailingBit(u_input.c) & _wgslsmith_dot_vec2_i32(u_input.e.wx, vec2<i32>(countOneBits(arg_0.c), arg_0.c));
    var_2 = -2147483647i;
    var var_3 = -987f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(843f, arg_0.a.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-arg_0.a), var_1, arg_0))))));
    return vec2<u32>(var_1.x, u_input.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1406f), _wgslsmith_div_f32(-309f, 1181f), true))))), -655f, _wgslsmith_f_op_f32(-1245f - 1f));
    var var_1 = ~u_input.e;
    var var_2 = func_3(Struct_1(vec3<f32>(-1000f, var_0.x, 1191f), ~vec3<u32>(1u, 51310u, func_4(Struct_1(vec3<f32>(var_0.x, var_0.x, 1113f), arg_0, var_1.x, -1378f, 1076f), -238f).x), _wgslsmith_clamp_i32(-19879i, var_1.x, -9445i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -259f))), vec3<i32>(abs(-1i), arg_1.x, countOneBits(-(~9373i))));
    var_1 = vec4<i32>(var_1.x, -_wgslsmith_mult_i32(-min(arg_1.x, arg_1.x), reverseBits(reverseBits(u_input.b))), abs(-47973i), arg_1.x);
    var var_3 = Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 427f), func_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(~var_1.yxy, select(vec3<i32>(arg_1.x, 1i, arg_1.x), vec3<i32>(arg_1.x, u_input.b, 1i), false))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(0i, 45826i)) ^ -vec2<i32>(var_1.x, 34239i), u_input.e.wz, vec2<i32>(~(-2147483647i), ~var_1.x))).b, u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1491f), -2029f);
    return Struct_1(vec3<f32>(-723f, var_0.x, _wgslsmith_f_op_f32(-var_0.x)), vec3<u32>(abs(~(~arg_0.x)), arg_0.x, ~4294967295u), arg_1.x | _wgslsmith_add_i32(-1i, ~var_3.c), -224f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_div_f32(117f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(514f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18119u >> (~(~(~reverseBits(u_input.a))) % 32u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, -1623f, _wgslsmith_f_op_f32(285f - 1895f))))), vec3<u32>(countOneBits(var_0), 55078u, var_0), 239i, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f * 492f)) * 1f)));
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~select(vec2<i32>(-1i, -1i) >> (vec2<u32>(var_1.b.x, u_input.a) % vec2<u32>(32u)), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(1u, 16318u) % vec2<u32>(32u)), vec2<bool>(false, false)), u_input.e.xw), vec2<i32>(var_1.c, var_1.c));
    var_1 = func_5(countOneBits(~(_wgslsmith_mult_vec3_u32(var_1.b, var_1.b) ^ vec3<u32>(var_0, 4294967295u, var_0))), var_2 << (func_4(func_1(-2147483647i, ~vec2<i32>(var_2.x, u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, var_1.d))) % vec2<u32>(32u)), vec4<bool>(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(var_1.e - 1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-873f, var_1.e)) * -1930f) == -1000f));
    var var_3 = 62353u;
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-var_1.a), vec4<u32>(22554u, var_0, 25515u, var_0), func_5(vec3<u32>(var_0, u_input.a, 0u), vec2<i32>(var_1.c, u_input.b), vec4<bool>(true, false, false, false)))), var_1.d, -325f, _wgslsmith_div_f32(var_1.d, var_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, _wgslsmith_f_op_f32(-875f + -1351f), _wgslsmith_f_op_f32(var_1.e - var_1.e), _wgslsmith_f_op_f32(floor(var_1.e))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_div_f32(-708f, 445f))))));
    var_1 = Struct_1(var_1.a, _wgslsmith_sub_vec3_u32(~(vec3<u32>(1u, var_1.b.x, u_input.d) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 7294u, var_0), vec3<u32>(var_1.b.x, 13028u, var_0))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(16102u, u_input.a, var_1.b.x), var_1.b)), reverseBits(-18813i), _wgslsmith_f_op_f32(674f * 850f), _wgslsmith_f_op_f32(select(func_1(firstLeadingBit(u_input.e.x) >> (_wgslsmith_sub_u32(var_1.b.x, 41115u) % 32u), select(_wgslsmith_sub_vec2_i32(u_input.e.yy, vec2<i32>(-6157i, var_2.x)), abs(vec2<i32>(u_input.b, 11185i)), vec2<bool>(true, true))).e, var_1.d, all(vec3<bool>(true, 4294967295u >= var_1.b.x, true)))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 1000f)), 286f, -1115f)), countOneBits(countOneBits(var_1.b)), 15204i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f * var_4.x) * _wgslsmith_f_op_f32(371f - var_4.x)), _wgslsmith_f_op_f32(ceil(1321f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(316f * -1408f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_div_f32(var_4.x, var_4.x), -56992i > u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.e)))));
    let var_6 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -58119i), -(~u_input.e.xx)), max(firstLeadingBit(u_input.e.wx), vec2<i32>(-13028i, -7544i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f * -1172f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)), _wgslsmith_f_op_f32(855f - var_1.a.x))));
}

