struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)), any(vec3<bool>(true, false, true))), all(vec2<bool>(true, true)));
    let var_1 = true;
    var var_2 = Struct_1(~(~u_input.b.xx), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)) * 717f), -1000f, 1f), var_0.x & true, vec4<i32>(29355i, _wgslsmith_div_i32(arg_0, -1i), _wgslsmith_mod_i32(arg_0, arg_0), i32(-1i) * -21251i) ^ ~(~(-vec4<i32>(u_input.a, arg_0, -2147483647i, u_input.a))));
    var var_3 = ~vec4<i32>(-firstTrailingBit(countOneBits(13520i)), var_2.d.x, _wgslsmith_sub_i32(-2147483647i, ~0i) >> (1u % 32u), 72415i);
    var var_4 = Struct_1(countOneBits(u_input.d.yw & ~vec2<u32>(0u, var_2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-175f * _wgslsmith_f_op_f32(-1057f + -1227f))), -232f, -355f), !var_2.c, var_2.d);
    return vec3<f32>(var_2.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(f32(-1f) * -417f)))), var_4.b.x), 795f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(arg_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(u_input.a ^ -u_input.a))), select(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(arg_3.c, false), vec2<bool>(arg_3.c, arg_3.c))), all(select(vec4<bool>(true, arg_3.c, true, arg_3.c), vec4<bool>(true, false, arg_3.c, arg_3.c), vec4<bool>(arg_3.c, arg_3.c, arg_3.c, arg_3.c))), u_input.a <= arg_3.d.x), vec3<bool>(false, select(!arg_3.c, arg_3.c, arg_3.d.x < u_input.a), true), select(vec3<bool>(any(vec4<bool>(false, arg_3.c, arg_3.c, true)), arg_3.c, true), !vec3<bool>(arg_3.c, arg_3.c, true), any(select(vec4<bool>(true, true, arg_3.c, arg_3.c), vec4<bool>(arg_3.c, false, false, true), vec4<bool>(arg_3.c, false, false, false)))))));
    var_1 = vec3<f32>(_wgslsmith_div_f32(101f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(162f)))), -593f))), 594f, -887f);
    let var_2 = ~(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.ywx, vec3<u32>(u_input.b.x, 8156u, 12052u)), 26278u, arg_2, 0u)) >> (~vec4<u32>(arg_3.a.x, _wgslsmith_clamp_u32(50528u, 0u, 0u), arg_3.a.x, min(83750u, u_input.d.x)) % vec4<u32>(32u)));
    var var_3 = 4294967295u;
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~(~vec2<u32>(~arg_0.a.x, _wgslsmith_mod_u32(arg_1.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_2.a.x))));
    var_0 = Struct_1(_wgslsmith_mod_vec2_u32(~(vec2<u32>(arg_0.a.x, var_1.x) << (arg_3.a % vec2<u32>(32u))), vec2<u32>(var_0.a.x, ~59913u)) >> (_wgslsmith_div_vec2_u32(~var_0.a, _wgslsmith_add_vec2_u32(~vec2<u32>(1306u, var_1.x), _wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(1u, 79210u)))) % vec2<u32>(32u)), arg_0.b, false, arg_2.d);
    let var_2 = ~reverseBits(arg_0.d.x);
    var_0 = func_2(vec3<f32>(1018f, _wgslsmith_f_op_f32(-var_0.b.x), -576f), vec3<u32>(4294967295u, ~37066u, var_1.x), _wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_mod_u32(arg_1.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 3788u, 98016u), u_input.b))), func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.b.x))), 1000f, -146f), _wgslsmith_clamp_vec3_u32(countOneBits(u_input.d.yww), select(u_input.d.zxy, u_input.d.zzz, vec3<bool>(arg_3.c, false, true)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, arg_0.a.x), u_input.d.xzx), u_input.d.wxw), arg_1.a.x, arg_2));
    return Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec3_u32(u_input.d.zwx, u_input.b)), abs(firstLeadingBit(func_2(arg_2.b, vec3<u32>(u_input.d.x, 80880u, u_input.b.x), arg_1.a.x, Struct_1(u_input.b.zz, vec3<f32>(-749f, 1222f, -699f), true, vec4<i32>(u_input.a, 16521i, 7976i, -12419i))).a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, arg_1.b.x, arg_0.b.x)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(var_0.d.x)).x, _wgslsmith_f_op_f32(arg_1.b.x - var_0.b.x), 393f), arg_0.b)), arg_2.c, arg_3.d);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-586f)));
    let var_1 = min(reverseBits(~(~(~u_input.b.x))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, u_input.c, u_input.d.x), vec3<u32>(7146u, u_input.d.x, u_input.e)), reverseBits(u_input.d.zzz)));
    var var_2 = -(vec4<i32>(_wgslsmith_add_i32(-37346i, -19594i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, 12041i), -vec3<i32>(74586i, -1i, u_input.a)), ~u_input.a & u_input.a) | vec4<i32>(abs(1i >> (u_input.b.x % 32u)), _wgslsmith_mult_i32(u_input.a, -u_input.a), u_input.a, u_input.a));
    let var_3 = func_4(Struct_1(u_input.b.zy, vec3<f32>(_wgslsmith_f_op_f32(var_0 - var_0), 461f, _wgslsmith_f_op_f32(var_0 * -1643f)), !(_wgslsmith_dot_vec4_u32(vec4<u32>(4570u, 1u, 42388u, 1u), vec4<u32>(u_input.d.x, 12090u, 51760u, 56932u)) > 1u), vec4<i32>(0i >> (var_1 % 32u), 0i, u_input.a, _wgslsmith_clamp_i32(1i, -2147483647i, u_input.a)) >> (abs(vec4<u32>(79903u, 4294967295u, u_input.d.x, 17247u)) % vec4<u32>(32u))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1000f, var_0))))), firstTrailingBit(~u_input.b >> (vec3<u32>(22528u, u_input.c, var_1) % vec3<u32>(32u))), 0u, Struct_1(u_input.d.zw, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(-128f, var_0, false))), true, vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.yxy, vec3<i32>(u_input.a, u_input.a, var_2.x)), ~0i, 1i ^ u_input.a, var_2.x))), Struct_1(vec2<u32>(u_input.d.x, 9723u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 141f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-361f, var_0, var_0) * vec3<f32>(var_0, var_0, 692f)))), u_input.a > var_2.x, firstLeadingBit(vec4<i32>(-43760i, 2147483647i, var_2.x, var_2.x) & select(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), vec4<i32>(14242i, -2147483647i, u_input.a, -21566i), false))), func_2(vec3<f32>(_wgslsmith_f_op_f32(round(var_0)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 1173f) - vec3<f32>(1353f, var_0, -1638f)), _wgslsmith_mult_vec3_u32(vec3<u32>(42237u, u_input.c, var_1), u_input.b), 1u, func_2(vec3<f32>(var_0, -2232f, -282f), u_input.b, 0u, Struct_1(vec2<u32>(24291u, 54631u), vec3<f32>(var_0, var_0, -1030f), true, vec4<i32>(-1i, 0i, 47168i, -1i)))).b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1094f, 323f)))), ~(~(u_input.b >> (u_input.d.xzx % vec3<u32>(32u)))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 17448u), func_2(_wgslsmith_f_op_vec3_f32(func_3(-1i)), ~vec3<u32>(var_1, 22663u, 7197u), u_input.e, Struct_1(~u_input.b.yy, vec3<f32>(976f, -1000f, var_0), all(vec4<bool>(false, true, false, true)), ~vec4<i32>(var_2.x, u_input.a, var_2.x, u_input.a)))));
    return func_2(_wgslsmith_f_op_vec3_f32(abs(var_3.b)), vec3<u32>(u_input.e, var_1 ^ _wgslsmith_div_u32(var_1, 4294967295u), select(~_wgslsmith_mod_u32(var_1, 1291u), 12098u, ~var_1 > 1u)), 54148u, Struct_1(~u_input.d.yx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-292f, var_0, -424f) - vec3<f32>(-1000f, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-var_0))), !(!func_4(Struct_1(vec2<u32>(var_1, 11250u), var_3.b, var_3.c, vec4<i32>(1i, 1i, -2147483647i, var_3.d.x)), Struct_1(vec2<u32>(var_1, 4294967295u), var_3.b, false, vec4<i32>(-14353i, var_3.d.x, 1i, u_input.a)), var_3, var_3).c), _wgslsmith_sub_vec4_i32(var_3.d, firstLeadingBit(~vec4<i32>(28446i, -35228i, 2147483647i, var_2.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    let var_1 = !vec2<bool>(any(vec2<bool>(false, arg_0.c)), false || var_0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(616f, arg_1, 1748f) + arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b))))));
    let var_3 = func_1();
    var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.b);
    return -_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d.x, var_3.d.x, 2346i, _wgslsmith_dot_vec3_i32(countOneBits(arg_2.d.wzx), var_0.d.xwz)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1045i, 15018i, 51798i, -26632i)) >> (~vec4<u32>(var_3.a.x, 1u, 0u, var_3.a.x) % vec4<u32>(32u)), ~vec4<i32>(arg_0.d.x, -1i, var_0.d.x, arg_0.d.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> StorageBuffer {
    let var_0 = countOneBits(vec4<i32>(u_input.a, select(~_wgslsmith_dot_vec2_i32(arg_1.d.wy, vec2<i32>(34896i, arg_3)), _wgslsmith_sub_i32(arg_0.d.x, 1i), !func_1().c), -1i, ~arg_1.d.x));
    var var_1 = !(!(!select(select(vec2<bool>(arg_0.c, true), vec2<bool>(true, true), arg_0.c), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_0.c, arg_1.c), vec2<bool>(false, arg_0.c)))));
    let var_2 = arg_1;
    var_1 = vec2<bool>(var_1.x, arg_1.c);
    let var_3 = !func_1().c;
    return StorageBuffer(u_input.e, arg_2, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(55762u, 4294967295u), u_input.d.yy | vec2<u32>(u_input.d.x, 36641u), u_input.d.zw), vec3<f32>(-121f, _wgslsmith_f_op_f32(444f - -1413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-478f)))), true, func_5(func_1(), _wgslsmith_f_op_f32(2017f - -760f), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, 806f, 133f)), u_input.d.wyz, u_input.d.x, func_1()))), Struct_1(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.d.x, 52199u)), min(~vec2<u32>(u_input.c, 0u), u_input.b.zz & u_input.b.xx)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) - _wgslsmith_f_op_f32(-1663f * -1100f)), 1f, -1252f), countOneBits(4294967295u) == countOneBits(u_input.d.x | 4294967295u), _wgslsmith_sub_vec4_i32(reverseBits(min(vec4<i32>(-2147483647i, 38531i, -1i, -1i), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a))), vec4<i32>(func_4(Struct_1(vec2<u32>(4294967295u, u_input.d.x), vec3<f32>(241f, -1000f, -1335f), true, vec4<i32>(6971i, -17642i, u_input.a, -1i)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(989f, -1011f, 163f), true, vec4<i32>(2947i, 1i, 45635i, u_input.a)), Struct_1(u_input.b.xx, vec3<f32>(735f, 1000f, 556f), true, vec4<i32>(-2147483647i, u_input.a, 60998i, 1692i)), Struct_1(u_input.d.xz, vec3<f32>(-1000f, 130f, 226f), false, vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i))).d.x, u_input.a << (u_input.b.x % 32u), u_input.a & 22857i, 0i))), ~(~(~reverseBits(1u))), u_input.a);
}

