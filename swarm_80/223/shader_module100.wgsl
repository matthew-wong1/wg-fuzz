struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.a, max(4294967295u << ((arg_2.d ^ 4294967295u) % 32u), ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), ~(~_wgslsmith_sub_u32(15506u, arg_2.b)), -vec2<i32>(~arg_2.a.x, u_input.a.x)));
    return 11139u;
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = u_input.a;
    var_0 = min(_wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a), u_input.a), arg_2.a);
    var_0 = arg_2.a;
    var var_1 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -1i, -1i) & vec4<i32>(0i, -19287i, arg_1, -2147483647i), -vec4<i32>(u_input.a.x, 19490i, arg_2.e.x, arg_1)), -_wgslsmith_mult_i32(arg_2.e.x, var_0.x), min(var_0.x, var_0.x), max(reverseBits(u_input.a.x), 2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 2147483647i, arg_2.a.x, -1i), ~vec4<i32>(-11691i, arg_2.e.x, arg_2.e.x, -1i)), ~select(vec4<i32>(1i, 9418i, var_0.x, 71756i), vec4<i32>(var_0.x, arg_2.e.x, arg_1, arg_2.e.x), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1151f, arg_2.c, 250f, arg_0.x) + vec4<f32>(494f, arg_2.c, -378f, -879f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(-180f, arg_2.c, -2390f, 556f)))))));
    return -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, ~(-arg_1), u_input.a.x), firstLeadingBit(-arg_2.a) << ((u_input.c << (~u_input.c % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    let var_0 = abs(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1383f, 1318f, -1209f), vec4<f32>(-954f, -1000f, 384f, -123f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -1458f, -3765f, 1796f) + vec4<f32>(1897f, 370f, -558f, -1001f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-678f, 626f, -1056f, -743f), vec4<f32>(-1255f, -1583f, 1222f, -2875f))))), arg_1.x << (1u % 32u), Struct_1(min(firstTrailingBit(vec3<i32>(u_input.a.x, arg_1.x, arg_1.x)), abs(vec3<i32>(u_input.a.x, arg_1.x, -1i))), ~(~19799u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2061f * 1398f)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(31805u, arg_0.x, arg_0.x, 0u)), func_3(176f, arg_1.xx, Struct_1(vec3<i32>(-1i, u_input.a.x, u_input.a.x), arg_0.x, -695f, u_input.c.x, vec2<i32>(1i, 2147483647i)), u_input.a.x)), _wgslsmith_div_vec2_i32(-vec2<i32>(6905i, u_input.a.x), min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(0i, -2147483647i)))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 25657u), vec2<u32>(arg_0.x, 52953u))));
    var var_1 = !vec3<bool>(true, arg_2, arg_2);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f + 1833f) - _wgslsmith_div_f32(-495f, -333f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1441f + 118f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(603f + -1062f), arg_2 || arg_2))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-438f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1996f - _wgslsmith_div_f32(-692f, 1403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-952f + 651f) * _wgslsmith_f_op_f32(f32(-1f) * -893f))))));
    let var_3 = u_input.b.xzw;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-738f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)));
    return 19763i;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_i32(~(-func_2(vec2<u32>(arg_2.d, 4294967295u), vec3<i32>(u_input.a.x, 73302i, u_input.a.x), arg_0.x)), arg_2.a.x) != -(~select(abs(u_input.a.x), u_input.a.x, !arg_0.x));
    var var_1 = min(firstLeadingBit(0u), 101057u ^ (~arg_2.b >> (76339u % 32u)));
    var var_2 = Struct_1(~abs(~u_input.a), _wgslsmith_div_u32(69275u, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) - _wgslsmith_f_op_f32(215f + arg_2.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31111i, u_input.a.x, 0i, arg_2.a.x), vec4<i32>(-2147483647i, arg_2.a.x, 2147483647i, u_input.a.x)), arg_2.e.x), Struct_1(arg_2.a >> (vec3<u32>(41477u, 6528u, 90651u) % vec3<u32>(32u)), _wgslsmith_clamp_u32(u_input.c.x, arg_2.d, 0u), -1414f, select(u_input.b.x, 47084u, arg_0.x), -arg_2.a.zz), _wgslsmith_mult_i32(arg_2.a.x, 2147483647i) ^ 0i)), arg_2.c, arg_2.d, abs(arg_2.a.zx));
    var_0 = arg_0.x;
    var_1 = ~countOneBits(~select(min(u_input.b.x, 4294967295u), _wgslsmith_add_u32(u_input.c.x, 25528u), !arg_0.x));
    return arg_0.x;
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2604f), _wgslsmith_f_op_f32(f32(-1f) * -1040f))), -796f))) + _wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(-1944f * 722f), true))))));
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(round(var_0)))) - var_0));
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(select(~abs(vec3<i32>(-1i, -32699i, 33088i)), -vec3<i32>(2147483647i, 20053i, -55778i), select(arg_0, !vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), -u_input.a), 1u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(~25264u, u_input.b.x & u_input.c.x, u_input.b.x), firstLeadingBit(firstTrailingBit(4294967295u))), firstLeadingBit((~u_input.a.zy >> (vec2<u32>(3536u, var_1) % vec2<u32>(32u))) ^ countOneBits(firstLeadingBit(vec2<i32>(-1i, 32278i)))));
    var var_4 = ~min(u_input.c.x, _wgslsmith_mult_u32(0u, 32883u));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -407f;
    let var_1 = Struct_1(~(u_input.a | vec3<i32>(u_input.a.x >> (u_input.c.x % 32u), abs(u_input.a.x), u_input.a.x)), ~(~1u) & (((u_input.c.x ^ 0u) & ~u_input.c.x) | 0u), _wgslsmith_f_op_f32(trunc(1f)), 0u, u_input.a.xy);
    var var_2 = func_5(vec3<bool>(func_1(vec4<bool>(false, true, true, true), var_1.c, Struct_1(~u_input.a, var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1247f), abs(u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-46965i, -33952i), var_1.a.yz))), true, func_1(vec4<bool>(false, true, true, false), -1321f, var_1) == true));
    var_2 = var_1;
    var var_3 = 69384u;
    let var_4 = var_2.e;
    let var_5 = func_5(vec3<bool>(!any(vec4<bool>(false, true, false, false)), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-362f, 1000f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 119f, var_2.c) + vec3<f32>(var_1.c, -1000f, 159f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 1650f, var_5.c))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), true))), vec3<f32>(var_1.c, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(floor(var_5.c)), var_2.c <= var_5.c))), !select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)))), _wgslsmith_div_f32(var_2.c, -242f));
}

