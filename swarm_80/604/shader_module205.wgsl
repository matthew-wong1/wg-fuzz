struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    let var_0 = all(select(select(arg_1.b, select(vec4<bool>(arg_0.a.b.x, true, true, arg_0.c.b.x), vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x), vec4<bool>(true, arg_1.b.x, arg_0.c.b.x, false)), arg_0.a.b.x), select(arg_1.b, !arg_1.b, true), true));
    var var_1 = !(!(((true | arg_1.b.x) || false) & !arg_1.b.x));
    var_1 = true;
    let var_2 = ~2147483647i;
    var_1 = all(arg_1.b);
    return _wgslsmith_add_i32(1i, arg_1.d);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = !(~(-(~arg_0.x)) >= func_3(Struct_2(Struct_1(-567f, vec2<bool>(true, false), vec4<i32>(-17176i, u_input.b, -45411i, arg_0.x), vec2<u32>(76906u, 26515u), 1436f), 1u, Struct_1(-302f, vec2<bool>(true, false), vec4<i32>(-1i, 2147483647i, arg_0.x, -1i), vec2<u32>(26410u, 19547u), -856f)), Struct_4(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), max(4294967295u, 32690u), -35536i, _wgslsmith_f_op_f32(floor(419f)))));
    var var_1 = 1710f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-891f)), -1000f), vec2<bool>(true, var_0), _wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.a.x, 0i, arg_0.x, u_input.b) | vec4<i32>(u_input.a.x, 2147483647i, u_input.b, arg_0.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1454i, -49194i, 1i), vec4<i32>(arg_0.x, u_input.a.x, u_input.a.x, arg_0.x))), abs(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), abs(_wgslsmith_sub_u32(~25692u, 1u)), Struct_1(_wgslsmith_f_op_f32(-379f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-582f)) + -1565f)), !vec2<bool>(true && var_0, var_0), ~select(vec4<i32>(40494i, arg_0.x, 0i, -2147483647i), vec4<i32>(u_input.b, u_input.a.x, 1i, 7585i), vec4<bool>(false, var_0, false, var_0)) >> (~(~vec4<u32>(1u, 14967u, 0u, 9198u)) % vec4<u32>(32u)), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(-101f + 532f)))));
    var_1 = _wgslsmith_f_op_f32(round(var_2.a.a));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.a.e, _wgslsmith_div_f32(-690f, -833f)))), select(!vec2<bool>(false, var_2.a.b.x), select(var_2.a.b, !vec2<bool>(var_0, var_0), true), true), vec4<i32>(28862i, max(-2147483647i, -2147483647i), -49709i & select(-13352i, -2147483647i, var_2.a.b.x), ~(~26911i)), min(var_2.c.d, ~(vec2<u32>(1u, var_2.b) ^ vec2<u32>(4294967295u, var_2.c.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2345f + -419f)))), countOneBits(~var_2.b), Struct_1(986f, !(!select(vec2<bool>(var_2.c.b.x, true), var_2.c.b, true)), vec4<i32>(var_2.c.c.x, abs(25290i), abs(arg_0.x), 2147483647i >> (var_2.a.d.x % 32u)) ^ min(vec4<i32>(-1i, var_2.a.c.x, -11327i, -2147483647i) ^ vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a.x, 876i), vec4<i32>(var_2.a.c.x, 0i, -35476i, -1i), vec4<i32>(arg_0.x, 2147483647i, u_input.b, var_2.c.c.x))), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_2.a.d, vec2<u32>(var_2.a.d.x, var_2.c.d.x)), vec2<u32>(var_2.b, 0u)) & var_2.a.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1104f, 287f) * _wgslsmith_f_op_f32(-1165f + _wgslsmith_div_f32(-721f, var_2.c.a)))));
    return countOneBits(~_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.c.c.x, var_2.c.c.x), -2147483647i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1774f - 2027f))), 220f));
    let var_1 = _wgslsmith_div_vec4_i32(max(~firstTrailingBit(abs(arg_0)), ~arg_0), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, ~23666i), arg_2.x, -u_input.b, -(~func_3(Struct_2(Struct_1(var_0.x, vec2<bool>(true, false), vec4<i32>(u_input.a.x, 11152i, u_input.b, arg_0.x), arg_3.wz, 137f), arg_1.x, Struct_1(-1799f, vec2<bool>(true, false), vec4<i32>(1i, arg_0.x, -1i, u_input.a.x), vec2<u32>(arg_1.x, arg_3.x), -763f)), Struct_4(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), 35081u, 33866i, var_0.x)))));
    let var_2 = vec3<bool>(9992u <= arg_1.x, all(vec4<bool>(true, -2147483647i > var_1.x, var_1.x >= 0i, 2147483647i >= var_1.x)) && (select(true, true, true) | all(vec2<bool>(true, true))), 1u < _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(arg_1.x, 4294967295u), arg_1.x, ~_wgslsmith_clamp_u32(1u, arg_1.x, arg_3.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-420f, var_0.x, var_0.x), vec3<f32>(var_0.x, 406f, var_0.x))), vec3<f32>(-475f, 1425f, var_0.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1333f, 371f, var_0.x)), vec3<f32>(1524f, -1405f, -583f)))))));
    let var_3 = Struct_4(select(!select(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(true, false, var_2.x, false)), vec4<bool>(true, var_2.x, false, false), var_2.x), select(vec4<bool>(select(false, false, true), true, !var_2.x, !var_2.x), vec4<bool>(true, var_2.x & false, false, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, false, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x)), true)), true), vec4<bool>(var_2.x, all(var_2.xy), false, any(vec4<bool>(!var_2.x, select(false, true, true), true, true))), _wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_div_i32(-45244i, i32(-1i) * -1i), _wgslsmith_div_f32(1070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)))));
    return false;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_3(~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(13547i, -5965i, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i))), arg_2.x, ~_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, 0i, 1i), vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(-2147483647i, u_input.b, -1i, -56141i))), _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(arg_2.x, 54070u, 4294967295u, arg_2.x))) ^ ~(~vec4<u32>(87041u, 61983u, 30538u, 4294967295u)), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2.x, arg_2.x, 5257u), vec4<u32>(4294967295u, 4294967295u, 58193u, 5050u)), ~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u), arg_3.x)), Struct_1(-609f, vec2<bool>(true, false), firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 34728i, -2147483647i))), _wgslsmith_mod_vec2_u32(arg_2, _wgslsmith_sub_vec2_u32(arg_2, arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-521f * arg_1))))));
    let var_1 = _wgslsmith_add_vec2_i32(reverseBits(u_input.a), _wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(var_0.e.c.x, u_input.a.x), abs(vec2<i32>(1i, u_input.b))), var_0.e.c.yw, _wgslsmith_sub_vec2_i32(-u_input.a | (u_input.a << (vec2<u32>(4100u, 22976u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.b, var_0.e.c.x)), select(vec2<i32>(u_input.a.x, var_0.c), var_0.e.c.xw, arg_0.x), countOneBits(u_input.a)))));
    let var_2 = Struct_1(var_0.e.a, var_0.e.b, var_0.e.c, vec2<u32>(~25594u, 31990u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1461f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)) + _wgslsmith_div_f32(513f, var_0.e.a)), _wgslsmith_f_op_f32(round(-1000f)), var_2.e, _wgslsmith_f_op_f32(f32(-1f) * -1077f)));
    var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.a, var_0.e.e)) * _wgslsmith_f_op_f32(f32(-1f) * -715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.e.a)))), _wgslsmith_f_op_f32(-var_0.e.e), 1532f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -734f, _wgslsmith_f_op_f32(var_2.a * -1820f), arg_1), vec4<f32>(_wgslsmith_f_op_f32(max(617f, var_0.e.e)), _wgslsmith_f_op_f32(ceil(var_0.e.e)), _wgslsmith_f_op_f32(select(var_3.x, -1469f, true)), _wgslsmith_f_op_f32(var_0.e.e + var_2.a))))), select(var_2.b.x, arg_3.x, var_0.e.b.x)));
    return StorageBuffer(min(countOneBits(-2147483647i), 1i), _wgslsmith_mod_u32(var_0.e.d.x, ~var_0.d), var_3.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(346f)), 250f, any(vec3<bool>(arg_0.x, var_2.b.x, false))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> StorageBuffer {
    return func_5(vec3<bool>(false, any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), arg_1 != ~_wgslsmith_add_u32(0u, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -312f))))), vec2<u32>(arg_1, _wgslsmith_sub_u32(_wgslsmith_add_u32(max(arg_1, arg_0), arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 1628u) ^ vec3<u32>(arg_0, 92969u, arg_0), ~vec3<u32>(arg_0, arg_1, arg_1)))), vec4<bool>(true == all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), true, func_4(vec4<i32>(-3839i, _wgslsmith_div_i32(2147483647i, 7242i), u_input.a.x, func_2(vec3<i32>(u_input.a.x, -1425i, -11447i))), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_0, arg_1, arg_0) ^ vec4<u32>(75881u, 0u, 61058u, 11271u), ~vec4<u32>(0u, arg_0, arg_0, arg_1)), vec2<i32>(~u_input.b, u_input.a.x), ~(~vec4<u32>(arg_0, 84007u, arg_0, 0u))), !all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~1u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(26366u, 1u, 43354u, 0u), vec4<u32>(1u, 1u, 1u, 1u), false), vec4<u32>(~1u, firstTrailingBit(6175u), ~(~4294967295u), ~firstLeadingBit(1u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1124f - -480f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1000f, 2073f)))))), 970f));
}

