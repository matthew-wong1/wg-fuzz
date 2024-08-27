struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = Struct_2(arg_1.c.b, Struct_1(~(-(~(-29608i))), countOneBits(arg_1.e.b.c >> (0u % 32u)), 1u), arg_1.e.b, arg_1.e.b, Struct_1(u_input.d.x, 4294967295u, arg_1.c.c));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1368f)), _wgslsmith_f_op_f32(select(554f, 559f, true)), _wgslsmith_f_op_f32(sign(579f)), _wgslsmith_f_op_f32(f32(-1f) * -895f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1864f, arg_0, arg_1.b.x, 1000f) * vec4<f32>(arg_0, 1162f, arg_0, -171f)))))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1141f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(574f)))))), 1f);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2092f, 545f, 238f, -143f), vec4<f32>(-202f, -946f, 235f, 835f)) * vec4<f32>(278f, -1415f, -978f, 499f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-484f, Struct_3(vec4<bool>(false, false, false, false), vec2<f32>(-789f, 367f), Struct_1(-34420i, u_input.c.x, u_input.c.x), u_input.d, Struct_2(u_input.c.x, Struct_1(u_input.d.x, 4294967295u, 23600u), Struct_1(13124i, u_input.a.x, u_input.a.x), Struct_1(u_input.b, 108220u, 1u), Struct_1(-41391i, u_input.c.x, u_input.c.x))))))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-475f, 469f, false)), 1000f)), _wgslsmith_f_op_vec4_f32(func_3(1f, Struct_3(vec4<bool>(false, false, false, true), vec2<f32>(-460f, -433f), Struct_1(-66218i, 72061u, 11625u), vec2<i32>(-2147483647i, 34120i), Struct_2(u_input.c.x, Struct_1(1i, u_input.a.x, u_input.a.x), Struct_1(-2147483647i, u_input.a.x, u_input.c.x), Struct_1(u_input.b, u_input.c.x, u_input.c.x), Struct_1(u_input.b, 8002u, 40921u))))).x, 1400f, -893f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -1608f, -841f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-458f, 108f, -1998f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1745f), _wgslsmith_f_op_f32(1293f + -1800f), -1037f, _wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    let var_2 = Struct_1(u_input.b, _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), firstTrailingBit(u_input.c.x));
    let var_3 = var_2;
    let var_4 = Struct_2(~firstLeadingBit(u_input.a.x), var_2, Struct_1(_wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(1i, var_3.a), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), u_input.d), ~_wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(var_2.b, 1u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, var_2.c, 4294967295u) ^ u_input.a.www, ~u_input.c), ~u_input.c.x)), var_3, var_3);
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = !((558f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1087f)) * _wgslsmith_f_op_f32(1280f - arg_1.x))) || (arg_1.x > -1163f));
    var var_1 = Struct_4(arg_2.d.a, arg_0.b);
    var_1 = Struct_4(-arg_0.c.a, Struct_1(_wgslsmith_div_i32(select(-18457i, var_1.a, false), arg_0.b.a) & (arg_0.b.a & ~(-2147483647i)), ~(~var_1.b.b), ~(0u << ((u_input.c.x | 9780u) % 32u))));
    let var_2 = arg_0;
    var var_3 = func_2();
    return Struct_3(vec4<bool>(~_wgslsmith_div_i32(46712i, arg_2.d.a) <= -(var_3.b.a | -2147483647i), (var_3.c.b >> (~arg_0.c.c % 32u)) != min(reverseBits(arg_0.e.b), _wgslsmith_mult_u32(var_2.d.b, u_input.c.x)), true, var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1.x)))), Struct_3(vec4<bool>(var_0, var_0, var_0, false), _wgslsmith_div_vec2_f32(vec2<f32>(-856f, -1617f), vec2<f32>(1992f, arg_1.x)), Struct_1(var_3.c.a, var_3.a, var_1.b.b), vec2<i32>(arg_0.b.a, arg_2.b.a), arg_0))).yw * _wgslsmith_f_op_vec2_f32(-arg_1)), var_3.e, ~u_input.d, Struct_2(_wgslsmith_mult_u32(45235u, firstTrailingBit(var_3.d.b) | 116257u), Struct_1(var_1.a, _wgslsmith_div_u32(1u, func_2().d.c), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 85015u, 6407u, 174u), vec4<u32>(var_1.b.b, 1u, arg_2.e.c, var_2.a))), func_2().c, func_2().b, var_3.c));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1062f, _wgslsmith_f_op_f32(1585f + -735f), -271f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(397f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(224f + 240f), -617f)), _wgslsmith_f_op_f32(f32(-1f) * -568f)))));
    var var_1 = any(!(!vec3<bool>(false, true, 0i == arg_1.c.a)));
    var var_2 = func_4(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -2668f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 591f))))), arg_1);
    var var_3 = func_4(var_2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, var_0.x) + vec2<f32>(1000f, 561f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), vec2<f32>(var_2.b.x, -1000f), var_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-776f, var_0.x)), var_2.a.zw)))), Struct_2(arg_2.x, var_2.c, arg_1.c, Struct_1(func_2().c.a, _wgslsmith_mod_u32(select(arg_3, 61433u, false), u_input.a.x), _wgslsmith_div_u32(u_input.c.x, arg_1.e.c) << (~u_input.a.x % 32u)), Struct_1(_wgslsmith_mult_i32(i32(-1i) * -38401i, i32(-1i) * -20317i), arg_2.x, 43028u))).e;
    var var_4 = 0u;
    return arg_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1451f)))), _wgslsmith_f_op_f32(floor(-1396f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-512f, _wgslsmith_f_op_f32(f32(-1f) * -805f)))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)), Struct_3(func_4(func_4(Struct_2(15224u, arg_0, Struct_1(64212i, u_input.a.x, 0u), arg_0, Struct_1(u_input.d.x, 18909u, arg_1)), vec2<f32>(669f, 1000f), Struct_2(0u, Struct_1(35111i, u_input.a.x, 4294967295u), Struct_1(-10497i, arg_0.b, arg_1), Struct_1(1i, 24u, arg_2.x), Struct_1(15405i, u_input.c.x, 1u))).e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2044f, 961f)), Struct_2(0u, arg_0, arg_0, Struct_1(17339i, arg_1, arg_0.c), Struct_1(u_input.d.x, arg_1, arg_0.c))).a, func_4(func_4(Struct_2(46898u, Struct_1(-5332i, 44648u, 13453u), arg_0, Struct_1(-1964i, arg_0.b, arg_1), Struct_1(2147483647i, arg_0.c, 20809u)), vec2<f32>(-1056f, -817f), Struct_2(13856u, arg_0, arg_0, arg_0, Struct_1(arg_0.a, u_input.a.x, 4294967295u))).e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, 1241f)), func_2()).b, Struct_1(select(-1i, u_input.d.x, false), 1u, ~u_input.a.x), u_input.d, Struct_2(1u, Struct_1(arg_0.a, u_input.c.x, 33941u), func_1(Struct_4(u_input.d.x, arg_0), Struct_2(arg_0.b, arg_0, arg_0, Struct_1(1i, 1u, u_input.a.x), Struct_1(1i, 89312u, arg_1)), u_input.a, 2031u), func_4(Struct_2(u_input.c.x, Struct_1(arg_0.a, 0u, 16862u), Struct_1(72713i, u_input.c.x, 43409u), arg_0, Struct_1(u_input.d.x, 52388u, 13896u)), vec2<f32>(636f, 144f), Struct_2(70567u, Struct_1(2147483647i, u_input.c.x, arg_0.b), arg_0, Struct_1(u_input.d.x, arg_2.x, 0u), Struct_1(arg_0.a, arg_0.c, arg_0.c))).c, arg_0)))).x);
    var var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(25079i, u_input.d.x), u_input.d.x << (77880u % 32u), 0i) ^ ~reverseBits(u_input.d.x), u_input.b);
    return func_4(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1124f, var_0.x) - var_0.xx)))) + var_0.zy), func_4(func_4(func_2(), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-237f * var_0.x), func_4(Struct_2(48955u, Struct_1(u_input.d.x, 1u, 97671u), Struct_1(0i, u_input.a.x, 4294967295u), Struct_1(u_input.d.x, 4294967295u, 0u), Struct_1(arg_0.a, arg_1, 0u)), var_0.xy, Struct_2(arg_1, arg_0, arg_0, Struct_1(arg_0.a, u_input.a.x, 0u), arg_0)))).wz, func_4(Struct_2(14951u, Struct_1(39978i, arg_0.c, u_input.c.x), arg_0, Struct_1(u_input.d.x, 57174u, u_input.a.x), arg_0), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(190f, var_0.x), var_0.yx, vec2<bool>(false, true))), func_4(Struct_2(arg_2.x, Struct_1(-2147483647i, 0u, arg_2.x), Struct_1(15129i, arg_2.x, arg_2.x), Struct_1(u_input.b, arg_2.x, 1u), Struct_1(var_1.x, 25355u, 1u)), vec2<f32>(-627f, -2385f), Struct_2(33112u, arg_0, arg_0, arg_0, arg_0)).e).e).e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-var_0.zy)))), func_2()).e).e.b;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_2(~4294967295u, Struct_1(-65125i, countOneBits(~(~81972u)), select(_wgslsmith_add_u32(4294967295u, func_1(Struct_4(var_0.b.a, arg_0.c), Struct_2(u_input.c.x, Struct_1(38682i, var_0.a, var_0.c.b), arg_0.c, var_0.d, Struct_1(-2147483647i, u_input.a.x, arg_0.a)), u_input.a, 50618u).b), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(0u, 15235u)), false)), func_1(Struct_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c.a, 0i, u_input.b, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e.a, 1i, 56053i, arg_0.b.a), vec4<i32>(u_input.d.x, var_0.d.a, -2147483647i, arg_0.e.a))), func_2().d), func_4(arg_0, vec2<f32>(1488f, 1000f), func_4(Struct_2(u_input.c.x, var_0.d, Struct_1(-22878i, var_0.d.b, var_0.b.c), var_0.e, var_0.c), vec2<f32>(-782f, 280f), func_2()).e).e, u_input.a, ~(~func_5(var_0.e, arg_0.b.b, u_input.a).c)), Struct_1(firstTrailingBit(-arg_0.e.a >> (u_input.c.x % 32u)), var_0.e.b, func_1(Struct_4(~(-51532i), func_4(Struct_2(10303u, Struct_1(u_input.b, arg_0.b.c, var_0.a), Struct_1(29769i, 4294967295u, 47862u), arg_0.c, var_0.c), vec2<f32>(-375f, 555f), arg_0).c), arg_0, _wgslsmith_add_vec4_u32(~u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a.x, ~1540u)).b), Struct_1(~_wgslsmith_div_i32(var_0.d.a, -1i), 45256u ^ ~max(u_input.c.x, arg_0.b.c), 13518u >> ((_wgslsmith_add_u32(u_input.c.x, 19428u) ^ ~arg_0.d.c) % 32u)));
    let var_1 = ~vec2<u32>(u_input.c.x, 0u);
    var_0 = Struct_2(4294967295u, func_5(func_1(Struct_4(_wgslsmith_div_i32(-1i, -6106i), Struct_1(-58433i, arg_0.b.b, 4294967295u)), func_2(), min(~vec4<u32>(42574u, var_0.c.b, var_0.a, 31087u), vec4<u32>(var_1.x, 64355u, var_1.x, 4294967295u) & vec4<u32>(1u, 31192u, var_0.c.c, u_input.c.x)), ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.b >> (var_0.c.b % 32u), ~4294967295u), ~(vec2<u32>(1u, var_0.d.b) << (vec2<u32>(5953u, 1u) % vec2<u32>(32u)))), vec4<u32>((1u | arg_0.e.b) >> (~arg_0.d.c % 32u), ~func_1(Struct_4(1i, Struct_1(arg_0.c.a, 4294967295u, 10866u)), arg_0, u_input.a, 0u).b, _wgslsmith_mult_u32(var_1.x, arg_0.b.b), _wgslsmith_div_u32(37216u, _wgslsmith_mod_u32(var_0.d.b, arg_0.d.c)))), var_0.b, Struct_1(arg_0.b.a, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.a.wyw, abs(u_input.c)), reverseBits(countOneBits(u_input.a.x))), select(var_0.e.c | func_4(Struct_2(9452u, var_0.e, var_0.c, Struct_1(var_0.d.a, var_0.d.b, arg_0.c.b), Struct_1(arg_0.b.a, arg_0.b.b, 1524u)), vec2<f32>(-1475f, 1556f), Struct_2(1u, Struct_1(var_0.e.a, 45829u, 31642u), Struct_1(1i, var_1.x, 1u), arg_0.b, Struct_1(-2147483647i, var_1.x, 0u))).c.b, ~firstLeadingBit(1u), true)), Struct_1(arg_0.d.a, abs(~(~u_input.a.x)), 4294967295u));
    var var_2 = u_input.a >> (~(~(~(~u_input.a))) % vec4<u32>(32u));
    return func_5(Struct_1(func_5(var_0.e, 0u, vec4<u32>(func_1(Struct_4(u_input.d.x, Struct_1(arg_0.e.a, 17662u, u_input.a.x)), Struct_2(var_2.x, Struct_1(0i, 4294967295u, arg_0.a), Struct_1(arg_0.d.a, arg_0.a, 1u), var_0.d, arg_0.e), vec4<u32>(1u, 2342u, 1u, var_2.x), 16788u).c, u_input.a.x ^ var_2.x, 0u << (var_0.e.c % 32u), _wgslsmith_div_u32(0u, 1u))).a, _wgslsmith_sub_u32(~18994u, 1u) >> (u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_1.x, 4294967295u, var_0.c.b, var_2.x), ~vec4<u32>(17855u, 0u, var_2.x, 41267u)), ~min(u_input.a, u_input.a))), ~_wgslsmith_div_u32(39218u, min(~21249u, var_2.x & 9096u)), _wgslsmith_div_vec4_u32(vec4<u32>(~0u, ~reverseBits(29552u), var_1.x, u_input.a.x), abs(~u_input.a)));
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~abs(select(~(~vec2<u32>(u_input.c.x, arg_1.b)), ~firstTrailingBit(u_input.c.yy), vec2<bool>(true, arg_2.x <= arg_2.x)));
    var var_1 = -25992i;
    let var_2 = ~abs(vec3<u32>(~arg_1.c, _wgslsmith_add_u32(arg_1.c, ~112123u), ~var_0.x ^ max(u_input.a.x, arg_1.b)));
    var_0 = vec2<u32>(_wgslsmith_div_u32(var_0.x, func_2().e.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.x, var_0.x ^ 0u), ~_wgslsmith_add_u32(4294967295u, arg_1.c)) & 0u);
    var_1 = select(0i, u_input.d.x, false);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(_wgslsmith_add_i32(0i, -14694i), 1u, u_input.c.x);
    var_1 = func_7(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-62753i, var_1.a, var_1.a), vec3<i32>(u_input.b, u_input.b, var_1.a)), -u_input.d.x, 1i, abs(-28436i)) & min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, -10436i, -2147483647i, 1i), vec4<i32>(u_input.b, u_input.b, var_1.a, var_1.a)), -vec4<i32>(u_input.b, u_input.d.x, var_1.a, u_input.d.x))), func_6(Struct_2(abs(~0u), Struct_1(1i, ~1u, _wgslsmith_sub_u32(var_0, 0u)), Struct_1(~2147483647i, var_1.c >> (var_0 % 32u), var_0 >> (4294967295u % 32u)), Struct_1(_wgslsmith_div_i32(u_input.d.x, 0i), var_0 << (1u % 32u), ~4294967295u), func_5(func_1(Struct_4(-2147483647i, Struct_1(var_1.a, u_input.c.x, 4294967295u)), Struct_2(var_1.c, Struct_1(25521i, var_0, u_input.a.x), Struct_1(8663i, 2246u, 18015u), Struct_1(-2147483647i, 70346u, u_input.c.x), Struct_1(1i, 5975u, u_input.c.x)), vec4<u32>(var_0, 76564u, 1u, 4294967295u), 4294967295u), 1u, vec4<u32>(13665u, 1u, u_input.a.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, -560f, 1000f, -1000f) - vec4<f32>(-750f, 371f, -1981f, -393f)))), vec4<f32>(-1000f, -1300f, _wgslsmith_f_op_f32(-779f - -1108f), 780f)))));
    let var_2 = var_0;
    var_1 = func_1(Struct_4(_wgslsmith_sub_i32(~var_1.a & -5858i, var_1.a), func_7(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, var_1.a, 113i, var_1.a), vec4<i32>(0i, u_input.d.x, u_input.d.x, 0i)), Struct_1(0i, u_input.a.x, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, -1736f, -2155f, 625f)))), Struct_2(u_input.a.x, func_4(Struct_2(~4294967295u, Struct_1(2147483647i, 21796u, var_0), func_5(Struct_1(u_input.b, 1u, 57394u), var_2, u_input.a), Struct_1(var_1.a, var_0, 1u), func_6(Struct_2(u_input.c.x, Struct_1(0i, 19372u, 56223u), Struct_1(var_1.a, 1u, var_0), Struct_1(-23955i, 10856u, var_1.c), Struct_1(u_input.d.x, 0u, 34757u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(665f, 691f))), Struct_2(59952u, Struct_1(u_input.d.x, var_1.b, 9099u), func_6(Struct_2(0u, Struct_1(-1i, 0u, var_0), Struct_1(u_input.b, var_2, 54564u), Struct_1(var_1.a, 17398u, u_input.c.x), Struct_1(-63647i, var_1.b, 49238u))), Struct_1(43449i, var_1.c, 1u), func_1(Struct_4(1i, Struct_1(-37126i, u_input.a.x, 4294967295u)), Struct_2(0u, Struct_1(var_1.a, 4355u, var_1.c), Struct_1(u_input.b, 23040u, var_2), Struct_1(u_input.d.x, var_1.c, var_1.b), Struct_1(u_input.b, var_2, 662u)), u_input.a, var_0))).e.d, Struct_1(17158i, abs(var_0), var_2), Struct_1(u_input.d.x, func_4(Struct_2(0u, Struct_1(var_1.a, var_2, 54593u), Struct_1(19465i, var_2, 4493u), Struct_1(var_1.a, 0u, var_0), Struct_1(18127i, 4294967295u, var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(632f, -444f) * vec2<f32>(-745f, 2217f)), Struct_2(var_1.b, Struct_1(1i, var_0, u_input.a.x), Struct_1(u_input.b, 4294967295u, 61267u), Struct_1(var_1.a, var_1.b, 0u), Struct_1(u_input.b, var_1.b, var_0))).e.e.c, _wgslsmith_mod_u32(~var_2, ~var_0)), func_6(func_2())), u_input.a, func_6(Struct_2(38581u, func_1(Struct_4(var_1.a, Struct_1(2147483647i, 4294967295u, 57902u)), Struct_2(var_0, Struct_1(u_input.b, 0u, var_2), Struct_1(u_input.d.x, var_1.b, 18632u), Struct_1(var_1.a, 4294967295u, 27884u), Struct_1(var_1.a, var_0, 93572u)), vec4<u32>(var_2, 4294967295u, 18598u, 1u), var_1.b), Struct_1(0i, 0u, var_0), Struct_1(var_1.a, u_input.c.x, var_1.b), func_4(Struct_2(var_1.c, Struct_1(var_1.a, var_0, 15083u), Struct_1(0i, var_1.c, u_input.c.x), Struct_1(var_1.a, var_1.c, 4294967295u), Struct_1(0i, 90437u, 1u)), vec2<f32>(-1970f, -495f), Struct_2(var_0, Struct_1(u_input.b, u_input.a.x, 4294967295u), Struct_1(-6617i, 52481u, var_0), Struct_1(u_input.d.x, 80881u, 0u), Struct_1(u_input.d.x, var_0, 0u))).e.c)).b & ~func_7(max(vec4<i32>(var_1.a, 0i, -1i, u_input.d.x), vec4<i32>(u_input.d.x, -1i, u_input.b, 11074i)), func_4(Struct_2(var_0, Struct_1(31415i, 89063u, var_0), Struct_1(-42222i, var_1.b, 12368u), Struct_1(-1i, 33429u, 0u), Struct_1(var_1.a, 0u, 45725u)), vec2<f32>(919f, -1057f), Struct_2(var_1.b, Struct_1(-1i, 16179u, u_input.a.x), Struct_1(u_input.d.x, 4294967295u, var_2), Struct_1(u_input.d.x, var_1.b, 75961u), Struct_1(var_1.a, 87825u, var_0))).c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1401f, -407f, -582f, -378f))).b);
    var var_3 = Struct_1(0i, abs(14605u), 1u);
    let var_4 = ~reverseBits(~_wgslsmith_mod_vec2_i32(u_input.d, abs(u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(-2147483647i >> (func_5(Struct_1(-2147483647i, 25501u, 4294967295u), 1972u, vec4<u32>(1u, var_1.c, var_2, 29074u)).b % 32u)), 7379i), vec4<i32>(func_4(Struct_2(u_input.c.x, Struct_1(u_input.b, 10111u, 4294967295u), Struct_1(var_4.x, 0u, 4294967295u), Struct_1(var_1.a, var_0, 25792u), Struct_1(11590i, 10205u, var_3.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1553f, -1849f)), Struct_2(1u, Struct_1(u_input.d.x, 47584u, 5589u), Struct_1(u_input.d.x, var_2, 0u), Struct_1(var_4.x, 0u, var_0), Struct_1(u_input.b, u_input.a.x, 57026u))).d.x ^ _wgslsmith_div_i32(~var_1.a, _wgslsmith_div_i32(-1i, -2147483647i)), 0i, -min(-33742i, -41780i) | func_5(Struct_1(0i, 300u, 2459u), ~87522u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 36019u, u_input.a.x), u_input.a)).a, -9022i), -vec4<i32>(_wgslsmith_sub_i32(select(var_1.a, u_input.d.x, false), _wgslsmith_mult_i32(0i, var_3.a)), var_4.x, abs(-u_input.b), var_1.a));
}

