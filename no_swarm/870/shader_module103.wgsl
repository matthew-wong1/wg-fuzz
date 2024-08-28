struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(623f, 278f, 295f), vec3<f32>(2031f, 1264f, -441f), vec3<f32>(650f, -434f, -1635f), vec3<f32>(-527f, 1305f, -1599f), vec3<f32>(-394f, -218f, 1000f), vec3<f32>(961f, 336f, -1510f), vec3<f32>(-673f, -1230f, 744f), vec3<f32>(-558f, 516f, -325f), vec3<f32>(728f, -655f, 794f), vec3<f32>(-658f, 471f, 987f), vec3<f32>(1656f, 950f, 634f), vec3<f32>(-1181f, -3260f, -183f), vec3<f32>(869f, -1134f, 1000f), vec3<f32>(1202f, -302f, 306f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = any(select(vec4<bool>(true, !any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, false)), u_input.b < ~21912u), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, false)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = ~vec4<i32>(39386i, max(0i, ~countOneBits(37303i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(28653i, 1i)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-3933i, 1i)), min(~vec2<i32>(-9398i, -1i), abs(vec2<i32>(-2147483647i, 1i)))));
    let var_2 = Struct_4(select(var_1.x, -14027i, abs(firstLeadingBit(1596i)) > firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(15827i, var_1.x, var_1.x, 2147483647i), vec4<i32>(-1i, 10176i, var_1.x, var_1.x)))), Struct_2(Struct_1(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a, u_input.a), ~_wgslsmith_add_u32(1u, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(1386f - 244f), 466f, _wgslsmith_f_op_f32(f32(-1f) * -758f), 1f), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1532f, -1117f, 1865f, 489f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-950f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(716f)) * _wgslsmith_f_op_f32(f32(-1f) * -266f))), vec2<i32>(select(var_1.x, 2147483647i, false), var_1.x)), Struct_2(Struct_1(select(vec3<u32>(0u, u_input.b, u_input.a) ^ vec3<u32>(u_input.a, 3811u, u_input.a), vec3<u32>(u_input.a, u_input.b, 3440u), vec3<bool>(false, true, false)), u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, 1917f, -1658f, 139f)), _wgslsmith_div_vec4_f32(vec4<f32>(-274f, 276f, 145f, -323f), vec4<f32>(915f, -468f, -780f, 208f))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 30699u, u_input.b)), 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, 1821f, 371f, -391f) * vec4<f32>(-1098f, 157f, -1482f, 1354f)), vec4<f32>(1289f, -604f, 181f, -265f), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f), -1639f)), vec2<i32>(~var_1.x, ~1i)), Struct_1(min(vec3<u32>(~2474u, u_input.b, u_input.a), firstTrailingBit(max(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.b)))), _wgslsmith_mod_u32(~abs(1u), ~select(u_input.a, 52785u, true)), vec4<f32>(1f, 1f, 1f, 1f), u_input.a, vec4<f32>(1f, 1f, 1f, 1f)));
    var var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.a.e.x) - _wgslsmith_f_op_f32(min(var_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, var_2.c.a.c.x), _wgslsmith_f_op_f32(max(-310f, -886f))))))));
}

