struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1096f, _wgslsmith_f_op_f32(955f - _wgslsmith_f_op_f32(1135f - 303f)))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-312f - _wgslsmith_f_op_f32(f32(-1f) * -1158f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f - -835f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1314f, 1383f) + 442f))));
    let var_1 = 926f;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(21034i, -17594i, u_input.b, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_add_i32(35475i, u_input.b), _wgslsmith_clamp_i32(u_input.b, 2147483647i, -31941i), u_input.b)), 35930i & reverseBits(_wgslsmith_div_i32(0i, u_input.b))), vec4<i32>((-63734i >> (1u % 32u)) >> (_wgslsmith_mult_u32(47900u, _wgslsmith_clamp_u32(u_input.d.x, 0u, 9940u)) % 32u), u_input.b, u_input.b ^ ~0i, min(u_input.b, -1i ^ max(u_input.b, 62459i))), ~(u_input.b | select(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 66888i)), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1212f, var_0.x, -533f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-929f, var_1, var_1), vec3<f32>(-346f, 1402f, -1337f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_1) * vec3<f32>(-927f, 1884f, -587f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-385f, var_1, var_0.x))), vec3<bool>(true, true, true)))))), firstLeadingBit(~vec4<i32>(-u_input.b, _wgslsmith_div_i32(61955i, -28915i), 0i, 0i)));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1429f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_1), -408f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(var_2.d.x + var_0.x)), _wgslsmith_f_op_f32(var_1 * var_1)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-998f * var_1))));
    return !all(vec3<bool>(false, true, true));
}

