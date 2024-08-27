struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    var var_0 = ~_wgslsmith_clamp_vec3_u32(arg_2.b.a & abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_2.a.x, 38103u), arg_2.b.a)), vec3<u32>(~1u, 1u & arg_3.x, ~_wgslsmith_sub_u32(u_input.b.x, 0u)), countOneBits(~arg_0.c.ywz) ^ _wgslsmith_add_vec3_u32(min(arg_2.b.a, arg_0.c.yzx), arg_2.b.a));
    var var_1 = arg_0;
    var var_2 = arg_1;
    var_2 = 0u;
    var_0 = ~reverseBits(abs(arg_0.a.a));
    return ~25657u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = arg_0.x;
    var_0 = func_1(Struct_3(Struct_1(vec3<u32>(arg_0.x, firstLeadingBit(u_input.d), 4294967295u)), true, arg_0 >> (~firstTrailingBit(vec4<u32>(20896u, 1u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), u_input.d, Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(50234u, u_input.b.x, 0u, 4294967295u), vec4<u32>(u_input.d, arg_0.x, arg_0.x, 1u), true), vec4<u32>(0u, arg_0.x, 4294967295u, u_input.d)), 42660u), Struct_1(~(vec3<u32>(arg_0.x, 15025u, 97946u) >> (vec3<u32>(106030u, arg_0.x, arg_0.x) % vec3<u32>(32u))))), arg_0.ww);
    var var_1 = Struct_3(Struct_1(firstTrailingBit(select(arg_0.wzz, vec3<u32>(arg_0.x, u_input.b.x, 4294967295u), false)) & (arg_0.xzx | ~arg_0.zwx)), !all(vec4<bool>(u_input.b.x >= arg_0.x, true, true, true)), select(arg_0, vec4<u32>(u_input.d, ~(~1u), ~(1u << (arg_0.x % 32u)), ~1u), select(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true | all(vec4<bool>(false, true, true, false)), ~arg_0.x != u_input.b.x)));
    var var_2 = _wgslsmith_div_i32(36168i, -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.c, 1i), vec3<i32>(-2147483647i, u_input.a, u_input.c))) == -(~(1i ^ (u_input.e >> (46457u % 32u))));
    let var_3 = vec2<u32>(1u, ~(~var_1.c.x));
    return var_1.c.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(~u_input.c, -2147483647i), ~max(vec2<i32>(u_input.a, -36366i), -vec2<i32>(u_input.e, u_input.a)), -firstTrailingBit(~vec2<i32>(u_input.e, u_input.e))) >> (vec2<u32>(33263u, 4294967295u) % vec2<u32>(32u));
    let var_1 = vec4<bool>(!any(vec2<bool>(true, true)), all(select(vec2<bool>(all(vec3<bool>(true, true, false)), true), vec2<bool>(all(vec4<bool>(false, false, false, true)), arg_0.x >= arg_2.x), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))), any(vec4<bool>(true, true, true, true)), (any(vec4<bool>(true, true, true, true)) && select(u_input.c > var_0.x, true, all(vec4<bool>(false, false, false, true)))) | true);
    var_0 = vec2<i32>(~select(2147483647i, firstTrailingBit(var_0.x), var_1.x), u_input.a);
    var var_2 = max(vec3<i32>(_wgslsmith_sub_i32(-(var_0.x ^ var_0.x), i32(-1i) * -25539i), var_0.x, 1i), -(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -10794i, 43597i), vec3<i32>(var_0.x, var_0.x, 6569i))) << (~(~vec3<u32>(arg_0.x, 44572u, arg_1.x)) % vec3<u32>(32u))));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, select(_wgslsmith_sub_u32(arg_2.x, 38477u), 4294967295u, !var_1.x)) & arg_2.x, u_input.d, 1u, _wgslsmith_div_u32(arg_1.x, 46788u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1399f, 1092f)), _wgslsmith_f_op_f32(-1000f - -169f)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-2884f)), _wgslsmith_f_op_f32(step(-706f, -726f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, -447f) - vec2<f32>(-388f, 1656f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, 1501f))))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -1000f))))))), _wgslsmith_f_op_vec2_f32(func_4(~reverseBits(vec4<u32>(u_input.b.x, 6034u, 36786u, 0u)) & ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 31080u, 11643u), vec4<u32>(u_input.d, 1u, 4294967295u, 4294967295u)), vec4<u32>(~0u, ~(~u_input.d), ~func_3(vec4<u32>(0u, 1u, u_input.d, u_input.d), vec3<f32>(-1612f, -279f, 617f)), u_input.d), _wgslsmith_clamp_vec3_u32(firstTrailingBit(min(vec3<u32>(u_input.d, 79418u, 114024u), vec3<u32>(u_input.b.x, u_input.d, 31624u))), ~vec3<u32>(u_input.b.x, 0u, 1u), abs(vec3<u32>(0u, u_input.d, 45120u))))));
    let var_1 = Struct_3(Struct_1(vec3<u32>(firstTrailingBit(~4294967295u), (u_input.d >> (29969u % 32u)) << ((3257u | u_input.b.x) % 32u), u_input.d)), arg_0, _wgslsmith_mult_vec4_u32(~vec4<u32>(func_1(Struct_3(Struct_1(vec3<u32>(4294967295u, u_input.b.x, u_input.d)), false, vec4<u32>(37354u, 46231u, u_input.d, u_input.d)), u_input.d, Struct_2(u_input.b, Struct_1(vec3<u32>(u_input.d, u_input.b.x, 8440u))), vec2<u32>(1u, 30357u)), 95730u << (u_input.d % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 40093u)), u_input.b.x & 7054u), firstTrailingBit(max(vec4<u32>(4294967295u, u_input.b.x, u_input.d, 8522u), ~vec4<u32>(4294967295u, u_input.b.x, u_input.d, 4294967295u)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-131f, _wgslsmith_div_f32(var_0.x, var_0.x)));
    var var_2 = !vec4<bool>(true, all(select(select(vec3<bool>(var_1.b, true, arg_0), vec3<bool>(false, var_1.b, false), vec3<bool>(var_1.b, arg_0, arg_0)), select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, arg_0, false), arg_0), true)), false, true);
    var var_3 = select(!select(vec3<bool>(all(vec4<bool>(false, var_1.b, var_2.x, var_2.x)), var_1.b, var_2.x), select(var_2.zwy, vec3<bool>(arg_0, var_2.x, var_2.x), !arg_0), vec3<bool>(true, true, var_2.x)), vec3<bool>(var_2.x, !((24263u >> (0u % 32u)) < var_1.c.x), var_2.x), false);
    return -244f;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(select(vec4<u32>(1u, 24582u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x), vec4<u32>(func_1(Struct_3(arg_3, false, vec4<u32>(1u, u_input.b.x, arg_0, 17696u)), u_input.b.x, Struct_2(vec2<u32>(arg_3.a.x, 0u), arg_3), u_input.b), max(_wgslsmith_dot_vec4_u32(vec4<u32>(23729u, 4294967295u, arg_0, 58820u), vec4<u32>(4294967295u, arg_0, arg_2.x, 4294967295u)), ~4294967295u), ~reverseBits(58953u), 18685u), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), false))), abs(vec4<u32>(arg_3.a.x, ~4294967295u, ~arg_3.a.x, u_input.d) & vec4<u32>(arg_2.x, 33159u, countOneBits(1u), arg_0)), ~(firstTrailingBit(vec3<u32>(8597u, arg_3.a.x, 0u)) << (_wgslsmith_clamp_vec3_u32(arg_3.a, vec3<u32>(1u, 1u, arg_0), ~arg_3.a) % vec3<u32>(32u))))).x;
    let var_1 = vec2<i32>(u_input.a, _wgslsmith_add_i32(39842i, -1i));
    var var_2 = Struct_3(Struct_1(select(select(vec3<u32>(arg_0, arg_3.a.x, arg_3.a.x), vec3<u32>(62983u, u_input.d, arg_2.x), vec3<bool>(true, true, true)), firstLeadingBit(vec3<u32>(u_input.b.x, arg_2.x, u_input.d)), any(vec4<bool>(false, true, false, true))) | vec3<u32>(_wgslsmith_sub_u32(arg_3.a.x, 17465u), ~0u, ~u_input.d)), (-61607i > _wgslsmith_mult_i32(~31046i, ~var_1.x)) && true, vec4<u32>(min(24776u, 4294967295u >> (~arg_3.a.x % 32u)), 4294967295u, arg_2.x, _wgslsmith_add_u32(arg_3.a.x, ~(u_input.b.x | 2828u))));
    var var_3 = vec4<u32>(arg_3.a.x, _wgslsmith_mod_u32(max(~min(42668u, 51130u), arg_3.a.x), abs(26183u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.a.x, var_2.c.x, 18151u & var_2.c.x, 20844u), var_2.c), arg_2.x);
    var_2 = Struct_3(arg_3, var_2.b, _wgslsmith_mod_vec4_u32(firstTrailingBit(var_2.c) << (((vec4<u32>(var_3.x, var_3.x, 1u, u_input.b.x) & var_2.c) << (~var_2.c % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a.x, var_3.x, arg_3.a.x, 4294967295u), vec4<u32>(arg_0, 34471u, 1u, 1u) ^ vec4<u32>(0u, 4294967295u, arg_3.a.x, var_2.c.x))));
    return -vec4<i32>(2147483647i, -3001i, 2147483647i, -reverseBits(19346i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_5(_wgslsmith_sub_u32(abs(~0u), _wgslsmith_mod_u32(func_1(Struct_3(Struct_1(vec3<u32>(1u, u_input.b.x, u_input.b.x)), false, vec4<u32>(1u, u_input.d, u_input.d, u_input.b.x)), u_input.b.x, Struct_2(vec2<u32>(4294967295u, u_input.d), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 15033u))), vec2<u32>(30299u, u_input.b.x)), ~u_input.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(func_2(false))))), ~(~(~vec2<u32>(u_input.d, 21139u))), Struct_1(vec3<u32>(u_input.b.x, 26502u, u_input.b.x) >> (select(vec3<u32>(u_input.b.x, 1u, u_input.d), vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), true) % vec3<u32>(32u)))), -vec4<i32>(~(~u_input.a), ~select(1i, -5559i, false), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, 1i), -vec3<i32>(-3222i, u_input.a, u_input.c)), u_input.e));
    var var_1 = Struct_2(u_input.b, Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), reverseBits(vec3<u32>(60680u, u_input.b.x, u_input.d)) ^ vec3<u32>(4294967295u, u_input.b.x, 17470u), ~firstLeadingBit(vec3<u32>(1u, u_input.b.x, 50746u)))));
    let var_2 = Struct_2(vec2<u32>(u_input.d, u_input.d), Struct_1(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(var_1.b.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a.x, u_input.b.x, var_1.a.x, 6304u), vec4<u32>(u_input.d, u_input.b.x, u_input.d, u_input.d))), _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x & 34146u), _wgslsmith_dot_vec3_u32(~var_1.b.a, vec3<u32>(var_1.a.x, var_1.b.a.x, 1u)))));
    let var_3 = -936f;
    let var_4 = Struct_3(Struct_1(select(vec3<u32>(~var_1.a.x, var_2.a.x, ~var_1.a.x), ~vec3<u32>(11820u, 54330u, var_2.a.x), false)), !(!any(vec2<bool>(true, true))), ~_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(13600u, var_2.a.x, var_1.b.a.x, 15102u)), abs(vec4<u32>(1u, var_2.a.x, u_input.b.x, var_2.b.a.x))));
    let var_5 = any(!(!select(vec3<bool>(false, var_4.b, false), vec3<bool>(var_4.b, var_4.b, var_4.b), var_4.b))) | !(!(any(vec4<bool>(true, true, true, var_4.b)) | var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(515f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-549f + var_3), 1030f, _wgslsmith_f_op_f32(-var_3)) + vec3<f32>(_wgslsmith_f_op_f32(min(var_3, var_3)), _wgslsmith_div_f32(var_3, var_3), _wgslsmith_f_op_f32(var_3 * var_3))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, var_3)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-var_3))), var_3, var_3))), ~select(~(~var_4.c), min(~var_4.c, ~var_4.c), !(1340f >= var_3)), vec4<u32>(abs(_wgslsmith_mult_u32(var_1.a.x | 4294967295u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_2.b.a.x), var_1.b.a.zx), select(~min(var_1.a.x, var_1.b.a.x), u_input.d, -9312i > -var_0.x), (_wgslsmith_clamp_u32(var_4.c.x, var_1.a.x, 25340u) >> (1u % 32u)) & min(countOneBits(var_4.a.a.x), _wgslsmith_sub_u32(var_2.a.x, 23249u))));
}

