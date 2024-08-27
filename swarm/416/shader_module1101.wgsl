struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, 1308f, -395f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(498f, -1256f, 291f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(319f, -1325f, -818f))))));
    var var_1 = !arg_0.x;
    let var_2 = !vec4<bool>(!any(!arg_0), false, any(arg_0.xz), all(vec2<bool>(true || arg_0.x, true)));
    let var_3 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -714f)) + var_0.x), -331f, _wgslsmith_f_op_f32(ceil(var_0.x))), vec3<bool>(!any(arg_0), (var_0.x >= _wgslsmith_f_op_f32(sign(-513f))) || true, true)));
    return 99667u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    return func_3(arg_1.b.wyy);
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_add_i32(u_input.c, max(-u_input.c, -2408i)), ~(~799u), ~(~abs(arg_0.x)), Struct_1(~293i, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false))));
    var_0 = Struct_3(Struct_2(13568i, _wgslsmith_clamp_u32(countOneBits(68077u), ~(~arg_0.x), func_2(Struct_2(u_input.c, arg_0.x, 0u, var_0.a.d), var_0.a.d, u_input.d.wyw)), _wgslsmith_div_u32(var_0.a.b, ~_wgslsmith_div_u32(u_input.b, u_input.b)), var_0.a.d));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -575f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f - -2541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2588f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-665f, -193f, 752f, 377f), vec4<f32>(-298f, -1060f, 3453f, -257f), vec4<bool>(var_0.a.d.b.x, true, var_0.a.d.b.x, var_0.a.d.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1917f, 1724f, 1226f, -2099f) * vec4<f32>(2563f, -167f, 617f, -1339f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 386f, 1168f, -1000f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 235f, 2231f, -403f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-914f, 394f, var_1.x, var_1.x)))))) - vec4<f32>(-327f, -209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1674f * var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(step(752f, 107f))))));
    var var_2 = Struct_3(Struct_2(max(firstTrailingBit(-65498i), -12167i), ~u_input.b, ~firstLeadingBit(arg_0.x), Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.a, -5124i), vec2<i32>(u_input.c, var_0.a.a)), !vec4<bool>(var_0.a.d.b.x, false, false, false))));
    return firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(30016u, arg_0.x), max(var_2.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(76295u, arg_0.x, u_input.a.x, 2468u), arg_0) >> (arg_0.x % 32u)), 0u, var_0.a.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -469f))));
    let var_1 = Struct_3(Struct_2(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(select(u_input.b, 20642u, arg_1), ~arg_0.x, u_input.a.x, u_input.b | 10298u), arg_0), ~reverseBits(arg_0.x), Struct_1(-u_input.c | _wgslsmith_clamp_i32(u_input.e, u_input.d.x, 1i), select(!vec4<bool>(arg_1, arg_1, arg_1, false), !vec4<bool>(arg_1, true, true, true), select(vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(true, false, false, arg_1), vec4<bool>(true, false, true, arg_1))))));
    let var_2 = !select(var_1.a.d.b, var_1.a.d.b, select(vec4<bool>(false || arg_1, !arg_1, true, all(var_1.a.d.b.wxx)), var_1.a.d.b, all(select(vec2<bool>(var_1.a.d.b.x, arg_1), vec2<bool>(true, arg_1), arg_1))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-2382f - -1000f), _wgslsmith_f_op_f32(step(arg_2, arg_2)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, -991f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-757f, arg_2) + vec2<f32>(-2307f, -739f)))))));
    var var_3 = var_1;
    return Struct_3(Struct_2(select(countOneBits(var_1.a.d.a), 2147483647i, !var_1.a.d.b.x) ^ -25007i, var_1.a.b, firstLeadingBit(_wgslsmith_add_u32(0u, 33830u)), Struct_1(-9575i, !vec4<bool>(false, false, false, var_1.a.d.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = func_4(func_1(~(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x) | max(vec4<u32>(u_input.b, 1u, 4294967295u, u_input.a.x), vec4<u32>(0u, 0u, 5942u, 0u)))), any(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), false)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), 857f);
    var_1 = Struct_3(Struct_2(1i, (0u | firstTrailingBit(0u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.c, var_1.a.b, 1u, 1u), vec4<u32>(var_1.a.c, var_1.a.b, u_input.b, 55347u)), 1u, var_1.a.d));
    var var_2 = u_input.d.wy;
    let var_3 = -1930f;
    let var_4 = ~_wgslsmith_dot_vec4_i32(select(~vec4<i32>(u_input.d.x, 17286i, var_1.a.a, u_input.d.x), select(vec4<i32>(2970i, 1i, u_input.c, -1i), select(u_input.d, vec4<i32>(22063i, -55804i, var_1.a.d.a, var_2.x), vec4<bool>(var_1.a.d.b.x, var_1.a.d.b.x, var_1.a.d.b.x, true)), vec4<bool>(true, true, true, true)), any(vec4<bool>(var_1.a.d.b.x, false, var_1.a.d.b.x, false)) || (var_1.a.d.b.x | var_1.a.d.b.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a, u_input.d.x, 1i, u_input.d.x), vec4<i32>(var_2.x, u_input.c, 17511i, var_2.x)), ~u_input.d), vec4<i32>(-1i, ~(-12992i), u_input.c, var_1.a.a & u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(300f, _wgslsmith_sub_vec2_u32(vec2<u32>(func_2(Struct_2(27947i, 8390u, 4294967295u, var_1.a.d), func_4(vec4<u32>(u_input.b, u_input.b, var_1.a.c, var_1.a.c), var_1.a.d.b.x, -283f).a.d, max(vec3<i32>(var_4, var_2.x, 2147483647i), u_input.d.wzx)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, var_1.a.c, 56486u, 48767u), vec4<u32>(u_input.a.x, 74408u, 22453u, u_input.b), var_1.a.d.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.c, 0u, 4294967295u, u_input.b), vec4<u32>(u_input.a.x, var_1.a.b, 50499u, var_1.a.b)))), _wgslsmith_div_vec2_u32(func_1(vec4<u32>(4294967295u, 0u, 48372u, u_input.b)).yx, u_input.a.zx)), _wgslsmith_div_f32(-688f, var_3), 57222u);
}

