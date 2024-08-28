struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: i32 = -23650i;

var<private> global2: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_4(!select(!arg_0, vec3<bool>(!arg_0.x, arg_0.x & arg_0.x, false), arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(~35106u), u_input.c.x), u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(69947u, 1u), ~u_input.c.x, u_input.c.x), ~vec4<u32>(1u, u_input.e, 2927u, u_input.c.x) ^ abs(vec4<u32>(u_input.c.x, u_input.c.x, 1u, 83255u)))), arg_0.x);
    let var_1 = abs(6247i);
    var var_2 = !(true != (~(~u_input.b) >= abs(9707i)));
    let var_3 = Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-875f, _wgslsmith_f_op_f32(abs(819f))))) - -606f), vec4<bool>(any(select(vec3<bool>(false, arg_0.x, var_0.a.x), arg_0, arg_0)), arg_0.x || true, select(true, true, _wgslsmith_mult_u32(u_input.e, 4294967295u) == 53566u), !(_wgslsmith_add_i32(-9887i, var_1) >= -2147483647i)));
    return vec3<f32>(var_3.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1580f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1109f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1086f)), 581f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(257f))))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_u32(u_input.e, ~min(firstLeadingBit(u_input.e), abs(1u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), 1960f, -1037f);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(arg_1.x, false, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 969f, -1000f))))));
    global1 = abs(_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.b, u_input.d.x)), vec2<i32>(-1i) * -abs(vec2<i32>(u_input.a.x, 0i))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(407f + _wgslsmith_div_f32(-313f, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(231f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + -818f), _wgslsmith_f_op_f32(1911f - arg_0))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1034f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(round(var_1.x)))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xx) + var_1.zx), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-870f, 780f) + _wgslsmith_div_f32(var_1.x, var_1.x)), -453f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0) * _wgslsmith_f_op_f32(-var_1.x)), true)), !(!select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, true), arg_1.x))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-408f, _wgslsmith_f_op_f32(f32(-1f) * -1878f))))), _wgslsmith_f_op_f32(-arg_0), select(select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), !vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(true, arg_1.x, true, arg_1.x), !vec4<bool>(true, false, false, arg_1.x), arg_1.x))), Struct_1(-1026f, -1046f, vec4<bool>(arg_1.x, any(select(vec4<bool>(true, arg_1.x, false, false), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))), arg_1.x, true)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_2 {
    global1 = reverseBits(_wgslsmith_dot_vec3_i32(u_input.a ^ _wgslsmith_mod_vec3_i32(-u_input.d.yyz, _wgslsmith_clamp_vec3_i32(u_input.d.yxw, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.a)), vec3<i32>(_wgslsmith_div_i32(u_input.b << (u_input.c.x % 32u), -1i << (u_input.c.x % 32u)), min(0i, _wgslsmith_mod_i32(-11416i, u_input.d.x)), u_input.a.x)));
    var var_0 = vec2<i32>(~(-min(u_input.a.x & u_input.a.x, abs(u_input.a.x))), u_input.d.x);
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -911f), arg_0.a.a.d.c.zy);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_3(func_4(Struct_5(Struct_3(Struct_2(vec2<f32>(-962f, 198f), Struct_1(-631f, 499f, vec4<bool>(false, true, true, true)), Struct_1(-168f, 588f, vec4<bool>(true, true, true, true)), Struct_1(492f, -125f, vec4<bool>(false, false, false, true))), Struct_1(336f, 275f, vec4<bool>(true, true, false, true)), func_2(-213f, vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1917f, -338f, -945f, 976f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(298f, -2042f, -559f, 1413f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1220f, -969f, 365f, 153f), vec4<f32>(-995f, 507f, -811f, 352f), vec4<bool>(true, true, false, true)))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1600f, -1549f) - vec2<f32>(-828f, -925f)), Struct_1(220f, 466f, vec4<bool>(true, false, false, false)), func_2(-1395f, vec2<bool>(false, true)).c, func_2(-513f, vec2<bool>(true, false)).d), _wgslsmith_mod_u32(u_input.c.x, 0u) <= abs(30084u)), vec3<f32>(1116f, _wgslsmith_div_f32(-919f, -567f), _wgslsmith_f_op_f32(trunc(-584f)))), func_2(_wgslsmith_f_op_f32(select(317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(210f)) * 1000f), true)), vec2<bool>(true, true)).b, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1292f)), _wgslsmith_f_op_f32(-1197f + -1027f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(593f, -1158f), vec2<f32>(320f, -120f)) * vec2<f32>(-641f, -1000f))), Struct_1(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-226f)), -139f), func_4(Struct_5(Struct_3(Struct_2(vec2<f32>(1628f, -1000f), Struct_1(515f, 3669f, vec4<bool>(false, false, false, true)), Struct_1(-319f, 1802f, vec4<bool>(false, true, true, false)), Struct_1(1593f, 1622f, vec4<bool>(true, true, true, true))), Struct_1(-1000f, 856f, vec4<bool>(true, true, true, true)), Struct_2(vec2<f32>(-1535f, -1077f), Struct_1(208f, 1137f, vec4<bool>(false, true, false, false)), Struct_1(-1615f, 259f, vec4<bool>(false, true, true, true)), Struct_1(-931f, 2005f, vec4<bool>(true, false, true, false)))), vec4<f32>(133f, -171f, 1333f, 449f), vec4<f32>(-1389f, 1804f, -567f, -378f), Struct_2(vec2<f32>(-1065f, 693f), Struct_1(498f, 366f, vec4<bool>(false, false, true, false)), Struct_1(734f, -1000f, vec4<bool>(false, true, true, false)), Struct_1(-1488f, 297f, vec4<bool>(true, true, false, true))), false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-569f, -1246f, 753f), vec3<f32>(-221f, 1289f, -1192f), false))).c.c), Struct_1(-740f, _wgslsmith_div_f32(-434f, 1877f), vec4<bool>(true, true, u_input.b < u_input.a.x, true)), func_2(-2069f, select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true)))).c));
    let var_1 = u_input.d.zx ^ (-(~u_input.d.wy) >> (~vec2<u32>(arg_0.x, abs(u_input.e)) % vec2<u32>(32u)));
    var var_2 = var_0.c;
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1420f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-636f)) - _wgslsmith_f_op_f32(-var_2.b.a))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-595f, 919f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_2.a, vec2<f32>(-135f, var_2.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, var_0.a.a.x)))))), Struct_1(_wgslsmith_f_op_f32(-var_0.c.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.b)), func_4(Struct_5(Struct_3(var_0.c, var_0.b, var_0.c), vec4<f32>(-298f, var_0.b.a, var_0.a.c.a, var_2.b.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(338f, 1608f, 1108f, var_2.a.x) - vec4<f32>(1001f, -1035f, -753f, 1000f)), func_2(-324f, var_2.d.c.wx), true), vec3<f32>(_wgslsmith_f_op_f32(var_2.c.a * var_2.a.x), var_2.a.x, var_0.c.a.x)).d.c), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f + -467f))), !vec4<bool>(false, func_2(var_0.a.d.b, var_2.c.c.zw).b.c.x, var_2.b.c.x & true, false && var_0.c.b.c.x)), Struct_1(_wgslsmith_f_op_f32(sign(-1018f)), 800f, !(!var_2.d.c)));
    var var_3 = u_input.a.x;
    return Struct_3(var_0.a, Struct_1(_wgslsmith_div_f32(var_0.c.b.b, var_2.d.b), var_2.b.b, var_0.b.c), Struct_2(_wgslsmith_div_vec2_f32(var_0.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.a.x, var_0.b.b) - var_2.a))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1078f), func_2(-536f, func_2(1604f, var_2.d.c.zx).b.c.ww).d.b, select(!var_2.b.c, vec4<bool>(var_0.b.c.x, var_2.b.c.x, false, var_0.b.c.x), vec4<bool>(var_2.b.c.x, var_0.a.b.c.x, false, false))), Struct_1(_wgslsmith_f_op_f32(-var_0.c.b.a), -275f, vec4<bool>(true, false, !var_2.b.c.x, true)), func_4(Struct_5(Struct_3(var_0.c, Struct_1(1148f, var_0.c.b.a, vec4<bool>(false, var_2.c.c.x, var_2.b.c.x, var_2.d.c.x)), var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 877f, var_2.b.b, var_2.d.b)), vec4<f32>(var_0.b.b, var_0.c.c.b, var_2.a.x, 508f), Struct_2(var_2.a, var_2.d, var_2.b, var_0.b), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.c.a, 2772f, var_0.c.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, 606f, -278f)), var_2.d.c.x || var_0.a.b.c.x))).b));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0, arg_0.b.wzw).b.a - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.a.x - arg_0.a.c.a.x)))) * _wgslsmith_div_f32(arg_0.d.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(895f))));
    var var_1 = arg_0;
    var var_2 = vec4<bool>(func_1(firstTrailingBit(~vec4<u32>(u_input.e, u_input.c.x, 71976u, u_input.e))).c.d.c.x, false, all(select(func_1(vec4<u32>(1u, 4294967295u, u_input.e, 57915u)).a.d.c, arg_2, select(!vec4<bool>(var_1.d.d.c.x, var_1.d.b.c.x, arg_0.a.a.b.c.x, arg_0.d.b.c.x), !vec4<bool>(true, arg_2.x, var_1.e, false), func_4(Struct_5(Struct_3(Struct_2(var_1.a.c.a, arg_0.d.c, Struct_1(var_1.a.a.b.b, arg_0.c.x, arg_0.d.c.c), var_1.d.d), arg_0.a.c.b, Struct_2(arg_0.c.yy, arg_0.a.b, Struct_1(var_1.d.d.a, var_1.b.x, arg_0.a.c.b.c), Struct_1(arg_1.x, -1342f, vec4<bool>(true, arg_0.a.b.c.x, true, true)))), vec4<f32>(arg_1.x, arg_1.x, var_1.d.b.b, -548f), arg_0.c, Struct_2(var_1.a.c.a, arg_0.a.a.c, var_1.d.b, Struct_1(var_1.a.a.d.a, arg_0.d.b.a, arg_0.d.b.c)), true), vec3<f32>(-148f, -580f, -1591f)).b.c.x))), true);
    var var_3 = _wgslsmith_add_vec4_i32(u_input.d, _wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(reverseBits(-2147483647i), u_input.b, ~2147483647i, -(~u_input.a.x))));
    return Struct_1(_wgslsmith_f_op_f32(-388f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(335f, arg_1.x), -1000f))), -1000f, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 41455i;
    let var_0 = 4294967295u;
    global2 = var_0;
    let var_1 = func_5(Struct_5(func_1(abs(vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u) << (vec4<u32>(var_0, u_input.c.x, 1u, 0u) % vec4<u32>(32u)))), vec4<f32>(-1671f, _wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1032f))), _wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(-670f - 439f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(984f, 575f, -1112f, 750f), vec4<f32>(1000f, 371f, 131f, -460f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, -212f, -687f, 104f)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, -622f) + vec2<f32>(641f, -447f))), func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.e))).a.d, func_2(1000f, vec2<bool>(true, true)).b, func_1(~vec4<u32>(4305u, 4294967295u, 4741u, u_input.e)).a.c), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-912f, 987f, 1121f, -773f)) * vec4<f32>(-1000f, -473f, -1000f, -260f))))), func_2(-366f, vec2<bool>(all(vec4<bool>(true, true, true, true)), true)).b.c);
    let var_2 = true;
    let var_3 = vec3<u32>(var_0, 1u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zx >> (global0[_wgslsmith_index_u32(var_0 >> (_wgslsmith_sub_u32(var_3.x & u_input.e, max(88159u, u_input.c.x)) % 32u), 10u)] % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1120f, -200f, var_1.b, -1150f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1867f, var_1.a, var_1.a)))))));
}

