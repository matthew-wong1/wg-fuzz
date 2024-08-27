struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_5(any(vec4<bool>(true, any(vec3<bool>(false, false, true)) && false, u_input.a <= countOneBits(u_input.a), _wgslsmith_mod_i32(2147483647i, arg_0) <= -2147483647i)), u_input.e.wzw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, 487f, -885f, 726f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, -342f, -299f, 1165f) - vec4<f32>(-612f, -1296f, -1000f, -1263f)), vec4<bool>(true, true, true, true))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, -105f, 1200f, -480f) * vec4<f32>(-349f, -1142f, 2087f, -937f))), vec4<f32>(928f, -724f, -1574f, _wgslsmith_f_op_f32(f32(-1f) * -642f)), select(true, true, true)))), _wgslsmith_sub_u32(reverseBits(u_input.a) << (12008u % 32u), ~17574u), firstLeadingBit(u_input.e));
    let var_1 = false;
    let var_2 = Struct_2(vec3<i32>(1i, 2147483647i << (_wgslsmith_mod_u32(21509u, 1u) % 32u), _wgslsmith_mult_i32(var_0.e.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1081f, -227f, _wgslsmith_f_op_f32(sign(-1007f))), var_0.c.zyz)), ~(~(~var_0.d)), _wgslsmith_add_u32(var_0.d, ~1u), var_0.c.x, !vec2<bool>(var_0.a, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_0.c.wzw, vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(floor(var_0.c.x)))))), Struct_1(var_0.c.xxw, countOneBits(firstLeadingBit(_wgslsmith_mod_u32(var_0.d, 15185u))), 46652u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x))))), select(vec2<bool>(false, var_1), select(select(vec2<bool>(false, true), vec2<bool>(false, var_0.a), var_0.a), !vec2<bool>(var_1, true), !vec2<bool>(var_1, true)), !vec2<bool>(var_1, var_1))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(ceil(-1159f)), -1000f)), ~(~(~var_0.d)), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(var_0.d, 0u, 4294967295u, 2305u), vec4<u32>(42408u, var_0.d, 1u, 4294967295u)), ~(~vec4<u32>(var_0.d, u_input.a, 103323u, u_input.a))), var_0.c.x, vec2<bool>(true, true)));
    let var_3 = vec2<u32>(var_0.d, ~0u);
    var var_4 = vec4<bool>(any(var_2.b.e), true, 2411f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-604f, -1692f)), var_0.c.x), var_0.a);
    return var_4.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    var var_0 = !(!vec2<bool>(false, arg_2 && arg_2));
    var_0 = !select(!vec2<bool>(-821f != arg_0.x, arg_2), !vec2<bool>(all(vec3<bool>(var_0.x, true, false)), func_3(u_input.c)), !all(select(vec3<bool>(false, arg_2, false), vec3<bool>(var_0.x, arg_2, var_0.x), var_0.x)));
    var_0 = vec2<bool>(true, select(arg_2, var_0.x, arg_2));
    var_0 = !(!vec2<bool>((u_input.a & 1u) <= u_input.a, all(!vec3<bool>(var_0.x, true, var_0.x))));
    let var_1 = vec4<bool>(true, arg_2, any(vec2<bool>(~u_input.e.x > u_input.e.x, true)), !(2147483647i < _wgslsmith_sub_i32(u_input.b.x, -u_input.c)));
    return _wgslsmith_f_op_f32(sign(arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.d.d))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2178f, arg_0.d, arg_0.a.x, arg_0.d), vec4<f32>(arg_0.a.x, arg_0.d, 200f, 842f), vec4<bool>(arg_1.b.e.x, true, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1600f, -127f, 1000f, arg_1.e.a.x))), ~(~vec2<u32>(1u, 0u)), arg_1.d.e.x)), !any(vec2<bool>(true, true)))));
    let var_1 = arg_0.e.x & arg_0.e.x;
    var var_2 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(33748u, u_input.a) << ((vec2<u32>(arg_0.b, arg_0.b) & vec2<u32>(arg_0.b, 1u)) % vec2<u32>(32u)), vec2<u32>(reverseBits(31802u), ~arg_1.d.b), vec2<u32>(arg_0.c, ~arg_1.d.b)) << (~(~min(_wgslsmith_add_vec2_u32(vec2<u32>(34844u, arg_1.b.b), vec2<u32>(0u, 1u)), vec2<u32>(arg_0.c, arg_1.d.c))) % vec2<u32>(32u));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2907f));
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -213f), Struct_2(_wgslsmith_add_vec3_i32(-min(vec3<i32>(0i, u_input.b.x, u_input.c), arg_1.a), u_input.e.wzz), Struct_1(arg_0.a, _wgslsmith_mod_u32(arg_1.d.c, 62868u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 53927u), ~arg_0.c), arg_0.a.x, !vec2<bool>(var_1, true)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c.x, -1000f, arg_1.d.a.x), vec3<f32>(1620f, var_0.x, _wgslsmith_f_op_f32(890f - -1125f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1231f, arg_0.a.x, arg_1.d.a.x))) * _wgslsmith_f_op_vec3_f32(-arg_0.a)), ~var_2.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, arg_0.b, var_2.x, 4294967295u), vec4<u32>(0u, 43130u, 0u, arg_1.d.b))), -509f, select(arg_1.d.e, vec2<bool>(false, true), false)), arg_1.e), -vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 41627i), vec2<i32>(u_input.e.x, 2147483647i), vec2<i32>(29851i, 2147483647i)), arg_1.a.yz), ~arg_1.a.x, _wgslsmith_sub_i32(~(-15070i), max(u_input.d.x, 2147483647i)), -2918i));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = countOneBits(~(-1i));
    var_0 = arg_0.b.a.x;
    var var_1 = Struct_4(~_wgslsmith_mult_u32(~_wgslsmith_mod_u32(0u, 1u), 1u), arg_0.b.d.c, Struct_3(632f, arg_0.b, u_input.e ^ -countOneBits(u_input.e)), Struct_3(705f, arg_0.b, u_input.e));
    let var_2 = ~((4294967295u >> ((~32633u | _wgslsmith_mod_u32(1u, var_1.a)) % 32u)) & ~1u);
    let var_3 = var_1.c.a;
    return arg_0.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> Struct_4 {
    let var_0 = func_5(func_4(Struct_1(vec3<f32>(228f, _wgslsmith_f_op_f32(round(-422f)), _wgslsmith_f_op_f32(func_2(vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x), vec2<u32>(u_input.a, u_input.a), false))), select(arg_2, u_input.a, true) << ((u_input.a >> (arg_2 % 32u)) % 32u), _wgslsmith_div_u32(4294967295u, select(arg_2, 580u, false)), 227f, vec2<bool>(true, false)), Struct_2(vec3<i32>(countOneBits(u_input.b.x), ~arg_1, u_input.e.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -386f, -1000f) - vec3<f32>(843f, 1319f, arg_0.x)), u_input.a, select(0u, arg_2, false), _wgslsmith_div_f32(-698f, arg_0.x), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1627f, 962f, arg_0.x))), Struct_1(vec3<f32>(554f, 905f, 926f), 1u, 48707u, _wgslsmith_f_op_f32(arg_0.x - 1377f), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), 4294967295u ^ arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 44624u), vec2<u32>(arg_2, u_input.a)), _wgslsmith_f_op_f32(654f - arg_0.x), vec2<bool>(true, false)))), min(countOneBits(vec2<u32>(arg_2, _wgslsmith_div_u32(0u, 1u))), ~select(~vec2<u32>(87629u, arg_2), _wgslsmith_div_vec2_u32(vec2<u32>(54374u, 1u), vec2<u32>(arg_2, 4294967295u)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(min(0u, 7941u), ~arg_2, 31700u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 40353u, 11184u, 0u), vec4<u32>(0u, 19476u, 3909u, arg_2))), vec4<u32>(2825u, 4294967295u, 1u, 351u) | select(vec4<u32>(u_input.a, arg_2, 13169u, 1u), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), false)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(max(23288u, arg_2), 30724u), ~(~0u), 178u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(199f * arg_0.x), var_0.c.x, func_5(func_4(func_5(func_4(var_0.b, Struct_2(vec3<i32>(u_input.e.x, 24073i, u_input.e.x), var_0.b, vec3<f32>(-1791f, 1000f, arg_0.x), Struct_1(vec3<f32>(-1000f, var_0.d.d, var_0.b.d), arg_2, arg_2, -1244f, var_0.e.e), var_0.b)), vec2<u32>(u_input.a, arg_2) ^ vec2<u32>(arg_2, 4294967295u), ~vec4<u32>(arg_2, arg_2, u_input.a, var_0.b.c)).b, func_4(Struct_1(var_0.c, 43539u, arg_2, arg_0.x, vec2<bool>(true, var_0.b.e.x)), var_0).b), select(vec2<u32>(1u, 11483u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(4294967295u, u_input.a)), var_0.b.e) ^ min(reverseBits(vec2<u32>(u_input.a, 1u)), vec2<u32>(var_0.d.b, 23337u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, var_0.d.b, 1u, u_input.a) ^ vec4<u32>(4294967295u, 1954u, 1u, 4652u)), vec4<u32>(var_0.b.c, _wgslsmith_sub_u32(u_input.a, 35494u), 0u, ~u_input.a), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 37132u, u_input.a, 19092u), vec4<u32>(var_0.d.c, 1u, u_input.a, arg_2)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 10046u, 1u, arg_2), vec4<u32>(0u, var_0.d.c, 3969u, var_0.d.c))))).d.a.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-887f, var_1.x))), _wgslsmith_div_f32(-332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.a.x)))));
    let var_3 = func_4(var_0.b, func_5(func_4(Struct_1(var_0.e.a, _wgslsmith_div_u32(arg_2, 22474u), arg_2, 833f, select(vec2<bool>(var_0.d.e.x, var_0.b.e.x), var_0.d.e, var_0.b.e.x)), func_5(Struct_3(var_1.x, Struct_2(var_0.a, var_0.e, var_0.d.a, Struct_1(var_0.e.a, 71987u, arg_2, -910f, vec2<bool>(true, false)), Struct_1(vec3<f32>(-545f, arg_0.x, var_1.x), 95779u, 0u, var_2.x, var_0.d.e)), vec4<i32>(var_0.a.x, 20250i, 0i, -23626i)), reverseBits(vec2<u32>(u_input.a, u_input.a)), vec4<u32>(0u, arg_2, 20409u, 32054u))), vec2<u32>(var_0.b.b, ~1u) & ~vec2<u32>(var_0.b.b, var_0.d.b), vec4<u32>(arg_2, u_input.a, 4294967295u, arg_2)));
    var var_4 = true;
    return Struct_4(4422u, 1u, Struct_3(arg_0.x, var_0, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, u_input.e.x, 1523i, u_input.c) | vec4<i32>(1i, arg_1, var_0.a.x, 22533i), u_input.e), ~reverseBits(u_input.e), -func_4(var_3.b.b, var_0).c)), func_4(func_4(Struct_1(vec3<f32>(var_3.a, 2204f, 798f), 73051u, 4294967295u, _wgslsmith_f_op_f32(var_2.x * 829f), var_3.b.d.e), Struct_2(u_input.e.zxy, func_5(var_3, vec2<u32>(1u, var_0.e.c), vec4<u32>(u_input.a, var_3.b.d.b, arg_2, 4294967295u)).e, _wgslsmith_f_op_vec3_f32(step(var_3.b.d.a, var_0.c)), func_4(var_0.b, Struct_2(vec3<i32>(var_3.c.x, u_input.c, 18677i), var_3.b.d, vec3<f32>(var_1.x, var_2.x, -704f), Struct_1(var_0.c, var_3.b.e.b, 4294967295u, var_2.x, var_0.b.e), var_3.b.d)).b.e, var_0.b)).b.b, func_4(var_0.d, var_0).b));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(arg_0.c.b.e.a.xz, vec2<f32>(arg_0.c.b.b.a.x, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.d.b.d.a.x, 1940f), vec2<f32>(arg_0.c.a, arg_0.c.a)), arg_0.c.b.a.x, 56429u).d.b.b.d), arg_2.c.b.b.e.x));
    let var_1 = arg_2.c.b;
    var var_2 = vec4<i32>(2147483647i & min(_wgslsmith_add_i32(~var_1.a.x, var_1.a.x), _wgslsmith_clamp_i32(-var_1.a.x, 2147483647i, -arg_0.d.b.a.x)), var_1.a.x, -2147483647i, 2147483647i);
    var_2 = vec4<i32>(arg_0.d.c.x, reverseBits(_wgslsmith_add_i32(-var_1.a.x, 16433i)), _wgslsmith_dot_vec3_i32(u_input.e.wxy, _wgslsmith_mod_vec3_i32(~func_4(Struct_1(arg_0.c.b.d.a, arg_1, 65235u, -1420f, arg_2.d.b.d.e), arg_2.d.b).b.a, var_2.yww)), 6406i);
    var var_3 = arg_0.d.b.e.e.x;
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~(~u_input.a)) | firstTrailingBit(countOneBits(4294967295u)), 1u);
    var_0 = vec2<u32>(max(~2920u, min(firstTrailingBit(~1u), u_input.a)), ~u_input.a);
    let var_1 = Struct_4(_wgslsmith_mult_u32(var_0.x, 51805u), var_0.x, func_6(func_1(vec2<f32>(573f, _wgslsmith_f_op_f32(951f - 1405f)), (u_input.d.x ^ u_input.d.x) & u_input.d.x, var_0.x), u_input.a, func_1(vec2<f32>(_wgslsmith_div_f32(-339f, -284f), -123f), -reverseBits(-14875i), 49864u)), func_6(Struct_4(~func_5(Struct_3(-652f, Struct_2(u_input.e.yzw, Struct_1(vec3<f32>(373f, 571f, -119f), 43018u, var_0.x, -136f, vec2<bool>(true, true)), vec3<f32>(1868f, 532f, 185f), Struct_1(vec3<f32>(-1446f, -377f, 1111f), u_input.a, 87094u, 1000f, vec2<bool>(true, false)), Struct_1(vec3<f32>(971f, 1656f, -965f), u_input.a, var_0.x, -855f, vec2<bool>(true, true))), u_input.e), vec2<u32>(1u, var_0.x), vec4<u32>(var_0.x, 32601u, u_input.a, 0u)).e.c, reverseBits(_wgslsmith_mult_u32(var_0.x, var_0.x)), Struct_3(_wgslsmith_f_op_f32(453f * 1004f), func_4(Struct_1(vec3<f32>(-819f, 480f, 242f), u_input.a, u_input.a, -528f, vec2<bool>(true, true)), Struct_2(u_input.e.xxw, Struct_1(vec3<f32>(179f, 1462f, 228f), 1u, var_0.x, 513f, vec2<bool>(true, true)), vec3<f32>(-1000f, 504f, -245f), Struct_1(vec3<f32>(1459f, 1000f, 926f), 0u, u_input.a, -1034f, vec2<bool>(false, false)), Struct_1(vec3<f32>(1449f, 205f, -1028f), 0u, var_0.x, -163f, vec2<bool>(false, false)))).b, vec4<i32>(12298i, u_input.e.x, u_input.e.x, u_input.d.x)), func_6(Struct_4(0u, var_0.x, Struct_3(714f, Struct_2(u_input.e.xxy, Struct_1(vec3<f32>(-537f, -847f, -483f), var_0.x, var_0.x, -2614f, vec2<bool>(false, false)), vec3<f32>(-1092f, -833f, 1065f), Struct_1(vec3<f32>(824f, -2096f, 913f), u_input.a, u_input.a, -486f, vec2<bool>(false, false)), Struct_1(vec3<f32>(-425f, 1330f, 422f), var_0.x, u_input.a, -293f, vec2<bool>(false, true))), u_input.e), Struct_3(1450f, Struct_2(u_input.e.xwz, Struct_1(vec3<f32>(-2341f, -924f, -686f), 4294967295u, u_input.a, -1824f, vec2<bool>(false, false)), vec3<f32>(1377f, -1544f, 1539f), Struct_1(vec3<f32>(-1434f, -1000f, 828f), 39795u, 29530u, 2352f, vec2<bool>(false, true)), Struct_1(vec3<f32>(352f, -1351f, 459f), 4294967295u, 47293u, -2460f, vec2<bool>(true, false))), u_input.e)), firstTrailingBit(0u), func_1(vec2<f32>(155f, 1763f), -1i, u_input.a))), u_input.a, Struct_4(u_input.a, ~var_0.x, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1425f, 1174f) * vec2<f32>(-1695f, -1860f)), select(u_input.e.x, u_input.b.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(53675u, 60505u, var_0.x, u_input.a), vec4<u32>(13852u, 4294967295u, 1u, u_input.a))).c, func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-838f, 1749f), vec2<f32>(-724f, 1054f))), -33089i, select(4294967295u, 1u, true)).c)));
    var_0 = vec2<u32>(~_wgslsmith_sub_u32(func_4(Struct_1(var_1.d.b.d.a, var_0.x, var_1.d.b.e.c, -991f, var_1.c.b.d.e), func_1(vec2<f32>(1990f, var_1.d.a), -65063i, 1999u).c.b).b.d.c, ~45553u), u_input.a << (~abs(var_0.x) % 32u));
    let var_2 = var_1.c.a;
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b.d.a, func_1(func_5(var_1.d, ~(vec2<u32>(var_0.x, var_1.b) & vec2<u32>(33954u, 18510u)), ~abs(vec4<u32>(41864u, 6621u, var_1.d.b.e.c, var_0.x))).d.a.yz, firstLeadingBit(2147483647i), 92033u).c.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.b.b.a.x, 778f, var_1.c.b.b.a.x), var_1.d.b.e.a, var_1.c.b.b.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.a))), 562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f - -1467f)))));
}

