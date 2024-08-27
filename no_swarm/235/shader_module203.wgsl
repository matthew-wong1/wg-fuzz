struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1844f - _wgslsmith_f_op_f32(round(672f))))))), ~min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -39422i, u_input.a.x, 2147483647i), firstTrailingBit(vec4<i32>(u_input.a.x, -7523i, 13141i, 18993i))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), abs(u_input.a))), select(select(vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, true)), vec2<bool>(true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), arg_0);
    let var_1 = Struct_4(-(~vec3<i32>(var_0.c.x, u_input.a.x, _wgslsmith_dot_vec3_i32(var_0.c.xzw, vec3<i32>(0i, 7099i, -19649i)))), var_0.c);
    let var_2 = u_input.b;
    var var_3 = arg_0 < 4294967295u;
    let var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(55462u, 68971u, u_input.c, u_input.c) & var_2) ^ _wgslsmith_mult_u32(firstLeadingBit(1u), max(var_2.x, 38729u)), countOneBits(arg_0), u_input.d.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(u_input.b.x | var_2.x), ~arg_0, 23402u), vec3<u32>(1u, ~1u, u_input.d.x));
    return !select(vec4<bool>(all(vec2<bool>(true, var_0.d.x)), any(vec4<bool>(var_0.d.x, false, true, false)), false, true), !vec4<bool>(var_0.d.x, var_0.d.x, var_0.b != -910f, true), !select(!vec4<bool>(var_0.d.x, false, false, var_0.d.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.d.x, var_0.d.x, true), vec4<bool>(true, var_0.d.x, true, var_0.d.x))));
}

