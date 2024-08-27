struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = countOneBits(vec3<i32>(~1i, -(~(-2147483647i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_2.x, 2147483647i), u_input.a)))) ^ vec3<i32>(20737i, max(-u_input.c.x, u_input.a.x) ^ -29341i, countOneBits(-25674i));
    let var_1 = Struct_2(~arg_2.x, Struct_1(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e.x), u_input.e.yx), u_input.e.x, u_input.e.x << (u_input.e.x % 32u), 4294967295u), -vec3<i32>(_wgslsmith_mult_i32(28503i, -41952i), 1i & arg_0, countOneBits(-32342i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_1))))), true);
    let var_2 = var_1;
    var var_3 = Struct_2(arg_0, var_2.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(405f * -676f), _wgslsmith_f_op_f32(floor(1430f)), _wgslsmith_f_op_f32(-146f + -1007f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.c)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.x, -1975f, 1000f))))))), false);
    let var_4 = var_3.b.a.x;
    return _wgslsmith_f_op_f32(sign(arg_1.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(173f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1603f)), -1221f)), _wgslsmith_f_op_f32(f32(-1f) * -460f)), !arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.b.x, vec3<f32>(-610f, -306f, -286f), vec4<i32>(var_0.b.x, -2147483647i, 27072i, arg_2.b.x)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1308f + 679f) - _wgslsmith_div_f32(-1467f, 967f)))), -496f);
    let var_2 = Struct_2(~(~u_input.d), Struct_1(var_0.a | abs(reverseBits(arg_2.a)), -var_0.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.zxx + vec3<f32>(-432f, -1742f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec3_f32(-var_1.wyz), vec3<bool>(true, arg_1, any(vec3<bool>(false, arg_0.x, false))))), any(vec3<bool>(any(select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(true, true, true, true))), true, max(arg_2.b.x, u_input.b.x) <= -u_input.d)));
    var var_3 = arg_2;
    var_3 = var_2.b;
    return Struct_1(var_3.a, vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(var_0.b.x) ^ var_2.a, u_input.d), arg_2.b.x, 2147483647i));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = -1000f;
    var var_1 = -min(abs(firstLeadingBit(vec4<i32>(u_input.b.x, -82196i, -2147483647i, 2147483647i))), vec4<i32>(-12930i, u_input.c.x ^ arg_1.b.x, u_input.d, _wgslsmith_div_i32(arg_1.b.x, -2147483647i))) & min(vec4<i32>(-73952i, u_input.b.x, arg_1.b.x, abs(-13314i)), abs(vec4<i32>(1717i, 9596i >> (0u % 32u), -arg_1.b.x, 6859i)));
    let var_2 = Struct_1(~arg_1.a, u_input.c);
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(max(0i, 1199i), 6741i), ~0i, select(arg_1.b.x, ~arg_1.b.x, arg_3 & arg_3)) | (max(vec4<i32>(arg_1.b.x, -43886i, -1i, var_1.x), -vec4<i32>(var_2.b.x, -24402i, u_input.d, arg_1.b.x)) & abs(min(vec4<i32>(2147483647i, -50789i, -2147483647i, 2147483647i), vec4<i32>(0i, -37326i, u_input.d, 2147483647i)))), -vec4<i32>(abs(arg_1.b.x), arg_1.b.x, min(arg_1.b.x, arg_1.b.x), u_input.c.x << (41440u % 32u)) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(87260u, 4294967295u, arg_0, arg_1.a.x), arg_1.a) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, 353i, arg_1.b.x, 2147483647i), vec4<i32>(0i, 2147483647i, arg_1.b.x, -51345i)), 9707i), -(~(-22445i))), ~(i32(-1i) * -arg_1.b.x), ~_wgslsmith_sub_i32(0i, var_2.b.x), var_2.b.x));
    var var_3 = !(!select(vec3<bool>(any(vec3<bool>(arg_3, false, true)), arg_3 != arg_3, arg_3), vec3<bool>(!arg_3, arg_3, true), arg_3));
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = false;
    var var_1 = vec3<i32>(u_input.c.x, u_input.a.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-20297i, -2147483647i, 44421i), _wgslsmith_clamp_i32(-1i, 0i, 5525i), _wgslsmith_dot_vec2_i32(vec2<i32>(28014i, -15284i), vec2<i32>(arg_1.b.x, -32315i))), arg_0));
    var_1 = vec3<i32>(u_input.c.x, 0i, -48807i);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - -293f)))) - _wgslsmith_f_op_f32(f32(-1f) * -2477f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(~arg_1.a.x, func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(false, true, true), arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(min(-249f, 400f))), any(vec3<bool>(true, false, true)))), -300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f + -644f) + _wgslsmith_f_op_f32(-1250f - 658f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, -691f, -218f)) + vec3<f32>(440f, 895f, 842f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-259f, _wgslsmith_f_op_f32(f32(-1f) * -1946f), -266f))));
    return _wgslsmith_f_op_f32(sign(909f));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-147f, _wgslsmith_f_op_f32(round(270f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1055f + arg_1.x)))) + _wgslsmith_f_op_f32(func_3(~(-u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(abs(-476f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_0)), vec4<i32>(_wgslsmith_div_i32(arg_2.b.x, -2147483647i), i32(-1i) * -1i, -1i, u_input.c.x))))));
    let var_1 = arg_1.x;
    var var_2 = func_2(vec3<bool>(true, true, true), any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true), vec3<bool>(all(vec3<bool>(false, true, true)), 4294967295u == u_input.e.x, true), vec3<bool>(true, true, true))), arg_2);
    var_2 = arg_2;
    var_0 = _wgslsmith_f_op_f32(var_1 - arg_0);
    return func_2(select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, false)), vec3<bool>(all(vec3<bool>(true, true, true)), ~1u > _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 48800u, arg_2.a.x), vec3<u32>(1u, var_2.a.x, 1u)), true), ((arg_0 < 466f) & (1i >= var_2.b.x)) & true), any(vec2<bool>(any(vec2<bool>(true, false)), false)) == !any(vec4<bool>(true, true, true, true)), arg_2);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0.c.x;
    var var_1 = Struct_2(1i, func_2(select(vec3<bool>(!arg_0.d, arg_0.a == -7106i, arg_0.d), vec3<bool>(false, any(vec3<bool>(arg_0.d, false, arg_0.d)), all(vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d))), select(vec3<bool>(false, false, arg_0.d), select(vec3<bool>(false, arg_0.d, true), vec3<bool>(arg_0.d, arg_0.d, arg_0.d), arg_0.d), vec3<bool>(true, arg_0.d, arg_0.d))), any(select(!vec4<bool>(false, arg_0.d, true, arg_0.d), select(vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(false, true, true, arg_0.d)), true)), arg_0.b), _wgslsmith_f_op_vec3_f32(-arg_0.c), true);
    let var_2 = Struct_1(arg_2.a, firstTrailingBit(vec3<i32>(countOneBits(-2147483647i), abs(12300i), _wgslsmith_mod_i32(7065i, arg_0.a)) | _wgslsmith_clamp_vec3_i32(u_input.c, ~vec3<i32>(arg_3, arg_2.b.x, arg_3), _wgslsmith_add_vec3_i32(arg_2.b, arg_2.b))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x));
    let var_4 = _wgslsmith_add_vec3_i32(~arg_2.b, ~vec3<i32>(~arg_2.b.x, var_1.b.b.x, i32(-1i) * -22197i) & ~reverseBits(~vec3<i32>(1i, arg_1, var_1.b.b.x)));
    return arg_0;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = func_2(select(!select(vec3<bool>(false, arg_0.d, false), select(vec3<bool>(arg_0.d, var_0.d, var_0.d), vec3<bool>(arg_0.d, var_0.d, true), var_0.d), vec3<bool>(var_0.d, false, arg_0.d)), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, var_0.d, false), vec3<bool>(false, arg_0.d, arg_0.d), !vec3<bool>(true, false, var_0.d)), true & func_6(var_0, arg_0.a, var_0.b, arg_0.a).d), any(vec3<bool>(func_6(Struct_2(-69376i, Struct_1(arg_0.b.a, vec3<i32>(u_input.c.x, arg_0.a, arg_0.b.b.x)), var_0.c, true), 12097i, Struct_1(vec4<u32>(u_input.e.x, var_0.b.a.x, arg_0.b.a.x, 42592u), vec3<i32>(64148i, u_input.d, u_input.a.x)), 0i).d, false, true))), true, func_6(Struct_2(0i >> (_wgslsmith_mult_u32(20162u, var_0.b.a.x) % 32u), func_5(arg_0.c.x, _wgslsmith_f_op_vec2_f32(step(arg_0.c.yy, var_0.c.xz)), Struct_1(vec4<u32>(0u, var_0.b.a.x, arg_0.b.a.x, 136172u), vec3<i32>(arg_0.a, 1i, 1i))), var_0.c, true), 2147483647i, Struct_1(firstLeadingBit(~arg_0.b.a), ~var_0.b.b), var_0.a).b);
    let var_2 = (vec3<u32>((u_input.e.x & 35768u) >> ((u_input.e.x >> (0u % 32u)) % 32u), var_0.b.a.x, ~(~0u)) >> (~vec3<u32>(firstTrailingBit(19067u), var_0.b.a.x ^ var_1.a.x, arg_0.b.a.x << (52001u % 32u)) % vec3<u32>(32u))) ^ ~vec3<u32>(var_0.b.a.x, arg_0.b.a.x, ~4294967295u);
    var var_3 = func_6(Struct_2((i32(-1i) * -1900i) << (arg_0.b.a.x % 32u), var_1, vec3<f32>(arg_0.c.x, 442f, 1331f), true), ~(-53997i), Struct_1(~(arg_0.b.a | ~vec4<u32>(u_input.e.x, var_2.x, var_1.a.x, 4294967295u)), _wgslsmith_clamp_vec3_i32(arg_0.b.b, firstLeadingBit(vec3<i32>(u_input.c.x, 1801i, var_0.b.b.x) >> (vec3<u32>(arg_0.b.a.x, var_1.a.x, var_1.a.x) % vec3<u32>(32u))), select(_wgslsmith_mult_vec3_i32(arg_0.b.b, vec3<i32>(39104i, 15106i, u_input.d)), vec3<i32>(2147483647i, 65832i, -27120i) ^ vec3<i32>(var_0.b.b.x, -10716i, -1i), false))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(3713i, 0i, var_0.a, var_1.b.x), min(vec4<i32>(var_0.b.b.x, arg_0.a, 0i, -2147483647i), vec4<i32>(var_1.b.x, -2147483647i, arg_0.b.b.x, -25114i))) >> (var_0.b.a.x % 32u)));
    var_3 = arg_0;
    return Struct_2(32786i, var_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(round(-1205f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.c.x)) * _wgslsmith_f_op_f32(1000f + -2448f))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_i32(-2147483647i, arg_0.a), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1081f) - _wgslsmith_f_op_f32(1919f - -523f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.x))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_2(~reverseBits(u_input.b.x), func_5(_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(-1i, u_input.c.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(585f, 1977f) + vec2<f32>(1000f, 149f)), Struct_1(vec4<u32>(17710u, 0u, 4294967295u, 4294967295u), vec3<i32>(u_input.b.x, u_input.c.x, -1i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -634f, -168f) - vec3<f32>(-864f, -240f, 1501f)))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)))), i32(-1i) * -(u_input.c.x >> (u_input.e.x % 32u)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(146f)) + 1000f), vec2<f32>(_wgslsmith_f_op_f32(step(-1102f, -1244f)), _wgslsmith_f_op_f32(step(1158f, -1004f))), func_5(711f, vec2<f32>(1f, 1f), func_5(-185f, vec2<f32>(537f, -196f), Struct_1(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 1u), u_input.c)))), -15214i));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), var_0.c.x, var_0.c.x)))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - func_6(Struct_2(u_input.b.x, var_0.b, vec3<f32>(-2518f, -938f, var_1.x), var_0.d), 1i, Struct_1(var_0.b.a, vec3<i32>(1i, u_input.b.x, u_input.a.x)), 21985i).c.x))))), _wgslsmith_f_op_f32(func_4(func_2(!(!vec3<bool>(var_0.d, false, var_0.d)), all(vec4<bool>(var_0.d, false, var_0.d, var_0.d)) && any(vec2<bool>(true, var_0.d)), Struct_1(var_0.b.a, ~vec3<i32>(var_0.b.b.x, u_input.a.x, var_0.b.b.x))).a.x, func_7(var_0).b, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -490f)), !var_0.d)), _wgslsmith_f_op_f32(select(var_1.x, 1073f, var_0.d)), _wgslsmith_f_op_f32(ceil(-882f)));
    var_1 = vec4<f32>(-934f, var_1.x, -1115f, var_1.x);
    var var_2 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(max(4294967295u, 49338u), var_0.b.a.x), _wgslsmith_sub_u32(firstLeadingBit(73455u), u_input.e.x), _wgslsmith_dot_vec2_u32(~u_input.e.zy, vec2<u32>(1u, var_0.b.a.x)), abs(var_0.b.a.x)), countOneBits(_wgslsmith_mod_vec3_i32(func_6(Struct_2(-76541i, var_0.b, vec3<f32>(-1522f, var_0.c.x, var_0.c.x), false), var_0.a, var_0.b, -u_input.c.x).b.b, vec3<i32>(~u_input.a.x, select(0i, 1i, true), 1i))));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(-2704f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + 205f) - -1378f))), var_1.x, func_7(Struct_2(var_3.a, Struct_1(var_0.b.a, vec3<i32>(-2147483647i, -1i, var_2.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, var_3.c.x, 3152f)), var_3.d || true)).d)), -(-var_0.b.b.yz | (vec2<i32>(10342i, 44721i) & var_0.b.b.yz)), -vec3<i32>(var_0.a, max(-2147483647i, u_input.b.x), abs(0i)), _wgslsmith_add_vec3_i32(abs(select(var_3.b.b, min(var_2.b, var_2.b), true)), vec3<i32>(abs(-20475i) >> ((u_input.e.x | var_2.a.x) % 32u), func_7(var_3).a, ~(-12679i))), func_6(var_3, 9782i, func_7(var_3).b, var_3.b.b.x).c.zx);
}

