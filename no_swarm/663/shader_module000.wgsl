struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), arg_0.yww, ~abs(~0u), max(-1i, countOneBits(u_input.b))), abs(vec3<i32>(firstTrailingBit(u_input.b ^ u_input.b), _wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_dot_vec2_i32(~u_input.a, u_input.a))), -_wgslsmith_clamp_vec2_i32(~u_input.a >> (_wgslsmith_mult_vec2_u32(arg_1.yx, arg_1.yx) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.a >> (u_input.e.xz % vec2<u32>(32u)), vec2<i32>(-10336i, u_input.a.x)), vec2<i32>(-u_input.a.x, u_input.b)), ~vec3<u32>(~0u, ~(arg_1.x ^ u_input.e.x), 3108u), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_0)), vec3<f32>(-2255f, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -613f))), countOneBits(4294967295u), 9397i));
    var var_1 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), true), !vec4<bool>(u_input.c != 56907u, true, arg_0.x >= 1472f, false), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))), !select(vec4<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, true)), false, true, any(vec3<bool>(true, false, true)))), any(vec4<bool>(select(true, true, any(vec4<bool>(false, false, true, false))), ~u_input.a.x < _wgslsmith_add_i32(3003i, var_0.c.x), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), u_input.b >= _wgslsmith_dot_vec2_i32(u_input.a, var_0.b.xz))));
    var var_2 = Struct_2(var_0.e, var_0.b << (firstLeadingBit(~(~var_0.d)) % vec3<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(~47934i, firstTrailingBit(-17483i)), vec3<u32>(38919u, _wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, arg_2, 1u), vec4<u32>(arg_2, 4294967295u, 74925u, u_input.e.x)), 1u)), _wgslsmith_clamp_u32(82134u, min(_wgslsmith_mod_u32(4294967295u, u_input.e.x), 70594u), _wgslsmith_div_u32(8743u, _wgslsmith_mult_u32(arg_1.x, 72259u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, arg_0.x, -322f, -1722f), _wgslsmith_div_vec4_f32(var_0.a.a, var_0.e.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(arg_0.zxz, vec3<f32>(378f, -457f, arg_0.x)))))), _wgslsmith_dot_vec3_u32(arg_1, ~(vec3<u32>(1u, 1u, u_input.c) | vec3<u32>(11231u, arg_2, u_input.e.x))), -select(_wgslsmith_sub_i32(var_0.c.x, u_input.a.x), var_0.a.d & -20940i, var_1.x)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.a.a.zyw)), _wgslsmith_f_op_vec3_f32(ceil(var_2.e.b))))), abs(~max(arg_2, 0u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 26105i, 58002i) & vec4<i32>(0i, -1i, var_0.b.x, u_input.b), -vec4<i32>(1i, -8284i, var_2.a.d, 0i))), var_0.b, var_0.b.xz >> (min(~vec2<u32>(9797u, 52776u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, var_2.e.c), ~vec2<u32>(var_2.d.x, u_input.d))) % vec2<u32>(32u)), firstLeadingBit(arg_1), var_0.a);
    return _wgslsmith_f_op_vec4_f32(max(var_2.e.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(min(588f, 1000f)), -419f, _wgslsmith_f_op_f32(f32(-1f) * -660f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = arg_0;
    let var_1 = ~arg_0.a.c;
    return arg_0.a.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-133f, -1075f, 1300f, -495f) * vec4<f32>(-529f, 1773f, 440f, 593f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1914f, 2172f, -575f, 255f), u_input.e, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1077f, -1079f, -1130f), vec3<f32>(-1189f, -637f, 1223f), true))), 68852u, 2147483647i), _wgslsmith_div_vec3_i32(min(vec3<i32>(arg_1.x, u_input.a.x, arg_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_0.x, 25608i), arg_0)), arg_2), arg_0.xy, firstTrailingBit(abs(vec3<u32>(1u, u_input.c, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, -563f, -1009f, 679f)))), vec3<f32>(-245f, _wgslsmith_div_f32(-1540f, 2320f), -653f), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~66669u), ~(~arg_1.x))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1214f, 1000f, 1000f, 674f), u_input.e, u_input.c)).x, 409f, -2159f, -118f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d, 81089u, 38356u), vec4<u32>(0u, u_input.c, 58262u, u_input.c)), vec4<u32>(2687u, u_input.e.x, u_input.d, u_input.d) | vec4<u32>(u_input.d, 0u, 4294967295u, u_input.c)), _wgslsmith_sub_i32(5232i, ~(-1i))), countOneBits(vec3<i32>(arg_1.x, abs(arg_1.x), arg_0.x)), vec2<i32>(-_wgslsmith_add_i32(-102174i, u_input.a.x), firstLeadingBit(_wgslsmith_div_i32(-46915i, 1843i))), vec3<u32>(firstTrailingBit(firstLeadingBit(4294967295u)), 21277u, ~u_input.e.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(461f, 1144f, -556f, -1885f), vec4<f32>(-421f, 361f, -470f, -2255f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(384f, -695f, -1745f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, 1331f, -1760f) + vec3<f32>(1811f, -2173f, -1724f))), ~u_input.c, arg_1.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2146f, 1246f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 296f, var_0, -619f) + vec4<f32>(var_0, 1176f, var_0, 490f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, 182f, var_0))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, -268f, 313f, 686f))))), false)), select(vec4<bool>(arg_3.x, !arg_3.x, all(arg_3), true), vec4<bool>(arg_3.x, true, true, false), true))), vec3<f32>(442f, _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(755f + 586f), var_0, _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(1056f, -211f, var_0, -410f), vec3<u32>(u_input.c, 4294967295u, 4151u), u_input.c)).x, _wgslsmith_f_op_f32(var_0 + var_0)), u_input.e, ~1u)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + _wgslsmith_f_op_f32(trunc(var_0))))), ~u_input.e.x, ~(arg_0.x >> ((4721u << (u_input.e.x % 32u)) % 32u)));
    var var_2 = vec2<i32>(1i, ~reverseBits(0i));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1416f + var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(-var_0)))), vec4<f32>(_wgslsmith_f_op_f32(max(655f, var_1.b.x)), 1353f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-2026f - 1000f)), _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-651f, var_0))), var_1.b.x, 1090f), vec3<f32>(var_1.a.x, -149f, var_0)), 34710u, ~(-(1i ^ select(0i, arg_2.x, true))));
    let var_3 = vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.a.x)), var_1.b.x)) - _wgslsmith_f_op_f32(446f * _wgslsmith_f_op_f32(round(var_1.a.x)))), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(max(-685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f) * _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(-var_0));
    return vec2<bool>(true, false);
}

