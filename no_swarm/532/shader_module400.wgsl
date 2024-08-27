struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = all(!vec2<bool>(true, ~4294967295u >= u_input.d));
    var var_1 = 534f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1061f - -144f) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-280f, 406f))))), -1059f, ~(-firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -16853i, u_input.c), vec3<i32>(-13555i, u_input.b, -29831i)))));
    var_1 = _wgslsmith_f_op_f32(-1f);
    var_1 = var_2.b;
    return -2147483647i;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(1531f + arg_1.a)))));
    let var_1 = 63150u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1140f * -393f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * -734f) - arg_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(889f)), _wgslsmith_f_op_f32(f32(-1f) * -1103f))))));
    var var_3 = select(-_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.c.x, _wgslsmith_mod_i32(arg_1.c.x, 10167i)), countOneBits(firstLeadingBit(u_input.c))), func_3(), false);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-864f - 2379f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_div_f32(1088f, arg_1.b))) * _wgslsmith_f_op_f32(-arg_1.b)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-920f, 138f, ~(-(-vec3<i32>(-53101i, u_input.b, -3899i) << (vec3<u32>(u_input.a.x, u_input.d, u_input.a.x) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a)))) * _wgslsmith_f_op_f32(step(135f, -348f))));
    var var_2 = var_0;
    var var_3 = var_0;
    var_2 = Struct_1(_wgslsmith_f_op_f32(var_1 + -1464f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), Struct_1(var_0.b, _wgslsmith_f_op_f32(var_1 - var_1), ~var_0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_0))), -(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(28291i, var_2.c.x, u_input.b)), abs(vec3<i32>(32139i, -27945i, var_2.c.x))) ^ vec3<i32>(u_input.b << (u_input.a.x % 32u), 1i, i32(-1i) * -1i)));
    return _wgslsmith_f_op_f32(945f + 807f);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, u_input.a.x, u_input.d, u_input.d), arg_0)))) - _wgslsmith_f_op_f32(-arg_0.b)) * -749f), Struct_1(arg_0.b, _wgslsmith_div_f32(-216f, arg_0.a), abs(vec3<i32>(u_input.b, 1i, ~0i))), vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1279f), -1000f)));
    let var_1 = arg_1;
    var_0 = -287f;
    let var_2 = arg_0;
    let var_3 = vec2<i32>(arg_0.c.x, max(abs(arg_0.c.x ^ arg_0.c.x), firstTrailingBit(-var_2.c.x))) & vec2<i32>(func_3(), ~(-29970i));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))))), -1732f, (vec3<i32>(arg_0.c.x, arg_0.c.x, -2147483647i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 0i), arg_3.c)) << (vec3<u32>(1u, ~u_input.d, 4294967295u) % vec3<u32>(32u))), false);
    var_0 = arg_0;
    var_0 = Struct_1(1146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b - arg_2.a)), func_1(arg_3, true), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + -394f), _wgslsmith_f_op_f32(exp2(arg_0.a)), -618f)))), ~(vec3<i32>(_wgslsmith_clamp_i32(15164i, 1i, 60721i), -21990i, u_input.b) | func_1(arg_3, any(vec4<bool>(false, true, false, false))).c));
    let var_1 = true;
    var var_2 = arg_0;
    return !vec3<bool>(!(all(vec2<bool>(true, false)) && (0u <= u_input.a.x)), var_1, !all(vec3<bool>(true, true, true)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = countOneBits(arg_1.c.x);
    let var_1 = _wgslsmith_f_op_f32(1000f * 1311f);
    var_0 = firstTrailingBit(abs(abs(-u_input.b)));
    let var_2 = abs(vec3<i32>(_wgslsmith_add_i32(u_input.b >> (u_input.a.x % 32u), 24710i) | u_input.c, arg_1.c.x, ~_wgslsmith_dot_vec3_i32(arg_1.c, _wgslsmith_add_vec3_i32(arg_1.c, vec3<i32>(u_input.b, 1i, arg_1.c.x)))));
    var var_3 = Struct_1(arg_1.b, var_1, vec3<i32>(firstLeadingBit(arg_1.c.x), var_2.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(32467i, var_2.x, -1i, var_2.x)), ~vec4<i32>(-6577i, 31468i, arg_1.c.x, 1i))) >> (~(~vec3<u32>(4294967295u, u_input.a.x, u_input.d)) % vec3<u32>(32u)));
    return StorageBuffer(func_1(func_1(Struct_1(arg_1.a, var_3.b, var_2 << (vec3<u32>(1u, u_input.a.x, u_input.d) % vec3<u32>(32u))), arg_0.x), (~50966u ^ u_input.d) < u_input.a.x).c.zy, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(24352u, u_input.d, u_input.a.x, u_input.d), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 40923u)), 58117u, 14526u), max(vec4<u32>(u_input.a.x, u_input.d, 4294967295u, u_input.d), vec4<u32>(63911u, u_input.a.x, 34617u, u_input.a.x)) | firstTrailingBit(vec4<u32>(1u, 8277u, 4294967295u, 4294967295u))), 26039u, ~select(u_input.a.x, abs(u_input.a.x), !arg_0.x), u_input.a.x), countOneBits(vec3<i32>(arg_1.c.x, ~(-24650i), 10972i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(select(select(func_5(Struct_1(101f, -1000f, vec3<i32>(-53238i, u_input.c, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-47183i, u_input.c, 48080i, u_input.c), vec4<i32>(u_input.b, u_input.c, -24533i, u_input.c)), func_1(Struct_1(1182f, -2395f, vec3<i32>(58088i, u_input.b, u_input.c)), false), func_1(Struct_1(1274f, 716f, vec3<i32>(2147483647i, u_input.b, 0i)), true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), true), func_5(func_1(Struct_1(-2108f, -1015f, vec3<i32>(u_input.c, u_input.b, u_input.b)), true), reverseBits(-3823i), Struct_1(-657f, 386f, vec3<i32>(2147483647i, 2147483647i, u_input.b)), Struct_1(703f, 535f, vec3<i32>(-1i, u_input.b, -2147483647i)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, 1u > u_input.a.x, select(false, false, true)), vec3<bool>(all(vec3<bool>(true, true, false)), true, true)), true && (true || any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-313f, -245f))), -2805f, vec3<i32>(-5192i, _wgslsmith_mult_i32(u_input.c, 0i), 0i) << (vec3<u32>(firstLeadingBit(u_input.a.x), firstTrailingBit(u_input.d), u_input.d | 4294967295u) % vec3<u32>(32u))));
}

