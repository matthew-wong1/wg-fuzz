struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_1(u_input.b, vec4<i32>(~max(1i, u_input.a.x), -2147483647i, -17911i, u_input.a.x) >> (vec4<u32>(u_input.b | 1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 37689u), u_input.b), _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 4144u), u_input.b ^ u_input.b), _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(u_input.b, u_input.b), u_input.b)) % vec4<u32>(32u)), true, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~1i, _wgslsmith_mult_i32(-35544i, 13017i)), vec2<i32>(-2147483647i >> (u_input.b % 32u), -u_input.a.x)));
    var_0 = Struct_1(abs(27911u), vec4<i32>(23474i << (1u % 32u), 9876i, -16913i, _wgslsmith_clamp_i32(var_0.b.x, -27810i, 29958i)), !var_0.c, var_0.d);
    return _wgslsmith_clamp_u32(76120u, ~u_input.b, u_input.b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = (max(-25176i, ~(i32(-1i) * -2147483647i)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 45278u, 3921u, u_input.b), ~vec4<u32>(11684u, 31109u, 26625u, 21209u) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, arg_1, arg_0.a, 4294967295u), vec4<u32>(arg_3.a, arg_2, 4294967295u, 1u)) % vec4<u32>(32u))) % 32u)) < 50221i;
    let var_1 = arg_3.c;
    var var_2 = ~vec3<u32>(~(~67474u) << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7826u, arg_0.a, 109602u), vec3<u32>(arg_2, 0u, arg_3.a)), 22786u) % 32u), abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, 1u), 1u)), 15218u);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1216f, -2676f) + -872f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1172f - 186f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(330f + -2340f))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f * -589f) - _wgslsmith_f_op_f32(1840f + -1067f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3065f) * 435f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1447f + -628f), _wgslsmith_f_op_f32(-1797f + 1007f))), all(vec2<bool>(arg_0.c | arg_3.c, all(vec2<bool>(true, arg_3.c))))))));
    let var_4 = 4294967295u;
    return vec2<bool>(true, false);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 635f;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 855f)))));
    let var_2 = ~arg_0.zyw;
    let var_3 = Struct_1(~(17138u & func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, var_1, var_0, arg_2)))), vec4<i32>(2147483647i, reverseBits(u_input.a.x & ~arg_1.b.x), ~arg_1.b.x, arg_1.b.x), select(select(all(vec2<bool>(true, true)), !all(vec2<bool>(arg_3.c, arg_3.c)), arg_3.c), arg_1.c, func_3(Struct_1(select(0u, u_input.b, arg_3.c), arg_1.b, !arg_1.c, arg_1.d), ~firstTrailingBit(var_2.x), ~_wgslsmith_add_u32(64283u, 104123u), Struct_1(arg_3.a >> (7344u % 32u), ~vec4<i32>(1i, -1i, arg_3.b.x, arg_1.b.x), arg_3.c, _wgslsmith_sub_i32(-42530i, -1i))).x), _wgslsmith_mod_i32(arg_3.d, select(~u_input.a.x, 0i, false)));
    var var_4 = arg_1;
    return var_3;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(13168u, firstTrailingBit(arg_1.b), true, max(arg_2.b.x, countOneBits(-30464i)));
    var_0 = func_4(~(~vec4<u32>(var_0.a, arg_2.a, 28026u, var_0.a) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.b, var_0.a), vec4<u32>(13542u, u_input.b, arg_2.a, u_input.b)), abs(u_input.b), 28780u, func_2(vec4<f32>(-521f, -514f, 606f, -828f)))), Struct_1(u_input.b, arg_1.b, (countOneBits(var_0.a) != 1u) | all(func_3(Struct_1(10085u, arg_2.b, arg_0.x, arg_1.d), arg_2.a, u_input.b, Struct_1(u_input.b, arg_1.b, false, var_0.d))), _wgslsmith_add_i32(i32(-1i) * -var_0.d, firstLeadingBit(_wgslsmith_mult_i32(arg_1.b.x, arg_2.d)))), 1f, arg_1);
    let var_1 = Struct_1(arg_1.a, -(~vec4<i32>(u_input.a.x, -13595i, arg_1.d, arg_1.b.x >> (arg_2.a % 32u))), var_0.c, 1i);
    var var_2 = (select(abs(vec4<u32>(35668u, 15519u, 95150u, var_0.a)), max(firstTrailingBit(vec4<u32>(1u, 7388u, var_1.a, arg_2.a)), abs(vec4<u32>(u_input.b, 52822u, 1u, arg_2.a))), any(vec4<bool>(arg_0.x, arg_1.c, true, arg_0.x)) != arg_0.x) >> (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 26291u, var_0.a, 108084u)), vec4<u32>(16046u, var_1.a, 0u, var_1.a) ^ vec4<u32>(22029u, arg_1.a, 0u, 30073u)) % vec4<u32>(32u))) ^ ~min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 35717u, 25547u), vec4<u32>(1u, arg_2.a, arg_2.a, u_input.b)), _wgslsmith_add_u32(53207u, 0u), u_input.b, arg_2.a), abs(select(vec4<u32>(var_0.a, 50601u, arg_2.a, arg_1.a), vec4<u32>(u_input.b, 24105u, var_1.a, arg_2.a), vec4<bool>(true, false, true, false))));
    var var_3 = func_4(reverseBits(vec4<u32>(_wgslsmith_sub_u32(var_2.x, u_input.b), _wgslsmith_sub_u32(arg_1.a, arg_1.a), var_0.a, 60467u)) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, var_1.a, 0u, var_0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 55001u, 0u), vec4<u32>(u_input.b, 95988u, var_0.a, arg_2.a))), u_input.b, arg_2.a, var_1.a), func_4(reverseBits(vec4<u32>(_wgslsmith_mult_u32(218u, arg_1.a), ~arg_1.a, u_input.b >> (var_2.x % 32u), ~arg_2.a)), func_4(abs(select(vec4<u32>(60692u, 2665u, 19532u, 0u), vec4<u32>(u_input.b, 29693u, 0u, 20179u), vec4<bool>(var_0.c, arg_2.c, false, false))), func_4(~vec4<u32>(14959u, var_0.a, var_0.a, 0u), Struct_1(18224u, vec4<i32>(var_0.d, var_1.b.x, arg_1.b.x, -28254i), var_0.c, var_1.b.x), _wgslsmith_f_op_f32(floor(1023f)), var_1), _wgslsmith_f_op_f32(f32(-1f) * -231f), func_4(vec4<u32>(313u, arg_2.a, arg_1.a, 9361u), func_4(vec4<u32>(5939u, arg_2.a, 51508u, arg_1.a), Struct_1(11005u, vec4<i32>(arg_1.b.x, 7505i, arg_2.d, var_0.d), arg_1.c, 15690i), -508f, var_1), _wgslsmith_div_f32(-2518f, -1204f), var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-319f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -365f))), var_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(f32(-1f) * -1292f))), _wgslsmith_f_op_f32(select(-331f, _wgslsmith_f_op_f32(f32(-1f) * -506f), any(vec4<bool>(arg_0.x, true, arg_0.x, false)))))), -295f, true)), Struct_1(~4294967295u, func_4(min(~vec4<u32>(34079u, 1u, var_0.a, 0u), abs(vec4<u32>(4294967295u, 51771u, var_2.x, arg_2.a))), arg_2, 1000f, func_4(~vec4<u32>(1u, 0u, var_1.a, 54663u), Struct_1(4294967295u, vec4<i32>(var_0.b.x, -2147483647i, var_0.d, var_1.d), arg_0.x, 11222i), 871f, func_4(vec4<u32>(var_2.x, 4294967295u, 1u, arg_1.a), Struct_1(var_1.a, var_1.b, true, var_0.d), -2060f, Struct_1(0u, vec4<i32>(0i, u_input.a.x, arg_2.d, var_1.d), true, 2147483647i)))).b, !(!(u_input.b <= 1u)), abs(var_1.b.x ^ reverseBits(u_input.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_f32(trunc(362f))), _wgslsmith_f_op_f32(221f * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-688f)))), 1105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, -1060f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1467f, 304f, -628f, 1049f)) - vec4<f32>(1391f, -774f, 1420f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(-313f + 713f), 1f, _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), Struct_1(u_input.b, vec4<i32>(-24895i, -1i, u_input.a.x, u_input.a.x), true, u_input.a.x), Struct_1(0u, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), false, u_input.a.x))), -303f), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, 1000f, 1000f, 795f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, -258f, 723f, -671f) - vec4<f32>(927f, -2080f, 882f, 281f)))));
    let var_1 = u_input.a;
    var var_2 = true;
    var_2 = func_3(func_4(select(~select(vec4<u32>(u_input.b, u_input.b, u_input.b, 92757u), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), false), vec4<u32>(u_input.b, ~u_input.b, u_input.b, ~u_input.b), !all(vec2<bool>(false, true))), Struct_1(1u, max(abs(vec4<i32>(u_input.a.x, u_input.a.x, 1567i, u_input.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_1.x, var_1.x), vec4<i32>(-5766i, 2147483647i, u_input.a.x, 1i))), true, abs(13991i)), _wgslsmith_f_op_f32(ceil(-146f)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), ~9950u), -(~vec4<i32>(-1i, 2147483647i, var_1.x, 2147483647i)), abs(89703u) >= select(62687u, 4294967295u, true), max(~var_1.x, var_1.x))), 30444u, 32205u, Struct_1(12880u, -(select(vec4<i32>(-42558i, 51008i, var_1.x, u_input.a.x), vec4<i32>(u_input.a.x, 54400i, 1i, u_input.a.x), false) << (vec4<u32>(34353u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), false, u_input.a.x)).x;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(max(-670f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -561f), var_0.x, 1u <= u_input.b)))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -724f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(sign(1043f)))), all(!vec3<bool>(true, func_3(Struct_1(18928u, vec4<i32>(var_1.x, 2147483647i, 7764i, 26477i), false, 35422i), 1u, u_input.b, Struct_1(4294967295u, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), true, 1i)).x, true)), u_input.a.x > 0i, any(vec3<bool>(true, true, true)));
    var_2 = var_3.x;
    let var_4 = func_4(~(~vec4<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, 4294967295u), func_2(vec4<f32>(var_0.x, 1902f, var_0.x, var_0.x)), 4294967295u)), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, ~1u, u_input.b, u_input.b), ~firstTrailingBit(vec4<u32>(0u, 1u, 0u, u_input.b)), abs(vec4<u32>(4294967295u, 52546u, 76901u, 1u))), Struct_1(u_input.b, vec4<i32>(var_1.x, var_1.x & 2147483647i, -1i, u_input.a.x), var_3.x, ~645i), var_0.x, func_4(vec4<u32>(31397u, 20276u, u_input.b, func_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 33598u), Struct_1(4294967295u, vec4<i32>(u_input.a.x, var_1.x, var_1.x, u_input.a.x), var_3.x, 2147483647i), var_0.x, Struct_1(4294967295u, vec4<i32>(0i, u_input.a.x, var_1.x, -1i), true, var_1.x)).a), func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 31697u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4651u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), func_4(vec4<u32>(u_input.b, 4294967295u, u_input.b, 8354u), Struct_1(19577u, vec4<i32>(1i, u_input.a.x, -1i, -8894i), false, 59492i), 456f, Struct_1(4294967295u, vec4<i32>(20366i, u_input.a.x, var_1.x, 2147483647i), false, -34612i)), 1000f, func_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 25326u), Struct_1(u_input.b, vec4<i32>(2990i, 1i, 48249i, var_1.x), var_3.x, var_1.x), var_0.x, Struct_1(u_input.b, vec4<i32>(var_1.x, -1i, 0i, var_1.x), var_3.x, 1i))), 240f, Struct_1(37049u, vec4<i32>(u_input.a.x, 7651i, 0i, 20823i), var_3.x, var_1.x))), 938f, func_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 30487u, u_input.b, u_input.b), vec4<u32>(45342u, func_4(vec4<u32>(4294967295u, u_input.b, 0u, 0u), Struct_1(57548u, vec4<i32>(u_input.a.x, 12704i, var_1.x, var_1.x), var_3.x, -2147483647i), 717f, Struct_1(u_input.b, vec4<i32>(-1263i, -42285i, 1i, 0i), var_3.x, 2147483647i)).a, ~4294967295u, ~42732u)), Struct_1(max(u_input.b, max(u_input.b, 39781u)), firstTrailingBit(min(vec4<i32>(2147483647i, -1i, u_input.a.x, var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, u_input.a.x))), false, ~reverseBits(u_input.a.x)), 932f, Struct_1(_wgslsmith_sub_u32(4294967295u, u_input.b) | _wgslsmith_mult_u32(u_input.b, u_input.b), -vec4<i32>(-8491i, var_1.x, var_1.x, 1i), func_4(vec4<u32>(1u, u_input.b, 65753u, 19311u), func_4(vec4<u32>(u_input.b, 34796u, 6147u, u_input.b), Struct_1(1u, vec4<i32>(var_1.x, var_1.x, -2147483647i, var_1.x), true, 2147483647i), var_0.x, Struct_1(u_input.b, vec4<i32>(-1i, var_1.x, 33147i, u_input.a.x), var_3.x, u_input.a.x)), _wgslsmith_f_op_f32(2641f + 257f), Struct_1(50037u, vec4<i32>(-9160i, 35391i, 0i, -27564i), true, 2115i)).c, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(min(vec2<u32>(u_input.b, var_4.a), vec2<u32>(var_4.a, var_4.a)) & reverseBits(vec2<u32>(var_4.a, var_4.a))) & vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_4.a, var_4.a), vec4<u32>(var_4.a, var_4.a, 77190u, 1u))), _wgslsmith_mult_u32(abs(1u), ~3363u)), var_0.zx);
}

