struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = reverseBits(i32(-1i) * -firstLeadingBit(0i));
    let var_1 = _wgslsmith_div_i32(-2147483647i, -countOneBits(-3077i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1891f)), _wgslsmith_f_op_f32(-3098f - -2751f)) + 588f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1570f)))));
    var var_3 = _wgslsmith_f_op_f32(floor(472f));
    var var_4 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(10623i, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(var_1, 39900i), vec2<i32>(u_input.b, 1i))), 0i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_1), vec3<i32>(var_1, u_input.b, 12256i)))), reverseBits(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, u_input.b, -2147483647i)))), vec3<bool>(select(any(arg_0.yy), false, true), true, !(!arg_0.x) == true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, 986f, -542f, -397f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-844f, 312f, 378f, 529f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, 241f, -746f, -1648f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1336f, -544f, 1499f, 164f), vec4<f32>(351f, 835f, 1225f, -1484f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, 1090f, 486f, 1018f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, 382f, -138f, 1427f) * vec4<f32>(-1528f, -1415f, 1000f, -1284f))))))));
    return select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29610u, 1u), reverseBits(vec2<u32>(u_input.a, 4294967295u))) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(38926u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), u_input.a) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(48036u), u_input.a, 1u, ~u_input.a), vec4<u32>(66832u, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, min(11899u, 1u)))), 53866u << ((~u_input.a | ~13677u) % 32u), false);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    let var_0 = vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), true, true), false)), 1075f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-415f, 1026f, false))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(f32(-1f) * -1252f))));
    let var_1 = ~arg_1.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1847f, 522f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2426f, -1408f), vec2<f32>(1442f, 235f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, 1247f) * vec2<f32>(728f, -597f)))))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.x, 18269u, u_input.a), countOneBits(vec4<u32>(1u, 0u, arg_0, 4294967295u))), abs(abs(30023u)), arg_0), ~reverseBits(vec3<u32>(4294967295u, 54892u, 57716u))), vec2<bool>(!(true || var_0.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-756f))) - _wgslsmith_f_op_f32(ceil(-521f))));
    var var_3 = -_wgslsmith_add_i32(~18501i, -_wgslsmith_mult_i32(max(2147483647i, -130997i), ~u_input.b));
    var_3 = u_input.b;
    return max(_wgslsmith_clamp_vec3_i32(max(~vec3<i32>(33367i, -2147483647i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(abs(-26764i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 51020i, u_input.b), vec4<i32>(u_input.b, u_input.b, -32445i, 5706i)), 2526i), vec3<i32>(-1i, 2147483647i & u_input.b, ~(-2147483647i))), -max(~vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-52109i, 966i, -661i))) & firstTrailingBit(_wgslsmith_sub_vec3_i32(min(vec3<i32>(1i, u_input.b, 12842i), abs(vec3<i32>(u_input.b, 39289i, u_input.b))), vec3<i32>(-17140i, firstTrailingBit(-13648i), _wgslsmith_dot_vec4_i32(vec4<i32>(-15603i, u_input.b, -25268i, 42003i), vec4<i32>(-25018i, u_input.b, 39643i, 31128i)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(func_4(select(~(~46073u), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true), vec3<u32>(~(~u_input.a), u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, false))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1007f, 643f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(986f, 1000f)))), 238f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f))))));
    var_0 = Struct_2(~max(vec3<i32>(var_0.a.x << (0u % 32u), reverseBits(-5714i), i32(-1i) * -30019i), _wgslsmith_sub_vec3_i32(firstTrailingBit(var_0.a), vec3<i32>(u_input.b, var_0.a.x, 1i))), !vec3<bool>(all(select(var_0.b.zx, var_0.b.zz, true)), var_0.b.x, all(vec4<bool>(false, false, var_0.b.x, var_0.b.x))), var_0.c);
    var var_1 = select(~vec4<u32>(1u, u_input.a, (0u | u_input.a) >> (u_input.a % 32u), u_input.a), vec4<u32>(u_input.a, ~0u, firstTrailingBit(_wgslsmith_div_u32(select(0u, u_input.a, true), abs(2878u))), 44670u), !(!select(!vec4<bool>(var_0.b.x, false, var_0.b.x, true), !vec4<bool>(true, var_0.b.x, var_0.b.x, true), !vec4<bool>(true, var_0.b.x, false, var_0.b.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1767f, 310f)) * var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, -520f))))))));
    let var_3 = 21237i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.c.zx))), var_2))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(-560f, -583f, var_0.b.x | true)), -1074f))), _wgslsmith_add_vec3_u32((~var_1.wyz >> (~var_1.xzz % vec3<u32>(32u))) | select(select(var_1.yzy, vec3<u32>(u_input.a, 4294967295u, 16992u), vec3<bool>(var_0.b.x, false, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(var_1.x, var_1.x, var_1.x)), select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, false, false), vec3<bool>(false, var_0.b.x, var_0.b.x))), vec3<u32>(_wgslsmith_add_u32(83307u, u_input.a) ^ 72101u, _wgslsmith_div_u32(u_input.a, ~var_1.x), 4294967295u)), vec2<bool>(true, true), -1067f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, max(arg_1.a.x, 0i), 32188i), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, arg_1.a.x)), arg_1.a)) >> (vec3<u32>(_wgslsmith_sub_u32(arg_0.c.x | u_input.a, ~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.c.x, arg_0.c.x, u_input.a, arg_0.c.x), vec4<u32>(u_input.a, arg_0.c.x, arg_0.c.x, 0u) ^ vec4<u32>(3357u, u_input.a, arg_0.c.x, 30774u)), ~1u) % vec3<u32>(32u)), !select(arg_1.b, select(select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, false, false), arg_1.b), !arg_1.b, !arg_3.d.x), vec3<bool>(!arg_0.d.x, true, arg_3.d.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1.c)) - vec4<f32>(arg_0.e, 541f, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -682f, arg_3.b.x, 904f)), _wgslsmith_f_op_vec4_f32(-arg_1.c), !vec4<bool>(arg_0.d.x, arg_1.b.x, false, false))), !select(vec4<bool>(arg_1.b.x, true, arg_3.d.x, arg_1.b.x), vec4<bool>(true, true, false, arg_3.d.x), vec4<bool>(arg_0.d.x, true, true, true)))))));
    var var_1 = u_input.b >= (u_input.b ^ 12021i);
    let var_2 = -42050i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-539f, 1000f, false)) + _wgslsmith_f_op_f32(var_0.c.x + 1446f)), _wgslsmith_f_op_f32(-arg_1.c.x)) + var_0.c.wx), arg_3.b, vec3<u32>(~(~0u), ~_wgslsmith_clamp_u32(~19374u, ~4294967295u, arg_3.c.x), _wgslsmith_dot_vec3_u32(arg_3.c, vec3<u32>(~71870u, 1u, 12520u))), arg_1.b.zz, -1000f);
    let var_4 = _wgslsmith_add_vec3_u32(~reverseBits(~arg_0.c), firstLeadingBit(var_3.c));
    return var_0.a.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = !(!(!(!(!vec3<bool>(arg_2.d.x, false, arg_2.d.x)))));
    let var_1 = var_0.x;
    var_0 = !select(vec3<bool>(true, !var_0.x, _wgslsmith_f_op_f32(arg_2.b.x * 455f) > -1376f), select(vec3<bool>(true, any(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, false))), !vec3<bool>(false, false, arg_2.d.x), vec3<bool>(arg_2.d.x, true, arg_2.d.x)), true);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.x)))), 423f));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec4<u32>(reverseBits(0u), ~arg_2.c.x, 25610u, _wgslsmith_mult_u32(~u_input.a, ~(~_wgslsmith_mult_u32(u_input.a, u_input.a))));
    var var_1 = Struct_2(vec3<i32>(u_input.b, u_input.b, -(select(u_input.b, u_input.b, true) & _wgslsmith_mod_i32(12559i, u_input.b))), arg_0.xzx, vec4<f32>(-1000f, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1328f))), 366f));
    let var_2 = var_1.a.zz;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(func_6(abs(4294967295u), func_5(func_2(), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 0i, 27763i), var_1.a), select(vec3<bool>(arg_0.x, false, var_1.b.x), arg_0.wxz, vec3<bool>(false, arg_0.x, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2.b.x, arg_1, 857f))), _wgslsmith_f_op_vec3_f32(var_1.c.yww + vec3<f32>(216f, arg_1, arg_1)), func_2()), arg_2)), var_1.c.zw, _wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.x, 51344u, u_input.a) ^ ~vec3<u32>(arg_2.c.x, arg_2.c.x, 3569u)), ~(~var_0.zxw), _wgslsmith_div_vec3_u32(~(arg_2.c >> (vec3<u32>(var_0.x, u_input.a, u_input.a) % vec3<u32>(32u))), (arg_2.c << (var_0.wwx % vec3<u32>(32u))) << (min(vec3<u32>(var_0.x, u_input.a, 1u), arg_2.c) % vec3<u32>(32u)))), arg_2.d, _wgslsmith_f_op_f32(-var_1.c.x));
    var var_4 = var_1.c;
    return Struct_2(vec3<i32>(1i, ~firstLeadingBit(45346i), 30363i), !var_1.b, vec4<f32>(arg_2.a.x, -799f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_1.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.c.x)), -145f)));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = 49472i;
    let var_1 = !select(select(!select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), true), !(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x)), 1u > (u_input.a ^ arg_2)), !(!(!vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), !(0i <= func_5(Struct_1(arg_1.c.zx, arg_1.c.ww, vec3<u32>(u_input.a, arg_2, 0u), arg_1.b.zz, arg_1.c.x), Struct_2(vec3<i32>(0i, arg_0.x, arg_0.x), arg_1.b, vec4<f32>(1138f, arg_1.c.x, -1000f, 1038f)), vec3<f32>(arg_1.c.x, arg_1.c.x, -668f), Struct_1(arg_1.c.zx, arg_1.c.yy, vec3<u32>(arg_2, arg_2, u_input.a), vec2<bool>(arg_1.b.x, arg_1.b.x), 180f))));
    let var_2 = 7177u;
    var var_3 = var_1.wwz;
    let var_4 = firstLeadingBit(~(~vec4<i32>(_wgslsmith_add_i32(arg_0.x, -25702i), reverseBits(0i), i32(-1i) * -1i, arg_0.x | -1i)));
    return vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(~_wgslsmith_mult_u32(1u, u_input.a), 0u)), 15662u, 32338u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(countOneBits(u_input.b) >> (18425u % 32u), -33283i) >> (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-17385i, -2147483647i ^ u_input.b) >> (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<i32>(u_input.b, ~1i)));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_i32(vec3<i32>(-457i, u_input.b, 36996i) | vec3<i32>(u_input.b, u_input.b, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -19741i, -39067i))) & select(firstLeadingBit(vec3<i32>(u_input.b, -474i, u_input.b)), abs(select(vec3<i32>(u_input.b, 16851i, -1i), vec3<i32>(u_input.b, -1725i, u_input.b), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)), vec3<u32>(_wgslsmith_mod_u32(u_input.a, 24199u), max(u_input.a, 11921u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5264u, 23035u, u_input.a), vec3<u32>(u_input.a, 36842u, 56919u)), 0u), select(_wgslsmith_mod_vec2_u32(vec2<u32>(22651u, 0u), vec2<u32>(37077u, u_input.a)), vec2<u32>(10768u, 25773u) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, false)))), _wgslsmith_add_vec2_i32(~(select(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(false, true)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 6459i), vec2<i32>(u_input.b, u_input.b))), ~(-vec2<i32>(27368i, u_input.b)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -7447i) ^ vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, u_input.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(func_7(~vec2<i32>(u_input.b, u_input.b), func_1(vec4<bool>(true, false, true, false), 569f, Struct_1(vec2<f32>(771f, 1211f), vec2<f32>(-1262f, 248f), vec3<u32>(4294967295u, u_input.a, u_input.a), vec2<bool>(true, true), 297f)), 46558u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 14011u, 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(29140u, 0u, 6393u, u_input.a), vec4<u32>(u_input.a, 16250u, 4294967295u, 4294967295u)))), func_7(select(vec2<i32>(24250i, 0i), -vec2<i32>(u_input.b, u_input.b), func_2().d), Struct_2(-vec3<i32>(u_input.b, -11270i, u_input.b), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(628f, -1460f, -1215f, 568f) + vec4<f32>(-1156f, -595f, -201f, -260f))), ~0u).x, 1u));
}

