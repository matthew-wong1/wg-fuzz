struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(32835u, Struct_4(Struct_2(51518u), -34288i, vec2<i32>(2147483647i, -15682i), Struct_1(true, vec3<f32>(810f, 1647f, -2014f)))), Struct_5(62174u, Struct_4(Struct_2(1u), -12575i, vec2<i32>(0i, 1i), Struct_1(true, vec3<f32>(-1227f, -1807f, 1000f)))), Struct_5(22041u, Struct_4(Struct_2(0u), i32(-2147483648), vec2<i32>(-26347i, -1i), Struct_1(false, vec3<f32>(-1000f, -1207f, -599f)))), Struct_5(0u, Struct_4(Struct_2(44983u), 2147483647i, vec2<i32>(-1i, -47086i), Struct_1(true, vec3<f32>(1147f, 2137f, -585f)))), Struct_5(1u, Struct_4(Struct_2(3755u), -27182i, vec2<i32>(1i, 1i), Struct_1(true, vec3<f32>(1746f, -175f, -1035f)))), Struct_5(24751u, Struct_4(Struct_2(50372u), 1i, vec2<i32>(-16131i, 1i), Struct_1(false, vec3<f32>(1025f, 637f, -807f)))), Struct_5(23356u, Struct_4(Struct_2(1u), 18707i, vec2<i32>(268i, 37734i), Struct_1(false, vec3<f32>(-3945f, 177f, -294f)))), Struct_5(16665u, Struct_4(Struct_2(4294967295u), 0i, vec2<i32>(12963i, -8516i), Struct_1(false, vec3<f32>(181f, 2176f, -117f)))), Struct_5(25670u, Struct_4(Struct_2(47643u), -48582i, vec2<i32>(2147483647i, 15163i), Struct_1(false, vec3<f32>(-137f, 216f, 469f)))), Struct_5(69581u, Struct_4(Struct_2(4294967295u), -1i, vec2<i32>(-27147i, -1i), Struct_1(false, vec3<f32>(234f, 1086f, -725f)))), Struct_5(4294967295u, Struct_4(Struct_2(60010u), 58589i, vec2<i32>(14168i, -40220i), Struct_1(false, vec3<f32>(-1740f, -1094f, 143f)))), Struct_5(1u, Struct_4(Struct_2(1u), i32(-2147483648), vec2<i32>(2147483647i, -1i), Struct_1(false, vec3<f32>(-745f, -680f, 1381f)))), Struct_5(20205u, Struct_4(Struct_2(89141u), i32(-2147483648), vec2<i32>(12467i, 14443i), Struct_1(true, vec3<f32>(818f, -1000f, 418f)))), Struct_5(0u, Struct_4(Struct_2(0u), -11741i, vec2<i32>(1i, -1i), Struct_1(false, vec3<f32>(1827f, -812f, -1030f)))), Struct_5(4294967295u, Struct_4(Struct_2(76074u), -21591i, vec2<i32>(39494i, i32(-2147483648)), Struct_1(false, vec3<f32>(2992f, -1697f, -1067f)))), Struct_5(27411u, Struct_4(Struct_2(1u), 1i, vec2<i32>(1i, 2147483647i), Struct_1(false, vec3<f32>(1295f, 2297f, -492f)))), Struct_5(1u, Struct_4(Struct_2(17970u), -33070i, vec2<i32>(0i, -35135i), Struct_1(true, vec3<f32>(-1823f, 1000f, -1000f)))), Struct_5(83727u, Struct_4(Struct_2(49421u), 0i, vec2<i32>(2147483647i, 0i), Struct_1(true, vec3<f32>(-1608f, 2901f, 333f)))), Struct_5(0u, Struct_4(Struct_2(55502u), 39346i, vec2<i32>(2147483647i, 29612i), Struct_1(false, vec3<f32>(-1047f, 742f, 723f)))), Struct_5(1u, Struct_4(Struct_2(8504u), 6409i, vec2<i32>(424i, -8051i), Struct_1(false, vec3<f32>(135f, -1000f, -717f)))), Struct_5(25973u, Struct_4(Struct_2(25917u), 26540i, vec2<i32>(-58331i, -1i), Struct_1(false, vec3<f32>(721f, -2505f, -623f)))), Struct_5(42072u, Struct_4(Struct_2(1u), 1i, vec2<i32>(2147483647i, 51671i), Struct_1(false, vec3<f32>(-1567f, -733f, -487f)))), Struct_5(1u, Struct_4(Struct_2(1u), 0i, vec2<i32>(14740i, -1i), Struct_1(false, vec3<f32>(1117f, -368f, -1328f)))), Struct_5(0u, Struct_4(Struct_2(4294967295u), 0i, vec2<i32>(1i, 22158i), Struct_1(false, vec3<f32>(-116f, -174f, 626f)))), Struct_5(1u, Struct_4(Struct_2(1u), 0i, vec2<i32>(i32(-2147483648), -11111i), Struct_1(false, vec3<f32>(547f, 399f, -665f)))), Struct_5(65205u, Struct_4(Struct_2(26739u), 2147483647i, vec2<i32>(-1i, -33564i), Struct_1(true, vec3<f32>(-418f, 837f, 1647f)))), Struct_5(1u, Struct_4(Struct_2(1674u), 7102i, vec2<i32>(1i, -29046i), Struct_1(true, vec3<f32>(1093f, -1839f, 1067f)))), Struct_5(7692u, Struct_4(Struct_2(4294967295u), i32(-2147483648), vec2<i32>(-5652i, 1i), Struct_1(true, vec3<f32>(-431f, -776f, -1419f)))), Struct_5(4294967295u, Struct_4(Struct_2(86534u), -1i, vec2<i32>(-1i, 2147483647i), Struct_1(true, vec3<f32>(-1000f, 1671f, 1000f)))), Struct_5(4294967295u, Struct_4(Struct_2(781u), -1i, vec2<i32>(39040i, -1i), Struct_1(false, vec3<f32>(432f, 1000f, 1000f)))));

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 1>;

