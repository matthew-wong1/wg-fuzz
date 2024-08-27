struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 973f);

var<private> global1: array<bool, 25> = array<bool, 25>(false, false, false, true, true, true, true, true, false, false, true, false, false, false, true, true, false, true, true, true, true, false, true, true, false);

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-606f, 1807f, -623f)), Struct_1(vec3<f32>(-1000f, 186f, 1463f))), 40485u, Struct_1(vec3<f32>(2169f, -189f, -774f)), vec4<i32>(-7871i, 2147483647i, i32(-2147483648), 0i)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<f32>(852f, 164f, -758f)), Struct_1(vec3<f32>(-1875f, -517f, -173f))), 4294967295u, Struct_1(vec3<f32>(1166f, -762f, -915f)), vec4<i32>(1i, 10975i, 2147483647i, 17850i)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-286f, 698f, 2119f)), Struct_1(vec3<f32>(1000f, -418f, -1908f))), 4294967295u, Struct_1(vec3<f32>(-1599f, 1561f, -129f)), vec4<i32>(-26681i, 1i, -8572i, -1i)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(529f, -252f, 826f)), Struct_1(vec3<f32>(1460f, 128f, 353f))), 1u, Struct_1(vec3<f32>(-1000f, 1000f, -857f)), vec4<i32>(0i, 15878i, 0i, -1i)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-117f, 1803f, 882f)), Struct_1(vec3<f32>(1828f, -1910f, 346f))), 0u, Struct_1(vec3<f32>(884f, -190f, -464f)), vec4<i32>(0i, 16710i, -26388i, 0i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(416f, 480f, -812f)), Struct_1(vec3<f32>(-1116f, -1000f, -599f))), 26029u, Struct_1(vec3<f32>(636f, 743f, -594f)), vec4<i32>(-1i, i32(-2147483648), 41468i, 13793i)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(-629f, 1000f, -2094f)), Struct_1(vec3<f32>(1762f, -746f, 1000f))), 82557u, Struct_1(vec3<f32>(-829f, -323f, -455f)), vec4<i32>(35956i, 2147483647i, 31103i, 44936i)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(477f, -539f, -311f)), Struct_1(vec3<f32>(-177f, -156f, -132f))), 52122u, Struct_1(vec3<f32>(1000f, -481f, -1195f)), vec4<i32>(15054i, -1034i, 26337i, 212i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(-375f, -2170f, 2296f)), Struct_1(vec3<f32>(-1605f, -1567f, 1000f))), 1158u, Struct_1(vec3<f32>(-362f, -332f, -1246f)), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -60479i)), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(462f, 599f, -369f)), Struct_1(vec3<f32>(-2051f, -110f, 521f))), 1u, Struct_1(vec3<f32>(1087f, -690f, -1171f)), vec4<i32>(2147483647i, 2147483647i, 1i, 5467i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(745f, 196f, 284f)), Struct_1(vec3<f32>(-1244f, -569f, -1147f))), 4294967295u, Struct_1(vec3<f32>(209f, -132f, 649f)), vec4<i32>(-15121i, -2959i, 2147483647i, 0i)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-1000f, 1391f, 138f)), Struct_1(vec3<f32>(-874f, 217f, 1650f))), 34506u, Struct_1(vec3<f32>(-144f, -144f, 217f)), vec4<i32>(1i, -41947i, -3418i, 33094i)), Struct_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec3<f32>(512f, 1017f, 890f)), Struct_1(vec3<f32>(492f, -1214f, -619f))), 4294967295u, Struct_1(vec3<f32>(1210f, -1256f, 502f)), vec4<i32>(0i, -1i, -7439i, 12925i)), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(-835f, -169f, -915f)), Struct_1(vec3<f32>(-291f, 755f, -307f))), 1u, Struct_1(vec3<f32>(-400f, 581f, -1137f)), vec4<i32>(2147483647i, -2217i, 23248i, i32(-2147483648))), Struct_3(Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(281f, -1264f, 153f)), Struct_1(vec3<f32>(-636f, 1340f, -1377f))), 4763u, Struct_1(vec3<f32>(1001f, -1395f, 577f)), vec4<i32>(-1i, 1i, -38354i, 2147483647i)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<f32>(-1305f, 242f, 1517f)), Struct_1(vec3<f32>(-963f, -1103f, -257f))), 1u, Struct_1(vec3<f32>(2029f, -938f, -2603f)), vec4<i32>(-1i, -39902i, 1i, -17054i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(1215f, -845f, 1552f)), Struct_1(vec3<f32>(235f, 1000f, 1000f))), 0u, Struct_1(vec3<f32>(-305f, 1352f, 1260f)), vec4<i32>(1i, 1i, -84400i, -13475i)), Struct_3(Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<f32>(316f, 551f, 1931f)), Struct_1(vec3<f32>(1000f, 1412f, 464f))), 83840u, Struct_1(vec3<f32>(217f, -719f, -260f)), vec4<i32>(20746i, -1i, 0i, -1i)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<f32>(484f, -1709f, -122f)), Struct_1(vec3<f32>(510f, -929f, -783f))), 1u, Struct_1(vec3<f32>(-1714f, -1266f, -117f)), vec4<i32>(303i, -31381i, -1i, -10689i)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(-299f, 2658f, 1203f)), Struct_1(vec3<f32>(796f, 261f, -649f))), 1u, Struct_1(vec3<f32>(2094f, 211f, 424f)), vec4<i32>(0i, 2147483647i, 0i, -26113i)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<f32>(834f, -425f, -694f)), Struct_1(vec3<f32>(432f, -956f, 436f))), 4294967295u, Struct_1(vec3<f32>(-234f, -669f, 1000f)), vec4<i32>(-9851i, 2147483647i, 29613i, -18671i)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-1197f, -516f, -882f)), Struct_1(vec3<f32>(-649f, 728f, 653f))), 39822u, Struct_1(vec3<f32>(2089f, -815f, 485f)), vec4<i32>(-67155i, -49057i, 1i, -20334i)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<f32>(-1806f, -612f, 275f)), Struct_1(vec3<f32>(-383f, 167f, 942f))), 1u, Struct_1(vec3<f32>(106f, 256f, -328f)), vec4<i32>(i32(-2147483648), 11992i, 0i, 26153i)), Struct_3(Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec3<f32>(847f, 1032f, 288f)), Struct_1(vec3<f32>(-826f, -1386f, -1299f))), 84544u, Struct_1(vec3<f32>(-709f, 704f, -483f)), vec4<i32>(-17669i, -1i, -93221i, 11344i)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(-167f, -1000f, -1000f)), Struct_1(vec3<f32>(-1346f, 518f, 795f))), 0u, Struct_1(vec3<f32>(-468f, 999f, 657f)), vec4<i32>(-12480i, -1i, -1i, 42065i)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(-1445f, 649f, 765f)), Struct_1(vec3<f32>(-1071f, -667f, -1240f))), 1u, Struct_1(vec3<f32>(1351f, 558f, 1793f)), vec4<i32>(4639i, -32582i, 2147483647i, 56519i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(2601f, 982f, 2053f)), Struct_1(vec3<f32>(1506f, -2162f, -1868f))), 25622u, Struct_1(vec3<f32>(1200f, 429f, -115f)), vec4<i32>(-1i, -1i, 2147483647i, -20056i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec3<f32>(-1070f, -531f, 544f)), Struct_1(vec3<f32>(-881f, 1804f, -979f))), 4294967295u, Struct_1(vec3<f32>(1750f, -629f, -802f)), vec4<i32>(41848i, 108224i, 10331i, 4496i)));

