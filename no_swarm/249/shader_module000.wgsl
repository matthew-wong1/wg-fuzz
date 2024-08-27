struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    var var_0 = false | any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true))));
    var var_1 = Struct_2(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), false), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_div_f32(736f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(240f))))), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, arg_0.x), vec3<u32>(0u, u_input.a.x, 21111u)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(28755u, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f + 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-777f, -1913f)), -523f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(778f)))), 765f), vec3<f32>(-778f, _wgslsmith_div_f32(-1989f, _wgslsmith_f_op_f32(select(-1020f, -1232f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1048f + -1010f)))), _wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(u_input.b.x, i32(-1i) * -3416i, u_input.b.x)) << (min(0u, u_input.a.x) % 32u), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, any(vec3<bool>(true, false, false)), false, true), all(vec2<bool>(true, true))));
    var_0 = !(-1861f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.b.a)))));
    var var_2 = !var_1.d;
    var var_3 = var_1.d;
    return arg_0;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(max(~u_input.a | _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(15545u, u_input.a.x)), func_3(vec2<u32>(u_input.a.x, 4294967295u)), reverseBits(u_input.a)), vec2<u32>(4294967295u, _wgslsmith_div_u32(countOneBits(1749u), u_input.a.x))), max(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(41087u, 155063u, u_input.a.x, 37246u), vec4<u32>(0u, u_input.a.x, 9235u, 43759u)), u_input.a.x), select(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u), u_input.a), true)) ^ u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1343f)), _wgslsmith_f_op_f32(1901f - 993f), 1u < var_0.x)), -2580f, -2070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) + _wgslsmith_f_op_f32(f32(-1f) * -656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-216f))))));
    let var_2 = Struct_3(_wgslsmith_div_u32(var_0.x << (abs(4294967295u) % 32u), ~u_input.a.x), u_input.b, Struct_2(!vec3<bool>(any(vec3<bool>(false, false, true)), false, false), Struct_1(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-526f - 1000f)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1u), var_0) >> (vec2<u32>(var_0.x, 18076u) % vec2<u32>(32u)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, 1000f)), var_1.x, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1175f, var_1.x, 856f))), (u_input.b.x & firstLeadingBit(30097i)) ^ -13903i, vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, u_input.b.x > -3835i, u_input.a.x > var_0.x)), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), true)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(select(u_input.a.x, _wgslsmith_mult_u32(var_0.x, u_input.a.x), true), 0u)));
    let var_3 = ~(var_0.x & ~1u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(633f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.c.b.c.x * _wgslsmith_f_op_f32(floor(-439f))), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-761f)), _wgslsmith_f_op_f32(var_2.c.b.d.x + 1f)))));
    return Struct_3(2189u >> (1u % 32u), countOneBits(var_2.b), var_2.c, select(vec4<bool>(var_2.d.x, var_2.d.x, any(var_2.c.d.yy) || any(var_2.c.d), false), select(!vec4<bool>(false, var_2.c.d.x, false, var_2.d.x), !var_2.c.d, !select(vec4<bool>(var_2.c.a.x, var_2.d.x, true, var_2.d.x), var_2.c.d, false)), vec4<bool>(!var_2.c.a.x, var_4.x > _wgslsmith_f_op_f32(floor(var_1.x)), true, true)), max(~u_input.a, u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = false;
    var var_1 = arg_1.d.x;
    var var_2 = func_2().d.wy;
    let var_3 = 1165f;
    var_1 = true;
    return Struct_2(!(!vec3<bool>(all(arg_1.c.d), var_2.x, true)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.c.b.d.x)), _wgslsmith_f_op_f32(1000f - var_3), all(arg_1.d))))), ~arg_1.c.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c.b.c)), vec3<f32>(arg_0.c.b.d.x, _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(1360f + -1907f), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1419f - -496f) - arg_1.c.b.d.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1.c.c, -arg_1.c.c, _wgslsmith_sub_i32(1i, arg_0.c.c), -33603i), u_input.b) & ~16169i, !vec4<bool>(!(!var_2.x), 11794i != arg_0.c.c, false | !arg_0.c.d.x, true));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = func_2().c;
    return -2147483647i;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_div_u32(~0u, select(~u_input.a.x ^ 0u, 13934u, true));
    var var_1 = vec4<i32>(firstLeadingBit(u_input.b.x), firstLeadingBit(-2147483647i), func_5(_wgslsmith_clamp_u32(4294967295u, var_0 ^ 1u, var_0), func_4(func_2(), func_2(), ~vec3<u32>(u_input.a.x, 19740u, u_input.a.x)), var_0), _wgslsmith_clamp_i32(func_2().c.c, u_input.b.x << (u_input.a.x % 32u), 2147483647i)) | vec4<i32>(u_input.b.x, _wgslsmith_add_i32(1728i, -1i), u_input.b.x, _wgslsmith_mod_i32(-7724i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, -3406i, u_input.c), func_4(Struct_3(var_0, vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x), Struct_2(vec3<bool>(false, true, true), Struct_1(-284f, u_input.a, vec4<f32>(808f, -279f, -1000f, -277f), vec3<f32>(-358f, -436f, -398f)), u_input.b.x, vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), u_input.a), Struct_3(1u, vec4<i32>(0i, 19058i, -26772i, u_input.b.x), Struct_2(vec3<bool>(true, true, false), Struct_1(278f, vec2<u32>(var_0, 12573u), vec4<f32>(-1000f, 295f, -328f, -1167f), vec3<f32>(-1711f, 1025f, -1569f)), 29577i, vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true), u_input.a), vec3<u32>(1u, 7822u, u_input.a.x)).c)));
    var var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -27148i, var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x)), u_input.b.wzx)));
    var var_3 = 313f;
    var_3 = 994f;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1263f, -842f, 648f) * vec3<f32>(-550f, -376f, -1099f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1233f, -1000f, 1270f) + vec3<f32>(2220f, -1562f, 1000f)) + vec3<f32>(-1816f, -359f, -2576f))))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.c * vec4<f32>(arg_2.b.d.x, -950f, 442f, arg_1.b.c.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1383f, arg_1.b.a, arg_2.b.a, -850f), arg_1.b.c)), vec4<f32>(_wgslsmith_f_op_f32(min(998f, 189f)), _wgslsmith_f_op_f32(-arg_2.b.c.x), _wgslsmith_f_op_f32(-666f + arg_0.x), arg_2.b.a)))) - vec4<f32>(arg_1.b.d.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.c.x)) - _wgslsmith_f_op_f32(arg_0.x * -886f))), -1668f));
    var_0 = arg_2.b.c;
    var var_1 = ~abs(-1i);
    var var_2 = arg_2.b;
    let var_3 = false;
    return Struct_4(reverseBits(~_wgslsmith_mult_i32(arg_2.c, func_2().c.c)), func_4(Struct_3(u_input.a.x, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.b.x, 2147483647i), -u_input.b), Struct_2(func_4(Struct_3(u_input.a.x, vec4<i32>(19322i, arg_2.c, u_input.b.x, arg_2.c), arg_2, vec4<bool>(arg_1.a.x, arg_2.a.x, arg_1.d.x, true), u_input.a), Struct_3(arg_2.b.b.x, vec4<i32>(48234i, u_input.c, u_input.b.x, arg_2.c), Struct_2(arg_2.d.wzy, Struct_1(-262f, arg_2.b.b, arg_2.b.c, arg_2.b.c.xwx), arg_2.c, arg_1.d), arg_1.d, u_input.a), vec3<u32>(0u, var_2.b.x, 20840u)).a, Struct_1(arg_1.b.a, arg_2.b.b, vec4<f32>(arg_1.b.a, arg_1.b.a, 269f, arg_2.b.a), vec3<f32>(arg_1.b.d.x, arg_1.b.a, 875f)), arg_2.c | -1i, vec4<bool>(true, arg_1.a.x, true, arg_2.d.x)), !arg_1.d, ~(~vec2<u32>(4294967295u, 0u))), func_2(), vec3<u32>(~arg_1.b.b.x, 4294967295u, arg_1.b.b.x & u_input.a.x) >> (max(max(vec3<u32>(var_2.b.x, 26383u, 1u), vec3<u32>(var_2.b.x, 1u, var_2.b.x)), vec3<u32>(u_input.a.x, var_2.b.x, 1u)) % vec3<u32>(32u))).b.d.x, Struct_3(arg_2.b.b.x, firstTrailingBit(firstTrailingBit(u_input.b)), arg_2, func_2().d, ~(~select(vec2<u32>(arg_1.b.b.x, 1u), arg_1.b.b, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1304f, -794f, 1842f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1746f, -102f, -166f) + vec3<f32>(-188f, -394f, 941f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1())))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-631f, -690f, -965f) - vec3<f32>(372f, -1117f, -1286f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1519f, -1037f, -3391f), vec3<f32>(-570f, -196f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1815f, -111f, 1118f))))), false)), Struct_2(vec3<bool>(false, true, true), func_4(func_2(), Struct_3(~14833u, vec4<i32>(0i, -1i, -1i, 0i), func_2().c, vec4<bool>(true, true, true, false), vec2<u32>(u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x << (0u % 32u), _wgslsmith_div_u32(4294967295u, u_input.a.x), 0u)).b, ~min(~(-2147483647i), u_input.b.x), vec4<bool>(true, true, false, any(func_2().c.d))), Struct_2(func_4(func_2(), Struct_3(u_input.a.x, vec4<i32>(0i, u_input.c, 12517i, u_input.c) << (vec4<u32>(u_input.a.x, 20465u, u_input.a.x, 24975u) % vec4<u32>(32u)), func_4(Struct_3(u_input.a.x, vec4<i32>(-44930i, 9902i, u_input.c, -7865i), Struct_2(vec3<bool>(false, true, true), Struct_1(1170f, vec2<u32>(19594u, 21775u), vec4<f32>(1310f, 255f, -844f, 1943f), vec3<f32>(-1000f, -1393f, -1231f)), 11295i, vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_3(u_input.a.x, vec4<i32>(0i, -1i, -2147483647i, 0i), Struct_2(vec3<bool>(false, false, false), Struct_1(237f, vec2<u32>(13023u, u_input.a.x), vec4<f32>(257f, -585f, -894f, -1254f), vec3<f32>(-1000f, -580f, 464f)), u_input.b.x, vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, false), u_input.a), vec3<u32>(u_input.a.x, 4020u, u_input.a.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), ~u_input.a), select(abs(vec3<u32>(17175u, 3558u, 4294967295u)), vec3<u32>(0u, 53344u, 4294967295u), false)).a, func_4(func_2(), func_2(), vec3<u32>(max(23236u, 90208u), countOneBits(751u), abs(71943u))).b, u_input.c, !vec4<bool>(true, false, all(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, true, false)))));
    var var_1 = var_0.c.d.wwy;
    var_1 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.c.b.a, -1980f, var_0.c.c.b.a))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.b, var_0.c.c.b.d.x))))), var_0.c.c, var_0.c.c).c.d.xwx;
    let var_2 = ~func_4(Struct_3(11316u, vec4<i32>(var_0.c.c.c, _wgslsmith_div_i32(0i, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 29981i, -1i, 34190i), vec4<i32>(-45411i, -18282i, u_input.c, 48924i)), abs(var_0.c.c.c)), Struct_2(vec3<bool>(var_0.c.c.a.x, true, false), Struct_1(var_0.b, u_input.a, var_0.c.c.b.c, vec3<f32>(var_0.c.c.b.c.x, 868f, var_0.c.c.b.a)), _wgslsmith_mod_i32(u_input.b.x, 1i), !var_0.c.c.d), !func_6(vec3<f32>(var_0.c.c.b.d.x, 432f, 567f), var_0.c.c, Struct_2(var_0.c.c.a, var_0.c.c.b, -37501i, var_0.c.d)).c.c.d, func_2().e), var_0.c, reverseBits(~vec3<u32>(var_0.c.e.x, 6208u, 1u))).c;
    let var_3 = func_6(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, _wgslsmith_f_op_f32(-553f * _wgslsmith_f_op_f32(-var_0.c.c.b.a))), vec3<f32>(var_0.b, var_0.c.c.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-671f, var_0.b) + var_0.b))), Struct_2(var_0.c.d.wzz, var_0.c.c.b, firstLeadingBit(var_0.a), var_0.c.c.d), func_4(var_0.c, Struct_3(firstLeadingBit(0u), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 32553i, -9773i, -2147483647i), u_input.b), select(u_input.b, vec4<i32>(1i, var_2, 8460i, -2147483647i), var_1.x)), func_6(_wgslsmith_f_op_vec3_f32(var_0.c.c.b.d * var_0.c.c.b.c.xzz), func_4(Struct_3(var_0.c.e.x, u_input.b, Struct_2(vec3<bool>(var_0.c.d.x, false, var_1.x), var_0.c.c.b, u_input.c, var_0.c.c.d), var_0.c.d, var_0.c.e), Struct_3(u_input.a.x, var_0.c.b, Struct_2(vec3<bool>(var_1.x, false, var_0.c.d.x), Struct_1(var_0.c.c.b.a, vec2<u32>(var_0.c.a, 16688u), vec4<f32>(1248f, 1480f, -1413f, -233f), vec3<f32>(var_0.b, 1378f, var_0.b)), u_input.b.x, vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, var_0.c.d.x)), vec4<bool>(var_0.c.d.x, var_1.x, var_0.c.c.a.x, var_0.c.d.x), vec2<u32>(var_0.c.c.b.b.x, var_0.c.c.b.b.x)), vec3<u32>(var_0.c.e.x, var_0.c.a, 53988u)), func_4(var_0.c, var_0.c, vec3<u32>(var_0.c.c.b.b.x, 57841u, u_input.a.x))).c.c, vec4<bool>(!var_0.c.d.x, false, var_0.c.d.x, true), select(var_0.c.e, func_3(vec2<u32>(var_0.c.e.x, 13534u)), var_0.c.c.a.xx)), select(~abs(vec3<u32>(87111u, 79085u, 1u)), vec3<u32>(1u, var_0.c.a, ~var_0.c.e.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_0.c.c.d.x, false), vec3<bool>(false, var_0.c.d.x, var_0.c.d.x))))).c.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 18532u, 0u, 7619u) & (vec4<u32>(15782u, u_input.a.x, var_0.c.c.b.b.x, var_0.c.c.b.b.x) | vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)), ~(~vec4<u32>(0u, 4294967295u, var_3.b.b.x, u_input.a.x))), ~var_0.c.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(var_3.b.c))))));
}

