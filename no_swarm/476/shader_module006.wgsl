struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(Struct_3(~(-vec2<i32>(-55562i, u_input.c.x)) >> (vec2<u32>(135463u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-269f)))) * 884f), max(_wgslsmith_div_u32(0u << (u_input.e % 32u), u_input.d << (u_input.b.x % 32u)), u_input.e)));
    var var_1 = abs(vec3<i32>(~var_0.a.a.x, ~var_0.a.a.x, abs(u_input.a)));
    var var_2 = var_0.a.b;
    var var_3 = Struct_2(Struct_1(vec4<i32>(~(-u_input.c.x), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.x, var_0.a.a.x, -39591i), vec3<i32>(2147483647i, 2147483647i, 1i)), var_0.a.a.x << (0u % 32u)), _wgslsmith_add_i32(5178i, u_input.c.x) & firstTrailingBit(u_input.c.x), 0i), 31153u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b + -1438f) + var_0.a.b), var_0.a.b, var_0.a.b)));
    var_2 = -484f;
    return -2147483647i;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<i32> {
    var var_0 = -1i;
    var_0 = abs(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a), arg_1.x, -8862i));
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, -30810i) ^ vec4<i32>(-2147483647i, -58940i, arg_1.x, arg_2), firstTrailingBit(vec4<i32>(-2147483647i, arg_2, arg_2, arg_1.x))), -vec4<i32>(-10159i, u_input.a, 1i, arg_2) >> (~vec4<u32>(4294967295u, 11728u, u_input.d, 64434u) % vec4<u32>(32u))), countOneBits(_wgslsmith_add_i32(firstTrailingBit(arg_2), 0i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(578f, -1156f))), !all(!arg_3.zyw))), u_input.e);
    var_0 = -(~(-(-arg_1.x & _wgslsmith_mod_i32(u_input.a, 49691i))));
    var var_2 = Struct_2(Struct_1(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, 1461i, arg_1.x), vec4<i32>(arg_1.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<i32>(-3833i, 15702i, 12184i, u_input.a))), arg_0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1753f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(1151f * var_1.b), _wgslsmith_div_f32(var_1.b, var_1.b))))));
    return var_2.a.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_3(~(~_wgslsmith_add_vec2_i32(arg_0.zx, vec2<i32>(u_input.c.x, arg_0.x)) ^ arg_0.xx), _wgslsmith_f_op_f32(trunc(824f)), 4294967295u);
    let var_1 = firstTrailingBit(1i);
    var var_2 = Struct_1(~func_4(~select(vec3<u32>(1u, 0u, u_input.e), u_input.b, false), vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.c.x, 1i)), abs(func_3()), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 31243u >> (countOneBits(var_0.c) % 32u), reverseBits(4294967295u), u_input.d), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, var_0.c, u_input.e, 1u) >> (vec4<u32>(var_0.c, 58024u, 19892u, u_input.e) % vec4<u32>(32u)), vec4<u32>(var_0.c, 5617u, var_0.c, u_input.e) & vec4<u32>(1u, u_input.d, var_0.c, 66730u)), vec4<u32>(var_0.c, 4294967295u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, var_0.c, 4294967295u), vec4<u32>(var_0.c, 18936u, 4294967295u, var_0.c))))));
    let var_3 = ~countOneBits(41162u);
    var var_4 = firstTrailingBit((u_input.e << (firstTrailingBit(u_input.d) % 32u)) ^ ~u_input.b.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-947f - -641f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 935f))), _wgslsmith_f_op_f32(-575f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(173f, var_0.b))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-230f, var_0.b, -891f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, 123f, -473f) * vec3<f32>(var_0.b, var_0.b, 899f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(var_0.b)), var_0.b))));
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(u_input.c, abs(u_input.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1811f, 883f, -1805f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1134f, -1380f, 698f)))) + vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-103f)), _wgslsmith_f_op_f32(select(1874f, 348f, true))), _wgslsmith_f_op_f32(floor(-1854f)), 1f))));
    let var_1 = u_input.d;
    var var_2 = 28459i;
    var var_3 = firstLeadingBit(~_wgslsmith_dot_vec3_i32(countOneBits(u_input.c), _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(u_input.a, 19346i, -57909i), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.c.x)))));
    var var_4 = u_input.b.x;
    return max(~(~vec4<u32>(_wgslsmith_add_u32(12435u, var_1), _wgslsmith_clamp_u32(var_1, 4294967295u, var_1), u_input.d >> (var_1 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(41497u, u_input.e, 46220u, u_input.b.x), vec4<u32>(4294967295u, var_1, 73233u, 28278u)))), abs(max(vec4<u32>(u_input.b.x, ~u_input.d, 1459u, u_input.b.x), select(vec4<u32>(u_input.b.x, 4294967295u, var_1, 20649u), vec4<u32>(70649u, 1u, 4294967295u, u_input.e), vec4<bool>(false, true, true, false)) & (vec4<u32>(var_1, 0u, var_1, u_input.d) & vec4<u32>(u_input.d, 1u, 31012u, var_1)))));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = 650f;
    let var_1 = min(-u_input.c >> (vec3<u32>(_wgslsmith_add_u32(countOneBits(8604u), min(12456u, 4294967295u)), u_input.b.x, ~43518u) % vec3<u32>(32u)), abs(~arg_1));
    var var_2 = all(select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, _wgslsmith_f_op_f32(floor(-749f)) <= -434f, !any(vec3<bool>(false, false, true))), vec4<bool>(any(vec4<bool>(false, true, false, true)), !any(vec4<bool>(false, false, true, false)), var_0 < _wgslsmith_f_op_f32(step(var_0, 1352f)), _wgslsmith_f_op_f32(370f * var_0) > -834f)));
    var_2 = all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), true)) | any(select(vec3<bool>(arg_2.x != arg_3.x, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true)), !any(vec2<bool>(false, false))));
    var_2 = false;
    return vec4<i32>(-_wgslsmith_mod_i32(select(-1i, -52492i, false), 11734i) | _wgslsmith_mod_i32(-func_4(u_input.b, vec2<i32>(0i, arg_0), arg_1.x, vec4<bool>(true, true, true, false)).x, _wgslsmith_clamp_i32(arg_1.x, 0i, var_1.x) & ~(-2147483647i)), arg_0, func_4(select(arg_3.zzz, arg_2.zzz, true), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_1.x, -2147483647i), arg_1.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 3457i), vec2<i32>(34360i, var_1.x), vec2<i32>(-2147483647i, -2147483647i))), firstLeadingBit(2147483647i), vec4<bool>(true, true, true, true)).x, abs(-u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(countOneBits(u_input.b.xz) | abs(vec2<u32>(u_input.d, ~4294967295u)), vec2<u32>(u_input.e, _wgslsmith_clamp_u32(abs(42225u), u_input.d, (u_input.d >> (19330u % 32u)) & ~u_input.e)));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(func_5(countOneBits(-2147483647i) | (-9598i << (u_input.d % 32u)), vec3<i32>(select(0i, u_input.a, false), u_input.c.x ^ u_input.c.x, firstLeadingBit(2759i)), func_1(), (vec4<u32>(var_0.x, u_input.b.x, 17043u, var_0.x) << (vec4<u32>(u_input.b.x, 72338u, u_input.d, u_input.e) % vec4<u32>(32u))) & ~vec4<u32>(var_0.x, 27897u, 0u, 28301u)), vec4<i32>(abs(u_input.c.x | u_input.a), -1i, u_input.c.x, _wgslsmith_mult_i32(min(65366i, -3871i), 1i))), 1u);
    var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.xx, u_input.b.zx, u_input.b.yy), ~vec2<u32>(34042u, u_input.e)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, 1u), vec2<u32>(0u, u_input.d)), ~vec2<u32>(var_0.x, 4294967295u)), u_input.b.zx), abs(u_input.b.xy));
    let var_2 = any(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    var var_3 = -_wgslsmith_add_vec4_i32(var_1.a, vec4<i32>(-1i) * -func_5(u_input.a, vec3<i32>(2147483647i, -2147483647i, var_1.a.x), vec4<u32>(52386u, 4294967295u, var_1.b, var_0.x), vec4<u32>(4294967295u, 38301u, 0u, 10570u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -572f), 1f, _wgslsmith_f_op_f32(round(-710f)), -861f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1341f, 1000f, 322f, -708f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_5 = u_input.c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_1.b, countOneBits(~1u)));
}

