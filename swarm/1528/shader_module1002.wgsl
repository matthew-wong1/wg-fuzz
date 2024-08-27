struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> vec3<f32> {
    let var_0 = arg_1.c.a;
    var var_1 = select(~_wgslsmith_mod_i32(arg_0.d.a, -1i) & ~(~0i), -22624i, true) >> (firstLeadingBit(arg_0.e.x) % 32u);
    var_1 = -1i;
    var var_2 = _wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(firstLeadingBit(u_input.a.x), arg_0.e.x, arg_0.e.x)), _wgslsmith_mod_vec3_u32(arg_1.e, vec3<u32>(~43823u, max(arg_2, u_input.a.x), abs(arg_0.e.x) << (_wgslsmith_div_u32(117962u, 11454u) % 32u))), vec3<u32>(~(arg_1.b.a.x | ~arg_2), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 18142u), arg_1.e), 2223u), select(arg_2, _wgslsmith_mult_u32(arg_1.e.x, arg_0.e.x), false) << (0u % 32u)));
    var var_3 = Struct_3(arg_0.c, arg_0.b, arg_0.d, arg_0.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(60910u, firstTrailingBit(0u) ^ select(arg_2, arg_2, true), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, arg_0.e.x, 0u), arg_1.b.a))), ~vec3<u32>(arg_0.b.a.x, 34989u, 36422u) << (max(arg_0.e << (vec3<u32>(arg_0.e.x, arg_0.e.x, arg_0.b.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(arg_0.e, vec3<u32>(var_2.x, arg_0.b.a.x, 1u))) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(31375u, u_input.a.x, 0u))));
    return var_3.a.b;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = 17208u & u_input.a.x;
    let var_1 = -159f;
    var var_2 = Struct_3(Struct_2(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-210f)), var_1, var_1))), Struct_1(arg_0.yzx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2191f, 1466f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1)))))), Struct_2(0i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 + -1264f), var_1, _wgslsmith_div_f32(-692f, 161f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2478f, 820f, var_1))))), Struct_2(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b) << (u_input.a % vec3<u32>(32u)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b)), u_input.b), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(u_input.b, vec3<f32>(var_1, var_1, 492f)), Struct_1(vec3<u32>(arg_0.x, u_input.a.x, u_input.c.x), vec2<f32>(721f, -927f)), Struct_2(9167i, vec3<f32>(-155f, var_1, -1451f)), Struct_2(u_input.b, vec3<f32>(var_1, var_1, -833f)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 47559u, u_input.c.x), arg_0.xzy)), Struct_3(Struct_2(u_input.b, vec3<f32>(765f, 262f, var_1)), Struct_1(arg_0.xyx, vec2<f32>(-670f, -247f)), Struct_2(-18717i, vec3<f32>(1279f, 724f, 1000f)), Struct_2(u_input.b, vec3<f32>(var_1, var_1, 630f)), select(arg_0.xzx, vec3<u32>(u_input.c.x, 1u, u_input.c.x), true)), arg_0.x))), arg_0.yxw);
    let var_3 = any(!vec2<bool>(true, any(vec2<bool>(false, false))));
    var var_4 = vec4<i32>(u_input.b & var_2.d.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(var_2.c.a, var_2.a.a, u_input.b, -15556i)), -vec4<i32>(1i, u_input.b, -1i, _wgslsmith_mod_i32(-2147483647i, u_input.b))), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, _wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_mod_i32(var_2.d.a, -36517i)), ~firstLeadingBit(vec3<i32>(u_input.b, 1i, var_2.a.a) & vec3<i32>(79056i, -1228i, -2147483647i))));
    return 1653f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-696f, -164f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-359f))), _wgslsmith_f_op_f32(func_2(countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, 435f, 1437f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(286f, 1032f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(abs(2453f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -2718f, 1000f), vec3<f32>(var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -684f, 549f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1168f))))) + -625f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a.x, 11174u, u_input.c.x), vec4<u32>(59255u, u_input.a.x, u_input.a.x, 45943u)), abs(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)), abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(282f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_0.x)) * var_1), all(vec2<bool>(true, false)))), -468f);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2082f, var_1, var_1)) - vec3<f32>(-1122f, _wgslsmith_div_f32(110f, var_0.x), -1868f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_0.x, 467f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(589f, var_0.x, 222f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_0.x, var_1), vec3<f32>(649f, -757f, -289f), vec3<bool>(false, false, true)))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_0.x - 393f), _wgslsmith_f_op_f32(exp2(var_1))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1, var_1) - vec3<f32>(var_0.x, var_1, var_1))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(660f, var_1, -1013f)))))));
    return Struct_1(~select(~vec3<u32>(u_input.c.x, 0u, u_input.a.x), abs(u_input.a), vec3<bool>(any(vec3<bool>(false, false, true)), true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.zy), var_0.zy, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-206f, _wgslsmith_f_op_f32(f32(-1f) * -266f)), var_0.zy, true))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(min(u_input.a, vec3<u32>(69676u, 4294967295u, 4294967295u)), ~func_1().a) & ~vec3<u32>(0u, _wgslsmith_div_u32(arg_0.a.x, 3525u), _wgslsmith_add_u32(arg_0.a.x, 0u)), vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + -1325f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + 1291f))))));
    let var_2 = abs(arg_0.a.x);
    let var_3 = vec4<i32>(-2238i, -select(~(-1i), 0i, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true))), firstLeadingBit(1i), -(1i >> (firstLeadingBit(0u ^ var_0.a.x) % 32u)));
    var var_4 = Struct_3(Struct_2(var_3.x, vec3<f32>(975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(max(-339f, arg_0.b.x))))), Struct_1(~var_1.a, _wgslsmith_f_op_vec2_f32(floor(arg_0.b))), Struct_2(~abs(_wgslsmith_dot_vec3_i32(var_3.zyw, vec3<i32>(-35999i, u_input.b, u_input.b))), vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_f_op_f32(round(var_0.b.x)), arg_0.b.x)), Struct_2(firstLeadingBit(u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(936f, -1000f, arg_0.b.x))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(-2147483647i, vec3<f32>(-315f, 2588f, -640f)), Struct_1(vec3<u32>(4294967295u, 45257u, 17167u), vec2<f32>(var_0.b.x, 1649f)), Struct_2(u_input.b, vec3<f32>(-2320f, var_1.b.x, -2133f)), Struct_2(-1i, vec3<f32>(629f, 1000f, -903f)), vec3<u32>(var_2, 61749u, 35u)), Struct_3(Struct_2(2501i, vec3<f32>(1976f, -687f, 1711f)), arg_0, Struct_2(u_input.b, vec3<f32>(var_0.b.x, arg_0.b.x, arg_0.b.x)), Struct_2(u_input.b, vec3<f32>(265f, var_0.b.x, arg_0.b.x)), var_0.a), ~0u)))), vec3<u32>(arg_0.a.x, ~max(~0u, var_1.a.x), min(var_1.a.x, var_1.a.x) ^ firstTrailingBit(arg_0.a.x << (0u % 32u))));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    let var_1 = _wgslsmith_mod_vec4_i32(~select(~vec4<i32>(var_0.a, 2805i, -41882i, 2147483647i), vec4<i32>(~24129i, min(u_input.b, u_input.b), -var_0.a, ~u_input.b), false), -(~firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.a, u_input.b, 17559i, u_input.b)))));
    var var_2 = select(~(select(vec3<u32>(u_input.c.x, 76724u, 71749u), u_input.a, true) >> (abs(u_input.a) % vec3<u32>(32u))), vec3<u32>(u_input.c.x, ~u_input.c.x, ~u_input.c.x), vec3<bool>(true, true, true)) << (vec3<u32>(~_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u), ~(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.a.x) % vec3<u32>(32u));
    var_2 = func_1().a;
    let var_3 = Struct_1(~vec3<u32>(~27932u, 4294967295u, 1u), var_0.b.yy);
    var_2 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(var_2.x), 1u), 4294967295u), ~select(4294967295u, var_2.x, all(vec2<bool>(false, true))), 1u);
    var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), 75667u, firstLeadingBit(43556u) << (_wgslsmith_mod_u32(1u, u_input.c.x) % 32u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(2490u, 0u, var_2.x), ~var_3.a)), u_input.a);
    var var_4 = Struct_3(var_0, var_3, Struct_2(_wgslsmith_dot_vec3_i32(var_1.yxx, var_1.wyy), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(var_2.x, 1u, 8351u, var_2.x)))), var_3.b.x)), Struct_2(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -1i, u_input.b), vec4<i32>(var_1.x, -1i, 2147483647i, -10857i)), var_1.x) | var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_3.b.x, -2228f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.x, var_3.b.x, -541f), var_0.b, false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, var_3.b.x, var_3.b.x) + var_0.b)))), select(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(var_2.x, 14888u, u_input.a.x)), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(var_3.a, vec3<u32>(0u, 1295u, 0u)), u_input.a.x)), vec3<u32>(min(var_2.x, 0u), select(~4294967295u, ~1u, true), 1u), vec3<bool>(true, true, true)));
    var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(1178u), select(0u, 101058u, any(vec3<bool>(false, false, false)) || true), _wgslsmith_mult_u32(var_4.e.x & var_4.e.x, ~_wgslsmith_sub_u32(var_4.e.x, 54482u))), ~_wgslsmith_div_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 25812u), u_input.a), vec3<u32>(0u, 48865u, var_3.a.x) >> (var_4.e % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_3.a.x, var_3.a.x) >> (vec3<u32>(var_2.x, var_3.a.x, 1u) % vec3<u32>(32u)), vec3<u32>(0u, 28588u, var_4.b.a.x) << (var_3.a % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.b, var_4.a.a, ~(~(~var_4.d.a)), 1i);
}

