struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-655f - _wgslsmith_f_op_f32(min(591f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = u_input.d;
    var var_2 = false;
    let var_3 = true;
    var_2 = abs(~(~59457u)) >= max(~(~0u) << (_wgslsmith_mult_u32(arg_0.c, _wgslsmith_div_u32(17802u, var_1.x)) % 32u), arg_0.c & 21777u);
    return 22631u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-13626i, ~arg_3.a, _wgslsmith_sub_i32(arg_3.a, -1i), _wgslsmith_sub_i32(-1i, arg_3.a))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, arg_3.a, arg_3.a), vec3<i32>(-1i, 0i, -8986i)), arg_3.a, -12035i, countOneBits(arg_3.a | arg_3.a))), 46929i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_3.a, firstLeadingBit(abs(2147483647i))), abs(arg_3.a), firstLeadingBit(arg_3.a)), arg_3.a);
    var var_1 = false;
    var_1 = countOneBits(71807u) >= ~(~arg_3.c);
    var_1 = all(vec2<bool>(all(vec4<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, true)), false, true)), true));
    var_1 = ((~_wgslsmith_sub_i32(var_0.x, var_0.x) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.d.x), u_input.c) << (33418u % 32u)) % 32u)) >> (53314u % 32u)) == var_0.x;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, arg_1.d), arg_1.b.wz, vec2<bool>(false, true))) * arg_1.b.ww)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, ~u_input.c.x, func_3(Struct_2(16779i, Struct_1(vec3<f32>(-815f, 1698f, -961f), vec4<f32>(-576f, -769f, -1159f, -2118f), vec4<f32>(-1326f, 253f, -886f, 1280f), -782f), 8111u, 1442f), vec2<f32>(138f, -184f), 0i), u_input.b >> (38655u % 32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, min(u_input.c, u_input.c)), 0u, u_input.b & ~0u, u_input.b), select(reverseBits(vec4<u32>(1663u, u_input.d.x, 49318u, u_input.c.x)), reverseBits(firstTrailingBit(vec4<u32>(0u, 95916u, u_input.a.x, 96493u))), true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), -1000f, _wgslsmith_f_op_f32(max(1000f, -639f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1363f, -1019f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, -1049f, 1742f, -449f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-720f, -813f, -1928f, 1012f), vec4<f32>(556f, 1802f, -1078f, 482f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 330f, -587f, 1227f) - vec4<f32>(325f, -101f, 1000f, -1545f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-325f, 1365f, -551f, 1767f))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1066f, 980f, 1556f, 931f) * vec4<f32>(-154f, -833f, 1144f, -553f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(890f, -506f, 1743f, -607f)))), all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -741f) - _wgslsmith_f_op_f32(289f - 1135f)))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(~u_input.b, firstTrailingBit(firstLeadingBit(72240u)))), Struct_2(6306i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1574f, -617f, -226f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, -1000f, -1328f) + vec3<f32>(-488f, 624f, 477f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(353f, -392f, 1000f, 1000f) * vec4<f32>(-709f, 1000f, -1050f, -760f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-961f, 1000f, 446f, 1346f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-968f, -1690f, -723f, -877f), vec4<f32>(404f, -303f, -1330f, -640f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(113f, 1129f, 285f, -182f), vec4<f32>(-1167f, 628f, 488f, -953f), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1425f, 366f) * _wgslsmith_f_op_f32(max(3305f, -1516f)))), _wgslsmith_mod_u32(0u, u_input.c.x), 366f)));
    let var_1 = u_input.d & u_input.d;
    let var_2 = !any(vec3<bool>(false, true, true)) == !(!((var_0.x != var_0.x) || (u_input.a.x <= var_1.x)));
    var var_3 = Struct_2(_wgslsmith_add_i32(reverseBits(_wgslsmith_add_i32(i32(-1i) * -70740i, _wgslsmith_mod_i32(-2147483647i, 2147483647i))), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), vec2<i32>(-21002i, 2147483647i))), Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1176f)), _wgslsmith_f_op_f32(-321f - var_0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-908f, -592f, -2333f, var_0.x) + vec4<f32>(642f, -219f, var_0.x, var_0.x)) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -475f, 597f, var_0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x, -2209f), 1f), 1u, var_0.x);
    var var_4 = Struct_2(-21143i, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_3.b.b.zwx, vec3<f32>(2280f, var_0.x, -1168f), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, false)))))), _wgslsmith_div_vec4_f32(var_3.b.c, vec4<f32>(_wgslsmith_f_op_f32(224f + var_0.x), var_3.d, _wgslsmith_f_op_f32(var_0.x + var_3.b.c.x), _wgslsmith_f_op_f32(-var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(round(var_3.b.c.x)), _wgslsmith_f_op_f32(ceil(167f)), 302f, _wgslsmith_f_op_f32(f32(-1f) * -2267f)), 1000f), _wgslsmith_dot_vec3_u32(vec3<u32>(53417u, 78001u, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, var_3.c), 0u)), vec3<u32>(74590u << (func_3(Struct_2(-56755i, Struct_1(vec3<f32>(505f, var_0.x, var_3.b.c.x), var_3.b.c, vec4<f32>(var_3.b.d, -1066f, var_0.x, -1516f), var_0.x), var_1.x, var_0.x), vec2<f32>(var_0.x, -1000f), var_3.a) % 32u), firstTrailingBit(u_input.c.x | 29114u), 13666u)), -855f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(var_3.b.b.yzz, var_3.b.a, any(!select(vec2<bool>(var_2, var_2), vec2<bool>(false, false), var_2)))), var_3.b.b, var_4.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -230f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_2(firstTrailingBit(select(arg_2.a, arg_2.a, all(!vec3<bool>(false, arg_3.x, arg_3.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1247f, arg_2.b.b.x)) - vec3<f32>(arg_2.d, arg_1.c.x, arg_2.b.c.x)) * arg_0.a), _wgslsmith_f_op_vec4_f32(exp2(arg_1.b)), vec4<f32>(_wgslsmith_f_op_f32(step(-329f, _wgslsmith_f_op_f32(arg_2.b.d + arg_1.d))), 1159f, _wgslsmith_f_op_f32(arg_0.d * 822f), 319f), arg_1.d), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 0u, arg_2.c, 0u)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(62171u, arg_2.c, 11322u, 4294967295u), vec4<u32>(1u, u_input.c.x, 0u, 13923u)))), reverseBits(min(~vec4<u32>(u_input.b, 2095u, u_input.a.x, 109507u), abs(vec4<u32>(0u, 2806u, arg_2.c, arg_2.c))))), _wgslsmith_f_op_f32(arg_2.b.a.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(381f + -110f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(241f, arg_0.a.x, arg_3.x))))))));
    let var_1 = vec2<u32>(var_0.c, ~(~1u));
    let var_2 = _wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(-54166i << (arg_2.c % 32u), -var_0.a), -vec2<i32>(arg_2.a, var_0.a)), select(firstTrailingBit(-vec2<i32>(2147483647i, var_0.a)), select(vec2<i32>(-1i) * -vec2<i32>(arg_2.a, var_0.a), vec2<i32>(~(-2147483647i), ~arg_2.a), !arg_3.x), select(vec2<bool>(arg_3.x || arg_3.x, true), arg_3, all(select(vec3<bool>(true, true, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x))))));
    var_0 = Struct_2(-2147483647i, Struct_1(arg_0.b.wxz, vec4<f32>(-1522f, -950f, -733f, _wgslsmith_f_op_f32(arg_1.b.x + -685f)), vec4<f32>(499f, 1772f, _wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2315f - var_0.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.b.x, _wgslsmith_f_op_f32(abs(1939f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1183f * arg_0.d))))), var_1.x, _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, 31595u, ~firstTrailingBit(countOneBits(var_1.x))), _wgslsmith_mult_vec3_u32(~u_input.c, vec3<u32>(1u, 1u, var_1.x & _wgslsmith_dot_vec2_u32(var_1, vec2<u32>(26791u, u_input.a.x)))));
    return _wgslsmith_mod_u32(var_0.c, 1u);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<i32>(6765i, -1i, _wgslsmith_clamp_i32(1i, ~_wgslsmith_add_i32(arg_1, _wgslsmith_clamp_i32(2147483647i, -36954i, 0i)), arg_1), -8810i);
    var var_1 = ~abs(u_input.d.x << (func_5(Struct_1(vec3<f32>(-865f, -1070f, -1000f), vec4<f32>(1699f, 931f, 946f, -617f), vec4<f32>(-523f, -327f, -1577f, -437f), 1842f), func_2(), Struct_2(41547i, Struct_1(vec3<f32>(105f, -1252f, 1137f), vec4<f32>(-3266f, -1448f, -1386f, 781f), vec4<f32>(1022f, -320f, 892f, 103f), 771f), arg_0, -117f), vec2<bool>(false, false)) % 32u));
    var_0 = ~(-vec4<i32>(1i, firstTrailingBit(-1i), 1i, max(arg_1, arg_1)) << (~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.d.x), arg_0, 1u, 68418u) % vec4<u32>(32u)));
    var var_2 = vec3<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), false)), !all(vec4<bool>(all(vec2<bool>(true, true)), select(true, false, false), true, true)), !(-53522i < ~_wgslsmith_add_i32(10832i, arg_1)));
    var_1 = ~(~_wgslsmith_add_u32(~arg_0, u_input.d.x));
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2().c.zyz) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1176f, -525f, -595f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1984f, -995f, -1000f))))))), vec4<f32>(-718f, -618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f * 332f)) + _wgslsmith_div_f32(-613f, -441f)), _wgslsmith_f_op_f32(abs(-946f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(683f)), -536f, _wgslsmith_f_op_f32(-885f * 1101f), _wgslsmith_f_op_f32(select(-206f, -526f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2515f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(min(u_input.d.x >> (62199u % 32u), 4294967295u), _wgslsmith_mod_i32(~firstLeadingBit(1i), -15957i));
    var var_1 = vec2<bool>(false, true);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, countOneBits(u_input.a.x), ~_wgslsmith_mod_u32(~u_input.c.x, u_input.d.x), _wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, u_input.c.x, 1u, u_input.b) << (vec4<u32>(69343u, 0u, 11u, u_input.c.x) % vec4<u32>(32u))), vec4<u32>(6434u << (1u % 32u), 7326u, 64520u, 0u))), vec4<u32>(u_input.c.x, 49741u, 1u, select(u_input.a.x, firstLeadingBit(u_input.d.x), var_1.x)) | vec4<u32>(firstLeadingBit(1u), ~18080u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 39297u, u_input.c.x), vec4<u32>(u_input.d.x, u_input.a.x, u_input.b, 33129u)), u_input.c.x << (u_input.d.x % 32u)), min(1u, firstTrailingBit(11164u))));
    var var_3 = Struct_2(min(-1i >> (~(~u_input.a.x) % 32u), 0i), func_1(4294967295u, 1i), 1u, -294f);
    var var_4 = u_input.c;
    let var_5 = var_3.b;
    let var_6 = select(!select(select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(false, var_1.x, true), !vec3<bool>(false, false, var_1.x)), vec3<bool>(true, any(vec2<bool>(true, var_1.x)), true), vec3<bool>(all(vec4<bool>(true, var_1.x, false, var_1.x)), any(vec3<bool>(false, var_1.x, true)), all(vec3<bool>(var_1.x, false, var_1.x)))), select(!vec3<bool>(false, all(vec4<bool>(var_1.x, var_1.x, false, false)), var_1.x), select(!(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_1.x && var_1.x, false, any(vec3<bool>(true, var_1.x, var_1.x))), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x), !vec3<bool>(false, var_1.x, false))), -16404i <= abs(_wgslsmith_sub_i32(29414i, var_3.a))), select(select(!(!vec3<bool>(false, true, var_1.x)), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, true), false)), !select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, false, false), true)), select(select(!vec3<bool>(var_1.x, true, true), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(var_1.x, false, true)), select(!vec3<bool>(var_1.x, var_1.x, true), !vec3<bool>(var_1.x, true, var_1.x), var_1.x), vec3<bool>(all(vec3<bool>(var_1.x, var_1.x, false)), !var_1.x, var_1.x)), select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, false, true)), vec3<bool>(!var_1.x, select(false, var_1.x, true), true), !(!vec3<bool>(var_1.x, true, false)))));
    var var_7 = Struct_2(firstLeadingBit(_wgslsmith_mod_i32(var_3.a, ~(-var_3.a))), var_3.b, ~(~(~54052u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, vec3<u32>(var_2, ~1u, _wgslsmith_div_u32(~var_7.c, ~var_7.c)), vec4<u32>(select(~_wgslsmith_mod_u32(var_3.c, var_2), 15232u, !(var_6.x | var_1.x)), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~(~0u | var_7.c), ~reverseBits(72722u << (var_4.x % 32u))), u_input.a.x, ~(~10005u >> (var_7.c % 32u)));
}

