struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.b.e || !(any(vec2<bool>(arg_0.b.e, true)) & arg_0.a.b);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.a.c, 15436u, arg_0.b.b.d, 93834u), vec4<u32>(44793u, u_input.b, 536u, 8949u), vec4<u32>(u_input.b, u_input.b, 6850u, 1u))), ~vec4<u32>(arg_0.a.c, 38749u, u_input.b, 0u)), ~u_input.b), vec2<u32>(~(~arg_0.b.d.d), ~u_input.b));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~vec4<u32>(func_3(Struct_3(arg_0, Struct_2(arg_0, arg_0, true, Struct_1(arg_0.a, arg_0.b, 1u, arg_0.c), true))), ~2672u, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, arg_0.c)), ~vec2<u32>(u_input.b, 52235u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.c, u_input.b), 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(u_input.b, arg_0.d, 1u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 24460u, 115060u, 55526u), vec4<u32>(u_input.b, u_input.b, arg_0.d, 25152u))));
    var_0 = vec4<u32>(~reverseBits(8719u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(66700u, var_0.x)), vec2<u32>(u_input.b, 19671u)), vec2<u32>(_wgslsmith_div_u32(u_input.b, 32289u) & u_input.b, ~var_0.x)), _wgslsmith_div_u32(65118u, firstLeadingBit(arg_0.d)) ^ var_0.x, ~var_0.x);
    var_0 = abs(min(reverseBits(vec4<u32>(17610u, u_input.b, 10100u, 0u) >> (vec4<u32>(0u, u_input.b, var_0.x, var_0.x) % vec4<u32>(32u))), ~vec4<u32>(arg_0.d, u_input.b, u_input.b, 4294967295u)) ^ vec4<u32>(~(8266u | var_0.x), ~arg_0.d, 67633u, abs(~u_input.b)));
    var_0 = abs(~(~vec4<u32>(abs(u_input.b), arg_0.d, min(var_0.x, u_input.b), _wgslsmith_sub_u32(52500u, var_0.x))));
    var_0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(18210u, 0u, u_input.b, u_input.b) | vec4<u32>(42953u, arg_0.d, arg_0.d, u_input.b), ~(~vec4<u32>(u_input.b, 4294967295u, 20789u, 0u))));
    return !select(vec3<bool>(!(arg_0.b && false), true, arg_0.b), vec3<bool>(false, _wgslsmith_f_op_f32(-arg_0.a) <= -1091f, (i32(-1i) * -29796i) >= max(u_input.c, u_input.a)), vec3<bool>(arg_0.b, !(true & arg_0.b), arg_0.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), -337f), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), all(vec2<bool>(true, true)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.ww, ~(arg_0.xz << (arg_0.yz % vec2<u32>(32u)))), arg_0.zx), arg_3);
    var var_1 = ~abs(~vec2<u32>(4294967295u, 43263u));
    var var_2 = !select(vec3<bool>(false, true, _wgslsmith_clamp_u32(var_0.d, 4294967295u, arg_0.x) > countOneBits(1u)), vec3<bool>(true, any(vec4<bool>(var_0.b, true, true, false)), any(!vec2<bool>(var_0.b, false))), true);
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.a)))) - _wgslsmith_f_op_f32(step(1323f, 1000f))), _wgslsmith_f_op_f32(-var_0.a))), var_2.x, arg_3, 4294967295u);
    var_2 = select(!select(vec3<bool>(var_0.b, all(vec4<bool>(true, false, var_0.b, false)), false), vec3<bool>(var_0.b || var_2.x, var_0.b, select(true, var_0.b, var_0.b)), !var_0.b), vec3<bool>(false, var_2.x, false), select(select(!(!vec3<bool>(false, true, var_2.x)), select(!vec3<bool>(var_2.x, var_0.b, false), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, var_2.x, var_0.b), vec3<bool>(var_2.x, false, var_2.x)), vec3<bool>(var_2.x, var_0.b, var_0.b)), !var_2.x), func_4(Struct_1(_wgslsmith_f_op_f32(var_0.a * var_0.a), select(var_2.x, var_2.x, true), func_3(Struct_3(Struct_1(-1000f, false, 25499u, 41878u), Struct_2(Struct_1(var_0.a, var_2.x, 4294967295u, var_1.x), Struct_1(var_0.a, true, 0u, arg_0.x), false, Struct_1(-1447f, false, u_input.b, arg_0.x), var_2.x))), _wgslsmith_mod_u32(arg_3, var_1.x))), var_2.x));
    return Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), any(vec2<bool>(!select(true, false, var_2.x), any(vec3<bool>(false, false, var_0.b)))), ~firstTrailingBit(0u), 37157u);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.d.a)) + 2619f), true, 98926u, 38149u), arg_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(var_0.d.a, _wgslsmith_f_op_f32(-arg_1.d.a))), _wgslsmith_f_op_f32(373f - var_0.d.a));
    var var_2 = func_5(Struct_3(func_2(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(44434u, 37310u, 7031u)), ~57846u, min(4294967295u, 4294967295u)), u_input.a, _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, 2147483647i, u_input.c, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(5143i, -23538i, u_input.a, -55478i), vec4<i32>(u_input.d, u_input.c, -1i, u_input.c))), u_input.b), arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(609f, var_1.x))), _wgslsmith_f_op_f32(sign(arg_0.b.a))), Struct_2(func_2(~(vec4<u32>(1u, 16207u, 14009u, 0u) << (vec4<u32>(0u, 0u, arg_1.d.d, 0u) % vec4<u32>(32u))), ~2147483647i, -(~vec4<i32>(7753i, u_input.c, u_input.d, 8802i)), min(_wgslsmith_mod_u32(19452u, 14400u), firstTrailingBit(1u))), func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d.d, u_input.b, 1u, var_0.d.d), vec4<u32>(arg_0.a.c, 4294967295u, 4294967295u, 0u)), vec4<u32>(var_0.d.d, u_input.b, 83874u, 4294967295u) << (vec4<u32>(1u, 0u, var_0.d.c, arg_1.d.d) % vec4<u32>(32u))), u_input.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.a, -1938i), ~vec4<i32>(u_input.c, 2147483647i, u_input.c, 2147483647i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), _wgslsmith_div_u32(var_0.d.c ^ 4576u, abs(11897u))), reverseBits(countOneBits(arg_0.a.d)) == ~u_input.b, var_0.d, false));
    var var_3 = Struct_3(Struct_1(-1544f, !arg_1.b.b, u_input.b, 23620u ^ arg_1.d.d), Struct_2(arg_1.d, func_2(firstLeadingBit(vec4<u32>(var_0.d.c, 10899u, arg_0.b.c, arg_0.d.c)), -21959i, vec4<i32>(-2147483647i, -27375i, 0i, u_input.d), ~countOneBits(1u)), false, arg_1.d, any(vec3<bool>(arg_0.c, arg_0.a.b, arg_0.c))));
    let var_4 = ~(((firstTrailingBit(1u) & (var_0.d.c | 1u)) << (~arg_0.d.d % 32u)) | ~min(~59656u, ~40685u));
    return func_5(Struct_3(arg_0.a, Struct_2(var_3.a, func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.b.c, var_3.b.a.c, var_2.a.d), vec4<u32>(var_3.b.a.d, 17034u, 1u, 4294967295u)), 0i, ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 19173u), vec2<u32>(u_input.b, 47347u))), arg_1.c, func_2(~vec4<u32>(var_0.d.d, 1u, 4294967295u, 65582u), ~u_input.d, vec4<i32>(-2147483647i, -763i, 1i, u_input.a), 0u), arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-491f - 1190f) * -285f) - _wgslsmith_f_op_f32(step(var_0.d.a, arg_0.b.a)))), arg_0);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = func_5(Struct_3(arg_1, Struct_2(func_1(arg_0.b, func_5(arg_0, -1990f, arg_0.b).b).a, func_5(arg_0, arg_0.b.a.a, Struct_2(arg_2, arg_1, true, arg_1, arg_2.b)).a, func_1(arg_0.b, func_1(arg_0.b, arg_0.b).b).a.b, Struct_1(-539f, !arg_2.b, _wgslsmith_sub_u32(1u, arg_2.c), arg_2.d), arg_2.b)), arg_1.a, Struct_2(Struct_1(arg_1.a, false, abs(arg_1.d) ^ abs(arg_0.a.c), reverseBits(46670u)), func_2(~(~vec4<u32>(4294967295u, 4294967295u, 38047u, arg_0.a.d)), firstLeadingBit(~(-2147483647i)), -reverseBits(vec4<i32>(-49176i, u_input.d, u_input.c, -2147483647i)), 1u), arg_2.b, func_2(countOneBits(abs(vec4<u32>(arg_2.c, arg_1.d, 64178u, arg_0.b.d.d))), _wgslsmith_add_i32(max(u_input.a, u_input.c), _wgslsmith_div_i32(u_input.c, u_input.d)), reverseBits(abs(vec4<i32>(-67193i, -34516i, -22021i, u_input.d))), ~func_1(arg_0.b, arg_0.b).b.d.d), any(!(!vec4<bool>(true, false, arg_2.b, arg_1.b))))).b.b;
    var_0 = arg_1;
    var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1636f, -1000f, 1120f, arg_2.a))))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), -846f, _wgslsmith_div_f32(-411f, -317f), _wgslsmith_f_op_f32(min(1634f, arg_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.d.a, -684f, 1332f, arg_2.a))))))), vec4<bool>(any(select(!vec4<bool>(var_0.b, false, arg_1.b, true), vec4<bool>(false, false, arg_2.b, false), true & arg_1.b)), !func_1(arg_0.b, Struct_2(Struct_1(-1000f, arg_0.b.d.b, arg_0.b.b.c, arg_1.d), Struct_1(arg_0.a.a, true, u_input.b, 23014u), true, Struct_1(arg_0.b.a.a, false, 5541u, arg_0.a.d), arg_1.b)).b.d.b != func_5(Struct_3(Struct_1(-607f, arg_1.b, 0u, arg_2.c), Struct_2(arg_1, arg_2, arg_2.b, arg_1, false)), _wgslsmith_f_op_f32(arg_0.b.a.a * var_0.a), func_5(Struct_3(Struct_1(var_0.a, true, arg_2.c, 68718u), arg_0.b), -252f, arg_0.b).b).a.b, var_0.b, all(vec3<bool>(true, true, false)))));
    var var_2 = func_5(func_5(func_5(func_1(arg_0.b, func_1(arg_0.b, Struct_2(arg_0.b.d, Struct_1(arg_2.a, var_0.b, 11241u, 327u), arg_1.b, arg_0.a, arg_1.b)).b), var_0.a, func_5(func_5(Struct_3(Struct_1(1996f, arg_2.b, 24670u, u_input.b), Struct_2(Struct_1(var_0.a, arg_1.b, var_0.c, arg_1.d), arg_1, true, Struct_1(arg_2.a, arg_2.b, u_input.b, var_0.d), false)), var_0.a, arg_0.b), _wgslsmith_f_op_f32(185f + -344f), arg_0.b).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(-arg_0.b.b.a))), arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) * arg_0.b.d.a), Struct_2(arg_0.b.d, func_2(vec4<u32>(u_input.b, arg_1.d ^ arg_2.d, min(0u, 1u), func_3(arg_0)), ~abs(u_input.a), ~abs(vec4<i32>(u_input.d, 1i, u_input.a, u_input.a)), 62352u), select(true, !arg_0.a.b != false, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2217f - arg_0.a.a)), select(arg_2.b, arg_2.b, false) == func_2(vec4<u32>(arg_0.b.a.d, u_input.b, 10682u, 1u), -26484i, vec4<i32>(u_input.d, u_input.d, u_input.d, 8772i), arg_1.d).b, arg_0.b.a.c, _wgslsmith_clamp_u32(countOneBits(arg_0.a.d), min(var_0.c, arg_1.d), arg_0.b.b.d)), arg_1.b));
    return arg_0.b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f + 406f) - -855f), _wgslsmith_f_op_f32(func_6(func_1(Struct_2(Struct_1(-3068f, true, 4294967295u, u_input.b), Struct_1(-795f, false, 38207u, 0u), false, Struct_1(-139f, false, 4294967295u, 13194u), false), Struct_2(Struct_1(-1043f, false, u_input.b, 1u), Struct_1(1371f, false, u_input.b, u_input.b), true, Struct_1(1000f, false, u_input.b, 1u), true)), Struct_1(-503f, false, 4294967295u, 4294967295u), Struct_1(-1056f, true, u_input.b, u_input.b))), _wgslsmith_f_op_f32(sign(func_2(vec4<u32>(u_input.b, u_input.b, 46956u, 4294967295u), 1i, vec4<i32>(u_input.d, 11545i, u_input.a, -11700i), 41059u).a))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(643f, 1272f, -1962f, -436f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1889f, 1800f, -1143f, -127f))))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -495f), -1464f))), _wgslsmith_div_f32(func_2(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), -12560i & u_input.c, abs(vec4<i32>(u_input.a, -1i, u_input.c, 0i)), u_input.b << (u_input.b % 32u)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f + 1000f))), -1073f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-404f)) + _wgslsmith_f_op_f32(f32(-1f) * -1006f))));
    let var_1 = !vec4<bool>(736u <= _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 17524u), true, false, true | select(func_2(vec4<u32>(63756u, u_input.b, u_input.b, u_input.b), 1i, vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.c), 1u).b, func_4(Struct_1(var_0.x, false, 4294967295u, 76956u)).x, any(vec3<bool>(true, true, true))));
    var var_2 = Struct_3(Struct_1(var_0.x, var_1.x, u_input.b, ~u_input.b), Struct_2(func_2(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 18010u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 3802u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, 59872u, u_input.b, u_input.b))), min(-u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.c), vec3<i32>(0i, u_input.d, 37764i))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -33573i, u_input.a, 1i), vec4<i32>(u_input.d, u_input.c, 0i, u_input.c))), 4294967295u), func_5(Struct_3(Struct_1(var_0.x, var_1.x, 14859u, u_input.b), Struct_2(Struct_1(990f, var_1.x, u_input.b, u_input.b), Struct_1(1048f, true, u_input.b, 87460u), true, Struct_1(var_0.x, true, 24014u, 6123u), true)), var_0.x, func_1(Struct_2(Struct_1(265f, var_1.x, 1u, u_input.b), Struct_1(-400f, false, u_input.b, u_input.b), true, Struct_1(var_0.x, var_1.x, u_input.b, u_input.b), var_1.x), Struct_2(Struct_1(var_0.x, var_1.x, 26772u, u_input.b), Struct_1(var_0.x, var_1.x, 0u, 1u), false, Struct_1(1580f, false, 0u, u_input.b), var_1.x)).b).a, var_1.x, func_2(vec4<u32>(abs(4294967295u), ~u_input.b, countOneBits(30883u), 16226u), u_input.a, vec4<i32>(_wgslsmith_sub_i32(31210i, 2147483647i), u_input.a, _wgslsmith_mult_i32(u_input.c, u_input.a), countOneBits(57293i)), 43804u), any(select(select(vec4<bool>(true, false, var_1.x, false), var_1, true), vec4<bool>(var_1.x, true, var_1.x, true), !var_1.x))));
    var_2 = func_5(func_1(var_2.b, var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1050f)) + _wgslsmith_f_op_f32(round(-929f))), func_5(func_1(func_1(Struct_2(var_2.a, Struct_1(var_2.a.a, true, 81065u, 22511u), var_1.x, var_2.a, var_1.x), Struct_2(Struct_1(var_2.b.a.a, true, 1u, u_input.b), Struct_1(var_0.x, var_1.x, var_2.a.c, var_2.a.d), false, Struct_1(var_0.x, var_1.x, 27632u, 4294967295u), var_1.x)).b, var_2.b), var_0.x, var_2.b).b);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-select(firstTrailingBit(select(vec4<i32>(u_input.d, u_input.c, -8347i, u_input.d), vec4<i32>(0i, 13474i, u_input.d, 2147483647i), vec4<bool>(false, var_2.a.b, var_1.x, var_1.x))), ~(-vec4<i32>(u_input.a, -700i, u_input.a, u_input.a)), !var_2.b.d.b | false), vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-412f * var_2.b.d.a), -387f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -239f))) + _wgslsmith_f_op_f32(abs(var_2.a.a)))), ~1u);
}

