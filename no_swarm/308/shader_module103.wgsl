struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(29341i, 15688i, 1i, 2147483647i), vec4<i32>(1i, 2147483647i, 72670i, 0i), vec4<i32>(3157i, -24088i, 2147483647i, -7059i), vec4<i32>(-56879i, 12290i, -1i, 21694i), vec4<i32>(15555i, i32(-2147483648), -49476i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 2147483647i, -276i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<i32>, 6>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-386f)))));
    var_0 = _wgslsmith_f_op_f32(-1f);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1052f + _wgslsmith_f_op_f32(-1660f * _wgslsmith_div_f32(487f, -1085f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-406f)))), 933f))));
    global0 = array<vec4<i32>, 6>();
    return Struct_1(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_sub_i32(-19263i, -1i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> i32 {
    global0 = array<vec4<i32>, 6>();
    var var_0 = Struct_2(func_2(_wgslsmith_clamp_u32(arg_0.a.a, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_3, arg_0.a.a), ~arg_3), ~_wgslsmith_clamp_u32(arg_0.a.a, 4294967295u, arg_3)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, true))), true), func_2(~(~4294967295u), vec4<bool>(select(true, true, true), true, true, true), false), vec4<u32>(countOneBits(_wgslsmith_div_u32(arg_3, 4322u)) << (0u % 32u), ~(1u | ~arg_3), 21039u, arg_0.a.a), Struct_1(4294967295u, 1126f, arg_0.a.c));
    var_0 = Struct_2(func_2(~func_2(29829u, vec4<bool>(true, true, true, true), false).a, vec4<bool>(true, true, true, true), true), Struct_1(~_wgslsmith_mod_u32(arg_3, var_0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), -732f)), func_2(1u, vec4<bool>(true, true, true, true), true).c), var_0.c, func_2(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, var_0.d.a, 18969u), var_0.c.wwx), _wgslsmith_mod_u32(arg_3, 87075u)), var_0.a.a, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), !vec4<bool>(all(vec2<bool>(true, true)), true, arg_1.c.x >= 1i, false), true));
    let var_1 = arg_1;
    var var_2 = Struct_2(func_2(4294967295u, vec4<bool>(true, true, true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)))), false), func_2(31944u, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), true), select(~var_0.c, ~var_0.c, select(vec4<bool>(var_1.b > var_1.b, true, true, arg_0.a.a <= arg_3), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), Struct_1(8725u, 614f, abs(arg_1.c.x)));
    return ~0i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = 64893i;
    var var_1 = any(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, false))), !vec4<bool>(false, true, true, select(false, true, true)), true == any(vec4<bool>(true, true, true, true))));
    var var_2 = Struct_4(func_2(abs(0u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, false))), all(vec2<bool>(true, true))), true), -reverseBits(u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(845f * arg_1.b.b), -205f, _wgslsmith_f_op_f32(abs(arg_2.b))));
    let var_3 = (firstLeadingBit(~arg_1.c.x) & var_2.a.a) | ~arg_1.b.a;
    var var_4 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(14752u << (arg_1.d.a % 32u), var_3, arg_1.a.a, _wgslsmith_div_u32(1u, 1u)), _wgslsmith_clamp_vec4_u32(arg_1.c, arg_1.c, vec4<u32>(var_2.a.a, 4294967295u, 10609u, 3013u)) ^ firstTrailingBit(arg_1.c)), func_2(var_2.a.a ^ _wgslsmith_add_u32(arg_1.c.x, 18953u), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), all(vec3<bool>(true, true, true))).b, arg_0.x), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -576f), func_2(_wgslsmith_sub_u32(36508u, arg_1.d.a), vec4<bool>(true, true, false, true), all(vec2<bool>(true, false))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(368f * -146f), _wgslsmith_f_op_f32(min(-1038f, var_2.c.x))))));
    return arg_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<f32> {
    var var_0 = func_4(vec2<i32>(-1i, i32(-1i) * -3413i), Struct_2(Struct_1(_wgslsmith_div_u32(firstLeadingBit(4294967295u), firstTrailingBit(0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - _wgslsmith_f_op_f32(round(-1326f))), arg_1), func_2(~(~0u), !select(arg_0, arg_0, arg_0), true && any(vec4<bool>(false, arg_0.x, true, false))), vec4<u32>(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(1u), 30738u), _wgslsmith_mod_u32(6391u, 1u), countOneBits(1u)), Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, 105f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), -vec3<i32>(-23056i, u_input.a.x, arg_1)))), Struct_3(min(func_3(Struct_4(Struct_1(9002u, -446f, -1293i), arg_1, vec3<f32>(373f, -199f, 500f)), Struct_3(u_input.a.x, 272f, vec3<i32>(20217i, 0i, u_input.a.x)), reverseBits(2147483647i), ~50439u), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -779f), vec3<i32>(arg_1, -max(arg_1, u_input.a.x), abs(1i))));
    let var_1 = !(!select(vec2<bool>(any(arg_0.zyx), false), vec2<bool>(var_0.a > -2147483647i, false), select(arg_0.xy, vec2<bool>(true, true), arg_0.xw)));
    var_0 = Struct_3(-arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), 545f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(var_0.b - -532f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + var_0.b))), -vec3<i32>(u_input.a.x, 0i, u_input.a.x));
    global0 = array<vec4<i32>, 6>();
    var_0 = func_4(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.a) & vec2<i32>(var_0.c.x, var_0.c.x), u_input.a, _wgslsmith_div_vec2_i32(~var_0.c.zx, reverseBits(vec2<i32>(var_0.a, 2147483647i)))), Struct_2(func_2(46068u, vec4<bool>(true, arg_1 != 0i, var_0.b < 2333f, var_1.x), var_1.x), Struct_1(abs(countOneBits(0u)), -684f, func_3(Struct_4(Struct_1(1u, var_0.b, arg_1), -38009i, vec3<f32>(var_0.b, var_0.b, var_0.b)), func_4(vec2<i32>(-32268i, 6624i), Struct_2(Struct_1(9702u, var_0.b, arg_1), Struct_1(1u, var_0.b, -1i), vec4<u32>(4294967295u, 0u, 50044u, 4294967295u), Struct_1(4294967295u, -1035f, -10238i)), Struct_3(var_0.c.x, -785f, var_0.c)), 4713i, 1u)), ~abs(~vec4<u32>(1u, 26102u, 1u, 39093u)), Struct_1(~_wgslsmith_add_u32(4375u, 0u), 478f, ~(-27086i))), func_4(vec2<i32>(-1189i, arg_1) ^ (vec2<i32>(-56333i, arg_1) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_2(func_2(abs(1u), vec4<bool>(var_1.x, false, arg_0.x, false), -187f <= var_0.b), Struct_1(1u, _wgslsmith_f_op_f32(-var_0.b), 1i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 13013u, 1u), ~vec4<u32>(38189u, 4294967295u, 4294967295u, 1u), select(vec4<u32>(24849u, 0u, 1u, 54444u), vec4<u32>(52561u, 45629u, 48573u, 0u), true)), func_2(50819u, !vec4<bool>(false, var_1.x, true, true), !arg_0.x)), Struct_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2143f, 1301f)), reverseBits(~vec3<i32>(u_input.a.x, var_0.a, 8017i)))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1316f, 144f, var_0.b, 1352f) - vec4<f32>(-115f, -1095f, var_0.b, var_0.b)), vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, var_0.b, 760f, 227f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.b, 469f, 421f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, 1630f, 1000f, -1270f))))))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_4 {
    var var_0 = !select(all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), !(arg_2.x < arg_2.x), !all(vec2<bool>(true, false))) & true;
    let var_1 = u_input.a.x;
    var_0 = select(!all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), any(vec3<bool>(~var_1 != var_1, true, true)), abs(func_2(firstTrailingBit(arg_1.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), true).c) != var_1);
    var var_2 = ~(~(-(~vec2<i32>(u_input.a.x, var_1))));
    var var_3 = max(~arg_3, 4294967295u);
    return Struct_4(func_2(~4294967295u, vec4<bool>(true, true, true, true), true), func_2(_wgslsmith_mod_u32(select(arg_1.x, arg_1.x, false) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3, 21829u), vec3<u32>(arg_3, 0u, arg_3)) % 32u), ~arg_3), vec4<bool>(false, true, (var_1 < 33772i) != any(vec4<bool>(false, true, false, true)), true), true).c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -661f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0[_wgslsmith_index_u32(1u, 6u)], ~abs(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 462u), vec2<u32>(68343u, 1756u)), ~vec2<u32>(1u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, true, true), u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(523f, 271f, 187f, 1077f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-995f, 429f, 1428f, -1617f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-329f, _wgslsmith_div_f32(-433f, -171f), _wgslsmith_f_op_f32(round(393f)), _wgslsmith_f_op_f32(-681f * -530f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 29534u, 4294967295u), vec4<u32>(98126u, 4294967295u, 49733u, 60143u)), ~1u, 3209u) & vec3<u32>(1u, 1u, 1u), ~vec3<u32>(16636u, countOneBits(53325u), max(1749u, 4294967295u))));
    var var_1 = var_0.a.b;
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.b);
    var var_3 = var_0.a;
    var var_4 = Struct_2(var_0.a, var_0.a, (~vec4<u32>(1u, 4294967295u, 29252u, var_0.a.a) | abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.a.a, 4294967295u, 1752u), vec4<u32>(29831u, 1u, var_0.a.a, var_3.a)))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a.a, 1u, 23869u), firstTrailingBit(vec4<u32>(4294967295u, 62063u, var_0.a.a, var_0.a.a))) % vec4<u32>(32u)), Struct_1(firstLeadingBit(var_3.a) >> ((var_3.a & 0u) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-669f))), _wgslsmith_add_i32(var_0.a.c ^ _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(9166u, 6u)]), u_input.a.x)));
    var var_5 = var_4.c.zz;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-402f + var_0.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2219f + var_3.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1373f - var_4.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1072f)))), 334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -860f))))));
    let var_7 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_6.wz - var_6.zy) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(638f, var_0.a.b))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-720i, var_7.x);
}