fn func_4(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_1(reverseBits(reverseBits(vec2<i32>(u_input.b, u_input.b)) >> ((abs(vec2<u32>(u_input.c.x, 1u)) | firstLeadingBit(u_input.c)) % vec2<u32>(32u))), ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(-54213i, u_input.b, 2948i, -21854i))) ^ -vec4<i32>(-20974i << (u_input.a % 32u), u_input.b | u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-15163i, u_input.b, u_input.b, 2147483647i), vec4<i32>(-1i, 56697i, u_input.b, 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 46029i), vec2<i32>(3128i, 2147483647i))), u_input.b, _wgslsmith_div_vec3_f32(vec3<f32>(1207f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(800f)), 1620f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-777f, 424f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1269f, -832f, 758f), vec3<f32>(1516f, 1000f, 703f))))), vec4<i32>(u_input.b, -u_input.b, 27574i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 14444i, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), ~vec4<i32>(-1i, u_input.b, -1i, -17103i))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-53930i, ~(-2147483647i ^ var_0.c)), var_0.b.zz), var_0.b, 1i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(760f * var_0.d.x)))))), ~vec4<i32>(-_wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(u_input.b, -29200i, var_0.b.x, u_input.b)), var_0.b.x, countOneBits(var_0.b.x), _wgslsmith_mod_i32(-1i, -27886i | u_input.b)));
    var_0 = var_1;
    let var_2 = 4896u;
    var_0 = var_1;
    return vec4<i32>(abs(_wgslsmith_div_i32(abs(u_input.b) >> (~u_input.d.x % 32u), _wgslsmith_dot_vec2_i32(~var_0.a, var_1.e.yy))), _wgslsmith_mult_i32(var_0.a.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, var_0.a.x), _wgslsmith_mult_i32(u_input.b, -2147483647i)) << (u_input.d.x % 32u)), -1i, select(firstLeadingBit(-_wgslsmith_mult_i32(u_input.b, -2147483647i)), _wgslsmith_mod_i32(var_0.c ^ (i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(~var_0.e.wyz, -var_0.e.xwx)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, 4294967295u), ~vec4<u32>(u_input.d.x, 34952u, var_2, 6661u)) >= ~abs(23366u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = !select(vec2<bool>(true, !select(false, false, false)), vec2<bool>(true, true), (true && all(vec2<bool>(false, false))) & true);
    var var_1 = 1000f;
    var_1 = -554f;
    var var_2 = Struct_1(~(-_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b))), func_4(func_3()), ~_wgslsmith_mult_i32(u_input.b | u_input.b, u_input.b), vec3<f32>(-1625f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1722f))))), 1f), vec4<i32>(countOneBits(u_input.b), reverseBits(1i), -u_input.b, 681i));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(624f + -1000f), _wgslsmith_f_op_f32(1188f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.d.x)), _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-167f, _wgslsmith_f_op_f32(var_2.d.x * var_2.d.x), _wgslsmith_f_op_f32(664f + var_2.d.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d), vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x)))))));
    return Struct_1(-(vec2<i32>(-1i) * -max(var_2.a, vec2<i32>(u_input.b, 1i))), ~_wgslsmith_add_vec4_i32((vec4<i32>(var_2.e.x, var_2.a.x, -1i, -51885i) ^ var_2.e) >> (~vec4<u32>(1u, 0u, arg_0, 24230u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(firstLeadingBit(var_2.b), vec4<i32>(u_input.b, -33786i, 2147483647i, var_2.e.x))), u_input.b, var_2.d, ~var_2.e);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = 169f;
    var_1 = var_0.d.x;
    let var_2 = !vec4<bool>(!(true && (arg_2 == var_0.a.x)), true & all(vec4<bool>(true, true, false, false)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)));
    var var_3 = u_input.d;
    return var_0;
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.d.x) | u_input.d), u_input.d)), u_input.d.yw, reverseBits(~select(-2147483647i, _wgslsmith_mult_i32(-39642i, u_input.b), false)));
    let var_1 = u_input.b;
    var var_2 = -(i32(-1i) * -32013i);
    var var_3 = _wgslsmith_mult_vec2_i32(countOneBits(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(33498i, var_1)))), abs(~vec2<i32>(u_input.b, ~1i)));
    var_2 = u_input.b;
    return -var_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_div_vec2_i32(~arg_1.a, arg_1.e.wy), vec4<i32>(_wgslsmith_mod_i32(-4221i, ~_wgslsmith_mult_i32(u_input.b, arg_1.e.x)), ~(~u_input.b), -21742i, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.a.x, u_input.b, u_input.b), firstTrailingBit(2147483647i))), _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(arg_0.b.x, -1i)), arg_1.d, arg_0.e << (~vec4<u32>(~u_input.c.x, 4294967295u, u_input.d.x, reverseBits(u_input.c.x)) % vec4<u32>(32u)));
    var_0 = func_2(u_input.d.x);
    let var_1 = var_0.a.x;
    let var_2 = vec4<bool>(arg_2, arg_2, !func_3() || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d.x)) - -259f) > var_0.d.x);
    let var_3 = vec4<bool>(any(var_2.xx), var_2.x, true, var_2.x);
    return _wgslsmith_f_op_f32(2114f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -417f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.x * 1161f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.xxx, ~(~min(vec3<u32>(4294967295u, 179u, u_input.c.x), vec3<u32>(1u, u_input.c.x, 0u)))), _wgslsmith_clamp_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 45550u, u_input.d.x), vec3<u32>(35818u, 4294967295u, u_input.d.x))), vec3<u32>(firstLeadingBit(u_input.d.x) << (_wgslsmith_clamp_u32(4294967295u, 0u, u_input.a) % 32u), 126670u, ~(u_input.c.x & 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(~u_input.c.x, u_input.c.x), _wgslsmith_mult_u32(31595u, min(u_input.a, 52903u)), 1u)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_6(Struct_1(_wgslsmith_sub_vec2_i32(select(vec2<i32>(16868i, 32063i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, true)), vec2<i32>(u_input.b, u_input.b)), func_1(), u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-619f, -271f, -235f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-323f, 1415f, -384f) * vec3<f32>(1000f, -573f, 540f))), vec4<i32>(u_input.b, -1600i, func_4(false).x, 18691i)), Struct_1(reverseBits(vec2<i32>(3233i, 11095i) | vec2<i32>(u_input.b, -42359i)), func_5(Struct_1(vec2<i32>(u_input.b, 1i), vec4<i32>(u_input.b, -13580i, -27484i, u_input.b), u_input.b, vec3<f32>(-2214f, -175f, -478f), vec4<i32>(u_input.b, -30965i, 4991i, 50798i)), var_0.zx, -2147483647i).b, max(reverseBits(u_input.b), ~(-8750i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_f_op_f32(abs(-1111f)), -689f), _wgslsmith_add_vec4_i32(min(vec4<i32>(-15149i, -2147483647i, 13628i, u_input.b), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), min(vec4<i32>(-25854i, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, 1i, u_input.b, u_input.b)))), true)), 851f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_6(Struct_1(~vec2<i32>(9950i, u_input.b), ~vec4<i32>(49920i, u_input.b, 8948i, u_input.b), 19271i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -832f, 1000f)), -vec4<i32>(u_input.b, 2147483647i, 105588i, u_input.b)), func_5(func_2(u_input.a), reverseBits(vec2<u32>(var_0.x, u_input.d.x)), u_input.b), true)))), -1242f);
    var var_4 = countOneBits(firstTrailingBit(u_input.b) & 2147483647i);
    var_4 = ~(-u_input.b);
    let var_5 = reverseBits(11823i);
    let var_6 = firstLeadingBit(vec3<i32>(-var_5, abs(-_wgslsmith_mult_i32(var_5, u_input.b)), ~_wgslsmith_add_i32(u_input.b, u_input.b)));
    var var_7 = -31309i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1274f))), 944f, 217f))), _wgslsmith_sub_u32(max(var_0.x, u_input.d.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, var_0.x), u_input.d.xzx) % 32u), firstLeadingBit(u_input.d.x)) ^ _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.d.x & 11935u, 1u, 0u)), u_input.d);
}