fn func_2() -> vec3<u32> {
    let var_0 = !select(vec4<bool>(!any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), all(vec2<bool>(true, false)), true), select(vec4<bool>(true, true, true, true), !func_3(1005u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))), vec4<bool>(select(u_input.d.x, u_input.c, true) == 1u, false, !(u_input.b.x >= 25938u), true & any(vec3<bool>(true, false, true))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(1000f)), 752f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f * 1568f)) + _wgslsmith_f_op_f32(-1000f + -1000f)), _wgslsmith_f_op_f32(1422f - _wgslsmith_f_op_f32(-1383f * _wgslsmith_f_op_f32(f32(-1f) * -459f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(2231f))))))));
    var var_2 = u_input.a.yxz;
    let var_3 = Struct_1(i32(-1i) * -72903i, _wgslsmith_f_op_f32(trunc(1000f)), ~vec4<i32>(i32(-1i) * -u_input.a.x, countOneBits(2147483647i << (u_input.b.x % 32u)), -(-1i & u_input.a.x), u_input.a.x), var_0.zz, ~2958u);
    var_2 = var_3.c.yzz;
    return u_input.b.wyz;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = ~vec3<i32>(-firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a.yzz, vec3<i32>(-16694i, u_input.a.x, 2147483647i))), 0i, u_input.a.x);
    var var_1 = !vec4<bool>(true, arg_1.a.d.x, arg_1.a.d.x, u_input.a.x < -2147483647i);
    let var_2 = arg_1.a.e;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(1i, arg_1.a.c.x), ~abs(-1i), var_0.x), u_input.a.yzw);
    var var_3 = Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-896f)) * _wgslsmith_div_f32(542f, arg_1.a.b)), arg_1.a.b))), arg_1.a.c, vec2<bool>(false, !select(true, !var_1.x, arg_0.x <= 1u)), arg_1.a.e);
    return Struct_4(vec3<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_0.x, -1i, 2315i)), ~u_input.a.xxy)), -1i, 2147483647i), vec4<i32>(_wgslsmith_sub_i32(7065i, _wgslsmith_add_i32(arg_1.a.a, -19169i)), -1i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(8106i, 24732i, -2147483647i) << (var_2 % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, var_3.c.x), vec3<i32>(var_0.x, -3046i, -2147483647i)), firstLeadingBit(1i)) | _wgslsmith_div_i32(var_3.c.x, reverseBits(var_3.a))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.b.zzz) & u_input.d, vec3<u32>(~arg_1.a.e, arg_1.a.e | 1u, ~arg_1.a.e) | (countOneBits(u_input.d) & vec3<u32>(43088u, arg_2.e, arg_1.a.e))) << (vec3<u32>(arg_2.e, 63947u, u_input.c) % vec3<u32>(32u));
    let var_1 = func_3(firstTrailingBit(~34312u) >> (arg_1.a.e % 32u)).x;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-290f, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(f32(-1f) * -1658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b - 508f))) + _wgslsmith_f_op_f32(trunc(arg_2.b))), arg_1.a.b), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(1787f * -1000f))))), -1164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.b, arg_2.b))) * _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1525f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(612f)) * _wgslsmith_f_op_f32(sign(-1160f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3015f), -490f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(212f + arg_2.b), all(arg_2.d)))), 1138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-796f)), arg_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - -1000f))))));
    return Struct_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1609f, arg_2.b))) * arg_1.a.b) + -399f), ~vec4<i32>(_wgslsmith_sub_i32(func_4(var_0, Struct_2(arg_1.a)).b.x, -arg_0.b.x), -1i, func_4(var_0, Struct_2(Struct_1(2147483647i, 323f, vec4<i32>(-57733i, 1i, -349i, 2147483647i), arg_1.a.d, 0u))).b.x, -2147483647i), select(vec2<bool>(!(true | arg_1.a.d.x), false), arg_2.d, !func_3(u_input.b.x).x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_0.x, u_input.b.x, 18854u, 4294967295u)), u_input.b), vec4<u32>(~arg_1.a.e, 1u, ~max(var_0.x, 2849u), 82184u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = ~select(u_input.b, vec4<u32>(~arg_0.x, _wgslsmith_mult_u32(~u_input.b.x, ~arg_0.x), ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(22100u, arg_0.x, u_input.b.x)), _wgslsmith_mult_u32(~27060u, arg_0.x)), arg_2);
    var_0 = firstTrailingBit(u_input.b);
    let var_1 = u_input.b;
    var_0 = u_input.b;
    var var_2 = 203f;
    return Struct_2(func_5(func_4(func_2(), Struct_2(Struct_1(-2147483647i, -1084f, u_input.a, vec2<bool>(true, arg_2), 1673u))), Struct_2(Struct_1(13497i, -643f, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_1, u_input.a.x, 2147483647i), u_input.a), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), min(u_input.c, 0u))), Struct_1(1i, 325f, _wgslsmith_mult_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(arg_2, arg_2, true, true)), vec4<i32>(arg_1, arg_1, -1i, u_input.a.x)), select(!vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_2, true)), func_2().x)));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_5 {
    var var_0 = Struct_4(arg_1.a.c.xxx, _wgslsmith_add_vec4_i32(max(vec4<i32>(firstLeadingBit(-56652i), 59766i, -u_input.a.x, 21908i), arg_1.a.c | _wgslsmith_mod_vec4_i32(arg_1.a.c, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, arg_1.a.c.x))), arg_1.a.c));
    var_0 = Struct_4(abs(vec3<i32>(~_wgslsmith_div_i32(var_0.a.x, 38019i), reverseBits(abs(var_0.b.x)), -countOneBits(u_input.a.x))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(18423i, 1i, -1i, 16510i), vec4<i32>(-2147483647i, arg_1.a.c.x, var_0.b.x, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 52641i, var_0.a.x), var_0.b)), vec4<i32>(u_input.a.x, ~u_input.a.x, 666i >> (u_input.c % 32u), u_input.a.x)));
    var var_1 = Struct_2(func_5(func_4(vec3<u32>(arg_1.a.e, 4294967295u, _wgslsmith_mod_u32(arg_2, 0u)), arg_1), Struct_2(arg_1.a), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(751f, 642f)) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a), vec2<bool>(true, true), 0u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(387f)) * _wgslsmith_f_op_f32(step(func_1(vec3<u32>(1u, 0u, 4294967295u), func_1(u_input.d, -2147483647i, true, arg_1.a.e).a.a, arg_1.a.e > arg_2, u_input.b.x).a.b, 1f))) * var_1.a.b);
    let var_3 = var_1.a;
    return Struct_5(6090i, Struct_3(-457f, 1000f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 916f, _wgslsmith_f_op_f32(1022f - -1716f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1136f + arg_0))))), var_1.a.d.x, Struct_1(~_wgslsmith_mult_i32(1i, max(-2147483647i, u_input.a.x)), arg_0, vec4<i32>(_wgslsmith_dot_vec3_i32(arg_1.a.c.yzy, arg_1.a.c.yzx) << (40812u % 32u), min(~var_1.a.c.x, 1i), 29324i, _wgslsmith_div_i32(var_1.a.c.x, -10419i)), var_3.d, countOneBits(1u >> ((26687u >> (arg_2 % 32u)) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-748f - 1914f), false)), func_1(~(~(~u_input.d)), u_input.a.x, true, ~u_input.b.x), min(u_input.c, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.c), vec3<u32>(1u, 4294967295u, 1u)))));
    let var_1 = func_1(u_input.d, 2147483647i, false, _wgslsmith_div_u32(112121u, ~(~(~0u))));
    var var_2 = u_input.d;
    let var_3 = !any(var_0.d.d);
    var_2 = max(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b.wyy), vec3<u32>(0u, 13904u, var_2.x)), 37182u, u_input.c & ~4294967295u)), vec3<u32>(75269u, _wgslsmith_dot_vec3_u32(u_input.b.zzz, vec3<u32>(reverseBits(var_0.d.e), 43069u, var_2.x)), ~(~27707u) >> (min(66744u, var_2.x) % 32u)));
    var var_4 = Struct_1(var_0.d.c.x, _wgslsmith_f_op_f32(func_5(func_4(u_input.d & vec3<u32>(0u, var_1.a.e, var_1.a.e), var_1), func_1(~vec3<u32>(16893u, var_0.d.e, u_input.c), -2147483647i, all(vec2<bool>(true, true)), ~var_0.d.e), var_0.d).b - _wgslsmith_f_op_f32(max(var_1.a.b, 1036f))), var_1.a.c, vec2<bool>(func_6(321f, Struct_2(Struct_1(var_1.a.a, 1000f, var_0.d.c, var_0.d.d, var_0.d.e)), ~var_0.d.e).c, _wgslsmith_f_op_f32(round(var_0.d.b)) >= var_0.b.c.x), func_5(func_4((u_input.d << (vec3<u32>(4294967295u, var_0.d.e, 4294967295u) % vec3<u32>(32u))) >> (abs(vec3<u32>(var_2.x, 0u, 1u)) % vec3<u32>(32u)), Struct_2(var_0.d)), Struct_2(func_1(vec3<u32>(22600u, var_0.d.e, var_0.d.e), u_input.a.x, true, reverseBits(31413u)).a), Struct_1(_wgslsmith_mult_i32(var_0.a, -50025i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(887f + 597f), _wgslsmith_f_op_f32(f32(-1f) * -1472f))), ~(~var_0.d.c), !vec2<bool>(var_0.d.d.x, var_0.d.d.x), ~0u)).e);
    var_2 = abs(vec3<u32>(~0u, ~_wgslsmith_mult_u32(firstTrailingBit(5979u), 1u), abs(~(12413u | var_0.d.e))));
    var_2 = ~(~min(vec3<u32>(~1u, var_1.a.e, ~7677u), ~(vec3<u32>(var_2.x, var_1.a.e, var_1.a.e) << (vec3<u32>(u_input.d.x, 1u, 4726u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_4(u_input.b.zzy, func_1(select(vec3<u32>(u_input.b.x, var_1.a.e, 42431u), u_input.b.xyx, true), firstTrailingBit(u_input.a.x), !var_1.a.d.x, min(var_1.a.e, var_0.d.e))), Struct_2(var_0.d), func_1(~(vec3<u32>(var_0.d.e, 24900u, 20003u) >> (vec3<u32>(var_0.d.e, var_0.d.e, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_add_i32(u_input.a.x ^ 52107i, ~(-44635i)), !all(vec3<bool>(var_4.d.x, var_4.d.x, var_4.d.x)), ~var_2.x).a).e, firstTrailingBit(abs(4294967295u << (var_0.d.e % 32u)) | var_0.d.e), vec2<f32>(var_1.a.b, _wgslsmith_f_op_f32(-var_1.a.b)));
}

