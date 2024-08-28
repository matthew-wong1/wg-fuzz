struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_u32(110984u, 1u, _wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(arg_0.a, 1u))), _wgslsmith_f_op_f32(-993f + -203f), 68996i), Struct_2(arg_0, Struct_1(39532u, _wgslsmith_f_op_f32(1f + 1743f), 2147483647i), Struct_1(arg_0.a, arg_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, -1i), vec3<i32>(-14112i, 0i, arg_0.c))), arg_0.b, arg_0.a), Struct_1(countOneBits(arg_0.a), _wgslsmith_f_op_f32(floor(-793f)), arg_0.c));
    var var_1 = !(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    let var_2 = var_0.a;
    var_1 = select(!(!select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, false), true), vec2<bool>(true, true), vec2<bool>(false, var_1.x))), !vec2<bool>(var_1.x, true), !all(vec3<bool>(!var_1.x, var_1.x, all(vec3<bool>(var_1.x, false, false)))));
    var_1 = !(!(!vec2<bool>(var_1.x, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-659f, _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-2122f + _wgslsmith_f_op_f32(var_0.a.b - var_0.c.b)))))));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstTrailingBit(74728u), 94712u), 15013u), -978f, u_input.a.x), Struct_1(0u, _wgslsmith_div_f32(987f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.x), Struct_1(70735u, 1f, 2147483647i | _wgslsmith_clamp_i32(0i, -56584i, _wgslsmith_div_i32(u_input.a.x, 1i))), _wgslsmith_f_op_f32(func_3(Struct_1(0u, _wgslsmith_f_op_f32(f32(-1f) * -1176f), 65911i))), 1u);
    var var_1 = var_0.c;
    let var_2 = -9459i;
    var var_3 = vec3<u32>(var_1.a, firstLeadingBit(_wgslsmith_add_u32(24098u, min(_wgslsmith_div_u32(38514u, var_1.a), countOneBits(62832u)))), 60045u);
    var var_4 = var_0.c.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1508f)), var_1.b));
}

