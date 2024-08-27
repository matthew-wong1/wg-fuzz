struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = ~u_input.c;
    var_0 = (11744u & _wgslsmith_clamp_u32(abs(max(arg_0.b.a.a.x, 4294967295u)), firstTrailingBit(~arg_0.b.a.b), countOneBits(4294967295u) | _wgslsmith_mod_u32(arg_0.a.a.x, 15744u))) << (max(1u, 14321u) % 32u);
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b, 0u, u_input.b), vec4<u32>(21815u, 29866u, 169737u, 4294967295u), vec4<u32>(u_input.b, arg_1.a.a.x, u_input.b, 4294967295u)), vec4<u32>(2154u, u_input.c, 1u, 1u) & vec4<u32>(u_input.b, 13877u, 0u, arg_1.a.b), arg_0.c.x > -395f)), ~max(vec4<u32>(arg_0.d.a.a.x, 73085u, 20284u, arg_0.d.a.a.x), vec4<u32>(75584u, arg_1.a.b, 1u, arg_1.a.b))) | 0u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_div_f32(arg_0.c.x, 1f)))));
    let var_3 = arg_1.a;
    return u_input.d.yzy;
}

fn func_2() -> Struct_1 {
    let var_0 = 0u;
    global0 = true;
    let var_1 = min(u_input.d.xww, func_3(Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 26526u), vec2<u32>(24296u, u_input.b)), ~0u), Struct_2(Struct_1(vec2<u32>(30595u, var_0), var_0), vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x), u_input.a.zy, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-441f, 153f, -856f), vec3<f32>(-1000f, -108f, 398f), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(478f, 1408f, 135f), vec3<f32>(1289f, -869f, 1017f), vec3<bool>(false, true, false)))), Struct_2(Struct_1(vec2<u32>(u_input.b, var_0), 17608u), _wgslsmith_sub_vec3_i32(vec3<i32>(-35633i, -53233i, 14735i), u_input.a), u_input.a.yy, vec2<bool>(true, true))), Struct_2(Struct_1(~vec2<u32>(1u, var_0), var_0), ~countOneBits(vec3<i32>(2147483647i, u_input.a.x, 0i)), ~vec2<i32>(-1i, u_input.d.x), vec2<bool>(true, true)), true, abs(vec2<i32>(u_input.d.x, -18832i))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, var_0) & vec2<u32>(0u, var_0), abs(vec2<u32>(87485u, u_input.c))), vec2<u32>(22756u, u_input.c) ^ (vec2<u32>(1u, 0u) << (vec2<u32>(var_0, 56906u) % vec2<u32>(32u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(32024u, var_0), ~var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, var_0), countOneBits(vec2<u32>(0u, var_0)), vec2<u32>(var_0, 27121u)))), ~vec3<i32>(~u_input.d.x, min(var_1.x | var_1.x, ~var_1.x), _wgslsmith_sub_i32(-12909i, countOneBits(var_1.x))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(func_3(Struct_3(Struct_1(vec2<u32>(var_0, var_0), 0u), Struct_2(Struct_1(vec2<u32>(569u, 0u), 38963u), var_1, vec2<i32>(var_1.x, 1i), vec2<bool>(false, false)), vec3<f32>(1247f, -801f, 1097f), Struct_2(Struct_1(vec2<u32>(0u, 1u), 1u), vec3<i32>(0i, u_input.a.x, u_input.a.x), var_1.yy, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<u32>(0u, u_input.b), 36310u), vec3<i32>(var_1.x, 1i, 1i), var_1.yz, vec2<bool>(true, true)), true, vec2<i32>(1i, -10874i)).yy, var_1.yz | vec2<i32>(u_input.d.x, 9498i)), vec2<i32>(var_1.x, 0i) | vec2<i32>(17443i, 2147483647i)) >> (vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, u_input.b, var_0 & u_input.c), 1u) % vec2<u32>(32u)), vec2<bool>(~u_input.b > 81920u, false));
    global0 = false;
    return Struct_1(~_wgslsmith_add_vec2_u32(~(~vec2<u32>(55101u, var_2.a.a.x)), firstLeadingBit(var_2.a.a | vec2<u32>(38972u, 0u))), 1u);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -129f), vec4<f32>(-1638f, arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.b.d.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(-1350f * 1000f), _wgslsmith_f_op_f32(-106f - arg_0.c.x), _wgslsmith_f_op_f32(round(627f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(600f, arg_0.c.x, 1118f, 887f))))));
    var var_1 = Struct_2(func_2(), abs(-vec3<i32>(arg_0.b.c.x, u_input.a.x, 0i)), arg_0.d.b.xz ^ -firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(9317i, -47769i), vec2<i32>(-2147483647i, u_input.d.x))), select(vec2<bool>(true, true), !arg_0.d.d, all(select(select(vec2<bool>(arg_0.d.d.x, false), vec2<bool>(arg_0.d.d.x, arg_0.b.d.x), true), arg_0.d.d, arg_0.d.d.x & arg_0.d.d.x))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.c.yx, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.yw * vec2<f32>(1246f, arg_0.c.x)))), arg_0.d.d.x))), arg_0.b.c, var_1.c);
    var_1 = Struct_2(func_2(), select(firstTrailingBit(countOneBits(u_input.a) ^ -var_1.b), arg_0.b.b, vec3<bool>(true, (2147483647i < var_1.b.x) || (u_input.a.x < var_1.b.x), var_1.d.x)), select(-func_3(arg_0, Struct_2(Struct_1(arg_0.b.a.a, arg_1), u_input.a, vec2<i32>(var_1.b.x, var_1.c.x), var_1.d), true, vec2<i32>(2147483647i, -33490i)).xy, select(vec2<i32>(-2147483647i, 13689i), func_3(Struct_3(Struct_1(arg_0.d.a.a, 4294967295u), Struct_2(var_1.a, u_input.a, vec2<i32>(46653i, var_2.c.x), vec2<bool>(var_1.d.x, arg_0.b.d.x)), arg_0.c, arg_0.b), arg_0.d, var_1.d.x, var_2.c).xy, var_1.d), select(select(!arg_0.b.d, !vec2<bool>(arg_0.d.d.x, var_1.d.x), !var_1.d.x), select(var_1.d, vec2<bool>(true, true), vec2<bool>(true, false)), (var_1.d.x && true) || false)), arg_0.b.d);
    let var_3 = var_2;
    return reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.c.x, u_input.d.x, 5807i), u_input.d));
}

