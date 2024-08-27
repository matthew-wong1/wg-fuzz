struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(36585u, -32812i, Struct_1(691f, vec3<i32>(-1i, 515i, 62589i), -408f, vec3<f32>(-1661f, 133f, 415f)), Struct_1(1505f, vec3<i32>(1i, -38592i, 1i), -1232f, vec3<f32>(1973f, 969f, 659f))), Struct_2(0u, 0i, Struct_1(394f, vec3<i32>(-1i, -59787i, 2362i), 792f, vec3<f32>(-1298f, 911f, 1372f)), Struct_1(2093f, vec3<i32>(-1i, -29023i, -13750i), -1641f, vec3<f32>(-1147f, -380f, 1101f))), Struct_2(4294967295u, 2147483647i, Struct_1(-926f, vec3<i32>(1i, -17413i, -1208i), -115f, vec3<f32>(-602f, 127f, 744f)), Struct_1(1258f, vec3<i32>(-1i, -25383i, i32(-2147483648)), 905f, vec3<f32>(710f, -912f, -1163f))), Struct_2(13337u, -7052i, Struct_1(1399f, vec3<i32>(2147483647i, -7678i, 46094i), -222f, vec3<f32>(-1000f, -1000f, -1092f)), Struct_1(1616f, vec3<i32>(0i, 17094i, 1i), -995f, vec3<f32>(381f, 970f, -1000f))), Struct_2(1u, 0i, Struct_1(-466f, vec3<i32>(2147483647i, 15493i, 0i), 1000f, vec3<f32>(-697f, -791f, -178f)), Struct_1(1072f, vec3<i32>(-47360i, i32(-2147483648), -9809i), 117f, vec3<f32>(-212f, -311f, -1230f))), Struct_2(4294967295u, 0i, Struct_1(630f, vec3<i32>(1i, -2050i, 40480i), -619f, vec3<f32>(1000f, -944f, 2385f)), Struct_1(-521f, vec3<i32>(15374i, 2147483647i, 18743i), -2216f, vec3<f32>(1278f, -1495f, -803f))), Struct_2(0u, -31619i, Struct_1(-431f, vec3<i32>(i32(-2147483648), -32054i, 1i), 1000f, vec3<f32>(-2780f, 841f, -760f)), Struct_1(3540f, vec3<i32>(-1i, 1i, -1i), 1472f, vec3<f32>(-550f, 246f, -1839f))), Struct_2(23731u, -1i, Struct_1(-947f, vec3<i32>(2147483647i, 2147483647i, 0i), 198f, vec3<f32>(508f, -816f, 777f)), Struct_1(446f, vec3<i32>(1i, 15836i, -36766i), -1900f, vec3<f32>(-681f, 872f, -187f))), Struct_2(19288u, -1i, Struct_1(-1866f, vec3<i32>(12598i, 42788i, -1i), 2189f, vec3<f32>(-347f, 1115f, -1000f)), Struct_1(-159f, vec3<i32>(955i, -1i, -48860i), -3010f, vec3<f32>(-500f, -395f, -623f))), Struct_2(63343u, 12825i, Struct_1(-539f, vec3<i32>(11081i, -1i, 1i), -260f, vec3<f32>(2182f, -823f, -1828f)), Struct_1(-314f, vec3<i32>(2147483647i, -29306i, 29690i), 258f, vec3<f32>(1000f, 895f, 723f))), Struct_2(72098u, i32(-2147483648), Struct_1(-441f, vec3<i32>(1i, -12302i, -1i), -534f, vec3<f32>(1000f, 200f, 340f)), Struct_1(406f, vec3<i32>(50548i, 1i, 0i), -1289f, vec3<f32>(-2011f, -1803f, 759f))), Struct_2(4294967295u, 0i, Struct_1(-1120f, vec3<i32>(-10562i, 1i, 1i), -1000f, vec3<f32>(-727f, -468f, 869f)), Struct_1(-562f, vec3<i32>(-1i, 18686i, -40323i), 1442f, vec3<f32>(200f, 1213f, -160f))), Struct_2(4990u, i32(-2147483648), Struct_1(-199f, vec3<i32>(-1i, 1i, -6907i), -123f, vec3<f32>(377f, 298f, -378f)), Struct_1(351f, vec3<i32>(16757i, 0i, -1i), -1898f, vec3<f32>(608f, -1411f, -336f))), Struct_2(36896u, 13533i, Struct_1(1590f, vec3<i32>(40445i, -16805i, 2147483647i), 869f, vec3<f32>(126f, 154f, -2493f)), Struct_1(248f, vec3<i32>(-1i, 2147483647i, 6100i), -264f, vec3<f32>(-363f, 1140f, 1289f))), Struct_2(106595u, 60818i, Struct_1(342f, vec3<i32>(29067i, 39350i, 1i), -871f, vec3<f32>(558f, 1878f, 1000f)), Struct_1(1166f, vec3<i32>(-5807i, -29177i, 24460i), -1459f, vec3<f32>(876f, -1697f, 629f))), Struct_2(10093u, 2147483647i, Struct_1(879f, vec3<i32>(1i, 0i, i32(-2147483648)), -854f, vec3<f32>(-1160f, 314f, 1621f)), Struct_1(-2781f, vec3<i32>(-35306i, 1i, 4932i), -1000f, vec3<f32>(1144f, 1505f, 1446f))), Struct_2(0u, i32(-2147483648), Struct_1(-2800f, vec3<i32>(1i, 0i, i32(-2147483648)), 2192f, vec3<f32>(-517f, -1902f, 999f)), Struct_1(1176f, vec3<i32>(-1i, 27381i, 13438i), 227f, vec3<f32>(-1000f, 244f, 726f))), Struct_2(0u, 2147483647i, Struct_1(-1000f, vec3<i32>(31076i, -7989i, 12633i), -229f, vec3<f32>(750f, 864f, -1982f)), Struct_1(1202f, vec3<i32>(-35445i, i32(-2147483648), -24641i), -263f, vec3<f32>(-1255f, 609f, 284f))), Struct_2(26469u, i32(-2147483648), Struct_1(-1000f, vec3<i32>(66651i, 19001i, -53108i), -1491f, vec3<f32>(-1205f, 1000f, 110f)), Struct_1(-1111f, vec3<i32>(1i, 32919i, -1i), -1000f, vec3<f32>(224f, 1061f, -436f))), Struct_2(28624u, -11473i, Struct_1(-1291f, vec3<i32>(86517i, 1i, -22314i), -1426f, vec3<f32>(241f, 1054f, 1066f)), Struct_1(-1913f, vec3<i32>(-1i, -31071i, 24751i), -438f, vec3<f32>(-1000f, -272f, -1248f))), Struct_2(0u, -1i, Struct_1(221f, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), 317f, vec3<f32>(2091f, 528f, -466f)), Struct_1(1609f, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 1291f, vec3<f32>(-1000f, -696f, -1977f))), Struct_2(22520u, -46023i, Struct_1(-283f, vec3<i32>(19300i, i32(-2147483648), -1446i), 1089f, vec3<f32>(-133f, -741f, 1000f)), Struct_1(465f, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), -581f, vec3<f32>(-880f, -279f, -1000f))), Struct_2(8609u, i32(-2147483648), Struct_1(-345f, vec3<i32>(44566i, -5151i, 70015i), 841f, vec3<f32>(-1021f, -334f, 2224f)), Struct_1(-302f, vec3<i32>(-2453i, -57891i, -13907i), 372f, vec3<f32>(-281f, 1181f, 2479f))));

