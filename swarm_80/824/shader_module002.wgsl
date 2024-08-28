struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 44986u)), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), vec2<i32>(abs(2147483647i), 1i), _wgslsmith_f_op_f32(f32(-1f) * -515f)), ~vec4<u32>(~24905u, ~10543u, countOneBits(u_input.a), ~31642u), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) ^ (vec4<u32>(4294967295u, 4294967295u, 13989u, 37715u) >> (vec4<u32>(6277u, u_input.a, 1u, 0u) % vec4<u32>(32u))), ~(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, 82395u, 0u)), vec4<u32>(u_input.a, 1u, u_input.a, 7746u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-202f, _wgslsmith_f_op_f32(abs(956f)))))) - -604f), -1704f, vec4<i32>(-(~select(2147483647i, 4246i, true)), -_wgslsmith_mult_i32(-1612i, 1i), 0i, i32(-1i) * -_wgslsmith_sub_i32(-7822i, -38335i)));
    let var_1 = _wgslsmith_add_u32(0u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, ~4294967295u), _wgslsmith_dot_vec2_u32(max(var_0.a.b.yx, vec2<u32>(11734u, 64917u)), vec2<u32>(u_input.a, 4294967295u))));
    let var_2 = -1921f;
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(28211u, _wgslsmith_clamp_u32(4294967295u, var_0.a.a.a.x & 26648u, ~u_input.a), select(43635u << (var_0.a.b.x % 32u), 1u, var_2 != 561f), 64877u), ~(~var_0.b)) & vec4<u32>(29696u, firstLeadingBit(abs(var_0.b.x)), 27788u, ~(~(~var_1)));
    var_3 = vec4<u32>(4294967295u, abs(max(1u << (_wgslsmith_dot_vec3_u32(var_0.b.wzz, vec3<u32>(u_input.a, u_input.a, u_input.a)) % 32u), ~1u)), abs(var_0.b.x), var_0.b.x);
    return !vec4<bool>(true, true, var_0.a.c.x, var_0.a.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = 0u;
    var_0 = arg_1.a.a.x;
    let var_1 = vec3<u32>(0u, 47279u, abs(93273u));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1621f * arg_1.a.c))), -firstTrailingBit(-2147483647i));
    var_0 = _wgslsmith_mod_u32(arg_1.a.a.x, var_1.x);
    return vec4<bool>(!(arg_1.c.x | true), true, !(!(-var_2.b != arg_1.a.b.x)), arg_1.c.x);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1261f, 177f, -620f, 504f), vec4<f32>(1113f, 639f, 1083f, -1106f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-371f, 1953f, 562f, 1000f))))), func_4(any(vec2<bool>(false, arg_0)), Struct_2(Struct_1(vec4<u32>(31624u, 1566u, 17662u, 52242u), vec2<i32>(1i, -9825i), 126f), vec4<u32>(8822u, u_input.a, u_input.a, 41321u) | vec4<u32>(u_input.a, 89180u, 0u, 10314u), vec2<bool>(arg_0, arg_0)), func_3())))));
    let var_1 = countOneBits(vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(1i, ~(-16932i))), ~(-(i32(-1i) * -11645i)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-27426i, -2147483647i, -54702i), abs(vec3<i32>(1i, 0i, 11626i))), -15301i));
    let var_2 = _wgslsmith_clamp_u32(u_input.a >> (~(~u_input.a) % 32u), 42730u, min(firstTrailingBit(_wgslsmith_clamp_u32(~u_input.a, u_input.a, 1u)), ~45512u));
    let var_3 = Struct_4(Struct_2(Struct_1(~(~vec4<u32>(var_2, 8024u, var_2, u_input.a)), vec2<i32>(66425i, -10832i), -818f), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, ~4294967295u, _wgslsmith_mod_u32(858u, var_2), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, u_input.a, 4294967295u, 14870u), vec4<u32>(var_2, 7942u, u_input.a, 1u))), firstLeadingBit(~vec4<u32>(6137u, 1u, var_2, u_input.a))), func_4(!arg_0, Struct_2(Struct_1(vec4<u32>(var_2, u_input.a, var_2, u_input.a), vec2<i32>(var_1.x, 0i), var_0.x), select(vec4<u32>(58105u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 4294967295u, 55148u, 1u), true), !vec2<bool>(arg_0, false)), vec4<bool>(true, arg_0, any(vec3<bool>(false, arg_0, true)), all(vec4<bool>(arg_0, true, false, arg_0)))).yw), select(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) ^ vec2<u32>(7074u, 51069u), max(vec2<u32>(51700u, u_input.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, var_2), 20420u), firstTrailingBit(81834u)), firstTrailingBit(abs(~vec4<u32>(var_2, var_2, 4294967295u, u_input.a))), !vec4<bool>(arg_0, true, func_4(arg_0, Struct_2(Struct_1(vec4<u32>(59011u, var_2, var_2, 0u), vec2<i32>(var_1.x, 0i), 1242f), vec4<u32>(13911u, 0u, 4294967295u, u_input.a), vec2<bool>(arg_0, false)), vec4<bool>(arg_0, arg_0, arg_0, false)).x, all(vec4<bool>(false, arg_0, false, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2577f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) + var_0.x)) + var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), -(~firstTrailingBit(var_1)) | firstTrailingBit(-(vec4<i32>(var_1.x, 1i, 40248i, 2147483647i) ^ vec4<i32>(-10883i, var_1.x, -1i, 0i))));
    let var_4 = ~(~(~(~vec3<u32>(var_2, var_3.a.a.a.x, 2075u))));
    return var_1.x;
}

