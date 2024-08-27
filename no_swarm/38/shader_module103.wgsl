struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1787f);
    let var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-805f)))), -69i & (u_input.a ^ arg_0.c));
    var var_2 = 1i ^ arg_0.c;
    var_2 = var_1.c;
    var_2 = abs(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-55955i, arg_0.c) & vec2<i32>(var_1.c, -13988i)), var_1.c)));
    return _wgslsmith_div_u32(~abs(arg_0.a.x), var_1.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~firstLeadingBit(~vec4<u32>(70197u, 3687u, 64881u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2128f + 1274f) + _wgslsmith_f_op_f32(320f + _wgslsmith_f_op_f32(-168f + -891f))), 26591i);
    var_0 = Struct_1(max(~vec4<u32>(firstTrailingBit(var_0.a.x), reverseBits(var_0.a.x), var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(44133u, var_0.a.x))), vec4<u32>(var_0.a.x, max(1u, var_0.a.x), func_3(Struct_1(vec4<u32>(1u, var_0.a.x, var_0.a.x, var_0.a.x), -1906f, u_input.a), _wgslsmith_f_op_f32(-var_0.b), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), var_0.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(130f, -474f), var_0.b))))), -1i);
    var var_1 = vec4<bool>(!all(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false)), true, true, any(vec2<bool>(true, true)) && true);
    var_0 = Struct_1(var_0.a, var_0.b, u_input.a);
    var var_2 = ~var_0.c;
    return Struct_1(select(vec4<u32>(var_0.a.x >> ((var_0.a.x >> (18719u % 32u)) % 32u), firstLeadingBit(var_0.a.x), ~max(var_0.a.x, 1u), 60080u), ~var_0.a, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -902f))), _wgslsmith_div_i32(var_0.c, 0i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    var var_0 = min(~vec2<i32>(-11682i, -arg_0.c), -vec2<i32>(u_input.a, 54104i));
    let var_1 = !vec3<bool>(arg_3 > arg_2.x, true, !((2147483647i << (arg_0.a.x % 32u)) <= _wgslsmith_sub_i32(arg_0.c, arg_0.c)));
    var var_2 = 0i;
    let var_3 = arg_0;
    let var_4 = func_2();
    return vec3<bool>(!var_1.x, (i32(-1i) * -32925i) > (_wgslsmith_mod_i32(~arg_0.c, arg_0.c) >> (~(arg_1.x | arg_0.a.x) % 32u)), var_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = select(!(!func_4(func_2(), ~vec4<u32>(4294967295u, 1u, 9979u, 36057u), vec4<f32>(560f, -1304f, -1766f, 1217f), _wgslsmith_f_op_f32(ceil(742f)))), select(vec3<bool>(true, true, true), select(func_4(func_2(), firstLeadingBit(vec4<u32>(4294967295u, 31766u, 18739u, 43332u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1070f, -240f, 449f, 926f))), _wgslsmith_f_op_f32(-1215f - -1364f)), vec3<bool>(true, false, true), false), select(vec3<bool>(true, func_4(Struct_1(vec4<u32>(175u, 32341u, 4294967295u, 0u), 1091f, u_input.a), vec4<u32>(7085u, 89707u, 0u, 1u), vec4<f32>(824f, 173f, -293f, 1276f), -1414f).x, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), func_4(func_2(), ~max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 35425u, 32970u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-697f, 928f, 551f, -939f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1677f + -305f)))));
    var var_1 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 2228u), min(vec3<u32>(1u, 41953u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u)), vec3<u32>(0u, 12186u, 28476u)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6153u, 4294967295u, 43710u), vec3<u32>(1u, 99395u, 75862u)), vec3<u32>(46087u, 31077u, 61357u)))) ^ 1u;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-267f)), 931f));
    var_1 = 53920u;
    var var_3 = Struct_1(vec4<u32>(~func_3(Struct_1(vec4<u32>(29744u, 51814u, 4294967295u, 46832u), 1157f, u_input.a), var_2, vec2<bool>(true, var_0.x)), countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(29690u, 33272u, 1u), firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_add_u32(1u, 42921u)) << (_wgslsmith_add_vec4_u32(firstTrailingBit(abs(vec4<u32>(22707u, 0u, 0u, 4294967295u))), ~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_2), max(~_wgslsmith_sub_i32(6082i, -1i), ~(-18323i)));
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, arg_1.b, arg_1.b), vec3<f32>(var_0.b, var_0.b, 130f), true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b, arg_1.b, var_0.b)))))), select(0i <= reverseBits(var_0.c), all(vec4<bool>(true, false, true, false)), !select(true, true, true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -2676f), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, var_0.b, var_0.b)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-336f)), -704f, var_0.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 368f, arg_1.b) * vec3<f32>(-435f, arg_1.b, 626f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.b, arg_1.b))))));
    let var_2 = max(vec4<i32>(_wgslsmith_div_i32(-25707i, -31216i), var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, 0i, arg_1.c, -1910i), vec4<i32>(arg_1.c, -1i, var_0.c, arg_1.c)), var_0.c >> (0u % 32u)) ^ vec4<i32>(17193i ^ arg_1.c, var_0.c, _wgslsmith_mult_i32(var_0.c, var_0.c), var_0.c), vec4<i32>(u_input.a, -2147483647i, -45166i, -(i32(-1i) * -2147483647i))) | (_wgslsmith_mult_vec4_i32(firstTrailingBit(abs(vec4<i32>(arg_1.c, -79333i, u_input.a, var_0.c))), vec4<i32>(-1i, 78780i, u_input.a, 22055i) << (_wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(arg_1.a.x, 1u, 0u, 1u)) % vec4<u32>(32u))) << (select(var_0.a, ~vec4<u32>(110856u, 20155u, arg_0, 1u), u_input.a < firstTrailingBit(-47383i)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, var_1.x, 866f)) + vec3<f32>(_wgslsmith_f_op_f32(arg_1.b - -1000f), 1f, -440f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, 531f, var_0.b)) - _wgslsmith_div_vec3_f32(vec3<f32>(621f, var_1.x, 192f), vec3<f32>(550f, var_0.b, arg_1.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1168f, var_1.x), vec3<f32>(arg_1.b, var_0.b, arg_1.b), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -913f, _wgslsmith_f_op_f32(var_1.x * var_0.b)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 1108f, -1182f), vec3<f32>(-149f, -1000f, -367f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-211f, -2517f, -847f), vec3<f32>(347f, arg_1.b, -1112f), vec3<bool>(true, true, false))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.b, -323f, 120f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, 673f, arg_1.b))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, var_1.x, var_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -711f, arg_1.b))))))));
    return ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, 15252i, arg_1.c)), var_2.yzx), i32(-1i) * -1i);
}

