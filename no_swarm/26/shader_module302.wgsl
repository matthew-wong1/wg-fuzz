struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec2<i32>(i32(-2147483648), 10933i), true, Struct_3(true, Struct_1(4294967295u, vec3<u32>(1u, 46842u, 1u), 1910f, 1048f, vec2<u32>(1u, 329u)), vec2<u32>(1u, 24947u), Struct_2(vec3<i32>(1i, 53064i, -9932i), 119f)), -251f), Struct_5(vec2<i32>(i32(-2147483648), 45584i), true, Struct_3(false, Struct_1(1u, vec3<u32>(45597u, 21449u, 1u), 1423f, -203f, vec2<u32>(4294967295u, 827u)), vec2<u32>(13223u, 36341u), Struct_2(vec3<i32>(-38235i, 55630i, -25464i), 547f)), -1492f), Struct_5(vec2<i32>(7278i, -24716i), true, Struct_3(false, Struct_1(85914u, vec3<u32>(0u, 3543u, 62929u), 166f, -1000f, vec2<u32>(0u, 4294967295u)), vec2<u32>(58679u, 4294967295u), Struct_2(vec3<i32>(-1i, 13431i, i32(-2147483648)), 1051f)), -602f), Struct_5(vec2<i32>(0i, 43632i), false, Struct_3(false, Struct_1(4294967295u, vec3<u32>(7231u, 28814u, 9126u), 278f, 523f, vec2<u32>(7236u, 4294967295u)), vec2<u32>(4294967295u, 49673u), Struct_2(vec3<i32>(-10814i, -1i, -1i), 1656f)), 221f), Struct_5(vec2<i32>(24422i, 49325i), false, Struct_3(true, Struct_1(1u, vec3<u32>(5710u, 1u, 91629u), -1252f, 2112f, vec2<u32>(20715u, 16003u)), vec2<u32>(4294967295u, 25442u), Struct_2(vec3<i32>(0i, -5214i, -18252i), 2802f)), 1499f), Struct_5(vec2<i32>(7207i, 2147483647i), true, Struct_3(true, Struct_1(0u, vec3<u32>(0u, 0u, 49637u), -163f, 618f, vec2<u32>(34416u, 1u)), vec2<u32>(33338u, 1u), Struct_2(vec3<i32>(-85210i, 0i, 39950i), -1047f)), -1000f), Struct_5(vec2<i32>(-11928i, -34924i), true, Struct_3(true, Struct_1(4294967295u, vec3<u32>(20690u, 1u, 0u), 200f, 475f, vec2<u32>(4294967295u, 64950u)), vec2<u32>(0u, 64716u), Struct_2(vec3<i32>(-42198i, -25450i, 1i), 554f)), -864f), Struct_5(vec2<i32>(-17302i, -1i), false, Struct_3(false, Struct_1(65471u, vec3<u32>(40820u, 1u, 1u), -423f, -1355f, vec2<u32>(0u, 24200u)), vec2<u32>(0u, 17076u), Struct_2(vec3<i32>(i32(-2147483648), -1i, -46142i), -865f)), 239f), Struct_5(vec2<i32>(-1i, 25376i), false, Struct_3(true, Struct_1(24232u, vec3<u32>(50931u, 4294967295u, 83246u), 321f, -750f, vec2<u32>(62405u, 42755u)), vec2<u32>(111177u, 0u), Struct_2(vec3<i32>(2147483647i, 17342i, 2147483647i), -1018f)), 1971f), Struct_5(vec2<i32>(2147483647i, 3859i), true, Struct_3(false, Struct_1(70271u, vec3<u32>(4294967295u, 21332u, 1u), -417f, -368f, vec2<u32>(8757u, 42900u)), vec2<u32>(1u, 1u), Struct_2(vec3<i32>(2147483647i, 0i, 20681i), -729f)), 237f), Struct_5(vec2<i32>(1i, -31822i), false, Struct_3(false, Struct_1(2757u, vec3<u32>(0u, 4294967295u, 5906u), -247f, 657f, vec2<u32>(1u, 67482u)), vec2<u32>(0u, 1u), Struct_2(vec3<i32>(2147483647i, 0i, 36106i), -1306f)), 1000f), Struct_5(vec2<i32>(63645i, 7156i), true, Struct_3(false, Struct_1(1u, vec3<u32>(1u, 32907u, 1u), -720f, 375f, vec2<u32>(0u, 16444u)), vec2<u32>(8211u, 4294967295u), Struct_2(vec3<i32>(i32(-2147483648), 5805i, 4628i), 2420f)), 471f), Struct_5(vec2<i32>(37771i, -29171i), false, Struct_3(true, Struct_1(50392u, vec3<u32>(1u, 1u, 4294967295u), 413f, -100f, vec2<u32>(46693u, 64621u)), vec2<u32>(5381u, 29701u), Struct_2(vec3<i32>(7596i, 1i, 0i), -1000f)), -579f), Struct_5(vec2<i32>(-1i, i32(-2147483648)), false, Struct_3(true, Struct_1(28102u, vec3<u32>(4294967295u, 1u, 0u), 739f, 180f, vec2<u32>(71688u, 1u)), vec2<u32>(21875u, 37866u), Struct_2(vec3<i32>(2147483647i, -6421i, 0i), 525f)), 273f), Struct_5(vec2<i32>(5437i, -42759i), false, Struct_3(false, Struct_1(52946u, vec3<u32>(46495u, 0u, 1u), 261f, 515f, vec2<u32>(12443u, 1u)), vec2<u32>(68679u, 1u), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 25018i), -778f)), -415f), Struct_5(vec2<i32>(22399i, 82039i), true, Struct_3(true, Struct_1(4294967295u, vec3<u32>(101533u, 4294967295u, 35750u), -280f, -445f, vec2<u32>(59337u, 4294967295u)), vec2<u32>(35340u, 0u), Struct_2(vec3<i32>(-1i, -68539i, 11851i), -2787f)), 946f), Struct_5(vec2<i32>(-1i, -3508i), false, Struct_3(true, Struct_1(20587u, vec3<u32>(4294967295u, 31112u, 30827u), 355f, 1000f, vec2<u32>(47178u, 4294967295u)), vec2<u32>(4294967295u, 19335u), Struct_2(vec3<i32>(2147483647i, -20627i, -1i), 918f)), 512f), Struct_5(vec2<i32>(0i, -49648i), true, Struct_3(true, Struct_1(0u, vec3<u32>(1u, 0u, 4294967295u), -551f, 2274f, vec2<u32>(14909u, 4294967295u)), vec2<u32>(1u, 4294967295u), Struct_2(vec3<i32>(-1i, 0i, -64209i), 2515f)), 698f), Struct_5(vec2<i32>(0i, -9598i), true, Struct_3(false, Struct_1(4294967295u, vec3<u32>(0u, 9331u, 40110u), 1810f, -529f, vec2<u32>(20010u, 0u)), vec2<u32>(75641u, 24473u), Struct_2(vec3<i32>(0i, 2147483647i, 9017i), -1341f)), -871f), Struct_5(vec2<i32>(0i, 2147483647i), false, Struct_3(true, Struct_1(0u, vec3<u32>(54242u, 4294967295u, 1u), 826f, -148f, vec2<u32>(17962u, 26405u)), vec2<u32>(76860u, 17935u), Struct_2(vec3<i32>(2839i, -63740i, i32(-2147483648)), -1599f)), -946f), Struct_5(vec2<i32>(2147483647i, -1i), false, Struct_3(false, Struct_1(2504u, vec3<u32>(15989u, 27476u, 82881u), -885f, -1125f, vec2<u32>(42900u, 4294967295u)), vec2<u32>(7359u, 1u), Struct_2(vec3<i32>(-12282i, 0i, i32(-2147483648)), 1000f)), -1640f), Struct_5(vec2<i32>(-26995i, 42337i), false, Struct_3(true, Struct_1(11930u, vec3<u32>(0u, 24275u, 11072u), 1515f, -718f, vec2<u32>(11045u, 10820u)), vec2<u32>(4294967295u, 28147u), Struct_2(vec3<i32>(-34040i, 35241i, 43300i), -497f)), -190f), Struct_5(vec2<i32>(0i, -1163i), true, Struct_3(false, Struct_1(0u, vec3<u32>(4294967295u, 9174u, 96688u), 145f, 1573f, vec2<u32>(117189u, 48198u)), vec2<u32>(63009u, 1180u), Struct_2(vec3<i32>(47511i, i32(-2147483648), 1i), -879f)), 439f), Struct_5(vec2<i32>(-1i, 37287i), true, Struct_3(false, Struct_1(27805u, vec3<u32>(87907u, 67707u, 18871u), 1395f, 1099f, vec2<u32>(1197u, 1u)), vec2<u32>(64890u, 47019u), Struct_2(vec3<i32>(-15096i, i32(-2147483648), -28375i), -1000f)), 1000f), Struct_5(vec2<i32>(13839i, 0i), true, Struct_3(false, Struct_1(27499u, vec3<u32>(13443u, 16841u, 4294967295u), 385f, -1261f, vec2<u32>(20472u, 0u)), vec2<u32>(0u, 0u), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), 1000f)), 575f), Struct_5(vec2<i32>(2147483647i, 33198i), false, Struct_3(false, Struct_1(53366u, vec3<u32>(86042u, 0u, 4294967295u), 293f, 149f, vec2<u32>(7721u, 0u)), vec2<u32>(3825u, 44641u), Struct_2(vec3<i32>(-29316i, 1i, -10494i), 999f)), 750f), Struct_5(vec2<i32>(2147483647i, 1i), false, Struct_3(false, Struct_1(21912u, vec3<u32>(1u, 66108u, 4294967295u), 3325f, 1218f, vec2<u32>(1u, 0u)), vec2<u32>(33062u, 4294967295u), Struct_2(vec3<i32>(39933i, i32(-2147483648), i32(-2147483648)), 238f)), -526f), Struct_5(vec2<i32>(-14681i, 42077i), true, Struct_3(true, Struct_1(4294967295u, vec3<u32>(1u, 73256u, 4294967295u), 570f, -1903f, vec2<u32>(57490u, 1u)), vec2<u32>(4294967295u, 1u), Struct_2(vec3<i32>(2147483647i, 2147483647i, 55446i), 403f)), 609f), Struct_5(vec2<i32>(1i, 2147483647i), false, Struct_3(true, Struct_1(64908u, vec3<u32>(44003u, 0u, 632u), 679f, 495f, vec2<u32>(4294967295u, 44247u)), vec2<u32>(0u, 0u), Struct_2(vec3<i32>(i32(-2147483648), 1i, -20723i), 571f)), 998f), Struct_5(vec2<i32>(-1i, 0i), false, Struct_3(false, Struct_1(403u, vec3<u32>(70124u, 28792u, 12915u), 1553f, -1588f, vec2<u32>(1046u, 4294967295u)), vec2<u32>(0u, 4294967295u), Struct_2(vec3<i32>(48201i, 0i, -1i), 951f)), 1236f), Struct_5(vec2<i32>(-20331i, 63213i), true, Struct_3(true, Struct_1(1u, vec3<u32>(4613u, 35160u, 1u), 808f, -623f, vec2<u32>(19261u, 1u)), vec2<u32>(4294967295u, 1u), Struct_2(vec3<i32>(-44404i, -58859i, 0i), 1179f)), 595f));

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 24269i);

