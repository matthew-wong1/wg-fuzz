struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(313f, 1000f))) + -339f), _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(2442f * _wgslsmith_f_op_f32(step(-1047f, 384f)))), _wgslsmith_f_op_f32(-1145f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(590f - 737f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1680f, -373f, 932f, 858f)) + vec4<f32>(-664f, 1000f, -156f, 1278f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(722f, -206f, 519f, 1013f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-484f, -328f, -430f, -1000f), vec4<f32>(959f, -819f, 683f, -494f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1518f, -707f, -1040f, 1075f))) + vec4<f32>(199f, -910f, -1000f, 917f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, 1588f, -855f, 1227f)), _wgslsmith_div_vec4_f32(vec4<f32>(-955f, 1465f, 461f, 920f), vec4<f32>(1346f, 391f, -1162f, -2189f))), vec4<bool>(true, true, true, all(vec2<bool>(true, true))))))));
    let var_1 = !(_wgslsmith_f_op_f32(f32(-1f) * -253f) <= _wgslsmith_f_op_f32(round(var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2799f, -1066f, var_0.x, -1425f), vec4<f32>(var_0.x, 691f, var_0.x, 2590f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 859f, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x), vec4<f32>(445f, 1231f, 1169f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -884f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, 949f), vec4<f32>(-1262f, var_0.x, 1364f, -943f), var_1)))), true))));
    var var_2 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x)))) * -558f)));
    var var_3 = ~(~select(vec3<u32>(4294967295u, 4294967295u, 38931u), vec3<u32>(16771u, 4294967295u, 0u), true) >> (~reverseBits(vec3<u32>(1u, 41604u, 38306u)) % vec3<u32>(32u))) << (~_wgslsmith_mult_vec3_u32(abs(firstTrailingBit(vec3<u32>(59192u, 38003u, 1u))), vec3<u32>(0u, 1u, ~25034u)) % vec3<u32>(32u));
    return ~var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec2<i32>) -> vec4<i32> {
    let var_0 = abs(1i);
    let var_1 = vec2<bool>(true, !(all(arg_1.a.yzy) | arg_1.a.x));
    let var_2 = Struct_1(-vec2<i32>(var_0, u_input.b), 1000f, func_3(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(409f, -1000f)), _wgslsmith_f_op_f32(step(1903f, -1000f)), _wgslsmith_f_op_f32(arg_0.b + 2123f))))), ~(vec4<u32>(arg_0.c, arg_0.e.x, 5110u, 0u) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.e.x, 2539u, arg_0.e.x), vec4<u32>(32150u, 36156u, arg_0.e.x, arg_0.c)) % vec4<u32>(32u))) ^ ~arg_0.e);
    let var_3 = false;
    var var_4 = !var_1;
    return abs(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-26176i, arg_0.a.x, 0i, u_input.b), firstLeadingBit(vec4<i32>(1568i, u_input.b, 2147483647i, -4584i))))) << (vec4<u32>(~(~arg_0.c), ~(~(var_2.c ^ 0u)), 1u, 4294967295u) % vec4<u32>(32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    var var_0 = firstLeadingBit(countOneBits(-func_2(Struct_1(vec2<i32>(64021i, 14903i), -547f, 17915u, vec3<f32>(-1000f, -1538f, arg_1.b), arg_1.e), Struct_3(vec4<bool>(true, arg_3.x, false, false)), _wgslsmith_f_op_f32(-arg_1.b), arg_1.a)));
    var_0 = vec4<i32>(-8505i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0.x, 1i) ^ (var_0.x >> (arg_0.x % 32u)), var_0.x, var_0.x), abs(vec3<i32>(u_input.b, var_0.x, u_input.b)) << (~arg_1.e.zwz % vec3<u32>(32u))), u_input.a.x);
    var var_1 = Struct_5(Struct_2(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.a.x, 1i, var_0.x, -1i), func_2(arg_1, Struct_3(vec4<bool>(false, arg_3.x, false, arg_3.x)), -1684f, vec2<i32>(arg_1.a.x, arg_1.a.x)), vec4<i32>(-25823i, 2147483647i, 2147483647i, arg_1.a.x)), Struct_1(~vec2<i32>(var_0.x, var_0.x) & ~vec2<i32>(u_input.b, 12320i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1.d.x)), _wgslsmith_f_op_f32(1545f * 568f))), arg_0.x, _wgslsmith_f_op_vec3_f32(round(arg_1.d)), ~_wgslsmith_mult_vec4_u32(arg_1.e, arg_1.e)), var_0.yz), Struct_1(vec2<i32>(22294i, 0i), _wgslsmith_f_op_f32(f32(-1f) * -413f), arg_2, _wgslsmith_f_op_vec3_f32(-arg_1.d), vec4<u32>(abs(_wgslsmith_add_u32(48503u, 24369u)), min(countOneBits(1u), 4294967295u), 57835u, ~arg_1.c)));
    let var_2 = Struct_5(Struct_2(var_1.a.a, var_1.a.b, vec2<i32>(var_0.x, u_input.b)), Struct_1(var_1.b.a, arg_1.d.x, 1u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a.b.d * vec3<f32>(var_1.a.b.b, var_1.a.b.d.x, arg_1.b)), vec3<f32>(1f, 1f, 1f), arg_3))), vec4<u32>(min(0u, ~var_1.b.e.x), var_1.a.b.c, ~2221u, 0u)));
    var_1 = Struct_5(var_2.a, var_2.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.b)))));
}

