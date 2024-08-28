struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(2147483647i, -41988i), vec2<i32>(-502i, 71233i), vec2<i32>(13404i, 20569i), vec2<i32>(-3219i, 2147483647i), vec2<i32>(0i, -1i), vec2<i32>(0i, -52484i), vec2<i32>(1i, -1i), vec2<i32>(32838i, 12823i), vec2<i32>(i32(-2147483648), 23668i), vec2<i32>(1122i, -27264i), vec2<i32>(6676i, -19938i), vec2<i32>(-1i, -30872i), vec2<i32>(0i, -36546i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(53506i, 13827i), vec2<i32>(8575i, -24749i), vec2<i32>(7363i, -14651i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 52227i), vec2<i32>(35950i, -1i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    global0 = array<vec2<i32>, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-289f)), _wgslsmith_f_op_f32(abs(355f)), -1187f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-380f - -1346f), _wgslsmith_f_op_f32(floor(-1000f)), -1737f)) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-122f + 648f), _wgslsmith_f_op_f32(max(-1032f, 387f))), _wgslsmith_f_op_f32(f32(-1f) * -491f), 731f)));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32((vec3<i32>(-2147483647i, u_input.b.x, -63570i) ^ u_input.b) ^ vec3<i32>(u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -2685i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), abs(min(~vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x) ^ vec3<i32>(0i, u_input.b.x, -1i)))), -2147483647i);
    var var_2 = u_input.b.zy;
    let var_3 = var_0.zx;
    return any(vec2<bool>(all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), 932f < var_3.x));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    var var_0 = _wgslsmith_mod_vec4_i32(~(vec4<i32>(firstLeadingBit(2147483647i), 11256i, -arg_1, 40749i << (1u % 32u)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-5842i, arg_1, -43380i, u_input.b.x), vec4<i32>(-1i, 1i, 29983i, u_input.b.x), vec4<i32>(arg_1, 0i, u_input.b.x, arg_1)), -vec4<i32>(u_input.b.x, 91i, arg_1, -3444i))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_1, 23306i, u_input.b.x, -15812i), ~vec4<i32>(u_input.b.x, 17763i, -2147483647i, -13185i)) | abs(select(vec4<i32>(1i, 72297i, 2147483647i, u_input.b.x), vec4<i32>(-41362i, -40297i, u_input.b.x, -31066i), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true))), vec4<i32>(-1i) * -vec4<i32>(arg_1, u_input.b.x, arg_1, -2147483647i)));
    var var_1 = arg_2.x;
    var_1 = true;
    return countOneBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(51724u, 49992u, u_input.a) << (~vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u))), vec3<u32>(8041u, u_input.a, ~1u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(arg_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), ~_wgslsmith_div_u32(~4294967295u, u_input.a << (u_input.a % 32u)), all(!(!vec4<bool>(false, false, arg_3.x, arg_3.x))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), 480f, arg_3.x)), _wgslsmith_div_f32(-694f, _wgslsmith_f_op_f32(min(arg_1, arg_0.x))), arg_2)), Struct_1(arg_3.x, _wgslsmith_f_op_vec3_f32(ceil(arg_0)), u_input.a, arg_3.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1162f, -508f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1221f, arg_2) + arg_0))), Struct_1(0u > ~(~u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), ~1u, arg_3.x, _wgslsmith_f_op_vec3_f32(-arg_0)), func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_2), _wgslsmith_f_op_f32(-arg_0.x)), arg_1), i32(-1i) * -1i, select(vec4<bool>(arg_3.x, true, func_3(), all(arg_3)), !select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), arg_3, false), arg_3), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_2 - 679f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_0.x) + _wgslsmith_f_op_f32(-1307f - arg_0.x)))), u_input.a);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1207f, arg_0.x, -557f, arg_2), vec4<f32>(-776f, arg_2, arg_2, arg_1)))))));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(var_1.b.x, 955f)))) < arg_2, !(var_0.b.a == true) || any(!select(arg_3.wzx, vec3<bool>(var_0.b.a, false, false), true)), !(!(u_input.b.x != -2197i)));
    global0 = array<vec2<i32>, 21>();
    var var_3 = countOneBits(u_input.b);
    return Struct_2(Struct_1(!(!all(arg_3.zz)), _wgslsmith_f_op_vec3_f32(-arg_0), ~(54215u ^ ~var_0.a.c), any(select(vec4<bool>(arg_3.x, var_0.c.d, true, false), select(arg_3, arg_3, true), vec4<bool>(false, var_2.x, true, false))), _wgslsmith_f_op_vec3_f32(-var_0.a.b)), Struct_1(func_3(), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))), _wgslsmith_f_op_f32(-242f + arg_0.x)), abs(67243u), var_2.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, var_0.c.b.x, var_0.c.b.x) + vec3<f32>(263f, arg_0.x, arg_2)))))), var_0.c, var_0.a.c, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.a), max(vec2<u32>(var_0.d, var_0.d), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(75941u, var_0.e)), vec2<u32>(_wgslsmith_mult_u32(var_0.d, 1u), 29726u))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec3<f32> {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    let var_0 = u_input.a;
    global0 = array<vec2<i32>, 21>();
    var var_1 = func_2(arg_1.xxz, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), vec4<bool>(true, true, true, !arg_0));
    return vec3<f32>(-1920f, -843f, _wgslsmith_div_f32(419f, _wgslsmith_f_op_f32(ceil(-680f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    let var_0 = Struct_5(arg_0.x, vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_vec3_f32(func_1(true, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -101f, arg_0.x, -530f), vec4<f32>(687f, arg_2, 376f, arg_0.x)))).x), _wgslsmith_f_op_f32(-arg_2), arg_2, 1000f));
    let var_1 = var_0.b;
    let var_2 = select(vec4<i32>(~(~(u_input.b.x | -38117i)), ~(-u_input.b.x), -u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 0i)), _wgslsmith_mod_vec4_i32((~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -965i) << (~vec4<u32>(0u, 48426u, arg_1, 0u) % vec4<u32>(32u))) | (_wgslsmith_div_vec4_i32(vec4<i32>(-14172i, -69101i, -4801i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x)) & _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b.x, -1176i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x))), (~vec4<i32>(-2707i, -8976i, 24393i, -13782i) << ((vec4<u32>(arg_1, 1u, 17326u, u_input.a) | vec4<u32>(u_input.a, 30634u, 0u, arg_1)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, 1i), -18708i, _wgslsmith_mult_i32(u_input.b.x, 21833i), ~(-12600i))), !vec4<bool>(true, u_input.b.x > -37676i, !func_3(), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))));
    return Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(-1849f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x + arg_0.x)))), -458f, _wgslsmith_f_op_vec3_f32(func_1(true, var_1)).x), 1u, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, var_1.x, -1906f))) + var_1.wxy), arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1476f * 1266f), 1716f))), vec4<bool>(var_2.x == 0i, any(vec2<bool>(false, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), select(true, true, all(vec3<bool>(true, true, true))))).b.d, arg_0);
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec3<u32>(u_input.a ^ 1u, 0u, 89368u);
    let var_1 = _wgslsmith_div_vec2_u32(var_0.xx, vec2<u32>(~_wgslsmith_mod_u32(~arg_0.c, var_0.x), 49843u));
    let var_2 = var_1;
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    return Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, -102f, arg_0.b.x)) + _wgslsmith_f_op_vec3_f32(step(arg_0.b, arg_0.b))), _wgslsmith_f_op_f32(ceil(arg_0.e.x)), arg_0.e.x, !select(vec4<bool>(true, false, arg_0.d, false), vec4<bool>(false, true, arg_0.a, false), arg_0.d)).a, Struct_1(select(true, arg_0.a, arg_0.d), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, arg_0.e.x, 1518f)), vec3<f32>(-1095f, -852f, arg_0.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.x, var_1.x, var_1.x), vec4<u32>(var_2.x, u_input.a, u_input.a, var_1.x)), select(vec4<u32>(0u, arg_0.c, var_2.x, var_2.x), vec4<u32>(var_2.x, arg_0.c, var_1.x, var_2.x), vec4<bool>(arg_0.d, arg_0.a, true, arg_0.a))), arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), arg_0.e.x, arg_0.e.x)), arg_0, arg_0.c, _wgslsmith_mod_u32(~1u, var_0.x)), !vec3<bool>(true, func_5(vec3<f32>(924f, 1000f, arg_0.b.x), _wgslsmith_sub_u32(var_0.x, 58563u), arg_0.b.x).a, false), func_2(arg_0.e, -625f, -220f, vec4<bool>(true, arg_0.b.x <= _wgslsmith_div_f32(-1795f, -1302f), arg_0.d, (u_input.a ^ u_input.a) != (var_1.x >> (20636u % 32u)))), ~vec2<u32>(countOneBits(var_1.x) | var_1.x, ~0u));
}