fn func_1() -> Struct_4 {
    var var_0 = -1i;
    var_0 = -2147483647i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1254f)), _wgslsmith_div_f32(-254f, 1000f))))), -2147483647i);
    let var_2 = vec3<bool>(61994u >= u_input.a, false, -22256i <= (firstLeadingBit(var_1.b) << (~0u % 32u)));
    var var_3 = -abs(func_2(all(var_2) & var_2.x));
    return Struct_4(Struct_2(Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 71250u), vec4<u32>(23452u, 1u, 9416u, 0u)), ~vec2<i32>(-4132i, -1i) | firstLeadingBit(vec2<i32>(-2147483647i, var_1.b)), 131f), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, 8513u, u_input.a)), reverseBits(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), var_2.zy), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(16726u, u_input.a >> (u_input.a % 32u), ~u_input.a, 1u), vec4<u32>(1u, ~u_input.a, ~u_input.a, 4294967295u)), vec4<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(8214u, u_input.a, u_input.a)), u_input.a), ~u_input.a, _wgslsmith_mod_u32(u_input.a, max(1u, u_input.a)))), _wgslsmith_f_op_f32(-494f + var_1.a), _wgslsmith_f_op_f32(step(2000f, _wgslsmith_f_op_f32(f32(-1f) * -1122f))), select(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<i32>(1i, -2147483647i, var_1.b, var_1.b), vec4<i32>(var_1.b, var_1.b, 2147483647i, 0i))), vec4<i32>(-1i) * -vec4<i32>(var_1.b, var_1.b, var_1.b, -2147483647i), vec4<bool>(true || var_2.x, !var_2.x, true, var_2.x)) ^ _wgslsmith_mod_vec4_i32(min(-vec4<i32>(2147483647i, -25497i, 1i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -24228i, 2147483647i, 41466i), vec4<i32>(var_1.b, -1i, -4714i, var_1.b))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -21776i, 36445i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, 16800i, var_1.b, var_1.b), vec4<i32>(-14746i, 18016i, 2147483647i, 0i)), reverseBits(vec4<i32>(var_1.b, 2147483647i, 38517i, var_1.b)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec4_i32(arg_2.e, arg_2.e ^ vec4<i32>(~(arg_2.e.x ^ 22791i), 0i >> (max(arg_2.a.b.x, 1u) % 32u), -1i, func_1().a.a.b.x));
    var var_1 = ~(~(~(50965u & u_input.a)) & _wgslsmith_mult_u32(firstLeadingBit(1u), arg_1));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), -2361f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(496f, arg_2.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.d, -371f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, -578f) * vec2<f32>(1000f, arg_2.c))), false))));
    let var_3 = arg_2.a.c;
    let var_4 = any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), abs(u_input.a) != _wgslsmith_clamp_u32(u_input.a, 0u, 235u)));
    return vec3<u32>(max(arg_1, ~_wgslsmith_add_u32(~arg_1, arg_2.b.x)), 4294967295u, select(arg_2.a.b.x, 0u, arg_2.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), -vec2<i32>(-1i, -2147483647i)), -1i, min(0i, ~_wgslsmith_sub_i32(-48510i, -1i))), _wgslsmith_mod_u32((~u_input.a << (1u % 32u)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 43853u), vec2<u32>(u_input.a, u_input.a)) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(44254u << (u_input.a % 32u), _wgslsmith_add_u32(1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)))), func_1());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-317f, -728f) + 1635f);
    var var_2 = func_1().a.a;
    let var_3 = Struct_4(Struct_2(func_1().a.a, ~countOneBits(vec4<u32>(4294967295u, 98114u, var_2.a.x, u_input.a)) << (~func_1().b % vec4<u32>(32u)), vec2<bool>(false | (-1i <= var_2.b.x), all(vec2<bool>(true, true)))), ~((_wgslsmith_sub_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, var_0.x, u_input.a, var_2.a.x)) ^ ~var_2.a) >> (var_2.a % vec4<u32>(32u))), var_2.c, 2602f, vec4<i32>(2147483647i, -_wgslsmith_mod_i32(1i, var_2.b.x), -512i, firstTrailingBit(max(0i, -1i))) << (min(select(vec4<u32>(4294967295u, var_0.x, 1u, var_2.a.x), vec4<u32>(57033u, var_2.a.x, var_2.a.x, var_2.a.x), 44653u < u_input.a), firstTrailingBit(_wgslsmith_mod_vec4_u32(var_2.a, var_2.a))) % vec4<u32>(32u)));
    var_2 = var_3.a.a;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1329f)) + var_2.c), abs(_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, var_2.b.x, var_2.b.x), _wgslsmith_sub_i32(-1i, 11380i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(var_4.b, 1i), func_1().e.x, ~_wgslsmith_sub_i32(-37623i, _wgslsmith_dot_vec4_i32(var_3.e, var_3.e)), _wgslsmith_dot_vec4_i32(var_3.e, var_3.e)), abs(vec4<u32>(~u_input.a, var_3.a.a.a.x, max(var_2.a.x, var_3.a.a.a.x), ~(var_3.b.x ^ 2430u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_1, 946f)), -584f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_3.a.a.c) * vec2<f32>(423f, 2122f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4.a, 1000f), vec2<f32>(1666f, var_3.a.a.c))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, -1068f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.d, -1029f))))))));
}