var<private> global4: array<Struct_4, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = arg_1.d;
    global3 = array<Struct_2, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.b.yy);
    global4 = array<Struct_4, 8>();
    global4 = array<Struct_4, 8>();
    return abs(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.b.a.a, 2515u)), ~(~vec2<u32>(4294967295u, arg_0.a))));
}

fn func_2() -> i32 {
    let var_0 = Struct_5(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 13697u), vec2<u32>(1u, 0u)), min(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 47189u))), 1u), Struct_4(Struct_2(_wgslsmith_mod_u32(~36134u, func_3(Struct_5(1u, global4[_wgslsmith_index_u32(1u, 8u)]), global4[_wgslsmith_index_u32(1u, 8u)], global0.x, false))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 0i, -1i, u_input.a) | vec4<i32>(-22605i, 0i, global2.x, 23131i), vec4<i32>(global2.x, -15916i, 31690i, u_input.a))), firstLeadingBit(vec2<i32>(u_input.a, 2348i)), Struct_1(all(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, false, false), vec3<bool>(global0.x, global0.x, true))), vec3<f32>(938f, _wgslsmith_f_op_f32(ceil(-694f)), _wgslsmith_f_op_f32(ceil(319f))))));
    let var_1 = Struct_5(_wgslsmith_add_u32(var_0.a, _wgslsmith_sub_u32(~var_0.a | 1u, var_0.b.a.a >> (0u % 32u))), global4[_wgslsmith_index_u32(reverseBits(~16090u) >> (var_0.b.a.a % 32u), 8u)]);
    global0 = select(!vec2<bool>(abs(var_1.b.a.a) > _wgslsmith_mult_u32(var_0.b.a.a, var_0.a), any(select(vec4<bool>(false, false, true, global0.x), vec4<bool>(var_1.b.d.a, true, var_1.b.d.a, global0.x), vec4<bool>(false, true, var_1.b.d.a, false)))), vec2<bool>(!global0.x, true), !(var_0.a <= var_0.a) & false);
    global0 = select(!select(!select(vec2<bool>(true, var_1.b.d.a), vec2<bool>(false, true), vec2<bool>(global0.x, var_1.b.d.a)), vec2<bool>(true, var_0.b.d.a | false), select(vec2<bool>(var_0.b.d.a, var_1.b.d.a), vec2<bool>(var_1.b.d.a, var_1.b.d.a), vec2<bool>(true, true))), vec2<bool>(true, true), true);
    let var_2 = var_1.b.d;
    return -var_1.b.c.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_5 {
    global3 = array<Struct_2, 1>();
    global3 = array<Struct_2, 1>();
    let var_0 = -613f;
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = 1i;
    return Struct_5(19887u, Struct_4(Struct_2(4294967295u << ((arg_3 & 4294967295u) % 32u)), -1i, arg_0.yz, Struct_1(!any(vec2<bool>(true, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(1985f + var_0)))));
}

fn func_1() -> i32 {
    var var_0 = func_4(-vec4<i32>(global2.x, global2.x << (89288u % 32u), _wgslsmith_div_i32(select(global2.x, global2.x, false), -u_input.a), func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1103f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1106f, -544f))), -1303f, all(vec2<bool>(true, true)))))), global2.x, ~(~_wgslsmith_add_u32(12151u, _wgslsmith_mult_u32(9230u, 53418u))));
    var var_1 = -2176f;
    var var_2 = _wgslsmith_mult_i32(-20686i, -(~(-global2.x))) & 1i;
    var_2 = 1i;
    var var_3 = func_4(abs(select(~(-vec4<i32>(u_input.a, -36714i, 93715i, 13671i)), min(vec4<i32>(var_0.b.b, -1i, -19655i, u_input.a), vec4<i32>(global2.x, 1i, 0i, global2.x)) << (~vec4<u32>(2510u, var_0.a, var_0.b.a.a, var_0.a) % vec4<u32>(32u)), select(vec4<bool>(true, global0.x, global0.x, true), !vec4<bool>(true, global0.x, true, var_0.b.d.a), global0.x & global0.x))), 211f, 2147483647i, _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_0.b.a.a, _wgslsmith_div_u32(80643u, var_0.a)), _wgslsmith_add_u32(reverseBits(20074u), var_0.b.a.a)) >> (112239u % 32u));
    return -2060i;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> vec3<i32> {
    global4 = array<Struct_4, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-808f, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1042f)), vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, -1772f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 675f)))))))));
    let var_1 = vec4<f32>(arg_1, -587f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(var_0.x + -1059f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1629f)) * var_0.x), arg_1));
    var var_2 = _wgslsmith_f_op_f32(func_4(reverseBits(firstTrailingBit(vec4<i32>(global2.x, global2.x, global2.x, global2.x))), _wgslsmith_f_op_f32(exp2(var_1.x)), max(select(global2.x, global2.x, global0.x), u_input.a), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 22266u, 21239u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 3732u, 2319u), vec3<u32>(1u, 75212u, 13360u), vec3<u32>(0u, 5672u, 1u)))).b.d.b.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(327f))))))));
    var var_3 = func_4(vec4<i32>(17662i, ~1i, 11345i, abs(2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, var_1.x) + var_0.x), -reverseBits(u_input.a), 39622u).b.d;
    return vec3<i32>(u_input.a | -_wgslsmith_mult_i32(-13570i, countOneBits(global2.x)), arg_0.x, abs(countOneBits(global2.x >> (50947u % 32u))) & arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(-731f, 1731f);
    global2 = _wgslsmith_clamp_vec3_i32(func_5(vec2<i32>(func_1(), _wgslsmith_add_i32(u_input.a, -1i)), _wgslsmith_f_op_f32(trunc(-286f))), vec3<i32>(global2.x, global2.x, abs(2147483647i)), vec3<i32>(_wgslsmith_mult_i32(max(-16629i, abs(global2.x)), global2.x), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(global2.x, -1i, u_input.a)), -vec3<i32>(25190i, -11174i, -2147483647i) | max(vec3<i32>(u_input.a, global2.x, global2.x), vec3<i32>(-1i, u_input.a, 2147483647i))), ~(-1i)));
    var var_1 = Struct_3(vec2<i32>(-u_input.a, 1i), global3[_wgslsmith_index_u32(0u, 1u)], 0u, ~(~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_2 = Struct_3(var_1.a, Struct_2(var_1.b.a), ~4294967295u | (~_wgslsmith_div_u32(var_1.c, 13031u) & 4294967295u), vec4<u32>(~(~abs(var_1.c)), 1u & _wgslsmith_clamp_u32(12128u, ~82337u, _wgslsmith_sub_u32(var_1.c, 1u)), func_3(func_4(~vec4<i32>(-15468i, 2147483647i, 40987i, u_input.a), _wgslsmith_div_f32(900f, -479f), 1i, ~var_1.d.x), Struct_4(func_4(vec4<i32>(-22167i, 2147483647i, global2.x, u_input.a), -839f, var_1.a.x, 11709u).b.a, -1i, -var_1.a, func_4(vec4<i32>(17480i, var_1.a.x, 1i, var_1.a.x), 358f, var_1.a.x, 4294967295u).b.d), any(!vec3<bool>(false, global0.x, global0.x)), _wgslsmith_add_i32(var_1.a.x, u_input.a) == global2.x), ~(~88476u)));
    global0 = select(!select(vec2<bool>(true, true), !(!vec2<bool>(global0.x, false)), select(!vec2<bool>(false, global0.x), vec2<bool>(true, true), global0.x)), vec2<bool>(_wgslsmith_f_op_f32(select(1141f, _wgslsmith_f_op_f32(select(-1271f, 323f, false)), global0.x)) >= 155f, func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(34686i, 0i, -1i, u_input.a), -vec4<i32>(1047i, 0i, -5504i, -66635i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), 1i, 0u).b.d.a), 1259f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1265f, 915f, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-465f, 1u, _wgslsmith_div_i32(u_input.a, i32(-1i) * -1i), vec2<i32>(abs(u_input.a), _wgslsmith_dot_vec2_i32(~var_2.a & _wgslsmith_clamp_vec2_i32(var_2.a, var_2.a, vec2<i32>(-25284i, var_2.a.x)), var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-290f)) + 1f)));
}

