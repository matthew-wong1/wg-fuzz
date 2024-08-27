struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec3<bool>(true, true, false), vec2<f32>(1073f, -958f), 4294967295u, vec2<f32>(-2245f, 1313f), vec2<i32>(29012i, 0i)), Struct_2(vec2<f32>(1768f, -422f), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1565f, -1000f), 1u, vec2<f32>(-1072f, 888f), vec2<i32>(i32(-2147483648), -1i))), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1057f, -1093f), 4294967295u, vec2<f32>(693f, -290f), vec2<i32>(66121i, 0i)), 4294967295u, Struct_2(vec2<f32>(-238f, -742f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(2226f, 244f), 1u, vec2<f32>(-3771f, 161f), vec2<i32>(3871i, -59575i)))), Struct_3(Struct_1(vec3<bool>(true, false, true), vec2<f32>(1309f, 186f), 99224u, vec2<f32>(1304f, 2805f), vec2<i32>(-49155i, 0i)), Struct_2(vec2<f32>(-1000f, 1653f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1869f, 151f), 0u, vec2<f32>(1037f, 345f), vec2<i32>(0i, 50523i))), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-832f, -147f), 0u, vec2<f32>(-867f, 156f), vec2<i32>(1i, -14988i)), 727u, Struct_2(vec2<f32>(-1403f, -593f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-199f, -147f), 1u, vec2<f32>(-1000f, -1000f), vec2<i32>(44020i, i32(-2147483648))))), Struct_3(Struct_1(vec3<bool>(false, true, true), vec2<f32>(-960f, -755f), 4294967295u, vec2<f32>(-1787f, 1074f), vec2<i32>(22654i, 1i)), Struct_2(vec2<f32>(873f, -169f), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-826f, 834f), 102891u, vec2<f32>(-1000f, 593f), vec2<i32>(2147483647i, 18766i))), Struct_1(vec3<bool>(true, false, false), vec2<f32>(-268f, 1727f), 86196u, vec2<f32>(-1082f, -1394f), vec2<i32>(-92083i, i32(-2147483648))), 43568u, Struct_2(vec2<f32>(535f, -627f), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1507f, -334f), 0u, vec2<f32>(-1771f, -103f), vec2<i32>(10645i, 0i)))), Struct_3(Struct_1(vec3<bool>(false, true, true), vec2<f32>(1000f, 1509f), 0u, vec2<f32>(2476f, 997f), vec2<i32>(0i, 57083i)), Struct_2(vec2<f32>(-1815f, -712f), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1530f, 739f), 58895u, vec2<f32>(2320f, 545f), vec2<i32>(1i, -1i))), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1000f, 205f), 4294967295u, vec2<f32>(360f, 236f), vec2<i32>(i32(-2147483648), i32(-2147483648))), 1u, Struct_2(vec2<f32>(279f, -1333f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(2406f, 1000f), 70625u, vec2<f32>(309f, 923f), vec2<i32>(0i, -1039i)))), Struct_3(Struct_1(vec3<bool>(false, false, false), vec2<f32>(480f, -470f), 1374u, vec2<f32>(596f, -212f), vec2<i32>(-1i, -25323i)), Struct_2(vec2<f32>(-490f, -873f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-404f, -668f), 4294967295u, vec2<f32>(293f, 505f), vec2<i32>(i32(-2147483648), -23970i))), Struct_1(vec3<bool>(false, true, false), vec2<f32>(238f, -1171f), 32763u, vec2<f32>(761f, 673f), vec2<i32>(-52766i, -6817i)), 45480u, Struct_2(vec2<f32>(1000f, -753f), Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, 1744f), 4921u, vec2<f32>(1291f, -910f), vec2<i32>(-11944i, 2147483647i)))), Struct_3(Struct_1(vec3<bool>(true, true, true), vec2<f32>(1242f, -1886f), 1326u, vec2<f32>(401f, 364f), vec2<i32>(i32(-2147483648), 0i)), Struct_2(vec2<f32>(2443f, -3484f), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-391f, -1266f), 6838u, vec2<f32>(-1941f, -607f), vec2<i32>(i32(-2147483648), 9698i))), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-1738f, 112f), 27222u, vec2<f32>(541f, -2310f), vec2<i32>(0i, 2358i)), 31984u, Struct_2(vec2<f32>(-681f, -496f), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-2114f, 458f), 41567u, vec2<f32>(-313f, 1000f), vec2<i32>(0i, 2147483647i)))), Struct_3(Struct_1(vec3<bool>(true, false, false), vec2<f32>(-568f, 1056f), 0u, vec2<f32>(1498f, 1005f), vec2<i32>(-19006i, -33222i)), Struct_2(vec2<f32>(598f, -144f), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-559f, -1832f), 30411u, vec2<f32>(1000f, -247f), vec2<i32>(-1i, -47362i))), Struct_1(vec3<bool>(false, false, true), vec2<f32>(976f, -1000f), 36515u, vec2<f32>(-817f, 314f), vec2<i32>(-45279i, -1i)), 1u, Struct_2(vec2<f32>(-210f, -203f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-2177f, 1783f), 4294967295u, vec2<f32>(359f, -858f), vec2<i32>(-54857i, i32(-2147483648))))), Struct_3(Struct_1(vec3<bool>(false, true, false), vec2<f32>(874f, -1536f), 0u, vec2<f32>(862f, -493f), vec2<i32>(1i, i32(-2147483648))), Struct_2(vec2<f32>(-1000f, -1297f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(541f, -501f), 33103u, vec2<f32>(1198f, 1437f), vec2<i32>(1i, -24290i))), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1395f, -796f), 13265u, vec2<f32>(-2364f, -1097f), vec2<i32>(50355i, -53662i)), 1u, Struct_2(vec2<f32>(-137f, 194f), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1012f, 1487f), 4294967295u, vec2<f32>(-2072f, 872f), vec2<i32>(-1i, 0i)))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    return arg_0.yx;
}

