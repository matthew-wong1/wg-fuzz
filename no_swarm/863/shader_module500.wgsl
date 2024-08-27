struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.c.zyy - vec3<f32>(285f, -585f, -734f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(141f, 439f, 401f))))) - _wgslsmith_f_op_vec3_f32(-arg_0.c.zzy)), select(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<bool>(all(arg_1), all(vec3<bool>(false, false, arg_1.x)), true, any(vec4<bool>(false, true, false, arg_1.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.e, vec2<u32>(1u, 6457u)), arg_0.e) >> (arg_0.e % vec2<u32>(32u)), 1u, u_input.b.x), Struct_1(vec3<f32>(608f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(183f * -1000f))), -148f), u_input.b, abs(vec2<u32>(1u, select(u_input.a, 1u, true))), arg_0.e.x | u_input.a, ~u_input.b.x), Struct_1(vec3<f32>(arg_0.c.x, _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)), -1214f), _wgslsmith_mod_vec4_i32(firstLeadingBit(u_input.b >> (vec4<u32>(36995u, 23593u, arg_0.a, arg_0.a) % vec4<u32>(32u))), vec4<i32>(countOneBits(u_input.b.x), abs(u_input.b.x), 11415i ^ u_input.b.x, 36844i)), firstLeadingBit(arg_0.b.zy | ~vec2<u32>(65363u, arg_0.b.x)), _wgslsmith_add_u32(~arg_0.e.x, ~(~arg_0.e.x)), -(~_wgslsmith_div_i32(u_input.b.x, 12194i))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.c.x);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, _wgslsmith_div_f32(-2647f, var_1), var_0.b.a.x)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, -1i, 1i, -3261i)), vec4<i32>(_wgslsmith_div_i32(12297i, -16790i), 1i, -42776i, var_0.b.e)), arg_0.b.yx, _wgslsmith_mult_u32(var_0.b.d, ~(~arg_0.a)), var_0.a.b.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 649f) * 218f), arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x)), var_0.b.b, _wgslsmith_mod_vec2_u32(reverseBits(~var_0.b.c), ~vec2<u32>(u_input.a, 1u) | ~vec2<u32>(24851u, 41033u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.c.x, var_0.a.c.x, 41555u), min(select(arg_0.b.xww, arg_0.b.wzy, true), arg_0.b.wwy)), 1i ^ (abs(u_input.b.x) | min(u_input.b.x, 2147483647i))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1136f, -159f, 1218f) + vec3<f32>(arg_0.c.x, var_1, 1388f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-373f, -844f, arg_0.c.x), var_0.a.a))))), min(min(var_0.b.b, vec4<i32>(-30503i, -31676i, -1i, u_input.b.x)), vec4<i32>(-1i & var_0.c.b.x, ~(-57796i), var_0.b.b.x, var_0.a.e)), var_0.c.c, 0u, 22853i));
    var_2 = var_0;
    var_2 = Struct_3(var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(var_2.b.a, var_0.b.a)), vec3<f32>(1325f, 469f, _wgslsmith_f_op_f32(var_0.a.a.x - var_2.b.a.x)))), u_input.b, ~var_2.a.c << (vec2<u32>(~4294967295u, 4294967295u >> (0u % 32u)) % vec2<u32>(32u)), 27316u, var_0.c.e), Struct_1(vec3<f32>(var_2.a.a.x, 630f, -263f), -var_0.c.b, ~(~(var_2.a.c >> (arg_0.e % vec2<u32>(32u)))), ~(~var_0.b.c.x ^ _wgslsmith_div_u32(arg_0.b.x, var_2.b.d)), countOneBits(abs(60181i))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(select(1210f, var_1, arg_1.x))))))), var_2.c.a.x, 439f);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1597f, -268f, arg_0)) - _wgslsmith_f_op_vec3_f32(func_3(Struct_2(0u, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<f32>(-389f, arg_0, arg_0, 1151f), vec4<bool>(true, true, false, true), vec2<u32>(u_input.a, 14684u)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))))), firstLeadingBit(select(firstTrailingBit(u_input.b), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-21427i, arg_1, arg_1), vec3<i32>(1i, 13108i, -44868i)), u_input.b.x, i32(-1i) * -2147483647i, firstLeadingBit(-9901i)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), ~select(countOneBits(countOneBits(vec2<u32>(0u, 0u))), vec2<u32>(29946u, ~u_input.a), _wgslsmith_f_op_f32(-arg_0) <= 625f), u_input.a, _wgslsmith_dot_vec2_i32(min(select(vec2<i32>(2147483647i, u_input.b.x) << (vec2<u32>(1u, 16578u) % vec2<u32>(32u)), vec2<i32>(arg_1, 0i), u_input.b.x <= arg_1), countOneBits(vec2<i32>(14364i, u_input.b.x)) << (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), u_input.b.zz));
    var var_1 = _wgslsmith_clamp_u32(56714u, ~36412u, 72096u);
    var var_2 = Struct_3(var_0, var_0, Struct_1(vec3<f32>(262f, -362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x)))), ~var_0.b, _wgslsmith_mult_vec2_u32(var_0.c, ~(var_0.c | vec2<u32>(u_input.a, u_input.a))), u_input.a, 64164i));
    var var_3 = select(0i, 17387i, 4294967295u != var_0.d);
    var_3 = arg_1;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a.a), vec4<i32>(arg_1, var_0.e | max(-6585i, max(1i, 5228i)), ~(8033i ^ _wgslsmith_add_i32(44599i, var_0.e)), arg_1 & _wgslsmith_clamp_i32(arg_1 | arg_1, _wgslsmith_mod_i32(-17852i, arg_1), arg_1)), var_2.a.c, _wgslsmith_dot_vec2_u32(max(select(var_2.a.c, var_0.c ^ vec2<u32>(4294967295u, var_0.c.x), true), var_0.c), min(vec2<u32>(var_0.d, u_input.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u) | var_0.c))), -(~1i));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(0u, ~_wgslsmith_mult_u32(1u, u_input.a));
    let var_1 = arg_1.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, -853f, arg_2.b.a.x) * vec4<f32>(1000f, arg_1.a.x, 232f, 112f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-561f, -2662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1754f) - _wgslsmith_f_op_f32(trunc(arg_2.a.a.x))), arg_0))));
    var var_3 = Struct_2(4294967295u, vec4<u32>(var_0, ~4294967295u, (~arg_2.c.c.x | max(46021u, 4294967295u)) << (~u_input.a % 32u), max(~(0u >> (u_input.a % 32u)), ~var_0)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(round(var_2.x)), -232f, arg_2.b.a.x))))), vec4<bool>(true || all(vec3<bool>(true, true, true)), false, !all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(126f, var_2.x, false)) * var_2.x) > 1401f), reverseBits(~arg_1.c & vec2<u32>(arg_1.c.x, 40899u)) & ~_wgslsmith_add_vec2_u32(arg_1.c & vec2<u32>(arg_2.c.c.x, 1u), vec2<u32>(8565u, 3669u) ^ arg_1.c));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wwy * arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, arg_1.a.x, -737f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(-769f, arg_2.c.a.x, 1997f))) * arg_1.a), vec3<bool>(!(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 7947u, u_input.a, u_input.a), var_3.b) > _wgslsmith_dot_vec4_u32(var_3.b, vec4<u32>(var_3.e.x, var_3.b.x, arg_1.d, 32690u))), true, true)));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, func_2(-668f, _wgslsmith_mult_i32(arg_1.e, -28930i)).a.x) + -114f), ~(-(-1i & (arg_3 >> (1u % 32u)))));
}

