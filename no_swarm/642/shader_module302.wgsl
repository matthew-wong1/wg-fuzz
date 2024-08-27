struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = select(!vec4<bool>(!all(vec4<bool>(arg_0.x, arg_0.x, true, false)), select(arg_0.x, false, !arg_0.x), arg_0.x, false), vec4<bool>(false, arg_0.x, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, false, true)))), !arg_0.x), !(!(!(!vec4<bool>(false, false, arg_0.x, arg_0.x)))));
    let var_1 = countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32((vec4<i32>(20188i, -43929i, u_input.c, u_input.c) | vec4<i32>(u_input.c, -2147483647i, -17666i, u_input.c)) << (select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a), vec4<u32>(0u, 0u, 54150u, 1u), false) % vec4<u32>(32u)), vec4<i32>(-u_input.c, u_input.d, 0i, u_input.d)), reverseBits(vec4<i32>(u_input.d, ~52142i, u_input.d, ~45916i))));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~(-var_1.x), -2147483647i, -(i32(-1i) * -3805i), u_input.c), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(63088i, -42861i, u_input.c, u_input.c), var_1), ~(-5124i), _wgslsmith_add_i32(2147483647i, -2147483647i), -14388i | u_input.c)));
    var var_3 = Struct_1(~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(17821u, 0u), vec2<u32>(6509u, u_input.a)), vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(41194u, 0u) % vec2<u32>(32u)))), reverseBits(min(~firstTrailingBit(var_2.xz), vec2<i32>(-1i) * -var_2.wy)), select(select(!vec4<bool>(arg_0.x, false, true, var_0.x), !(!vec4<bool>(arg_0.x, var_0.x, false, var_0.x)), false), vec4<bool>(arg_0.x, var_0.x, u_input.a >= _wgslsmith_sub_u32(1u, u_input.a), all(arg_0.zy)), select(!select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, true, arg_0.x, true)), !(!vec4<bool>(true, var_0.x, arg_0.x, arg_0.x)), true)), _wgslsmith_div_i32(var_2.x, ~firstLeadingBit(-2147483647i)), _wgslsmith_sub_u32(1u, max(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(16546u, u_input.a, 14640u)))));
    var var_4 = vec3<bool>(true, !((13694u >> (_wgslsmith_add_u32(var_3.e, 1u) % 32u)) < 51107u), var_3.c.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -197f);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f + -1420f) + arg_2.x);
    let var_1 = arg_3;
    let var_2 = arg_3.c;
    let var_3 = vec4<u32>(~firstTrailingBit(var_1.a.x), ~47625u, _wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.e, u_input.a, u_input.a, arg_3.a.x), vec4<u32>(u_input.b, u_input.b, 55816u, var_1.e)), ~vec4<u32>(4294967295u, arg_3.a.x, arg_3.a.x, arg_0.a.x) ^ firstTrailingBit(vec4<u32>(4294967295u, 24070u, arg_0.e, 27011u))), ~4294967295u), ~(~arg_3.a.x));
    let var_4 = arg_0;
    return vec2<i32>(2147483647i, select(_wgslsmith_div_i32(abs(~21323i), countOneBits(-1i ^ var_1.b.x)), countOneBits(~arg_3.d), true));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var_0 = -1000f;
    var var_1 = Struct_1(arg_0.a, func_4(arg_0, ~_wgslsmith_div_i32(arg_0.d, ~u_input.d), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false))), -1147f), arg_0), vec4<bool>(arg_0.c.x == arg_0.c.x, arg_0.c.x | arg_0.c.x, select(arg_0.c.x, true, true), false), -51793i, 61178u >> (arg_0.a.x % 32u));
    let var_2 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1923f, 746f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-254f)) - _wgslsmith_f_op_f32(floor(373f))))));
    return select(!select(var_1.c, vec4<bool>(any(vec4<bool>(false, var_2.c.x, var_1.c.x, var_1.c.x)), true, all(vec3<bool>(var_1.c.x, arg_0.c.x, false)), 4294967295u >= arg_1.x), arg_0.c.x), arg_0.c, select(var_2.c, !vec4<bool>(var_2.c.x && false, var_1.c.x, true, !var_1.c.x), true));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.zzw;
    var var_1 = arg_0;
    let var_2 = arg_0;
    var_0 = !vec3<bool>(!(!(var_2.c.x && true)), var_1.c.x, var_1.c.x | all(vec3<bool>(true, var_2.c.x, true)));
    var_0 = var_2.c.yzx;
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(max(7893u, 13683u), ~var_2.a.x, ~1u), ~0u), reverseBits(var_2.e)), select(vec2<i32>(4818i, u_input.c >> (~var_2.e % 32u)), ~firstTrailingBit(firstTrailingBit(vec2<i32>(-2147483647i, 0i))), !var_2.c.yw), func_2(Struct_1(select(vec2<u32>(9372u, 1u), ~vec2<u32>(20167u, 78593u), select(vec2<bool>(false, true), var_2.c.yw, arg_0.c.x)), vec2<i32>(var_2.d, firstTrailingBit(-18747i)), !(!var_2.c), var_2.b.x, _wgslsmith_mod_u32(var_1.a.x, 26752u) | firstLeadingBit(var_1.e)), reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.e, 4294967295u, arg_0.e, 4294967295u), vec4<u32>(4294967295u, var_1.a.x, 1u, 77031u)))), var_1.d, 0u);
}

