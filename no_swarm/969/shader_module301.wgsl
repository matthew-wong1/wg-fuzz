struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(25797i, 2147483647i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0.b.a), vec2<bool>(arg_0.a.a, arg_0.c.e.a), arg_0.b.a), vec2<bool>(true, arg_0.b.a), true), arg_0.a.a)));
    var_0 = Struct_1(any(vec4<bool>(true, var_0.a, arg_0.b.a, var_0.a)));
    var_0 = Struct_1(true);
    var var_1 = Struct_1(var_0.a != false);
    let var_2 = arg_0.c;
    return ~u_input.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: i32) -> Struct_4 {
    let var_0 = arg_0.zz;
    global0 = u_input.d;
    global0 = ~(~(reverseBits(u_input.d) ^ (-vec2<i32>(-27257i, -19723i) ^ vec2<i32>(-32021i, arg_3))));
    let var_1 = Struct_4(Struct_1(true), Struct_1(!var_0.x), Struct_3(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(40234i, global0.x, global0.x), 1i), u_input.d.x), -1i, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_4(Struct_1(var_0.x), Struct_1(arg_0.x), Struct_3(global0.x, -51360i, u_input.a.x, Struct_2(vec3<u32>(arg_2, 54300u, 86074u)), Struct_1(var_0.x)), 12617i, vec4<f32>(782f, -133f, 458f, 1452f)), arg_2, Struct_2(vec3<u32>(arg_2, u_input.c, 8672u))), u_input.a), 92893u), Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, arg_1, arg_2), vec3<u32>(49216u, arg_1, 0u))), Struct_1(!any(vec3<bool>(var_0.x, arg_0.x, true)))), global0.x & (u_input.d.x | _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -26508i, 48008i), vec3<i32>(arg_3, u_input.d.x, -1i)), select(8490i, 1i, arg_0.x), reverseBits(-44049i))), vec4<f32>(_wgslsmith_f_op_f32(-376f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-423f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 220f, -553f));
    global0 = vec2<i32>(_wgslsmith_div_i32(~global0.x, 59533i), _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.d.x, 12800i, -1i, 0i & var_1.d), ~reverseBits(vec4<i32>(-79742i, var_1.c.a, -63048i, 1i))) ^ ~3390i);
    return Struct_4(Struct_1(true), var_1.b, var_1.c, ~(-40608i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -643f), 599f, var_1.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -772f), var_1.e.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = func_2(!vec3<bool>(arg_1.c.e.a, false, all(vec3<bool>(true, var_0.a, arg_0)) && true), _wgslsmith_sub_u32(20199u, arg_1.c.d.a.x), 0u, arg_1.d).c.d;
    global0 = vec2<i32>(arg_1.d, ~func_2(select(vec3<bool>(true, arg_1.c.e.a, false), !vec3<bool>(false, arg_1.c.e.a, false), !arg_0), 19621u, arg_1.c.d.a.x, select(u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, global0.x, -66076i), arg_0 && var_0.a)).d);
    global0 = vec2<i32>(arg_1.c.a, ~2147483647i);
    global0 = _wgslsmith_clamp_vec2_i32(~u_input.d, -(~u_input.d), ~abs(u_input.d) >> ((min(~vec2<u32>(var_1.a.x, 5179u), ~vec2<u32>(25857u, 10788u)) ^ vec2<u32>(var_1.a.x & 4294967295u, 1u)) % vec2<u32>(32u)));
    return arg_1.e.x;
}

