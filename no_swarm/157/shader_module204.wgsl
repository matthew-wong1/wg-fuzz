struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_3(~56811u & arg_0.a.c);
    var var_1 = Struct_5(vec4<i32>(0i, -9886i, (i32(-1i) * -2147483647i) ^ _wgslsmith_sub_i32(u_input.b, ~u_input.b), u_input.b));
    var var_2 = vec3<bool>(false, true, arg_0.e | !any(vec2<bool>(true, arg_0.e)));
    var var_3 = abs(var_0.a) & (_wgslsmith_add_u32(~(~15179u), 1u) & _wgslsmith_sub_u32(var_0.a ^ var_0.a, ~41726u));
    var_1 = Struct_5(vec4<i32>(51629i, arg_0.c.x, 1i, ((i32(-1i) * -3803i) >> (1u % 32u)) << (arg_0.a.c % 32u)));
    return 9995i;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> bool {
    let var_0 = ~25169i;
    let var_1 = !arg_1.a.b;
    var var_2 = (all(select(arg_1.b, !vec2<bool>(var_1, arg_1.a.b), any(arg_1.b))) || any(!vec3<bool>(false, var_1, var_1))) | arg_3;
    var_2 = arg_3;
    return !arg_3;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.a;
    let var_1 = select(vec4<bool>(true, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), Struct_2(Struct_1(vec2<i32>(55923i, u_input.b), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), arg_0, Struct_1(vec2<i32>(-27465i, u_input.b), true), Struct_1(vec2<i32>(u_input.b, u_input.b), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 315f) * _wgslsmith_f_op_f32(-arg_1.x)), func_3(Struct_4(Struct_2(Struct_1(vec2<i32>(2147483647i, -36257i), false), vec2<bool>(true, false), var_0, Struct_1(vec2<i32>(u_input.b, u_input.b), false), Struct_1(vec2<i32>(2147483647i, 2147483647i), false)), vec2<f32>(215f, arg_1.x), vec4<i32>(u_input.b, -11000i, 0i, u_input.b), true, false)) >= u_input.b)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), vec4<bool>(u_input.b <= -2147483647i, true, true, all(vec4<bool>(true, true, true, true)))), all(vec3<bool>(false, false, true | (-1i < u_input.b))));
    var var_2 = var_1.wx;
    var var_3 = Struct_1(~firstTrailingBit(-vec2<i32>(1i, -1i)), _wgslsmith_f_op_f32(min(-106f, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_div_f32(203f, arg_1.x))))) < arg_1.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(783f, 932f))) + arg_1.x) - 136f) * _wgslsmith_f_op_f32(sign(915f)));
    return Struct_2(Struct_1(vec2<i32>(-1i) * -var_3.a, !select(true, !var_1.x, var_3.b)), select(vec2<bool>(true, all(!var_1.xwx)), !(!select(var_1.zy, var_1.yz, vec2<bool>(var_1.x, var_1.x))), true), 1u, Struct_1(~var_3.a, var_1.x), Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(u_input.b, var_3.a.x)), firstLeadingBit(1i)), var_2.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    let var_0 = Struct_3(_wgslsmith_add_u32(arg_0.c, ~1u));
    let var_1 = Struct_3(arg_0.c);
    var var_2 = arg_0.a;
    var_2 = arg_0.e;
    var_2 = Struct_1(arg_1.zx ^ arg_0.e.a, false);
    return Struct_5(arg_1);
}

