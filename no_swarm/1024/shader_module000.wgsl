struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(0i, u_input.a, u_input.a) | -32042i, -2843i), -(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, -10823i), vec4<i32>(-2147483647i, 2147483647i, -36200i, -13842i))) ^ abs(vec4<i32>(-1i, u_input.a, u_input.a, 10746i) | vec4<i32>(41213i, u_input.a, -1i, -13908i))));
    var_0 = reverseBits(u_input.a >> (u_input.b % 32u));
    var var_1 = ~69538u;
    let var_2 = 4294967295u;
    let var_3 = Struct_3(~4294967295u, Struct_2(u_input.b, select(vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -15541i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), -2147483647i, u_input.a), vec4<i32>(-u_input.a, abs(2147483647i), -1i, u_input.a), true), Struct_1(all(vec2<bool>(false, false)) || any(vec2<bool>(true, false)), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(ceil(-1075f)), Struct_2(~37426u, vec4<i32>(~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a), countOneBits(16224i)) >> ((~vec4<u32>(19290u, var_2, var_2, var_2) & (vec4<u32>(50486u, 3558u, 48057u, u_input.b) << (vec4<u32>(u_input.b, var_2, u_input.b, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)), Struct_1(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(926f, 737f, 306f), vec3<f32>(1162f, -1000f, 745f)) * _wgslsmith_div_vec3_f32(vec3<f32>(861f, -1887f, -1000f), vec3<f32>(572f, 2163f, -1219f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1410f, 1000f, 1853f) - vec3<f32>(2520f, -1000f, 1167f))))));
    return _wgslsmith_mod_i32(~(~(-u_input.a)), select(u_input.a, abs(-1i), all(vec3<bool>(var_3.b.c.a, false, true)))) | u_input.a;
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = arg_0.b.c.a;
    var_0 = true;
    global0 = _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.b.b.wxw), firstTrailingBit(countOneBits(vec3<i32>(2147483647i, arg_0.d.c.b, u_input.a)))) | (-func_3() & -13794i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.b.d.yy)));
    var var_2 = vec4<bool>(true, true | arg_0.d.c.a, any(!(!(!vec2<bool>(false, arg_0.d.c.a)))), !(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.d.b.x, 2147483647i), _wgslsmith_mod_i32(arg_0.b.b.x, -1055i)) > (arg_0.b.c.b << ((u_input.b | arg_0.a) % 32u))));
    return !select(select(select(vec2<bool>(false, arg_0.d.c.a), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, true)), !vec2<bool>(false, arg_0.d.c.a), all(!vec3<bool>(false, arg_0.b.c.a, arg_0.d.c.a))), vec2<bool>(var_2.x, false), false);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    return Struct_2(~1u, ~_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(2147483647i), func_3(), arg_3.d.c.b, abs(u_input.a)), arg_3.d.b), arg_3.b.c, arg_3.b.d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = -_wgslsmith_div_i32(59128i, arg_1.d.c.b) << (4294967295u % 32u);
    var_0 = 1i;
    let var_1 = arg_1.b;
    let var_2 = Struct_4(~_wgslsmith_sub_u32(var_1.a, ~65303u), u_input.a, ~(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, 42286u), vec3<u32>(4294967295u, 109745u, 4294967295u)))));
    let var_3 = !arg_0.b.c.a;
    return select(select(!select(!vec4<bool>(var_1.c.a, false, true, var_1.c.a), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_1.d.c.a, arg_1.d.c.a, false, true), arg_0.d.c.a), var_1.c.a), vec4<bool>(true, var_3, arg_1.b.c.a, true), any(select(select(vec4<bool>(false, var_3, false, false), vec4<bool>(false, var_1.c.a, var_1.c.a, arg_0.d.c.a), true), vec4<bool>(arg_1.b.c.a, true, arg_1.d.c.a, var_1.c.a), any(vec3<bool>(true, arg_1.b.c.a, arg_1.b.c.a))))), !vec4<bool>(true, true, arg_1.b.c.a, arg_0.b.c.a), select(select(!select(vec4<bool>(true, false, arg_1.b.c.a, false), vec4<bool>(arg_0.b.c.a, arg_0.d.c.a, arg_1.d.c.a, arg_1.d.c.a), vec4<bool>(var_1.c.a, true, false, true)), select(select(vec4<bool>(false, false, true, var_3), vec4<bool>(var_1.c.a, true, false, true), vec4<bool>(arg_1.d.c.a, var_1.c.a, false, true)), select(vec4<bool>(false, var_3, arg_1.b.c.a, false), vec4<bool>(var_3, var_3, false, true), true), true), false), vec4<bool>(!arg_0.d.c.a & (arg_1.b.a < var_1.a), _wgslsmith_f_op_f32(max(arg_1.c, var_1.d.x)) < 943f, false, all(select(vec3<bool>(true, arg_0.d.c.a, false), vec3<bool>(var_1.c.a, arg_0.b.c.a, var_1.c.a), true))), vec4<bool>(false, !arg_1.d.c.a, true || (20225u >= var_2.a), arg_0.d.c.a)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_5(Struct_3(_wgslsmith_sub_u32(~(~u_input.b), ~(7601u | u_input.b)), func_4(false, select(vec2<bool>(true, false), func_2(Struct_3(3758u, Struct_2(4294967295u, vec4<i32>(1i, u_input.a, u_input.a, -1i), Struct_1(true, u_input.a), vec3<f32>(-654f, 935f, -818f)), -1251f, Struct_2(u_input.b, vec4<i32>(arg_0.x, 8969i, u_input.a, u_input.a), Struct_1(false, 12270i), vec3<f32>(1242f, -1911f, 1000f)))), vec2<bool>(true, true)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 34308u), ~vec2<u32>(4294967295u, u_input.b)), Struct_3(~u_input.b, Struct_2(1u, vec4<i32>(arg_0.x, 36130i, arg_0.x, -1i), Struct_1(false, arg_0.x), vec3<f32>(-1000f, -1000f, 1176f)), 305f, Struct_2(4294967295u, vec4<i32>(u_input.a, -1i, arg_0.x, u_input.a), Struct_1(true, arg_0.x), vec3<f32>(-1000f, 141f, 1924f)))), -662f, Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(15242u, 66638u), vec2<u32>(u_input.b, 0u)) & firstLeadingBit(0u), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, arg_0.x, arg_0.x, -2508i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.a, u_input.a, 1i), vec4<i32>(0i, 4571i, -2147483647i, u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, -15836i, arg_0.x, u_input.a))), func_4(u_input.b <= 1u, func_2(Struct_3(u_input.b, Struct_2(u_input.b, vec4<i32>(-29258i, u_input.a, -11942i, -13239i), Struct_1(true, arg_0.x), vec3<f32>(649f, 735f, -570f)), 581f, Struct_2(u_input.b, vec4<i32>(13126i, 0i, 0i, u_input.a), Struct_1(true, 11253i), vec3<f32>(-251f, 341f, 156f)))), abs(vec2<u32>(u_input.b, u_input.b)), Struct_3(1u, Struct_2(18180u, vec4<i32>(-261i, -2147483647i, u_input.a, u_input.a), Struct_1(true, arg_0.x), vec3<f32>(-1079f, 876f, -1000f)), -144f, Struct_2(25117u, vec4<i32>(arg_0.x, 0i, arg_0.x, arg_0.x), Struct_1(true, arg_0.x), vec3<f32>(-350f, -1256f, -1007f)))).c, vec3<f32>(-1386f, -759f, _wgslsmith_f_op_f32(f32(-1f) * -1467f)))), Struct_3(u_input.b, Struct_2(abs(select(14909u, 4294967295u, true)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, -1i, 1i, 1i), vec4<i32>(u_input.a, -2147483647i, 32576i, arg_0.x), true), ~vec4<i32>(arg_0.x, 1i, arg_0.x, -1i)), func_4(true, func_2(Struct_3(1u, Struct_2(u_input.b, vec4<i32>(-1i, 0i, arg_0.x, -5004i), Struct_1(false, u_input.a), vec3<f32>(-417f, 299f, -961f)), -846f, Struct_2(2255u, vec4<i32>(-1i, -2147483647i, 1i, arg_0.x), Struct_1(false, 1i), vec3<f32>(-1640f, 2045f, 1038f)))), vec2<u32>(1u, 1u), Struct_3(u_input.b, Struct_2(u_input.b, vec4<i32>(u_input.a, 41743i, arg_0.x, arg_0.x), Struct_1(true, arg_0.x), vec3<f32>(886f, -1962f, -2263f)), -766f, Struct_2(u_input.b, vec4<i32>(2732i, 0i, u_input.a, arg_0.x), Struct_1(true, 30844i), vec3<f32>(548f, 995f, -253f)))).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, -1014f, 1000f)) * vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f))), Struct_2(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(16685i, 2809i, arg_0.x, u_input.a) << (vec4<u32>(17859u, 38648u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(arg_0.x, arg_0.x, u_input.a, arg_0.x) ^ vec4<i32>(9131i, arg_0.x, arg_0.x, -25282i), abs(vec4<i32>(u_input.a, arg_0.x, 35745i, 1i))), Struct_1(true, min(u_input.a, arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(270f + -243f), _wgslsmith_f_op_f32(-223f + 447f), _wgslsmith_f_op_f32(round(137f))))));
    var_0 = select(!(!select(func_5(Struct_3(u_input.b, Struct_2(u_input.b, vec4<i32>(arg_0.x, 2459i, -8317i, arg_0.x), Struct_1(var_0.x, u_input.a), vec3<f32>(1000f, -1000f, -1000f)), -401f, Struct_2(u_input.b, vec4<i32>(u_input.a, arg_0.x, -2147483647i, 2147483647i), Struct_1(false, -1i), vec3<f32>(420f, 290f, -438f))), Struct_3(u_input.b, Struct_2(6300u, vec4<i32>(arg_0.x, u_input.a, 0i, 1i), Struct_1(var_0.x, arg_0.x), vec3<f32>(-1165f, -1145f, -522f)), 463f, Struct_2(u_input.b, vec4<i32>(u_input.a, -1i, -46697i, 2147483647i), Struct_1(false, -1i), vec3<f32>(-317f, -425f, -246f)))), func_5(Struct_3(37114u, Struct_2(u_input.b, vec4<i32>(27309i, arg_0.x, -1290i, u_input.a), Struct_1(true, 1i), vec3<f32>(-1000f, -796f, 1511f)), 2197f, Struct_2(0u, vec4<i32>(1i, 2147483647i, u_input.a, 0i), Struct_1(false, u_input.a), vec3<f32>(-1580f, -454f, -736f))), Struct_3(3496u, Struct_2(4610u, vec4<i32>(-34062i, -49304i, -2147483647i, -54597i), Struct_1(false, 2147483647i), vec3<f32>(469f, 1306f, 1029f)), 694f, Struct_2(u_input.b, vec4<i32>(2147483647i, 2147483647i, -1i, -2147483647i), Struct_1(var_0.x, -2147483647i), vec3<f32>(-168f, -462f, 650f)))), func_5(Struct_3(1u, Struct_2(19680u, vec4<i32>(u_input.a, u_input.a, -4153i, 67084i), Struct_1(var_0.x, u_input.a), vec3<f32>(1677f, -279f, 520f)), 743f, Struct_2(24084u, vec4<i32>(-32304i, -1i, arg_0.x, 70669i), Struct_1(var_0.x, 0i), vec3<f32>(-206f, -1445f, 1000f))), Struct_3(u_input.b, Struct_2(49200u, vec4<i32>(6281i, 0i, 0i, -1i), Struct_1(var_0.x, arg_0.x), vec3<f32>(-1898f, 1000f, 866f)), -2162f, Struct_2(3519u, vec4<i32>(2147483647i, 2147483647i, arg_0.x, arg_0.x), Struct_1(false, arg_0.x), vec3<f32>(1141f, 987f, -2176f)))))), vec4<bool>(true || (true && any(var_0.zwy)), var_0.x, true, func_2(Struct_3(u_input.b, Struct_2(u_input.b, vec4<i32>(arg_0.x, -5432i, -1i, u_input.a), Struct_1(var_0.x, u_input.a), vec3<f32>(-2262f, -1408f, -1966f)), -1000f, Struct_2(0u, vec4<i32>(-13138i, u_input.a, arg_0.x, -21914i), Struct_1(var_0.x, 9356i), vec3<f32>(-1513f, 2335f, -319f)))).x), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true)), vec4<bool>(arg_0.x < u_input.a, true, any(var_0.zz), false), !select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, true, true), true)), !func_5(Struct_3(4294967295u, Struct_2(16910u, vec4<i32>(arg_0.x, u_input.a, -1i, 45554i), Struct_1(var_0.x, 1i), vec3<f32>(1795f, 1296f, -652f)), -895f, Struct_2(7807u, vec4<i32>(10209i, arg_0.x, arg_0.x, 46570i), Struct_1(true, u_input.a), vec3<f32>(-1000f, -547f, 722f))), Struct_3(u_input.b, Struct_2(6490u, vec4<i32>(u_input.a, u_input.a, -49233i, 0i), Struct_1(true, -1i), vec3<f32>(1157f, 352f, -655f)), -1000f, Struct_2(u_input.b, vec4<i32>(-2147483647i, -24436i, u_input.a, 31882i), Struct_1(false, arg_0.x), vec3<f32>(406f, -680f, -294f)))), true));
    var var_1 = select((reverseBits(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 4294967295u), vec4<u32>(2484u, u_input.b, 4294967295u, 40030u)), select(u_input.b, 3420u, true), u_input.b, _wgslsmith_sub_u32(1u, u_input.b))) >> (_wgslsmith_add_vec4_u32(abs(~vec4<u32>(u_input.b, u_input.b, 1634u, u_input.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(9236u, 35056u, 8243u, u_input.b) | vec4<u32>(4294967295u, 1u, u_input.b, 1u))) % vec4<u32>(32u)), ~firstLeadingBit(abs(min(vec4<u32>(0u, 18842u, 8905u, u_input.b), vec4<u32>(1u, 70797u, 11161u, u_input.b)))), false);
    let var_2 = arg_0.yz;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f - 1392f))))), 349f);
    return Struct_2(var_1.x, _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, -1i, -8722i), _wgslsmith_sub_vec4_i32(vec4<i32>(30052i, 41249i, u_input.a, var_2.x), vec4<i32>(8164i, u_input.a, var_2.x, arg_0.x))), (vec4<i32>(-70555i, -2147483647i, -1i, 0i) | select(vec4<i32>(1i, u_input.a, arg_0.x, arg_0.x), vec4<i32>(0i, 0i, -1i, u_input.a), vec4<bool>(true, var_0.x, var_0.x, true))) & firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, -21989i))), Struct_1(true, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1580f, _wgslsmith_f_op_f32(-509f * var_3.x), var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_1(vec3<i32>(i32(-1i) * -2147483647i, ~1i, firstTrailingBit(~(-53580i) >> (u_input.b % 32u))));
    var var_2 = all(vec3<bool>(false, true | var_1.c.a, var_1.c.a == !(!var_1.c.a)));
    let var_3 = func_4(var_1.c.a, !(!vec2<bool>(false, !var_1.c.a)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(35611u, u_input.b), vec2<u32>(100571u, u_input.b))) | vec2<u32>(var_1.a >> (3864u % 32u), ~(var_1.a << (39823u % 32u))), Struct_3(9718u, Struct_2(u_input.b, max(vec4<i32>(var_1.b.x, 1i, u_input.a, var_0), vec4<i32>(var_0, -2147483647i, -2147483647i, -1i)), Struct_1(true, u_input.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.d + var_1.d)))), var_1.d.x, Struct_2(1u, ~reverseBits(vec4<i32>(var_0, 108512i, var_1.b.x, -2147483647i)), func_1(vec3<i32>(var_1.c.b, u_input.a, u_input.a)).c, _wgslsmith_f_op_vec3_f32(-var_1.d)))).c;
    var_2 = any(vec4<bool>(var_1.c.a, firstLeadingBit(var_1.b.x) > 2147483647i, select(true, !(u_input.b > 12690u), true), true & func_2(Struct_3(1u, Struct_2(u_input.b, vec4<i32>(-1i, -2147483647i, var_3.b, 23722i), var_1.c, var_1.d), 711f, Struct_2(4294967295u, var_1.b, var_3, var_1.d))).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-625f, var_1.d.x, _wgslsmith_f_op_f32(-2391f + var_1.d.x)));
}

