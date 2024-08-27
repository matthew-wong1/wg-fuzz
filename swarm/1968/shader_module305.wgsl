struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1119f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-681f, -240f)) - _wgslsmith_f_op_f32(trunc(1711f))), _wgslsmith_f_op_f32(-1160f - 1153f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 722f, arg_0)) + _wgslsmith_f_op_f32(step(-1722f, -848f))))), -197f);
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(exp2(var_0.b))) * _wgslsmith_f_op_f32(select(-2206f, 264f, arg_0 | arg_0)))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, var_0.b)), _wgslsmith_f_op_f32(639f * var_0.b)))), 1301f), Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 692f)))), u_input.c);
    let var_2 = ~(~u_input.b);
    let var_3 = var_1.c;
    var_1 = Struct_2(var_1.c, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2307f, -1409f, -1299f, -438f), _wgslsmith_f_op_vec4_f32(-var_1.b.a))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(var_0.a.x - var_1.a.a.x), var_3.b), true)), _wgslsmith_f_op_f32(trunc(-609f))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(var_1.c.a, _wgslsmith_f_op_vec4_f32(-var_0.a))))), var_3.b), -2147483647i);
    return var_0.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> vec3<i32> {
    var var_0 = ~arg_0.wxw;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1264f, 391f, -1909f, 175f) + _wgslsmith_div_vec4_f32(vec4<f32>(-148f, -1000f, -694f, -335f), vec4<f32>(-899f, -2047f, -389f, 885f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 154f, 441f, -901f), vec4<f32>(-260f, 340f, -802f, -1969f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1805f)) + -477f)))));
    var var_2 = arg_0.x;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1496f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-var_1.a)))))), var_1.b);
    var var_3 = Struct_4(arg_1, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-1i, 9588i)), vec2<i32>(arg_0.x, min(arg_0.x, 0i))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(630f, -443f, var_1.a.x, 942f), vec4<f32>(-1133f, var_1.b, var_1.a.x, 2502f), vec4<bool>(arg_2, arg_2, false, arg_2))), _wgslsmith_f_op_f32(-var_1.b)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(false)), var_1.b), Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_1.a.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)), vec2<bool>(true && !arg_2, !(!arg_2)), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, 310f, var_1.a.x, 953f), var_1.a), vec4<f32>(-851f, var_1.a.x, var_1.b, 1000f))), var_1.a.x), reverseBits(4294967295u)));
    return arg_0.wwx;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = ~vec2<u32>(0u, 4294967295u);
    var var_1 = ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x) >> (vec4<u32>(1u, 79766u, 19827u, 8561u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(87045u, u_input.a.x), vec2<u32>(22111u, var_0.x)) & firstTrailingBit(79747u), ~max(58220u, 0u)), min(firstTrailingBit(u_input.d), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.d.x, 0u))));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, 1261f, -1654f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 260f, -212f)))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), vec3<f32>(-687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(882f)) - _wgslsmith_f_op_f32(f32(-1f) * -446f)), -1730f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = 4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.d.x, min(4294967295u, 4294967295u), u_input.a.x | 23726u), 10573u, max(countOneBits(4294967295u), ~u_input.d.x)), _wgslsmith_mod_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 9718u, u_input.b), ~vec3<u32>(u_input.b, 600u, u_input.d.x))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_1.b.a)), var_0.c.b), Struct_1(vec4<f32>(-1308f, 623f, -1301f, arg_0.x), 1f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.c.b, var_0.c.b, true)), arg_1.c.b, _wgslsmith_f_op_f32(abs(arg_1.a.a.x)), -1411f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, 0i, -19727i), vec3<i32>(0i, -2147483647i, arg_1.d)) ^ vec3<i32>(0i, -2147483647i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(-44169i, -2147483647i, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, u_input.c, -30299i), vec3<i32>(u_input.c, arg_1.d, -38890i)))), vec3<i32>(var_0.d, -(~var_0.d), ~(~31695i))));
    var var_2 = vec4<f32>(548f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.a.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))), -655f)), 1293f);
    var_2 = var_0.a.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(arg_3.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_2.x, arg_3.a.x, -1000f) + arg_1.a.a))))), _wgslsmith_f_op_f32(-var_2.x));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(Struct_2(func_5(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(u_input.c, -24101i), func_2(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), u_input.d.x, false))), Struct_2(Struct_1(vec4<f32>(904f, 1314f, -1749f, 716f), 1366f), Struct_1(vec4<f32>(1000f, -997f, -983f, 499f), 604f), Struct_1(vec4<f32>(249f, -178f, -1017f, -688f), -783f), _wgslsmith_sub_i32(u_input.c, 30587i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1497f, -1002f, 549f, 636f)), _wgslsmith_f_op_f32(min(1012f, 1245f)))), func_5(vec3<f32>(1f, 1f, 1f), Struct_2(func_5(vec3<f32>(1000f, -170f, 832f), Struct_2(Struct_1(vec4<f32>(-616f, 425f, -1000f, 2098f), 587f), Struct_1(vec4<f32>(1125f, 1544f, 1000f, 965f), 592f), Struct_1(vec4<f32>(362f, 1074f, -928f, 637f), -1422f), 1i), vec4<bool>(false, true, false, false), Struct_1(vec4<f32>(1000f, 2741f, -2256f, 759f), 1153f)), func_5(vec3<f32>(-150f, 683f, -365f), Struct_2(Struct_1(vec4<f32>(-341f, 229f, -1336f, 1463f), 436f), Struct_1(vec4<f32>(588f, -175f, -1000f, -2855f), 405f), Struct_1(vec4<f32>(-169f, 1056f, -1016f, 640f), 757f), -2147483647i), vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(-1817f, 363f, 301f, -591f), 1844f)), func_5(vec3<f32>(794f, -281f, -1170f), Struct_2(Struct_1(vec4<f32>(-342f, -817f, -368f, 194f), -865f), Struct_1(vec4<f32>(365f, 1612f, -746f, -976f), -1344f), Struct_1(vec4<f32>(-139f, 1024f, 160f, -863f), 1368f), -44182i), vec4<bool>(true, false, true, false), Struct_1(vec4<f32>(-131f, -227f, 559f, 1274f), -271f)), u_input.c), vec4<bool>(true, true, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true))), func_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-263f, -418f, -780f))), Struct_2(Struct_1(vec4<f32>(-816f, -1206f, -1184f, -699f), -886f), Struct_1(vec4<f32>(161f, 366f, -342f, -416f), 220f), Struct_1(vec4<f32>(418f, 1111f, -281f, 351f), -734f), 2147483647i), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), Struct_1(vec4<f32>(116f, 698f, 1770f, 191f), 1190f))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(func_5(vec3<f32>(603f, 806f, -756f), Struct_2(Struct_1(vec4<f32>(-1000f, 716f, -329f, -115f), 154f), Struct_1(vec4<f32>(-148f, -1203f, -1779f, -1667f), 623f), Struct_1(vec4<f32>(1486f, 169f, 643f, 1723f), -129f), 2147483647i), vec4<bool>(true, true, false, false), Struct_1(vec4<f32>(-457f, -1288f, 484f, 449f), -1000f)).a.x * 1f)), -22704i), vec4<f32>(347f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3(true)).x, -2008f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(200f)) - _wgslsmith_div_f32(-310f, -561f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(422f)), 634f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(u_input.c, -1i), vec3<i32>(19009i, 5805i, u_input.c))).x * _wgslsmith_f_op_f32(-1285f - -346f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(533f * -488f))))), vec2<bool>(true, all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), func_5(vec3<f32>(_wgslsmith_f_op_f32(-1812f * _wgslsmith_f_op_f32(max(163f, 281f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1205f)), -495f)), _wgslsmith_f_op_f32(-1041f + _wgslsmith_f_op_f32(f32(-1f) * -195f))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2792f, -149f, -431f, 967f)), _wgslsmith_f_op_f32(step(-478f, 441f))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, -1701f, -485f)), Struct_2(Struct_1(vec4<f32>(-144f, -381f, 918f, 309f), 910f), Struct_1(vec4<f32>(-722f, -1090f, 219f, -2421f), -751f), Struct_1(vec4<f32>(1313f, -1670f, -317f, 506f), 1214f), u_input.c), vec4<bool>(false, true, true, true), func_5(vec3<f32>(-1096f, -1974f, 1000f), Struct_2(Struct_1(vec4<f32>(-130f, -247f, -1059f, 401f), -698f), Struct_1(vec4<f32>(-1890f, -1392f, 1237f, 743f), -129f), Struct_1(vec4<f32>(-1304f, 1243f, -1315f, 138f), -1989f), -1i), vec4<bool>(false, false, false, false), Struct_1(vec4<f32>(225f, -1043f, -447f, -495f), -232f))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-371f, -412f, 922f, 1507f))), -1304f), -u_input.c), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), func_5(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(55914i, -48573i), vec3<i32>(u_input.c, u_input.c, -98i))), Struct_2(func_5(vec3<f32>(-324f, 815f, -125f), Struct_2(Struct_1(vec4<f32>(353f, -1052f, 792f, -697f), 1268f), Struct_1(vec4<f32>(-452f, 569f, 411f, -462f), -1701f), Struct_1(vec4<f32>(1324f, -1000f, -975f, -493f), -224f), u_input.c), vec4<bool>(false, true, false, true), Struct_1(vec4<f32>(788f, 345f, 215f, 1702f), 478f)), Struct_1(vec4<f32>(-2325f, 1090f, 271f, -1000f), -1466f), Struct_1(vec4<f32>(-584f, 195f, -362f, -471f), 1022f), ~u_input.c), vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, -450f, 523f, -356f) + vec4<f32>(-115f, -1063f, -404f, -267f)), -442f))), u_input.d.x);
    var_0 = Struct_3(Struct_2(var_0.a.b, func_5(var_0.a.b.a.xxz, var_0.a, !(!vec4<bool>(false, var_0.c.x, var_0.c.x, false)), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(2011f, var_0.a.b.a.x, -638f) - var_0.a.c.a.zxy), var_0.a, !vec4<bool>(false, false, true, var_0.c.x), func_5(vec3<f32>(var_0.a.b.b, -883f, var_0.b.x), var_0.a, vec4<bool>(true, var_0.c.x, false, true), Struct_1(vec4<f32>(-673f, 1000f, 750f, var_0.d.b), 1089f)))), var_0.a.c, -63435i), _wgslsmith_f_op_vec4_f32(var_0.d.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b, _wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_f_op_f32(exp2(var_0.d.b)), _wgslsmith_f_op_f32(select(var_0.a.c.b, 802f, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(round(var_0.a.a.a)))), vec2<bool>(true, true && var_0.c.x), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.a.zzw) + _wgslsmith_f_op_vec3_f32(-var_0.d.a.wzy)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a.x, 1000f, -903f) + _wgslsmith_f_op_vec3_f32(abs(var_0.d.a.yxx)))), var_0.a, vec4<bool>(!(var_0.d.b < var_0.a.a.b), any(vec2<bool>(true, var_0.c.x)), 49858u >= u_input.d.x, any(select(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, true, true, var_0.c.x), var_0.c.x))), var_0.d), ~8783u);
    var var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(~(var_0.a.d << (u_input.b % 32u)), -6722i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.a.d, var_0.a.d, 2147483647i), var_0.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, -14195i, var_0.a.d), vec4<i32>(47767i, -1i, 34958i, -39145i))), ~(-1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.c, -2147483647i, var_0.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d, u_input.c, 0i, var_0.a.d), vec4<i32>(-1i, var_0.a.d, -39523i, u_input.c))), ~countOneBits(vec4<i32>(var_0.a.d, u_input.c, var_0.a.d, var_0.a.d))));
    let var_2 = u_input.b;
    let var_3 = !(!var_0.c.x);
    return Struct_4(var_0.e, func_2(~(-min(vec4<i32>(var_1.x, -1i, u_input.c, var_0.a.d), vec4<i32>(var_0.a.d, u_input.c, -1i, var_1.x))), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1507u, 32418u), ~u_input.a.yww)), var_3).yz, Struct_3(Struct_2(func_5(vec3<f32>(var_0.b.x, var_0.d.a.x, var_0.a.c.b), var_0.a, vec4<bool>(var_0.c.x, var_0.c.x, true, false), func_5(vec3<f32>(var_0.a.a.a.x, 433f, 1328f), Struct_2(var_0.a.a, Struct_1(vec4<f32>(var_0.d.b, -1690f, var_0.d.a.x, 366f), var_0.d.a.x), Struct_1(vec4<f32>(570f, var_0.b.x, var_0.a.b.a.x, var_0.a.a.a.x), var_0.a.b.a.x), -771i), vec4<bool>(var_3, var_3, var_3, false), var_0.a.a)), Struct_1(var_0.a.c.a, _wgslsmith_f_op_f32(var_0.a.a.a.x - -423f)), func_5(vec3<f32>(var_0.d.a.x, var_0.b.x, var_0.b.x), Struct_2(var_0.d, var_0.a.c, var_0.a.c, var_1.x), !vec4<bool>(var_3, false, var_0.c.x, var_0.c.x), func_5(var_0.b.ywx, Struct_2(var_0.d, var_0.a.c, Struct_1(var_0.d.a, 1099f), 40784i), vec4<bool>(true, true, true, var_0.c.x), var_0.a.b)), _wgslsmith_clamp_i32(0i << (var_0.e % 32u), firstLeadingBit(-28394i), min(u_input.c, 31606i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.a.b.a, var_0.d.a)) * var_0.a.b.a)), var_0.c, func_5(var_0.d.a.yzw, Struct_2(Struct_1(vec4<f32>(-896f, 1358f, -200f, var_0.a.c.b), var_0.a.b.a.x), func_5(var_0.d.a.xzy, Struct_2(Struct_1(var_0.a.c.a, 1737f), Struct_1(vec4<f32>(-1373f, 1000f, 490f, -585f), 954f), var_0.a.c, 15428i), vec4<bool>(false, var_0.c.x, var_3, false), var_0.a.b), func_5(var_0.a.b.a.xzx, Struct_2(var_0.a.c, Struct_1(vec4<f32>(-2128f, -504f, -163f, var_0.a.c.a.x), var_0.d.b), var_0.d, 2147483647i), vec4<bool>(false, var_3, var_3, var_3), var_0.d), var_0.a.d), vec4<bool>(var_3 | true, !var_3, true, true), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a.c.a), _wgslsmith_f_op_f32(-var_0.a.b.b))), var_2 & abs(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = u_input.a.wx;
    var var_2 = Struct_1(func_1().c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(873f * var_0.c.b.x) - _wgslsmith_f_op_f32(589f - var_0.c.a.a.a.x)))));
    var_1 = ~(~u_input.a.zz);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), 1525f, -1617f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_2.a, var_2.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_5(var_2.a.wwx, Struct_2(Struct_1(var_2.a, -149f), Struct_1(var_2.a, -1605f), Struct_1(vec4<f32>(-1169f, var_0.c.a.c.b, var_0.c.b.x, var_0.c.a.c.a.x), var_2.a.x), -23809i), select(vec4<bool>(false, var_0.c.c.x, var_0.c.c.x, true), vec4<bool>(false, false, var_0.c.c.x, true), vec4<bool>(var_0.c.c.x, true, var_0.c.c.x, var_0.c.c.x)), Struct_1(var_2.a, var_0.c.b.x)).b)) - _wgslsmith_div_f32(var_0.c.b.x, var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(trunc(var_2.a))), -func_2(vec4<i32>(countOneBits(746i), u_input.c, ~(-16162i), u_input.c), var_1.x, select(true, all(vec3<bool>(var_0.c.c.x, false, var_0.c.c.x)), var_0.c.c.x)).x, _wgslsmith_f_op_vec2_f32(-func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1172f, var_2.b, 137f)), func_1().c.a, select(!vec4<bool>(var_0.c.c.x, true, var_0.c.c.x, var_0.c.c.x), vec4<bool>(true, var_0.c.c.x, var_0.c.c.x, false), all(vec2<bool>(false, false))), var_0.c.d).a.yy));
}