fn func_1() -> vec4<i32> {
    global1 = func_4(Struct_3(Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(1u, 0u))), _wgslsmith_add_u32(u_input.b, ~u_input.c)), Struct_2(func_2(), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), ~vec3<i32>(-33159i, -1i, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -25396i), u_input.a.x), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1267f, -1310f, -147f))), Struct_2(func_2(), vec3<i32>(u_input.d.x, u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.xx, vec2<i32>(-9102i, u_input.d.x) ^ vec2<i32>(77864i, u_input.a.x), _wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(0i, u_input.a.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 14306u, u_input.c), vec3<u32>(42020u, u_input.b, u_input.b))), ~abs(firstLeadingBit(vec3<u32>(32255u, u_input.b, 0u)))));
    var var_0 = -_wgslsmith_div_vec4_i32(-min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a.x, -1i) >> (vec4<u32>(u_input.c, u_input.c, 21115u, u_input.c) % vec4<u32>(32u)), u_input.d ^ vec4<i32>(-1i, -15699i, 1i, u_input.d.x)), u_input.d);
    var var_1 = !vec3<bool>(true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), countOneBits(u_input.c) >= 0u);
    let var_2 = vec3<bool>(1i != firstTrailingBit(u_input.d.x), var_1.x, true);
    var var_3 = 4294967295u;
    return _wgslsmith_mult_vec4_i32(u_input.d, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-func_1(), -u_input.d), ~(-(~u_input.d.x)));
}

