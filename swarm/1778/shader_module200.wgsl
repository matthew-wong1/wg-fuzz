struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-873f, 1194f, 143f, -447f), vec4<f32>(565f, -610f, -1000f, -822f), vec4<f32>(-1003f, 1498f, -1496f, -1753f), vec4<f32>(339f, -385f, -985f, -820f), vec4<f32>(199f, 967f, 631f, 259f), vec4<f32>(-311f, 327f, -1055f, 335f), vec4<f32>(254f, 1452f, 1000f, 1509f), vec4<f32>(1172f, -1032f, 612f, 1551f), vec4<f32>(-1575f, 587f, 1000f, -764f), vec4<f32>(1820f, 383f, 1753f, 584f), vec4<f32>(825f, 494f, -190f, 270f), vec4<f32>(1159f, 546f, -2066f, -380f), vec4<f32>(-203f, 1272f, 164f, -1374f), vec4<f32>(-1029f, 574f, -145f, -784f), vec4<f32>(665f, -1715f, -2607f, 265f), vec4<f32>(-263f, -454f, 988f, 1038f), vec4<f32>(844f, 1062f, -165f, 151f), vec4<f32>(457f, -481f, -909f, -1899f), vec4<f32>(411f, -279f, -1457f, -1527f), vec4<f32>(-217f, 1209f, -702f, -691f), vec4<f32>(540f, 1100f, 1288f, -799f), vec4<f32>(158f, -805f, 604f, 782f), vec4<f32>(-779f, 370f, 286f, 246f), vec4<f32>(-2078f, 1101f, 831f, 737f), vec4<f32>(877f, -465f, 988f, 1159f), vec4<f32>(-1017f, -611f, 298f, -258f), vec4<f32>(142f, 400f, -560f, 1490f), vec4<f32>(213f, -1000f, 783f, -526f), vec4<f32>(718f, 771f, 477f, -601f), vec4<f32>(-1965f, -2026f, 934f, -480f), vec4<f32>(-1101f, -103f, 945f, -1000f));

var<private> global1: array<Struct_4, 11>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_1(0i, false, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 11287i, -2147483647i), vec3<i32>(1i, -1i, 1i)), min(vec3<i32>(16132i, -5923i, 1i), vec3<i32>(2147483647i, -18533i, 6948i))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-3137i, 1i), _wgslsmith_clamp_i32(36258i, 1i, -87926i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 42293i, 1913i), vec4<i32>(0i, 0i, -1631i, -14813i)))), 1i, 1i), select(vec3<i32>(14121i, ~_wgslsmith_clamp_i32(1i, -3692i, -2147483647i), abs(-1i) >> (1u % 32u)), min(abs(-vec3<i32>(35740i, 2147483647i, 2147483647i)), vec3<i32>(1i, 1i, 1i)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_1 = Struct_3(vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 55240u, 0u), ~vec3<u32>(1u, 58762u, u_input.a)) ^ u_input.a, ~((1u >> (u_input.a % 32u)) >> (max(u_input.a, 0u) % 32u)), 1u));
    global1 = array<Struct_4, 11>();
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(~(~52394u), 11u)], var_0, !vec3<bool>(true, var_0.b, (1i | var_0.a) > countOneBits(-27360i)), ~vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(var_0.d), var_0.c), var_0.c.x));
    var var_3 = -abs(var_0.c.yx);
    return var_1.a.zzw;
}