fn func_3() -> i32 {
    var var_0 = 0u;
    let var_1 = vec3<i32>(~0i, reverseBits(select(1i, -1i, false)), ~(20520i >> (1u % 32u)));
    let var_2 = ~_wgslsmith_mult_u32(~u_input.b.x, ~1u);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(331f, 499f) + vec2<f32>(-1136f, -209f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, -1076f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-357f, 160f), vec2<f32>(-278f, 1148f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(592f, 307f))))), Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(282f, 1447f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -256f) * vec2<f32>(605f, 1446f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-736f, 784f) + vec2<f32>(-1000f, -124f))))), 57233u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1391f)))))), abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-7072i, var_1.x), vec2<i32>(var_1.x, var_1.x)))));
    let var_4 = select(vec3<bool>(var_3.b.a.x, var_3.b.a.x, !any(!var_3.b.a.zx)), var_3.b.a, !select(any(vec4<bool>(false, var_3.b.a.x, true, false)) & select(false, var_3.b.a.x, false), any(var_3.b.a) || true, firstTrailingBit(var_2) != 33332u));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(-arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.b.b.d.x, arg_3.x)))), arg_2)), arg_1.c);
    global0 = array<Struct_3, 8>();
    var var_1 = abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.b.e.x, arg_0), func_3())) & _wgslsmith_sub_i32(~(~39717i) ^ -abs(arg_0), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_0, arg_0, arg_1.a.e.x) << (u_input.b % vec3<u32>(32u))), ~vec3<i32>(-106269i, -1i, 2147483647i)));
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.e.x, ~(~(-39097i)), -(~(-11236i)), arg_1.e.b.e.x), vec4<i32>(firstTrailingBit(arg_1.b.b.e.x), select(_wgslsmith_div_i32(_wgslsmith_div_i32(3394i, arg_0), reverseBits(0i)), arg_0, !all(vec4<bool>(true, arg_2, var_0.b.a.x, true))), -28436i, arg_1.b.b.e.x));
    var var_2 = select(select(select(select(vec4<bool>(arg_2, false, arg_2, arg_2), !vec4<bool>(arg_2, arg_2, arg_2, arg_2), true), vec4<bool>(var_0.b.a.x == arg_2, arg_2, true, true), !select(vec4<bool>(false, var_0.b.a.x, true, false), vec4<bool>(false, false, arg_1.b.b.a.x, true), true)), select(!vec4<bool>(true, var_0.b.a.x, arg_2, true), select(vec4<bool>(false, true, true, true), !vec4<bool>(true, var_0.b.a.x, false, arg_2), true), select(select(vec4<bool>(false, true, false, var_0.b.a.x), vec4<bool>(arg_2, true, arg_2, false), false), vec4<bool>(true, arg_2, true, false), any(var_0.b.a.yy))), vec4<bool>(any(vec2<bool>(arg_1.b.b.a.x, false)), var_0.b.a.x, firstTrailingBit(arg_1.e.b.c) <= 4294967295u, true)), select(select(!select(vec4<bool>(arg_2, var_0.b.a.x, arg_2, arg_1.c.a.x), vec4<bool>(false, arg_1.e.b.a.x, true, false), vec4<bool>(arg_2, arg_2, var_0.b.a.x, true)), select(vec4<bool>(false, true, var_0.b.a.x, false), vec4<bool>(arg_2, arg_1.e.b.a.x, false, true), true), false), vec4<bool>(var_0.b.a.x, arg_3.x >= -351f, any(select(var_0.b.a.zx, var_0.b.a.yx, arg_2)), select(select(true, arg_2, arg_1.a.a.x), true, true)), true), !(!(!(!vec4<bool>(arg_2, true, var_0.b.a.x, false)))));
    return var_2.wxz;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> f32 {
    global0 = array<Struct_3, 8>();
    let var_0 = reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), -abs(reverseBits(vec2<i32>(-33987i, 0i)))));
    let var_1 = false;
    let var_2 = vec3<bool>(all(vec3<bool>(!var_1, !arg_0, !all(vec2<bool>(false, false)))), ~(~firstTrailingBit(u_input.a)) >= (~max(u_input.b.x, 69706u) << (max(1u, 47111u) % 32u)), true);
    let var_3 = ~70326u;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-142f, -313f, select(true, true, false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f) * -160f))), _wgslsmith_f_op_f32(func_4(!(-675f < _wgslsmith_f_op_f32(select(802f, -867f, true))), -638f, all(func_1(-2147483647i, Struct_3(Struct_1(vec3<bool>(false, false, false), vec2<f32>(-775f, 1000f), 57392u, vec2<f32>(-1556f, 1000f), vec2<i32>(34476i, 0i)), Struct_2(vec2<f32>(-375f, 232f), Struct_1(vec3<bool>(false, false, true), vec2<f32>(-514f, 572f), u_input.b.x, vec2<f32>(1212f, 147f), vec2<i32>(-2147483647i, 4220i))), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-342f, -1532f), u_input.a, vec2<f32>(-417f, -701f), vec2<i32>(2147483647i, -91694i)), u_input.b.x, Struct_2(vec2<f32>(605f, -935f), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-717f, -1000f), u_input.b.x, vec2<f32>(-256f, 1118f), vec2<i32>(2147483647i, 2147483647i)))), all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(273f, -959f, 1538f))))))), _wgslsmith_f_op_f32(ceil(-567f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1093f) - 759f), _wgslsmith_div_f32(1523f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.x, -600f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + -407f))))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-(~(2147483647i >> (u_input.b.x % 32u))), select(-(~2147483647i), func_3() & firstLeadingBit(0i), true), ~reverseBits(1i), 92835i), ~(~abs(abs(vec4<i32>(2147483647i, -1i, -19261i, 0i)))));
    var var_3 = false;
    var_2 = -abs(vec4<i32>(var_2.x, _wgslsmith_clamp_i32(var_2.x, 21277i, 41661i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, firstTrailingBit(-1i)), _wgslsmith_mult_i32(-var_2.x, abs(-28492i))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.x)))))), -794f, _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1049f, var_1.x, 857f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(800f, -442f, 1000f), vec3<f32>(var_1.x, -587f, var_1.x))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_0.x, var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(vec4<u32>(125232u, u_input.b.x, u_input.a, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a))), ~(~vec4<u32>(u_input.b.x, 97323u, 4294967295u, 0u)), vec4<bool>(true, true, true, true)));
}

