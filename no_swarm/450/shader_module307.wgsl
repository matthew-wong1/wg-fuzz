struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 251f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.x * 2137f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.c.x, var_0.b.x))))), arg_2);
    var var_2 = Struct_2(reverseBits(arg_0.a), _wgslsmith_f_op_vec2_f32(-arg_1.zy), Struct_1(vec2<u32>(4294967295u, 20492u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b, arg_2.b, u_input.a, 40521u) & min(vec4<u32>(17329u, 54053u, arg_0.c.a.x, arg_2.a.x), vec4<u32>(arg_0.c.b, var_0.c.b, var_0.c.b, u_input.b.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.a.x, arg_2.b, 51572u, arg_0.c.a.x), min(vec4<u32>(30866u, arg_0.c.a.x, 1u, 2438u), vec4<u32>(var_1.c.a.x, arg_2.a.x, 1u, arg_0.c.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(814f, _wgslsmith_f_op_f32(622f - 106f), -1000f, _wgslsmith_div_f32(-216f, var_1.b.x))), all(select(!vec2<bool>(true, var_1.c.d), vec2<bool>(true, arg_0.c.d), false | arg_2.d))));
    var var_3 = arg_0;
    var var_4 = arg_0;
    return var_3.a;
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(65253i, 0i, 51854i, 0i), vec4<i32>(1i, 1i, 1i, 1i))) & _wgslsmith_clamp_i32(11534i, -_wgslsmith_clamp_i32(1498i, 2147483647i, 1i), func_3(Struct_2(34262i, vec2<f32>(190f, 357f), Struct_1(u_input.b, 1u, vec4<f32>(962f, -817f, 1260f, 530f), true)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1704f, 586f, 653f), vec3<f32>(-409f, 2056f, 909f))), Struct_1(u_input.b, u_input.b.x, vec4<f32>(390f, 1000f, -1032f, 1085f), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(807f, -129f), vec2<f32>(1000f, 396f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, -175f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-947f, -463f))), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-734f, 1388f))), vec2<f32>(-534f, 1836f), true)))), Struct_1(u_input.b, reverseBits(~u_input.c) ^ ~(~2877u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, 1166f, 2146f, 419f) * vec4<f32>(-228f, -287f, 406f, 1874f))), true));
    var var_1 = 1000f;
    var var_2 = ~(~firstLeadingBit(~(vec4<u32>(1u, u_input.c, 9427u, 1u) << (vec4<u32>(u_input.a, 1330u, 0u, 27966u) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_add_u32(1u >> (_wgslsmith_div_u32(select(~0u, 5255u, var_0.c.d), 3943u) % 32u), ~_wgslsmith_clamp_u32(30843u, var_2.x, var_2.x));
    var var_4 = Struct_1(max(~(~var_2.xz), u_input.b), _wgslsmith_clamp_u32(~u_input.b.x, reverseBits(70890u), ~_wgslsmith_sub_u32(var_0.c.b, 1u)), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(646f))))), var_0.c.c.x, 480f), var_0.c.d);
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_4.c.x), var_4.c.x, -1358f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(min(countOneBits(vec2<u32>(arg_1.x, 1u)), abs(vec2<u32>(1u, _wgslsmith_div_u32(30827u, 28097u)))), ~7674u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(354f - -1288f), -875f, 1f, arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)), true)) <= -1000f, true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    var_0 = Struct_1(vec2<u32>(arg_1.x, 0u), arg_1.x, var_0.c, any(vec4<bool>(var_0.d, _wgslsmith_div_f32(arg_0.x, -390f) == -112f, var_0.d, var_0.d)));
    var_0 = Struct_1(vec2<u32>(~arg_1.x | 4294967295u, var_0.a.x) >> (~(~arg_1.wx) % vec2<u32>(32u)), ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2261f, var_0.c.x, var_0.c.x, -896f))) + vec4<f32>(_wgslsmith_f_op_f32(259f + 130f), _wgslsmith_f_op_f32(-1326f - 1507f), var_0.c.x, _wgslsmith_f_op_f32(ceil(arg_0.x)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c)))))), any(select(select(select(vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.d, var_0.d, var_0.d), var_0.d), vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(false, true, var_0.d)), vec3<bool>(var_0.d, !var_0.d, true), var_0.d)));
    var var_1 = _wgslsmith_f_op_f32(1538f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-102f, 857f, true)), var_0.c.x)))));
    let var_2 = vec4<bool>(any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), var_0.d))), false, var_0.d, !(!(true || any(vec2<bool>(var_0.d, var_0.d)))));
    return Struct_2(-(~47104i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.yz) + arg_0.zx), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(35890u, var_0.b), u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u) | ~vec2<u32>(u_input.a, 23952u), ~(u_input.b << (vec2<u32>(66263u, arg_1.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.c)))), all(!select(vec4<bool>(var_2.x, var_0.d, var_2.x, true), var_2, vec4<bool>(var_2.x, false, false, false)))));
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2()))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(366f, 585f, 542f), vec3<f32>(-694f, 1000f, -1485f))) * vec3<f32>(634f, 763f, -112f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1483f, 327f, -1000f)))))), vec4<u32>(1u, u_input.b.x, ~u_input.a, select(u_input.b.x, _wgslsmith_mult_u32(select(u_input.b.x, 66149u, false), _wgslsmith_div_u32(u_input.b.x, u_input.c)), true)));
    var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, min(var_0.a, i32(-1i) * -2147483647i), -_wgslsmith_sub_i32(var_0.a, var_0.a), 2147483647i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 10370i, var_0.a) & vec4<i32>(var_0.a, 2147483647i, 11915i, var_0.a), ~vec4<i32>(-1402i, var_0.a, -64662i, -1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) * func_4(vec3<f32>(var_0.c.c.x, 463f, var_0.c.c.x), ~vec4<u32>(0u, 1u, 58673u, u_input.a)).b)), func_4(var_0.c.c.wzw, ~firstTrailingBit(abs(vec4<u32>(u_input.b.x, var_0.c.a.x, u_input.a, 26972u)))).c);
    var var_1 = ~vec2<i32>(func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c.c.x, var_0.b.x, var_0.c.c.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.a.x, 4294967295u, 79580u, var_0.c.a.x), vec4<u32>(u_input.a, 0u, var_0.c.a.x, 4294967295u))).a, select(var_0.a, max(var_0.a, 55607i << (u_input.a % 32u)), _wgslsmith_f_op_f32(trunc(-1121f)) == -1000f));
    var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, var_0.b.x, var_0.b.x)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c.c.xyy + var_0.c.c.ywz), _wgslsmith_f_op_vec3_f32(var_0.c.c.zyx + vec3<f32>(1000f, var_0.c.c.x, -741f)), !vec3<bool>(var_0.c.d, var_0.c.d, var_0.c.d))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, -870f, _wgslsmith_f_op_f32(f32(-1f) * -768f))))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 145024u, var_0.c.a.x, countOneBits(1u)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 29858u, var_0.c.a.x, 4294967295u), vec4<u32>(u_input.a, 98757u, 1u, 32301u)) ^ firstLeadingBit(vec4<u32>(4681u, 31019u, 1u, u_input.a)), vec4<u32>(abs(0u), 87912u, var_0.c.a.x, func_4(var_0.c.c.wxy, vec4<u32>(0u, u_input.c, 0u, u_input.c)).c.a.x))));
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c.c.x, -1008f, true)), _wgslsmith_f_op_f32(-362f * 732f), _wgslsmith_f_op_f32(var_0.c.c.x + 109f))))), select(vec4<u32>(6370u, 0u, reverseBits(var_0.c.a.x) & max(38765u, 4294967295u), abs(~u_input.b.x)), vec4<u32>(~40351u, var_0.c.a.x ^ var_0.c.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b), ~u_input.a) | ~(~vec4<u32>(4673u, 12099u, u_input.b.x, var_0.c.a.x)), var_0.c.d)).c;
    return _wgslsmith_sub_u32(_wgslsmith_add_u32(80411u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u) & vec3<u32>(var_2.b, var_0.c.b, var_2.b), max(vec3<u32>(29517u, var_0.c.b, 1u), vec3<u32>(0u, 0u, var_2.a.x))), u_input.c)), func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1548f - 1316f) * 985f), var_0.c.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.b.x)), var_2.c.x))), vec4<u32>(0u, ~var_0.c.a.x, 20472u, firstLeadingBit(1u))).c.b);
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = -25033i;
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1.b;
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(arg_1.a, arg_0.a, arg_1.a, arg_1.a)), abs(~vec4<i32>(-11672i, 12840i, -2021i, arg_1.a)));
    let var_2 = arg_0.c;
    var var_3 = func_3(Struct_2(25729i, arg_1.c.c.wy, arg_1.c), _wgslsmith_f_op_vec3_f32(-arg_1.c.c.xxy), Struct_1(~arg_0.c.a, ~firstLeadingBit(~1u), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.c.x, var_2.c.x)), var_2.c.x)), -610f, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(939f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))), any(!select(vec3<bool>(true, true, arg_0.c.d), vec3<bool>(true, var_2.d, arg_0.c.d), vec3<bool>(true, var_2.d, true)))));
    let var_4 = var_1.x;
    return func_5(_wgslsmith_f_op_f32(439f + -987f), func_4(var_2.c.wzy, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(55549u, arg_2, 19367u, arg_2), vec4<u32>(58470u, arg_2, arg_2, 7708u), vec4<u32>(36333u, 4294967295u, arg_0.c.b, arg_1.c.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(853f, -1066f, 862f, -1000f), vec4<f32>(-1714f, 1121f, -432f, 501f)))))))) * vec4<f32>(-1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2619f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(round(162f))));
    var var_1 = func_6(func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1570f, -183f)))), Struct_2(~1i, var_0.xy, Struct_1(vec2<u32>(0u, 4294967295u), func_1(), func_4(vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<u32>(12462u, u_input.b.x, u_input.b.x, 0u)).c.c, true))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yyz + vec3<f32>(-1271f, var_0.x, 1667f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, -487f, -663f)))), vec4<u32>(abs(u_input.c), 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, 0u, 165927u), vec4<u32>(u_input.b.x, 67943u, u_input.a, u_input.b.x)), ~5131u), u_input.b.x)), _wgslsmith_add_u32(59811u, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, 47642u, u_input.b.x, 48942u), vec4<u32>(1u, 1u, u_input.c, 1u), vec4<bool>(true, false, true, false)), ~vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x))));
    let var_2 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-func_6(func_4(var_1.c.c.xyy, vec4<u32>(var_1.c.a.x, u_input.b.x, 34019u, 4294967295u)), Struct_2(var_1.a, vec2<f32>(-661f, var_0.x), Struct_1(u_input.b, u_input.b.x, vec4<f32>(-400f, var_0.x, -546f, 647f), var_1.c.d)), func_4(vec3<f32>(var_0.x, 391f, var_1.c.c.x), vec4<u32>(u_input.c, 9641u, var_1.c.a.x, var_1.c.a.x)).c.a.x).c.c.yxw), _wgslsmith_clamp_vec4_u32(~vec4<u32>(6330u, u_input.b.x, 30871u, 0u), ~vec4<u32>(var_1.c.a.x, u_input.b.x, var_1.c.a.x, u_input.b.x), vec4<u32>(1u, u_input.c, u_input.a, u_input.c) & vec4<u32>(98317u, var_1.c.b, 31874u, u_input.a)) << ((abs(vec4<u32>(u_input.a, u_input.b.x, 13245u, 3760u)) >> ((vec4<u32>(var_1.c.b, 0u, 4294967295u, 47216u) >> (vec4<u32>(4294967295u, 0u, 71273u, 27101u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))).c.c.x, Struct_2(~(i32(-1i) * -700i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f * var_0.x) * var_0.x), -135f), Struct_1(vec2<u32>(0u, ~var_1.c.b), _wgslsmith_div_u32(var_1.c.a.x, 46310u) & ~var_1.c.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, -1561f, -922f, var_0.x))), !(!var_1.c.d)))).c;
    var var_3 = vec4<u32>(~func_6(Struct_2(countOneBits(-2147483647i), vec2<f32>(var_2.c.x, var_2.c.x), Struct_1(var_1.c.a, 4294967295u, var_1.c.c, var_2.d)), func_6(Struct_2(var_1.a, vec2<f32>(var_0.x, var_0.x), Struct_1(u_input.b, 1u, vec4<f32>(var_0.x, var_1.c.c.x, var_1.c.c.x, 1347f), false)), func_6(Struct_2(29962i, var_2.c.wy, Struct_1(var_1.c.a, var_1.c.b, vec4<f32>(994f, -1309f, 474f, -514f), var_2.d)), Struct_2(-31887i, vec2<f32>(var_1.c.c.x, -1000f), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), 0u, var_2.c, var_1.c.d)), var_1.c.a.x), _wgslsmith_sub_u32(17382u, 0u)), u_input.a).c.b, 4294967295u, var_2.b, var_2.b);
    var var_4 = func_4(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), -1000f), vec4<u32>(u_input.c, abs(1u) & ~_wgslsmith_div_u32(var_2.a.x, var_3.x), ~1u, ~0u));
    var var_5 = !(!(!select(select(vec4<bool>(false, false, var_2.d, var_4.c.d), vec4<bool>(var_1.c.d, true, true, var_4.c.d), var_4.c.d), vec4<bool>(var_1.c.d, false, var_2.d, true), vec4<bool>(true, var_2.d, true, false))));
    var var_6 = var_5.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(2878u, 12765u, 0u, ~66017u), vec4<u32>(_wgslsmith_sub_u32(u_input.c, 0u), 4294967295u, 4294967295u, func_6(Struct_2(59580i, var_0.zw, Struct_1(var_3.zw, 36396u, var_2.c, true)), Struct_2(2147483647i, vec2<f32>(var_4.b.x, -546f), Struct_1(vec2<u32>(var_4.c.b, 4294967295u), 36886u, var_2.c, var_6.x)), 1u).c.b), vec4<u32>(15609u & var_1.c.b, 5455u, _wgslsmith_clamp_u32(1u, 0u, 52346u), _wgslsmith_div_u32(44515u, var_2.a.x))) | reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(18223u, 1u, 4294967295u, var_3.x), vec4<u32>(u_input.a, var_4.c.a.x, 1u, var_1.c.a.x))), vec3<f32>(func_5(func_4(var_2.c.ywz, countOneBits(vec4<u32>(6867u, var_3.x, 0u, 115854u))).c.c.x, func_6(Struct_2(var_4.a, vec2<f32>(237f, -1828f), Struct_1(vec2<u32>(63277u, var_2.b), 1u, vec4<f32>(var_1.c.c.x, var_0.x, var_0.x, 752f), var_1.c.d)), Struct_2(5735i, vec2<f32>(-336f, var_0.x), Struct_1(var_4.c.a, var_2.b, vec4<f32>(-1295f, var_1.c.c.x, var_1.b.x, var_4.b.x), false)), ~1u)).c.c.x, -1727f, var_1.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_4.c.c.zyx), _wgslsmith_f_op_vec3_f32(func_2()), select(vec3<bool>(var_2.d, true, var_4.c.d), vec3<bool>(true, true, true), true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yxy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.c.yxy - var_0.xzx)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(func_4(var_1.c.c.xyz, vec4<u32>(var_3.x, var_1.c.b, 23238u, var_4.c.b)).b.x, _wgslsmith_f_op_f32(trunc(var_1.b.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c.x))));
}