var<private> global3: array<vec2<i32>, 8>;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = global0.x;
    global2 = array<Struct_3, 28>();
    let var_1 = ~49440u;
    global1 = array<bool, 25>();
    global4 = vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 900f))))), _wgslsmith_div_f32(arg_1.c.a.c.a.x, global4.x));
    return arg_1.b.a.a;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(select(!func_3(Struct_1(vec3<f32>(-114f, -336f, global4.x)), Struct_4(Struct_3(Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(71154u, 25u)]), Struct_1(vec3<f32>(global4.x, 980f, -1576f)), Struct_1(vec3<f32>(1748f, -1295f, global4.x))), u_input.b, Struct_1(vec3<f32>(-775f, global4.x, 652f)), vec4<i32>(u_input.e.x, -27760i, u_input.d, 0i)), Struct_3(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, true, global1[_wgslsmith_index_u32(1u, 25u)]), Struct_1(vec3<f32>(global4.x, 184f, global4.x)), Struct_1(vec3<f32>(1085f, global0.x, 525f))), u_input.a, Struct_1(vec3<f32>(-635f, 474f, global4.x)), vec4<i32>(-1i, u_input.d, u_input.e.x, u_input.e.x)), Struct_3(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(51900u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]), Struct_1(vec3<f32>(-218f, 416f, 1235f)), Struct_1(vec3<f32>(-550f, -402f, -2310f))), u_input.b, Struct_1(vec3<f32>(-1000f, global4.x, 530f)), u_input.e), u_input.c.xx)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c.x, 25u)], true), true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(2687u, 25u)] & global1[_wgslsmith_index_u32(u_input.b, 25u)], true)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, global4.x, 1000f)))), Struct_1(vec3<f32>(_wgslsmith_div_f32(-1494f, -241f), _wgslsmith_f_op_f32(step(-459f, -544f)), _wgslsmith_f_op_f32(round(global0.x))))), u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1210f), global4.x, global4.x))), ~(u_input.e << (vec4<u32>(_wgslsmith_add_u32(5722u, 116499u), u_input.c.x, ~u_input.a, u_input.b) % vec4<u32>(32u))));
    var var_1 = ~abs(min(-var_0.d.xxx, var_0.d.xxy));
    var_0 = Struct_3(var_0.a, ~(~(~15764u)) & u_input.b, var_0.c, _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(u_input.d, -1i, var_0.d.x, u_input.e.x) << (vec4<u32>(u_input.b, var_0.b, 10654u, var_0.b) % vec4<u32>(32u)), select(var_0.d, vec4<i32>(-11006i, -17760i, var_1.x, -1i), var_0.a.a), false), abs(-vec4<i32>(u_input.d, u_input.e.x, var_0.d.x, -20155i) & _wgslsmith_sub_vec4_i32(u_input.e, var_0.d)), abs(select(firstLeadingBit(vec4<i32>(var_1.x, 1i, u_input.d, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, 48469i, var_0.d.x), u_input.e), any(var_0.a.a)))));
    var var_2 = var_0.d;
    var var_3 = Struct_5(global4.x, var_0.a);
    return !(!select(var_3.b.a, func_3(Struct_1(vec3<f32>(var_0.a.c.a.x, global0.x, -161f)), Struct_4(Struct_3(var_0.a, 4294967295u, var_0.c, vec4<i32>(u_input.e.x, -15670i, -31074i, -29541i)), Struct_3(var_3.b, 40561u, Struct_1(var_0.a.c.a), u_input.e), Struct_3(Struct_2(var_0.a.a, var_0.c, Struct_1(vec3<f32>(1000f, 1823f, 584f))), u_input.b, Struct_1(vec3<f32>(1013f, 207f, var_0.a.c.a.x)), vec4<i32>(var_1.x, u_input.e.x, var_1.x, -41574i)), u_input.c.yy)), select(vec4<bool>(var_3.b.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_3.b.a, !var_3.b.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5) -> f32 {
    var var_0 = vec2<bool>(all(func_3(arg_0.c, Struct_4(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], Struct_3(Struct_2(arg_1.b.a, arg_0.c, Struct_1(vec3<f32>(1336f, arg_1.b.b.a.x, arg_1.b.c.a.x))), u_input.c.x, arg_1.b.b, u_input.e), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.a), 28u)], vec2<u32>(u_input.a, 86304u))).zyz), ((28192u << ((u_input.c.x >> (u_input.a % 32u)) % 32u)) > _wgslsmith_add_u32(~u_input.b, u_input.a)) && false);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1279f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1110f + 1296f), _wgslsmith_f_op_f32(arg_1.b.c.a.x * 2165f)) - _wgslsmith_f_op_f32(-1950f * _wgslsmith_f_op_f32(f32(-1f) * -121f))), var_0.x)) * global0.x);
    let var_2 = countOneBits(vec4<u32>(~u_input.b, ~(~_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(1u, 39274u))), ~(~4294967295u), ~u_input.a));
    var var_3 = Struct_3(Struct_2(vec4<bool>(!(var_2.x < 74175u), false, !arg_0.a.x, true), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -928f, -477f) + arg_0.c.a)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, global4.x))), ~var_2.x, arg_0.b, select(u_input.e, vec4<i32>(_wgslsmith_div_i32(-u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.e.x), u_input.e.xwx)), ~(u_input.e.x ^ u_input.e.x), reverseBits(u_input.e.x), _wgslsmith_mult_i32(-1i, u_input.e.x) & -1i), !vec4<bool>(func_2().x, arg_1.b.a.x | var_0.x, any(arg_0.a), arg_1.b.a.x)));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.x, 1689f))))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -743f))));
    return _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a.x + 1485f), 1f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    return Struct_2(!arg_2.a.a, arg_2.a.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + 659f) * arg_3.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    return func_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), 375f)), _wgslsmith_f_op_f32(func_4(Struct_2(func_2(), Struct_1(vec3<f32>(global4.x, global0.x, -1369f)), Struct_1(vec3<f32>(-987f, global0.x, global0.x))), Struct_5(global4.x, Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 25u)], false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), Struct_1(vec3<f32>(435f, -354f, global4.x)), Struct_1(vec3<f32>(-829f, global0.x, 604f)))))), _wgslsmith_f_op_f32(round(148f))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1167f, global4.x, -1000f))))), Struct_3(Struct_2(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-998f, global4.x, global4.x))), Struct_1(vec3<f32>(global4.x, global4.x, 111f))), u_input.a << (54827u % 32u), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 301f, 664f), vec3<f32>(global0.x, global0.x, 303f))), firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.e & vec4<i32>(1i, u_input.e.x, u_input.e.x, 2147483647i), -u_input.e))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-478f * global0.x) - global0.x)), -232f, global4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(~(~_wgslsmith_div_i32(u_input.d, u_input.d)));
    let var_1 = true;
    global2 = array<Struct_3, 28>();
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, 482f, -2228f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(529f, 1000f, -624f, global4.x))), vec4<f32>(global4.x, global0.x, global4.x, 929f))))))));
    let var_3 = Struct_3(func_1(), _wgslsmith_div_u32(~firstLeadingBit(4294967295u), _wgslsmith_add_u32((u_input.a | u_input.c.x) ^ u_input.b, 0u >> (countOneBits(28907u) % 32u))), func_5(vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global0.x)), -737f, -1177f), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_2.zzz)), var_2.zyz, global1[_wgslsmith_index_u32(firstLeadingBit(0u), 25u)]))), global2[_wgslsmith_index_u32(8490u, 28u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, global0.x, global0.x)))))).c, select(vec4<i32>(u_input.d, ~u_input.d, _wgslsmith_mult_i32(abs(u_input.d), -43243i >> (0u % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, u_input.e.x, -44613i), vec4<i32>(u_input.e.x, u_input.d, u_input.d, u_input.d))), min(u_input.e, u_input.e), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(560f, var_2.x, -1170f), vec3<f32>(var_2.x, 426f, 652f)) * vec3<f32>(var_2.x, 262f, -689f)), Struct_1(func_1().c.a), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 5519u), 28u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, global0.x, 789f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global4.x, 700f) * var_2.zxz)))).a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -1609f, var_3.a.b.a.zy);
}

