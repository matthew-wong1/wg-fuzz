struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(Struct_1(-abs(-658i)), arg_2.c.a.b, -2177f), vec4<u32>(firstLeadingBit(37992u), u_input.d, select(abs(_wgslsmith_mod_u32(1u, 1u)), ~arg_0 | 1u, arg_2.a.x), select(arg_2.c.b.x, ~_wgslsmith_dot_vec4_u32(arg_2.c.b, arg_2.c.b), arg_2.a.x)), arg_2.c.a.a.a <= ~arg_1.x, -373f, u_input.b);
    var var_1 = vec2<u32>(11448u, ~arg_0);
    var var_2 = arg_2.d;
    var_2 = arg_2.d;
    let var_3 = abs(max(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_mod_i32(-2147483647i, var_0.a.b.a | 15546i)), -7392i));
    return var_0;
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-arg_0.c));
    let var_1 = _wgslsmith_mod_i32(u_input.a.x, 23337i);
    let var_2 = -27542i;
    let var_3 = -447f;
    var var_4 = func_2(u_input.c.x, abs(u_input.a.wyy), Struct_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1348f)) - _wgslsmith_f_op_f32(1000f * var_0)), _wgslsmith_f_op_f32(ceil(arg_0.c)), 1211f), func_2(~(~4294967295u), countOneBits(-u_input.a.zzz), Struct_4(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, -445f, -396f)), func_2(u_input.e, vec3<i32>(var_1, arg_0.b.a, arg_0.a.a), Struct_4(vec4<bool>(false, false, false, false), vec3<f32>(962f, 1000f, -1000f), Struct_3(Struct_2(Struct_1(var_1), Struct_1(51370i), -167f), u_input.c, false, var_3, vec4<u32>(4294967295u, u_input.e, 4294967295u, u_input.d)), Struct_3(arg_0, u_input.c, false, arg_0.c, vec4<u32>(u_input.b.x, u_input.d, u_input.c.x, 15215u)))), Struct_3(Struct_2(Struct_1(15632i), arg_0.b, var_3), u_input.c, false, -647f, vec4<u32>(u_input.e, u_input.b.x, 4294967295u, 4150u)))), Struct_3(Struct_2(Struct_1(-17886i), Struct_1(u_input.a.x), _wgslsmith_f_op_f32(round(arg_0.c))), ~(~vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, u_input.e)), _wgslsmith_mod_u32(0u, u_input.b.x) >= _wgslsmith_dot_vec4_u32(u_input.b, u_input.c), _wgslsmith_f_op_f32(arg_0.c * -243f), u_input.b))).a.b;
    return Struct_3(func_2(~(~35052u) ^ ~(~u_input.b.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-18213i, arg_0.b.a, -2147483647i), u_input.a.wyy, vec3<i32>(u_input.a.x, var_1, 24353i)) << (~(u_input.c.yyx << (u_input.b.wyw % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 121f, 2035f) + vec3<f32>(var_0, arg_0.c, var_0)))), Struct_3(func_2(u_input.b.x, vec3<i32>(-5927i, arg_0.a.a, var_1), Struct_4(vec4<bool>(true, false, false, true), vec3<f32>(1000f, 1087f, var_3), Struct_3(arg_0, u_input.b, false, var_0, vec4<u32>(1u, u_input.d, 79364u, 11406u)), Struct_3(arg_0, vec4<u32>(4745u, 4294967295u, 0u, u_input.b.x), false, var_3, u_input.b))).a, _wgslsmith_add_vec4_u32(vec4<u32>(10771u, u_input.c.x, u_input.b.x, u_input.c.x), u_input.b), any(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(max(-1000f, arg_0.c)), ~vec4<u32>(83249u, 4294967295u, 0u, 4294967295u)), Struct_3(func_2(84723u, vec3<i32>(var_4.a, var_2, arg_0.b.a), Struct_4(vec4<bool>(false, false, false, false), vec3<f32>(-193f, -1000f, var_3), Struct_3(arg_0, u_input.b, false, var_3, vec4<u32>(1764u, 1u, u_input.e, u_input.c.x)), Struct_3(Struct_2(Struct_1(var_4.a), Struct_1(var_1), var_0), vec4<u32>(1u, 4294967295u, u_input.b.x, 1u), true, 769f, u_input.b))).a, vec4<u32>(41122u, u_input.d, u_input.c.x, 0u) ^ vec4<u32>(0u, u_input.e, u_input.b.x, 71392u), true, _wgslsmith_div_f32(1000f, var_3), ~vec4<u32>(u_input.e, u_input.d, 0u, u_input.e)))).a, u_input.c, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -132f), var_0)), _wgslsmith_f_op_f32(step(var_0, 134f)))), u_input.b);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> bool {
    return max(firstLeadingBit(4294967295u), ~u_input.b.x ^ 1u) == arg_1.d.b.x;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_1, arg_1, arg_1), vec4<f32>(arg_1, arg_1, arg_0, -278f)), vec4<f32>(642f, arg_1, 1000f, 406f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0, -1479f))))))), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - -150f)))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(350f, var_0.x), arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-388f, arg_1), arg_1)))));
    let var_1 = Struct_4(vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))), all(vec2<bool>(true, false)), func_4(_wgslsmith_f_op_vec2_f32(floor(var_0.zy)), Struct_4(vec4<bool>(true, true, true, true), vec3<f32>(1044f, 920f, -1210f), func_2(51630u, vec3<i32>(u_input.a.x, -6335i, u_input.a.x), Struct_4(vec4<bool>(true, false, false, true), vec3<f32>(var_0.x, var_0.x, arg_1), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), var_0.x), vec4<u32>(u_input.e, u_input.c.x, 58505u, u_input.e), false, -1304f, vec4<u32>(u_input.b.x, u_input.d, 1067u, 83050u)), Struct_3(Struct_2(Struct_1(-28010i), Struct_1(u_input.a.x), 857f), vec4<u32>(u_input.b.x, u_input.d, 4294967295u, u_input.d), false, 177f, vec4<u32>(4294967295u, u_input.e, u_input.c.x, u_input.c.x)))), func_3(Struct_2(Struct_1(2028i), Struct_1(1i), -748f)))), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.xxy))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, -668f, var_0.x))), vec3<f32>(373f, -468f, -1000f))) - var_0.zxw), func_2(_wgslsmith_mod_u32(~(~0u), u_input.b.x), u_input.a.xyw, Struct_4(vec4<bool>(true, true, true, true), vec3<f32>(var_0.x, func_2(1u, vec3<i32>(-1i, -15958i, 5002i), Struct_4(vec4<bool>(false, false, true, true), var_0.xxy, Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(24390i), arg_1), vec4<u32>(50263u, u_input.c.x, u_input.d, u_input.d), true, var_0.x, vec4<u32>(232u, u_input.c.x, 1u, 4294967295u)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), arg_1), vec4<u32>(u_input.b.x, 72616u, 95008u, 1u), true, -1000f, u_input.b))).a.c, arg_1), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), arg_0), ~u_input.c, all(vec4<bool>(true, false, true, true)), arg_0, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.e, 1u, u_input.c.x), u_input.c)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), -1151f), ~u_input.c, true, arg_0, u_input.b))), Struct_3(Struct_2(func_3(func_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), -435f)).a).a.b, func_3(func_2(u_input.b.x, u_input.a.wzx, Struct_4(vec4<bool>(true, true, true, true), vec3<f32>(arg_0, var_0.x, -564f), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(12655i), arg_0), u_input.b, true, arg_0, vec4<u32>(u_input.d, 4294967295u, 73628u, u_input.d)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(7523i), -1377f), u_input.c, true, 996f, vec4<u32>(6047u, 55356u, 1u, u_input.b.x)))).a).a.a, _wgslsmith_f_op_f32(-arg_0)), vec4<u32>(~0u, _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(79245u, u_input.c.x)), u_input.b.x, ~(~0u)), func_2(4294967295u, firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), Struct_4(vec4<bool>(true, true, true, true), vec3<f32>(558f, -1466f, -964f), Struct_3(Struct_2(Struct_1(2147483647i), Struct_1(342i), 232f), u_input.b, false, var_0.x, u_input.b), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), arg_0), u_input.b, false, -1017f, vec4<u32>(3997u, u_input.b.x, u_input.b.x, 37083u)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + arg_0)))), vec4<u32>(~u_input.c.x, 0u, reverseBits(0u), 64366u)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1431f, arg_0)) + 1402f), var_1.c.d, -1000f)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -815f)) + var_1.d.a.c), func_3(func_3(func_2(30934u, u_input.a.wwy, Struct_4(vec4<bool>(var_1.c.c, var_1.a.x, var_1.c.c, true), var_1.b, var_1.d, Struct_3(Struct_2(Struct_1(-1i), var_1.c.a.b, -1482f), vec4<u32>(u_input.d, u_input.e, u_input.b.x, 19855u), true, var_0.x, vec4<u32>(1u, var_1.c.b.x, 46235u, u_input.b.x)))).a).a).d, arg_0)));
    return abs(firstLeadingBit(vec4<u32>(min(var_1.d.e.x, 1u), 1u, 52658u, func_3(func_2(4294967295u, u_input.a.wwz, Struct_4(var_1.a, var_1.b, var_1.d, var_1.d)).a).e.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(896f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), 1000f)).a.c)))));
    var var_1 = func_2(6095u, u_input.a.xyx, Struct_4(select(!(!vec4<bool>(arg_1, false, true, arg_1)), select(!vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(true, false, false, arg_1), arg_1), !(!vec4<bool>(false, arg_1, false, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, 2205f, -394f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(946f, -633f, 811f)))), func_2(_wgslsmith_mod_u32(arg_0.x, 101325u), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-10125i, u_input.a.x, u_input.a.x), u_input.a.xzx, u_input.a.zxx), u_input.a.zww << (u_input.b.xzy % vec3<u32>(32u))), Struct_4(!vec4<bool>(arg_1, arg_1, false, arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, 773f, 1000f)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(-38437i), 1993f), arg_0, true, 456f, vec4<u32>(1u, arg_0.x, 20100u, arg_0.x)), Struct_3(Struct_2(Struct_1(-16991i), Struct_1(u_input.a.x), 250f), u_input.c, arg_1, 559f, vec4<u32>(u_input.b.x, u_input.e, u_input.e, 11088u)))), func_2(~u_input.c.x >> (~23731u % 32u), vec3<i32>(-2147483647i, 41059i, _wgslsmith_mod_i32(u_input.a.x, -27997i)), Struct_4(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), arg_1), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1435f, 465f, -1585f))), func_2(arg_0.x, vec3<i32>(1i, u_input.a.x, 29960i), Struct_4(vec4<bool>(arg_1, arg_1, arg_1, false), vec3<f32>(1541f, -1000f, -121f), Struct_3(Struct_2(Struct_1(11196i), Struct_1(0i), 691f), vec4<u32>(29393u, u_input.c.x, 1u, 46177u), arg_1, -324f, vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.b.x)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(u_input.a.x), 818f), vec4<u32>(u_input.b.x, arg_0.x, 54064u, u_input.d), arg_1, -2236f, vec4<u32>(u_input.e, u_input.e, arg_0.x, 1u)))), Struct_3(Struct_2(Struct_1(-3461i), Struct_1(-45607i), -1908f), vec4<u32>(u_input.e, u_input.c.x, u_input.c.x, u_input.c.x), false, 815f, vec4<u32>(u_input.c.x, u_input.c.x, 94499u, arg_0.x))))));
    var var_2 = ~vec3<u32>(6689u, _wgslsmith_sub_u32(var_1.b.x, _wgslsmith_mult_u32(u_input.e >> (0u % 32u), u_input.e)), ~_wgslsmith_div_u32(4294967295u, 28119u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c))))));
    var var_4 = 2147483647i;
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(func_5(func_1(_wgslsmith_f_op_f32(532f * -704f), 673f), !any(vec2<bool>(true, true))), func_2(~var_0.x >> (u_input.b.x % 32u), ~vec3<i32>(-28896i, 18813i, -2147483647i), Struct_4(vec4<bool>(true, true, true, true), _wgslsmith_div_vec3_f32(vec3<f32>(381f, -481f, -1000f), vec3<f32>(926f, -374f, -666f)), func_2(var_0.x, u_input.a.wzw, Struct_4(vec4<bool>(false, true, false, false), vec3<f32>(342f, 240f, 1553f), Struct_3(Struct_2(Struct_1(4071i), Struct_1(1i), 1173f), vec4<u32>(u_input.b.x, 46373u, 50526u, u_input.e), false, -1167f, vec4<u32>(var_0.x, u_input.c.x, var_0.x, var_0.x)), Struct_3(Struct_2(Struct_1(u_input.a.x), Struct_1(-37928i), -907f), vec4<u32>(var_0.x, 21294u, var_0.x, var_0.x), true, 100f, u_input.c))), Struct_3(Struct_2(Struct_1(1122i), Struct_1(0i), 639f), u_input.c, true, -654f, vec4<u32>(6417u, 72665u, 4294967295u, var_0.x)))).a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-798f, -1268f, all(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-233f)))))), vec4<u32>(1u, 4294967295u, u_input.b.x, _wgslsmith_mult_u32(abs(var_0.x ^ u_input.b.x), ~_wgslsmith_sub_u32(4294967295u, 581u))), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1i), Struct_1(-2147483647i), -1160f)).a.c + -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(249f)) * _wgslsmith_f_op_f32(max(-719f, -1000f)))))), ~min(vec4<u32>(var_0.x, ~u_input.d, firstTrailingBit(var_0.x), 1u), select(vec4<u32>(u_input.e, 34499u, var_0.x, 1u), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.e, 11074u, var_0.x, u_input.c.x)), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(720f, _wgslsmith_f_op_f32(-var_1.a.c), var_1.d, var_1.d) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(var_1.a.c - var_1.d), var_1.a.c, _wgslsmith_f_op_f32(var_1.a.c - -1357f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-743f, var_1.d, var_1.d, var_1.d) + vec4<f32>(-590f, -807f, var_1.d, 1213f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1977f, 1000f, -2411f, 458f)))))), vec4<f32>(var_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(1051f - var_1.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2583f, -1010f, var_1.c))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f + 595f)))), -746f)));
    let var_3 = _wgslsmith_add_u32(countOneBits(~(_wgslsmith_mult_u32(var_0.x, var_0.x) >> (0u % 32u))), abs(~u_input.c.x << (1u % 32u)));
    var var_4 = func_3(func_3(func_2(_wgslsmith_div_u32(u_input.b.x, 4294967295u), u_input.a.wwy >> (_wgslsmith_clamp_vec3_u32(u_input.b.yxw, vec3<u32>(80989u, 4294967295u, 4294967295u), var_0.yyz) % vec3<u32>(32u)), Struct_4(select(vec4<bool>(var_1.c, true, true, var_1.c), vec4<bool>(var_1.c, true, true, var_1.c), var_1.c), _wgslsmith_f_op_vec3_f32(-var_2.yyx), var_1, var_1)).a).a);
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d * var_1.a.c), var_4.a.c)) * 125f), var_4.d, 2958f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(677f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f * -234f)), 259f))));
    let var_5 = Struct_4(select(select(!vec4<bool>(var_1.c, var_4.c, var_4.c, true), !(!vec4<bool>(true, false, true, var_4.c)), func_3(Struct_2(var_1.a.a, var_1.a.b, var_1.a.c)).c), select(select(!vec4<bool>(var_4.c, var_4.c, true, false), !vec4<bool>(var_1.c, var_1.c, true, var_4.c), vec4<bool>(false, false, var_4.c, false)), !(!vec4<bool>(var_1.c, true, var_4.c, var_4.c)), any(select(vec4<bool>(var_1.c, var_1.c, true, false), vec4<bool>(false, false, false, var_1.c), true))), !select(!vec4<bool>(false, var_4.c, var_1.c, false), !vec4<bool>(var_1.c, false, var_4.c, true), false)), var_2.xwz, var_1, var_1);
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.x) - _wgslsmith_div_f32(-943f, var_1.d)), var_4.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) - -1326f)), _wgslsmith_f_op_f32(-var_4.a.c), -599f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(u_input.a.x << (var_3 % 32u)) >> (~12761u % 32u), var_4.a.b.a), ~max(func_3(var_4.a).e.xyz, min(max(var_1.b.wzy, vec3<u32>(var_5.c.e.x, 76317u, var_0.x)), var_4.b.xzx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1942f, 422f, var_2.x, _wgslsmith_f_op_f32(var_1.d - -348f)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x * var_4.a.c), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(314f * -746f), -1178f))), var_5.d.a.b.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_2.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_5.d.a.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_5.b.yx), vec2<f32>(var_1.d, -882f), var_5.a.wy))))));
}