fn func_4(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = Struct_5(Struct_2(~_wgslsmith_mult_vec4_i32(func_2(Struct_1(u_input.a, arg_1, 31471u, vec3<f32>(-341f, -156f, -1015f), vec4<u32>(70445u, 0u, 4294967295u, 16279u)), Struct_3(vec4<bool>(false, false, arg_0, true)), 1554f, u_input.a), firstTrailingBit(vec4<i32>(u_input.b, 2147483647i, -9484i, u_input.a.x))), Struct_1(vec2<i32>(u_input.b, 0i & u_input.a.x), -721f, ~abs(2582u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2231f, 914f) - vec3<f32>(arg_1, 1000f, arg_1)) * vec3<f32>(172f, arg_1, arg_1)), max(max(vec4<u32>(101907u, 19678u, 12464u, 90752u), vec4<u32>(0u, 77240u, 28814u, 57151u)), ~vec4<u32>(3603u, 22813u, 4294967295u, 6101u))), u_input.a), Struct_1(reverseBits(~u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1) - arg_1), _wgslsmith_f_op_f32(round(1215f)))), ~func_3(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-353f, 1000f, arg_1) + vec3<f32>(-517f, -1000f, -778f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -212f) * vec3<f32>(-1307f, arg_1, -1007f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -334f, arg_1))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = u_input.b;
    var_0 = Struct_5(var_0.a, var_0.a.b);
    let var_2 = Struct_5(Struct_2(_wgslsmith_sub_vec4_i32(var_0.a.a, var_0.a.a >> (vec4<u32>(var_0.b.c, 1u, 4294967295u, 0u) % vec4<u32>(32u))), var_0.a.b, vec2<i32>((var_0.b.a.x >> (var_0.b.e.x % 32u)) & var_0.a.a.x, -(~var_0.b.a.x))), var_0.b);
    let var_3 = 460f;
    return -_wgslsmith_clamp_i32(var_2.a.a.x, 2147483647i, abs(firstTrailingBit(firstTrailingBit(var_0.a.c.x))));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = Struct_5(Struct_2(-(max(vec4<i32>(u_input.b, u_input.a.x, -1i, -55078i), vec4<i32>(-1i, 0i, 0i, arg_0)) << (var_0.b.e % vec4<u32>(32u))), arg_1.b, select(u_input.a, abs(vec2<i32>(35596i, arg_1.b.a.x)), select(vec2<bool>(arg_1.d.x, arg_1.d.x), var_0.d.xw, var_0.d.x)) >> (~(~vec2<u32>(arg_1.b.e.x, 1u)) % vec2<u32>(32u))), var_0.c);
    var_1 = Struct_5(var_1.a, var_0.b);
    var_1 = Struct_5(Struct_2(vec4<i32>(30205i, 2147483647i, countOneBits(var_0.a), u_input.b) ^ var_1.a.a, var_0.b, vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.a.a.wxw, vec3<i32>(32968i, -29613i, 25998i)), -20373i) << (_wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, var_0.b.e.x)), firstTrailingBit(vec2<u32>(var_1.a.b.c, 0u))) % vec2<u32>(32u))), var_1.b);
    let var_2 = var_0.d.yxy;
    return ~firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_1.b.a.x, arg_0), _wgslsmith_div_i32(var_1.b.a.x, var_1.b.a.x)), abs(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.x;
    var var_1 = max(firstTrailingBit(_wgslsmith_mult_i32(u_input.b, var_0)), u_input.a.x);
    var var_2 = abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-11475i, _wgslsmith_add_i32(-33904i, -1071i)), ~(u_input.a & u_input.a)), -vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.a.x), min(-32045i, 12554i)), _wgslsmith_div_vec2_i32(u_input.a, -u_input.a & -vec2<i32>(u_input.a.x, var_0))));
    var var_3 = func_5(func_4(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(12024u, 36460u, 2948u), Struct_1(u_input.a, 1000f, 50729u, vec3<f32>(-244f, 775f, 1000f), vec4<u32>(1u, 1u, 4294967295u, 1u)), 29385u, vec3<bool>(true, true, true))) * _wgslsmith_f_op_f32(f32(-1f) * -1001f)), _wgslsmith_f_op_f32(ceil(-666f))))), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, u_input.a.x, -2036i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0, u_input.b), vec3<i32>(2147483647i, u_input.b, var_2.x))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_0, 1i, var_2.x), vec4<i32>(34032i, -1i, 2147483647i, -1i), vec4<i32>(u_input.b, var_2.x, var_0, var_2.x)))), Struct_1(firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-1i, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f + 329f)), min(max(4019u, 33832u), ~97513u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, 585f, 571f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-366f, -1086f, -265f))), min(~vec4<u32>(54693u, 0u, 64866u, 55650u), ~vec4<u32>(1u, 4294967295u, 132794u, 0u))), Struct_1(vec2<i32>(var_0 & 0i, 2147483647i), 139f, ~(~1u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1206f, 1188f, -534f), vec3<f32>(-1269f, -165f, -967f))))), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(true, true, true, true)));
    var var_4 = Struct_4(0i, Struct_1(u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-978f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 736f)), ~reverseBits(1u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(365f, 557f, 386f) - vec3<f32>(-730f, -1453f, 122f))))), ~vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(select(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 0i)) ^ u_input.a, _wgslsmith_div_vec2_i32(u_input.a & u_input.a, u_input.a), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58034u, 44686u, 53068u, 1u), vec4<u32>(11592u, 17051u, 0u, 0u)), ~81364u) >> (12014u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1145f, -879f, 1039f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1160f, 2192f, -418f), vec3<f32>(858f, 235f, 838f), vec3<bool>(false, true, true)))))), firstLeadingBit(vec4<u32>(1u, _wgslsmith_add_u32(55567u, 0u), 1u, _wgslsmith_mod_u32(817u, 66512u)))), vec4<bool>(true, !all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.c.d.x), _wgslsmith_div_f32(var_4.c.b, -1491f), -1605f, -1000f)), vec4<f32>(var_4.c.d.x, _wgslsmith_f_op_f32(-var_4.b.b), 2813f, _wgslsmith_f_op_f32(func_1(var_4.c.e.www & var_4.c.e.yyx, Struct_1(u_input.a, var_4.c.d.x, 0u, var_4.c.d, var_4.c.e), firstLeadingBit(4294967295u), !var_4.d.xyx))), var_4.d.x)), -reverseBits(-func_2(Struct_1(vec2<i32>(var_2.x, var_0), var_4.c.d.x, var_4.c.c, vec3<f32>(var_4.b.b, 167f, var_4.b.d.x), var_4.b.e), Struct_3(vec4<bool>(var_4.d.x, var_4.d.x, var_4.d.x, true)), var_4.c.b, var_4.b.a)));
}

