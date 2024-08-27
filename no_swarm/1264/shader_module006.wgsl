struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(arg_2, 53453i), -arg_2, reverseBits(arg_2)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c.x, 2147483647i, -75927i, u_input.c.x), ~vec4<i32>(arg_2, -2147483647i, -1i, -24481i)))), vec4<i32>(u_input.c.x, u_input.c.x, -arg_2, ((u_input.c.x << (u_input.d % 32u)) | countOneBits(83410i)) ^ abs(-2147483647i)));
    var_0 = vec4<i32>(arg_2, 1i, u_input.c.x, _wgslsmith_dot_vec3_i32(var_0.xwz, vec3<i32>(var_0.x, _wgslsmith_div_i32(1i, ~u_input.c.x), select(0i, _wgslsmith_mod_i32(2147483647i, 20404i), any(vec2<bool>(arg_1, arg_1))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(round(-200f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1585f))));
    var_0 = min(~(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.c.x, var_0.x, 2147483647i), countOneBits(vec4<i32>(4856i, 1i, -2147483647i, u_input.c.x)))), abs(~select(-vec4<i32>(arg_2, -2147483647i, -14928i, arg_2), -vec4<i32>(-1i, arg_2, arg_2, u_input.c.x), arg_1)));
    var var_2 = select(~countOneBits(u_input.d >> (abs(u_input.b) % 32u)), u_input.d, false);
    return u_input.a.yyz;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = u_input.a.wzx;
    let var_1 = Struct_2(~u_input.d, arg_0.b, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_2 = func_3(_wgslsmith_div_f32(var_1.d, 1101f), true, firstTrailingBit(109i));
    let var_3 = all(select(select(vec3<bool>(arg_0.b.e, !var_1.b.e, all(vec3<bool>(var_1.b.e, var_1.b.e, false))), !select(vec3<bool>(false, var_1.b.e, arg_0.b.e), vec3<bool>(true, arg_0.b.e, false), true), true), select(vec3<bool>(!arg_0.b.e, true, true), select(!vec3<bool>(arg_0.b.e, var_1.b.e, arg_0.b.e), vec3<bool>(true, true, true), !vec3<bool>(var_1.b.e, arg_0.b.e, var_1.b.e)), true), vec3<bool>(any(vec2<bool>(false, arg_0.b.e)) && true, all(!vec3<bool>(arg_0.b.e, arg_0.b.e, true)), arg_0.b.e)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-717f + _wgslsmith_div_f32(var_1.d, arg_1.x)), arg_1.x)) - _wgslsmith_f_op_f32(var_1.d * 415f)), arg_0.b);
    return vec4<u32>(min(reverseBits(73898u), countOneBits(1u) | ~var_0.x) & var_2.x, func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_f32(round(-448f))), false, -u_input.c.x | ((var_1.b.b | 0i) >> (arg_2 % 32u))).x, _wgslsmith_div_u32(~4805u, ~((arg_0.b.c << (0u % 32u)) >> (_wgslsmith_mod_u32(4294967295u, 10439u) % 32u))), 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(round(arg_2.a))) * -954f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a))), arg_2.a)))), Struct_1(arg_2.b.d.x | arg_2.b.a, 12997i, ~(~0u), -vec2<i32>(firstLeadingBit(-2147483647i), arg_2.b.d.x), !arg_2.b.e));
    var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, arg_2.a)), 1000f))), 1392f)), arg_1);
    var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1214f, 1567f));
    var var_2 = vec3<bool>(true, true, arg_2.b.e);
    return all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(arg_1.e, var_0.b.e, arg_1.e), select(vec3<bool>(arg_2.b.e, var_0.b.e, false), vec3<bool>(arg_1.e, true, false), true), vec3<bool>(arg_1.e, arg_2.b.e, true)), select(!vec3<bool>(arg_1.e, var_0.b.e, arg_1.e), select(vec3<bool>(var_0.b.e, var_0.b.e, true), vec3<bool>(var_0.b.e, false, arg_1.e), false), select(false, arg_2.b.e, true)), true), select(true, !all(vec3<bool>(true, var_2.x, arg_1.e)), select(all(vec2<bool>(var_2.x, false)), true && var_2.x, true))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = -2147483647i >= -(~u_input.c.x);
    let var_1 = u_input.c.x;
    var_0 = !func_4(reverseBits(func_2(Struct_3(vec3<u32>(6220u, 4294967295u, u_input.b), Struct_1(var_1, var_1, 14436u, u_input.c, false), u_input.c.x, vec2<f32>(591f, arg_0), 97925u), _wgslsmith_f_op_vec2_f32(vec2<f32>(382f, arg_0) + vec2<f32>(-242f, arg_0)), u_input.a.x)), Struct_1(-_wgslsmith_mult_i32(1i, -1i), countOneBits(~(-1i)), 53300u, u_input.c, true), Struct_4(832f, Struct_1(select(1i, u_input.c.x, true), 2147483647i >> (0u % 32u), u_input.d << (30381u % 32u), ~u_input.c, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(29832i, 2147483647i, 2147483647i), vec3<i32>(-7518i, var_1, var_1)) & reverseBits(-48112i), max(var_1, u_input.c.x) & (u_input.c.x | -17980i), _wgslsmith_sub_i32(var_1, -64753i) & 0i, 2147483647i));
    var var_2 = ~min(vec2<u32>(~(u_input.a.x << (u_input.d % 32u)), func_2(Struct_3(vec3<u32>(u_input.a.x, u_input.d, 1u), Struct_1(9452i, u_input.c.x, 0u, vec2<i32>(var_1, u_input.c.x), true), 1i, vec2<f32>(arg_0, arg_0), 27515u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 634f) + vec2<f32>(arg_0, arg_0)), 1u).x), u_input.a.xy);
    var var_3 = ~(~reverseBits(var_2.x));
    return !select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, 65678u >= u_input.b), select(true, true, 1078f < arg_0)), vec2<bool>(any(vec2<bool>(true, true)), true), true == !all(vec3<bool>(false, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(any(vec3<bool>(true, any(vec3<bool>(true, false, true)), false)), any(vec4<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)), all(vec2<bool>(true, false))))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec4<bool>(true, false, true, false)))), true), !select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -2049f)), func_1(_wgslsmith_f_op_f32(step(-133f, 325f))), vec2<bool>(true, true)));
    var var_1 = !func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-395f + 412f), _wgslsmith_f_op_f32(f32(-1f) * -389f), !(var_0.x == var_0.x)))).x;
    var var_2 = func_1(610f);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(-1490f - 2131f)))) + 934f);
    var var_4 = Struct_3(select(u_input.a.ywy, vec3<u32>(~(~u_input.d), u_input.d, ~u_input.a.x), !(33567u == (u_input.b << (54134u % 32u)))), Struct_1(~u_input.c.x, ~(~_wgslsmith_mult_i32(0i, -1i)), ~86218u, u_input.c, true), select(u_input.c.x, _wgslsmith_div_i32(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(1i, u_input.c.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 39630i)), u_input.c.x & -1i)), var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) * vec2<f32>(936f, var_3))))) - vec2<f32>(var_3, var_3)), ~(~721u));
    let var_5 = Struct_3(reverseBits(u_input.a.xzw), var_4.b, reverseBits(-27183i) & _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c.x, -30387i), max(u_input.c, u_input.c), select(false, var_2.x, var_4.b.e)), var_4.b.d), var_4.d, 1u);
    let var_6 = Struct_2(114284u << ((var_5.b.c & ~u_input.a.x) % 32u), Struct_1(_wgslsmith_add_i32(-abs(-17844i), -(var_5.c << (58925u % 32u))), -13287i, func_3(var_5.d.x, false | var_5.b.e, abs(29946i)).x, vec2<i32>(-2147483647i, max(29125i, ~2147483647i)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_5.d.x, -1324f, var_4.b.e)) + _wgslsmith_f_op_f32(-var_3))).x), vec2<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_4.c, u_input.c.x, u_input.c.x), vec3<i32>(-642i, 1i, var_5.c), vec3<i32>(u_input.c.x, -10129i, -36956i)), -countOneBits(vec3<i32>(-16275i, 53489i, u_input.c.x))), max(var_5.c, 1i)), _wgslsmith_f_op_f32(select(var_3, var_4.d.x, any(select(!vec3<bool>(var_2.x, true, var_0.x), !vec3<bool>(var_2.x, var_2.x, var_4.b.e), var_4.b.e)))));
    var_4 = Struct_3(_wgslsmith_add_vec3_u32(~(~func_2(Struct_3(vec3<u32>(var_5.b.c, 0u, var_5.b.c), var_4.b, -2147483647i, var_5.d, var_4.a.x), var_4.d, var_6.a).zyz), vec3<u32>(0u, ~1u, ~_wgslsmith_add_u32(u_input.d, var_6.a))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_6.c.x, var_6.b.b, var_6.c.x), vec3<i32>(var_5.b.a, 0i, 9724i)), 18300i, firstTrailingBit(-1i), var_4.c & 2147483647i), ~vec4<i32>(var_4.c, 0i, u_input.c.x, 957i) >> (~u_input.a % vec4<u32>(32u))), firstLeadingBit(var_5.b.a), 28346u, vec2<i32>(reverseBits(abs(var_4.c)), firstLeadingBit(abs(var_5.b.d.x))), false), -(_wgslsmith_dot_vec3_i32(vec3<i32>(59097i, u_input.c.x, -1i), vec3<i32>(u_input.c.x, 0i, -5547i)) << (abs(var_5.a.x) % 32u)) >> (u_input.b % 32u), vec2<f32>(_wgslsmith_f_op_f32(-var_5.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_6.d))))), abs(var_4.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.a, vec4<f32>(1030f, 633f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_3)))), var_6.d), firstLeadingBit(abs(-vec4<i32>(19100i, var_6.b.a, -52643i, -26753i))) & -abs(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_4.c, var_4.c, 2238i), vec4<i32>(var_6.c.x, var_4.b.a, -714i, -10062i))), _wgslsmith_f_op_vec2_f32(var_5.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(step(1810f, 1312f))))), var_4.d.x);
}

