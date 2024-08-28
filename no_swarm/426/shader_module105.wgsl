struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - -1417f), arg_2.x);
    var var_1 = arg_3;
    var var_2 = -max(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-6614i, -31472i, u_input.b), vec3<i32>(-1i, -1i, -8920i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, -2147483647i, -32966i), abs(vec3<i32>(0i, u_input.a, arg_3.d)))) | _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, -46565i, u_input.a), vec3<i32>(-2147483647i, var_1.c.e.x, u_input.a) >> (u_input.c.xww % vec3<u32>(32u)));
    var_2 = _wgslsmith_sub_vec3_i32(reverseBits(-countOneBits(vec3<i32>(var_2.x, u_input.a, -1i))), vec3<i32>(-38419i, 20263i, var_2.x));
    var var_3 = arg_3.c;
    return var_3.b;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(u_input.c.x, 4294967295u), func_3(vec2<u32>(~(arg_1.c.a | arg_1.c.a), ~(~72832u)), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.c.a, arg_1.c.a), ~0u << (~arg_1.c.a % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.xw + _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.xz))) - vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_1.c.c.x))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2355f, -1016f, arg_0, 155f) - arg_1.b) * vec4<f32>(arg_0, 403f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(arg_1.a * arg_1.b), arg_1.c.b.x)), arg_1.c, countOneBits(_wgslsmith_add_i32(u_input.a, 1i)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1121f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + -948f)))), true, arg_1.c.e >> (~vec2<u32>(firstTrailingBit(u_input.c.x), ~u_input.c.x) % vec2<u32>(32u)));
    var_0 = arg_1.c;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_1.a, _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_0, -460f, arg_0, -543f))))) + _wgslsmith_f_op_vec4_f32(step(arg_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(arg_1.b, arg_1.a))))))), _wgslsmith_f_op_vec4_f32(floor(arg_1.b)), arg_1.c, u_input.b);
    var_0 = Struct_1(~(~_wgslsmith_clamp_u32(0u, 1u, var_0.a)) << (~max(var_0.a, 1u) % 32u), func_3(_wgslsmith_div_vec2_u32(vec2<u32>(47618u, arg_1.c.a), u_input.c.yy), max(_wgslsmith_add_u32(53714u, 1u), countOneBits(var_1.c.a & var_0.a)), var_1.a.ww, var_1), vec3<f32>(var_1.b.x, var_0.c.x, arg_1.b.x), func_3(vec2<u32>(var_1.c.a, 41802u), abs(0u), arg_1.a.wy, arg_1).x, select(vec2<i32>(~(-36875i), ~11624i), ~max(vec2<i32>(var_0.e.x, var_0.e.x), vec2<i32>(-21302i, arg_1.c.e.x)), any(select(arg_1.c.b.yzx, var_1.c.b.zwy, false))) & (vec2<i32>(-1i) * -var_1.c.e));
    var var_2 = _wgslsmith_f_op_f32(step(arg_1.c.c.x, _wgslsmith_f_op_f32(-var_0.c.x)));
    return 74430u;
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.c;
    var_0 = ~vec4<u32>(abs(u_input.c.x), 20168u, _wgslsmith_mult_u32(min(var_0.x, u_input.c.x), ~4940u), 103196u);
    var_0 = vec4<u32>(0u, u_input.c.x, 1u, ~1u);
    var_0 = vec4<u32>(~44972u ^ var_0.x, u_input.c.x, u_input.c.x, func_4(299f, Struct_2(vec4<f32>(-1498f, _wgslsmith_f_op_f32(f32(-1f) * -800f), -329f, -2589f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, -507f, -295f, 1074f) - vec4<f32>(1022f, 431f, 1322f, 825f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-781f, 946f, -1000f, 1000f) * vec4<f32>(594f, 860f, -351f, 902f)))), Struct_1(~1u, func_3(vec2<u32>(0u, var_0.x), 13606u, vec2<f32>(-671f, -475f), Struct_2(vec4<f32>(211f, 253f, -1041f, -325f), vec4<f32>(-1668f, -979f, 722f, -845f), Struct_1(20024u, vec4<bool>(true, false, true, true), vec3<f32>(312f, -156f, 1000f), false, vec2<i32>(u_input.b, u_input.a)), u_input.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-612f, 526f, 715f), vec3<f32>(887f, 562f, -855f)), false, vec2<i32>(-45142i, u_input.a)), 0i)));
    let var_1 = -_wgslsmith_mult_i32(u_input.b, ~(~17494i));
    return ~select(min(~var_0.xyz, vec3<u32>(countOneBits(var_0.x), _wgslsmith_div_u32(u_input.c.x, var_0.x), firstTrailingBit(5395u))), firstTrailingBit(u_input.c.wwy), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = ~max(abs(-2147483647i), _wgslsmith_mult_i32(1i, -12835i ^ (arg_2.e.x << (0u % 32u))));
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_sub_i32(arg_2.e.x, arg_2.e.x)), arg_2.e.x, select(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-34822i, 71400i, u_input.b, 1i), vec4<i32>(-1729i, -2147483647i, arg_2.e.x, 2147483647i)), all(vec2<bool>(true, false)))) >> (func_2() % vec3<u32>(32u)), -reverseBits(vec3<i32>(-43058i, firstTrailingBit(u_input.b), ~(-18611i))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2013f, 173f, -961f, 645f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, 933f, arg_2.c.x) - vec4<f32>(1402f, -456f, arg_1, 1097f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1000f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, arg_2.c.x), -2346f, _wgslsmith_f_op_f32(ceil(arg_0)), arg_2.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-479f - 1071f), _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(arg_1 * arg_1)))), Struct_1(13931u, vec4<bool>(false, var_1 == func_3(u_input.c.zw, arg_2.a, arg_2.c.yy, Struct_2(vec4<f32>(-106f, arg_2.c.x, 464f, arg_1), vec4<f32>(arg_0, 451f, arg_0, -265f), arg_2, var_2.x)).x, false, false), vec3<f32>(700f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.x))), 1085f), func_3(vec2<u32>(0u, arg_2.a) << (u_input.c.wz % vec2<u32>(32u)), _wgslsmith_mult_u32(abs(u_input.c.x), arg_2.a), vec2<f32>(_wgslsmith_f_op_f32(-839f + arg_1), -1000f), Struct_2(vec4<f32>(arg_0, 1278f, arg_1, -2352f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_1, -1819f, -1255f)), arg_2, -2147483647i)).x, vec2<i32>(-_wgslsmith_clamp_i32(0i, 38864i, -2147483647i), arg_2.e.x)), arg_2.e.x << (_wgslsmith_mult_u32(34740u, arg_2.a) % 32u));
    var_2 = abs(vec3<i32>(max(21068i, abs(1i)), u_input.b, var_3.c.e.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + _wgslsmith_f_op_f32(1049f + 1266f)))) + 1000f);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = vec4<u32>(arg_0.x, 9655u, 6791u, _wgslsmith_add_u32(~arg_1, 40678u)) | ~vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 1u), u_input.c.wzw), ~min(arg_0.x, 4599u), countOneBits(arg_1) >> (arg_0.x % 32u));
    var_0 = u_input.c;
    var_0 = _wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), abs(1u), arg_0.x | var_0.x, 19477u)), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.c, max(vec4<u32>(var_0.x, 30535u, u_input.c.x, arg_0.x), vec4<u32>(arg_0.x, var_0.x, 4294967295u, 24393u))), ~vec4<u32>(u_input.c.x, ~arg_1, ~11239u, ~arg_0.x)));
    var_0 = _wgslsmith_sub_vec4_u32(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 58263u, var_0.x), u_input.c), ~vec4<u32>(u_input.c.x, 15304u, var_0.x, _wgslsmith_add_u32(arg_0.x, 47909u)), any(vec3<bool>(true, true, true)) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), select(firstTrailingBit(min(vec4<u32>(arg_0.x, var_0.x, arg_1, 59759u), abs(u_input.c))), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_mod_u32(21987u, 4294967295u), abs(2559u), ~u_input.c.x, ~arg_1)), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -337f, arg_2, -281f), _wgslsmith_div_vec4_f32(vec4<f32>(133f, 1000f, arg_2, -1589f), vec4<f32>(arg_3, arg_3, arg_2, -101f))))))));
    return abs(~u_input.c.x);
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3;
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, arg_3.c.x)), -975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + 262f)), -914f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-863f * var_0.c.x), -1591f, arg_3.c.x, var_0.c.x)))), arg_3, -52793i);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, ~(~(~(-48712i))), _wgslsmith_mult_i32(min(var_1.c.e.x, var_0.e.x), u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.b), var_0.e.x, i32(-1i) * -8386i), vec3<i32>(countOneBits(1i), _wgslsmith_mult_i32(1i, arg_3.e.x), -10308i)) ^ ~(vec3<i32>(-2147483647i, 43195i, u_input.b) & ~vec3<i32>(var_1.d, 2147483647i, -1i)));
    var var_4 = Struct_2(vec4<f32>(-1886f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(501f, _wgslsmith_f_op_f32(max(-1085f, -1283f)))) + 948f), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.c.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-833f, -1000f, false)), _wgslsmith_f_op_f32(max(-310f, 1063f))))), _wgslsmith_f_op_f32(f32(-1f) * -446f), -398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f))), arg_3, -firstTrailingBit(abs(_wgslsmith_dot_vec2_i32(var_3.xx, vec2<i32>(0i, u_input.b)))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.c.x)) * _wgslsmith_f_op_f32(arg_0.x + var_0.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) * 1039f)), _wgslsmith_f_op_f32(var_1.c.c.x * 1895f), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(sign(var_0.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), 113f, _wgslsmith_f_op_f32(ceil(323f))), Struct_1(arg_3.a, vec4<bool>(false, !(var_1.c.d || arg_1), false, arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.zxw + vec3<f32>(-1597f, arg_0.x, -629f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-381f)), _wgslsmith_div_f32(-390f, arg_2), -1350f)), !all(vec4<bool>(var_4.c.d, true, var_0.d, true)), min(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(32186i, arg_3.e.x)), _wgslsmith_add_vec2_i32(var_0.e, arg_3.e)), var_0.e)), 11766i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(-1f), 1000f, _wgslsmith_f_op_f32(-1168f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-427f)), _wgslsmith_f_op_f32(-1360f + -589f)))), _wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + -1548f)))), !(_wgslsmith_add_u32(u_input.c.x, ~u_input.c.x) >= 36640u), -394f, Struct_1(_wgslsmith_mult_u32(func_5(vec3<u32>(6896u, 19196u, u_input.c.x) | u_input.c.xzw, countOneBits(u_input.c.x), -1222f, _wgslsmith_f_op_f32(func_1(282f, -1437f, Struct_1(u_input.c.x, vec4<bool>(true, false, true, true), vec3<f32>(-758f, 1780f, 1228f), true, vec2<i32>(1i, -5427i))))), ~_wgslsmith_div_u32(0u, 4294967295u)), !vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-403f, 113f, 1479f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1447f, -1000f) + vec3<f32>(704f, -949f, 2117f)))), true, firstTrailingBit(~vec2<i32>(u_input.b, 34910i)) >> (u_input.c.xw % vec2<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.c.xx, vec2<u32>(0u, u_input.c.x)) & vec2<u32>(_wgslsmith_add_u32(2664u, 0u), func_4(var_0.a.x, Struct_2(vec4<f32>(-380f, -695f, var_0.c.c.x, var_0.c.c.x), vec4<f32>(363f, 2037f, 519f, var_0.a.x), Struct_1(4294967295u, var_0.c.b, var_0.a.yww, false, var_0.c.e), var_0.c.e.x))), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(16546u, u_input.c.x), ~vec2<u32>(var_0.c.a, u_input.c.x)))), !(!var_0.c.b), var_0.b.wzx, all(func_3(~vec2<u32>(38711u, u_input.c.x), ~var_0.c.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.ww)), vec2<f32>(var_0.c.c.x, var_0.c.c.x))), Struct_2(_wgslsmith_f_op_vec4_f32(var_0.b * var_0.a), vec4<f32>(-551f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.c, u_input.b ^ u_input.b))), -(-(~vec2<i32>(u_input.b, u_input.b)) & ~vec2<i32>(-2147483647i, -10375i)));
    let var_2 = Struct_2(var_0.a, vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(abs(var_1.c.x)), 205f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_1.c.x))), func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.a))), !(true != var_1.d), -311f, var_0.c).c, u_input.b);
    let var_3 = -49995i;
    var var_4 = var_2.c;
    var var_5 = var_0.c.c.x;
    var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, vec4<i32>(var_4.e.x, 0i, -2147483647i, firstTrailingBit(~30497i << (abs(var_1.a) % 32u))));
}

