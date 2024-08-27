struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(-511f, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, ~1u)), vec2<u32>(~(~39070u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(2465u, u_input.b), 49060u & u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-885f, 1000f, 2788f, -840f), vec4<f32>(1916f, -790f, -1066f, 319f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1648f, -631f, 1117f, 847f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, 1150f, 1280f, -367f) - vec4<f32>(574f, -1000f, 223f, 781f)))))), Struct_1(~(~_wgslsmith_sub_u32(u_input.d, 10118u)), ~(-abs(u_input.e)), u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = Struct_1(~(~12262u), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.e, u_input.c.x), ~firstTrailingBit(_wgslsmith_clamp_i32(var_0.d.b, -2147483647i, var_0.d.b))), 28717u);
    let var_3 = Struct_4(~(u_input.c & countOneBits(~u_input.c)), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) + -171f))), u_input.d, vec4<f32>(-1073f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), -933f))), Struct_1(select(var_2.a, _wgslsmith_sub_u32(var_0.b, var_2.a), true), i32(-1i) * -var_2.b, ~1u)), vec2<i32>(-1i, var_2.b));
    var_2 = Struct_1(0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(32550u, var_0.d.c ^ 0u), u_input.a.zx) % 32u), 42663i, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(max(var_3.b.d.c, var_0.b), u_input.b & var_0.b) | var_2.c));
    return 8537u;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> i32 {
    let var_0 = 0i;
    var var_1 = ~_wgslsmith_add_u32(1u, ~_wgslsmith_div_u32(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.b), arg_0.xx)));
    var_1 = firstLeadingBit(func_3());
    let var_2 = _wgslsmith_clamp_u32(u_input.b, func_3(), 92840u);
    let var_3 = Struct_2((vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(20772u, u_input.d, 1878u)), ~71888u, ~4294967295u) & select(vec3<u32>(var_2, 17518u, var_2), vec3<u32>(1u, 68244u, var_2) | u_input.a, select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))) ^ abs(u_input.a), -vec4<i32>(~u_input.e, -(u_input.c.x & var_0), _wgslsmith_sub_i32(~0i, _wgslsmith_mult_i32(arg_1, -14098i)), firstTrailingBit(-2147483647i)), true, var_0);
    return ~arg_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(698f, ~(~(~4294967295u & _wgslsmith_sub_u32(20249u, arg_1.c))), vec4<f32>(_wgslsmith_f_op_f32(floor(612f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(exp2(arg_0.x))))), arg_0.x, arg_0.x), arg_2);
    let var_1 = Struct_3(var_0.a, var_0.d.a, vec4<f32>(_wgslsmith_f_op_f32(abs(873f)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f - var_0.c.x) + _wgslsmith_f_op_f32(-var_0.a))), -800f), arg_1);
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(step(arg_0.x, var_1.a)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -643f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1286f)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -286f))))), 0u, var_0.c, Struct_1(55158u | var_0.d.a, arg_1.b, countOneBits(12823u)));
    return Struct_1(arg_2.a | 4294967295u, -(~1i), _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(u_input.a.xz, u_input.a.xy), u_input.a.xy & vec2<u32>(42399u, arg_2.c), true), u_input.a.yy) ^ 4294967295u);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = firstTrailingBit(abs(-_wgslsmith_sub_i32(abs(-35887i), ~36677i)));
    var var_1 = Struct_3(1000f, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 62575u)), vec3<u32>(40847u, 33837u, u_input.d) | u_input.a), countOneBits(~u_input.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, 726f, arg_0))))))), func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1898f, arg_0) - vec2<f32>(arg_0, arg_0))))), Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.a.x) ^ ~0u, func_2(~vec3<u32>(5545u, 814u, 21965u), ~u_input.e), ~u_input.a.x), Struct_1(countOneBits(6376u), -16802i, firstTrailingBit(23644u))));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(var_1.c.x, 230f)), _wgslsmith_div_f32(arg_0, 1756f)))))), Struct_1(~_wgslsmith_mod_u32(firstTrailingBit(u_input.d), max(u_input.b, u_input.d)), 31786i, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 1u, 0u) >> (vec4<u32>(u_input.a.x, u_input.a.x, var_1.b, var_1.d.c) % vec4<u32>(32u)), abs(vec4<u32>(8469u, 29817u, 54898u, u_input.d))), abs(22477u))), Struct_1(36201u, firstLeadingBit(reverseBits(~(-2147483647i))), firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(57144u, u_input.b), vec2<u32>(4294967295u, 38599u)), firstTrailingBit(u_input.a.xz)))));
    let var_3 = Struct_1(~_wgslsmith_mod_u32(64270u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zx), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 80335u, 13052u, 31699u), vec4<u32>(u_input.d, 9467u, var_2.a, 1u)), 25309u)), var_2.b, countOneBits(max(var_1.d.a << (var_1.d.a % 32u), var_2.a)) | u_input.d);
    let var_4 = Struct_1(4294967295u, firstTrailingBit(-var_2.b), firstTrailingBit(var_1.b));
    return _wgslsmith_add_i32(var_1.d.b, -1i) < -u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(520f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(495f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f + 2228f)))), _wgslsmith_add_u32(1u, reverseBits(~u_input.d) << (_wgslsmith_mod_u32(~6395u, 6299u) % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-319f)))), _wgslsmith_f_op_f32(floor(382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - -1098f)), -165f)), Struct_1(~(~u_input.b), u_input.c.x, ~_wgslsmith_mod_u32(u_input.a.x, u_input.b)));
    var var_1 = false;
    var var_2 = Struct_4(vec2<i32>(u_input.c.x, -2147483647i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a, 511f)), -1119f))), ~(~var_0.d.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x * 2611f), 410f)), Struct_1(var_0.d.c >> (1u % 32u), _wgslsmith_add_i32(var_0.d.b & -2147483647i, 5349i), 19828u)), vec2<i32>(var_0.d.b, -countOneBits(1i)) << (~vec2<u32>(abs(74162u), 36289u) % vec2<u32>(32u)));
    var_1 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-953f, var_2.b.a) * var_2.b.a)))));
    let var_3 = var_2.b.d;
    let var_4 = _wgslsmith_sub_vec4_i32(firstLeadingBit(~(vec4<i32>(0i, var_2.b.d.b, u_input.e, -32930i) & vec4<i32>(-29779i, 1683i, -10984i, u_input.e))), vec4<i32>(firstLeadingBit(-32857i), _wgslsmith_clamp_i32(u_input.e, -18435i, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 19926i), u_input.e, _wgslsmith_clamp_i32(var_3.b, 0i, 2147483647i)), var_0.d.b)) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, u_input.a.x, var_3.c, var_3.c)) ^ vec4<u32>(~1u, abs(var_3.c), min(var_3.a, var_3.a), 1u), vec4<u32>(~u_input.b, ~(var_2.b.b >> (13770u % 32u)), var_2.b.d.a, func_3())) % vec4<u32>(32u));
    var_0 = Struct_3(var_0.a, _wgslsmith_sub_u32(16818u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.c, var_2.b.b, var_2.b.b, 1u), vec4<u32>(u_input.b, u_input.b, u_input.a.x, var_0.b)) & (vec4<u32>(3646u, var_0.d.c, 4294967295u, 0u) >> (vec4<u32>(4294967295u, var_2.b.b, u_input.d, 51381u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.b, var_0.d.c, u_input.b, 7207u) | vec4<u32>(var_2.b.b, var_0.d.a, var_3.a, var_2.b.d.a), _wgslsmith_sub_vec4_u32(vec4<u32>(60739u, var_0.b, u_input.d, 112365u), vec4<u32>(1u, u_input.a.x, 0u, var_0.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.c)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(var_2.b.c))))), var_2.b.d);
    var_2 = Struct_4(vec2<i32>(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 1000f) - var_2.b.c.ww) * vec2<f32>(var_0.a, var_0.c.x)), var_2.b.d, Struct_1(~var_3.a, select(0i, u_input.c.x, true), _wgslsmith_mod_u32(u_input.b, var_3.c))).b, firstTrailingBit(-_wgslsmith_sub_i32(-12866i, 71310i))), Struct_3(-900f, min(1u, ~(~30140u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.a, 1047f, var_0.a), var_2.b.c)) - vec4<f32>(var_0.a, var_0.c.x, var_0.a, var_0.a)))), Struct_1(_wgslsmith_div_u32(33581u, var_0.d.a) & ~36587u, countOneBits(max(u_input.c.x, var_3.b)), 4294967295u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-(var_2.b.d.b >> (133710u % 32u)), abs(2147483647i) ^ -var_2.b.d.b), u_input.c, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_mod_i32(var_0.d.b, -2147483647i) ^ _wgslsmith_dot_vec3_i32(var_4.ywz, var_4.zxy)) | 27011i) >> ((var_3.a ^ 0u) % 32u));
}

