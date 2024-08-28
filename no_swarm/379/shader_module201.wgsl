struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-736f, 275f, -848f);

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(1u, Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec4<bool>(false, true, false, false), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), -1094f, Struct_1(vec2<u32>(37428u, 63696u))), Struct_2(Struct_1(vec2<u32>(1u, 9835u)), vec4<bool>(true, false, false, false), vec4<u32>(25702u, 19515u, 44594u, 25215u), -219f, Struct_1(vec2<u32>(3217u, 24176u))), vec2<u32>(1u, 4294967295u), true), Struct_3(22217u, Struct_2(Struct_1(vec2<u32>(78911u, 1u)), vec4<bool>(true, false, false, false), vec4<u32>(3361u, 4294967295u, 0u, 1u), 533f, Struct_1(vec2<u32>(38574u, 20977u))), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), vec4<bool>(true, false, true, false), vec4<u32>(1u, 4294967295u, 29198u, 1u), -1000f, Struct_1(vec2<u32>(1u, 1u))), vec2<u32>(815u, 22868u), false), Struct_3(0u, Struct_2(Struct_1(vec2<u32>(26237u, 46867u)), vec4<bool>(false, true, true, false), vec4<u32>(0u, 0u, 4294967295u, 70094u), -1555f, Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(1194u, 13926u)), vec4<bool>(true, false, false, false), vec4<u32>(73008u, 4294967295u, 0u, 51084u), 892f, Struct_1(vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(49108u, 3316u), false), Struct_3(30068u, Struct_2(Struct_1(vec2<u32>(17924u, 123311u)), vec4<bool>(false, true, true, true), vec4<u32>(50994u, 17466u, 1u, 1u), -810f, Struct_1(vec2<u32>(56501u, 60402u))), Struct_2(Struct_1(vec2<u32>(63107u, 1u)), vec4<bool>(false, true, false, true), vec4<u32>(0u, 1u, 38493u, 1u), -456f, Struct_1(vec2<u32>(2506u, 20830u))), vec2<u32>(36209u, 48026u), true), Struct_3(18326u, Struct_2(Struct_1(vec2<u32>(1u, 19070u)), vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, 34743u, 84015u, 5910u), 674f, Struct_1(vec2<u32>(515u, 0u))), Struct_2(Struct_1(vec2<u32>(5980u, 3428u)), vec4<bool>(true, true, true, true), vec4<u32>(22100u, 4294967295u, 95492u, 22942u), 803f, Struct_1(vec2<u32>(12739u, 11050u))), vec2<u32>(0u, 1u), false), Struct_3(75451u, Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec4<bool>(true, false, true, true), vec4<u32>(7193u, 4294967295u, 43141u, 1u), 1000f, Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 22867u)), vec4<bool>(true, true, false, true), vec4<u32>(43775u, 0u, 1u, 1u), 685f, Struct_1(vec2<u32>(1u, 0u))), vec2<u32>(1u, 91279u), false), Struct_3(1u, Struct_2(Struct_1(vec2<u32>(0u, 19747u)), vec4<bool>(true, false, true, false), vec4<u32>(57613u, 0u, 61249u, 34823u), 676f, Struct_1(vec2<u32>(3993u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec4<bool>(false, false, false, false), vec4<u32>(14676u, 2004u, 0u, 1u), 428f, Struct_1(vec2<u32>(1u, 63709u))), vec2<u32>(1u, 58052u), true), Struct_3(47780u, Struct_2(Struct_1(vec2<u32>(37334u, 0u)), vec4<bool>(true, false, false, false), vec4<u32>(41252u, 0u, 47767u, 70605u), 604f, Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 58417u)), vec4<bool>(false, true, false, false), vec4<u32>(41981u, 23995u, 4294967295u, 0u), 289f, Struct_1(vec2<u32>(0u, 0u))), vec2<u32>(4294967295u, 52561u), false), Struct_3(4294967295u, Struct_2(Struct_1(vec2<u32>(5079u, 0u)), vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 23049u, 0u, 1u), -150f, Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(16062u, 7102u)), vec4<bool>(false, true, true, false), vec4<u32>(1u, 4294967295u, 27292u, 59661u), -330f, Struct_1(vec2<u32>(1u, 10442u))), vec2<u32>(81661u, 29735u), false), Struct_3(1u, Struct_2(Struct_1(vec2<u32>(1u, 36585u)), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 23304u, 6908u, 31270u), 571f, Struct_1(vec2<u32>(11775u, 0u))), Struct_2(Struct_1(vec2<u32>(20459u, 71130u)), vec4<bool>(false, false, false, true), vec4<u32>(1u, 57179u, 4294967295u, 0u), 231f, Struct_1(vec2<u32>(7750u, 33186u))), vec2<u32>(3279u, 50114u), false), Struct_3(117209u, Struct_2(Struct_1(vec2<u32>(0u, 0u)), vec4<bool>(true, true, true, true), vec4<u32>(1u, 32978u, 16918u, 23480u), -213f, Struct_1(vec2<u32>(1u, 53293u))), Struct_2(Struct_1(vec2<u32>(25446u, 27931u)), vec4<bool>(true, true, false, true), vec4<u32>(51409u, 19155u, 1u, 37108u), -909f, Struct_1(vec2<u32>(11758u, 39983u))), vec2<u32>(27760u, 58758u), true), Struct_3(14255u, Struct_2(Struct_1(vec2<u32>(14021u, 0u)), vec4<bool>(false, false, true, false), vec4<u32>(0u, 110782u, 0u, 1u), -551f, Struct_1(vec2<u32>(74470u, 12396u))), Struct_2(Struct_1(vec2<u32>(23277u, 4294967295u)), vec4<bool>(true, false, false, true), vec4<u32>(0u, 39174u, 32672u, 9048u), -1336f, Struct_1(vec2<u32>(10047u, 0u))), vec2<u32>(63762u, 4294967295u), false), Struct_3(1u, Struct_2(Struct_1(vec2<u32>(81251u, 17755u)), vec4<bool>(true, false, true, true), vec4<u32>(73716u, 96800u, 4294967295u, 4294967295u), -871f, Struct_1(vec2<u32>(24375u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec4<bool>(false, true, false, true), vec4<u32>(1u, 26932u, 0u, 21040u), -647f, Struct_1(vec2<u32>(8289u, 26162u))), vec2<u32>(15176u, 34783u), true), Struct_3(25247u, Struct_2(Struct_1(vec2<u32>(0u, 53513u)), vec4<bool>(true, true, true, true), vec4<u32>(30701u, 16651u, 1u, 37142u), 1535f, Struct_1(vec2<u32>(20454u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(1u, 23808u)), vec4<bool>(false, false, true, true), vec4<u32>(1u, 58706u, 28502u, 1u), 1000f, Struct_1(vec2<u32>(34195u, 10607u))), vec2<u32>(4294967295u, 4294967295u), false), Struct_3(32340u, Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), vec4<bool>(true, false, true, false), vec4<u32>(10664u, 29980u, 900u, 21702u), -2063f, Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(27010u, 13928u)), vec4<bool>(true, true, true, true), vec4<u32>(4287u, 4294967295u, 0u, 1u), -513f, Struct_1(vec2<u32>(19824u, 4294967295u))), vec2<u32>(1u, 37784u), true), Struct_3(111651u, Struct_2(Struct_1(vec2<u32>(0u, 53413u)), vec4<bool>(true, true, true, true), vec4<u32>(0u, 1u, 8684u, 1289u), 1267f, Struct_1(vec2<u32>(0u, 0u))), Struct_2(Struct_1(vec2<u32>(61719u, 8059u)), vec4<bool>(false, false, true, false), vec4<u32>(47162u, 517u, 59500u, 59718u), 519f, Struct_1(vec2<u32>(0u, 54772u))), vec2<u32>(0u, 1u), false), Struct_3(18341u, Struct_2(Struct_1(vec2<u32>(88754u, 33409u)), vec4<bool>(true, true, false, false), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), 333f, Struct_1(vec2<u32>(63365u, 338u))), Struct_2(Struct_1(vec2<u32>(0u, 33996u)), vec4<bool>(false, true, true, true), vec4<u32>(1u, 27848u, 0u, 16760u), -1244f, Struct_1(vec2<u32>(34911u, 59421u))), vec2<u32>(48250u, 84105u), false), Struct_3(60598u, Struct_2(Struct_1(vec2<u32>(16223u, 9473u)), vec4<bool>(false, false, true, false), vec4<u32>(31209u, 1u, 35604u, 19287u), -194f, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(60570u, 4294967295u)), vec4<bool>(true, true, false, true), vec4<u32>(27115u, 0u, 1u, 4294967295u), -412f, Struct_1(vec2<u32>(1083u, 1u))), vec2<u32>(42961u, 22677u), true), Struct_3(10930u, Struct_2(Struct_1(vec2<u32>(4294967295u, 27218u)), vec4<bool>(false, true, false, false), vec4<u32>(1u, 29362u, 10043u, 6860u), -1258f, Struct_1(vec2<u32>(1u, 94490u))), Struct_2(Struct_1(vec2<u32>(1u, 40143u)), vec4<bool>(false, false, true, false), vec4<u32>(28875u, 40579u, 95632u, 0u), 1683f, Struct_1(vec2<u32>(4294967295u, 5386u))), vec2<u32>(46894u, 5501u), false), Struct_3(84587u, Struct_2(Struct_1(vec2<u32>(18443u, 0u)), vec4<bool>(false, true, false, true), vec4<u32>(0u, 35649u, 68799u, 11818u), 664f, Struct_1(vec2<u32>(25354u, 48216u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 3618u)), vec4<bool>(true, true, false, false), vec4<u32>(24540u, 4294967295u, 1u, 19052u), -742f, Struct_1(vec2<u32>(1u, 0u))), vec2<u32>(1u, 15460u), true), Struct_3(37563u, Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec4<bool>(false, false, true, true), vec4<u32>(23460u, 4294967295u, 4294967295u, 4294967295u), -889f, Struct_1(vec2<u32>(0u, 47598u))), Struct_2(Struct_1(vec2<u32>(0u, 7242u)), vec4<bool>(true, true, true, false), vec4<u32>(45859u, 17576u, 18088u, 7291u), 1258f, Struct_1(vec2<u32>(30078u, 4294967295u))), vec2<u32>(1u, 0u), true), Struct_3(4294967295u, Struct_2(Struct_1(vec2<u32>(4576u, 39741u)), vec4<bool>(false, true, false, true), vec4<u32>(18731u, 33344u, 14140u, 2249u), 185f, Struct_1(vec2<u32>(0u, 29898u))), Struct_2(Struct_1(vec2<u32>(0u, 45739u)), vec4<bool>(true, true, true, false), vec4<u32>(50423u, 23610u, 91424u, 30492u), -545f, Struct_1(vec2<u32>(85710u, 27443u))), vec2<u32>(18938u, 21843u), false), Struct_3(0u, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<bool>(true, false, true, true), vec4<u32>(4294967295u, 26353u, 0u, 0u), -1213f, Struct_1(vec2<u32>(18804u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(33937u, 30797u)), vec4<bool>(false, true, false, true), vec4<u32>(0u, 0u, 7934u, 24028u), 605f, Struct_1(vec2<u32>(4294967295u, 1u))), vec2<u32>(1u, 4294967295u), false), Struct_3(40595u, Struct_2(Struct_1(vec2<u32>(44463u, 37495u)), vec4<bool>(false, false, true, true), vec4<u32>(1u, 22075u, 33751u, 0u), 487f, Struct_1(vec2<u32>(1u, 14061u))), Struct_2(Struct_1(vec2<u32>(6260u, 4294967295u)), vec4<bool>(false, false, false, true), vec4<u32>(0u, 4294967295u, 15614u, 9023u), -902f, Struct_1(vec2<u32>(1u, 1u))), vec2<u32>(44290u, 44075u), true), Struct_3(4294967295u, Struct_2(Struct_1(vec2<u32>(1u, 75906u)), vec4<bool>(true, true, true, true), vec4<u32>(0u, 4294967295u, 194u, 1u), -396f, Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(2097u, 16656u)), vec4<bool>(true, true, true, false), vec4<u32>(38124u, 11521u, 1610u, 7697u), -131f, Struct_1(vec2<u32>(0u, 31849u))), vec2<u32>(0u, 66792u), true));

