struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_mod_vec4_i32(~select(vec4<i32>(1i, u_input.b, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -1206i), true), vec4<i32>(u_input.b, -28883i, 1i, reverseBits(u_input.c.x))) << (countOneBits(~vec4<u32>(0u, arg_0.x, u_input.a.x, arg_0.x)) % vec4<u32>(32u)));
    let var_1 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec4<bool>(false, false, false, true))), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -536f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1221f, 572f))) * _wgslsmith_f_op_f32(1f - -227f))));
    var var_3 = Struct_2(Struct_1(abs(arg_0.x), ~4294967295u, ~(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 26407u), u_input.a) | u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(254f, var_2, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(abs(var_2))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_2)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(724f, 1000f, -120f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, var_2))), vec3<f32>(778f, -409f, 1508f)))), Struct_1(~arg_0.x, arg_1, vec2<u32>(u_input.a.x, _wgslsmith_div_u32(~u_input.d, ~50660u))), _wgslsmith_sub_i32(-2147483647i, 1i));
    let var_4 = u_input.c;
    return vec4<bool>(true, all(vec4<bool>(true, true, var_1.x, !(!var_1.x))), true, !(!var_1.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> i32 {
    let var_0 = select(vec4<bool>(false, true, true, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), func_3(vec3<u32>(26755u, 103604u, 1u), u_input.d), any(func_3(vec3<u32>(41530u, 89294u, 9312u), u_input.d).xz)), func_3(vec3<u32>(~abs(u_input.a.x), ~4294967295u >> ((u_input.a.x >> (16506u % 32u)) % 32u), 1u), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(16995u, 22480u, u_input.d, u_input.a.x), vec4<u32>(428u, u_input.d, u_input.a.x, 0u)), ~vec4<u32>(u_input.d, u_input.d, 84802u, 5050u) & ~vec4<u32>(24663u, u_input.a.x, 1u, u_input.a.x))));
    let var_1 = ~1u;
    return -57150i;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_2(arg_2.b.wy, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2.b))), vec4<f32>(arg_2.d, arg_2.b.x, -963f, _wgslsmith_f_op_f32(336f - 875f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_2.b.x, arg_2.e.x, arg_2.d) * arg_2.b))) + arg_2.b)), u_input.c);
    var var_1 = Struct_4(Struct_1(1u, arg_1.x, ~(~u_input.a)), vec3<bool>(func_3(~(vec3<u32>(arg_2.c.a, arg_2.c.c.x, u_input.a.x) << (vec3<u32>(arg_1.x, arg_1.x, 0u) % vec3<u32>(32u))), ~(~0u)).x, arg_2.c.b < 17523u, _wgslsmith_mult_u32(1u, ~arg_1.x) != u_input.d), Struct_2(Struct_1(abs(0u), 1u, select(~arg_2.c.c, ~u_input.a, vec2<bool>(true, true))), vec3<f32>(arg_2.e.x, -282f, -165f), arg_2.a, _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_0, -33992i, -1i, -61694i), vec4<i32>(-55990i, arg_0, -13265i, arg_0)), vec4<i32>(u_input.c.x, -2147483647i, 1i, -14500i)) << (arg_2.a.b % 32u)));
    let var_2 = var_1.c;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(~vec3<i32>(0i, var_1.c.d, -30544i), min(vec3<i32>(u_input.c.x, 33694i, 0i), vec3<i32>(-4548i, arg_0, -1i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, arg_0, -3723i) & -vec3<i32>(-13737i, 18604i, -1i), ~vec3<i32>(u_input.c.x, var_0, var_0))), max(arg_0 << (arg_1.x % 32u), ~7596i));
    var var_4 = ~(~var_1.a.c.x) >> (1u % 32u);
    return Struct_1(min(50083u, var_2.c.b), ~countOneBits(~1u), var_2.c.c);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(func_1(_wgslsmith_dot_vec2_i32(select(-vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(-35854i, -1i), vec2<bool>(true, true)), select(_wgslsmith_mod_vec2_i32(u_input.c, u_input.c), vec2<i32>(1i, u_input.b), func_3(vec3<u32>(arg_0.a, 1u, 50230u), 1u).zy)), arg_0.c, Struct_3(func_1(-1i, vec2<u32>(0u, 1294u), Struct_3(arg_0, vec4<f32>(-2146f, -362f, -509f, -738f), Struct_1(u_input.d, u_input.d, u_input.a), -102f, vec2<f32>(1133f, 905f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3005f, 1000f, -1510f, -1000f) * vec4<f32>(-1793f, 597f, -1466f, -2179f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-720f, 834f, -1621f, 1662f) + vec4<f32>(-1087f, 1378f, -784f, 674f))), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.c.x, 82425u), vec3<u32>(22327u, arg_0.c.x, 128093u)), ~4294967295u, u_input.a | vec2<u32>(arg_0.a, arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 1411f), _wgslsmith_f_op_f32(1063f + 2482f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2897f, -203f) + vec2<f32>(1212f, -2181f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -550f) - _wgslsmith_f_op_f32(ceil(-1664f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-385f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2369f))))), arg_0, 1i);
    let var_1 = select(vec3<u32>(0u, abs(4294967295u), func_1(1i, var_0.c.c, Struct_3(Struct_1(u_input.a.x, arg_0.b, u_input.a), vec4<f32>(var_0.b.x, -879f, 477f, -175f), var_0.a, -1486f, var_0.b.zy)).c.x) >> (~vec3<u32>(4294967295u, 60344u, 66390u) % vec3<u32>(32u)), vec3<u32>(u_input.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 13036u, 0u), vec3<u32>(4294967295u, 1u, var_0.c.c.x)), firstLeadingBit(1u)), func_3(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b, var_0.a.c.x, u_input.a.x), vec3<u32>(81241u, 3957u, 0u), vec3<u32>(1u, 44299u, arg_0.a))), 0u).xyy) | (~(~_wgslsmith_mod_vec3_u32(vec3<u32>(20128u, u_input.d, var_0.a.a), vec3<u32>(var_0.c.a, var_0.c.c.x, 1u))) | ~vec3<u32>(_wgslsmith_clamp_u32(var_0.a.a, u_input.d, 1u), _wgslsmith_div_u32(var_0.a.b, 1u), ~1u));
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_u32(var_0.a.c.x, _wgslsmith_clamp_u32(~u_input.d, min(7893u, arg_0.c.x), _wgslsmith_div_u32(var_0.a.a, arg_0.c.x))), u_input.d, min(u_input.a, u_input.a)), vec4<f32>(-274f, _wgslsmith_f_op_f32(step(-1662f, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-189f, 775f)) - _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x), Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), var_1) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 23968u, var_0.c.a), var_1) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c.x, 128652u, 31071u, u_input.d), vec4<u32>(u_input.a.x, arg_0.b, var_0.c.b, 0u) | vec4<u32>(var_0.a.c.x, u_input.a.x, 1u, 1u))), 4294967295u, u_input.a), _wgslsmith_f_op_f32(var_0.b.x * -106f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, -780f)));
    var var_3 = Struct_4(Struct_1(~max(abs(28644u), 4294967295u), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(67598u, var_1.x, 1u, 1u), vec4<u32>(1u, arg_0.b, u_input.d, 120017u)), reverseBits(35931u))), max(~countOneBits(vec2<u32>(9581u, 28895u)), select(~vec2<u32>(4294967295u, 44048u), ~vec2<u32>(1u, var_0.a.c.x), vec2<bool>(true, true)))), vec3<bool>(true, _wgslsmith_mod_i32(-2147483647i, -59108i) == countOneBits(~var_0.d), true), var_0);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(192f)) - _wgslsmith_div_f32(-415f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + _wgslsmith_f_op_f32(max(-1000f, var_3.c.b.x)))))));
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.d, 1i), 21461i, 5530i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_sub_i32(-(func_4(func_1(u_input.b, vec2<u32>(1u, 1u), Struct_3(Struct_1(u_input.d, 28769u, vec2<u32>(44309u, 0u)), vec4<f32>(327f, -211f, -1493f, 1000f), Struct_1(u_input.d, u_input.a.x, u_input.a), 214f, vec2<f32>(-236f, -1523f)))) >> (~_wgslsmith_mult_u32(u_input.a.x, u_input.d) % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, func_2(vec2<f32>(-620f, -1062f), vec4<f32>(230f, 1647f, 1137f, -347f), u_input.c), u_input.c.x, _wgslsmith_div_i32(2147483647i, 24403i)), abs(~vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -1512i))));
    var_1 = ~(-2147483647i);
    let var_2 = Struct_1(func_1(firstTrailingBit(select(~(-43520i), 14713i, any(vec4<bool>(false, var_0.x, var_0.x, false)))), firstTrailingBit((u_input.a ^ vec2<u32>(41249u, u_input.d)) >> (_wgslsmith_sub_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))), Struct_3(Struct_1(~u_input.a.x, _wgslsmith_add_u32(u_input.d, 0u), reverseBits(vec2<u32>(0u, 0u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(403f, 460f, 586f, 1019f))), vec4<f32>(1f, 1f, 1f, 1f)), func_1(2147483647i | u_input.c.x, u_input.a, Struct_3(Struct_1(u_input.d, 0u, vec2<u32>(58524u, 48291u)), vec4<f32>(-1000f, -752f, -464f, 1512f), Struct_1(0u, u_input.d, u_input.a), 637f, vec2<f32>(1315f, 1589f))), -738f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-197f, 464f) - vec2<f32>(985f, -264f)))))).c.x, ~_wgslsmith_sub_u32((u_input.d >> (u_input.a.x % 32u)) | 1u, 1u), _wgslsmith_mod_vec2_u32(~u_input.a, u_input.a));
    var var_3 = vec2<i32>(2147483647i, ~2147483647i);
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-701f, 836f, -923f) * vec3<f32>(_wgslsmith_f_op_f32(min(-2183f, -1267f)), _wgslsmith_f_op_f32(min(-403f, -1305f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(500f, 772f, 195f)))) - vec3<f32>(197f, 1000f, _wgslsmith_f_op_f32(sign(662f)))))));
    var_3 = -firstLeadingBit(~_wgslsmith_mod_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(u_input.c, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(~vec3<u32>(36843u, 49307u, 2363u), ~vec3<u32>(var_2.c.x, 45909u, 1u)), -1i, vec4<u32>(u_input.a.x, max(~88208u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, var_2.a), min(vec2<u32>(u_input.a.x, 5010u), vec2<u32>(var_2.c.x, 17548u)))), _wgslsmith_mod_u32(~u_input.d, u_input.a.x), ~u_input.a.x), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * var_4.x) + var_4.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2297f)), var_4.x)));
}

