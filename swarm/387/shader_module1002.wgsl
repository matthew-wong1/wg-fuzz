struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
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

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(arg_0, ((vec3<u32>(u_input.a, 30951u, u_input.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(61991u, u_input.a, u_input.a), vec3<u32>(4294967295u, 3269u, 0u)) % vec3<u32>(32u))) ^ reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(11423u, 26710u, u_input.a), vec3<u32>(u_input.a, 11136u, u_input.a)))) << (firstLeadingBit(min(abs(vec3<u32>(59246u, 62573u, 0u)), ~vec3<u32>(0u, 3158u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(190f, -772f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f * -1444f))), arg_0, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(4294967295u), 263u, 68932u, u_input.a), firstLeadingBit(vec4<u32>(84807u, 1u, 92670u, u_input.a)) & vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(220u, u_input.a, u_input.a), arg_0.d.wyz), ~vec3<u32>(1u, u_input.a, 37725u)), ~u_input.a, ~u_input.a)));
    let var_1 = -2147483647i;
    var_0 = Struct_2(Struct_1(4384i, true, arg_0.c, vec4<bool>(true, arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 42283u), vec2<u32>(var_0.e.x, 39700u)) <= u_input.a, false)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -346f))), arg_0, ~(~var_0.e));
    var var_2 = _wgslsmith_clamp_u32(4294967295u, ~reverseBits(_wgslsmith_mod_u32(u_input.a, 1u)), _wgslsmith_dot_vec2_u32(countOneBits(firstLeadingBit(vec2<u32>(u_input.a, 131950u))), select(var_0.b.yx << (vec2<u32>(1u, var_0.b.x) % vec2<u32>(32u)), select(vec2<u32>(1u, 1u), vec2<u32>(var_0.b.x, u_input.a), var_0.a.d.x), vec2<bool>(false, arg_0.d.x)))) << (1u % 32u);
    let var_3 = 1u;
    return !(!select(true, true, false));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(-23053i, any(vec3<bool>(10786u < u_input.a, !arg_2.b, false)), ~min(arg_3.c, vec4<i32>(arg_3.a, arg_3.a, -1i, -9365i) | arg_2.c), select(!arg_0.d, vec4<bool>(!arg_3.b, true, true, arg_1 >= 1000f), arg_2.d)), vec3<u32>(select(u_input.a, reverseBits(0u << (0u % 32u)), true), u_input.a << (47808u % 32u), _wgslsmith_mult_u32(68489u, ~u_input.a)), arg_1, Struct_1(abs(-arg_2.a), true, vec4<i32>(arg_2.a, abs(-arg_0.a), arg_3.c.x | min(arg_3.a, arg_3.c.x), -21365i), vec4<bool>(arg_3.b, u_input.a >= u_input.a, all(vec2<bool>(false, arg_3.d.x)), arg_2.d.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) ^ ~vec4<u32>(31912u, 37423u, 1u, u_input.a)), firstLeadingBit(~(vec4<u32>(u_input.a, 50964u, u_input.a, u_input.a) >> (vec4<u32>(1u, 105245u, 36607u, 126273u) % vec4<u32>(32u))))));
    let var_1 = vec4<bool>(false, any(select(vec3<bool>(all(var_0.d.d), func_3(arg_3), false), vec3<bool>(all(vec3<bool>(arg_2.d.x, true, true)), !arg_0.d.x, arg_0.b), !vec3<bool>(arg_0.b, var_0.a.b, false))), arg_0.d.x, arg_2.d.x);
    return vec3<u32>(var_0.b.x, ~(~firstLeadingBit(u_input.a)) ^ ((_wgslsmith_mod_u32(109259u, 1u) >> (1u % 32u)) << (min(~var_0.e.x, u_input.a) % 32u)), 1u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_2(arg_1.d, _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(~arg_0.b, vec3<u32>(u_input.a, arg_1.e.x, arg_1.e.x)), func_4(Struct_1(~u_input.b, true, -vec4<i32>(arg_1.a.c.x, arg_1.a.a, arg_1.a.c.x, -27515i), vec4<bool>(arg_2, false, false, false)), arg_0.c, Struct_1(reverseBits(arg_0.a.a), func_3(arg_0.d), vec4<i32>(arg_0.a.c.x, u_input.b, arg_0.d.a, -8461i), arg_1.d.d), Struct_1(_wgslsmith_dot_vec3_i32(arg_1.d.c.zyz, arg_0.a.c.zzy), arg_0.c >= arg_0.c, vec4<i32>(arg_1.a.c.x, arg_0.d.c.x, u_input.b, u_input.b) | arg_1.a.c, arg_0.a.d))), arg_0.c, arg_1.d, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, (u_input.a << (u_input.a % 32u)) & ~arg_0.b.x, arg_1.e.x, max(u_input.a, arg_0.e.x << (arg_1.e.x % 32u))), firstLeadingBit(_wgslsmith_mult_vec4_u32(~arg_0.e, vec4<u32>(128150u, arg_0.e.x, 0u, arg_1.e.x) >> (arg_0.e % vec4<u32>(32u))))));
    var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(-2147483647i, any(var_0.d.d.xzw), max(countOneBits(arg_0.d.c | arg_0.d.c), vec4<i32>(_wgslsmith_mod_i32(0i, -65510i), _wgslsmith_dot_vec4_i32(arg_0.d.c, vec4<i32>(u_input.b, -27423i, u_input.b, 9505i)), firstLeadingBit(23742i), 33151i | var_0.d.a)), !select(arg_1.a.d, select(vec4<bool>(arg_0.d.b, false, true, true), var_0.d.d, vec4<bool>(true, true, arg_1.a.b, false)), vec4<bool>(arg_0.d.d.x, arg_0.d.d.x, arg_1.a.b, arg_2))), vec3<u32>(arg_1.e.x << (u_input.a % 32u), ~4294967295u, select(_wgslsmith_mod_u32(var_0.b.x ^ 39398u, 0u), ~(~86055u), firstTrailingBit(0i) <= 2147483647i)), var_0.c, Struct_1(7934i, _wgslsmith_f_op_f32(-arg_0.c) < _wgslsmith_f_op_f32(844f - -286f), vec4<i32>(-11082i, ~(-25692i), i32(-1i) * -1i, 68855i), vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec3<bool>(arg_0.d.d.x, true, false), arg_1.d.d.xyw, true)), false)), var_0.e);
    var_1 = Struct_2(arg_0.d, ((arg_0.b >> (~arg_0.e.zwz % vec3<u32>(32u))) << (min(arg_0.b ^ var_0.e.zzz, abs(vec3<u32>(var_0.b.x, u_input.a, 18425u))) % vec3<u32>(32u))) ^ vec3<u32>(arg_0.b.x, _wgslsmith_div_u32(4294967295u, var_0.e.x), countOneBits(var_0.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.e.x, arg_0.b.x, 4294967295u), var_0.e) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(806f, _wgslsmith_f_op_f32(-1415f - 838f))) * var_0.c))), Struct_1(var_0.a.a, !all(!arg_1.d.d.wxx), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(-38913i), _wgslsmith_dot_vec3_i32(arg_0.a.c.wxy, arg_1.a.c.xwz), 28926i, abs(var_0.a.c.x)), arg_1.a.c, arg_0.d.c), vec4<bool>(true, true, true, _wgslsmith_add_u32(arg_1.e.x, 4867u) < min(1u, u_input.a))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.e.x, 0u, 22505u, var_0.e.x), firstTrailingBit(arg_0.e)), firstTrailingBit(var_1.e & vec4<u32>(u_input.a, arg_0.e.x, var_0.e.x, u_input.a))) & ~var_0.e);
    var_0 = arg_1;
    return !vec4<bool>(var_1.a.d.x, var_0.d.b, all(vec4<bool>(false, var_1.a.d.x, all(vec3<bool>(true, true, arg_1.a.b)), var_0.d.d.x)), any(vec2<bool>(arg_0.a.b, var_0.a.b)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = vec2<u32>(~reverseBits(83165u), 1u);
    return vec3<bool>(select(!(!select(false, false, false)), arg_1.b, !arg_2.d.b), arg_1.b | false, true);
}

fn func_1() -> bool {
    let var_0 = false;
    var var_1 = select(vec3<u32>(35090u, ~1u, 1095u | u_input.a), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, _wgslsmith_mult_u32(u_input.a, 4294967295u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a, 1u, 24187u), vec3<u32>(109839u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, 28728u, u_input.a)))), !func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(371f, -613f))), Struct_1(u_input.b, true, countOneBits(vec4<i32>(-2147483647i, u_input.b, -15573i, -1i)), func_2(Struct_2(Struct_1(2049i, var_0, vec4<i32>(18096i, u_input.b, 41971i, u_input.b), vec4<bool>(var_0, var_0, true, true)), vec3<u32>(3611u, u_input.a, 35455u), 158f, Struct_1(2147483647i, false, vec4<i32>(1i, 7244i, u_input.b, 44278i), vec4<bool>(var_0, var_0, var_0, true)), vec4<u32>(76724u, u_input.a, 23513u, 11901u)), Struct_2(Struct_1(42293i, var_0, vec4<i32>(-9152i, u_input.b, u_input.b, -31075i), vec4<bool>(var_0, var_0, true, true)), vec3<u32>(7992u, u_input.a, u_input.a), -1113f, Struct_1(2147483647i, true, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(false, var_0, var_0, false)), vec4<u32>(u_input.a, 12053u, u_input.a, 78236u)), false)), Struct_2(Struct_1(-25263i, true, vec4<i32>(-2147483647i, 1i, u_input.b, -46339i), vec4<bool>(var_0, true, false, true)), abs(vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -907f), Struct_1(u_input.b, var_0, vec4<i32>(u_input.b, u_input.b, -23808i, u_input.b), vec4<bool>(false, false, false, false)), select(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 44936u, u_input.a), true)), ~(~4294967295u)));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(func_4(Struct_1(-3501i, var_0, vec4<i32>(u_input.b, 5485i, u_input.b, -7586i), vec4<bool>(false, true, true, true)), -873f, Struct_1(-2147483647i, var_0, vec4<i32>(u_input.b, -17725i, 0i, 29525i), vec4<bool>(var_0, var_0, var_0, false)), Struct_1(u_input.b, var_0, vec4<i32>(u_input.b, -57670i, u_input.b, u_input.b), vec4<bool>(true, var_0, var_0, var_0))).x, u_input.a, var_1.x, ~(~0u)), vec4<u32>(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 34511u, var_1.x, 13260u), vec4<u32>(84463u, u_input.a, var_1.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.x, u_input.a), vec4<u32>(31444u, 49347u, u_input.a, 34940u), vec4<u32>(var_1.x, 49859u, var_1.x, var_1.x)), select(true, false, true)), firstLeadingBit(max(vec4<u32>(13741u, 26123u, u_input.a, 20381u), vec4<u32>(2197u, 1u, var_1.x, 89305u)))), 4294967295u, u_input.a, u_input.a));
    var_1 = vec3<u32>(73161u, 1u, var_2);
    var var_3 = !select(select(!vec4<bool>(false, var_0, var_0, false), vec4<bool>(any(vec3<bool>(true, var_0, true)), all(vec4<bool>(false, var_0, var_0, true)), select(true, true, var_0), var_1.x > var_2), false), func_2(Struct_2(Struct_1(-2147483647i, var_0, vec4<i32>(u_input.b, u_input.b, 17466i, -58106i), vec4<bool>(var_0, var_0, true, false)), vec3<u32>(1u, 1u, 1u), -1000f, Struct_1(u_input.b, var_0, vec4<i32>(27911i, 7245i, u_input.b, u_input.b), vec4<bool>(false, true, var_0, true)), vec4<u32>(var_1.x, var_2, 42540u, var_1.x)), Struct_2(Struct_1(-82605i, var_0, vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<bool>(false, var_0, false, true)), _wgslsmith_div_vec3_u32(vec3<u32>(var_2, 50502u, var_2), vec3<u32>(var_1.x, 0u, var_1.x)), _wgslsmith_f_op_f32(420f * 456f), Struct_1(0i, false, vec4<i32>(22980i, u_input.b, u_input.b, 34841i), vec4<bool>(var_0, false, true, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 6800u, 113747u, var_2), vec4<u32>(0u, var_2, var_2, 0u), vec4<u32>(var_1.x, 52316u, var_1.x, var_2))), var_0), func_2(Struct_2(Struct_1(u_input.b, var_0, vec4<i32>(7386i, -46312i, 41794i, u_input.b), vec4<bool>(true, false, var_0, var_0)), vec3<u32>(0u, 4294967295u, u_input.a) & vec3<u32>(0u, 0u, u_input.a), _wgslsmith_f_op_f32(trunc(194f)), Struct_1(-35955i, var_0, vec4<i32>(u_input.b, u_input.b, -34143i, -1153i), vec4<bool>(false, var_0, false, var_0)), ~vec4<u32>(var_2, var_2, 0u, 4294967295u)), Struct_2(Struct_1(0i, false, vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<bool>(var_0, true, var_0, true)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2, 0u, 40497u), vec3<u32>(u_input.a, 4294967295u, var_2)), _wgslsmith_f_op_f32(f32(-1f) * -630f), Struct_1(61578i, false, vec4<i32>(-53178i, u_input.b, -29834i, u_input.b), vec4<bool>(true, true, var_0, true)), reverseBits(vec4<u32>(66262u, u_input.a, 9260u, var_2))), true));
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec2<bool>(!(!func_1()), func_1());
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(187f + 896f));
    var var_3 = Struct_1(_wgslsmith_add_i32(u_input.b, ~(~u_input.b) >> (~1u % 32u)), -(u_input.b ^ u_input.b) == u_input.b, abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -41577i, 26701i, -25956i) | vec4<i32>(1i, u_input.b, u_input.b, u_input.b), -vec4<i32>(u_input.b, -90042i, u_input.b, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -18515i, -387i, u_input.b), vec4<i32>(33328i, u_input.b, u_input.b, u_input.b)), max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), -1i)), select(vec4<bool>(var_0, true, u_input.b >= u_input.b, any(!vec2<bool>(var_1.x, true))), vec4<bool>(true, !all(vec4<bool>(var_0, true, true, var_1.x)), ~30482u < firstLeadingBit(u_input.a), any(vec4<bool>(true, var_1.x, var_1.x, false))), func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), Struct_1(_wgslsmith_mult_i32(u_input.b, 1i), true, vec4<i32>(17000i, u_input.b, u_input.b, -2147483647i), func_2(Struct_2(Struct_1(u_input.b, var_0, vec4<i32>(u_input.b, 2147483647i, 54175i, u_input.b), vec4<bool>(var_0, false, var_0, false)), vec3<u32>(u_input.a, 3032u, u_input.a), 1409f, Struct_1(u_input.b, var_0, vec4<i32>(0i, u_input.b, 1i, 1i), vec4<bool>(var_0, false, var_0, var_1.x)), vec4<u32>(4294967295u, u_input.a, 43863u, u_input.a)), Struct_2(Struct_1(25553i, true, vec4<i32>(u_input.b, 2147483647i, -2147483647i, 1i), vec4<bool>(var_0, false, true, true)), vec3<u32>(4294967295u, 1u, u_input.a), var_2, Struct_1(9012i, true, vec4<i32>(u_input.b, -72751i, 20565i, u_input.b), vec4<bool>(var_0, false, var_1.x, true)), vec4<u32>(84194u, 4819u, u_input.a, 0u)), true)), Struct_2(Struct_1(2147483647i, var_0, vec4<i32>(u_input.b, 41438i, -48496i, 1i), vec4<bool>(var_0, true, false, false)), _wgslsmith_add_vec3_u32(vec3<u32>(45350u, u_input.a, u_input.a), vec3<u32>(u_input.a, 71034u, u_input.a)), -2202f, Struct_1(u_input.b, false, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(false, var_1.x, false, true)), vec4<u32>(u_input.a, 4691u, 1u, u_input.a)), ~firstTrailingBit(u_input.a)).x));
    var_3 = Struct_1(-91063i, var_3.b & select(true, (var_3.b | true) || all(var_3.d), var_1.x), vec4<i32>(-1i) * -vec4<i32>(-var_3.a, u_input.b, -2147483647i, -var_3.a), select(vec4<bool>(!var_0 || (u_input.a > u_input.a), var_3.d.x, any(!vec4<bool>(var_1.x, false, var_3.d.x, var_1.x)), var_3.d.x), vec4<bool>((var_3.a >= 920i) || true, !var_1.x, func_1(), var_3.d.x), !(!(u_input.a >= 0u))));
    var var_4 = Struct_1(40622i, true, -firstLeadingBit((var_3.c | var_3.c) & vec4<i32>(var_3.a, var_3.a, var_3.c.x, u_input.b)), !select(select(vec4<bool>(var_3.d.x, true, var_0, var_1.x), select(vec4<bool>(false, true, var_0, true), var_3.d, false), vec4<bool>(true, var_3.d.x, var_3.d.x, var_3.b)), !vec4<bool>(var_3.d.x, var_0, var_3.b, var_3.b), vec4<bool>(var_1.x, any(vec4<bool>(var_3.b, var_3.b, var_1.x, var_0)), true, func_5(-513f, Struct_1(var_3.a, false, vec4<i32>(-82836i, u_input.b, 0i, var_3.c.x), var_3.d), Struct_2(Struct_1(var_3.a, true, vec4<i32>(56713i, var_3.a, u_input.b, 3370i), var_3.d), vec3<u32>(u_input.a, u_input.a, u_input.a), var_2, Struct_1(-49107i, true, var_3.c, var_3.d), vec4<u32>(92583u, 6917u, u_input.a, 2810u)), u_input.a).x)));
    let var_5 = Struct_2(Struct_1(_wgslsmith_add_i32(~1i, -11650i), true, vec4<i32>(-abs(u_input.b), -21896i, select(2147483647i, -45476i, false), max(2062i, _wgslsmith_add_i32(u_input.b, var_4.c.x))), var_4.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a, u_input.a, ~(~13430u)), vec3<u32>(~1u, ~countOneBits(1u), u_input.a), ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(22207u, 14621u, u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + -249f) * var_2)))), Struct_1(~(-26936i), any(!select(var_4.d.xy, vec2<bool>(var_4.d.x, var_4.d.x), var_1)), var_4.c ^ -countOneBits(vec4<i32>(u_input.b, var_4.a, var_4.c.x, var_4.c.x)), select(select(vec4<bool>(false, var_4.d.x, false, var_0), var_3.d, true), select(!vec4<bool>(var_3.d.x, false, var_4.b, true), vec4<bool>(false, true, var_3.d.x, true), func_2(Struct_2(Struct_1(var_3.a, false, var_4.c, var_4.d), vec3<u32>(0u, u_input.a, 1u), var_2, Struct_1(1i, false, vec4<i32>(var_4.c.x, -65794i, -24790i, var_3.c.x), var_4.d), vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u)), Struct_2(Struct_1(var_3.c.x, false, vec4<i32>(-2147483647i, u_input.b, 1i, -45943i), vec4<bool>(var_1.x, false, var_1.x, true)), vec3<u32>(u_input.a, 56472u, u_input.a), var_2, Struct_1(-8012i, true, var_4.c, vec4<bool>(var_0, var_4.d.x, var_0, true)), vec4<u32>(58664u, 4294967295u, 48285u, 1u)), var_1.x)), vec4<bool>(u_input.a >= u_input.a, u_input.a >= 17444u, true, func_2(Struct_2(Struct_1(var_3.a, var_4.b, var_4.c, vec4<bool>(var_3.b, true, true, var_0)), vec3<u32>(u_input.a, u_input.a, u_input.a), 372f, Struct_1(1i, false, var_3.c, var_3.d), vec4<u32>(u_input.a, 1u, u_input.a, 52693u)), Struct_2(Struct_1(var_3.a, var_4.d.x, vec4<i32>(2147483647i, 54398i, 3590i, -2147483647i), var_3.d), vec3<u32>(80672u, 0u, u_input.a), var_2, Struct_1(-2147483647i, var_4.b, var_4.c, vec4<bool>(var_4.b, true, var_3.d.x, true)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), true).x))), _wgslsmith_mult_vec4_u32(abs(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 30302u), vec4<u32>(u_input.a, 4294967295u, 1u, 87803u), vec4<u32>(u_input.a, 14557u, u_input.a, u_input.a))), _wgslsmith_add_vec4_u32((vec4<u32>(32121u, u_input.a, 4294967295u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) & vec4<u32>(u_input.a, 0u, 82538u, u_input.a), ~select(vec4<u32>(47819u, 6914u, u_input.a, 1u), vec4<u32>(u_input.a, 1u, 9695u, u_input.a), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~0u, (var_5.b.x >> (var_5.e.x % 32u)) ^ u_input.a), 14094u, vec4<u32>(_wgslsmith_sub_u32(var_5.b.x, 44088u), 53564u, 60360u, var_5.b.x), var_2, firstTrailingBit(-vec2<i32>(var_3.a, -u_input.b)));
}