fn func_1() -> bool {
    let var_0 = u_input.b.x << ((u_input.a ^ reverseBits(4294967295u)) % 32u);
    var var_1 = func_4(-435f, func_2(-421f, -var_0 >> (u_input.a % 32u)), Struct_3(func_2(-766f, _wgslsmith_dot_vec4_i32(select(vec4<i32>(14373i, u_input.b.x, u_input.b.x, 8207i), u_input.b, false), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 23933i, var_0)))), func_2(_wgslsmith_f_op_f32(-990f * _wgslsmith_f_op_f32(-489f - 446f)), ~_wgslsmith_mod_i32(-2147483647i, 47365i)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(531f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(u_input.a, vec4<u32>(29476u, 4294967295u, u_input.a, u_input.a), vec4<f32>(-304f, 1492f, -545f, -1068f), vec4<bool>(false, false, true, false), vec2<u32>(53065u, u_input.a)), vec4<bool>(true, true, false, true))).x, -720f), vec4<i32>(u_input.b.x, 1i, ~var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0, u_input.b.x, 55445i), u_input.b)), vec2<u32>(~1u, 0u & u_input.a), ~u_input.a, _wgslsmith_mod_i32(i32(-1i) * -16828i, ~0i))), ~(~(_wgslsmith_mod_i32(u_input.b.x, 30330i) & max(-2147483647i, 14058i))));
    let var_2 = max(vec2<i32>((1i >> (min(u_input.a, u_input.a) % 32u)) & var_1.e, ~_wgslsmith_sub_i32(-2147483647i | u_input.b.x, -2147483647i)), vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_1.e), var_1.b.zy), countOneBits(u_input.b.x)), -firstLeadingBit(max(var_1.e, 1i))));
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1581f + var_1.a.x)))), _wgslsmith_dot_vec4_i32(~countOneBits(~vec4<i32>(var_0, 27269i, 1i, -1i)), u_input.b & ~(var_1.b << (vec4<u32>(var_1.c.x, 20112u, var_1.d, 1u) % vec4<u32>(32u)))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(func_2(-345f, 5146i).a)))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0, var_0, -2147483647i, var_2.x) << (vec4<u32>(58587u, var_1.d, u_input.a, var_1.c.x) % vec4<u32>(32u)), func_2(862f, var_1.e).b, true), min(~vec4<i32>(var_1.e, -2147483647i, 26412i, 21560i), var_1.b)), -_wgslsmith_sub_vec4_i32(func_2(var_1.a.x, 1i).b, var_1.b << (vec4<u32>(66782u, 25796u, 53857u, u_input.a) % vec4<u32>(32u)))), vec2<u32>(0u ^ ~u_input.a, _wgslsmith_sub_u32(~(u_input.a & 42113u), _wgslsmith_sub_u32(~var_1.d, u_input.a & var_1.d))), _wgslsmith_div_u32(36578u & u_input.a, 1u), 2147483647i);
    return !(-(min(u_input.b.x, var_2.x) | 1i) >= (~_wgslsmith_mod_i32(var_0, u_input.b.x) | -u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wwx;
    var_0 = u_input.b.xyw << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.a, 65347u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, 47267u, 1u, u_input.a))), u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(23357u, 68725u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 94819u), vec2<u32>(0u, 9542u)))) % vec3<u32>(32u));
    let var_1 = select(~vec3<u32>(~(4294967295u >> (u_input.a % 32u)), ~(1u & u_input.a), (u_input.a | u_input.a) | abs(1u)), vec3<u32>(79920u, select(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(0u, u_input.a, u_input.a))), u_input.a, true), u_input.a), vec3<bool>(select((1i >> (u_input.a % 32u)) <= 961i, !any(vec3<bool>(false, true, false)), true), any(vec4<bool>(any(vec3<bool>(true, true, false)), false, true, u_input.b.x >= 2012i)), !select(false, any(vec4<bool>(false, false, false, false)), true)));
    let var_2 = select(vec2<bool>(select(true, !select(false, true, false), true), true || any(vec3<bool>(true, true, true))), !vec2<bool>(false, any(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), vec2<bool>(true, true)), !vec2<bool>(func_1(), u_input.a >= u_input.a), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false)), false)));
    var_0 = -u_input.b.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_mod_i32(var_0.x, u_input.b.x), u_input.b.x) >> (vec2<u32>(1u, 14322u) % vec2<u32>(32u)), -(~u_input.b >> (vec4<u32>(45707u, 1u, 46500u, 1u) % vec4<u32>(32u))), 76076u);
}