fn func_7(arg_0: Struct_3) -> f32 {
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    let var_0 = arg_0.c.c.e.x;
    var var_1 = -20229i;
    global0 = array<vec2<i32>, 21>();
    return _wgslsmith_f_op_f32(min(var_0, arg_0.c.b.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 21>();
    var var_0 = ~u_input.b.x;
    global0 = array<vec2<i32>, 21>();
    global0 = array<vec2<i32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(func_7(func_6(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1185f, 1356f, -1127f)) * _wgslsmith_f_op_vec3_f32(func_1(true, vec4<f32>(-454f, -224f, -642f, -190f)))), 0u, -246f))));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(~(~(~23574u)), ~(~_wgslsmith_div_u32(u_input.a, u_input.a))), u_input.a);
    var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-242f * func_2(vec3<f32>(1f, 1f, 1f), -137f, _wgslsmith_f_op_f32(f32(-1f) * -203f), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)).b.e.x), _wgslsmith_f_op_f32(step(1f, func_5(vec3<f32>(225f, -2249f, -1324f), abs(1u), _wgslsmith_div_f32(978f, 619f)).b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(vec4<u32>(var_2.x, 1u, u_input.a, 3405u) ^ vec4<u32>(22371u, 3568u, u_input.a, var_2.x), select(vec4<u32>(4294967295u, 39219u, var_2.x, var_2.x), vec4<u32>(u_input.a, 0u, u_input.a, var_2.x), vec4<bool>(false, false, false, true)), false) & max(firstLeadingBit(vec4<u32>(62461u, var_2.x, 28369u, var_2.x)), select(vec4<u32>(var_2.x, u_input.a, 80369u, 0u), vec4<u32>(29805u, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, false, true)))), u_input.b.x, 2147483647i, 0u, ~abs(~vec4<u32>(u_input.a, 0u, 29329u, u_input.a)));
}

