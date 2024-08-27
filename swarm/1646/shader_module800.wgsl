struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    return _wgslsmith_sub_i32(abs(u_input.a.x), 0i);
}

fn func_2() -> vec2<i32> {
    global0 = min(_wgslsmith_add_i32(1i, max(_wgslsmith_add_i32(u_input.c, 1i) & _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.c)), ~u_input.c | _wgslsmith_mod_i32(~(-1i), u_input.a.x & ~2147483647i));
    var var_0 = 23570u;
    let var_1 = min(~(-vec3<i32>(~(-2902i), func_3(-9828i), reverseBits(11719i))), -countOneBits(select(vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(40092i, 1i, -4618i) | vec3<i32>(1i, u_input.c, 1i), true)));
    let var_2 = u_input.b;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(280f)), _wgslsmith_f_op_f32(min(375f, 414f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 679f)), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, -1111f, -1371f, -886f) + vec4<f32>(-430f, -442f, -742f, -1410f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(501f, 751f, -1584f, 1000f) - vec4<f32>(-1155f, 1359f, -591f, -350f)), any(vec4<bool>(true, false, true, true)))))));
    return max(-(~var_1.zx), vec2<i32>(-2147483647i, -2147483647i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-arg_2.a.c.x), func_2().x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.c.x, _wgslsmith_f_op_f32(sign(310f)), _wgslsmith_f_op_f32(min(arg_2.a.c.x, 459f)), _wgslsmith_f_op_f32(-172f * arg_1.a.a))) - arg_2.a.c));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    global0 = func_4(u_input.a, Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -737f), ~(~u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(arg_0.d.c)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1801f * 173f))), 20024i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_0.d.c))))), vec2<i32>(func_4(u_input.a >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), Struct_3(arg_0.d), Struct_3(func_4(vec2<i32>(u_input.a.x, 0i), Struct_3(arg_0.d), Struct_3(Struct_1(-378f, -1i, arg_0.d.c)), vec2<i32>(-2147483647i, -1i))), u_input.a).b, u_input.a.x)).b;
    return any(select(vec4<bool>(!(1i >= u_input.a.x), all(vec2<bool>(arg_2, arg_2)), true, all(vec2<bool>(arg_2, arg_2)) || !arg_2), select(vec4<bool>(!arg_2, arg_2, !arg_2, true != arg_2), !select(vec4<bool>(true, true, arg_2, true), vec4<bool>(false, true, true, false), vec4<bool>(arg_2, arg_2, true, arg_2)), !arg_2), !all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, true, false)))));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = arg_1.d.b;
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)), 1209f))));
    var var_1 = Struct_4(func_4(~vec2<i32>(~(-35008i), arg_1.d.b), Struct_3(Struct_1(495f, 27760i, _wgslsmith_f_op_vec4_f32(round(arg_1.d.c)))), Struct_3(func_4(abs(vec2<i32>(u_input.a.x, -2147483647i)), Struct_3(Struct_1(-441f, 12948i, arg_1.d.c)), Struct_3(Struct_1(472f, u_input.a.x, vec4<f32>(arg_1.a, -1201f, -137f, arg_1.a))), _wgslsmith_mult_vec2_i32(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(countOneBits(u_input.a), vec2<i32>(u_input.c, firstLeadingBit(-14206i)))), ~_wgslsmith_mult_u32(~0u & ~u_input.b, 1u), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32((vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b | u_input.b, u_input.b, select(u_input.b, 4294967295u, arg_2), abs(0u)), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(2035u, 0u, u_input.b, u_input.b) % vec4<u32>(32u)))), vec4<u32>(max(u_input.b, 4294967295u), _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, 1u) & vec4<u32>(_wgslsmith_add_u32(48010u, u_input.b), 28380u, 37781u, ~u_input.b)), select(select(!select(vec3<bool>(arg_0, false, true), vec3<bool>(true, false, arg_0), vec3<bool>(arg_2, false, true)), vec3<bool>(true, arg_2, arg_2 & true), select(true, true, any(vec2<bool>(true, true)))), vec3<bool>(arg_0, false, false), all(vec3<bool>(!arg_0, arg_2 | true, arg_2))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(countOneBits(vec2<i32>(arg_1.b, arg_1.c)), Struct_3(arg_1.d), Struct_3(Struct_1(642f, u_input.a.x, arg_1.d.c)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), u_input.a)).c.yx - vec2<f32>(arg_1.e.x, arg_1.d.c.x)))));
    var_1 = Struct_4(func_4(u_input.a, Struct_3(arg_1.d), Struct_3(Struct_1(_wgslsmith_f_op_f32(max(arg_1.a, 973f)), ~(-2147483647i), _wgslsmith_f_op_vec4_f32(ceil(var_1.a.c)))), vec2<i32>(i32(-1i) * -28256i, _wgslsmith_add_i32(22110i, u_input.c)) >> (vec2<u32>(4294967295u, var_1.b) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(var_1.c, ~select(firstLeadingBit(vec4<u32>(var_1.c.x, var_1.c.x, u_input.b, u_input.b)), var_1.c, false)), max(var_1.c, ~(var_1.c >> (vec4<u32>(u_input.b, u_input.b, 0u, var_1.b) % vec4<u32>(32u))) ^ vec4<u32>(firstTrailingBit(u_input.b), u_input.b, ~var_1.c.x, 0u)), vec3<bool>(!all(var_1.d), all(vec2<bool>(!arg_0, true)), false), vec2<f32>(func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, var_1.a.b, 2147483647i), vec4<i32>(-9373i, -2147483647i, arg_1.d.b, 28284i)), var_1.a.b), Struct_3(var_1.a), Struct_3(func_4(vec2<i32>(0i, var_1.a.b), Struct_3(Struct_1(var_1.e.x, arg_1.c, arg_1.d.c)), Struct_3(var_1.a), u_input.a)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i, u_input.a.x), u_input.a, var_1.d.yx), countOneBits(u_input.a), u_input.a ^ vec2<i32>(-2147483647i, arg_1.b))).a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.e.x * arg_1.e.x)))));
    let var_2 = Struct_3(var_1.a);
    return arg_1.d;
}

