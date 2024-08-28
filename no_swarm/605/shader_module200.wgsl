struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_3(~(-((vec4<i32>(arg_1, 40144i, -1i, arg_1) | vec4<i32>(u_input.a, arg_1, 19887i, u_input.a)) & vec4<i32>(0i, arg_1, -38360i, 2147483647i))), any(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true))), Struct_2(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(96094u, 21120u, 107397u), vec3<u32>(1u, 1u, 8372u), vec3<u32>(11333u, 4294967295u, 19614u)), ~vec3<u32>(38878u, 36135u, 28839u)), ~abs(firstLeadingBit(vec4<u32>(8133u, 0u, 4294967295u, 58226u))), _wgslsmith_f_op_f32(-695f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) * _wgslsmith_f_op_f32(trunc(arg_0.x))))), ~(-vec3<i32>(2147483647i, arg_1, -arg_1)), any(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(!(var_0.b || (1u <= var_0.c.b.x)), !vec3<bool>(var_0.b, var_0.b, !var_0.e), any(vec3<bool>(var_0.b, false, var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(550f + var_0.c.c)));
    let var_2 = var_0.a.zy;
    var var_3 = -117f;
    let var_4 = Struct_1(any(select(select(var_1.b, select(vec3<bool>(true, true, true), vec3<bool>(var_0.e, var_1.a, true), var_0.e), false), var_1.b, !select(vec3<bool>(var_1.a, var_1.c, false), var_1.b, var_0.e))), select(select(select(var_1.b, var_1.b, vec3<bool>(true, var_1.c, false)), var_1.b, !all(vec3<bool>(var_0.e, var_0.e, var_0.b))), select(!(!var_1.b), var_1.b, var_0.e), select(vec3<bool>(var_0.e, var_1.b.x, false), vec3<bool>(var_1.a, var_0.b || true, all(var_1.b.zy)), select(var_1.a, all(vec4<bool>(var_1.a, false, true, false)), var_0.b || false))), select(true, any(select(vec4<bool>(false, true, var_1.a, var_0.b), vec4<bool>(var_1.b.x, var_1.c, false, var_0.b), var_0.e)), var_0.e) & var_0.e, arg_0.x);
    return !vec4<bool>(any(!vec3<bool>(false, var_0.e, true)), true, true, select(!all(vec4<bool>(var_1.a, true, false, var_1.c)), any(vec4<bool>(true, var_4.b.x, true, true)), true));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> vec3<bool> {
    var var_0 = select(true, !arg_2, true);
    var var_1 = max(54965u, 1u);
    var var_2 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.yxy + arg_1.wyw)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, 289f, 274f), vec3<f32>(arg_1.x, 960f, arg_1.x))))), u_input.a);
    var_1 = max(~abs(0u), _wgslsmith_add_u32(~38803u, _wgslsmith_add_u32(~(~0u), 1u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(floor(arg_1.x)))));
    return var_2.xzy;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = any(select(func_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(-783f)), 136f, 1183f), u_input.a).yz, !arg_0.b.yx, vec2<bool>(true, true)));
    var_0 = arg_0.b.x;
    let var_1 = Struct_3(~(~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 63871u, 59854u, 0u) % vec4<u32>(32u)))) ^ (~select(vec4<i32>(-1i, 2147483647i, -36039i, 1i), vec4<i32>(-1i, u_input.a, 0i, 13500i), false) ^ -min(vec4<i32>(-1i, -1131i, 14465i, 7977i), vec4<i32>(2806i, u_input.a, u_input.a, -1i))), true, Struct_2(select(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 2233u), func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-480f, arg_0.d, arg_0.d), vec3<f32>(arg_0.d, -338f, arg_0.d))), u_input.a).x), vec4<u32>(1u, 1u, 1u, 1u), 840f), firstTrailingBit(vec3<i32>(reverseBits(u_input.a), -22527i, -53394i) ^ (vec3<i32>(u_input.a, 32295i, 20584i) | vec3<i32>(1i, 1i, 1i))), all(vec3<bool>(true, false, arg_0.b.x)));
    let var_2 = vec3<bool>(!func_2(-236f, vec4<f32>(1223f, _wgslsmith_f_op_f32(sign(arg_0.d)), _wgslsmith_f_op_f32(trunc(-1632f)), arg_0.d), false).x, arg_0.a, false);
    var var_3 = Struct_3(reverseBits(countOneBits(abs(vec4<i32>(31807i, 1i, u_input.a, 2147483647i)))), false, Struct_2(~((vec3<u32>(var_1.c.b.x, var_1.c.b.x, 0u) & var_1.c.a) << (vec3<u32>(0u, 55580u, 37595u) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(~var_1.c.b.x, var_1.c.a.x), var_1.c.a.x ^ (var_1.c.b.x << (0u % 32u)), 4294967295u, 4294967295u), _wgslsmith_f_op_f32(sign(-312f))), var_1.a.wyz, !all(!func_2(var_1.c.c, vec4<f32>(-1741f, 2090f, var_1.c.c, -1000f), true)));
    return Struct_3(~firstLeadingBit(vec4<i32>(var_3.a.x, min(10326i, 1i), var_3.d.x, countOneBits(var_1.d.x))), !arg_0.a, var_3.c, vec3<i32>(-((20669i << (var_1.c.a.x % 32u)) << (~var_3.c.b.x % 32u)), _wgslsmith_clamp_i32(25331i, u_input.a << (_wgslsmith_dot_vec3_u32(var_3.c.b.zyz, vec3<u32>(var_1.c.b.x, var_3.c.b.x, 1u)) % 32u), ~(i32(-1i) * -46807i)), abs(var_1.a.x)), arg_0.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool, arg_3: vec2<u32>) -> f32 {
    let var_0 = func_4(Struct_1(true, vec3<bool>(any(func_2(-804f, vec4<f32>(arg_0.a.x, arg_1.b.c.c, -621f, arg_1.a.x), arg_0.b.e)), all(select(vec4<bool>(false, false, arg_1.b.e, true), vec4<bool>(arg_1.b.b, arg_2, arg_0.b.e, true), vec4<bool>(arg_0.b.e, arg_0.b.b, true, false))), arg_0.b.e), false, arg_0.a.x));
    var var_1 = vec4<i32>(var_0.d.x, -(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.d.x, u_input.a), var_0.d.zx))), _wgslsmith_dot_vec2_i32(abs(~_wgslsmith_div_vec2_i32(arg_0.b.a.zy, vec2<i32>(var_0.d.x, 15095i))), _wgslsmith_add_vec2_i32(~reverseBits(arg_0.b.a.xz), arg_1.b.d.yx)), _wgslsmith_mult_i32(u_input.a, -1i));
    var_1 = vec4<i32>(arg_0.b.d.x, var_1.x, -62082i, 2147483647i) | -arg_1.b.a;
    var_1 = var_0.a;
    var_1 = var_0.a & vec4<i32>(var_1.x ^ -26792i, u_input.a, _wgslsmith_mod_i32(firstLeadingBit(u_input.a), ~var_1.x) | arg_0.b.d.x, reverseBits(~(~26594i)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) * _wgslsmith_f_op_f32(sign(2099f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-241f)), -1977f)), true)))), -609f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1222f, 2014f))) + _wgslsmith_f_op_f32(func_1(Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, 540f)), Struct_3(vec4<i32>(u_input.a, 18088i, 0i, -2147483647i), true, Struct_2(vec3<u32>(17549u, 24177u, 0u), vec4<u32>(1u, 44307u, 71195u, 4294967295u), 561f), vec3<i32>(u_input.a, u_input.a, u_input.a), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(27361u, 47313u, 0u), vec3<u32>(1u, 80380u, 13515u), vec3<u32>(67701u, 10021u, 25526u))), Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-777f, 623f))), Struct_3(vec4<i32>(27878i, u_input.a, 27206i, -44198i), false, Struct_2(vec3<u32>(1u, 14855u, 0u), vec4<u32>(18005u, 1u, 10926u, 4294967295u), 161f), vec3<i32>(u_input.a, u_input.a, -23186i), false), vec3<u32>(1417u, 17539u, 44265u)), true, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(28145u, 1u), vec2<u32>(0u, 1u)), 0u)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-455f, 353f)), _wgslsmith_f_op_f32(trunc(1425f)), any(vec3<bool>(true, false, false)))))))));
    var var_1 = ~max(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, 24200i, 1i, u_input.a) << (vec4<u32>(4294967295u, 0u, 0u, 1u) % vec4<u32>(32u))), (vec4<i32>(-32632i, u_input.a, -15265i, u_input.a) | vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(87314u, 1u, 1u, 4294967295u) % vec4<u32>(32u))), ~reverseBits(-68989i) & -u_input.a);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(0i, u_input.a), ~abs(u_input.a), u_input.a, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -48799i), vec3<i32>(1i, u_input.a, 2147483647i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 102870u), vec2<u32>(13147u, 38292u)) % 32u)) << (52592u % 32u)), _wgslsmith_mult_vec4_i32(func_4(Struct_1(func_2(-2762f, vec4<f32>(-270f, -456f, 1120f, 816f), false).x, vec3<bool>(true, true, true), true, _wgslsmith_f_op_f32(499f - 657f))).a, firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, 0i, u_input.a, -1i), vec4<i32>(u_input.a, 21682i, -254i, -15854i) & vec4<i32>(2147483647i, -40750i, -1i, u_input.a)))));
    var var_3 = Struct_3(-vec4<i32>(-2147483647i, i32(-1i) * -u_input.a, -u_input.a, -1i), all(vec3<bool>(true, true, true)), Struct_2(vec3<u32>(1u, 1u, 1u), vec4<u32>(~4294967295u << (1u % 32u), _wgslsmith_clamp_u32(6208u, 1u, 6287u) >> (_wgslsmith_sub_u32(2740u, 1u) % 32u), _wgslsmith_mult_u32(~0u, 0u), select(1u, 1u, true)), _wgslsmith_f_op_f32(abs(938f))), vec3<i32>(i32(-1i) * -2147483647i, u_input.a, 5737i) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, 0i), -u_input.a, -u_input.a), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), ~u_input.a)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1046f + -478f))) + 1115f), vec4<f32>(_wgslsmith_f_op_f32(ceil(-596f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1398f + 899f)), func_4(Struct_1(false, vec3<bool>(true, false, true), false, -1333f)).c.c, 1f), true).x);
    var_3 = Struct_3(-abs(vec4<i32>(-1i, u_input.a >> (11255u % 32u), _wgslsmith_add_i32(var_3.a.x, u_input.a), 15267i)), !var_3.e, func_4(Struct_1(func_2(_wgslsmith_f_op_f32(var_3.c.c + 2122f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, 702f, var_3.c.c, 380f)), var_3.e).x, vec3<bool>(!var_3.b, var_3.e, !var_3.e), !any(vec4<bool>(var_3.b, var_3.e, var_3.b, true)), _wgslsmith_div_f32(var_3.c.c, var_3.c.c))).c, -firstLeadingBit(var_3.a.ywx), !var_3.b);
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(278f, var_3.c.c) * vec2<f32>(-1210f, var_3.c.c))))) * vec2<f32>(774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.c)))), func_4(Struct_1(var_3.e, func_2(_wgslsmith_f_op_f32(-var_3.c.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.c, var_3.c.c, 1000f, -969f)), true), 1436i <= (var_3.a.x << (var_3.c.b.x % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(421f * var_3.c.c), _wgslsmith_f_op_f32(-var_3.c.c), all(vec2<bool>(var_3.b, var_3.e)))))), vec3<u32>(var_3.c.b.x, 1u, ~var_3.c.b.x));
    var_2 = (-1i | firstTrailingBit(0i)) << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_3.c.a.x), var_4.b.c.c, _wgslsmith_mod_vec2_i32(vec2<i32>(max(53583i, ~37309i), var_3.a.x), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_3.a.x, 1i), _wgslsmith_mult_i32(u_input.a, var_4.b.d.x)), u_input.a)), -339f, vec4<i32>(u_input.a, ~2147483647i, -2686i, 1i));
}