fn func_2() -> vec3<i32> {
    var var_0 = ~(~abs(vec3<u32>(46561u, 0u, u_input.a)) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)), reverseBits(vec3<u32>(19514u, u_input.a, 63464u))), func_3(-923f) ^ (vec3<u32>(71970u, u_input.a, u_input.a) << (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u)))));
    global0 = array<vec4<f32>, 31>();
    let var_1 = ~select(vec3<i32>(-2147483647i, abs(_wgslsmith_mult_i32(2147483647i, 0i)), 0i), vec3<i32>(1i >> (1u % 32u), 0i << (u_input.a % 32u), -_wgslsmith_mod_i32(-16094i, -8896i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_2 = !(!any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))));
    var var_3 = min(17732u, ~select(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_0.zz), max(4294967295u, 8007u)), false));
    return -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, var_1.x >> (var_0.x % 32u), 1i), vec3<i32>(var_1.x | 48410i, _wgslsmith_div_i32(-1499i, -5076i), reverseBits(15383i))), var_1);
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1990f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(634f)) + _wgslsmith_f_op_f32(f32(-1f) * -490f)))))));
    var var_1 = Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.a << (4294967295u % 32u)), vec2<i32>(arg_0.a << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 18157i), arg_0.c.xz))), ~vec4<u32>(~(49398u >> (1u % 32u)), u_input.a, 4294967295u, u_input.a), vec3<u32>(12701u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.a), 1u), ~u_input.a), abs(~(-7992i)) ^ arg_0.a);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1390f, 978f) + vec2<f32>(-1753f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -414f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, var_0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -433f))))));
    let var_2 = min(57839u, 62237u);
    return Struct_5(global1[_wgslsmith_index_u32(~var_1.c.x, 11u)], arg_0, vec3<bool>(true, true, !arg_0.b), func_2().yz);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_u32(7400u, ~0u, u_input.a << (_wgslsmith_div_u32(0u, ~reverseBits(4166u)) % 32u));
    global1 = array<Struct_4, 11>();
    global0 = array<vec4<f32>, 31>();
    var var_1 = ~(vec3<i32>(~1i, 62680i, -19817i) >> (firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 35620u, arg_0.x), ~vec3<u32>(94804u, u_input.a, arg_0.x))) % vec3<u32>(32u)));
    var var_2 = func_4(Struct_1(~(~firstTrailingBit(var_1.x)), arg_1 > arg_1, vec3<i32>(~(i32(-1i) * -2147483647i), min(var_1.x, -1083i) >> (_wgslsmith_mod_u32(42644u, u_input.a) % 32u), -1i), func_2()));
    return countOneBits(vec3<u32>(~0u | ~(arg_0.x ^ u_input.a), arg_0.x, arg_0.x | 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(14612u, _wgslsmith_dot_vec3_u32(countOneBits(select(func_1(vec2<u32>(15229u, u_input.a), -355f, true), vec3<u32>(24484u, 0u, u_input.a), true)), (vec3<u32>(45423u, u_input.a, 38253u) ^ countOneBits(vec3<u32>(0u, 0u, 26173u))) & max(countOneBits(vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 0u, 1u) % vec3<u32>(32u)))), u_input.a, _wgslsmith_mult_u32(0u, u_input.a));
    var var_1 = firstLeadingBit(vec3<u32>(~(4294967295u ^ (var_0.x >> (88319u % 32u))), firstLeadingBit(~firstTrailingBit(u_input.a)), max(_wgslsmith_sub_u32(func_1(vec2<u32>(u_input.a, 4294967295u), -1599f, false).x, 4294967295u), ~u_input.a)));
    global1 = array<Struct_4, 11>();
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_sub_i32(firstLeadingBit(24668i), 10954i), i32(-1i) * -20829i);
    var var_3 = Struct_5(func_4(func_4(Struct_1(0i, any(vec3<bool>(true, false, true)), ~vec3<i32>(var_2, 28203i, var_2), vec3<i32>(-2244i, var_2, var_2))).a.a).a, func_4(func_4(func_4(Struct_1(20630i, true, vec3<i32>(var_2, var_2, -47532i), vec3<i32>(var_2, var_2, var_2))).b).a.a).b, vec3<bool>(true, true, true), -_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(var_2, var_2)), vec2<i32>(_wgslsmith_div_i32(25437i, -19208i), _wgslsmith_mod_i32(var_2, var_2))));
    let var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(27823i, ~(-1i << (u_input.a % 32u))), _wgslsmith_add_vec2_i32(vec2<i32>(~var_3.b.c.x, 4899i), vec2<i32>(~(-106339i), 0i))), vec2<i32>(-14201i, -var_2));
    var var_5 = vec3<u32>(_wgslsmith_sub_u32(min(var_1.x, 16047u), 20002u & _wgslsmith_mult_u32(~u_input.a, func_3(-1065f).x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(43628u, ~_wgslsmith_add_u32(u_input.a, 0u)), ~countOneBits(80875u) & u_input.a), _wgslsmith_div_u32(var_0.x, u_input.a));
    var var_6 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, min(-_wgslsmith_add_i32(16878i, var_4.x), -_wgslsmith_div_i32(var_2, var_4.x)), 0i), ~var_3.a.b.zyz ^ -min(select(vec3<i32>(1761i, var_3.a.a.a, -1i), vec3<i32>(-2147483647i, 1i, -10878i), false), vec3<i32>(var_4.x, 1i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -1350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_f_op_f32(550f * _wgslsmith_f_op_f32(-1317f + 425f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-538f + -435f) - _wgslsmith_f_op_f32(2544f - -1538f)))), ~vec4<u32>(4294967295u, var_0.x, 68291u, 1u));
}

