struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = !(u_input.b.x <= u_input.d);
    var var_1 = Struct_3(-2085i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-400f, 358f, 806f), vec3<f32>(1377f, -1000f, 143f))) * vec3<f32>(-2098f, 1558f, 518f)))) + vec3<f32>(1f, 1f, 1f)), -262f, select(vec4<bool>(select(var_0, true, true), false, true, true), vec4<bool>(true, false, true, !var_0), !select(select(vec4<bool>(var_0, false, true, true), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, false, false)), vec4<bool>(var_0, true, var_0, var_0), true)), Struct_2(firstTrailingBit(u_input.b << (u_input.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -2501f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-419f - 1861f), _wgslsmith_f_op_f32(step(-541f, -272f)))))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-844f + -1053f), false)), true)));
    let var_2 = var_1.e.e;
    var var_3 = _wgslsmith_sub_vec4_i32(min(max(vec4<i32>(-30431i, 23482i, u_input.c, var_1.a) ^ vec4<i32>(arg_0.x, u_input.c, 1317i, u_input.c), -vec4<i32>(global0.x, arg_0.x, 4749i, var_1.a)) | select(abs(vec4<i32>(var_1.a, u_input.c, arg_0.x, 1i)), vec4<i32>(2147483647i, 33410i, -6039i, arg_0.x), true), vec4<i32>(_wgslsmith_add_i32(min(u_input.c, global0.x), -global0.x), 45478i, (u_input.c >> (1u % 32u)) << (_wgslsmith_mult_u32(var_1.e.a.x, 1u) % 32u), max(~u_input.c, 15779i))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, min(-63589i, arg_0.x), var_1.a, arg_0.x), countOneBits(~(~vec4<i32>(-23532i, global0.x, -2147483647i, -8303i)))));
    var_1 = Struct_3(-16661i, vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -1186f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(733f, 1000f)), -1839f)), -361f), _wgslsmith_f_op_f32(-var_1.b.x), vec4<bool>(all(var_1.d), !all(select(var_1.d.xzy, var_1.d.zxx, vec3<bool>(false, var_2.b, var_0))), all(var_1.d.yxy), any(var_1.d)), Struct_2(~_wgslsmith_div_vec2_u32(u_input.b, u_input.b), _wgslsmith_f_op_f32(select(316f, -215f, true)), -1000f, vec2<bool>(any(var_1.d.xzw) | true, var_2.b), var_1.e.e));
    return select(var_1.d.wyz, vec3<bool>(all(select(var_1.d.xw, var_1.e.d, vec2<bool>(true, var_0))), any(var_1.d.yyw), var_2.b), var_1.d.xzw);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5) -> vec4<u32> {
    let var_0 = select(max(select(global0.wyy, global0.xxx, !(!vec3<bool>(false, false, arg_1.c.x))), vec3<i32>(u_input.c, i32(-1i) * -31542i, _wgslsmith_div_i32(global0.x, arg_0.x)) >> (~(~vec3<u32>(arg_1.b.x, 1u, u_input.a.x)) % vec3<u32>(32u))), ~arg_0, vec3<bool>(select(u_input.a.x, 18036u, any(vec4<bool>(true, arg_1.c.x, false, false))) > reverseBits(arg_1.d.x << (4294967295u % 32u)), 1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-138f, 595f))), true | (_wgslsmith_sub_i32(arg_0.x, arg_1.a) <= (global0.x >> (arg_1.d.x % 32u)))));
    let var_1 = global0.yx;
    var var_2 = Struct_3(min(firstTrailingBit(1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, arg_0.x, 1i, u_input.c), vec4<i32>(1i, 0i, 2147483647i, u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, 177f)), -977f, _wgslsmith_f_op_f32(490f * 979f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)))), !(!vec4<bool>(!arg_1.c.x, all(arg_1.c), arg_1.c.x, u_input.a.x == arg_1.d.x)), Struct_2(arg_1.d, -1970f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-989f - -1905f)))), arg_1.c.xy, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1448f * -138f) - _wgslsmith_f_op_f32(trunc(-360f))), arg_1.c.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, _wgslsmith_div_vec3_f32(vec3<f32>(-792f, var_2.c, 1403f), _wgslsmith_f_op_vec3_f32(select(var_2.b, _wgslsmith_f_op_vec3_f32(var_2.b * var_2.b), any(arg_1.c)))))) - vec3<f32>(var_2.e.c, _wgslsmith_f_op_f32(trunc(var_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1882f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_2.b.x, 454f)))))));
    global0 = _wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(_wgslsmith_mod_i32(8677i, 41417i), 23801i, u_input.c, u_input.c | 2147483647i)), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 25638i, arg_0.x, u_input.c) >> (vec4<u32>(u_input.d, 70658u, var_2.e.a.x, 22779u) % vec4<u32>(32u)), abs(vec4<i32>(-5875i, -1i, var_2.a, arg_1.a)))));
    return vec4<u32>(~(~_wgslsmith_mult_u32(0u, ~4729u)), arg_1.d.x, firstLeadingBit(_wgslsmith_sub_u32(var_2.e.a.x, var_2.e.a.x) & 36806u) >> (firstTrailingBit(4294967295u) % 32u), min(_wgslsmith_sub_u32(var_2.e.a.x, min(~73896u, 1u)), 0u));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global0 = ~vec4<i32>(arg_0, u_input.c, -u_input.c, _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(arg_0 & -4175i, arg_0)));
    var var_0 = Struct_4(abs(func_4(abs(vec3<i32>(u_input.c, global0.x, 1i)), Struct_5(select(1i, 0i, arg_1), u_input.a, func_3(vec2<i32>(arg_0, -28698i)), countOneBits(u_input.a)))), _wgslsmith_add_vec4_i32(~(~countOneBits(vec4<i32>(-2147483647i, arg_0, 2147483647i, arg_0))), max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, -46805i, u_input.c), vec4<i32>(global0.x, -5692i, arg_0, 28706i)), -reverseBits(vec4<i32>(global0.x, 0i, 0i, global0.x)))));
    var_0 = Struct_4(~vec4<u32>(87516u, 14092u, abs(23595u), _wgslsmith_mult_u32(var_0.a.x, 4294967295u)) >> (vec4<u32>(899u, ~u_input.d | (u_input.d & 4294967295u), 14886u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-1i) * -(~vec4<i32>(global0.x, arg_0, 2147483647i, var_0.b.x)));
    var var_1 = Struct_3(-_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(var_0.b, _wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, 34376i, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1525f, 580f, arg_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1452f, 237f, 135f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1222f, -1080f, 434f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, arg_2.x, arg_2.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -172f)))), select(vec4<bool>(all(!vec4<bool>(false, arg_1, true, arg_1)), true, arg_1, !all(vec4<bool>(false, arg_1, arg_1, true))), select(vec4<bool>(false, arg_1 | false, arg_1, true), vec4<bool>(false, all(vec3<bool>(true, arg_1, false)), var_0.a.x > u_input.a.x, global0.x > u_input.c), true), arg_1), Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(var_0.a.zyy), select(var_0.a.zxz, var_0.a.yzy, vec3<bool>(false, false, arg_1))), ~1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), _wgslsmith_f_op_f32(-arg_2.x), !select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), select(vec2<bool>(false, false), vec2<bool>(true, arg_1), arg_1)), Struct_1(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-1000f + arg_2.x))), true)));
    var var_2 = Struct_4(var_0.a, -vec4<i32>(_wgslsmith_mod_i32(~1i, firstTrailingBit(var_1.a)), _wgslsmith_clamp_i32(arg_0, -var_0.b.x, countOneBits(-31998i)), arg_0, _wgslsmith_div_i32(max(-1i, var_1.a), _wgslsmith_dot_vec3_i32(var_0.b.xxy, var_0.b.xxz))));
    return Struct_1(1000f, var_1.d.x);
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> f32 {
    var var_0 = Struct_2(arg_0.d, arg_1, arg_1, !(!arg_0.c.zz), func_2(1i, arg_0.c.x & arg_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, -1604f)))));
    var var_1 = Struct_4(~vec4<u32>(u_input.a.x, 60212u, ~max(8543u, 4294967295u), 4294967295u), _wgslsmith_add_vec4_i32(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(22604i, -299i, 1i, -57752i), vec4<i32>(global0.x, 29665i, global0.x, u_input.c))), ~(countOneBits(vec4<i32>(-26539i, -2147483647i, -20029i, arg_0.a)) >> (vec4<u32>(38994u, var_0.a.x, var_0.a.x, arg_0.b.x) % vec4<u32>(32u)))));
    var_1 = Struct_4(_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(614u, 71269u, ~var_0.a.x, ~u_input.a.x)), var_1.b);
    let var_2 = Struct_2(vec2<u32>(~(~var_0.a.x), ~_wgslsmith_div_u32(~0u, var_1.a.x & arg_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-808f)), arg_1), _wgslsmith_f_op_f32(-1368f - var_0.b), arg_0.c.yy, func_2(-29405i, arg_0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1169f, arg_1))), vec2<f32>(arg_1, arg_1)) - vec2<f32>(_wgslsmith_f_op_f32(var_0.b - -1000f), func_2(var_1.b.x, false, vec2<f32>(-1522f, -167f)).a))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-957f, 1757f, -763f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.a) + -853f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(555f, func_2(11418i, true && !arg_0.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1458f, var_2.c)))).a)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1312f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> vec4<u32> {
    global0 = -vec4<i32>(-global0.x, -((-2147483647i >> (arg_1.a.x % 32u)) ^ (i32(-1i) * -7457i)), -1i, -_wgslsmith_dot_vec3_i32(global0.xww >> (vec3<u32>(u_input.a.x, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u)), -global0.yzy));
    let var_0 = false;
    global0 = select(vec4<i32>(~(-10251i), global0.x, firstTrailingBit(_wgslsmith_sub_i32(global0.x, -1949i)) << (_wgslsmith_clamp_u32(42019u, 1u, 10469u ^ u_input.b.x) % 32u), global0.x), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.c, -2147483647i, u_input.c, 67389i), -vec4<i32>(-2147483647i, 39003i, global0.x, u_input.c), any(vec4<bool>(false, arg_1.e.b, false, arg_1.d.x))) << (~vec4<u32>(0u, 4294967295u, u_input.d, arg_1.a.x) % vec4<u32>(32u)), vec4<i32>(-global0.x << (select(u_input.b.x, 4294967295u, true) % 32u), ~global0.x, -global0.x, ~(~global0.x))), true);
    return reverseBits(vec4<u32>(_wgslsmith_clamp_u32(u_input.d | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(u_input.a.x, 35512u, 14088u)), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 69175u)) << ((40680u | min(arg_1.a.x, u_input.d)) % 32u), u_input.b.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, arg_1.a.x), vec3<u32>(8140u, u_input.a.x, 54749u)), u_input.b.x), arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(~u_input.a.x, u_input.a.x >> (u_input.d % 32u), 18242u, 0u)) >> (~(~vec4<u32>(0u, u_input.b.x, u_input.b.x, 4438u)) % vec4<u32>(32u)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-707f, -951f, false))))), Struct_2(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(0u, u_input.d)), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(14924u, u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_5(global0.x, vec2<u32>(0u, 4294967295u), vec3<bool>(false, true, true), u_input.a), 265f)), _wgslsmith_f_op_f32(820f - -1157f))), _wgslsmith_f_op_f32(f32(-1f) * -2413f), vec2<bool>(true, func_3(vec2<i32>(0i, u_input.c)).x), func_2(i32(-1i) * -35751i, any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 990f)))))));
    let var_1 = var_0.x;
    let var_2 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 24739u), firstTrailingBit(~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(var_0.x, u_input.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1417f, -1169f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-550f, -143f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1238f, 1384f) * _wgslsmith_f_op_f32(step(-109f, 1000f))))), vec2<bool>(false, ((-25670i >> (1u % 32u)) << ((1u << (var_0.x % 32u)) % 32u)) >= (global0.x & (i32(-1i) * -2147483647i))), func_2(69589i, func_2(-2147483647i, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, 1404f)))).b, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1079f, 1369f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.e.a * -468f));
}