fn func_6(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_5) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = true;
    var_0 = !arg_0.x;
    let var_2 = 15954u;
    let var_3 = Struct_2(func_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1224f, -947f, 416f, 1829f) * vec4<f32>(-763f, -562f, 760f, -424f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-266f, -969f, -1519f, 1000f), vec4<f32>(1903f, 375f, -207f, 394f)))), Struct_3(var_2)).d, vec2<bool>(true, true), 30787u, func_2(21373u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1085f, -228f, 2550f, -1789f), vec4<f32>(159f, -418f, 1105f, 332f), vec4<bool>(false, true, arg_0.x, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(751f, -595f, 832f, -2583f), vec4<f32>(-115f, 554f, 1074f, -505f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-451f, 469f, -1468f, -1760f) - vec4<f32>(1561f, -101f, 615f, 1134f))), true)), Struct_3(60800u)).a, Struct_1(~(~_wgslsmith_div_vec2_i32(arg_2.a.yw, vec2<i32>(arg_2.a.x, arg_2.a.x))), !(!(var_2 > u_input.a))));
    return func_2(countOneBits(var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-697f, -879f)), -2003f, -1000f, _wgslsmith_f_op_f32(abs(1567f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, -1125f, 349f, -431f))))), Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(0u), ~arg_1, ~14818u, var_3.c), vec4<u32>(_wgslsmith_mod_u32(0u, var_2), 4294967295u, ~0u, ~u_input.d)))).a;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = arg_1.d;
    var var_1 = u_input.b;
    let var_2 = vec3<i32>(19421i, max(-13868i, u_input.b | countOneBits(2147483647i)), -12767i);
    let var_3 = Struct_3(~abs(arg_0.c));
    let var_4 = func_5(func_2(var_3.a, vec4<f32>(859f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(204f + -2120f), _wgslsmith_f_op_f32(-167f - 1124f)), -930f, 205f), Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, arg_1.c, arg_0.c), vec4<u32>(12849u, 81095u, arg_0.c, 4294967295u)))), func_5(func_2(~u_input.d, vec4<f32>(_wgslsmith_f_op_f32(202f + 575f), _wgslsmith_f_op_f32(min(1591f, -211f)), _wgslsmith_f_op_f32(abs(-573f)), -223f), Struct_3(_wgslsmith_mult_u32(41020u, 89297u))), vec4<i32>(abs(reverseBits(2147483647i)), var_2.x, -8508i, _wgslsmith_div_i32(func_3(Struct_4(arg_0, vec2<f32>(-111f, -941f), vec4<i32>(arg_1.d.a.x, 80480i, 0i, u_input.b), var_0.b, var_0.b)), reverseBits(-93608i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f * -1589f) + -1601f))).a, 2206f);
    return Struct_3(func_2(_wgslsmith_mult_u32(arg_1.c ^ var_3.a, 25113u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, 449f, -124f, 739f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, 1788f, 657f, 451f) + vec4<f32>(1413f, 139f, -339f, 374f))), var_3).c << (8375u % 32u));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(4294967295u);
    var_0 = Struct_3(36970u);
    var_0 = func_7(Struct_2(Struct_1(max(reverseBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(54002i, -1i)), false), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), var_0.a, func_6(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), u_input.c, func_5(func_2(u_input.d, vec4<f32>(-1792f, -1083f, 1313f, 319f), Struct_3(var_0.a)), max(vec4<i32>(u_input.b, u_input.b, 46128i, u_input.b), vec4<i32>(-2147483647i, u_input.b, u_input.b, -30333i)), -274f)), Struct_1(vec2<i32>(func_5(Struct_2(Struct_1(vec2<i32>(-2147483647i, 5356i), false), vec2<bool>(false, true), 43575u, Struct_1(vec2<i32>(-30370i, u_input.b), false), Struct_1(vec2<i32>(u_input.b, u_input.b), true)), vec4<i32>(-12358i, u_input.b, u_input.b, -1i), 2206f).a.x, ~u_input.b), false)), func_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.c), var_0.a), var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(437f, -889f, 520f, -940f) * vec4<f32>(-2730f, 604f, 1000f, 2185f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1258f, -1002f, -748f, 2951f), vec4<f32>(556f, 1384f, -324f, -1214f))), vec4<bool>(true, true, true, true)))), Struct_3(4294967295u)));
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, var_0.a, 7429u, 4767u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 41212u, 6092u), ~(~vec4<u32>(116980u, u_input.d, u_input.a, 1u))));
    let var_2 = var_0.a;
    return Struct_3(80206u);
}