var<private> global3: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-24406i, 37516i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-4033i, 17910i), vec2<i32>(0i, -16058i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-2546i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(32487i, 20505i), vec2<i32>(-61176i, -26868i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(43436i, 0i), vec2<i32>(2147483647i, 4094i), vec2<i32>(-23402i, 0i), vec2<i32>(-32899i, 2147483647i), vec2<i32>(-60954i, -1773i), vec2<i32>(-86202i, 0i), vec2<i32>(-1i, 41260i), vec2<i32>(10893i, 2147483647i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<u32> {
    global2 = array<Struct_3, 25>();
    var var_0 = vec3<i32>(abs(u_input.a.x) | -66338i, abs(3417i), -arg_2.x);
    var var_1 = Struct_2(Struct_1(~(~vec2<u32>(arg_1.a.x, arg_0.c.c.x))), select(arg_0.c.b, !(!vec4<bool>(false, arg_0.e, arg_0.c.b.x, false)), select(arg_0.e == arg_0.c.b.x, false, global1.a.x != 52087u) | true), arg_0.b.c, -430f, Struct_1(~reverseBits(arg_0.d)));
    let var_2 = ~u_input.a.x;
    var var_3 = min(global1.a, var_1.c.xzz);
    return abs(var_3.xy);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    let var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(abs(~countOneBits(17620u)), 25u)];
    global2 = array<Struct_3, 25>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_0.d, _wgslsmith_div_f32(arg_0.d, global1.c.x)))))));
    global3 = array<vec2<i32>, 20>();
    return -1000f;
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = vec3<bool>(true, false, false);
    var var_1 = _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, 1u), ~vec2<u32>(global1.a.x, global1.b.x))), !(!(!vec4<bool>(var_0.x, true, false, false))), vec4<u32>(_wgslsmith_add_u32(global1.b.x, global1.a.x) << (4294967295u % 32u), global1.b.x, _wgslsmith_div_u32(1u << (global1.a.x % 32u), 0u), ~(~global1.a.x)), -1514f, Struct_1(func_3(global2[_wgslsmith_index_u32(45146u, 25u)], Struct_1(global1.a.zy), ~vec2<i32>(u_input.a.x, -54405i)))), !vec3<bool>(var_0.x, false, var_0.x), abs(global1.b)));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.c, vec3<f32>(_wgslsmith_f_op_f32(-620f - global1.c.x), 774f, _wgslsmith_f_op_f32(-arg_0)))))));
    global1 = Struct_4(countOneBits(_wgslsmith_mod_vec3_u32(global1.a, min(vec3<u32>(global1.a.x, global1.b.x, global1.b.x), vec3<u32>(global1.a.x, global1.b.x, global1.b.x)))) & global1.a, _wgslsmith_sub_vec2_u32(vec2<u32>(min(global1.b.x ^ 50345u, global1.a.x), countOneBits(~39393u)), global1.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1.d.wzx, vec3<f32>(arg_0, -118f, 264f))), _wgslsmith_f_op_vec3_f32(global1.c + global1.d.wwz))))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 457f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(1000f)))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.d.x)) - global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(-global1.d.wxw);
    return Struct_4(vec3<u32>(abs(max(global1.a.x, 1u)) ^ 8846u, ~(~global1.b.x), 11548u), global1.a.xz, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1259f)), arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.d.x)) + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f + _wgslsmith_f_op_f32(-681f - 844f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(global0.x + global1.d.x)))), _wgslsmith_f_op_f32(-global0.x), -790f, -1094f));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<f32>) -> i32 {
    global2 = array<Struct_3, 25>();
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~global1.a, ~vec3<u32>(global1.a.x, arg_0.e.a.x, 23079u)), ~vec3<u32>(arg_0.a.a.x, global1.b.x, 7195u)) <= ~arg_0.a.a.x;
    global1 = func_2(arg_2.x);
    global1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-382f + 1016f) + arg_0.d), arg_2.x)));
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, global3[_wgslsmith_index_u32(1u, 20u)]) << (_wgslsmith_sub_vec2_u32(global1.a.xx, vec2<u32>(33580u, 0u)) % vec2<u32>(32u)), global3[_wgslsmith_index_u32(~global1.a.x, 20u)]);
    return _wgslsmith_sub_i32(0i, 60451i) | var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_sub_i32(6218i, func_1(Struct_2(Struct_1(global1.a.xz), vec4<bool>(false, false, true, false), vec4<u32>(global1.b.x, global1.b.x, global1.a.x, global1.a.x), global0.x, Struct_1(vec2<u32>(global1.a.x, global1.b.x))), vec4<i32>(-36993i, u_input.a.x, -79909i, u_input.a.x), global1.d.yx)), func_1(Struct_2(Struct_1(global1.a.yz), vec4<bool>(true, true, true, false), firstTrailingBit(vec4<u32>(12030u, 23986u, global1.a.x, 4294967295u)), global0.x, Struct_1(global1.a.yx)), ~select(vec4<i32>(-58i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(27816i, -1i, -63647i, -2147483647i), vec4<bool>(false, false, false, false)), global1.c.xy), _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 47229i, u_input.a.x, -3505i), vec4<i32>(u_input.a.x, u_input.a.x, -23414i, u_input.a.x), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-43236i, -2147483647i, 2147483647i, u_input.a.x), vec4<i32>(-3093i, 0i, 2147483647i, 2147483647i))), -2147483647i), -u_input.a.x), global1.b.x, ~(~(_wgslsmith_sub_vec2_u32(vec2<u32>(8178u, 4294967295u), vec2<u32>(global1.a.x, 0u)) | ~vec2<u32>(global1.b.x, global1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))));
}

