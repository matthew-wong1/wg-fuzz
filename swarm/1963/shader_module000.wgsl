struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + -652f), -1206f, _wgslsmith_f_op_f32(1f - -1234f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2041f - -1000f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1166f, -230f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(915f, -1625f), _wgslsmith_f_op_f32(-1250f * -1683f))), _wgslsmith_f_op_f32(max(118f, _wgslsmith_f_op_f32(1433f - -1274f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1713f + 715f), _wgslsmith_f_op_f32(-434f - -378f))), -753f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1177f, -1012f) + 1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f - 536f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(1927f)), _wgslsmith_f_op_f32(-2160f - var_0.x), 125f, _wgslsmith_f_op_f32(exp2(var_0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, var_0.x, -1432f, var_0.x) + vec4<f32>(var_0.x, -135f, var_0.x, 511f)), vec4<f32>(351f, var_0.x, 853f, -967f), false)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2216f), var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-511f * var_0.x), _wgslsmith_f_op_f32(876f - var_0.x), _wgslsmith_f_op_f32(max(-1078f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2715f, var_0.x, 532f, var_0.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-170f, var_0.x, -306f, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, -191f, false)), _wgslsmith_f_op_f32(var_0.x - -1051f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1059f, var_0.x), arg_3)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1624f, var_0.x, -2061f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, 1054f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, -524f, 1948f), vec4<f32>(var_0.x, var_0.x, 568f, var_0.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1237f, -1744f, -819f, var_0.x))))))));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = vec3<bool>(!(u_input.a == firstTrailingBit(0i)), any(vec2<bool>(func_3(vec4<u32>(arg_0.c, arg_0.d, arg_0.c, arg_0.d), ~u_input.b, 1i, !arg_0.a), all(!vec2<bool>(arg_0.a, arg_0.a)))), (((79565u << (1u % 32u)) == abs(u_input.b.x)) == true) & (any(select(vec4<bool>(arg_0.a, false, false, false), vec4<bool>(false, true, arg_0.a, arg_0.a), true)) | arg_0.a));
    let var_1 = min(_wgslsmith_add_i32(~abs(-41873i) << (_wgslsmith_div_u32(u_input.b.x, u_input.c.x ^ u_input.b.x) % 32u), ~(_wgslsmith_mult_i32(0i, 2543i) << (u_input.b.x % 32u))), ~17395i);
    let var_2 = arg_0;
    var var_3 = Struct_3(any(select(select(var_0.yy, var_0.yz, vec2<bool>(false, false)), vec2<bool>(arg_0.a, false), var_0.zx)) || arg_0.a, Struct_2(Struct_1(all(var_0.yy) | var_2.a, arg_0.b, ~(arg_0.d >> (arg_0.c % 32u)), ~u_input.b.x)));
    let var_4 = 873f;
    return select(!(!select(select(vec3<bool>(var_2.a, var_3.b.a.a, var_2.a), vec3<bool>(true, var_2.a, var_0.x), vec3<bool>(var_2.a, var_2.a, true)), select(vec3<bool>(false, true, var_3.b.a.a), vec3<bool>(var_0.x, arg_0.a, true), false), any(vec4<bool>(false, false, var_3.a, arg_0.a)))), !vec3<bool>(all(!vec4<bool>(false, false, var_3.b.a.a, true)), select(true, arg_0.a, var_0.x) | any(vec3<bool>(false, var_2.a, var_0.x)), true), var_3.b.a.a);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_5(Struct_2(Struct_1(true, 216f, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, u_input.b.x), max(87757u, 21691u), 4294967295u), u_input.c.x)), ~(u_input.c.zx | u_input.b), u_input.c);
    var var_1 = var_0.a.a;
    var var_2 = Struct_3(var_1.a, Struct_2(Struct_1(var_0.a.a.a, 1634f, var_0.b.x, u_input.c.x)));
    var var_3 = Struct_3(all(arg_1), Struct_2(Struct_1(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.a.c, 0u, 30239u, 6020u), vec4<u32>(u_input.c.x, 25788u, var_2.b.a.d, var_0.a.a.d)), ~u_input.c.xy, 0i, false), _wgslsmith_f_op_f32(-var_2.b.a.b), ~51580u, _wgslsmith_div_u32(u_input.b.x | 71689u, var_2.b.a.c))));
    let var_4 = _wgslsmith_sub_i32(-1i, u_input.a);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a.b - -780f)), -254f)), -1308f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) + var_3.b.a.b)) * _wgslsmith_f_op_f32(-var_2.b.a.b)), -1249f);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(false, func_2(arg_1.a))));
    var var_1 = Struct_4(1083f, Struct_3(!(!(false || arg_0.x)), arg_1));
    var var_2 = vec4<bool>((var_1.b.b.a.d & 30547u) != abs(u_input.c.x), false, select(arg_1.a.a, var_1.b.b.a.a, !((u_input.a | u_input.a) <= u_input.a)), false);
    var var_3 = Struct_3(func_3(countOneBits(_wgslsmith_add_vec4_u32(~u_input.c, u_input.c)), ~vec2<u32>(var_1.b.b.a.d, u_input.b.x), _wgslsmith_clamp_i32(4201i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 5520i, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(2147483647i, u_input.a, 1i, u_input.a), false))), var_1.b.b.a.a), Struct_2(var_1.b.b.a));
    let var_4 = var_3.b.a;
    return Struct_2(Struct_1(any(select(!vec3<bool>(false, arg_1.a.a, var_4.a), !vec3<bool>(false, var_4.a, false), vec3<bool>(true, true, true))), var_1.a, var_4.d, var_1.b.b.a.d));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_5(Struct_2(arg_0.a), firstTrailingBit(u_input.b), ~vec4<u32>(0u, 1u, arg_0.a.c, 4294967295u) << (u_input.c % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) * 507f));
    return vec3<u32>(var_0.b.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_0.c.xx, u_input.c.yx), 0u), _wgslsmith_dot_vec2_u32(var_0.c.yz, select(firstLeadingBit(~var_0.c.xx), countOneBits(var_0.b) | _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.c, 25529u), var_0.b), arg_0.a.a)));
}