fn func_1() -> vec4<f32> {
    var var_0 = func_5(Struct_1(vec2<u32>(u_input.a, ~(u_input.a << (100232u % 32u))), min(vec2<i32>(-1i) * -vec2<i32>(u_input.c, -30567i), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(1i, -10826i)), select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(21167i, u_input.c), true))), !(!func_2(Struct_1(vec2<u32>(u_input.b, 4294967295u), vec2<i32>(-2147483647i, u_input.c), vec4<bool>(false, false, false, false), 20002i, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b))), u_input.d, u_input.b));
    var_0 = func_5(func_5(Struct_1(vec2<u32>(countOneBits(55879u), select(var_0.e, 4294967295u, true)), -var_0.b, !func_5(Struct_1(vec2<u32>(4294967295u, u_input.a), vec2<i32>(var_0.d, -1i), var_0.c, var_0.d, 0u)).c, -2147483647i, ~abs(1u))));
    let var_1 = func_5(func_5(Struct_1(~vec2<u32>(u_input.a, 4294967295u), _wgslsmith_mult_vec2_i32(-var_0.b, var_0.b), vec4<bool>(var_0.c.x, true, true, true), u_input.d, ~u_input.b)));
    var var_2 = var_1;
    var_0 = Struct_1(_wgslsmith_div_vec2_u32(var_2.a, vec2<u32>(var_2.a.x, abs(4294967295u >> (u_input.b % 32u)))), var_1.b, var_1.c, func_4(func_5(func_5(Struct_1(vec2<u32>(var_1.e, 42479u), var_0.b, var_1.c, var_0.d, u_input.b))), var_1.b.x, vec3<f32>(715f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) - _wgslsmith_div_f32(-272f, -859f)), -419f), func_5(Struct_1(firstTrailingBit(var_1.a), vec2<i32>(0i, -22991i), vec4<bool>(var_1.c.x, false, var_2.c.x, var_2.c.x), abs(var_1.d), 0u))).x, 81587u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-575f * 510f) - _wgslsmith_div_f32(845f, 2312f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1026f, 1320f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1352f, 1213f) + -330f) - -553f), 492f));
}

fn func_6(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(~vec2<u32>(1u, select(~33056u, firstTrailingBit(24452u), !arg_0)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.d, u_input.c), firstTrailingBit(vec2<i32>(u_input.d, u_input.d ^ u_input.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 2147483647i), -vec2<i32>(-48880i, -10076i))), !vec4<bool>(true, !(!arg_0), !(arg_0 && arg_0), -2147483647i == _wgslsmith_clamp_i32(u_input.c, -2147483647i, 41449i)), -11483i, abs(abs(19866u)));
    let var_1 = 31144u;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.xzw)))));
    let var_3 = -(~vec2<i32>(_wgslsmith_add_i32(1i, var_0.d), 0i)) & var_0.b;
    let var_4 = func_5(func_5(Struct_1(abs(countOneBits(vec2<u32>(50912u, u_input.a))), vec2<i32>(var_0.b.x, 3212i) | ~var_0.b, vec4<bool>(var_0.c.x, all(vec2<bool>(arg_0, var_0.c.x)), true, all(vec3<bool>(true, var_0.c.x, arg_0))), -7664i, 4294967295u)));
    return func_5(func_5(Struct_1(~(var_0.a | var_4.a), firstTrailingBit(select(vec2<i32>(-2147483647i, -9334i), var_3, vec2<bool>(false, var_4.c.x))), vec4<bool>(func_2(var_4, vec4<u32>(7687u, var_0.a.x, var_1, arg_2)).x, true, true, any(vec4<bool>(false, var_4.c.x, false, var_4.c.x))), 1i, firstTrailingBit(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1i;
    let var_1 = func_6(all(vec3<bool>((u_input.a > u_input.a) && true, all(vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(371f, -1593f, -1000f, -1000f)))), _wgslsmith_f_op_vec4_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(565f, 220f, 206f, -623f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1017f, -945f, 500f, -1832f), vec4<f32>(-156f, -1357f, 228f, -566f), false))))), 0u);
    var var_2 = abs(~(vec3<u32>(var_1.a.x << (4294967295u % 32u), _wgslsmith_mult_u32(u_input.a, 0u), var_1.a.x) ^ ~firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, 85113u))));
    let var_3 = func_5(Struct_1(~(~vec2<u32>(1u, u_input.a)), func_6(true, vec4<f32>(_wgslsmith_f_op_f32(-303f + 1000f), _wgslsmith_div_f32(-374f, -920f), _wgslsmith_f_op_f32(round(-787f)), _wgslsmith_f_op_f32(min(-223f, -1281f))), 1u).b, !vec4<bool>(any(var_1.c.zwy), true, false, true), ~(max(22245i, var_0) & -1i), _wgslsmith_dot_vec2_u32(var_2.xz, var_1.a)));
    var var_4 = var_1;
    let var_5 = vec4<i32>(max(var_4.b.x, var_4.b.x << (_wgslsmith_div_u32(var_4.e, 4294967295u) % 32u)), ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, u_input.c, var_4.b.x), vec3<i32>(-19349i, 4183i, 1i))), ~(-3235i) >> (_wgslsmith_mod_u32(var_1.e << (45881u % 32u), var_2.x) % 32u), 2147483647i) >> (~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(51191u, var_3.e, var_3.e, 1u), abs(vec4<u32>(0u, 449u, 27218u, var_4.e)))) % vec4<u32>(32u));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-529f, 352f, -385f) * vec3<f32>(1987f, -587f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(701f, 1771f, 769f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-546f, -1437f, -1814f) + vec3<f32>(440f, 426f, 1742f))))));
    let var_7 = var_3;
    var var_8 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz);
}

