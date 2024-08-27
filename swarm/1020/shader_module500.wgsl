struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, 13034i)), u_input.a.x, i32(-1i) * -26539i, u_input.a.x), vec4<i32>(u_input.a.x, ~(-2147483647i), select(u_input.a.x >> (68862u % 32u), u_input.a.x >> (34919u % 32u), true), _wgslsmith_add_i32(-u_input.a.x, ~1i))), vec4<i32>(25282i, max(-30356i, _wgslsmith_clamp_i32(58794i, -3578i, u_input.a.x)) | -u_input.a.x, u_input.a.x, u_input.a.x));
    var var_1 = Struct_1(3348i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1274f, -475f, -706f, -2496f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -952f, 409f, 552f))))), vec3<f32>(_wgslsmith_f_op_f32(step(-938f, _wgslsmith_f_op_f32(1472f + _wgslsmith_f_op_f32(step(-509f, -439f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(349f, -1315f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(362f, 1534f, true))), 1083f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 789f, -1000f, -974f))) + vec4<f32>(789f, -1000f, 1589f, 776f)))), ~1u & _wgslsmith_dot_vec2_u32(~(~vec2<u32>(18067u, 4294967295u)), vec2<u32>(~1u, firstTrailingBit(41179u))));
    var_1 = Struct_1(_wgslsmith_mod_i32(2147483647i, -23675i), var_1.d, var_1.c, _wgslsmith_f_op_vec4_f32(abs(var_1.b)), _wgslsmith_clamp_u32(~25381u, _wgslsmith_mod_u32(var_1.e, countOneBits(0u)), ~1u));
    var_1 = Struct_1(1i, var_1.b, var_1.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -666f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1276f + var_1.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), var_1.e);
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a, 132469i), -2147483647i & var_1.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, var_1.b.x, var_1.b.x, var_1.c.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-458f, -1788f, -1013f, 1299f), _wgslsmith_f_op_vec4_f32(step(var_1.d, var_1.b)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.d.x, var_1.b.x)), 1f)), _wgslsmith_f_op_f32(min(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.d)), var_1.d), max(4294967295u, ~var_1.e));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1163f * var_1.d.x)))), var_1.d.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(any(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true)), true, true);
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(step(-1572f, 824f)), u_input.a.x <= u_input.a.x)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -433f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1273f), 1268f, 993f, -986f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(543f, -2064f, 652f, 1008f)))));
    let var_2 = -1024f;
    var_0 = select(true || !all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, false, true)), false) & true;
    return Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(-394f)), _wgslsmith_f_op_f32(round(var_1.x)), 1345f)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(872f, -1121f, 1071f, 198f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.wxz - var_1.yyz))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1129f, var_2, var_1.x, -374f) * vec4<f32>(var_1.x, -707f, var_1.x, -224f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1059f, var_1.x, -207f, var_1.x), vec4<f32>(672f, var_2, var_1.x, var_1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-989f, var_2, var_1.x, var_2), vec4<f32>(var_2, var_1.x, var_2, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, -445f, var_2, -905f) + vec4<f32>(-2586f, -397f, -1000f, 1309f))))), ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(45997u, 41446u, 4294967295u, 32369u), vec4<u32>(86333u, 0u, 0u, 2064u)) | ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(41039u, 0u, 15928u, 358u), vec4<u32>(4294967295u, 7551u, 1u, 95387u))), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = 30965u;
    let var_1 = 2147483647i >> (1u % 32u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.c.zx + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.c.x, arg_1.d.x))), arg_1.d.yw)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(528f, -801f)), arg_1.b.x));
    let var_3 = ~(-(~vec4<i32>(~(-2147483647i), -9917i, 1i, u_input.a.x)));
    return _wgslsmith_mult_i32(44167i, -16681i);
}

fn func_1(arg_0: f32) -> vec3<i32> {
    var var_0 = i32(-1i) * -21016i;
    var var_1 = func_4(func_2(), func_2());
    var var_2 = _wgslsmith_mod_i32(-(~countOneBits(-49375i)), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(22557i, 10602i, u_input.a.x, u_input.a.x), vec4<i32>(0i, -3713i, u_input.a.x, 4121i)) >> (vec4<u32>(~0u, ~79297u, 16865u, firstTrailingBit(42152u)) % vec4<u32>(32u)), abs(vec4<i32>(41430i, -54868i, 0i, u_input.a.x)) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 12809i), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_3 = u_input.a;
    var var_4 = vec3<i32>(1i, 30104i, ~u_input.a.x);
    return vec3<i32>(var_3.x, func_4(Struct_1(var_4.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, arg_0, arg_0, 1332f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 2082f), vec4<f32>(-1527f, -756f, arg_0, -890f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1048f, arg_0, 159f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(684f, arg_0, 1000f, arg_0) + vec4<f32>(-187f, 1344f, 516f, arg_0)), _wgslsmith_mult_u32(1u, countOneBits(4294967295u))), Struct_1(u_input.a.x >> (~1u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(402f, arg_0, 739f, 1554f), vec4<f32>(arg_0, -676f, -742f, 894f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1013f, arg_0, arg_0), vec3<f32>(1152f, 1220f, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -415f, 553f, _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_sub_u32(func_2().e, 4294967295u))), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_3.x, -1i), var_4.zx, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<i32>(~var_4.x, 16265i & var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(~u_input.a, -func_1(_wgslsmith_f_op_f32(-775f * -1018f)));
    let var_1 = u_input.a.yz;
    let var_2 = Struct_1(-1i, vec4<f32>(825f, -151f, -306f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f - 864f) * 1f), -1569f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(func_2().b, vec4<f32>(635f, _wgslsmith_f_op_f32(736f - -301f), _wgslsmith_f_op_f32(sign(606f)), _wgslsmith_f_op_f32(-2393f + -1806f))) + vec4<f32>(_wgslsmith_f_op_f32(step(104f, 422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-821f, 819f, false))), _wgslsmith_f_op_f32(-330f - _wgslsmith_f_op_f32(trunc(1000f))))), 21603u);
    var var_3 = func_2();
    var_3 = var_2;
    var_3 = func_2();
    var var_4 = func_2();
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, ~_wgslsmith_clamp_u32(~(~var_2.e), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, 3240u), firstTrailingBit(vec2<u32>(var_5.e, 22649u))), 4294967295u ^ var_3.e));
}

