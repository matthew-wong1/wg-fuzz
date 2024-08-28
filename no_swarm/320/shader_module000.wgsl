struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    var var_0 = -vec4<i32>(~(36746i << (~u_input.b.x % 32u)), 1i & arg_0.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(0i, -21037i)) << (_wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 0u) % 32u), 1i);
    let var_1 = Struct_2(-firstLeadingBit(reverseBits(~vec4<i32>(2147483647i, u_input.c, arg_0.x, 1i))), vec3<f32>(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f + _wgslsmith_f_op_f32(step(540f, -230f)))), -706f), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(357f, 1865f, -1519f), vec3<f32>(-2027f, 753f, -925f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1714f, 718f, -1690f))))), countOneBits(vec2<i32>(_wgslsmith_add_i32(var_0.x, -18148i), 1i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), 4294967295u));
    var_0 = var_1.a;
    var var_2 = Struct_2(vec4<i32>(arg_0.x, var_1.a.x, 1i, _wgslsmith_mult_i32(-55099i << (1u % 32u), -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.c.ywx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.c.xxz + var_1.c.a) - _wgslsmith_f_op_vec3_f32(floor(var_1.c.c.wxw)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(var_1.b.x, 332f, var_1.b.x))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(floor(-420f)), -685f), ~abs(var_1.a.yy), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-708f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_1.c.c.x)))), 217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1053f)) + _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_u32(u_input.a.x ^ firstTrailingBit(var_1.c.d), _wgslsmith_mod_u32(var_1.c.d, _wgslsmith_add_u32(1u, var_1.c.d)))));
    var_2 = var_1;
    return var_1.b;
}