var<private> global2: Struct_3 = Struct_3(Struct_2(161u, i32(-2147483648), Struct_1(698f, vec3<i32>(13638i, -25526i, i32(-2147483648)), -1170f, vec3<f32>(-1484f, -990f, 1282f)), Struct_1(1000f, vec3<i32>(i32(-2147483648), i32(-2147483648), -22201i), -1000f, vec3<f32>(-1167f, -164f, -1381f))), vec4<bool>(false, false, false, false), 8633u, vec4<bool>(false, false, true, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(global2.c, global2.a.d.b.x, Struct_1(-821f, ~vec3<i32>(global2.a.b, _wgslsmith_sub_i32(-1i, 65763i), -2147483647i & arg_1.b.x), -1634f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -628f), arg_0.d.x))), global0[_wgslsmith_index_u32(arg_3.x, 18u)]);
    return global2.a.d.c;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    global2 = Struct_3(Struct_2(global2.a.a, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 1i), -19842i), Struct_1(1580f, vec3<i32>(1i, select(0i, 0i, global2.b.x), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(17469u, 18u)], global0[_wgslsmith_index_u32(5386u, 18u)], vec4<f32>(355f, global2.a.c.a, -1000f, 2425f), vec2<u32>(1u, global2.a.a))) * _wgslsmith_f_op_f32(-1149f + 511f)), vec3<f32>(1707f, global2.a.c.d.x, -541f)), global2.a.c), vec4<bool>(select(any(select(global2.d.xy, vec2<bool>(true, global2.d.x), true)), true, arg_0), !any(!vec4<bool>(global2.b.x, true, true, true)), !any(vec3<bool>(arg_0, false, global2.d.x)), true), countOneBits(1u), global2.b);
    global0 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-arg_1, _wgslsmith_mod_i32(arg_1, 4265i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, -14824i), u_input.a << (vec2<u32>(global2.c, global2.a.a) % vec2<u32>(32u))) ^ -u_input.c), ~firstLeadingBit(~select(vec2<i32>(global2.a.d.b.x, 1894i), u_input.c, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) * _wgslsmith_f_op_f32(-global2.a.c.a)) + global2.a.d.d.x));
    global2 = Struct_3(Struct_2(66518u, arg_1, global0[_wgslsmith_index_u32(global2.c | global2.c, 18u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f + var_1)), -global2.a.c.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-198f)), _wgslsmith_f_op_f32(min(global2.a.d.c, 1352f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -860f, -175f))))), global2.d, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global2.c, 66793u)), vec2<u32>(~global2.a.a, min(global2.a.a, global2.a.a))), vec4<bool>(true, any(!global2.b), !arg_0, true));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(max(0u, global2.a.a), global2.a.a, global2.a.a, ~global2.a.a), vec4<u32>(~17947u, 21072u, global2.c, global2.a.a | 34617u)), ~vec4<u32>(1u, min(global2.a.a, 15868u), 1u, _wgslsmith_mult_u32(0u, global2.a.a)), -(~u_input.c.x) == u_input.a.x), select((~vec4<u32>(global2.c, global2.a.a, 0u, global2.a.a) ^ vec4<u32>(global2.c, global2.c, global2.a.a, global2.c)) << (~(vec4<u32>(72536u, global2.c, global2.a.a, 29699u) << (vec4<u32>(1u, 4294967295u, global2.a.a, global2.c) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(49547u, 1u, 4294967295u, 72770u)), abs(vec4<u32>(global2.a.a, 0u, global2.c, 0u))), global2.b)), 18u)];
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    let var_0 = ~(~arg_0.a & _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.c, 0u), select(max(vec2<u32>(global2.a.a, 4294967295u), vec2<u32>(global2.c, global2.c)), ~vec2<u32>(1507u, 48411u), any(vec2<bool>(global2.d.x, false)))));
    global2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0 ^ global2.a.a, global2.a.a & 117056u, 4294967295u, arg_0.a), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_0, var_0, global2.a.a), vec4<u32>(arg_0.a, global2.a.a, var_0, 8250u))), abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 16380u, 4294967295u, arg_0.a), vec4<u32>(4294967295u, 4294967295u, global2.c, 0u))))), 23u)], select(vec4<bool>(any(!vec4<bool>(false, false, arg_1, false)), true, all(!vec4<bool>(true, arg_1, true, global2.d.x)), global2.b.x), !select(global2.b, vec4<bool>(arg_1, true, true, true), select(global2.d, global2.d, vec4<bool>(false, false, false, global2.d.x))), global2.d), _wgslsmith_mult_u32(0u, ~4294967295u), !global2.b);
    let var_1 = firstTrailingBit(~(arg_0.a << (var_0 % 32u)));
    var var_2 = _wgslsmith_f_op_f32(-1359f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.c.c * arg_0.d.d.x) + _wgslsmith_f_op_f32(-global2.a.c.c)));
    global1 = array<Struct_2, 23>();
    return Struct_3(Struct_2(var_0, (abs(u_input.b) | _wgslsmith_add_i32(arg_0.b, arg_0.c.b.x)) & -7275i, func_2(true, firstTrailingBit(~2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a, global2.c), 18u)]), global2.b, global2.a.a, select(vec4<bool>(true, true && (true == arg_1), !global2.d.x, all(vec2<bool>(global2.d.x, global2.d.x)) && false), vec4<bool>(global2.b.x, any(vec3<bool>(arg_1, arg_1, arg_1)), -430f > global2.a.d.c, arg_1), !global2.b));
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_2, 23>();
    let var_0 = global2.a.c.d;
    global1 = array<Struct_2, 23>();
    global2 = func_4(Struct_2(14203u, 277i, func_2(true, u_input.a.x), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -154f))), -global2.a.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, 1000f))), vec3<f32>(global2.a.c.a, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(step(-749f, global2.a.c.c))))), !global2.b.x);
    global2 = func_4(global1[_wgslsmith_index_u32(4294967295u, 23u)], all(global2.d));
    return abs(~(~(~global2.a.c.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.d.x;
    let var_1 = vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(-func_1(), vec3<i32>(-51979i, ~0i, -13538i)));
    var var_2 = func_4(Struct_2(~4294967295u, ~max(global2.a.c.b.x, global2.a.b) ^ global2.a.b, global0[_wgslsmith_index_u32(firstLeadingBit(~global2.c), 18u)], func_4(func_4(func_4(global1[_wgslsmith_index_u32(global2.c, 23u)], global2.b.x).a, !global2.d.x).a, false).a.c), global2.b.x).a;
    var var_3 = var_2.c.a >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.d.d.x * var_2.c.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(573f - 547f), _wgslsmith_f_op_f32(global2.a.c.a + global2.a.d.c)))), -251f);
    global0 = array<Struct_1, 18>();
    var_0 = !global2.b.x;
    var var_4 = countOneBits(vec3<i32>(_wgslsmith_add_i32(~(~u_input.c.x), _wgslsmith_sub_i32(-22247i, u_input.b)), -var_2.b, -11402i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.c.c)), -1096f), _wgslsmith_f_op_f32(sign(689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.d.d.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(556f, 1000f, -1437f) * _wgslsmith_f_op_vec3_f32(step(var_2.c.d, global2.a.c.d))) - vec3<f32>(global2.a.c.d.x, 331f, 663f))), _wgslsmith_div_u32(abs(~4294967295u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20648u, var_2.a, 25119u), vec4<u32>(0u, 1u, 32694u, 13031u)), _wgslsmith_mod_u32(global2.c, 64914u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.a.d.a)), -1000f, global2.a.c.d.x, _wgslsmith_f_op_f32(f32(-1f) * -869f)))));
}

