struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(1636f, vec2<bool>(false, false), vec4<i32>(11100i, 2819i, 12659i, 17827i), 4294967295u), Struct_1(1036f, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 0i, -48739i, 30370i), 28669u), Struct_1(1000f, vec2<bool>(false, true), vec4<i32>(-37676i, 7075i, 1683i, -1i), 1u));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1000f, vec3<f32>(-1238f, -1293f, -1382f), Struct_1(1678f, vec2<bool>(false, false), vec4<i32>(-1i, 0i, -44788i, -9274i), 0u), Struct_1(638f, vec2<bool>(false, true), vec4<i32>(2147483647i, -1i, 91583i, -9615i), 0u)), Struct_2(195f, vec3<f32>(659f, 123f, 1375f), Struct_1(728f, vec2<bool>(true, true), vec4<i32>(40200i, -31226i, 1i, -12045i), 1u), Struct_1(165f, vec2<bool>(false, true), vec4<i32>(12715i, 77734i, -14696i, -1i), 0u)), Struct_2(1272f, vec3<f32>(787f, 1000f, -1000f), Struct_1(777f, vec2<bool>(false, false), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), 4294967295u), Struct_1(-395f, vec2<bool>(false, false), vec4<i32>(0i, 1i, -1719i, 2147483647i), 1u)), Struct_2(-575f, vec3<f32>(-224f, 1729f, -253f), Struct_1(1691f, vec2<bool>(false, true), vec4<i32>(0i, 12222i, 6043i, 20887i), 4294967295u), Struct_1(1334f, vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -31270i, -1i, 2147483647i), 1u)), Struct_2(-912f, vec3<f32>(1537f, 638f, -630f), Struct_1(1000f, vec2<bool>(false, false), vec4<i32>(2147483647i, 60451i, -16095i, i32(-2147483648)), 4294967295u), Struct_1(-1390f, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), -22125i, -7012i, i32(-2147483648)), 1u)), Struct_2(-692f, vec3<f32>(313f, 1126f, -1896f), Struct_1(-435f, vec2<bool>(true, false), vec4<i32>(2147483647i, 2147483647i, 1i, 0i), 4294967295u), Struct_1(370f, vec2<bool>(true, false), vec4<i32>(-11982i, 2147483647i, i32(-2147483648), -10326i), 1u)), Struct_2(1585f, vec3<f32>(-601f, -851f, -451f), Struct_1(1386f, vec2<bool>(true, false), vec4<i32>(2147483647i, 0i, 1i, 2977i), 32655u), Struct_1(2258f, vec2<bool>(true, false), vec4<i32>(1i, 0i, 0i, 46746i), 118633u)), Struct_2(1060f, vec3<f32>(-2228f, -940f, 120f), Struct_1(370f, vec2<bool>(false, false), vec4<i32>(20958i, 18529i, 0i, -1i), 70863u), Struct_1(976f, vec2<bool>(false, true), vec4<i32>(1i, 0i, -1i, -30354i), 1u)), Struct_2(326f, vec3<f32>(-1000f, 745f, 1493f), Struct_1(657f, vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 0i), 17787u), Struct_1(388f, vec2<bool>(true, false), vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), 7110u)), Struct_2(191f, vec3<f32>(-539f, -1646f, 911f), Struct_1(-804f, vec2<bool>(false, false), vec4<i32>(21493i, 34367i, i32(-2147483648), 30481i), 1u), Struct_1(358f, vec2<bool>(true, false), vec4<i32>(0i, -15950i, -7388i, -51811i), 42160u)), Struct_2(-1000f, vec3<f32>(-924f, 789f, 195f), Struct_1(-640f, vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -10527i, -15993i, 2005i), 48236u), Struct_1(1148f, vec2<bool>(false, true), vec4<i32>(1i, 2147483647i, i32(-2147483648), i32(-2147483648)), 0u)), Struct_2(1062f, vec3<f32>(-191f, 264f, 607f), Struct_1(1002f, vec2<bool>(true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -41751i), 1u), Struct_1(-619f, vec2<bool>(false, true), vec4<i32>(-5701i, -25245i, -1i, -1i), 1u)), Struct_2(-638f, vec3<f32>(721f, 476f, 1780f), Struct_1(235f, vec2<bool>(true, false), vec4<i32>(1i, i32(-2147483648), 2147483647i, i32(-2147483648)), 0u), Struct_1(-1484f, vec2<bool>(false, false), vec4<i32>(0i, -1i, 24997i, i32(-2147483648)), 32255u)), Struct_2(549f, vec3<f32>(-1400f, -782f, -1115f), Struct_1(1577f, vec2<bool>(true, false), vec4<i32>(2147483647i, -53354i, -43621i, 1i), 48093u), Struct_1(-321f, vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 0i, -1i, 45326i), 88619u)), Struct_2(-1126f, vec3<f32>(324f, 1185f, 186f), Struct_1(1000f, vec2<bool>(true, false), vec4<i32>(-9252i, 25393i, -48476i, 2147483647i), 0u), Struct_1(-1000f, vec2<bool>(true, true), vec4<i32>(3418i, -11490i, 0i, 2147483647i), 1u)), Struct_2(114f, vec3<f32>(-414f, -398f, 893f), Struct_1(-897f, vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 0i, -24790i, 0i), 1u), Struct_1(-240f, vec2<bool>(false, false), vec4<i32>(-1i, 42427i, i32(-2147483648), i32(-2147483648)), 4294967295u)), Struct_2(219f, vec3<f32>(380f, 464f, -462f), Struct_1(2242f, vec2<bool>(true, false), vec4<i32>(2147483647i, 52259i, -1i, 1i), 35592u), Struct_1(-1189f, vec2<bool>(true, true), vec4<i32>(2147483647i, i32(-2147483648), 13044i, 1i), 75969u)), Struct_2(-1598f, vec3<f32>(2347f, -198f, -1524f), Struct_1(-625f, vec2<bool>(true, true), vec4<i32>(0i, 2147483647i, 1i, 27649i), 46412u), Struct_1(-632f, vec2<bool>(false, true), vec4<i32>(0i, i32(-2147483648), 55139i, -38429i), 5766u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-300f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1047f)), -1816f, true)) + _wgslsmith_div_f32(-1000f, 474f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f * var_0)))))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), false != (u_input.a != u_input.b)), reverseBits(vec4<i32>(-1i, select(i32(-1i) * -7379i, ~(-12050i), true), u_input.a, -(~u_input.b))), 37089u);
    var var_2 = 1000f;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(round(-2172f))), !any(select(vec4<bool>(false, var_1.b.x, true, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, false, false))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1247f, -1243f, var_0))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, -808f)))))), global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(~0u, 3u)]);
    global0 = array<Struct_1, 3>();
    return vec2<u32>(min(~abs(~var_1.d), ~(~(~82055u))), _wgslsmith_sub_u32(~46916u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_3.d.d, var_1.d, var_3.c.d), vec4<u32>(var_3.c.d, var_3.c.d, var_1.d, 0u) ^ vec4<u32>(38043u, var_1.d, var_1.d, 0u)), (vec4<u32>(12758u, 48359u, 1u, var_1.d) & vec4<u32>(var_1.d, 1u, var_3.c.d, 0u)) & ~vec4<u32>(var_1.d, var_3.c.d, var_1.d, var_3.c.d))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(arg_1.c.c.x, ~select(~(~vec2<u32>(arg_1.d.d, arg_1.d.d)), ~vec2<u32>(1u, arg_1.d.d), arg_0), !(!any(arg_1.c.b)));
    var var_2 = Struct_3(i32(-1i) * -abs(1i), ~_wgslsmith_sub_vec2_u32(func_3(), abs(vec2<u32>(arg_1.c.d, 5371u)) >> (~var_1.b % vec2<u32>(32u))), any(select(!vec3<bool>(var_1.c, false, arg_1.d.b.x), vec3<bool>(false, true, all(vec4<bool>(arg_1.d.b.x, true, false, var_1.c))), !(!vec3<bool>(var_0, false, true)))));
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(4294967295u), var_1.b.x), 18u)];
    let var_4 = arg_1.b.xy;
    return _wgslsmith_add_u32(var_3.c.d, min(4294967295u, func_3().x)) & (~_wgslsmith_mod_u32(1u, var_2.b.x) | ~0u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(-_wgslsmith_mult_i32(26447i, arg_0.a), _wgslsmith_sub_i32(arg_1.c.x, firstLeadingBit(-2147483647i)), !arg_0.c), ~(-24715i), ~(_wgslsmith_dot_vec2_i32(arg_3.c.c.ww, vec2<i32>(arg_0.a, 0i)) << (select(arg_0.b.x, arg_3.b, false) % 32u))), -arg_1.c.x);
    let var_1 = arg_0.b.x;
    global1 = array<Struct_2, 18>();
    var var_2 = select(vec3<bool>(arg_1.b.x, arg_2, arg_1.c.x < 26064i), vec3<bool>(!(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, 41153i, arg_1.c.x), vec3<i32>(arg_1.c.x, 0i, arg_3.a.c.x)) < abs(12733i)), !all(select(vec3<bool>(arg_3.c.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(true, true, true), vec3<bool>(false, arg_2, false))), any(!arg_3.d)), vec3<bool>(true, true, true));
    var var_3 = true;
    return Struct_2(_wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -745f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(592f * arg_3.c.a), -162f)), 1087f, _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.c.a, -756f, 1307f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(523f, arg_1.a, 323f), vec3<f32>(-823f, 1696f, -739f))))))))), arg_1, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f), _wgslsmith_f_op_f32(min(arg_3.a.a, _wgslsmith_f_op_f32(arg_3.a.a - arg_3.a.a)))), arg_1.b, max(arg_1.c, select(arg_3.a.c << (vec4<u32>(arg_3.b, 1u, 16546u, 21451u) % vec4<u32>(32u)), vec4<i32>(0i, arg_3.c.c.x, arg_1.c.x, 3508i), all(vec2<bool>(false, arg_0.c)))), 4294967295u));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 3>();
    let var_0 = func_4(Struct_3(countOneBits(u_input.a), select(vec2<u32>(func_2(false, global1[_wgslsmith_index_u32(1u, 18u)], vec2<i32>(-1i, 0i)), _wgslsmith_div_u32(9889u, 6817u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(0u, 1u))), true), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1062f))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), vec4<i32>(1i >> (~4294967295u % 32u), u_input.b, -1i, _wgslsmith_div_i32(u_input.a, min(12527i, -1i))), countOneBits(~_wgslsmith_mult_u32(0u, 57985u))), !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), Struct_4(global0[_wgslsmith_index_u32(1u, 3u)], 1u, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -794f), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_add_vec4_i32(-vec4<i32>(25261i, 2147483647i, 38505i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, 15125i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a))), _wgslsmith_mult_u32(50471u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 15929u, 19744u), vec4<u32>(11230u, 32829u, 0u, 44737u)))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_1 = firstTrailingBit(var_0.d.c.yxx);
    return Struct_3(44672i >> (~select(var_0.c.d, abs(30755u), all(var_0.d.b)) % 32u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, var_0.c.d), vec2<u32>(30477u, var_0.d.d)), ~max(vec2<u32>(4294967295u, var_0.d.d), vec2<u32>(76171u, var_0.d.d))) & vec2<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 0u, var_0.d.d, 0u), vec4<u32>(1u, var_0.d.d, 4294967295u, 44385u)), ~vec4<u32>(var_0.d.d, var_0.c.d, 4294967295u, 1u)), 46228u), all(!(!select(var_0.d.b, var_0.d.b, false))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> u32 {
    let var_0 = select(vec4<bool>(!(arg_2.b.x <= reverseBits(12003u)), true, !func_4(Struct_3(arg_2.a, arg_2.b, true), Struct_1(arg_1.b.x, vec2<bool>(arg_0, false), vec4<i32>(6112i, arg_3, -23623i, -43102i), arg_2.b.x), arg_0, Struct_4(Struct_1(-331f, vec2<bool>(arg_1.c.b.x, true), vec4<i32>(22397i, -80157i, arg_3, arg_3), 0u), arg_2.b.x, Struct_1(497f, vec2<bool>(true, arg_0), vec4<i32>(45981i, 0i, arg_3, 2147483647i), 38877u), vec2<bool>(arg_1.d.b.x, false), false)).d.b.x && (-u_input.b < max(arg_1.c.c.x, arg_2.a)), !(-910f >= arg_1.a)), vec4<bool>(func_1().c, arg_0, false, any(vec3<bool>(true, false, true)) | !(arg_1.b.x == -1000f)), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1.d.b.x, arg_2.c, arg_2.c), vec3<bool>(true, arg_2.c, arg_0), false), !vec3<bool>(arg_1.d.b.x, arg_2.c, arg_2.c))));
    global0 = array<Struct_1, 3>();
    global1 = array<Struct_2, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(916f)), !vec2<bool>(any(select(arg_1.c.b, var_0.yx, vec2<bool>(var_0.x, arg_0))), false), vec4<i32>(i32(-1i) * -6996i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-26423i, 1i) >> ((arg_1.c.d << (49061u % 32u)) % 32u), 1i, arg_3), -2147483647i, arg_3), 447u);
    global1 = array<Struct_2, 18>();
    return 7964u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(max(15910u, 4294967295u), _wgslsmith_add_u32(1u, 114520u), ~18420u)), firstLeadingBit(vec3<u32>(1u, 1u, 1u))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6387u), vec2<u32>(83611u, _wgslsmith_add_u32(77247u, 1u))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, min(1u, 9600u), select(28588u, 4294967295u, false)), ~(~41971u), ~_wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_mod_u32(5241u, func_5(true, Struct_2(968f, vec3<f32>(556f, 1000f, -1440f), Struct_1(1022f, vec2<bool>(false, true), vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i), 16979u), Struct_1(124f, vec2<bool>(true, true), vec4<i32>(39681i, u_input.a, 0i, 40703i), 31800u)), func_1(), ~(-2147483647i)))));
    let var_1 = global1[_wgslsmith_index_u32(1u, 18u)];
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-32265i, _wgslsmith_div_vec2_u32(max(~abs(vec2<u32>(17896u, 49829u)), var_0.xx), _wgslsmith_sub_vec2_u32(var_0.xz, var_2.b << (var_0.xx % vec2<u32>(32u))) & var_0.zy));
}