fn func_4(arg_0: f32, arg_1: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(1u, -625f, -u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1341f, _wgslsmith_f_op_f32(abs(arg_0))) + arg_0), -1702f));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_2()), 829f, _wgslsmith_f_op_f32(446f * arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0, 413f, arg_1)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-901f, _wgslsmith_f_op_f32(829f - arg_1), _wgslsmith_f_op_f32(min(-789f, arg_1)), _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1000f) * -368f), -939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-arg_1)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(func_3(Struct_1(1u, -229f, u_input.a.x))))), _wgslsmith_f_op_f32(393f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(1322f - arg_0), var_0.x == var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + -1538f)))), 1612f));
    let var_2 = Struct_2(Struct_1(~firstLeadingBit(1u) >> (1u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1471f), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), Struct_1(~select(abs(0u), _wgslsmith_mult_u32(27839u, 15521u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 835f), _wgslsmith_clamp_i32(-16139i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x)), -53231i)), Struct_1(_wgslsmith_clamp_u32(~(~0u), 1u, 0u), arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 59855i, -1i), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -44456i, 35053i, 0i), vec4<bool>(false, true, true, true))), vec4<i32>(u_input.a.x, u_input.a.x ^ u_input.a.x, _wgslsmith_sub_i32(-51160i, -1i), 1i))), var_0.x, countOneBits(1u));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, -376f, arg_0))), vec4<f32>(var_0.x, arg_1, arg_0, var_1.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1309f, var_1.x, -582f, 505f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0, -598f, var_1.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1343f, _wgslsmith_f_op_f32(max(-1559f, 1198f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1423f - arg_0), _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))), arg_0, _wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(min(var_2.c.b, 1052f)))));
    return vec2<u32>(var_2.a.a, ~(~var_2.a.a));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(49083u, 0u, 1u, 1796u), abs(max(vec4<u32>(0u, 4294967295u, 37332u, 5966u), vec4<u32>(9178u, 4294967295u, 4294967295u, 4294967295u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), func_4(_wgslsmith_f_op_f32(round(659f)), _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1543f)), -371f)), _wgslsmith_clamp_i32(-41397i >> (func_4(arg_0, arg_0).x % 32u), _wgslsmith_mult_i32(var_0 << (13592u % 32u), u_input.a.x >> (28287u % 32u)) >> (3011u % 32u), countOneBits(-u_input.a.x)));
    var var_2 = Struct_4(Struct_2(Struct_1(1u, -214f, -min(0i, u_input.a.x)), Struct_1(func_4(_wgslsmith_f_op_f32(-314f * arg_0), -532f).x, _wgslsmith_f_op_f32(-var_1.b), 2147483647i), Struct_1(abs(abs(var_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), countOneBits(reverseBits(-16212i))), 392f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a << (var_1.a % 32u), 1u), firstTrailingBit(vec3<u32>(1u, 1u, var_1.a)))), Struct_3(Struct_1(var_1.a, _wgslsmith_f_op_f32(abs(-807f)), _wgslsmith_mod_i32(-2147483647i, -2147483647i ^ u_input.a.x)), Struct_2(Struct_1(~var_1.a, -398f, firstLeadingBit(23929i)), Struct_1(0u, var_1.b, -36057i), Struct_1(0u, _wgslsmith_f_op_f32(-var_1.b), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -2495f) * 934f), 1u), Struct_1(var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0)))), -(u_input.a.x >> (110241u % 32u)))), -23663i, Struct_3(Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(44013u, var_1.a), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f * 747f)), -var_1.c), Struct_2(Struct_1(_wgslsmith_mod_u32(4294967295u, var_1.a), _wgslsmith_f_op_f32(-var_1.b), countOneBits(29418i)), Struct_1(select(4294967295u, var_1.a, true), -2137f, abs(66149i)), Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b * 284f), 1i), _wgslsmith_f_op_f32(-arg_0), var_1.a), Struct_1(var_1.a, 1000f, ~var_1.c)));
    var_2 = Struct_4(var_2.a, Struct_3(Struct_1(56714u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.a.b))), -(var_1.c >> (19002u % 32u))), var_2.a, Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_2.d.b.b.b)), ~u_input.a.x)), ~0i, var_2.b);
    let var_3 = select(firstTrailingBit(countOneBits(vec3<i32>(var_2.b.b.a.c & var_1.c, select(2287i, var_2.b.c.c, true), ~var_2.a.c.c))), (firstLeadingBit(abs(vec3<i32>(-11639i, u_input.a.x, 20048i))) & vec3<i32>(var_0, u_input.a.x, firstLeadingBit(-17711i))) & _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(var_2.c, 2147483647i, u_input.a.x), vec3<i32>(var_2.d.c.c, var_2.c, var_0)), ~vec3<i32>(var_0, -1i, -1i)), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)));
    return Struct_2(Struct_1(8634u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(702f + -892f), _wgslsmith_f_op_f32(-arg_0), true))), 0i), Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.a.b, var_2.d.c.b, false)))), u_input.a.x), Struct_1(~var_2.a.b.a, _wgslsmith_f_op_f32(floor(-733f)), ~min(firstTrailingBit(-32198i), max(var_0, -2272i))), _wgslsmith_f_op_f32(-var_1.b), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.d.c.a, 1u), _wgslsmith_sub_u32(88724u, var_2.a.c.a), 1u) | var_2.d.c.a);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, 162f, -879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(sign(arg_1.c.b))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, _wgslsmith_f_op_f32(var_0.x - -1769f), _wgslsmith_f_op_f32(-370f + var_0.x), var_0.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1133f, -119f, _wgslsmith_f_op_f32(f32(-1f) * -905f), _wgslsmith_f_op_f32(-1130f + -1547f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.b, 765f, -416f, -1582f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b, _wgslsmith_f_op_f32(-1234f * arg_1.a.b), 632f, _wgslsmith_f_op_f32(abs(var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_2()), arg_1.d, arg_1.b.b, _wgslsmith_f_op_f32(trunc(-231f))), vec4<f32>(_wgslsmith_f_op_f32(round(404f)), _wgslsmith_f_op_f32(var_0.x * arg_1.c.b), 1000f, -1478f)))));
    var var_1 = func_1(arg_1.b.b);
    return func_1(-2110f).a;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b, arg_2) - vec2<f32>(495f, 1373f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(464f, arg_0.c.b) * vec2<f32>(arg_2, -381f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-348f, -1193f), vec2<f32>(735f, -191f), vec2<bool>(arg_1, false)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1404f, 1940f))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -184f))));
    var var_1 = Struct_4(Struct_2(Struct_1(arg_0.b.a, 1f, _wgslsmith_sub_i32(u_input.a.x, -1i)), arg_0.b, arg_0.a, arg_2, _wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u, 15086u), ~_wgslsmith_mod_u32(arg_0.b.a, arg_0.b.a))), Struct_3(func_1(arg_0.c.b).b, Struct_2(func_1(_wgslsmith_f_op_f32(max(297f, arg_0.d))).b, Struct_1(max(31890u, 61115u), _wgslsmith_f_op_f32(-var_0.x), ~arg_0.a.c), Struct_1(~arg_0.a.a, _wgslsmith_f_op_f32(ceil(arg_0.c.b)), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, arg_2)), arg_0.a.a), Struct_1(1u, _wgslsmith_f_op_f32(-1429f + -780f), func_5(true, arg_0).c)), 0i, Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_0.a.b))).b, Struct_2(Struct_1(4254u, 866f, 5287i), func_5(all(vec3<bool>(true, true, arg_1)), func_1(arg_0.b.b)), arg_0.a, _wgslsmith_f_op_f32(1f + -1050f), ~1u), arg_0.a));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b, var_1.b.c.b));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * 1024f))), -464f) - vec2<f32>(2675f, _wgslsmith_f_op_f32(exp2(func_1(-1110f).c.b))))));
    let var_2 = ~(~abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(96379u, 163186u, 73286u)), min(vec3<u32>(var_1.b.b.b.a, 0u, 1u), vec3<u32>(38057u, 43373u, var_1.b.a.a)))));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(594f)), var_1.d.c.b), -465f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-335f, var_1.a.d, var_1.a.b.b, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_0.c.b, -976f, 933f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -503f, -1073f, 644f))))))), var_2, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(50546u, 44194u, ~52927u);
    let x = u_input.a;
    s_output = func_6(Struct_2(func_5(true, func_1(759f)), func_5(true, Struct_2(Struct_1(0u, -1990f, -1i), Struct_1(103472u, -1000f, -2147483647i), func_1(-307f).a, -1121f, abs(var_0.x))), Struct_1(6338u, -612f, func_1(_wgslsmith_f_op_f32(step(-250f, -868f))).a.c), -922f, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, var_0.x, _wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, var_0.x)), min(var_0.x, 31240u)), ~(~vec4<u32>(var_0.x, 490u, 49973u, 49457u)))), (func_1(1000f).a.c != -15145i) && true, 1449f);
}