fn func_2() -> i32 {
    let var_0 = i32(-1i) * -(~u_input.e);
    let var_1 = ~(~firstTrailingBit(79574u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(var_0, 0i)), true)), _wgslsmith_f_op_vec3_f32(func_3(abs(vec2<i32>(u_input.e, -40426i)), var_1 > 78989u))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1268f, 1257f, -1792f), vec3<f32>(-636f, -603f, 501f)) * vec3<f32>(516f, -377f, 1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, -1606f, 170f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 627f, -706f))), false)))));
    let var_3 = min(~(vec3<u32>(var_1, abs(var_1), var_1 << (var_1 % 32u)) >> (_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(6353u, u_input.b.x, 54505u)) % vec3<u32>(32u))), u_input.b | u_input.b);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1284f, 1000f, 188f) + vec3<f32>(var_2.x, -359f, var_2.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, 716f, var_2.x)))))) * _wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(firstTrailingBit(53039i), -41474i), true))), max(vec2<i32>(var_0, (u_input.e | -7713i) ^ firstLeadingBit(0i)), -vec2<i32>(min(2147483647i, -2147483647i), 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))) - vec4<f32>(335f, var_2.x, -707f, var_2.x)))), 66924u);
    return 14025i;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(~vec4<i32>(countOneBits(75623i), -u_input.c, func_2(), firstLeadingBit(-u_input.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, 1000f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, -964f, 2709f))) - vec3<f32>(_wgslsmith_f_op_f32(floor(-146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1342f * -1500f)), -775f)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, 276f, -1168f) + vec3<f32>(1000f, 1000f, -920f)))))), -vec2<i32>(u_input.e, u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1222f, -557f, 304f, -583f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), -648f, -2169f, -1169f)), u_input.d));
    var_0 = Struct_2(_wgslsmith_div_vec4_i32(var_0.a, ~var_0.a), var_0.c.c.wxx, var_0.c);
    var_0 = Struct_2(vec4<i32>(-54009i, -(~_wgslsmith_mod_i32(u_input.e, var_0.a.x)), u_input.c & _wgslsmith_div_i32(u_input.c, countOneBits(u_input.e)), _wgslsmith_div_i32(-var_0.c.b.x, min(2147483647i, var_0.c.b.x) >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)) + var_0.c.a)), var_0.c);
    let var_1 = select(select(vec2<bool>(all(vec2<bool>(true, false)) && select(true, false, false), true), select(vec2<bool>(select(false, false, false), true), vec2<bool>(true, false), vec2<bool>(false, true)), !select(false, false, false) != true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(true, all(vec3<bool>(false, true, false))), !vec2<bool>(21553u != u_input.d, true)), false);
    var_0 = Struct_2(-reverseBits((vec4<i32>(-2147483647i, -6827i, -1i, var_0.a.x) >> (vec4<u32>(u_input.a.x, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u))) ^ -vec4<i32>(var_0.c.b.x, -1i, -41894i, u_input.c)), vec3<f32>(576f, 1000f, -1998f), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(874f, 374f)), var_0.b.x, _wgslsmith_f_op_f32(var_0.c.c.x * 947f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.a)))), abs(countOneBits(var_0.c.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-747f, var_0.b.x, var_0.b.x, -661f))), _wgslsmith_f_op_vec4_f32(-var_0.c.c))), 32838u));
    return Struct_1(var_0.b, _wgslsmith_add_vec2_i32((-vec2<i32>(-7326i, 17492i) & _wgslsmith_clamp_vec2_i32(var_0.c.b, var_0.c.b, var_0.a.wz)) >> (select(_wgslsmith_add_vec2_u32(vec2<u32>(80201u, u_input.a.x), vec2<u32>(u_input.b.x, 63010u)), _wgslsmith_add_vec2_u32(u_input.a.yz, u_input.a.wx), !vec2<bool>(var_1.x, false)) % vec2<u32>(32u)), max(select(-vec2<i32>(u_input.c, var_0.c.b.x), var_0.a.ww ^ vec2<i32>(-4698i, 57382i), !var_1.x), var_0.c.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.c.c.x) + _wgslsmith_f_op_f32(var_0.c.a.x + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(188f))) * -429f), _wgslsmith_f_op_f32(390f * var_0.c.a.x), _wgslsmith_f_op_f32(sign(var_0.b.x))), 23729u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_2(~vec4<i32>(~0i, _wgslsmith_clamp_i32(arg_0.b.x, -39505i, arg_0.b.x), -56248i, min(arg_0.b.x, u_input.e)) >> (arg_2 % vec4<u32>(32u)), arg_0.a, arg_0);
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(var_0.c.d >> (_wgslsmith_div_u32(var_0.c.d, _wgslsmith_sub_u32(43373u, 33514u)) % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(firstTrailingBit(u_input.b), arg_2.zzx, vec3<bool>(false, false, false)), _wgslsmith_div_vec3_u32(u_input.a.xwz, ~vec3<u32>(arg_0.d, 0u, 4294967295u))), _wgslsmith_sub_u32(arg_2.x, arg_0.d)));
    let var_2 = var_0.c;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1180f, -1353f, -351f), vec3<f32>(-995f, -1111f, arg_0.a.x), vec3<bool>(false, true, true)))))), var_0.c.a, select(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 17824i >= var_2.b.x), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), true)))), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.x, -73753i), -var_2.b >> (arg_2.zz % vec2<u32>(32u))), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1394f, var_2.c.x)) - var_2.c.x)), _wgslsmith_f_op_vec3_f32(func_3(-vec2<i32>(1263i, var_0.a.x), true)).x, -961f), 18962u);
    var var_4 = vec2<bool>(all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true))), select(all(vec3<bool>(true, any(vec3<bool>(false, false, false)), true)), true, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) - func_1().c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1046f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1340f), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(func_4(func_1(), u_input.c, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.b.x))))))), -661f));
    var var_1 = Struct_2(vec4<i32>(u_input.e, func_1().b.x, u_input.c, func_2()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), -1204f, _wgslsmith_div_f32(var_0, 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -1365f, -113f))) * vec3<f32>(var_0, var_0, var_0)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(var_0, 2917f)), var_0))), func_1());
    var_1 = Struct_2(vec4<i32>(u_input.e, -(i32(-1i) * -12781i), ~(var_1.a.x << (13596u % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -1i, 0i), var_1.a)), _wgslsmith_div_vec4_i32(~var_1.a, vec4<i32>(u_input.e, 1i, -2147483647i, -16567i) ^ vec4<i32>(2147483647i, 1678i, -2147483647i, u_input.c)))), var_1.c.a, Struct_1(var_1.b, vec2<i32>(var_1.c.b.x, _wgslsmith_dot_vec2_i32(var_1.a.xx, var_1.c.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 605f, -1779f, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.x, -1962f, 739f, var_1.b.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -976f, 1000f, -234f), var_1.c.c)), true)), ~(select(4294967295u, u_input.d, true) << (~4294967295u % 32u))));
    var_1 = Struct_2(~(~vec4<i32>(var_1.c.b.x, var_1.c.b.x, max(u_input.e, u_input.c), -2147483647i)), _wgslsmith_f_op_vec3_f32(max(var_1.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(472f, var_0, 913f)))))))), func_1());
    var_1 = Struct_2(abs(~_wgslsmith_mult_vec4_i32(var_1.a, var_1.a)) >> (vec4<u32>(0u, ~max(u_input.a.x, 4294967295u), var_1.c.d, _wgslsmith_mult_u32(u_input.d, ~56024u)) % vec4<u32>(32u)), var_1.c.a, var_1.c);
    var var_2 = -1950f;
    var_2 = 1868f;
    let x = u_input.a;
    s_output = StorageBuffer(66684u, vec3<i32>(var_1.a.x, _wgslsmith_dot_vec3_i32(var_1.a.yxy, select(vec3<i32>(-1i, -19350i, 16071i), _wgslsmith_mult_vec3_i32(var_1.a.zxy, vec3<i32>(37920i, 11043i, var_1.c.b.x)), all(vec3<bool>(true, false, false)))), u_input.c), _wgslsmith_mult_u32(~var_1.c.d, var_1.c.d), ~0u);
}

