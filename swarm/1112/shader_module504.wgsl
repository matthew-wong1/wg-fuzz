struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = vec2<i32>(arg_3.x, _wgslsmith_mod_i32(-arg_3.x | arg_3.x, arg_3.x) >> (~max(arg_2.x, arg_2.x) % 32u));
    var var_1 = Struct_2(_wgslsmith_mult_i32(arg_3.x, -28330i), Struct_1((vec2<u32>(u_input.a, 29070u) ^ ~arg_2.zz) ^ vec2<u32>(63486u, ~6731u), select(vec3<bool>(false, true, var_0.x != var_0.x), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true))), !(arg_0.a != 1151f)), min(var_0.x, _wgslsmith_add_i32(-2147483647i, arg_3.x) | -33103i), vec2<bool>(false, false), arg_3), ~firstLeadingBit(vec2<u32>(~u_input.a, 64630u)), vec4<bool>(true, true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    global0 = countOneBits(4294967295u);
    global0 = 40662u;
    global0 = var_1.c.x;
    return !(!var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = !arg_3.d;
    var_0 = vec4<bool>(arg_3.d.x, select(arg_2.x, var_0.x, arg_2.x), false, arg_2.x);
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(min(vec3<u32>(65050u, 12648u, 0u), vec3<u32>(18841u, 0u, 32267u)) | ~(~vec3<u32>(u_input.a, 4294967295u, arg_3.c.x)), ~(~vec3<u32>(u_input.a, 0u, arg_3.c.x) & vec3<u32>(u_input.a, 41548u, 4294967295u))));
    var var_2 = -vec2<i32>(-2147483647i, abs(-32357i));
    return _wgslsmith_div_vec2_u32(~vec2<u32>(46697u, _wgslsmith_add_u32(arg_3.b.a.x, arg_3.c.x)), var_1.yy);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> vec3<bool> {
    global0 = max(u_input.a, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_1), vec2<u32>(arg_2, 8939u)) << (arg_2 % 32u), _wgslsmith_div_u32(min(~arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_2), vec2<u32>(arg_2, u_input.a))), 0u)));
    var var_0 = Struct_2(-1484i, Struct_1(~func_4(Struct_3(-396f), Struct_3(-1933f), func_3(Struct_3(1263f), -467f, vec3<u32>(8226u, 90249u, 16142u), vec4<i32>(1i, 14158i, -2147483647i, -20697i)), Struct_2(22910i, Struct_1(vec2<u32>(u_input.a, 1u), vec3<bool>(true, true, false), -57610i, vec2<bool>(false, true), vec4<i32>(1i, 2147483647i, -4840i, 1i)), vec2<u32>(arg_0, 60302u), vec4<bool>(false, false, false, false))), !vec3<bool>(true, true, any(vec2<bool>(false, true))), 18299i, func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1442f)), firstLeadingBit(vec3<u32>(1u, 64180u, 37120u) << (vec3<u32>(1u, arg_0, arg_2) % vec3<u32>(32u))), abs(vec4<i32>(1i, 1i, 1i, 1i))).zw, -vec4<i32>(~1i, -18082i, _wgslsmith_mod_i32(1i, 2147483647i), ~25519i)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(38991u, u_input.a, 1u), select(vec3<u32>(4294967295u, 1u, 13192u), vec3<u32>(arg_2, arg_2, 29906u), vec3<bool>(true, true, false))), 1119u), arg_2), select(vec4<bool>(true, true, true, true), select(!func_3(Struct_3(1549f), 859f, vec3<u32>(3988u, arg_1, 0u), vec4<i32>(1i, -1i, 2147483647i, 40588i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), any(vec2<bool>(all(vec2<bool>(true, true)), true))));
    let var_1 = Struct_2(var_0.b.c, Struct_1(~(~vec2<u32>(1u, arg_1)), select(vec3<bool>(true, var_0.d.x, !var_0.d.x), var_0.d.wyw, !vec3<bool>(var_0.d.x, var_0.d.x, true)), _wgslsmith_div_i32(47781i, countOneBits(var_0.b.e.x)), var_0.b.d, vec4<i32>(countOneBits(~52254i), var_0.a, -1i, _wgslsmith_mod_i32(34353i, -563i))), var_0.b.a, var_0.d);
    var_0 = Struct_2(_wgslsmith_add_i32(~(~abs(8976i)), _wgslsmith_sub_i32(~1i, var_0.a)), var_1.b, abs(var_1.c << (min(var_0.b.a, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, 1u), vec2<u32>(77245u, arg_1))) % vec2<u32>(32u))), select(vec4<bool>(_wgslsmith_f_op_f32(round(-308f)) <= _wgslsmith_f_op_f32(-1133f * 150f), !var_1.d.x & true, true, select(false, any(var_0.d.ww), var_1.a < -22815i)), func_3(Struct_3(869f), -518f, ~(vec3<u32>(21109u, 84267u, arg_1) << (vec3<u32>(arg_0, 134223u, arg_1) % vec3<u32>(32u))), var_0.b.e), all(var_1.d.wx)));
    global0 = var_1.b.a.x;
    return select(func_3(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + -826f)), ~(vec3<u32>(arg_0, arg_1, u_input.a) >> (countOneBits(vec3<u32>(0u, u_input.a, 28019u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_1.b.e.x, -1i, var_0.a, 10621i) & vec4<i32>(-61905i, var_0.a, var_1.a, var_0.a)), vec4<i32>(~0i, _wgslsmith_add_i32(var_1.b.e.x, -53908i), -17806i, -1i), -vec4<i32>(2147483647i, 1i, var_0.a, 2147483647i))).xzz, var_1.d.zxw, select(!var_1.b.b, vec3<bool>(var_0.b.b.x, !select(false, false, var_1.d.x), all(var_1.b.b)), var_0.b.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-470f, 1000f, false)))))));
    var var_2 = all(func_3(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(208f + -1005f), -989f)), _wgslsmith_f_op_f32(var_1.a - var_1.a)), vec3<u32>(~_wgslsmith_sub_u32(141892u, arg_0.a.x), countOneBits(arg_2.a.x), 5408u), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, arg_1.x, arg_0.e.x, arg_1.x), vec4<i32>(arg_2.e.x, arg_0.e.x, -1i, arg_0.c), arg_2.b.x), arg_0.e & arg_2.e), arg_1.x, _wgslsmith_dot_vec3_i32(arg_2.e.zyy, arg_1) ^ _wgslsmith_div_i32(arg_0.e.x, arg_2.e.x), -1i)).xy);
    var_2 = arg_2.c > reverseBits(~(~arg_1.x));
    var var_3 = Struct_2(~(-10438i), Struct_1(~vec2<u32>(1u, ~50689u), arg_2.b, _wgslsmith_dot_vec3_i32(arg_0.e.zwz, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, 30422i), arg_2.e.zyx, arg_1)), !arg_0.b.yz, arg_0.e), arg_0.a, select(!func_3(var_1, -1138f, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 38405u, arg_2.a.x), vec3<u32>(u_input.a, 4294967295u, u_input.a)), select(vec4<i32>(11i, arg_1.x, 0i, -1i), vec4<i32>(16720i, -3356i, 2147483647i, -1i), vec4<bool>(arg_0.d.x, arg_0.b.x, arg_2.b.x, arg_0.b.x))), !func_3(Struct_3(604f), _wgslsmith_f_op_f32(select(-190f, var_1.a, arg_2.b.x)), vec3<u32>(46938u, u_input.a, arg_2.a.x), -arg_0.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a - var_1.a))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_1.a)));
    return Struct_1(arg_0.a, !arg_2.b, abs(countOneBits(-2147483647i >> (u_input.a % 32u)) << (var_3.b.a.x % 32u)), arg_2.b.zz, max(arg_0.e, select(_wgslsmith_sub_vec4_i32(~var_3.b.e, select(vec4<i32>(-37258i, var_3.a, -8757i, var_3.a), vec4<i32>(arg_1.x, 58808i, -3001i, arg_2.e.x), vec4<bool>(var_3.d.x, arg_2.b.x, var_3.b.d.x, var_3.b.b.x))), _wgslsmith_clamp_vec4_i32(arg_0.e, vec4<i32>(5096i, arg_1.x, -63904i, 0i), vec4<i32>(1i, 2147483647i, var_3.a, 2147483647i)) >> (vec4<u32>(var_3.b.a.x, var_3.b.a.x, var_3.c.x, 4294967295u) % vec4<u32>(32u)), vec4<bool>(2147483647i <= arg_1.x, all(vec3<bool>(false, false, arg_0.d.x)), var_3.d.x, false))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = func_5(Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.a, 1u), select(30383u, _wgslsmith_dot_vec3_u32(vec3<u32>(40056u, 1u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 21070u)), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))), !func_2(u_input.a, 53674u, u_input.a), ~arg_2, !(!vec2<bool>(arg_0, false)), min(~(vec4<i32>(arg_2, arg_2, -61689i, -1i) << (vec4<u32>(u_input.a, 6559u, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<i32>(-2147483647i, _wgslsmith_div_i32(-32574i, arg_2), i32(-1i) * -2147483647i, -16245i))), ~(~(-vec3<i32>(-1i, arg_2, -7292i)) ^ vec3<i32>(firstTrailingBit(arg_2), arg_2 & arg_2, arg_2)), Struct_1(~(~max(vec2<u32>(21789u, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec3<bool>(!arg_0, arg_0, ~594i == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, arg_2), vec3<i32>(arg_2, -29140i, -52104i))), 1i & _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2, -1096i), arg_2), func_3(Struct_3(-2167f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f + arg_1) - _wgslsmith_f_op_f32(ceil(-1000f))), ~vec3<u32>(1u, 0u, u_input.a) ^ select(vec3<u32>(19404u, u_input.a, 146186u), vec3<u32>(50031u, 4371u, 4294967295u), vec3<bool>(true, true, false)), ~(-vec4<i32>(-1i, 0i, 1i, -31140i))).xw, _wgslsmith_add_vec4_i32(vec4<i32>(1i, select(0i, arg_2, false), 2147483647i, reverseBits(1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, 39871i, 1i, -5578i), vec4<i32>(2142i, -2147483647i, 1476i, 21913i)))));
    var var_1 = 4294967295u;
    let var_2 = func_5(Struct_1(vec2<u32>(firstTrailingBit(1u) | abs(var_0.a.x), u_input.a), !var_0.b, 1i, vec2<bool>(!var_0.b.x, var_0.d.x), var_0.e), firstLeadingBit(select(max(_wgslsmith_mult_vec3_i32(var_0.e.xzw, var_0.e.ywx), _wgslsmith_clamp_vec3_i32(var_0.e.xzw, vec3<i32>(-55047i, 14171i, arg_2), var_0.e.yzz)), -(var_0.e.wzw & var_0.e.yxz), var_0.d.x)), func_5(Struct_1(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a.x), u_input.a), !func_3(Struct_3(-1014f), arg_1, vec3<u32>(u_input.a, var_0.a.x, 22275u), vec4<i32>(arg_2, arg_2, var_0.e.x, 2147483647i)).yzz, var_0.e.x, func_5(Struct_1(var_0.a, var_0.b, -1i, vec2<bool>(arg_0, var_0.b.x), var_0.e), ~vec3<i32>(var_0.c, -15895i, var_0.e.x), Struct_1(var_0.a, var_0.b, -1i, var_0.b.yx, var_0.e)).d, vec4<i32>(2147483647i, -var_0.c, -1i, 1i)), vec3<i32>(var_0.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, -6704i, arg_2, 73316i), _wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(var_0.c, arg_2, 0i, 35439i))), abs(2147483647i)), func_5(Struct_1(var_0.a, func_2(u_input.a, u_input.a, 25917u), 2147483647i, vec2<bool>(false, false), vec4<i32>(arg_2, 24362i, var_0.c, -1i)), vec3<i32>(arg_2, arg_2, 1i) ^ ~vec3<i32>(arg_2, arg_2, arg_2), func_5(func_5(Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(false, var_0.d.x, var_0.d.x), 12761i, var_0.b.zy, vec4<i32>(var_0.c, -8763i, -30916i, arg_2)), var_0.e.xxy, Struct_1(var_0.a, var_0.b, 2147483647i, vec2<bool>(false, true), var_0.e)), func_5(Struct_1(vec2<u32>(var_0.a.x, 21529u), vec3<bool>(false, false, false), -1i, vec2<bool>(true, var_0.d.x), vec4<i32>(33377i, arg_2, arg_2, arg_2)), vec3<i32>(arg_2, -18736i, 1i), Struct_1(vec2<u32>(u_input.a, 49626u), vec3<bool>(true, var_0.b.x, arg_0), 1i, vec2<bool>(var_0.b.x, var_0.d.x), vec4<i32>(-75789i, var_0.e.x, -11233i, arg_2))).e.xyz, Struct_1(vec2<u32>(29054u, 0u), vec3<bool>(arg_0, var_0.d.x, true), 16497i, var_0.b.xy, var_0.e))))).b.x;
    var_1 = 1u;
    var_0 = Struct_1(func_5(func_5(func_5(Struct_1(var_0.a, vec3<bool>(var_0.b.x, true, var_2), -2147483647i, var_0.b.zz, vec4<i32>(31228i, 0i, var_0.e.x, 2147483647i)), abs(var_0.e.yww), Struct_1(var_0.a, vec3<bool>(var_0.b.x, arg_0, false), 888i, var_0.b.zz, vec4<i32>(-13927i, 39464i, 1i, arg_2))), (vec3<i32>(var_0.c, arg_2, var_0.e.x) >> (vec3<u32>(1u, 53270u, 23066u) % vec3<u32>(32u))) >> (vec3<u32>(var_0.a.x, 25061u, u_input.a) % vec3<u32>(32u)), Struct_1(vec2<u32>(u_input.a, 0u), var_0.b, 1i, func_5(Struct_1(var_0.a, vec3<bool>(true, var_2, var_2), arg_2, var_0.b.xz, vec4<i32>(0i, -4284i, -16341i, var_0.e.x)), var_0.e.yzw, Struct_1(vec2<u32>(u_input.a, 1u), vec3<bool>(var_0.d.x, var_2, false), 6545i, var_0.d, var_0.e)).b.xx, abs(var_0.e))), vec3<i32>(-14279i << (firstLeadingBit(u_input.a) % 32u), arg_2, _wgslsmith_clamp_i32(arg_2, select(arg_2, -35662i, arg_0), i32(-1i) * -2147483647i)), func_5(Struct_1(vec2<u32>(u_input.a, var_0.a.x), vec3<bool>(var_2, arg_0, true), -1i, var_0.b.xy, vec4<i32>(1i, -2147483647i, arg_2, -1i)), ~(~var_0.e.yzx), Struct_1(~vec2<u32>(u_input.a, 0u), vec3<bool>(arg_0, arg_0, arg_0), ~(-1i), select(var_0.d, var_0.b.yy, vec2<bool>(true, false)), _wgslsmith_div_vec4_i32(var_0.e, var_0.e)))).a, vec3<bool>(var_0.b.x || false, var_0.d.x, var_0.d.x), arg_2, func_5(func_5(Struct_1(~var_0.a, func_3(Struct_3(1051f), -1205f, vec3<u32>(0u, 14504u, var_0.a.x), var_0.e).xxz, 7876i, !var_0.b.yx, var_0.e), vec3<i32>(_wgslsmith_mult_i32(arg_2, 25037i), 1i << (1u % 32u), -var_0.e.x), func_5(Struct_1(vec2<u32>(23716u, var_0.a.x), vec3<bool>(true, true, var_0.b.x), -2147483647i, vec2<bool>(true, var_0.b.x), var_0.e), var_0.e.xwz, Struct_1(var_0.a, vec3<bool>(arg_0, var_0.b.x, var_2), var_0.e.x, vec2<bool>(var_0.d.x, var_0.d.x), var_0.e))), countOneBits(max(vec3<i32>(var_0.c, 2147483647i, arg_2), vec3<i32>(1i, -2147483647i, arg_2))), Struct_1(abs(vec2<u32>(u_input.a, 0u)), var_0.b, var_0.c << (~27726u % 32u), select(var_0.b.xx, var_0.b.xx, vec2<bool>(arg_0, var_0.b.x)), ~(~vec4<i32>(arg_2, var_0.e.x, arg_2, var_0.e.x)))).b.zy, var_0.e);
    return Struct_1(vec2<u32>(var_0.a.x, 4294967295u), !func_2(~(31117u | var_0.a.x), var_0.a.x, 13454u), 17217i, !(!vec2<bool>(0u < var_0.a.x, true)), ~_wgslsmith_add_vec4_i32(var_0.e, vec4<i32>(-2147483647i, 32650i, var_0.c, arg_2) ^ vec4<i32>(var_0.c, var_0.c, arg_2, 1i)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = arg_0.d;
    var_0 = func_3(arg_2, arg_2.a, firstTrailingBit(select(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), arg_0.a.x, arg_1.x), vec3<u32>(~arg_0.a.x, _wgslsmith_clamp_u32(11861u, 1u, 0u), ~u_input.a), var_0.x)), arg_0.e).wy;
    var var_1 = Struct_1(arg_1, func_3(Struct_3(-1195f), 1260f, ~select(~vec3<u32>(1u, 4117u, u_input.a), ~vec3<u32>(4294967295u, arg_1.x, u_input.a), vec3<bool>(true, arg_0.d.x, false)), vec4<i32>(-2147483647i >> (func_4(arg_2, arg_2, vec4<bool>(false, var_0.x, true, var_0.x), Struct_2(-23312i, arg_0, vec2<u32>(arg_1.x, arg_0.a.x), vec4<bool>(true, arg_0.b.x, var_0.x, var_0.x))).x % 32u), _wgslsmith_mod_i32(-45699i, 1i), arg_3.x, reverseBits(1i) >> (arg_0.a.x % 32u))).xwz, arg_3.x, vec2<bool>(var_0.x, func_5(Struct_1(vec2<u32>(arg_0.a.x, arg_0.a.x) >> (arg_0.a % vec2<u32>(32u)), vec3<bool>(var_0.x, var_0.x, true), arg_0.c, func_3(Struct_3(-526f), arg_2.a, vec3<u32>(1u, 97941u, 7095u), vec4<i32>(arg_0.c, arg_3.x, arg_3.x, 1i)).yw, arg_0.e), arg_3, arg_0).d.x), arg_0.e);
    var_1 = Struct_1(arg_1 & var_1.a, func_3(Struct_3(arg_2.a), arg_2.a, vec3<u32>(var_1.a.x, arg_0.a.x, 0u) | firstLeadingBit(vec3<u32>(arg_1.x, 32542u, arg_1.x) & vec3<u32>(arg_0.a.x, 38046u, u_input.a)), vec4<i32>(arg_0.c, arg_3.x, -_wgslsmith_mod_i32(var_1.c, 2147483647i), func_5(arg_0, arg_3, arg_0).e.x ^ var_1.c)).xzz, 1i, vec2<bool>(all(!(!var_1.b)), any(vec2<bool>(all(var_1.d), var_1.b.x))), ~select(-arg_0.e | vec4<i32>(0i, -2147483647i, -24489i, -20134i), ~arg_0.e, arg_0.d.x));
    let var_2 = arg_2;
    return vec4<bool>(func_3(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(103f, var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(654f)) - _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(max(var_2.a, arg_2.a)))), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4580u, 105459u, 13765u)), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_div_vec4_i32(select(reverseBits(var_1.e), vec4<i32>(arg_0.e.x, -1i, -5977i, var_1.e.x), func_1(var_0.x, -1000f, 16930i).b.x), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, arg_0.c, 2147483647i, arg_3.x)), arg_0.e))).x, arg_0.b.x, var_1.d.x && any(vec4<bool>(var_0.x, any(var_1.b), func_3(var_2, -1000f, vec3<u32>(4294967295u, 84746u, 1u), var_1.e).x, var_1.b.x)), all(!(!vec2<bool>(arg_0.b.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(!all(vec3<bool>(false, false, false)), true, true, true), func_6(func_1(true, -1000f, 1i), select(vec2<u32>(u_input.a, 29945u), ~vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)), Struct_3(_wgslsmith_f_op_f32(sign(-1570f))), -reverseBits(vec3<i32>(26955i, 40673i, 2147483647i))), false);
    var var_1 = vec2<f32>(-182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(814f)))))));
    global0 = u_input.a;
    var var_2 = max(-select(-60300i, 2147483647i, true), _wgslsmith_dot_vec3_i32(firstLeadingBit(func_1(var_0.x, _wgslsmith_f_op_f32(abs(-126f)), _wgslsmith_div_i32(-2147483647i, -20761i)).e.zzy), countOneBits(-vec3<i32>(2147483647i, -2147483647i, -2147483647i))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * 531f), _wgslsmith_f_op_f32(floor(var_1.x))), vec2<f32>(1857f, _wgslsmith_f_op_f32(round(var_1.x))), vec2<bool>(var_0.x, any(var_0.xzw))))));
    let var_3 = _wgslsmith_f_op_f32(sign(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, vec2<f32>(_wgslsmith_f_op_f32(314f * _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_3, var_1.x))), 694f));
}

