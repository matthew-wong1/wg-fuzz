struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1275f + 612f), -651f), _wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-744f, -216f)), _wgslsmith_div_f32(-862f, _wgslsmith_f_op_f32(-1000f - -591f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-528f, _wgslsmith_f_op_f32(round(-1000f)), 894f, _wgslsmith_f_op_f32(round(-555f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 313f, -2697f, 306f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-463f, 1329f, 1932f, -1159f))))), arg_0))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    let var_0 = vec2<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(arg_3.b.a, arg_3.b.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-15503i, -1i, -7837i), vec3<i32>(arg_3.b.a, arg_0, arg_0)), arg_3.b.a | 0i, arg_0), -vec4<i32>(~arg_3.b.a, -27399i, reverseBits(arg_3.b.a), _wgslsmith_sub_i32(arg_0, arg_3.b.a))));
    let var_1 = -1000f;
    var var_2 = u_input.b.x;
    return _wgslsmith_add_i32(countOneBits(reverseBits(_wgslsmith_mult_i32(arg_0, -2147483647i))), -2147483647i) | ~(-arg_0);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec2<f32>(-1812f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(249f, -1275f), _wgslsmith_div_f32(352f, 407f))), _wgslsmith_f_op_f32(-481f - 1f))));
    var var_1 = -(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b, arg_1.b), ~vec2<i32>(2147483647i, -10232i)) | ~vec2<i32>(~arg_1.b, _wgslsmith_clamp_i32(18181i, -12283i, arg_1.a.x)));
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 0i), arg_1.a, vec2<i32>(var_1.x, func_4(_wgslsmith_mod_i32(_wgslsmith_add_i32(-3191i, arg_1.b), countOneBits(var_1.x)), u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, arg_1.d.x, arg_1.d.x, true), vec3<i32>(-1i, -1i, -2147483647i), Struct_1(arg_1.a, arg_1.b, arg_0.x, vec3<bool>(arg_1.d.x, arg_1.d.x, false), 47854u), vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 228f, 737f))), Struct_3(select(arg_1.d.xy, vec2<bool>(arg_1.d.x, arg_1.d.x), arg_1.d.zz), Struct_2(0i, 2464u, vec4<bool>(false, arg_1.d.x, true, arg_1.d.x))))));
    var_1 = _wgslsmith_div_vec2_i32(arg_1.a, -arg_1.a | -(~arg_1.a));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), Struct_2(abs(arg_1.a.x), arg_0.x ^ arg_1.c, select(vec4<bool>(arg_1.d.x, any(vec3<bool>(true, arg_1.d.x, true)), select(false, false, true), arg_1.d.x), !select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(true, false, arg_1.d.x, false), false), true)));
    return vec3<bool>(var_2.b.c.x, any(vec2<bool>(!var_2.b.c.x, any(select(arg_1.d.yy, vec2<bool>(false, var_2.b.c.x), var_2.b.c.x)))), false);
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = !(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), false), !func_2(u_input.b, Struct_1(vec2<i32>(22579i, 2147483647i), 41027i, u_input.b.x, vec3<bool>(true, false, true), u_input.a))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1345f, 2436f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, 578f, 592f) * vec3<f32>(-180f, 1428f, 1299f)), _wgslsmith_div_vec3_f32(vec3<f32>(249f, 375f, 1671f), vec3<f32>(953f, -284f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(813f, -1122f, -1312f), vec3<f32>(-723f, -426f, 1350f), vec3<bool>(true, false, false))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(129f, 497f, 1302f) * vec3<f32>(221f, 1000f, -530f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1179f, 1000f, -239f))))), any(vec2<bool>(true, var_0.x))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 148f)) - var_1.x)), Struct_2(-(~(i32(-1i) * -2147483647i)), _wgslsmith_sub_u32(9502u, 9324u) | ~_wgslsmith_mod_u32(4294967295u, u_input.a), select(select(vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, var_0.x, false, true), any(vec3<bool>(false, true, var_0.x))), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), !var_0.x), false)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1606f, var_1.x, 1076f), vec3<f32>(319f, var_2.a, 227f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(240f, _wgslsmith_f_op_f32(exp2(var_2.a)), 449f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1184f, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(470f, var_1.x, 626f), vec3<f32>(var_2.a, 425f, 1680f))))), var_2.b.c.xzz)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-196f, var_2.a, var_2.a), vec3<f32>(var_1.x, -2017f, 365f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -1577f, -1594f) - vec3<f32>(1333f, var_2.a, var_2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1335f, var_2.a, var_2.a))), var_2.b.c.yzz)))));
    let var_3 = firstLeadingBit(firstTrailingBit(~countOneBits(1u)));
    return func_2(u_input.b, Struct_1(firstTrailingBit(~(~vec2<i32>(var_2.b.a, 2147483647i))), 24983i, u_input.b.x, vec3<bool>(!var_2.b.c.x && false, var_2.b.c.x, any(var_2.b.c.wzz)), countOneBits(4294967295u)));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b.a, arg_2.a.x, arg_3.b.a), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.b)), func_4(arg_3.b.a, vec4<u32>(u_input.c, arg_3.b.b, 7567u, arg_3.b.b), vec4<f32>(arg_3.a, 1101f, 877f, -519f), Struct_3(arg_3.b.c.yx, Struct_2(-2147483647i, 2395u, vec4<bool>(true, arg_2.d.x, arg_3.b.c.x, arg_3.b.c.x)))), _wgslsmith_div_i32(1i, -15049i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, 0i), vec3<i32>(-1i, arg_2.b, -2147483647i))), vec4<i32>(func_4(25487i, u_input.b, vec4<f32>(-2029f, -746f, -1000f, arg_3.a), Struct_3(arg_2.d.xx, Struct_2(arg_2.b, arg_3.b.b, vec4<bool>(arg_0.x, false, arg_2.d.x, arg_2.d.x)))), arg_3.b.a, arg_2.a.x, _wgslsmith_mod_i32(arg_3.b.a, arg_3.b.a))), select(abs(vec4<i32>(arg_3.b.a, arg_3.b.a, 30668i, 1i)), select(vec4<i32>(-2147483647i, arg_3.b.a, arg_2.b, -9049i), vec4<i32>(arg_2.a.x, 4205i, 25410i, arg_3.b.a), vec4<bool>(arg_3.b.c.x, arg_2.d.x, arg_0.x, arg_0.x)), arg_3.b.c) << (~countOneBits(u_input.b) % vec4<u32>(32u))), reverseBits(-vec4<i32>(-12721i, 0i, arg_2.b, arg_3.b.a)) | max(-vec4<i32>(arg_2.a.x, -3816i, arg_2.b, arg_3.b.a) & -vec4<i32>(25610i, arg_3.b.a, -512i, arg_3.b.a), countOneBits(vec4<i32>(arg_3.b.a, -1i, arg_3.b.a, arg_3.b.a)) | vec4<i32>(-20924i, 38994i, arg_3.b.a, arg_3.b.a)));
    var var_1 = func_2(u_input.b, arg_2);
    var var_2 = abs(firstTrailingBit(u_input.b));
    let var_3 = min(u_input.b, vec4<u32>(abs(var_2.x), _wgslsmith_sub_u32(select(abs(u_input.a), firstLeadingBit(9771u), var_1.x), _wgslsmith_mod_u32(reverseBits(var_2.x), ~arg_3.b.b)), 4294967295u, 8835u));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a))), 627f, arg_3.a, arg_1) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.a, arg_1, arg_3.a, 650f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1000f, arg_3.a) - vec4<f32>(553f, 740f, arg_1, arg_3.a))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) * 239f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(888f)), arg_1) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1)))), arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + arg_1)));
    return Struct_3(!vec2<bool>(!arg_2.d.x, var_1.x), arg_3.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = func_5(vec3<bool>(true, all(!select(vec4<bool>(false, arg_1.a.x, arg_0.b.c.x, false), vec4<bool>(true, true, true, arg_1.a.x), arg_1.b.c)), arg_1.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), Struct_1(vec2<i32>(firstLeadingBit(~arg_0.b.a), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.a, arg_0.b.a, 2147483647i, arg_0.b.a) | select(vec4<i32>(arg_0.b.a, -2147483647i, arg_3, 57548i), vec4<i32>(1i, -38207i, 4681i, arg_1.b.a), false), ~vec4<i32>(arg_0.b.a, arg_1.b.a, -12088i, -20541i)), min(~(~arg_0.b.b), 4294967295u), arg_0.b.c.xxx, max(u_input.a & reverseBits(23329u), firstLeadingBit(1u))), Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(630f)))), Struct_2(1i, arg_0.b.b, !(!vec4<bool>(arg_1.b.c.x, false, true, arg_0.a.x))))).b;
    var_0 = Struct_2(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -1i), func_5(arg_1.b.c.zzx, _wgslsmith_div_f32(arg_2, -558f), Struct_1(vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0.b.a), vec2<i32>(-16841i, var_0.a))), ~(~(-1i)), ~4294967295u, arg_1.b.c.zyz, 4294967295u), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(758f, 568f))), func_5(vec3<bool>(true, arg_1.b.c.x, true), _wgslsmith_f_op_f32(round(-1000f)), Struct_1(vec2<i32>(33063i, var_0.a), -1i, 74697u, vec3<bool>(var_0.c.x, var_0.c.x, false), 4294967295u), Struct_5(-1325f, Struct_2(8333i, 4294967295u, vec4<bool>(false, arg_1.b.c.x, true, arg_0.a.x)))).b)).b.b, vec4<bool>(!(any(var_0.c) || !arg_0.b.c.x), func_1(reverseBits(vec3<u32>(u_input.b.x, arg_0.b.b, var_0.b))).x, arg_0.b.b < 1u, !arg_1.a.x));
    var var_1 = Struct_2(arg_1.b.a, abs(~var_0.b), vec4<bool>(var_0.c.x, func_1(u_input.b.xzx | u_input.b.yyx).x, true, !arg_1.b.c.x));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(750f + arg_2), arg_0.b);
    var var_3 = firstLeadingBit(18122i);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_6(func_5(func_1(vec3<u32>(20310u, 4294967295u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec2<i32>(1i, -5934i), -1i, 0u, vec3<bool>(false, true, false), u_input.a), Struct_5(-1090f, Struct_2(28211i, u_input.b.x, vec4<bool>(true, true, true, false)))), Struct_3(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), func_5(vec3<bool>(false, false, false), 397f, Struct_1(vec2<i32>(44468i, 266i), 1137i, 0u, vec3<bool>(false, false, false), 1u), Struct_5(-276f, Struct_2(1i, u_input.a, vec4<bool>(true, true, false, false)))).b), 524f, ~58476i), _wgslsmith_mult_i32(~1i, countOneBits(1i)) << (u_input.c % 32u)), ~vec2<i32>(2147483647i, 3617i), ~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, 0i))));
    let var_1 = vec2<bool>(false, true);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-601f, 302f, 714f, 126f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -198f, 335f, 803f) - vec4<f32>(-2459f, 143f, -1212f, 1210f)), true | var_1.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1255f * -905f), _wgslsmith_div_f32(-754f, 973f), _wgslsmith_f_op_f32(step(-1601f, -260f)), _wgslsmith_f_op_f32(trunc(-745f))) - vec4<f32>(_wgslsmith_f_op_f32(select(-271f, 320f, var_1.x)), _wgslsmith_f_op_f32(-425f * 569f), _wgslsmith_f_op_f32(2252f - 1383f), 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, 361f, 675f, 441f) * vec4<f32>(-506f, 671f, 1986f, 483f)) - _wgslsmith_div_vec4_f32(vec4<f32>(824f, -117f, 626f, -1252f), vec4<f32>(-285f, 521f, -339f, 273f)))))));
    let var_3 = -288f;
    var_0 = vec2<i32>(var_0.x, func_5(vec3<bool>(false, var_1.x, true), var_2.x, Struct_1(countOneBits(-vec2<i32>(-2147483647i, var_0.x)), func_4(var_0.x ^ -9495i, u_input.b, _wgslsmith_div_vec4_f32(var_2, vec4<f32>(-1684f, 803f, var_3, var_2.x)), Struct_3(var_1, Struct_2(20551i, u_input.a, vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), u_input.c, !(!vec3<bool>(var_1.x, false, var_1.x)), ~countOneBits(40620u)), Struct_5(-2636f, func_5(vec3<bool>(var_1.x, false, false), var_3, Struct_1(vec2<i32>(var_0.x, -12562i), var_0.x, 0u, vec3<bool>(var_1.x, var_1.x, true), u_input.a), Struct_5(var_3, Struct_2(var_0.x, 0u, vec4<bool>(var_1.x, var_1.x, var_1.x, false)))).b)).b.a);
    var_0 = reverseBits(-(~(~vec2<i32>(13558i, 29915i))));
    var_0 = vec2<i32>(-var_0.x, var_0.x & var_0.x);
    var_0 = max(vec2<i32>(-func_4(var_0.x, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.c, u_input.c, 35786u, 81300u)), _wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(1437f, var_3, var_3, -1000f)), func_5(vec3<bool>(true, false, var_1.x), var_3, Struct_1(vec2<i32>(var_0.x, var_0.x), var_0.x, u_input.a, vec3<bool>(false, false, false), u_input.c), Struct_5(var_2.x, Struct_2(var_0.x, u_input.b.x, vec4<bool>(var_1.x, var_1.x, var_1.x, false))))), -1i), max(vec2<i32>(_wgslsmith_mult_i32(func_5(vec3<bool>(false, var_1.x, var_1.x), 1475f, Struct_1(vec2<i32>(var_0.x, var_0.x), var_0.x, u_input.c, vec3<bool>(true, var_1.x, var_1.x), u_input.c), Struct_5(var_3, Struct_2(var_0.x, 4294967295u, vec4<bool>(var_1.x, var_1.x, var_1.x, false)))).b.a, var_0.x >> (4294967295u % 32u)), _wgslsmith_mod_i32(-33178i, 1i)), vec2<i32>(var_0.x, -83379i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-30025i, 2147483647i, 22128i, var_0.x), vec4<i32>(4588i, var_0.x, var_0.x, -1i)) ^ (vec4<i32>(var_0.x, 27524i, var_0.x, 87953i) << (u_input.b % vec4<u32>(32u))), ~(vec4<i32>(-23653i, 1i, var_0.x, 0i) >> (u_input.b % vec4<u32>(32u)))) << (max(vec4<u32>(78868u, u_input.a, 97524u, 0u) >> (select(u_input.b, vec4<u32>(69868u, u_input.a, u_input.b.x, u_input.c), vec4<bool>(false, true, true, var_1.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(19311u, u_input.b.x, 2756u, u_input.c), vec4<u32>(18239u, u_input.c, u_input.b.x, u_input.c))) % vec4<u32>(32u)));
}