fn func_2() -> vec3<bool> {
    global0 = false;
    global1 = array<vec3<f32>, 14>();
    global0 = !(select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(1i, -1i)), _wgslsmith_sub_i32(39593i, -19095i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 25657i), 3386i), true) >= -19294i);
    var var_0 = firstLeadingBit(u_input.b ^ 104618u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(111f, -331f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1692f - -399f) - _wgslsmith_f_op_f32(f32(-1f) * -1263f)), 1284f, _wgslsmith_f_op_f32(func_3())) + vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1806f, -467f, 105f, 413f)))) * vec4<f32>(_wgslsmith_div_f32(-215f, -1000f), -507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-127f)) - _wgslsmith_f_op_f32(f32(-1f) * -118f)), -1447f)));
    return vec3<bool>(false, -197f != _wgslsmith_f_op_f32(trunc(1142f)), !all(vec3<bool>(true, var_1.x < 853f, select(true, false, true))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: bool) -> Struct_3 {
    let var_0 = select(func_2(), arg_1, arg_1);
    global0 = !select(var_0.x, select(true, (10887i > arg_0.c.x) && (arg_1.x || arg_2), select(arg_1.x, arg_3 || true, select(arg_1.x, true, var_0.x))), true);
    global1 = array<vec3<f32>, 14>();
    global0 = !all(!vec4<bool>(arg_0.a.e.x > 243f, select(arg_3, false, true), any(vec4<bool>(true, true, false, arg_1.x)), arg_1.x));
    var var_1 = ~(_wgslsmith_sub_i32(max(arg_0.c.x, -2147483647i & arg_0.c.x), ~_wgslsmith_add_i32(-17140i, arg_0.c.x)) & 1i);
    return Struct_3(arg_0.a.b, ~select(vec2<u32>(~u_input.b, arg_0.a.a.x >> (u_input.a % 32u)), ~arg_0.a.a.zz, all(var_0.zy)), _wgslsmith_add_i32(i32(-1i) * -1i, abs(-1i)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_5((arg_2.b.x << (u_input.b % 32u)) ^ reverseBits(~abs(0u)), -1i << ((u_input.a >> (4294967295u % 32u)) % 32u));
    global1 = array<vec3<f32>, 14>();
    let var_1 = Struct_2(Struct_1(countOneBits(~(vec3<u32>(22263u, arg_2.b.x, arg_0) | vec3<u32>(arg_0, u_input.b, 33560u))), _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(abs(4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1426f - -454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f - -261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1251f, 564f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2087f - 622f)))), 0u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-912f)))), 155f, _wgslsmith_f_op_f32(-1144f * _wgslsmith_div_f32(1312f, -1061f)))), -336f, _wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(5134i, -19017i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, arg_2.c) ^ vec2<i32>(var_0.b, arg_2.c), vec2<i32>(var_0.b, arg_2.c & var_0.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.c) * vec4<f32>(_wgslsmith_f_op_f32(var_1.b * var_1.a.e.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.a.c.x, var_1.a.c.x, true)))), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.e.x))))));
    let var_3 = func_2();
    return var_2.x;
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = vec3<u32>(~18806u, _wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 2857u), vec2<u32>(4294967295u, 5505u))), _wgslsmith_sub_vec2_u32(min(vec2<u32>(32417u, u_input.a), vec2<u32>(46852u, u_input.a)), ~vec2<u32>(1u, u_input.b))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(63120u | u_input.b, u_input.b, firstLeadingBit(4294967295u), u_input.b), vec4<u32>(_wgslsmith_mult_u32(52551u, 30840u), ~4294967295u, u_input.b, 26508u)) % 32u), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(47817u, u_input.b), vec2<u32>(u_input.b, 0u), vec2<u32>(0u, u_input.a)), func_1(Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.a, 1u), 7526u, arg_1, 3269u, arg_1), arg_0, vec2<i32>(0i, 2147483647i)), vec3<bool>(true, true, true), false, true).b)));
    global0 = all(vec4<bool>(true, true, true, true));
    global1 = array<vec3<f32>, 14>();
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.zx, ~reverseBits(var_0.yz)) >> (_wgslsmith_mod_vec2_u32(var_0.xx ^ vec2<u32>(1u, 1u), vec2<u32>(69568u, abs(u_input.a))) % vec2<u32>(32u)), ~(~(~vec2<u32>(15935u, 4294967295u))));
    var var_2 = 49488u;
    return func_1(Struct_2(Struct_1(var_0, ~(~var_1.x), arg_1, _wgslsmith_div_u32(65346u, ~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -620f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_u32(var_0.zy, var_0.xy | vec2<u32>(47932u, var_0.x)), -1i, func_1(Struct_2(Struct_1(var_0, 36733u, arg_1, 36585u, arg_1), arg_2.x, vec2<i32>(-13159i, 1i)), vec3<bool>(true, true, true), true, all(vec3<bool>(false, true, true))))), vec2<i32>(_wgslsmith_mod_i32(4488i, 2147483647i), 21941i) << (_wgslsmith_clamp_vec2_u32(~var_0.xy, ~var_0.xy, vec2<u32>(99158u, u_input.b)) % vec2<u32>(32u))), vec3<bool>(any(vec4<bool>(true, true, true, true)) | any(vec2<bool>(true, true)), _wgslsmith_add_i32(~(-9634i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 20478i), vec3<i32>(2147483647i, -7170i, 12567i))) <= abs(min(2147483647i, -2147483647i)), true), any(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true)), any(vec4<bool>(-389f == arg_0, !any(vec3<bool>(false, true, true)), true, true && (arg_0 < -1870f))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(4294967295u, _wgslsmith_mult_i32(-35982i, arg_0.c), func_5(arg_1.e.x, arg_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.c.x) + arg_1.c.zw)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1733f)))));
    let var_1 = vec3<bool>(any(!vec2<bool>(any(vec2<bool>(true, true)), true)), false, true);
    global1 = array<vec3<f32>, 14>();
    global1 = array<vec3<f32>, 14>();
    let var_2 = Struct_2(arg_1, 466f, vec2<i32>(select(max(~43914i, firstLeadingBit(-15310i)), abs(_wgslsmith_sub_i32(-2147483647i, arg_0.c)), var_1.x), ~arg_0.c));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(20843u, 1i, func_1(Struct_2(Struct_1(vec3<u32>(4294967295u, 16668u, 4294967295u), u_input.b, vec4<f32>(-1000f, -367f, -661f, -588f), u_input.b, vec4<f32>(-1389f, 2803f, 658f, 256f)), -795f, vec2<i32>(1i, -17703i)), vec3<bool>(false, false, true), false, false))), _wgslsmith_f_op_f32(f32(-1f) * -1038f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-743f, 724f, 2355f, 660f), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(193f, -398f, -1211f, -962f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(265f, 217f, 323f, -104f)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, -453f))), func_2().zy))), Struct_1(firstTrailingBit(~vec3<u32>(u_input.a, u_input.b, u_input.b)), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f)), 415f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1981f), _wgslsmith_f_op_f32(226f * 675f)), _wgslsmith_div_f32(426f, 1095f)), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -823f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2349f - 933f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-477f * 662f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(617f + -319f) - _wgslsmith_f_op_f32(496f - 627f)))));
    var_0 = func_6(func_1(Struct_2(func_6(Struct_3(var_0.d, vec2<u32>(var_0.a.x, 57131u), 59014i), Struct_1(vec3<u32>(16758u, u_input.a, 16839u), 71854u, vec4<f32>(var_0.e.x, var_0.c.x, 1210f, var_0.c.x), 44237u, vec4<f32>(var_0.e.x, var_0.e.x, var_0.c.x, 436f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_div_f32(2872f, -401f)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(25167i, 69090i, 48165i, -44199i), vec4<i32>(2147483647i, 33544i, 3250i, 2147483647i)), 1i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(func_2().x, false, all(vec3<bool>(true, false, true)))), select(func_2().x, true, !(var_0.a.x == 28712u)), false), func_6(func_1(Struct_2(func_6(Struct_3(1u, vec2<u32>(var_0.d, u_input.a), -23395i), Struct_1(vec3<u32>(var_0.a.x, 36359u, var_0.d), 0u, var_0.e, var_0.a.x, var_0.e)), _wgslsmith_f_op_f32(f32(-1f) * -1894f), vec2<i32>(1i, 0i) >> (var_0.a.xx % vec2<u32>(32u))), vec3<bool>(2894u == u_input.b, any(vec2<bool>(true, false)), true), false, true), Struct_1(vec3<u32>(~4294967295u, ~u_input.b, var_0.d >> (4294967295u % 32u)), 0u, vec4<f32>(_wgslsmith_div_f32(var_0.c.x, 963f), _wgslsmith_f_op_f32(-var_0.e.x), -112f, var_0.e.x), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1007f, var_0.e.x, -386f) + var_0.e) + _wgslsmith_f_op_vec4_f32(exp2(var_0.c))))));
    let var_1 = _wgslsmith_sub_vec4_u32(~(~(~(vec4<u32>(880u, 35744u, u_input.b, 4294967295u) ^ vec4<u32>(var_0.b, 152494u, 9043u, 0u)))), vec4<u32>(~4294967295u, var_0.b, 1u, u_input.b) | ~vec4<u32>(0u, 4294967295u, abs(var_0.d), 134453u ^ u_input.b));
    let var_2 = ~(-select(-vec2<i32>(-17834i, 2147483647i), abs(vec2<i32>(62897i, 1i)), select(false, false, false))) << (~abs(~abs(vec2<u32>(var_1.x, 69877u))) % vec2<u32>(32u));
    global0 = true;
    var var_3 = Struct_4(_wgslsmith_dot_vec2_i32(var_2, vec2<i32>(2147483647i, -9524i)) & var_2.x, Struct_2(func_6(func_1(Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, u_input.b), 28267u, vec4<f32>(402f, var_0.c.x, 1000f, var_0.c.x), 17242u, var_0.c), 259f, var_2), vec3<bool>(false, true, true), true, var_0.b < var_1.x), func_6(func_1(Struct_2(Struct_1(vec3<u32>(u_input.b, var_1.x, 0u), var_0.a.x, var_0.e, 0u, var_0.e), var_0.c.x, var_2), vec3<bool>(true, true, false), false, true), Struct_1(var_0.a, var_1.x, var_0.c, 40705u, vec4<f32>(var_0.e.x, var_0.c.x, 1091f, var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-470f * 895f)) * _wgslsmith_f_op_f32(func_3())), ~var_2), Struct_2(func_6(func_5(var_0.c.x, _wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(199f, var_0.e.x, var_0.e.x, var_0.c.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1495f, var_0.c.x) - vec2<f32>(var_0.e.x, var_0.e.x))), Struct_1(firstTrailingBit(vec3<u32>(u_input.b, u_input.a, var_0.b)), var_1.x, _wgslsmith_f_op_vec4_f32(max(var_0.e, var_0.c)), 9416u ^ var_1.x, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), vec2<i32>(var_2.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, var_2.x, -11941i, -2147483647i), min(vec4<i32>(var_2.x, var_2.x, 0i, -18183i), vec4<i32>(4919i, 18073i, -2147483647i, var_2.x))))), func_6(func_1(Struct_2(Struct_1(var_0.a, u_input.a, vec4<f32>(var_0.e.x, 1000f, 1705f, var_0.e.x), var_1.x, var_0.e), var_0.e.x, var_2), vec3<bool>(true, true, true), true, func_2().x), Struct_1(~var_1.yyw, ~(~var_1.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(var_0.c)))), var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c))))));
    var_3 = Struct_4(var_2.x, var_3.b, var_3.b, func_6(func_1(var_3.c, !func_2(), true, true && (-45316i > var_3.a)), var_3.b.a));
    global0 = !(var_3.b.c.x < abs(_wgslsmith_add_i32(50980i, reverseBits(49079i))));
    var var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, ~var_4.d), _wgslsmith_div_vec2_i32(select(_wgslsmith_sub_vec2_i32(var_3.c.c >> (vec2<u32>(59563u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(var_3.c.c.x, -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(0i, 19866i), var_2.x ^ 0i), vec2<bool>(true, false)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-1i, var_2.x)))), -2147483647i);
}

