struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = !select(arg_0.c, vec2<bool>(any(arg_0.c), arg_2.c.b), !any(vec2<bool>(false, true)));
    let var_1 = vec2<i32>(~_wgslsmith_mult_i32(arg_2.c.c, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) | abs(19796i)), arg_2.c.c);
    let var_2 = u_input.e;
    var var_3 = Struct_1(-1113f, true, firstTrailingBit(2147483647i), arg_2.c.d);
    var var_4 = ~countOneBits(vec4<i32>(max(-1i << (arg_2.b % 32u), arg_0.a.c), -max(56267i, -39831i), 1i, _wgslsmith_mod_i32(var_1.x, var_3.c)));
    return u_input.a;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_5(Struct_4(var_0.a, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, 4294967295u), u_input.e.xx)), arg_0.a.c), arg_0.b, arg_0.c, ~min(~countOneBits(vec4<i32>(-2147483647i, u_input.a.x, -32860i, -1i)), firstLeadingBit(vec4<i32>(7223i, 0i, arg_0.c.a.c, 20019i))));
    var var_2 = 1i;
    var var_3 = vec3<i32>(~var_0.c.c, abs(-2147483647i), 1i);
    var var_4 = 18063u;
    return _wgslsmith_f_op_f32(-var_1.b.a.a);
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_1(arg_0.x, true, ~reverseBits(-8494i), abs(countOneBits(~vec4<u32>(0u, u_input.c, u_input.c, 56228u))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 708f)) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.a.zy) ^ -vec2<i32>(-1i, var_0.c), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_0.c), u_input.a.zz))) == 3430i, -40572i, firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 26026u, 0u, var_0.d.x), ~vec4<u32>(77976u, 86866u, var_0.d.x, u_input.c))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_4(vec2<f32>(arg_0.x, -779f), 12771u, Struct_1(var_0.a, var_0.b, var_0.c, vec4<u32>(u_input.e.x, u_input.c, 4294967295u, 15156u))), Struct_2(Struct_1(var_0.a, true, u_input.a.x, vec4<u32>(var_0.d.x, u_input.c, 31448u, 29755u)), Struct_1(-224f, true, u_input.a.x, vec4<u32>(4294967295u, 0u, var_0.d.x, 59343u)), vec2<bool>(var_0.b, false), 4294967295u, arg_0.x), Struct_3(Struct_1(-891f, true, 4443i, var_0.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c, 0i, u_input.d.x, u_input.b), vec4<i32>(2147483647i, 15726i, var_0.c, -52641i))), func_3(Struct_2(Struct_1(var_0.a, var_0.b, u_input.a.x, vec4<u32>(14906u, u_input.e.x, var_0.d.x, 41706u)), Struct_1(arg_0.x, var_0.b, var_0.c, vec4<u32>(19941u, 15707u, 10378u, 56711u)), vec2<bool>(var_0.b, false), 1u, arg_0.x), var_0.d.x, Struct_4(vec2<f32>(arg_0.x, -1118f), u_input.e.x, Struct_1(var_0.a, var_0.b, -2147483647i, var_0.d))))) + -398f), var_0.b, _wgslsmith_mult_i32(i32(-1i) * -84293i, 1i), ~vec4<u32>(u_input.c, var_0.d.x, 61088u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_0.d.x), var_0.d.wzz), max(abs(2419u), 4294967295u)));
    let var_1 = _wgslsmith_mult_i32(u_input.d.x, ~(var_0.c & -6270i));
    return !(!(-func_3(Struct_2(Struct_1(arg_0.x, var_0.b, var_0.c, var_0.d), Struct_1(var_0.a, true, u_input.a.x, vec4<u32>(25197u, 0u, var_0.d.x, var_0.d.x)), vec2<bool>(true, true), var_0.d.x, -458f), 65477u, Struct_4(arg_0.wx, 44548u, Struct_1(arg_0.x, var_0.b, var_1, var_0.d))).x >= (~var_1 | ~1i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = arg_0.zw;
    var_0 = abs(vec2<i32>(arg_1.c.c, ~(~arg_1.c.c)) ^ vec2<i32>(~(-16556i), _wgslsmith_add_i32(max(u_input.d.x, 0i), 1i)));
    var_0 = ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_0.x, arg_1.c.c), arg_0.zw, !vec2<bool>(arg_1.c.b, arg_1.c.b)) << (_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.e.x, u_input.c), vec2<u32>(34544u, u_input.e.x), vec2<bool>(arg_1.c.b, false)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b, u_input.e.x), vec2<u32>(4294967295u, 30064u))) % vec2<u32>(32u)), vec2<i32>(-_wgslsmith_mult_i32(var_0.x, -30875i), arg_0.x));
    var_0 = min(-reverseBits(u_input.a.yz) ^ _wgslsmith_sub_vec2_i32(u_input.a.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_1.c.c), vec2<i32>(arg_1.c.c, 0i))), vec2<i32>(_wgslsmith_div_i32(arg_1.c.c, max(-1i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(arg_1.c.c, -54172i)))), select(func_3(Struct_2(arg_1.c, Struct_1(-1215f, arg_1.c.b, 16656i, arg_1.c.d), vec2<bool>(true, false), 5762u, arg_1.c.a), select(arg_1.b, 77316u, true), Struct_4(arg_1.a, 44465u, arg_1.c)).x, 753i, !arg_1.c.b)));
    var var_1 = Struct_2(arg_1.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -1018f)))), arg_1.c.d.x > 4294967295u, arg_1.c.c, arg_1.c.d), select(vec2<bool>(any(vec4<bool>(true, false, arg_1.c.b, arg_1.c.b)) && false, all(!vec2<bool>(arg_1.c.b, false))), vec2<bool>(any(vec3<bool>(true, true, arg_1.c.b)), false), vec2<bool>(true, true)), arg_1.c.d.x, _wgslsmith_f_op_f32(trunc(arg_1.a.x)));
    return var_1.b;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_5(Struct_4(vec2<f32>(1000f, func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_1.c, arg_1.c, arg_2.a.c), vec4<i32>(u_input.d.x, arg_2.a.c, arg_1.c, arg_2.a.c)), Struct_4(vec2<f32>(arg_1.a, arg_2.a.a), 1u, arg_1)).a), arg_2.a.d.x, func_5(-vec4<i32>(6394i, 2147483647i, 1i, 13270i) >> (func_5(vec4<i32>(u_input.a.x, arg_1.c, 1i, arg_1.c), Struct_4(vec2<f32>(-1699f, arg_2.a.a), u_input.e.x, arg_2.a)).d % vec4<u32>(32u)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, arg_2.a.a)), 8419u, arg_2.a))), Struct_2(func_5(-vec4<i32>(u_input.a.x, 0i, u_input.b, 58235i), Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a, arg_2.a.a))), ~0u, func_5(vec4<i32>(46507i, 53888i, 20469i, arg_2.a.c), Struct_4(vec2<f32>(-299f, arg_2.a.a), arg_1.d.x, Struct_1(arg_2.a.a, false, 19507i, arg_1.d))))), func_5(~vec4<i32>(-23447i, -17294i, u_input.a.x, arg_1.c) & _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c, arg_2.a.c, arg_2.a.c, arg_1.c), vec4<i32>(0i, 11256i, arg_2.a.c, 2147483647i)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1590f)), reverseBits(u_input.e.x), func_5(vec4<i32>(arg_2.a.c, 7076i, arg_2.a.c, 2147483647i), Struct_4(vec2<f32>(arg_1.a, -830f), arg_1.d.x, arg_1)))), vec2<bool>(!arg_2.a.b, !(!arg_1.b)), select(_wgslsmith_clamp_u32(max(29446u, 1u), 22044u, ~arg_1.d.x), u_input.e.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a.a + 1415f), _wgslsmith_div_f32(arg_2.a.a, arg_1.a))), arg_1.a)), Struct_3(func_5(vec4<i32>(_wgslsmith_mod_i32(0i, -38130i), 1i, u_input.d.x ^ 1i, reverseBits(u_input.b)), Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.a.a, arg_1.a))), 4270u, func_5(vec4<i32>(arg_2.a.c, -2147483647i, arg_2.a.c, 4456i), Struct_4(vec2<f32>(arg_1.a, arg_2.a.a), 33460u, arg_1))))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(abs(vec4<i32>(u_input.d.x, arg_2.a.c, arg_2.a.c, arg_1.c))) >> ((arg_1.d ^ arg_2.a.d) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, max(-40564i, -1i), -424i, _wgslsmith_clamp_i32(arg_2.a.c, 49027i, -37809i)), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(11348i, arg_1.c, -1i, arg_1.c)), select(-vec4<i32>(2147483647i, 24933i, u_input.d.x, arg_1.c), vec4<i32>(arg_1.c, 1i, -26458i, u_input.b), true))));
    let var_1 = var_0.a;
    var var_2 = Struct_3(arg_1);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_4(Struct_5(var_0.a, Struct_2(arg_1, arg_2.a, arg_0, 4294967295u, var_0.c.a.a), arg_2, ~var_0.d), firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.d.wxy, u_input.a)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.c.a.b, false, var_2.a.b), select(vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(var_0.a.c.b, false, var_1.c.b, false), false))), -_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, var_2.a.c, var_0.d.x), ~u_input.a), var_1.c.d));
    var var_4 = true;
    return Struct_4(vec2<f32>(1939f, arg_1.a), arg_2.a.d.x & arg_1.d.x, func_5(vec4<i32>(~(-3343i) | var_3.a.c, var_0.d.x, reverseBits(-38138i), ~(~(-39640i))), var_0.a));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    let var_0 = func_6(vec2<bool>(true, false), func_5(vec4<i32>(arg_0, ~_wgslsmith_mod_i32(arg_0, arg_0), u_input.d.x, _wgslsmith_clamp_i32(firstLeadingBit(arg_0), -30850i, -60427i)), Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(730f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, -259f) - vec2<f32>(-1206f, arg_1)), func_2(vec4<f32>(368f, -238f, 255f, arg_1)))), _wgslsmith_div_u32(arg_2.x, ~arg_2.x), Struct_1(_wgslsmith_f_op_f32(max(1236f, 534f)), false, arg_0 & 0i, ~vec4<u32>(u_input.e.x, 18578u, 6804u, u_input.c)))), Struct_3(func_5(~vec4<i32>(u_input.b, u_input.a.x, 1i, 80668i) & abs(vec4<i32>(arg_0, 2147483647i, u_input.d.x, u_input.d.x)), Struct_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))), func_5(vec4<i32>(arg_0, arg_0, -8668i, 2147483647i), Struct_4(vec2<f32>(1814f, arg_1), u_input.c, Struct_1(arg_1, true, u_input.a.x, vec4<u32>(arg_2.x, arg_2.x, 0u, 0u)))).d.x, func_5(vec4<i32>(32274i, u_input.a.x, 0i, 2147483647i), Struct_4(vec2<f32>(-1284f, 856f), 4042u, Struct_1(arg_1, true, u_input.b, vec4<u32>(84589u, 4906u, 82611u, 87127u))))))));
    var var_1 = var_0.c.d;
    let var_2 = (vec4<i32>(24774i, ~max(55891i, u_input.b), u_input.d.x, 2147483647i) | countOneBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(47756i, arg_0, var_0.c.c, var_0.c.c), vec4<i32>(-1i, u_input.d.x, arg_0, var_0.c.c)))) >> (_wgslsmith_add_vec4_u32(reverseBits(~(~var_0.c.d)), vec4<u32>(26224u, 25798u, 52762u >> (~var_0.b % 32u), var_1.x)) % vec4<u32>(32u));
    let var_3 = ~min(~vec3<u32>(4294967295u, _wgslsmith_div_u32(2565u, 14948u), _wgslsmith_add_u32(var_1.x, 18363u)), firstLeadingBit(~vec3<u32>(u_input.c, 11817u, 4294967295u)));
    var_1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(20580u, var_0.c.d.x, var_0.b), var_3 >> (func_6(vec2<bool>(true, var_0.c.b), var_0.c, Struct_3(Struct_1(-1283f, true, 0i, var_0.c.d))).c.d.ywz % vec3<u32>(32u))), ~11802u), ~(~var_1.x), ~_wgslsmith_dot_vec4_u32(var_0.c.d, vec4<u32>(4294967295u, ~u_input.e.x, max(arg_2.x, var_0.c.d.x), 0u)), ~(~var_0.b ^ firstLeadingBit(var_1.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b, u_input.b, -24708i, 18906i << (max((33410u | u_input.e.x) >> (~28157u % 32u), u_input.e.x) % 32u));
    var_0 = ~vec4<i32>(abs(~reverseBits(1i)), u_input.d.x, ~1i, u_input.b);
    var var_1 = vec3<f32>(-641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(i32(-1i) * -2147483647i, -540f, min(u_input.e.xz, vec2<u32>(u_input.e.x, u_input.e.x)))))), 382f);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1758f, var_1.x, var_1.x), vec3<f32>(var_1.x, 523f, 368f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-972f, var_1.x, -1000f))), vec3<f32>(250f, var_1.x, -1365f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-646f, -1000f, var_1.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 1007f, -368f))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1433f)) * vec3<f32>(454f, -1090f, var_1.x)))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(261f + 887f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-957f, 352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(739f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.x)))))), 538f);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1495f + _wgslsmith_f_op_f32(-2135f * _wgslsmith_f_op_f32(ceil(-445f)))))), var_3.x);
    var_1 = var_3.xww;
    var var_5 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, var_4.x)))), ~abs(~u_input.e.x), func_5(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -35991i, var_0.x, u_input.b), vec4<i32>(u_input.a.x, var_0.x, 0i, -1i)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(893f, var_4.x)), 23734u, func_5(vec4<i32>(-53123i, var_0.x, 41943i, -2147483647i), Struct_4(var_1.xz, u_input.e.x, Struct_1(-1102f, true, var_0.x, vec4<u32>(8738u, 9646u, 57271u, u_input.c))))))), Struct_2(func_6(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), Struct_1(_wgslsmith_f_op_f32(var_1.x * -255f), true, 1i << (0u % 32u), vec4<u32>(49402u, 10023u, 2398u, 6645u)), Struct_3(Struct_1(var_4.x, true, 5140i, vec4<u32>(24926u, u_input.e.x, u_input.e.x, 0u)))).c, func_6(vec2<bool>(true, false), Struct_1(_wgslsmith_f_op_f32(-492f - var_3.x), func_5(vec4<i32>(var_0.x, 2147483647i, -1i, var_0.x), Struct_4(vec2<f32>(var_2.x, var_1.x), u_input.c, Struct_1(var_3.x, false, var_0.x, vec4<u32>(u_input.e.x, u_input.e.x, 13212u, u_input.e.x)))).b, -2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, u_input.c, 1u, 4294967295u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.e.x))), Struct_3(Struct_1(var_2.x, false, 1i, vec4<u32>(12659u, u_input.e.x, 1u, u_input.e.x)))).c, select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(all(vec3<bool>(false, true, false)), true, true)), ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), Struct_3(func_5(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(40359i, u_input.d.x, -13521i, 32815i), vec4<i32>(var_0.x, 11443i, 0i, var_0.x), vec4<i32>(u_input.b, var_0.x, var_0.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.x, var_0.x, 2147483647i), vec4<i32>(var_0.x, u_input.b, -23580i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-21777i, 30412i, -42657i, -29526i), vec4<i32>(u_input.a.x, u_input.d.x, 1i, -2147483647i))), func_6(vec2<bool>(false, false), func_6(vec2<bool>(false, false), Struct_1(var_3.x, false, u_input.a.x, vec4<u32>(0u, u_input.e.x, u_input.e.x, 4294967295u)), Struct_3(Struct_1(var_3.x, false, -1i, vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u)))).c, Struct_3(Struct_1(-809f, true, -11126i, vec4<u32>(u_input.e.x, u_input.e.x, u_input.c, u_input.c)))))), vec4<i32>(~(-18567i), var_0.x, u_input.d.x, 58051i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.c.a.a - var_3.x) * _wgslsmith_f_op_f32(select(-258f, 1399f, var_5.b.b.b)))), func_5(firstLeadingBit(vec4<i32>(-47090i, 1317i, var_0.x, -2147483647i) | vec4<i32>(var_0.x, -2147483647i, 2147483647i, var_0.x)), Struct_4(vec2<f32>(var_4.x, 185f), 7545u & u_input.e.x, var_5.b.b)).a), _wgslsmith_sub_i32(-func_3(var_5.b, 150298u, func_6(var_5.b.c, Struct_1(-2090f, var_5.b.a.b, -2147483647i, var_5.b.a.d), Struct_3(Struct_1(-512f, false, 14582i, var_5.c.a.d)))).x, _wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(~var_0.x, 2394i), -21029i)));
}

