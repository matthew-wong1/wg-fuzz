struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec2<f32> {
    var var_0 = !select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), true));
    var_0 = !(!(!select(!vec4<bool>(false, var_0.x, true, true), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), true), var_0.x | var_0.x)));
    var_0 = !(!(!select(!vec4<bool>(true, var_0.x, false, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true)));
    var var_1 = 86735u;
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_add_i32(u_input.b.x, -49040i)), _wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_0, u_input.b.x, 0i), ~vec3<i32>(17287i, 0i, 0i), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, false))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 14787i, -1i), firstTrailingBit(vec3<i32>(arg_0, -37536i, arg_0)), select(vec3<i32>(51457i, -24300i, u_input.b.x), vec3<i32>(1i, arg_0, -1951i), true)))), ~max(firstTrailingBit(u_input.b.x >> (u_input.a % 32u)), abs(7106i >> (u_input.a % 32u))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1485f, 667f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, -407f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1690f, -287f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(1031f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-953f)), _wgslsmith_f_op_f32(-1000f * 710f))))));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 305f, false)) * -803f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1093f, -1489f)), _wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -456f), _wgslsmith_f_op_f32(-1233f - -182f))) - -253f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.x, 566f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(233f)), -519f, _wgslsmith_f_op_f32(-401f + 2516f), _wgslsmith_f_op_f32(-891f + var_0.a.x)) * vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -981f), 214f, 561f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(764f, 1178f) * _wgslsmith_f_op_vec2_f32(func_3(u_input.b.x)))))), -1415f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_1.x, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 1426f, var_0.a.x))))), vec2<u32>(~reverseBits(0u), (47557u | _wgslsmith_mult_u32(arg_0.x, 2769u)) | 13198u));
    var var_3 = any(select(select(vec2<bool>(true, false), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, 4537i, 1i & u_input.b.x), select(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, 0i, -2147483647i), firstTrailingBit(vec3<i32>(36019i, -15866i, 1i))), false)));
    return ~vec3<i32>(~((u_input.b.x ^ 50956i) & (i32(-1i) * -1i)), -2147483647i, min(~(2147483647i ^ var_4.x), -8612i & _wgslsmith_div_i32(13910i, u_input.b.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -956f)))), _wgslsmith_f_op_f32(trunc(323f))), 225f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1115f, 523f)) - 1326f), 743f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1074f + _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 302f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 911f))))), ~select(u_input.c.zz, vec2<u32>(_wgslsmith_mult_u32(54364u, 17178u), _wgslsmith_mult_u32(3116u, 26900u)), true));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(var_1.c.yx + var_1.c.zz), _wgslsmith_f_op_f32(step(var_1.b, var_1.c.x)), _wgslsmith_f_op_vec3_f32(-var_1.c), ~_wgslsmith_sub_vec2_u32(u_input.c.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), ~u_input.c.xw)));
    var_1 = Struct_2(var_1.c.yx, 1000f, vec3<f32>(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(473f, var_1.a.x, false)), true))), -1502f, _wgslsmith_f_op_f32(-1158f - var_1.a.x)), select(~_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.c.wx), abs(vec2<u32>(0u, 1085u))), abs(_wgslsmith_mult_vec2_u32(u_input.c.zz, var_1.d) << (firstTrailingBit(vec2<u32>(118795u, 50323u)) % vec2<u32>(32u))), false));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(i32(-1i) * -32957i, arg_0, ~arg_1.a.x), abs(select(arg_1.a, vec3<i32>(u_input.b.x, -1i, -1i) | vec3<i32>(u_input.b.x, 0i, arg_1.b), select(false, true, false)))), -reverseBits(-2147483647i >> (~var_1.d.x % 32u)));
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-arg_1.a.x, 6031i | arg_1.b, 0i) ^ ~(vec3<i32>(-1i, arg_0, 22783i) & vec3<i32>(14213i, arg_1.b, -26120i)), vec3<i32>(firstTrailingBit(12699i) ^ -1i, _wgslsmith_div_i32(u_input.b.x, var_2.a.x), u_input.b.x)), -20550i);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    return func_4(10070i, Struct_1(func_2(u_input.c.zx), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(-(-vec3<i32>(u_input.b.x, u_input.b.x, 24253i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 48886u), vec3<u32>(4294967295u, u_input.a, u_input.c.x)) % vec3<u32>(32u))));
    var var_1 = func_1(597f, vec4<i32>(abs(~u_input.b.x), u_input.b.x, u_input.b.x, _wgslsmith_mod_i32(-37988i, firstLeadingBit(_wgslsmith_dot_vec3_i32(var_0, vec3<i32>(u_input.b.x, u_input.b.x, var_0.x))))));
    var_1 = Struct_1(abs(max(max(var_0, vec3<i32>(var_1.a.x, var_1.a.x, 44305i) << (vec3<u32>(u_input.a, u_input.a, u_input.c.x) % vec3<u32>(32u))), ~var_1.a)), -7328i);
    var_1 = func_4(-(~_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, 40074i, -11132i), vec4<i32>(u_input.b.x, 28725i, var_0.x, 2147483647i)))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1404f))))), reverseBits(-vec4<i32>(var_0.x, 2147483647i, u_input.b.x, 2147483647i)) & ~firstLeadingBit(vec4<i32>(0i, -2147483647i, 9405i, u_input.b.x))));
    let var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.a, ~0u, u_input.a, countOneBits(u_input.a)), u_input.c) & vec4<u32>(24784u, 4294967295u, ~u_input.c.x, ~(~(~u_input.a)));
    var_1 = Struct_1(vec3<i32>(countOneBits(1i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2120f - -1406f)), vec4<i32>(_wgslsmith_mult_i32(var_1.b, -20325i), 2147483647i, _wgslsmith_sub_i32(1i, -27097i), var_0.x)).a.x, var_0.x), min(1i, u_input.b.x));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-385f * 577f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-987f, -524f))), _wgslsmith_f_op_f32(max(-1847f, 299f))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-442f, var_3.a.x)))))), var_3.a.x, var_3.a, _wgslsmith_sub_vec2_u32(~firstLeadingBit(var_2.wx), _wgslsmith_mod_vec2_u32(vec2<u32>(75001u, u_input.a), ~u_input.c.zz)) | var_2.wy);
    var_1 = func_1(var_3.a.x, vec4<i32>(-var_1.b, -u_input.b.x, 1i, func_4(1i >> ((4294967295u | var_4.d.x) % 32u), func_4(var_0.x, Struct_1(vec3<i32>(u_input.b.x, var_1.b, -2147483647i), -1i))).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_3.a.x, var_4.c.x, var_4.a.x))))), vec4<u32>(93919u, reverseBits(reverseBits(1u)), 0u, ~(~var_4.d.x)));
}

