struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(-997f, 453f, 583f), vec4<f32>(1912f, -151f, 1000f, -2296f)), Struct_1(vec3<f32>(192f, -597f, -347f), vec4<f32>(848f, 1457f, 643f, -1000f)), Struct_1(vec3<f32>(536f, -1314f, 810f), vec4<f32>(-1285f, 491f, 1000f, 928f)), Struct_1(vec3<f32>(143f, -686f, -1000f), vec4<f32>(-1268f, -902f, -115f, -1000f)), Struct_1(vec3<f32>(126f, -1317f, 245f), vec4<f32>(-499f, 1091f, 756f, 1638f)), Struct_1(vec3<f32>(-109f, 1401f, -568f), vec4<f32>(-1222f, -733f, 234f, -1087f)), Struct_1(vec3<f32>(331f, -1484f, 2000f), vec4<f32>(200f, 1050f, -629f, 1025f)), Struct_1(vec3<f32>(579f, 1000f, 897f), vec4<f32>(1150f, 1441f, 160f, 164f)), Struct_1(vec3<f32>(306f, -234f, 2847f), vec4<f32>(-1320f, 569f, -821f, -1100f)), Struct_1(vec3<f32>(853f, 1000f, -1582f), vec4<f32>(-850f, 105f, -1750f, 404f)), Struct_1(vec3<f32>(468f, -444f, -499f), vec4<f32>(337f, 1000f, -1141f, 2835f)), Struct_1(vec3<f32>(690f, 545f, -692f), vec4<f32>(1724f, -581f, 1900f, 694f)), Struct_1(vec3<f32>(-1480f, -531f, -125f), vec4<f32>(2075f, 747f, 664f, 1858f)), Struct_1(vec3<f32>(520f, -107f, -794f), vec4<f32>(161f, 1000f, 1063f, 1658f)), Struct_1(vec3<f32>(1944f, -866f, -215f), vec4<f32>(-850f, -685f, -1000f, -1920f)), Struct_1(vec3<f32>(-1943f, -1732f, 420f), vec4<f32>(-1401f, -394f, 1000f, 778f)), Struct_1(vec3<f32>(361f, -332f, 156f), vec4<f32>(591f, 1045f, -839f, -1000f)), Struct_1(vec3<f32>(664f, -647f, 1429f), vec4<f32>(-1000f, -1387f, -1289f, 857f)), Struct_1(vec3<f32>(1085f, -455f, 424f), vec4<f32>(254f, 371f, -2600f, 1055f)), Struct_1(vec3<f32>(128f, 313f, -1243f), vec4<f32>(-1292f, 1316f, -1496f, -155f)), Struct_1(vec3<f32>(1000f, 273f, 517f), vec4<f32>(1275f, 1313f, -754f, 1459f)), Struct_1(vec3<f32>(-738f, -404f, -570f), vec4<f32>(457f, 489f, 222f, -752f)), Struct_1(vec3<f32>(-288f, -2038f, -345f), vec4<f32>(-1346f, -240f, -1252f, 1000f)), Struct_1(vec3<f32>(-1640f, -1336f, -1000f), vec4<f32>(-438f, -985f, 1975f, -138f)), Struct_1(vec3<f32>(297f, -1000f, 1268f), vec4<f32>(697f, 280f, 253f, 1649f)), Struct_1(vec3<f32>(-695f, -690f, 945f), vec4<f32>(-855f, -2201f, 2565f, 100f)), Struct_1(vec3<f32>(-387f, -902f, -1045f), vec4<f32>(-135f, 318f, 604f, -288f)), Struct_1(vec3<f32>(-742f, 1140f, -271f), vec4<f32>(456f, 917f, 638f, -631f)), Struct_1(vec3<f32>(1000f, -452f, 649f), vec4<f32>(1000f, -128f, 668f, 199f)));

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    global1 = ~abs(vec4<i32>(-2147483647i, u_input.a.x, select(~83971i, 0i, arg_1.a.x), _wgslsmith_sub_i32(24872i, global1.x)));
    global0 = array<Struct_1, 29>();
    let var_0 = arg_0;
    let var_1 = var_0.a.x;
    global1 = _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(abs(u_input.c.x), ~reverseBits(countOneBits(-2147483647i)), abs(global1.x), ~(~(-u_input.c.x))));
    return u_input.c.x;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global1 = -(~u_input.a);
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(max(~(u_input.c.x << (65389u % 32u)), _wgslsmith_mod_i32(func_3(Struct_3(vec2<bool>(true, true), vec3<bool>(true, true, true), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<f32>(-486f, 671f, 493f), vec4<f32>(1080f, -589f, 663f, -533f))), vec3<f32>(962f, 1368f, -230f)), Struct_3(vec2<bool>(false, true), vec3<bool>(true, false, true), Struct_2(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(83521u, 29u)]), vec3<f32>(-1352f, 253f, -235f)), Struct_3(vec2<bool>(false, true), vec3<bool>(false, true, false), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<f32>(1215f, 1198f, -135f), vec4<f32>(1017f, -907f, 324f, -262f))), vec3<f32>(-3178f, -120f, 875f)), Struct_2(vec3<bool>(false, false, false), global0[_wgslsmith_index_u32(0u, 29u)])), arg_0.x | arg_0.x)), arg_0.x, u_input.c.x, -13201i), -u_input.c);
    let var_0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 915f, true)))), -1277f)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(84998u, 24349u, 1u), vec3<u32>(1u, 0u, 1u), vec3<bool>(true, true, false)), ~vec3<u32>(1u, 41207u, 4294967295u)), 4294967295u), 1u), 29u)];
    global0 = array<Struct_1, 29>();
    return 84033u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(21176u), 33603u), 29u)];
    global0 = array<Struct_1, 29>();
    global1 = -_wgslsmith_div_vec4_i32(vec4<i32>(-global1.x, ~u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-2147483647i, u_input.a.x ^ global1.x)), firstTrailingBit(vec4<i32>(func_3(Struct_3(arg_1.a.zy, vec3<bool>(true, false, arg_2), Struct_2(arg_1.a, arg_1.b), vec3<f32>(arg_1.b.b.x, var_0.b.x, var_0.b.x)), Struct_3(arg_1.a.xy, arg_1.a, Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<f32>(-819f, var_0.a.x, var_0.b.x), var_0.b)), vec3<f32>(arg_3.x, -416f, -830f)), Struct_3(arg_1.a.yx, vec3<bool>(false, arg_2, arg_1.a.x), Struct_2(vec3<bool>(true, arg_2, true), arg_1.b), vec3<f32>(arg_1.b.a.x, 164f, 2584f)), Struct_2(arg_1.a, Struct_1(var_0.b.xzx, vec4<f32>(arg_3.x, arg_1.b.b.x, arg_3.x, 547f)))), select(1i, -42836i, false), _wgslsmith_add_i32(u_input.a.x, 0i), u_input.c.x)));
    global0 = array<Struct_1, 29>();
    var var_1 = (max(firstLeadingBit(arg_0.x), 7977u) | 1u) <= ~arg_0.x;
    return Struct_3(arg_1.a.zy, arg_1.a, Struct_2(!vec3<bool>(77575i == global1.x, false, 0u <= arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, -1317f, 814f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1478f, arg_3.x, 888f, var_0.b.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1015f, var_0.b.x, 1381f, 357f))))))), _wgslsmith_f_op_vec3_f32(var_0.a - var_0.b.xzy));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    var var_0 = -20483i;
    var_0 = ~global1.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(~17865u, 1u)), 1u, _wgslsmith_div_u32(reverseBits(1u), select(~(~4294967295u), select(1u, 14417u >> (0u % 32u), true), true))), 29u)];
    var var_2 = false;
    global0 = array<Struct_1, 29>();
    return func_4(vec4<u32>(func_2(reverseBits(_wgslsmith_add_vec2_i32(u_input.a.wx, vec2<i32>(31041i, 0i)))), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(61804u, 22209u, 46463u, 4294967295u)), vec4<u32>(22331u, 4294967295u, 0u, 12110u)), 1u, _wgslsmith_sub_u32(~1u, ~1u)), Struct_2(!vec3<bool>(true, all(vec2<bool>(true, true)), true), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -595f, 410f, arg_1)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, arg_1, var_1.b.x, arg_1)))))), _wgslsmith_mod_i32(u_input.a.x & global1.x, u_input.a.x) >= ((i32(-1i) * -global1.x) >> (17456u % 32u)), arg_0.b.xzx);
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(func_3(arg_0, arg_0, func_4(vec4<u32>(1u, 1u, 1u, 1u), arg_0.c, false && (13643i >= u_input.c.x), arg_0.c.b.a), Struct_2(arg_0.b, func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(6332u, 1u, 1u, 8603u), vec4<u32>(7210u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 22507u, 8520u, 24915u)), func_4(vec4<u32>(39799u, 12107u, 0u, 13186u), Struct_2(arg_0.b, global0[_wgslsmith_index_u32(50212u, 29u)]), arg_0.b.x, arg_0.d).c, true, _wgslsmith_f_op_vec3_f32(-arg_0.c.b.b.yxy)).c.b)), _wgslsmith_mult_i32(~u_input.b, select(u_input.c.x, -global1.x, !arg_0.b.x)), _wgslsmith_add_i32(i32(-1i) * -37544i, global1.x));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(f32(-1f) * -410f))) + arg_0.c.b.b.x)));
    let var_2 = Struct_2(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.c.b.b.zzw))), arg_0.c.b.b), func_4(vec4<u32>(1u, 19260u, 79464u, _wgslsmith_mult_u32(0u, 8639u)), func_4(vec4<u32>(4294967295u, 0u, 21570u, 0u), arg_0.c, var_1 < -630f, func_4(vec4<u32>(120461u, 0u, 49432u, 43752u), Struct_2(arg_0.c.a, global0[_wgslsmith_index_u32(5415u, 29u)]), arg_0.c.a.x, vec3<f32>(1000f, -1534f, -291f)).c.b.a).c, all(vec2<bool>(false, arg_0.c.a.x)), arg_0.d).c.b.b.x).b, arg_0.c.b);
    let var_3 = vec4<bool>(!any(arg_0.c.a.yz), all(!(!arg_0.c.a.zy)) || true, (true || arg_0.c.a.x) == (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1900f, arg_0.c.b.b.x)) * -707f) == _wgslsmith_f_op_f32(-var_2.b.b.x)), func_4(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(18765u, 0u, 20267u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), func_4(vec4<u32>(1u, 1u, 1u, 1u), arg_0.c, var_2.a.x, arg_0.d).c, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.b.b.x, var_2.b.a.x, arg_0.c.b.b.x))))).b.x);
    var var_4 = vec3<i32>(~(abs(global1.x) ^ u_input.b), -2147483647i, 1i);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.c;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = vec4<i32>(global1.x, reverseBits(1i), u_input.a.x, global1.x);
    var var_2 = all(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))) & true;
    var_2 = (_wgslsmith_mult_i32(-(~var_1.x), u_input.b) == func_5(func_1(Struct_1(vec3<f32>(-216f, var_0, -394f), vec4<f32>(327f, var_0, var_0, var_0)), _wgslsmith_f_op_f32(floor(var_0))))) && true;
    let x = u_input.a;
    s_output = StorageBuffer(1023f, select(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 46717u)), vec2<u32>(1u, 82849u), firstLeadingBit(vec2<u32>(89579u, 0u))), vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 34767u), max(vec2<u32>(4294967295u, 29771u), vec2<u32>(87220u, 0u)))), func_4(vec4<u32>(68225u, ~0u, 19949u, ~1u), Struct_2(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(43122u, 4873u), 29u)]), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(984f, -966f, 1245f))).b.zz));
}