var<private> global2: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(1u, ~(~abs(~vec3<u32>(u_input.a, 43544u, 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1154f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1731f))), 1657f, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(862f * 526f) + -1948f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1088f))))), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(17389u, 4644u), vec2<u32>(45654u, u_input.a) & vec2<u32>(24909u, u_input.a), vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(56495u, u_input.a))));
    global0 = array<Struct_5, 31>();
    let var_1 = var_0;
    global0 = array<Struct_5, 31>();
    var var_2 = -_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, global1.x, ~global1.x, i32(-1i) * -1i), reverseBits(vec4<i32>(abs(0i), _wgslsmith_mult_i32(-3123i, global1.x), -2147483647i, -global1.x)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(var_1.d * var_1.d), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)) | true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-207f, -1550f)) - var_1.c);
}

fn func_2() -> Struct_4 {
    let var_0 = ~2275u;
    global0 = array<Struct_5, 31>();
    return Struct_4(Struct_1(select(u_input.a, ~0u, func_3()), ~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a, var_0, 44170u)), vec3<u32>(62912u, u_input.a, var_0)), _wgslsmith_f_op_f32(-1778f * _wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(sign(1033f)))), _wgslsmith_f_op_f32(f32(-1f) * -458f), vec2<u32>(_wgslsmith_sub_u32(var_0, var_0), 0u) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.a, 6547u), ~u_input.a) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> f32 {
    global0 = array<Struct_5, 31>();
    global0 = array<Struct_5, 31>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -969f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))) + arg_0.x)));
    var var_1 = func_2();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-621f, -2126f, 317f, -1467f), vec4<f32>(-861f, 1000f, -120f, -186f)) * vec4<f32>(-147f, 611f, 535f, 1476f)), _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, global1.x, 2674i), vec3<i32>(global1.x, 0i, -855i)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1247f * 502f), _wgslsmith_f_op_f32(1000f + -227f))) + _wgslsmith_f_op_f32(-1f)), func_2().a, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, u_input.a) ^ vec2<u32>(0u, 25585u)), ~countOneBits(vec2<u32>(11966u, u_input.a)), ~(~vec2<u32>(4294967295u, 1u) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), Struct_2(~vec3<i32>(global1.x, select(global1.x, global1.x, true), -41237i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-298f, 433f, true)) + _wgslsmith_f_op_f32(1101f - -1494f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(305f, -273f)))));
    global1 = vec3<i32>(~(-global1.x), var_0.d.a.x, -22582i & _wgslsmith_sub_i32(~(i32(-1i) * -31004i), -1i | _wgslsmith_dot_vec3_i32(var_0.d.a, vec3<i32>(0i, global1.x, -65405i))));
    var_0 = Struct_3(var_0.a, Struct_1(abs(var_0.b.e.x), _wgslsmith_add_vec3_u32(var_0.b.b, ~select(vec3<u32>(u_input.a, var_0.b.b.x, u_input.a), var_0.b.b, false)), var_0.b.d, var_0.d.b, ~var_0.c), ~abs(vec2<u32>(2441u ^ var_0.b.e.x, u_input.a)), var_0.d);
    global2 = all(select(vec3<bool>(true, all(vec3<bool>(false, var_0.a, var_0.a)), var_0.a), vec3<bool>(var_0.a, var_0.c.x >= (var_0.b.b.x ^ 22307u), !(var_0.d.a.x != -2147483647i)), vec3<bool>(false, true, true)));
    let var_1 = Struct_2(-(~vec3<i32>(~var_0.d.a.x, _wgslsmith_mult_i32(global1.x, -75537i), reverseBits(9333i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-803f, _wgslsmith_f_op_f32(413f - 2230f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.d.b, var_0.b.d))))))));
    var var_2 = !select(!vec4<bool>(2147483647i <= var_0.d.a.x, false, var_0.a, true), !vec4<bool>(false, false, false, 0u > u_input.a), var_0.a);
    var_2 = !select(select(select(!vec4<bool>(var_0.a, true, var_0.a, var_0.a), select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(var_2.x, var_0.a, true, var_2.x), vec4<bool>(var_2.x, true, false, var_2.x)), select(vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(true, false, var_0.a, true), var_2.x)), select(!vec4<bool>(false, false, true, var_0.a), select(vec4<bool>(var_0.a, false, false, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), false), vec4<bool>(var_0.a, var_2.x, true, var_2.x)), var_0.a), select(vec4<bool>(var_0.a && false, var_0.a, any(var_2.wyx), var_2.x && true), select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(true, var_0.a, false, false), all(vec4<bool>(false, true, var_2.x, true))), vec4<bool>(true, true, true, true)), select(true, var_2.x, true));
    var var_3 = Struct_2(vec3<i32>(0i, var_1.a.x | reverseBits(1i), 30388i), var_0.d.b);
    let var_4 = select(var_2.xxy, vec3<bool>(true, var_0.a, var_2.x), all(select(select(!vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(var_2.x, var_0.a, true, false), vec4<bool>(false, var_0.a, true, true)), !select(vec4<bool>(var_0.a, var_2.x, false, true), vec4<bool>(var_2.x, var_0.a, true, var_2.x), vec4<bool>(true, true, var_0.a, var_0.a)), !var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(vec3<u32>(var_0.c.x, 52030u, 1u), _wgslsmith_add_vec3_u32(var_0.b.b, vec3<u32>(u_input.a, var_0.c.x, 4294967295u)))), _wgslsmith_mult_u32(var_0.c.x, var_0.c.x & _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 1u, u_input.a, 55682u), min(vec4<u32>(86928u, var_0.b.a, var_0.c.x, var_0.c.x), vec4<u32>(6086u, 52206u, 58142u, 4307u)))));
}

