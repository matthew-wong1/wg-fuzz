struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>) -> bool {
    var var_0 = ~vec3<i32>(-584i, 2147483647i, ~(-arg_2.x >> (1u % 32u)));
    let var_1 = max(_wgslsmith_div_vec4_i32(arg_2, abs(countOneBits(~vec4<i32>(arg_1, -8838i, u_input.a.x, arg_1)))), arg_2);
    var var_2 = -(_wgslsmith_div_i32(countOneBits(arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_0.x, arg_2.x), u_input.a)) >> (0u % 32u));
    var var_3 = Struct_2(vec2<u32>(~4294967295u, 4294967295u), vec4<bool>(false, any(vec3<bool>(true, true, true)), (i32(-1i) * -1i) <= _wgslsmith_mod_i32(-29806i, u_input.a.x), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), 1u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1898f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f * -101f) - _wgslsmith_div_f32(-932f, 466f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - -129f))) - -169f)));
    return !any(vec3<bool>(true, any(var_3.b) && true, true));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_2(vec2<u32>(1u, 1u), vec4<bool>(any(vec2<bool>(false, true)), !arg_0, select(arg_0, true, _wgslsmith_f_op_f32(select(-301f, 1000f, false)) >= _wgslsmith_f_op_f32(909f + 495f)), func_3(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 13519i, u_input.a.x), vec4<i32>(u_input.a.x, 20747i, 0i, 2147483647i)), arg_1.x), u_input.a.x, vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_mod_i32(arg_1.x, 0i), _wgslsmith_sub_i32(arg_1.x, -1150i)))), 8647u);
    let var_1 = Struct_2(var_0.a & _wgslsmith_sub_vec2_u32(min(select(var_0.a, vec2<u32>(var_0.a.x, 0u), var_0.b.yz), vec2<u32>(1u, 8326u)), ~var_0.a), !(!var_0.b), ~var_0.a.x);
    var_0 = var_1;
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-520f, 1741f, 1213f, 1773f), vec4<f32>(830f, -268f, 482f, -710f), var_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, 219f, 730f, 408f)) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-475f, -537f, -2185f, 218f), vec4<f32>(-119f, 498f, 201f, -283f))) + vec4<f32>(-1559f, _wgslsmith_f_op_f32(min(-1195f, 775f)), -345f, _wgslsmith_f_op_f32(min(-1000f, 418f))))));
    return abs(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.c | var_0.c, ~0u), _wgslsmith_mod_u32(~var_0.c, 4294967295u)), var_0.c, ~_wgslsmith_div_u32(~var_0.c, 0u), var_0.a.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = ~select(~(~vec4<u32>(1u, 84047u, 1u, 29437u) >> (func_2(arg_2.x, vec3<i32>(-1i, 44959i, u_input.a.x)) % vec4<u32>(32u))), func_2(any(vec4<bool>(true, true, true, arg_2.x)), -vec3<i32>(34776i, 31567i, u_input.a.x) & u_input.a), select(vec4<bool>(true, any(vec3<bool>(false, true, true)), 1623f < arg_0.x, false), arg_2, arg_2.x));
    var_0 = ~(~vec4<u32>(abs(var_0.x), var_0.x, _wgslsmith_div_u32(48337u, var_0.x), func_2(arg_2.x, vec3<i32>(u_input.a.x, u_input.a.x, -1i)).x)) >> ((~(~max(vec4<u32>(43190u, 45614u, 1u, var_0.x), vec4<u32>(var_0.x, 24373u, 99900u, var_0.x))) | ~vec4<u32>(var_0.x, 59766u, var_0.x ^ var_0.x, var_0.x ^ 8852u)) % vec4<u32>(32u));
    let var_1 = Struct_1(vec4<bool>(true, false, arg_2.x, arg_2.x), arg_2.ywz, _wgslsmith_dot_vec4_u32(select(select(~vec4<u32>(96518u, var_0.x, var_0.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(2634u, 35088u, 20408u, var_0.x)), arg_2), func_2(u_input.a.x < u_input.a.x, vec3<i32>(-885i, u_input.a.x, u_input.a.x)), arg_2.x), vec4<u32>(~12295u, ~var_0.x, 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47386u), vec2<u32>(var_0.x, 63476u)), var_0.x | 20925u, var_0.x))), abs(var_0.x));
    var_0 = ~select(~(~vec4<u32>(4294967295u, 1u, 1u, 20498u)), func_2(func_3(u_input.a.yx, u_input.a.x, max(vec4<i32>(11496i, u_input.a.x, 1i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i))), vec3<i32>(_wgslsmith_div_i32(27749i, -1i), 2147483647i, min(5076i, 3014i))), select(!(!var_1.a), select(select(var_1.a, var_1.a, vec4<bool>(false, var_1.a.x, arg_2.x, false)), vec4<bool>(false, true, true, var_1.b.x), all(vec3<bool>(arg_2.x, arg_2.x, true))), false));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.zw, vec2<u32>(var_1.d, 1u) | vec2<u32>(4294967295u, var_0.x)), vec2<u32>(~var_0.x, 1u << (var_0.x % 32u))), _wgslsmith_mod_u32(abs(abs(var_0.x)), _wgslsmith_dot_vec3_u32(~var_0.zzz, var_0.yyz)), ~_wgslsmith_div_u32(~51530u, ~1u), reverseBits(0u)), ~vec4<u32>(1u, select(var_1.c | var_0.x, 1u, any(vec4<bool>(arg_2.x, true, arg_2.x, false))), var_0.x, var_1.d));
    return !var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = firstLeadingBit(select(_wgslsmith_add_vec3_i32(~abs(vec3<i32>(u_input.a.x, u_input.a.x, -41381i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-52675i, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, ~(-1i), 1i), u_input.a), !func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 1274f, -128f, 1347f) * vec4<f32>(743f, 1000f, 235f, -752f)), _wgslsmith_f_op_f32(f32(-1f) * -501f), vec4<bool>(true, false, true, true))));
    var var_2 = Struct_1(vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), true, true & (select(30895u, var_0, true) != ~var_0), false), select(vec3<bool>(all(vec3<bool>(true, true, true)), ~4294967295u > var_0, true), !vec3<bool>(u_input.a.x <= var_1.x, func_1(vec4<f32>(-1291f, 1910f, 1688f, -656f), -551f, vec4<bool>(false, false, true, false)).x, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)), 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, min(var_0, 52681u)), ~vec2<u32>(0u, var_0)));
    var_2 = Struct_1(!(!var_2.a), !var_2.b, firstLeadingBit(max(8408u, ~4294967295u | (var_2.c << (62579u % 32u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(1u), 4294967295u, ~var_0, 21319u), ~(~(~vec4<u32>(var_2.c, var_0, var_2.c, 39317u)))));
    var var_3 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u & var_0, ~var_2.c, countOneBits(countOneBits(60764u)), var_0), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1935f)), -713f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(205f + -393f)))))), (~(vec4<u32>(var_2.c, var_2.d, 39315u, var_0) >> (vec4<u32>(1u, 10130u, 4052u, 11215u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.d, 43643u, var_0) >> (vec4<u32>(34244u, 36079u, 32317u, var_0) % vec4<u32>(32u)), ~vec4<u32>(48411u, var_0, 22485u, 103486u))) & ~abs(vec4<u32>(19840u, var_0, 61316u, 7398u)));
}