fn func_1() -> Struct_1 {
    var var_0 = !func_2(vec3<i32>(1i, -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 2147483647i, u_input.b, 2147483647i), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.b, 7004i))), ~(~abs(u_input.a)), vec3<i32>(u_input.b, u_input.b, abs(u_input.a.x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-299f, -1827f, -416f, -2121f), vec4<f32>(1578f, -619f, -956f, -111f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1605f, 334f, -293f, 844f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(892f, 1069f, -974f)))), _wgslsmith_clamp_u32(reverseBits(select(u_input.c, u_input.c, true)), 4294967295u, ~countOneBits(u_input.d)), _wgslsmith_clamp_i32(u_input.a.x, ~max(2147483647i, 7859i), u_input.b)), vec3<i32>(-1i) * -vec3<i32>(~1i, _wgslsmith_clamp_i32(u_input.a.x, 22115i, 7620i), ~2147483647i), vec2<i32>(1i, u_input.a.x), vec3<u32>(1200u, 54956u, 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, -651f, -440f, -733f) - vec4<f32>(-1306f, -125f, -358f, 674f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(876f, -256f, 552f, -958f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(938f, -1632f, 911f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-491f, 714f, 353f), vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, 1000f, 336f))), u_input.e.x, ~_wgslsmith_mod_i32(u_input.b, ~u_input.b)));
    let var_2 = select(!(!(!vec2<bool>(var_0.x, var_0.x))), !vec2<bool>(!all(vec2<bool>(false, var_0.x)), func_2(var_1.b, _wgslsmith_add_vec2_i32(var_1.c, vec2<i32>(0i, var_1.a.d)), countOneBits(var_1.b), !vec3<bool>(var_0.x, var_0.x, var_0.x)).x), vec2<bool>(15550i > (~var_1.c.x ^ 10827i), true));
    let var_3 = Struct_2(var_1.a, vec3<i32>(_wgslsmith_mod_i32(var_1.c.x, 50493i), u_input.b, ~var_1.c.x) ^ var_1.b, u_input.a, var_1.d, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(235f, 433f, var_1.a.b.x, var_1.a.b.x))), _wgslsmith_f_op_vec4_f32(var_1.e.a - var_1.a.a), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, true, true, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, var_1.e.a.x, -1841f, var_1.a.b.x), vec4<f32>(var_1.e.a.x, var_1.e.b.x, var_1.a.b.x, var_1.e.a.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e.b + vec3<f32>(var_1.e.a.x, -2023f, 1167f)) - _wgslsmith_f_op_vec3_f32(var_1.e.a.xxz - var_1.a.a.ywx)), vec3<f32>(var_1.e.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1352f), var_1.a.a.x), vec3<bool>(-1704f == var_1.a.b.x, var_2.x && true, true))), 52558u, _wgslsmith_add_i32(max(var_1.e.d, -2147483647i) | (i32(-1i) * -17570i), _wgslsmith_dot_vec2_i32(var_1.c, ~var_1.c))));
    var var_4 = var_1.e.b.xy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_3.e.a))), vec3<f32>(_wgslsmith_f_op_f32(var_3.a.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.a.x * -901f), _wgslsmith_f_op_f32(-2297f + 431f))), _wgslsmith_f_op_f32(var_3.e.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.a.x, -1569f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.x, var_3.e.a.x)) + 261f))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.c, 12554u, 68127u, 80984u), ~vec4<u32>(39304u, 20797u, 4294967295u, 4294967295u)), ~var_1.a.c) >> (countOneBits(var_3.a.c) % 32u), 2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = arg_2.a.x;
    return Struct_2(func_1(), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, -4064i) | -vec3<i32>(arg_2.d, arg_2.d, arg_0.d), vec3<i32>(-arg_0.d, func_1().d, _wgslsmith_mod_i32(40716i, 1i))), select(-(~vec3<i32>(arg_2.d, 61633i, 26866i)), vec3<i32>(2147483647i, arg_2.d, arg_0.d) << (max(u_input.e, vec3<u32>(u_input.e.x, 30567u, arg_2.c)) % vec3<u32>(32u)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))), countOneBits(u_input.a), vec3<u32>(reverseBits(4294967295u), _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(u_input.e.x, arg_0.c)), _wgslsmith_div_u32(1u, u_input.d) << (_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(arg_0.c, arg_2.c)) % 32u)), Struct_1(arg_2.a, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.a.x, arg_0.b.x), _wgslsmith_div_u32(5384u, firstTrailingBit(4294967295u)), _wgslsmith_div_i32(select(arg_0.d, select(-13217i, -60119i, false), true), 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_5(func_1(), -2147483647i, func_1());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(723f)) * _wgslsmith_f_op_f32(sign(286f))) > -1013f;
    var_2 = any(!vec2<bool>(all(vec3<bool>(true, true, false)), var_1.a.d >= var_1.a.d));
    let var_3 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_1.e.a, vec4<f32>(var_1.a.b.x, var_1.e.b.x, var_1.e.b.x, var_1.a.b.x)))), vec3<f32>(-225f, 1232f, var_1.a.b.x), ~17244u, ~u_input.b), _wgslsmith_clamp_i32(23733i, ~(-(~0i)), _wgslsmith_sub_i32(select(u_input.a.x, 0i, true) << (~1u % 32u), ~(2147483647i | var_1.c.x))), func_1()).b.zy;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(733f))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1().a.x * var_1.a.a.x), var_1.e.a.x));
    let var_5 = vec2<u32>(1u, var_0);
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(i32(-1i) * -1i, min(var_3.x << (15460u % 32u), 1i), ~1i, _wgslsmith_dot_vec3_i32(abs(var_1.b), _wgslsmith_mod_vec3_i32(var_1.b, var_1.b))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(firstLeadingBit(68633u), _wgslsmith_mult_u32(1895u, var_0) >> (0u % 32u)), _wgslsmith_mult_u32(1u, ~firstTrailingBit(85836u))), ~vec4<u32>(_wgslsmith_clamp_u32(abs(var_5.x), var_0, firstLeadingBit(u_input.c)), var_5.x, countOneBits(_wgslsmith_dot_vec2_u32(var_5, vec2<u32>(var_5.x, 79219u))), ~u_input.c << (u_input.e.x % 32u)), -_wgslsmith_sub_i32(min(firstLeadingBit(51979i), -1i ^ u_input.b), ~u_input.b), -(~(abs(vec4<i32>(var_1.a.d, 37819i, -2147483647i, 1i)) | select(vec4<i32>(u_input.b, u_input.b, u_input.b, -22954i), vec4<i32>(var_3.x, u_input.b, var_1.a.d, 11644i), true))));
}