fn func_6(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_2(Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-169f - -1389f))), firstTrailingBit(84188u), u_input.b.x)), firstTrailingBit(u_input.b), ~_wgslsmith_mod_vec4_u32(~(~u_input.c), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(25720u, 43537u, 0u, arg_0.x), u_input.c), firstLeadingBit(arg_0.x), 40452u >> (u_input.c.x % 32u), _wgslsmith_mod_u32(42242u, arg_0.x))));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(false, select(var_0.a.a.a, any(vec3<bool>(false, true, var_0.a.a.a)) || false, true)), false);
    var_1 = select(select(!(!(!vec2<bool>(var_0.a.a.a, true))), select(!(!vec2<bool>(true, var_0.a.a.a)), vec2<bool>(any(vec3<bool>(true, var_0.a.a.a, false)), var_0.a.a.a), !vec2<bool>(var_0.a.a.a, true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a.a.a), vec2<bool>(var_1.x, false), vec2<bool>(true, true)), true)), vec2<bool>(true, !var_1.x), vec2<bool>(false, all(select(select(vec4<bool>(false, false, var_0.a.a.a, var_1.x), vec4<bool>(var_0.a.a.a, true, true, var_1.x), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.a.a.a, var_1.x, var_1.x, var_1.x), vec4<bool>(var_0.a.a.a, true, true, true)))));
    var_1 = select(vec2<bool>(false, false), !(!vec2<bool>(true, false && var_0.a.a.a)), select(vec2<bool>(all(!vec4<bool>(var_1.x, true, var_1.x, true)), !any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))), vec2<bool>(true, true), func_2(func_1(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_0.a.a.a, var_1.x), var_0.a.a.a), var_0.a).a).zy));
    let var_2 = (1u == ~func_1(!vec3<bool>(false, var_0.a.a.a, true), func_1(vec3<bool>(var_1.x, false, var_0.a.a.a), var_0.a)).a.d) == func_3(u_input.c, u_input.b, ~1i, var_0.a.a.a);
    return func_1(vec3<bool>(false, all(select(vec3<bool>(var_1.x, true, false), !vec3<bool>(false, false, var_2), !vec3<bool>(true, var_0.a.a.a, true))), var_0.a.a.a != !var_2), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, -26928i, _wgslsmith_div_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 2147483647i, u_input.a), vec4<i32>(27208i, u_input.a, 65909i, u_input.a)))), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 21863i)));
    var var_1 = Struct_3(any(vec3<bool>(true, false, select(true, false, true))), func_6(_wgslsmith_add_vec3_u32(func_5(func_1(vec3<bool>(false, true, false), Struct_2(Struct_1(true, 764f, 89688u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1117f, 392f)), vec2<f32>(-576f, 191f)), ~(~u_input.c.zxx))));
    var var_2 = !vec3<bool>(abs(_wgslsmith_sub_u32(var_1.b.a.c, u_input.c.x)) == var_1.b.a.c, var_1.b.a.a, true);
    var var_3 = 0u;
    let var_4 = -1i;
    var var_5 = select(u_input.c, select(~(~u_input.c), vec4<u32>(u_input.b.x, ~1u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.a.d, 0u), u_input.b), 0u, firstTrailingBit(var_1.b.a.d ^ 71577u)), select(!(!vec4<bool>(var_1.b.a.a, var_1.a, var_1.b.a.a, var_2.x)), vec4<bool>(true, false, select(false, var_2.x, false), true), !(!vec4<bool>(false, false, var_2.x, var_2.x)))), !vec4<bool>(true, var_2.x, var_2.x, all(select(vec4<bool>(true, var_1.b.a.a, false, false), vec4<bool>(false, true, false, var_2.x), true))));
    let var_6 = Struct_3(!((24143u | var_1.b.a.d) >= var_5.x), func_1(vec3<bool>(true, !(var_2.x && false), !var_1.a), var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, vec3<f32>(250f, _wgslsmith_f_op_f32(trunc(var_6.b.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.b) + _wgslsmith_f_op_f32(-var_6.b.a.b)))), _wgslsmith_f_op_f32(step(var_1.b.a.b, -123f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.b + 1183f)), var_1.b.a.b, -659f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(502f)), func_6(u_input.c.yxy).a.b, -1678f) - vec3<f32>(var_6.b.a.b, -1019f, var_1.b.a.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(true && (true | var_6.a), !vec3<bool>(var_2.x, true, var_2.x))).yxz));
}