fn func_5(arg_0: bool, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_3(2147483647i, 0i, select(_wgslsmith_clamp_u32(u_input.a.x, 78736u, u_input.b), ~(~1u), arg_0 | arg_0), Struct_2(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)), vec3<u32>(42423u, 1u, u_input.a.x))), Struct_1(true));
    let var_1 = func_2(!vec3<bool>(any(vec3<bool>(var_0.e.a, false, false)) && var_0.e.a, true, arg_0), ~1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0.c, _wgslsmith_mod_u32(var_0.d.a.x, 1u))), ~u_input.a.x), ~_wgslsmith_mult_i32(-var_0.b, _wgslsmith_add_i32(var_0.b, -1i)) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.x, -34990i, -2147483647i, u_input.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 3546i, -6493i, -1i), vec4<i32>(30287i, var_0.b, 18565i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.e, -2147483647i, -2147483647i)), all(vec2<bool>(false, var_0.e.a))), -vec4<i32>(var_0.a, 0i, 31391i, u_input.e)));
    var var_2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(~_wgslsmith_clamp_i32(-1i, var_1.d, -67474i), countOneBits(u_input.e), var_0.a)), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -global0.x, ~42151i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, 2147483647i, u_input.d.x) & vec3<i32>(u_input.e, -2147483647i, global0.x), ~vec3<i32>(global0.x, var_1.d, -36991i))));
    global0 = u_input.d;
    var var_3 = u_input.e | -_wgslsmith_clamp_i32(var_1.d ^ 43213i, u_input.e, -var_1.d);
    return vec2<i32>(max(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-var_0.a, abs(-2147483647i)), var_1.d), ~var_0.a), var_1.c.b << (firstTrailingBit(4294967295u) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = ~func_5(arg_1.e.a, _wgslsmith_f_op_f32(func_4(!arg_1.e.a, func_2(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, false)), arg_1.d.a.x, ~0u, i32(-1i) * -29749i))));
    var var_0 = arg_1.d.a.xz;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1794f)), _wgslsmith_f_op_f32(ceil(-248f)), -614f, _wgslsmith_f_op_f32(-1000f - 1269f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1761f, 1135f, 991f, -1050f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-373f, 417f, 1522f, -748f), vec4<f32>(-310f, -1246f, 822f, 638f))))) - vec4<f32>(502f, _wgslsmith_f_op_f32(-443f + -233f), _wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(f32(-1f) * -1117f)))));
    var var_2 = ~(~var_0.x);
    let var_3 = var_1.wxz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-472f - -206f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))) != _wgslsmith_f_op_f32(f32(-1f) * -1366f);
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = 45866u >= u_input.b;
    global0 = vec2<i32>(global0.x ^ -global0.x, u_input.e);
    var var_1 = u_input.e;
    let var_2 = !(u_input.e <= u_input.e);
    let var_3 = Struct_4(Struct_1(arg_0.x), func_2(!arg_0.zzz, func_2(arg_0.wzw, _wgslsmith_dot_vec4_u32(vec4<u32>(8393u, u_input.c, u_input.b, 1u), vec4<u32>(u_input.c, 74001u, 0u, u_input.b)), u_input.c, firstLeadingBit(global0.x)).c.c | 49879u, abs(_wgslsmith_sub_u32(u_input.a.x, u_input.c)) << (abs(u_input.b) % 32u), _wgslsmith_mod_i32(-4595i, 32000i)).b, func_2(!(!select(vec3<bool>(true, var_2, arg_0.x), arg_0.xwz, arg_0.zxz)), _wgslsmith_mod_u32(48693u, 4294967295u | ~u_input.c), u_input.c, global0.x).c, _wgslsmith_add_i32(24620i, ~(-_wgslsmith_add_i32(u_input.e, u_input.d.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(635f, _wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_f_op_f32(trunc(1613f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1270f)) + _wgslsmith_f_op_f32(124f * 719f)), _wgslsmith_f_op_f32(min(684f, -2077f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(-1022f)), -1996f, _wgslsmith_f_op_f32(152f * -1351f), -378f))))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), func_6(select(vec4<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(func_1(Struct_1(true), Struct_3(24174i, -1i, 55753u, Struct_2(vec3<u32>(u_input.c, 40159u, u_input.a.x)), Struct_1(true))), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, true, true))))), func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), 30648u, 0u, func_5(!all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-595f * 888f)))).x).c, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(31150i ^ global0.x, ~u_input.e, abs(18472i)), vec3<i32>(min(u_input.e, 34232i), -1482i, -global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-432f, -204f, 1354f, 167f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -603f, 303f, 1000f)), vec4<f32>(124f, -335f, 673f, -1271f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(369f + 684f), _wgslsmith_f_op_f32(round(-840f)), _wgslsmith_f_op_f32(max(-1974f, -102f)), -654f)))));
    let var_1 = ~countOneBits(~(vec4<u32>(26286u, var_0.c.c, 49679u, u_input.c) >> (firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.c)) % vec4<u32>(32u))));
    let var_2 = ~(-vec4<i32>(-1i, _wgslsmith_mult_i32(-u_input.d.x, 1i), 0i, u_input.e));
    global0 = var_2.yz;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, 630f)))))), var_0.e.x);
    let var_4 = Struct_2(var_1.zzx);
    let var_5 = !vec3<bool>(true, false, !var_0.c.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(vec3<bool>(func_2(vec3<bool>(var_0.c.e.a, false, false), u_input.c, 1u, var_2.x).b.a, false, var_5.x), 4294967295u, 0u, global0.x).e.x + -2072f), vec2<f32>(_wgslsmith_f_op_f32(max(-606f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -158f) + var_0.e.x))), var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.x))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, var_2.x & _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(global0.x, var_0.d, -2147483647i, -5538i))), -2147483647i, var_2.x, countOneBits(firstTrailingBit(~u_input.e))), vec2<u32>(_wgslsmith_mod_u32(27494u, ~var_0.c.c | 2887u), ~(~1u)));
}

