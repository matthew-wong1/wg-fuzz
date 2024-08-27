struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec2<f32>(-1000f, 1218f)), Struct_1(vec2<f32>(402f, -1599f)), 67879u, Struct_1(vec2<f32>(-514f, -840f)), Struct_1(vec2<f32>(-1283f, 2322f))), Struct_2(Struct_1(vec2<f32>(1509f, -1609f)), Struct_1(vec2<f32>(609f, 516f)), 1u, Struct_1(vec2<f32>(-126f, 811f)), Struct_1(vec2<f32>(-1795f, 210f))), Struct_2(Struct_1(vec2<f32>(1200f, -1549f)), Struct_1(vec2<f32>(1119f, 881f)), 0u, Struct_1(vec2<f32>(1504f, -311f)), Struct_1(vec2<f32>(-437f, 788f))), Struct_2(Struct_1(vec2<f32>(1000f, 1621f)), Struct_1(vec2<f32>(-1157f, 1272f)), 81159u, Struct_1(vec2<f32>(-327f, 1000f)), Struct_1(vec2<f32>(280f, 267f))), Struct_2(Struct_1(vec2<f32>(-983f, -920f)), Struct_1(vec2<f32>(-803f, 375f)), 0u, Struct_1(vec2<f32>(-1610f, 559f)), Struct_1(vec2<f32>(-304f, 1945f))), Struct_2(Struct_1(vec2<f32>(368f, -446f)), Struct_1(vec2<f32>(1420f, -242f)), 1u, Struct_1(vec2<f32>(1065f, -524f)), Struct_1(vec2<f32>(1000f, 1040f))), Struct_2(Struct_1(vec2<f32>(344f, 947f)), Struct_1(vec2<f32>(-1255f, -320f)), 72877u, Struct_1(vec2<f32>(-418f, 1964f)), Struct_1(vec2<f32>(-924f, -1000f))), Struct_2(Struct_1(vec2<f32>(-726f, -2003f)), Struct_1(vec2<f32>(224f, -575f)), 0u, Struct_1(vec2<f32>(202f, 212f)), Struct_1(vec2<f32>(439f, 603f))), Struct_2(Struct_1(vec2<f32>(1000f, 1000f)), Struct_1(vec2<f32>(-733f, 120f)), 7318u, Struct_1(vec2<f32>(-2522f, -299f)), Struct_1(vec2<f32>(1623f, -626f))), Struct_2(Struct_1(vec2<f32>(1000f, 974f)), Struct_1(vec2<f32>(415f, -932f)), 0u, Struct_1(vec2<f32>(1081f, 1347f)), Struct_1(vec2<f32>(-995f, -1661f))), Struct_2(Struct_1(vec2<f32>(-400f, 793f)), Struct_1(vec2<f32>(634f, 366f)), 4294967295u, Struct_1(vec2<f32>(174f, -556f)), Struct_1(vec2<f32>(-718f, 377f))), Struct_2(Struct_1(vec2<f32>(-173f, 720f)), Struct_1(vec2<f32>(983f, -470f)), 15743u, Struct_1(vec2<f32>(961f, 1374f)), Struct_1(vec2<f32>(2325f, 589f))), Struct_2(Struct_1(vec2<f32>(1476f, -973f)), Struct_1(vec2<f32>(834f, 1130f)), 0u, Struct_1(vec2<f32>(410f, 641f)), Struct_1(vec2<f32>(473f, 698f))), Struct_2(Struct_1(vec2<f32>(-107f, 1051f)), Struct_1(vec2<f32>(-710f, -2062f)), 1u, Struct_1(vec2<f32>(393f, 642f)), Struct_1(vec2<f32>(-1748f, -183f))), Struct_2(Struct_1(vec2<f32>(1915f, 993f)), Struct_1(vec2<f32>(298f, -1000f)), 54103u, Struct_1(vec2<f32>(-2864f, -1975f)), Struct_1(vec2<f32>(1129f, 580f))), Struct_2(Struct_1(vec2<f32>(1000f, 372f)), Struct_1(vec2<f32>(439f, -935f)), 10953u, Struct_1(vec2<f32>(-668f, 1000f)), Struct_1(vec2<f32>(-2088f, -346f))), Struct_2(Struct_1(vec2<f32>(2224f, 1645f)), Struct_1(vec2<f32>(-1127f, -1457f)), 4294967295u, Struct_1(vec2<f32>(1685f, 203f)), Struct_1(vec2<f32>(290f, -1072f))), Struct_2(Struct_1(vec2<f32>(-1918f, -1237f)), Struct_1(vec2<f32>(2594f, 1198f)), 8345u, Struct_1(vec2<f32>(471f, -1599f)), Struct_1(vec2<f32>(616f, -1000f))), Struct_2(Struct_1(vec2<f32>(1000f, -1531f)), Struct_1(vec2<f32>(1327f, 451f)), 23053u, Struct_1(vec2<f32>(-1000f, -1057f)), Struct_1(vec2<f32>(1357f, -390f))), Struct_2(Struct_1(vec2<f32>(-1000f, -198f)), Struct_1(vec2<f32>(-1048f, 337f)), 1u, Struct_1(vec2<f32>(-1910f, 609f)), Struct_1(vec2<f32>(-2632f, 957f))), Struct_2(Struct_1(vec2<f32>(-985f, 706f)), Struct_1(vec2<f32>(-449f, -626f)), 4294967295u, Struct_1(vec2<f32>(1000f, -1417f)), Struct_1(vec2<f32>(-956f, -554f))), Struct_2(Struct_1(vec2<f32>(756f, 213f)), Struct_1(vec2<f32>(1000f, -2451f)), 71637u, Struct_1(vec2<f32>(-433f, -1311f)), Struct_1(vec2<f32>(315f, 1095f))), Struct_2(Struct_1(vec2<f32>(-301f, -1098f)), Struct_1(vec2<f32>(573f, 673f)), 4294967295u, Struct_1(vec2<f32>(1253f, 260f)), Struct_1(vec2<f32>(429f, -1000f))), Struct_2(Struct_1(vec2<f32>(-414f, -588f)), Struct_1(vec2<f32>(-870f, -916f)), 0u, Struct_1(vec2<f32>(-1361f, -1395f)), Struct_1(vec2<f32>(497f, -1296f))), Struct_2(Struct_1(vec2<f32>(-2394f, -1941f)), Struct_1(vec2<f32>(-914f, 1067f)), 56215u, Struct_1(vec2<f32>(902f, 898f)), Struct_1(vec2<f32>(1381f, 1742f))), Struct_2(Struct_1(vec2<f32>(-1052f, -266f)), Struct_1(vec2<f32>(-289f, 383f)), 1u, Struct_1(vec2<f32>(-805f, 1073f)), Struct_1(vec2<f32>(536f, 2768f))), Struct_2(Struct_1(vec2<f32>(-1590f, 1000f)), Struct_1(vec2<f32>(-810f, 1096f)), 50440u, Struct_1(vec2<f32>(-436f, 790f)), Struct_1(vec2<f32>(-1000f, -267f))));

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = reverseBits(vec3<i32>(select(~countOneBits(16014i), _wgslsmith_div_i32(u_input.b, u_input.a.x), true), u_input.b, -6743i));
    global1 = array<Struct_2, 27>();
    var var_1 = var_0.x;
    let var_2 = true;
    let var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), ~(firstTrailingBit(vec2<u32>(4294967295u, 20775u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), reverseBits(1u));
    return false || all(vec2<bool>(!var_2, any(!vec4<bool>(false, true, true, var_2))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: f32) -> Struct_2 {
    global0 = arg_2;
    global2 = func_3();
    global0 = -792f;
    let var_0 = ~(~vec3<u32>(firstTrailingBit(arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 4750u)), ~91609u) ^ ~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_1, arg_1, arg_1), ~vec3<u32>(arg_1, 17401u, 1u)));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(var_0.x ^ min(~(~1u), max(arg_1, ~38638u)), 27u)], Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1211f, arg_2), vec2<f32>(1553f, arg_2))), vec2<f32>(_wgslsmith_f_op_f32(arg_2 * 275f), -1093f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 265f) * vec2<f32>(124f, -1725f)))), _wgslsmith_div_u32(4686u, ~_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(arg_1, 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, 544f))))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1407f, 795f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1888f, 1920f)))), reverseBits(1u));
    return Struct_2(var_1.b, var_1.c.e, ~36493u, var_1.c.d, Struct_1(_wgslsmith_f_op_vec2_f32(var_1.c.b.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, arg_2)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, u_input.a.x, -63188i, u_input.b), vec4<i32>(56534i, -2147483647i, -19854i, u_input.b)), countOneBits(vec4<i32>(1i, -1i, 2147483647i, 40889i)))), -(u_input.b | u_input.a.x) & ~u_input.a.x, _wgslsmith_add_i32(-19581i, u_input.a.x)), u_input.b);
    let var_1 = func_2(var_0.x, ~34263u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-243f)) * 940f), 547f));
    let var_2 = -(vec4<i32>(-5242i, ~u_input.a.x, -1i, 80150i) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 53740u), vec2<u32>(1u, var_1.c)) | 51974u, var_1.c, var_1.c, var_1.c) % vec4<u32>(32u)));
    var_0 = _wgslsmith_clamp_vec2_i32(~select(-u_input.a >> (abs(vec2<u32>(var_1.c, var_1.c)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_2.ww, var_2.ww) & abs(vec2<i32>(u_input.b, u_input.a.x)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))), _wgslsmith_mod_vec2_i32(u_input.a, var_2.zy) << ((abs(vec2<u32>(19762u, 0u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.c, var_1.c), firstLeadingBit(vec2<u32>(var_1.c, var_1.c)), ~vec2<u32>(var_1.c, 55981u))) % vec2<u32>(32u)), reverseBits(firstLeadingBit(~vec2<i32>(-16462i, u_input.a.x))));
    var var_3 = func_2(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 1u), vec2<u32>(1u, _wgslsmith_mult_u32(~var_1.c, ~15392u))), var_1.d.a.x).b;
    return func_2(-5135i, ~var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -617f));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b.a.x * arg_1.b.a.x)), _wgslsmith_f_op_f32(1509f + _wgslsmith_f_op_f32(709f * -184f)))) - arg_1.b.a.x)));
    let var_1 = abs(firstTrailingBit(~vec4<u32>(~arg_1.e, func_1().c, arg_1.e & arg_1.e, 47713u)));
    global1 = array<Struct_2, 27>();
    global0 = arg_1.c.d.a.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)) + arg_1.d.a.x);
    return vec4<u32>(arg_2.x << (min(153227u << (select(16804u, var_1.x, arg_0) % 32u), firstTrailingBit(1u)) % 32u), var_1.x, arg_1.e, ~arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (1u % 32u)) == ~(-72457i)));
    let var_1 = !var_0;
    var var_2 = _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(0i, (0i >> (0u % 32u)) << (0u % 32u), u_input.b, -24354i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.b), u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(1i, -352i, -19293i, _wgslsmith_dot_vec2_i32(min(u_input.a, u_input.a), firstLeadingBit(u_input.a)))));
    var_2 = vec4<i32>(var_2.x, -7244i, var_2.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, 1i), countOneBits(_wgslsmith_sub_vec2_i32(var_2.ww, vec2<i32>(u_input.a.x, var_2.x))) | _wgslsmith_sub_vec2_i32(var_2.wz >> (vec2<u32>(0u, 38068u) % vec2<u32>(32u)), vec2<i32>(var_2.x, u_input.a.x))));
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(max(1087f, 1274f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, vec2<u32>(103734u, 36758u), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(4294967295u, 0u, 1u, 1u))), func_4(false, Struct_3(global1[_wgslsmith_index_u32(~0u, 27u)], var_3, func_1(), var_3, 11530u << (1u % 32u)), ~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-100f + var_3.a.x), _wgslsmith_f_op_f32(sign(var_3.a.x)), _wgslsmith_f_op_f32(var_3.a.x - var_3.a.x), func_1().d.a.x))))));
}

