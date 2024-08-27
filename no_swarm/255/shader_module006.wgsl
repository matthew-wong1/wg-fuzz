struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = arg_0.a.x;
    let var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(~arg_0.c, min(1u, 39258u), arg_0.d, 4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 17932u, arg_0.c, arg_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d, 1u, arg_0.c, arg_0.c), vec4<u32>(65319u, arg_0.c, 4294967295u, arg_0.c))) ^ vec4<u32>(917u | arg_0.d, ~arg_0.d, 0u, 1u)) << (vec4<u32>(~1u, firstLeadingBit(1u), arg_0.d, reverseBits(17536u)) % vec4<u32>(32u));
    var_0 = select(reverseBits(-_wgslsmith_div_i32(abs(1i), -9472i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(abs(reverseBits(u_input.a)), _wgslsmith_clamp_i32(u_input.a, 2147483647i, -2147483647i) | max(arg_0.a.x, 46662i), u_input.a), -u_input.a), select(any(vec2<bool>(false, select(false, true, true))), false, arg_0.c <= ~arg_0.c));
    let var_2 = 329f;
    let var_3 = ~max(-arg_0.a.yzz, arg_0.e);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-750f, -1368f, arg_0.b), vec3<f32>(var_2, 1077f, 596f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1065f, 367f, 871f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -679f, 1040f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-133f, arg_0.b, arg_0.b), vec3<f32>(arg_0.b, arg_0.b, 468f))), true))), (36262i >= _wgslsmith_div_i32(-1i, u_input.a)) != true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), ~vec2<u32>(17945u, 4294967295u))), 1u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(18649u, 0u), vec2<u32>(4294967295u, 3838u)), 1u), 4294967295u), max(1u, ~0u)), ~(~(~vec4<u32>(20863u, 30569u, 4294967295u, 7441u))));
    var_0 = abs(reverseBits(14422u));
    var_0 = 35896u;
    let var_1 = vec3<f32>(arg_2.x, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(3069i, arg_0.x, 1i, 2147483647i), vec4<i32>(arg_1, arg_1, 22890i, u_input.a)) ^ vec4<i32>(0i, arg_0.x, arg_0.x, arg_0.x), arg_2.x, firstTrailingBit(~35533u), abs(0u), arg_0))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(991f * arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1094f, arg_2.x) + _wgslsmith_f_op_f32(-193f - -888f))))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(58374i, -22534i, arg_1, u_input.a)), abs(vec4<i32>(20635i, arg_0.x, 21476i, arg_1)) & (vec4<i32>(arg_1, arg_1, arg_0.x, 1424i) | vec4<i32>(1i, arg_0.x, arg_0.x, -14812i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-25296i, arg_1, arg_1, 12387i), vec4<i32>(arg_1, u_input.a, 1i, 22735i) >> (vec4<u32>(24454u, 30050u, 5382u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(-26305i, -13314i, 70255i, u_input.a)), vec4<i32>(-2147483647i, -u_input.a, _wgslsmith_sub_i32(32440i, 1i), u_input.a)), select(vec4<i32>(0i, -22623i, 1i, ~u_input.a), vec4<i32>(-22682i, _wgslsmith_mod_i32(arg_1, arg_0.x), 1i, arg_1), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(54411u, 10745u)), ~(~0u)) | _wgslsmith_mult_u32(select(78002u, ~4294967295u, any(vec4<bool>(true, false, false, true))), ~countOneBits(0u)), _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(1u, 40257u, 4294967295u, 1u))), abs(vec4<u32>(_wgslsmith_sub_u32(1338u, 1u), ~12664u, 1u, _wgslsmith_mod_u32(52123u, 4294967295u)))), arg_0);
    return _wgslsmith_f_op_vec3_f32(func_3(var_2)).x != _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -1431f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = !(!(true | all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true))));
    var_0 = false;
    var_0 = true;
    var_0 = false;
    var_0 = func_4(arg_0.e, 1i >> (~arg_0.c % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, -223f, arg_0.b) + vec3<f32>(740f, 1004f, arg_0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1, 1000f, 77857u, 1u, vec3<i32>(0i, u_input.a, u_input.a)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, 172f, -904f) * vec3<f32>(arg_0.b, -1239f, arg_0.b)))))));
    return firstTrailingBit(vec4<i32>(arg_1.x, arg_1.x, u_input.a, -1085i));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = 1u;
    let var_1 = !(!arg_1 & func_4(vec3<i32>(arg_2.x >> (0u % 32u), _wgslsmith_sub_i32(-175i, 56697i), select(arg_0.x, -45296i, arg_1)), firstLeadingBit(u_input.a), vec3<f32>(_wgslsmith_div_f32(714f, -1000f), -922f, arg_3.x)));
    let var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0, var_0), _wgslsmith_clamp_u32(1u, 3801u, 62432u)), var_0, -arg_0.zwx))).x, firstLeadingBit(77161u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~reverseBits(vec2<u32>(31509u, var_0)), min(reverseBits(vec2<u32>(var_0, var_0)), select(vec2<u32>(4294967295u, var_0), vec2<u32>(var_0, 4294967295u), vec2<bool>(true, arg_1)))), vec2<u32>(12165u, ~4294967295u)), ~(~vec3<i32>(arg_0.x, u_input.a, -u_input.a)));
    let var_3 = var_2.e;
    let var_4 = select(!vec4<bool>(true, true, !(true | arg_1), !(false || arg_1)), vec4<bool>(arg_1, true, 0i < _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, u_input.a), i32(-1i) * -67008i, _wgslsmith_mod_i32(0i, arg_2.x)), !(!var_1)), ~var_2.d > var_0);
    return ~_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(var_0, var_2.d, 60662u))), reverseBits(~vec3<u32>(var_2.c, var_2.c, var_0)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = min(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, arg_1.d, 1u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.c, 4652u), vec3<u32>(29775u, 59692u, arg_1.c)) % vec3<u32>(32u)), vec3<u32>(6012u, arg_0.d, _wgslsmith_mod_u32(arg_0.c, arg_0.c)), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, 1u), vec2<u32>(4294967295u, 1u)), arg_0.d << (79117u % 32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_1.d, _wgslsmith_add_u32(arg_1.d, arg_1.c), arg_1.d), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 19211u, 147045u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c, arg_1.c, 4294967295u), vec3<u32>(arg_0.c, 117138u, arg_0.c))))), firstTrailingBit(vec3<u32>(~(~1u), arg_1.c << (1u % 32u), 16432u)));
    var_0 = select(func_5(_wgslsmith_sub_vec4_i32(arg_1.a, max(func_2(Struct_1(arg_0.a, -1633f, arg_0.d, 24435u, arg_1.e), arg_1.a), countOneBits(arg_0.a))), true, -_wgslsmith_sub_vec2_i32(vec2<i32>(-24184i, arg_0.a.x), arg_1.e.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1620f, 1731f) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b, arg_1.b), vec2<f32>(175f, 170f))) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.b * -253f), _wgslsmith_f_op_f32(-940f + arg_1.b)))), select(~vec3<u32>(_wgslsmith_add_u32(36266u, 49495u), ~arg_0.d, 0u), min(firstTrailingBit(vec3<u32>(4294967295u, 1u, 4294967295u) ^ vec3<u32>(0u, var_0.x, arg_1.d)), select(reverseBits(vec3<u32>(arg_0.c, arg_1.d, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d, arg_1.c, 4294967295u), vec3<u32>(arg_0.c, var_0.x, arg_1.c)), true)), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), !select(!func_4(vec3<i32>(arg_2, arg_1.e.x, arg_2), -1i, vec3<f32>(1524f, -1407f, 526f)), !any(vec4<bool>(false, true, false, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))));
    var var_1 = vec4<i32>(793i, 2147483647i, abs(-2147483647i), arg_0.a.x) & (~(-(arg_0.a | arg_0.a)) ^ vec4<i32>(u_input.a, 5622i, arg_1.e.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.a.x, -1i), arg_1.e.xy, false), arg_1.a.yz)));
    var var_2 = any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(arg_0.c != arg_0.c, true, arg_0.a.x >= 11211i)), vec3<bool>(true, false, true), true));
    var_2 = any(!select(vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, all(vec2<bool>(true, true)), 1i < var_1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))));
    return Struct_1(func_2(arg_1, _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a, u_input.a, _wgslsmith_clamp_i32(arg_2, arg_1.a.x, arg_0.a.x), arg_2), select(~arg_0.a, arg_0.a, all(vec2<bool>(false, false))))), arg_1.b, arg_1.c, arg_0.d, -arg_1.e);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec2<bool> {
    let var_0 = vec3<bool>(true, func_4(-(vec3<i32>(-11173i, arg_1.e.x, arg_1.a.x) & _wgslsmith_clamp_vec3_i32(arg_1.a.zxy, arg_1.e, arg_1.a.wwy)), 29147i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(572f, -467f, arg_1.b)))))), false);
    let var_1 = select(select(vec4<bool>(true, _wgslsmith_add_i32(1i, arg_1.e.x) > arg_1.a.x, 1u >= ~arg_2, !arg_3), vec4<bool>(!var_0.x | all(var_0.yy), true, var_0.x, all(!var_0)), true), select(vec4<bool>(true, !var_0.x & all(vec3<bool>(arg_3, false, arg_3)), all(!vec2<bool>(true, arg_3)), select(true, false, !arg_0.x)), !vec4<bool>(true, arg_1.b <= arg_1.b, false, arg_0.x), select(vec4<bool>(select(arg_3, var_0.x, false), select(var_0.x, true, true), arg_3, !arg_3), !select(vec4<bool>(true, arg_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, arg_3, true, true)), any(vec2<bool>(true, arg_0.x)))), select(select(!select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, arg_3, false, arg_3), false), !vec4<bool>(false, false, var_0.x, var_0.x), var_0.x), !vec4<bool>(!var_0.x, var_0.x, var_0.x, !arg_3), var_0.x));
    let var_2 = vec4<u32>(~0u, 33405u, arg_1.c, arg_2);
    var var_3 = ~arg_1.a.zz;
    var var_4 = Struct_1(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_3.x, -arg_1.e.x, 1i, countOneBits(0i))), vec4<i32>(arg_1.e.x, _wgslsmith_dot_vec3_i32(arg_1.a.zyw, arg_1.a.yxz), ~10572i, -1i) << (var_2 % vec4<u32>(32u))), -1058f, ~(1u | _wgslsmith_clamp_u32(select(4294967295u, 1u, false), var_2.x, arg_2)), arg_1.d, countOneBits(arg_1.a.wzy));
    return !var_0.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), func_6(vec2<bool>(true, true), func_1(Struct_1(vec4<i32>(-2147483647i, u_input.a, -31364i, u_input.a), -1550f, 0u, 46815u, vec3<i32>(9120i, -2147483647i, 10594i)), Struct_1(vec4<i32>(10814i, u_input.a, -1i, u_input.a), -1880f, 54812u, 55824u, vec3<i32>(u_input.a, u_input.a, 1i)), u_input.a), max(128009u, 4294967295u), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true))));
    var_0 = true;
    var_0 = (!(select(u_input.a, u_input.a, true) > -u_input.a) && any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true))) || (true & !any(vec4<bool>(false, false, false, false)));
    var_0 = true;
    let var_1 = select(true, any(vec3<bool>(false, all(vec3<bool>(true, true, true)), func_6(select(vec2<bool>(true, false), vec2<bool>(false, true), true), Struct_1(vec4<i32>(2147483647i, u_input.a, -90461i, 17982i), -998f, 57034u, 4294967295u, vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(88299u, 61387u, 0u, 47274u), vec4<u32>(0u, 4294967295u, 9483u, 62581u)), false).x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, func_1(Struct_1(abs(vec4<i32>(17357i, u_input.a, 554i, u_input.a)), _wgslsmith_f_op_f32(-132f + -413f), 0u, 1u, vec3<i32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(45735u, 38213u, 20870u) % vec3<u32>(32u))), Struct_1(-vec4<i32>(56200i, u_input.a, 0i, u_input.a), _wgslsmith_f_op_f32(309f + -731f), ~19920u, ~63818u, abs(vec3<i32>(u_input.a, u_input.a, 2147483647i))), u_input.a).e.x, 0i, abs(1i)), vec3<i32>(-1i) * -(firstLeadingBit(vec3<i32>(0i, 1i, -1i)) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -2147483647i), vec3<i32>(21458i, u_input.a, u_input.a))), vec3<u32>(4294967295u, ~(~(~4294967295u)), ~156584u));
}

