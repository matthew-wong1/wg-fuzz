struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 26194u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(45672u, u_input.b.x, 0u, 0u)), abs(vec4<u32>(51376u, 78200u, 49168u, 25605u))), 60561u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 2497u, u_input.b.x, 1355u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)) ^ ~u_input.b.x) | ~_wgslsmith_div_vec3_u32(~vec3<u32>(64784u, 4294967295u, 1u), ~vec3<u32>(u_input.b.x, 0u, 20486u)));
    var var_1 = Struct_3(Struct_2(vec4<i32>((u_input.e | u_input.c.x) & _wgslsmith_mod_i32(-50289i, 47733i), _wgslsmith_div_i32(-1i, ~u_input.c.x), _wgslsmith_add_i32(firstLeadingBit(u_input.d), _wgslsmith_mod_i32(-20172i, -47412i)), -15938i), vec2<u32>(var_0.x, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), ~u_input.b.x)), !(true & select(false, true, false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, -763f, -509f, 770f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1025f, -117f, -1665f, -388f), _wgslsmith_f_op_vec4_f32(vec4<f32>(507f, 206f, 774f, -880f) * vec4<f32>(-568f, 385f, 230f, -164f))))))), firstTrailingBit(var_0.x) != select(u_input.b.x ^ firstTrailingBit(u_input.b.x), countOneBits(u_input.b.x), true), Struct_1(firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0, var_0) | vec3<u32>(18885u, 4294967295u, 12902u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(942f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-515f - -505f), -1393f))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), vec4<bool>(select(true, all(vec4<bool>(true, false, true, true)), !any(vec2<bool>(true, false))), !all(vec2<bool>(true, true)), !(u_input.b.x > ~10325u), true));
    var_1 = Struct_3(Struct_2(var_1.a.a, _wgslsmith_add_vec2_u32(vec2<u32>(2433u, 4294967295u), var_1.a.b), all(select(vec4<bool>(var_1.a.c, var_1.c, var_1.a.c, var_1.d.c.x), vec4<bool>(true, false, false, var_1.a.c), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.b), var_1.b)), var_1.b)), var_1.d.c.x, Struct_1(var_1.d.a, 1362f, vec2<bool>(true && !var_1.a.c, true)), var_1.e);
    var_1 = Struct_3(Struct_2(var_1.a.a, vec2<u32>(min(_wgslsmith_clamp_u32(var_0.x, var_0.x, 52178u), 42311u), var_1.d.a.x), all(var_1.e.yxz)), var_1.b, var_1.c, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, ~1u, 1u), var_0), var_1.d.b, var_1.e.xw), vec4<bool>(all(select(vec2<bool>(var_1.e.x, var_1.d.c.x), select(var_1.e.yw, vec2<bool>(var_1.d.c.x, var_1.a.c), var_1.d.c), var_1.d.c)), all(var_1.e.xyz), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-625f)) * _wgslsmith_f_op_f32(-619f - var_1.d.b)) <= var_1.d.b));
    var_1 = Struct_3(Struct_2(abs(-var_1.a.a & var_1.a.a), ~(~(var_0.xx >> (vec2<u32>(var_1.d.a.x, 1u) % vec2<u32>(32u)))), any(!select(var_1.e.wz, vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -2654f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.d.b)), _wgslsmith_div_f32(var_1.b.x, var_1.d.b)), var_1.d.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.b), _wgslsmith_f_op_f32(-1807f + 921f), -771f, _wgslsmith_f_op_f32(-1782f * var_1.d.b)))), any(vec2<bool>(-1000f <= _wgslsmith_f_op_f32(var_1.b.x * -873f), false)), Struct_1(firstTrailingBit(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 31964u, u_input.b.x), vec3<u32>(var_1.d.a.x, var_1.d.a.x, 1u)))), _wgslsmith_f_op_f32(var_1.d.b + 522f), !var_1.d.c), var_1.e);
    return ~abs(var_0.x);
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = -1i >> (max(1u, min(~countOneBits(117855u), 20871u | func_3())) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(341f - -1183f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f * 371f) - 1659f))));
    var var_2 = -reverseBits(reverseBits(select(~vec2<i32>(var_0, u_input.d), u_input.c, select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, 578f, 1155f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1890f, 1014f))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -758f))), 1841f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-169f, _wgslsmith_f_op_f32(f32(-1f) * -201f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-695f)))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_3.x)))), _wgslsmith_f_op_f32(-var_3.x));
    return Struct_3(Struct_2(select(vec4<i32>(max(-1i, 0i), ~var_0, -1i, -28064i), firstLeadingBit(min(vec4<i32>(var_2.x, -1i, -56410i, var_0), vec4<i32>(var_2.x, u_input.d, -1i, -50574i))), vec4<bool>(true, true, true, true)), ~arg_0, all(vec4<bool>(true, true, true, true)) & all(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, var_3.x, var_3.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2686f, var_3.x, 655f, var_3.x))))), any(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, any(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))))), Struct_1(countOneBits(vec3<u32>(0u, 4294967295u, 1u)) << (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(40138u, arg_0.x, 17130u)), firstTrailingBit(vec3<u32>(u_input.b.x, arg_0.x, arg_0.x))) % vec3<u32>(32u)), -1000f, select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), true)), !vec4<bool>(false, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(187u, 759u), max(u_input.b, u_input.b))), _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.b.x, 0u), vec2<u32>(13479u, u_input.b.x)), u_input.b & vec2<u32>(u_input.b.x, 4294967295u))));
    var var_1 = Struct_4(firstTrailingBit(13681u), _wgslsmith_f_op_f32(-var_0.d.b), 242f, Struct_2(max(_wgslsmith_mult_vec4_i32(vec4<i32>(44189i, 9974i, 0i, 25432i), max(var_0.a.a, vec4<i32>(var_0.a.a.x, 1i, u_input.c.x, u_input.e))), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.a.wz, vec2<i32>(15178i, var_0.a.a.x)), 2147483647i, u_input.c.x << (4294967295u % 32u), _wgslsmith_clamp_i32(u_input.a, var_0.a.a.x, -29109i))), vec2<u32>(_wgslsmith_add_u32(countOneBits(0u), var_0.d.a.x), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * var_0.d.b)) <= 1f), func_2(vec2<u32>(1u, 44432u)).a);
    var_1 = Struct_4(_wgslsmith_div_u32(~u_input.b.x ^ abs(func_2(vec2<u32>(4294967295u, 1u)).a.b.x), ~(~0u)), var_0.b.x, 678f, func_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.a, var_1.d.b.x), vec2<u32>(~var_0.a.b.x, ~var_0.a.b.x))).a, Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(min(39154i, u_input.c.x), ~u_input.c.x, _wgslsmith_mult_i32(var_0.a.a.x, var_0.a.a.x), firstTrailingBit(-1i)), var_0.a.a & var_0.a.a), ~vec2<u32>(firstLeadingBit(var_1.a), ~u_input.b.x), var_1.e.c));
    var_0 = func_2(vec2<u32>(~17721u, countOneBits(_wgslsmith_dot_vec2_u32(~u_input.b, _wgslsmith_add_vec2_u32(var_0.a.b, var_1.d.b)))));
    var_0 = Struct_3(Struct_2(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a.a.x, u_input.a), var_0.a.a.x), -1i, _wgslsmith_clamp_i32(~15826i, 2147483647i, var_1.e.a.x), _wgslsmith_add_i32(1i, -2147483647i)), ~firstTrailingBit(vec2<u32>(var_0.a.b.x, 29579u)), var_1.d.c), func_2(~(~u_input.b)).b, true, func_2(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_1.d.b.x), select(vec2<u32>(var_0.a.b.x, u_input.b.x), var_1.e.b, var_1.e.c)))).d, !select(select(vec4<bool>(var_0.c, true, false, false), vec4<bool>(var_0.a.c, var_1.d.c, false, true), var_0.d.c.x), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(4732u, u_input.b.x), var_1.e.b)).e, all(var_0.e.xz)));
    return var_1.d;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> i32 {
    var var_0 = func_2(abs(~vec2<u32>(max(arg_1, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 19155u, 12858u, u_input.b.x), vec4<u32>(4294967295u, arg_1, arg_1, arg_2.b.x))))).a;
    let var_1 = all(select(!(!(!vec3<bool>(arg_2.c, var_0.c, false))), !(!vec3<bool>(true, var_0.c, arg_2.c)), var_0.c));
    var_0 = Struct_2(vec4<i32>(var_0.a.x, _wgslsmith_add_i32(10054i, _wgslsmith_mult_i32(var_0.a.x, -35686i)), abs(func_1().a.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, arg_3), abs(-12532i))) << (~firstTrailingBit(min(vec4<u32>(var_0.b.x, 40948u, u_input.b.x, var_0.b.x), vec4<u32>(u_input.b.x, arg_2.b.x, var_0.b.x, var_0.b.x))) % vec4<u32>(32u)), vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(arg_1, 76124u) ^ (u_input.b.x >> (25277u % 32u))), firstTrailingBit(select(u_input.b.x, _wgslsmith_sub_u32(var_0.b.x, 59483u), any(vec4<bool>(false, var_1, true, true))))), func_1().c);
    let var_2 = Struct_1(~(~reverseBits(vec3<u32>(28258u, u_input.b.x, arg_2.b.x))), _wgslsmith_f_op_f32(trunc(264f)), !(!(!(!vec2<bool>(true, var_1)))));
    let var_3 = var_2.b;
    return countOneBits(var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~4294967295u, _wgslsmith_f_op_f32(ceil(-1771f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1416f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(805f)) - -694f) - _wgslsmith_f_op_f32(select(1f, -1000f, u_input.c.x == u_input.a)))), Struct_2(vec4<i32>(func_4(~vec3<i32>(u_input.c.x, u_input.e, 1i), select(0u, 0u, false), func_1(), 1i), u_input.d, u_input.e, 0i), countOneBits(vec2<u32>(48948u, u_input.b.x)) | ~vec2<u32>(u_input.b.x, 35435u), all(func_2(~u_input.b).e)), Struct_2(vec4<i32>(abs(u_input.e), countOneBits(10292i), -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(0i, u_input.e)) | (u_input.a << (4294967295u % 32u))), u_input.b, true));
    let var_1 = _wgslsmith_mod_i32(u_input.e, (var_0.d.a.x >> (firstLeadingBit(u_input.b.x) % 32u)) ^ _wgslsmith_sub_i32(0i, u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), -1042f, _wgslsmith_div_f32(var_0.c, -1014f)))))));
    let var_3 = Struct_5(_wgslsmith_dot_vec2_i32(countOneBits(u_input.c), u_input.c), var_2.x);
    var var_4 = vec4<u32>(~(u_input.b.x & _wgslsmith_dot_vec2_u32(vec2<u32>(38363u, u_input.b.x), u_input.b)), 4294967295u, 51543u, 4294967295u) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(10463u, var_0.d.b.x, 4294967295u, u_input.b.x), vec4<u32>(121860u, var_0.d.b.x, u_input.b.x, var_0.a))), vec4<u32>(u_input.b.x, ~var_0.a, func_2(u_input.b).a.b.x, _wgslsmith_mult_u32(1u, u_input.b.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, 45600u, var_0.e.b.x, u_input.b.x)), vec4<u32>(0u, 0u, 4294967295u, u_input.b.x), vec4<u32>(0u, 4294967295u, u_input.b.x, var_0.a)), vec4<u32>(4294967295u, var_0.a, reverseBits(var_0.d.b.x), ~1u), vec4<u32>(~u_input.b.x, ~var_0.a, u_input.b.x, ~u_input.b.x))) % vec4<u32>(32u));
    let var_5 = select(select(select(vec3<bool>(false, true, true), !(!vec3<bool>(false, var_0.e.c, false)), true), select(!select(vec3<bool>(true, var_0.e.c, var_0.d.c), vec3<bool>(false, var_0.d.c, false), vec3<bool>(var_0.e.c, true, var_0.d.c)), select(!vec3<bool>(true, var_0.e.c, true), func_2(vec2<u32>(29357u, var_4.x)).e.yxy, vec3<bool>(true, var_0.d.c, var_0.d.c)), false), !(!var_0.d.c)), !(!vec3<bool>(!var_0.d.c, 1271f <= var_3.b, select(true, true, true))), false);
    var var_6 = select(func_2(u_input.b).e, vec4<bool>(!all(vec4<bool>(var_0.e.c, true, false, true)), var_5.x, _wgslsmith_f_op_f32(-var_2.x) <= 579f, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b, 1f))), _wgslsmith_f_op_f32(-var_2.x))), firstLeadingBit(~(-vec2<i32>(u_input.a, var_3.a) | ~u_input.c)), var_0.a);
}