fn func_6(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1292f, -295f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(f32(-1f) * -1440f))), _wgslsmith_f_op_f32(2034f * _wgslsmith_f_op_f32(step(-712f, -1328f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_1().b, _wgslsmith_div_f32(-217f, var_0.x), _wgslsmith_f_op_f32(-var_0.x), -707f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -628f, 1000f, var_0.x), vec4<f32>(var_0.x, -1131f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1946f, -187f, var_0.x, 152f) * vec4<f32>(224f, -164f, -629f, -824f)), true))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, var_0.x, -794f, var_0.x) * vec4<f32>(686f, 150f, 206f, 939f))))), vec4<f32>(_wgslsmith_f_op_f32(-375f + -447f), _wgslsmith_f_op_f32(f32(-1f) * -273f), -700f, -434f)));
    let var_1 = _wgslsmith_clamp_vec3_i32(-countOneBits(~abs(vec3<i32>(0i, u_input.a, 0i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, -41366i), vec3<i32>(24078i, -1i, 22989i)), -(-vec3<i32>(-56850i, arg_1, u_input.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), -_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 16914i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 8709i, arg_1, -1i), vec4<i32>(arg_1, arg_1, -28886i, u_input.a)), arg_1), countOneBits(-vec3<i32>(arg_1, -5634i, u_input.a))));
    var var_2 = Struct_1(vec4<u32>(func_2().a.x, ~0u, _wgslsmith_sub_u32(98894u, func_3(func_1(), -911f, vec2<bool>(arg_0, false))), 1u), var_0.x, -(-_wgslsmith_dot_vec4_i32(vec4<i32>(4470i, var_1.x, arg_1, 0i), vec4<i32>(-1i, u_input.a, var_1.x, var_1.x)) >> (~func_1().a.x % 32u)));
    return func_2().a.x;
}

fn func_7(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-608f, -405f), _wgslsmith_f_op_f32(trunc(1f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(977f, 388f))))));
    let var_2 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x) >> (reverseBits(arg_0.yz) % vec2<u32>(32u)), ~(~arg_0.xy)), 1u));
    var var_3 = Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(82305u, arg_0.x, ~arg_0.x, 12936u & var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 15454u, var_2.x, 1u), ~vec4<u32>(1u, 53749u, arg_0.x, 4294967295u))), -489f, u_input.a);
    let var_4 = func_1();
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(vec3<u32>(func_6(any(vec2<bool>(true, false)), func_5(~71506u, func_1())), _wgslsmith_div_u32(1u, func_6(true, ~(-2147483647i))), ~(~(~55693u))));
    var var_1 = Struct_1(vec4<u32>(var_0.a.x, ~_wgslsmith_sub_u32(~14337u, select(var_0.a.x, var_0.a.x, false)), ~(~var_0.a.x) ^ var_0.a.x, firstTrailingBit(~var_0.a.x)), -320f, 0i);
    var_1 = var_0;
    var_1 = func_1();
    let var_2 = 71051u;
    var_1 = func_7(vec3<u32>(66097u, select(4294967295u, 22633u, true) >> (~_wgslsmith_div_u32(var_0.a.x, var_1.a.x) % 32u), ~(~firstTrailingBit(var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, 1u));
}

