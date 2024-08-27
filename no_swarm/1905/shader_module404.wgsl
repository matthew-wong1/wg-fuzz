struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> bool {
    var var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -699f);
    var var_2 = 24916u;
    let var_3 = arg_0;
    let var_4 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), 687f, var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f * 870f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_0.c - 1245f), arg_0.c, _wgslsmith_f_op_f32(step(1134f, 914f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, var_3.c, arg_0.c, -543f), vec4<f32>(arg_1, arg_0.c, var_3.c, var_3.d), var_3.a.x)))), var_3.b))), ~u_input.d, _wgslsmith_div_f32(_wgslsmith_div_f32(1030f, var_3.d), arg_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(step(arg_0.c, var_3.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -228f))))))));
    return !arg_0.a.x;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(exp2(1f));
    let var_1 = !(!(!select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(false, arg_0, false, true), true), vec4<bool>(arg_0, arg_0, false, arg_0), true)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) - 845f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(823f)) * _wgslsmith_f_op_f32(-984f + 523f)), 320f)));
    var var_2 = !var_1.x;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1300f), -687f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, -339f, -1000f, _wgslsmith_f_op_f32(1f + 277f)));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.d);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_5(vec2<bool>(false, false), vec4<bool>(true, false, false, false), -1000f, arg_0.b.d), -447f) & true, max(u_input.c.www, firstLeadingBit(u_input.c.zyw)))), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_0.b.b.x, 70192u), _wgslsmith_mult_vec2_u32(~arg_0.b.b, arg_0.b.b >> (arg_0.b.b % vec2<u32>(32u)))), var_0, -427f), ~(countOneBits(vec3<u32>(arg_0.b.b.x, arg_0.b.b.x, u_input.d.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.b.x, arg_0.b.b.x, 15920u), vec3<u32>(u_input.a, u_input.d.x, arg_0.b.b.x)) % vec3<u32>(32u))) & vec3<u32>(~(~arg_0.b.b.x), _wgslsmith_sub_u32(1u, arg_0.b.b.x) << (max(1u, u_input.d.x) % 32u), countOneBits(u_input.a)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_add_u32(26503u, 45194u), ~u_input.a), ~abs(vec3<u32>(14681u, 331u, 392u)))));
    let var_2 = var_1;
    return Struct_4(-1i, Struct_2(arg_0.b.a, _wgslsmith_sub_vec2_u32(abs(countOneBits(vec2<u32>(var_2.c.a, arg_0.b.b.x))), ~var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.c)) + var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -769f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = func_2(arg_1);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f), -335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1).b.c + _wgslsmith_f_op_f32(trunc(-182f))))));
    var_1 = _wgslsmith_f_op_f32(step(arg_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.d)) * var_0.b.c))));
    let var_2 = vec2<bool>(true, !arg_3.x);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1049f * _wgslsmith_f_op_f32(f32(-1f) * -1288f)), _wgslsmith_f_op_f32(-arg_1.b.d)));
    return 104f;
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1457f, _wgslsmith_f_op_f32(1067f + -574f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec4_f32(vec4<f32>(-816f, -619f, -129f, 717f), vec4<f32>(287f, 661f, 330f, -207f)), func_2(Struct_4(-3891i, Struct_2(vec4<f32>(-464f, -158f, 539f, -120f), vec2<u32>(1u, 1u), 1000f, 128f))), -vec4<i32>(u_input.b, u_input.c.x, 62761i, 16344i), vec2<bool>(false, false))) + 1050f)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(283f - _wgslsmith_f_op_f32(778f - -199f)), _wgslsmith_f_op_f32(min(1643f, _wgslsmith_f_op_f32(abs(1000f))))))));
    var var_2 = Struct_1(79222u);
    var var_3 = -u_input.c.x & firstTrailingBit(_wgslsmith_div_i32(func_2(Struct_4(23489i, Struct_2(vec4<f32>(-1299f, -885f, var_1, 812f), vec2<u32>(63938u, 27503u), -574f, 493f))).a ^ _wgslsmith_div_i32(-1i, u_input.c.x), -reverseBits(2147483647i)));
    var var_4 = select(vec4<i32>(0i, _wgslsmith_clamp_i32(u_input.b, u_input.c.x, -u_input.c.x << (19476u % 32u)), ~u_input.b, -_wgslsmith_add_i32(u_input.b, u_input.c.x) ^ 1i), select(u_input.c, u_input.c, vec4<bool>(var_2.a < var_2.a, true, u_input.b > -4365i, true)) ^ vec4<i32>(~31657i, u_input.c.x, 2147483647i, 1i), vec4<bool>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b, u_input.c.x), func_2(Struct_4(6625i, Struct_2(vec4<f32>(var_1, var_1, var_1, -1583f), u_input.d, var_1, -164f))).a) > ~(~(-2147483647i)), true, true, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -793f, var_1)), Struct_4(-5629i, Struct_2(vec4<f32>(169f, 165f, -1740f, var_1), u_input.d, 1599f, -1165f)), ~vec4<i32>(1i, 2147483647i, -9610i, u_input.b), vec2<bool>(true, false))) <= 932f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -866f, -553f, 1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, 386f, -1280f), vec4<f32>(var_1, 1061f, var_1, -374f), vec4<bool>(true, true, false, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 790f, 234f)))))) + vec4<f32>(var_1, var_1, var_1, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec3<i32>(u_input.c.x & 22873i, i32(-1i) * -43044i, -u_input.b) | ~(-vec3<i32>(0i, u_input.b, u_input.c.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-848f, -246f, -1515f, -1551f) * vec4<f32>(372f, -1727f, -191f, -276f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(483f, -1000f, -155f, 364f) * vec4<f32>(-448f, 1873f, -1000f, 2018f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1968f, 684f, -856f, -516f), vec4<f32>(-1184f, -762f, -713f, -1040f)))))))), firstTrailingBit(vec2<u32>(u_input.a, u_input.d.x)), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1533f, 1141f, true)), -1235f, _wgslsmith_f_op_f32(-1956f - 2489f), 1290f)), Struct_4(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_0.x, u_input.c.x)), max(vec2<i32>(u_input.c.x, -2147483647i), var_0.yy)), func_2(func_2(Struct_4(-46980i, Struct_2(vec4<f32>(653f, 1818f, 811f, 1716f), u_input.d, 369f, 774f)))).b), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_0.x, u_input.c.x), vec3<i32>(u_input.b, u_input.b, 2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.www, vec3<i32>(var_0.x, u_input.b, 27030i)), vec3<i32>(1140i, -1i, var_0.x)), var_0.x, _wgslsmith_mult_i32(~var_0.x, -1i)), vec2<bool>(all(vec4<bool>(true, true, true, true)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 431f), -2314f)) * 844f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1281f * 1984f))))));
    var var_2 = max(_wgslsmith_sub_i32(-34966i, firstTrailingBit(-2147483647i ^ -u_input.c.x)), -14741i);
    var_1 = func_2(Struct_4(1i, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1348f, var_1.a.x, -839f, var_1.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(39320u, var_1.b.x), min(u_input.d, vec2<u32>(var_1.b.x, 8933u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f + -282f) * _wgslsmith_f_op_f32(var_1.d - -968f)), var_1.a.x))).b;
    let var_3 = reverseBits(vec3<u32>(u_input.a, ~countOneBits(u_input.d.x), _wgslsmith_clamp_u32(var_1.b.x, abs(45352u), ~0u)));
    var var_4 = vec2<i32>(u_input.c.x, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.d.x);
}