fn func_1() -> vec3<bool> {
    var var_0 = 155f;
    var var_1 = ~vec4<u32>(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(~u_input.b, 1u)), 26270u, 0u, firstTrailingBit(u_input.b));
    global0 = _wgslsmith_div_i32(min(-23647i, u_input.c), _wgslsmith_clamp_i32(countOneBits(-u_input.c), 1i, ~(-19325i))) & u_input.a.x;
    let var_2 = func_6(func_5(Struct_2(_wgslsmith_f_op_f32(trunc(-1392f)), 2147483647i, 29791i, func_4(func_2(), Struct_3(Struct_1(-1000f, -2147483647i, vec4<f32>(-1293f, -1000f, -262f, -170f))), Struct_3(Struct_1(1000f, 56338i, vec4<f32>(-1222f, -101f, -535f, -175f))), select(vec2<i32>(u_input.a.x, 0i), u_input.a, true)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1346f, 833f)))), 798f, -28784i >= u_input.a.x), Struct_2(_wgslsmith_f_op_f32(-func_4(vec2<i32>(u_input.c, -54962i), Struct_3(Struct_1(818f, -4542i, vec4<f32>(220f, -1154f, -281f, 253f))), Struct_3(Struct_1(-1159f, u_input.a.x, vec4<f32>(-1820f, 620f, -1869f, 670f))), ~u_input.a).c.x), func_2().x, _wgslsmith_sub_i32(func_2().x, -(u_input.c << (0u % 32u))), func_4(u_input.a & _wgslsmith_sub_vec2_i32(u_input.a, u_input.a), Struct_3(func_4(u_input.a, Struct_3(Struct_1(-619f, u_input.c, vec4<f32>(-982f, 256f, -278f, 220f))), Struct_3(Struct_1(738f, u_input.c, vec4<f32>(-1000f, 1538f, -923f, -1123f))), u_input.a)), Struct_3(Struct_1(2191f, 0i, vec4<f32>(1056f, 2260f, -1000f, -1363f))), -(~vec2<i32>(u_input.a.x, u_input.a.x))), vec2<f32>(326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1203f)) * _wgslsmith_f_op_f32(-129f + 1412f)))), false);
    var_0 = _wgslsmith_f_op_f32(step(1435f, -607f));
    return select(select(vec3<bool>(any(vec2<bool>(true, true)), select(true, true, false), false), select(vec3<bool>(var_2.a >= -982f, var_2.b >= u_input.a.x, select(true, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true)), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(all(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), vec3<bool>(false, select(all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), any(vec2<bool>(u_input.b > 1u, true))), vec3<bool>(true, false, !all(vec2<bool>(true, true)) || any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
}

fn func_7(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(((vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) << (min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(21365u, 0u, 4410u, u_input.b)) % vec4<u32>(32u))) << ((~vec4<u32>(u_input.b, 4043u, u_input.b, u_input.b) >> (max(vec4<u32>(u_input.b, u_input.b, 1u, 65365u), vec4<u32>(50959u, u_input.b, 4294967295u, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~vec4<u32>(65984u >> (u_input.b % 32u), 48566u, ~0u, 0u) % vec4<u32>(32u)), select(vec4<i32>(countOneBits(-2309i), min(0i, i32(-1i) * -11725i), -70062i, ~func_4(vec2<i32>(-18474i, -22720i), Struct_3(Struct_1(712f, u_input.a.x, vec4<f32>(1862f, -1066f, 494f, -1325f))), Struct_3(Struct_1(-1018f, -4002i, vec4<f32>(-529f, 1797f, 409f, -1691f))), vec2<i32>(31967i, u_input.a.x)).b), _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-31348i), _wgslsmith_mod_i32(-24020i, -19783i), -u_input.a.x, min(40251i, u_input.c)), -(~vec4<i32>(3922i, -1i, 14260i, -35438i))), vec4<bool>(!all(vec4<bool>(arg_1.x, arg_0, true, arg_0)), !arg_1.x | func_5(Struct_2(996f, u_input.a.x, u_input.a.x, Struct_1(1287f, -69154i, vec4<f32>(1392f, 657f, 516f, -1000f)), vec2<f32>(495f, 1648f)), 121f, arg_1.x), true, u_input.b > u_input.b)));
    global0 = reverseBits(max(_wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(1i, countOneBits(var_0.x))), ~(0i | var_0.x) >> (~select(u_input.b, u_input.b, true) % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -2670f) * _wgslsmith_f_op_f32(round(-1145f))))))), countOneBits(-11811i), vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1120f, -214f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(vec2<i32>(var_0.x, var_0.x), Struct_3(Struct_1(-188f, -1i, vec4<f32>(-142f, 580f, 550f, -1472f))), Struct_3(Struct_1(1000f, -36283i, vec4<f32>(-453f, 520f, -1181f, -656f))), u_input.a).c.x, _wgslsmith_f_op_f32(select(-447f, 1159f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2209f, -230f)))));
    var_1 = Struct_1(-1981f, ~(~u_input.c & -1i), var_1.c);
    var var_2 = Struct_4(func_4(~vec2<i32>(0i, 2147483647i), Struct_3(Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(535f, var_1.a, var_1.a, 767f))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(1404f - -472f), _wgslsmith_mod_i32(-1i, u_input.a.x), var_1.c)), max(var_0.zy, _wgslsmith_div_vec2_i32(u_input.a ^ var_0.zz, vec2<i32>(u_input.c, var_1.b) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))), abs(u_input.b), ~select(~(~vec4<u32>(61744u, u_input.b, 19321u, 1u)), abs(vec4<u32>(1u, 0u, u_input.b, 3789u) & vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), vec4<bool>(arg_1.x, any(vec2<bool>(arg_1.x, arg_1.x)), !arg_0, func_1().x)), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-1000f + var_1.a))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.a, -1821f)))), 180f), reverseBits(62649i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_2.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    var var_0 = u_input.a;
    var var_1 = func_7(true && any(vec2<bool>(true, true)), func_1());
    var var_2 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b << (1u % 32u), u_input.b, abs(u_input.b), 57109u), countOneBits(countOneBits(vec4<u32>(43017u, 1u, u_input.b, 79599u)))), vec4<u32>(u_input.b, firstTrailingBit(81446u), ~u_input.b, _wgslsmith_sub_u32(u_input.b & 4294967295u, abs(u_input.b)))), max(u_input.b, ~(~4294967295u)));
    var_1 = Struct_1(var_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.b, 2147483647i), vec3<i32>(var_0.x, u_input.c, var_1.b))) << (reverseBits(vec3<u32>(1u, 65074u, var_2.x)) % vec3<u32>(32u)), reverseBits(vec3<i32>(-1i) * -vec3<i32>(var_1.b, var_1.b, u_input.a.x))), var_1.c);
    let var_3 = select(!select(vec2<bool>(false, func_5(Struct_2(var_1.a, -28513i, -4320i, Struct_1(var_1.c.x, var_1.b, vec4<f32>(var_1.a, -164f, 1094f, var_1.a)), vec2<f32>(-1009f, 458f)), var_1.a, false)), vec2<bool>(all(vec4<bool>(true, false, false, false)), false), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), vec2<bool>(any(vec3<bool>(true, true, true)), true), all(vec4<bool>(true, true, true, true)));
    global0 = firstLeadingBit(var_0.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.a)))), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, var_1.a, var_1.a, 570f), var_1.c, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, -1311f, var_1.a, var_1.a))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, 1491f, 331f, -274f), var_1.c))))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(-(~var_1.b), i32(-1i) * -21334i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, var_1.b, u_input.c), vec4<i32>(var_1.b, 0i, var_0.x, var_4.b)) << (~4294967295u % 32u))), vec3<u32>(_wgslsmith_clamp_u32(var_2.x, _wgslsmith_clamp_u32(~u_input.b, 57237u, _wgslsmith_div_u32(var_2.x, var_2.x)), _wgslsmith_div_u32(1u, u_input.b)), u_input.b, var_2.x), 420f, reverseBits(vec3<i32>(-(~17808i), var_4.b, u_input.a.x >> (1u % 32u))));
}