fn func_8(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    var var_0 = -320f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1462f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f), 1026f))) * -609f);
    var var_1 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, func_4(853f, Struct_2(Struct_1(vec2<i32>(0i, -2147483647i), true), vec2<bool>(false, false), u_input.a, Struct_1(vec2<i32>(39240i, 1i), false), Struct_1(vec2<i32>(17341i, 3938i), false)), -1291f, true), true)), !((28955u >> (~arg_0.a % 32u)) == u_input.d));
    let var_2 = func_5(func_2(arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 1531f, 457f, 1063f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(728f, 731f, 242f, 198f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1202f, -290f, -1339f, -1179f))))), arg_0), firstLeadingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, u_input.b, -1i, -13350i), max(vec4<i32>(u_input.b, -2147483647i, -3286i, u_input.b), vec4<i32>(51765i, -2147483647i, -1i, 1i))), vec4<i32>(countOneBits(-1i), u_input.b, 1i, func_3(Struct_4(Struct_2(Struct_1(vec2<i32>(14169i, -2147483647i), false), vec2<bool>(var_1.x, false), arg_0.a, Struct_1(vec2<i32>(-2147483647i, u_input.b), true), Struct_1(vec2<i32>(-10737i, 0i), var_1.x)), vec2<f32>(1507f, 151f), vec4<i32>(arg_1, -76156i, u_input.b, arg_1), var_1.x, var_1.x))), !all(vec4<bool>(false, false, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(trunc(466f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1636f, 1499f)))));
    var var_3 = ~(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 0u, u_input.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 53423u, arg_0.a, u_input.c), vec4<u32>(12031u, 41423u, 45624u, u_input.c)), 60779u, arg_0.a), ~vec3<u32>(u_input.a, arg_0.a, u_input.c)));
    return arg_0;
}

fn func_9(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-44157i, arg_0, firstLeadingBit(_wgslsmith_mult_i32(abs(0i), abs(u_input.b))), -53786i), -_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a.x, arg_2.a.x, 25940i, 12141i), vec4<i32>(1i, arg_0, -35826i, 37416i)), vec4<i32>(~arg_2.a.x, arg_0, _wgslsmith_mod_i32(0i, -74227i), -3923i)));
    let var_1 = func_8(arg_3, _wgslsmith_mult_i32(1i, -countOneBits(-u_input.b)));
    let var_2 = arg_2.a.x;
    let var_3 = 1524f;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * var_3) - _wgslsmith_f_op_f32(var_3 * 600f)), _wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(exp2(var_3)))), var_3));
    return StorageBuffer(vec3<u32>(1u, 8372u, ~_wgslsmith_div_u32(u_input.c, arg_3.a)) ^ vec3<u32>(14910u, func_7(Struct_2(arg_2, vec2<bool>(false, arg_1), u_input.a, Struct_1(vec2<i32>(arg_0, var_2), arg_2.b), Struct_1(vec2<i32>(-2147483647i, -17292i), true)), Struct_2(arg_2, vec2<bool>(arg_1, false), 7563u, Struct_1(vec2<i32>(arg_2.a.x, arg_2.a.x), false), arg_2)).a | 0u, max(0u, abs(52099u))), func_5(func_2(countOneBits(func_8(Struct_3(1u), -2147483647i).a), vec4<f32>(-973f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_div_f32(var_3, -470f), 1511f), func_7(Struct_2(Struct_1(vec2<i32>(-53819i, var_2), arg_1), vec2<bool>(true, arg_2.b), var_1.a, arg_2, arg_2), func_2(u_input.a, var_4, Struct_3(var_1.a)))), vec4<i32>(_wgslsmith_div_i32(1i, reverseBits(arg_2.a.x)), ~(-2147483647i), _wgslsmith_mult_i32(u_input.b, u_input.b & -10558i), -firstLeadingBit(1736i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, -771f))))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_9(countOneBits(-firstTrailingBit(0i)), true, Struct_1(reverseBits(vec2<i32>(~(-1i), ~u_input.b)), any(vec2<bool>(true, true))), func_8(func_1(), 2147483647i));
}

