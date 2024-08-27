struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(1u, Struct_3(vec2<i32>(2147483647i, 24220i), vec2<u32>(2369u, 78188u), Struct_2(vec4<i32>(0i, 1i, i32(-2147483648), -9511i), -234f, false, vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 56965u, 0u)), -1i, vec4<bool>(false, true, true, true)), Struct_1(false, vec2<u32>(1u, 0u), -38329i), Struct_2(vec4<i32>(-1i, -14309i, -1180i, -15539i), -739f, true, vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 4294967295u, 33860u))), Struct_4(0u, Struct_3(vec2<i32>(2147483647i, -45677i), vec2<u32>(0u, 33469u), Struct_2(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -22681i), 822f, false, vec2<bool>(true, false), vec4<u32>(0u, 0u, 4294967295u, 72009u)), -37398i, vec4<bool>(true, true, true, false)), Struct_1(false, vec2<u32>(1u, 21701u), -10342i), Struct_2(vec4<i32>(2147483647i, -21388i, 59943i, 1i), 926f, false, vec2<bool>(false, false), vec4<u32>(4294967295u, 23u, 26682u, 1453u))), Struct_4(62126u, Struct_3(vec2<i32>(-16270i, 0i), vec2<u32>(72256u, 30510u), Struct_2(vec4<i32>(i32(-2147483648), 71357i, 13375i, i32(-2147483648)), -2124f, false, vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 52137u, 14878u)), -1i, vec4<bool>(false, true, false, true)), Struct_1(true, vec2<u32>(0u, 32243u), 0i), Struct_2(vec4<i32>(43833i, i32(-2147483648), -84144i, 2147483647i), 717f, true, vec2<bool>(true, true), vec4<u32>(2174u, 1u, 9506u, 72591u))), Struct_4(506u, Struct_3(vec2<i32>(2147483647i, -1i), vec2<u32>(1u, 64204u), Struct_2(vec4<i32>(36062i, 1i, -15024i, -66592i), 1255f, false, vec2<bool>(false, true), vec4<u32>(46592u, 31019u, 1u, 1u)), -9413i, vec4<bool>(false, true, false, false)), Struct_1(false, vec2<u32>(32734u, 18077u), -24096i), Struct_2(vec4<i32>(-20490i, i32(-2147483648), 18613i, i32(-2147483648)), 1000f, false, vec2<bool>(true, true), vec4<u32>(0u, 1u, 0u, 60886u))), Struct_4(4294967295u, Struct_3(vec2<i32>(0i, 26167i), vec2<u32>(4294967295u, 0u), Struct_2(vec4<i32>(-7910i, 2147483647i, -1i, 35465i), 1000f, true, vec2<bool>(false, false), vec4<u32>(93598u, 4294967295u, 87257u, 14536u)), 0i, vec4<bool>(true, true, true, true)), Struct_1(false, vec2<u32>(42092u, 57875u), 24001i), Struct_2(vec4<i32>(-8337i, 2147483647i, -57500i, -31488i), -1693f, false, vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 61852u, 4568u))), Struct_4(94640u, Struct_3(vec2<i32>(-14947i, -18920i), vec2<u32>(50002u, 1u), Struct_2(vec4<i32>(27022i, 15898i, -37400i, 0i), -630f, true, vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 1u, 27354u)), 5067i, vec4<bool>(true, false, true, false)), Struct_1(false, vec2<u32>(0u, 18556u), i32(-2147483648)), Struct_2(vec4<i32>(1i, i32(-2147483648), -9851i, 1i), 498f, true, vec2<bool>(true, false), vec4<u32>(5030u, 0u, 28129u, 14120u))), Struct_4(4294967295u, Struct_3(vec2<i32>(-19215i, -3832i), vec2<u32>(4294967295u, 0u), Struct_2(vec4<i32>(2147483647i, 1i, 23774i, 16239i), 1432f, true, vec2<bool>(true, false), vec4<u32>(0u, 4294967295u, 29110u, 58291u)), -15035i, vec4<bool>(true, true, false, false)), Struct_1(false, vec2<u32>(35665u, 35738u), 1i), Struct_2(vec4<i32>(10002i, -231i, -47462i, 1516i), -1000f, false, vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, 6684u, 28006u))), Struct_4(1u, Struct_3(vec2<i32>(0i, 12444i), vec2<u32>(4294967295u, 0u), Struct_2(vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), 619f, false, vec2<bool>(false, true), vec4<u32>(1u, 0u, 55034u, 1u)), 12515i, vec4<bool>(true, true, false, false)), Struct_1(true, vec2<u32>(9012u, 0u), 1i), Struct_2(vec4<i32>(-11389i, 1i, 2147483647i, 3044i), 1998f, false, vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 1u, 4249u))), Struct_4(50230u, Struct_3(vec2<i32>(i32(-2147483648), -16794i), vec2<u32>(4294967295u, 1u), Struct_2(vec4<i32>(31486i, i32(-2147483648), 0i, 28987i), 1000f, true, vec2<bool>(false, true), vec4<u32>(15353u, 32742u, 0u, 4294967295u)), 2147483647i, vec4<bool>(true, true, true, false)), Struct_1(true, vec2<u32>(16536u, 9900u), -29496i), Struct_2(vec4<i32>(4188i, 1i, 1i, 24480i), 158f, false, vec2<bool>(true, false), vec4<u32>(33071u, 1u, 0u, 1u))), Struct_4(52837u, Struct_3(vec2<i32>(i32(-2147483648), 21313i), vec2<u32>(0u, 1321u), Struct_2(vec4<i32>(0i, 1i, 11193i, i32(-2147483648)), 739f, false, vec2<bool>(true, true), vec4<u32>(4294967295u, 7858u, 67826u, 33969u)), -1i, vec4<bool>(false, false, false, false)), Struct_1(true, vec2<u32>(1u, 31561u), 1i), Struct_2(vec4<i32>(24967i, 2147483647i, -30164i, 1i), 467f, false, vec2<bool>(true, false), vec4<u32>(39313u, 1u, 1u, 221u))), Struct_4(60091u, Struct_3(vec2<i32>(1i, 0i), vec2<u32>(20143u, 14623u), Struct_2(vec4<i32>(2147483647i, -1i, 9323i, 8230i), 1957f, true, vec2<bool>(true, true), vec4<u32>(45462u, 12982u, 0u, 25057u)), -1i, vec4<bool>(true, true, true, false)), Struct_1(false, vec2<u32>(1u, 36502u), i32(-2147483648)), Struct_2(vec4<i32>(4494i, -25374i, 1489i, -3996i), -878f, true, vec2<bool>(false, false), vec4<u32>(19574u, 76221u, 24394u, 4853u))), Struct_4(39301u, Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(92479u, 4294967295u), Struct_2(vec4<i32>(-1i, 0i, 10788i, i32(-2147483648)), -1893f, true, vec2<bool>(false, false), vec4<u32>(8902u, 4294967295u, 1u, 0u)), 72359i, vec4<bool>(true, false, false, false)), Struct_1(false, vec2<u32>(20848u, 29388u), 1i), Struct_2(vec4<i32>(-39092i, i32(-2147483648), 0i, 39042i), -2265f, true, vec2<bool>(true, false), vec4<u32>(21113u, 59532u, 1u, 41035u))), Struct_4(29142u, Struct_3(vec2<i32>(2147483647i, -2229i), vec2<u32>(4294967295u, 4294967295u), Struct_2(vec4<i32>(-42958i, i32(-2147483648), 0i, 19175i), 803f, false, vec2<bool>(false, true), vec4<u32>(71036u, 5131u, 0u, 1u)), i32(-2147483648), vec4<bool>(true, false, false, true)), Struct_1(false, vec2<u32>(1u, 73456u), 49469i), Struct_2(vec4<i32>(-4403i, 2147483647i, 0i, 1i), 279f, false, vec2<bool>(false, false), vec4<u32>(5205u, 4294967295u, 0u, 17104u))), Struct_4(52942u, Struct_3(vec2<i32>(-20144i, -1i), vec2<u32>(33929u, 0u), Struct_2(vec4<i32>(0i, -9494i, 6046i, 1i), 1000f, true, vec2<bool>(true, false), vec4<u32>(1u, 1u, 64641u, 0u)), -72851i, vec4<bool>(false, false, false, true)), Struct_1(true, vec2<u32>(91086u, 4294967295u), -6600i), Struct_2(vec4<i32>(i32(-2147483648), -1i, 0i, 8092i), 835f, false, vec2<bool>(false, false), vec4<u32>(20136u, 3109u, 4294967295u, 50603u))), Struct_4(1u, Struct_3(vec2<i32>(41700i, -1i), vec2<u32>(71160u, 131807u), Struct_2(vec4<i32>(2147483647i, 1i, -1i, -1i), -1974f, true, vec2<bool>(true, false), vec4<u32>(21141u, 5535u, 1u, 0u)), i32(-2147483648), vec4<bool>(false, false, false, true)), Struct_1(true, vec2<u32>(90194u, 1u), -24172i), Struct_2(vec4<i32>(1i, -39293i, i32(-2147483648), 2147483647i), -466f, true, vec2<bool>(true, true), vec4<u32>(30222u, 21981u, 0u, 0u))), Struct_4(0u, Struct_3(vec2<i32>(14935i, 1i), vec2<u32>(77736u, 18876u), Struct_2(vec4<i32>(40171i, -25046i, 10552i, -1i), 1049f, false, vec2<bool>(false, true), vec4<u32>(41300u, 34659u, 1u, 24061u)), 2147483647i, vec4<bool>(true, false, false, false)), Struct_1(true, vec2<u32>(4294967295u, 7955u), 0i), Struct_2(vec4<i32>(i32(-2147483648), -1i, 2147483647i, 30270i), 2619f, false, vec2<bool>(true, true), vec4<u32>(0u, 20942u, 0u, 1u))), Struct_4(4294967295u, Struct_3(vec2<i32>(0i, 0i), vec2<u32>(1u, 29539u), Struct_2(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 25446i), 1000f, true, vec2<bool>(true, false), vec4<u32>(53666u, 4294967295u, 141131u, 33987u)), i32(-2147483648), vec4<bool>(false, false, true, true)), Struct_1(false, vec2<u32>(1u, 4294967295u), 0i), Struct_2(vec4<i32>(-1i, 11867i, i32(-2147483648), -21994i), 366f, false, vec2<bool>(true, true), vec4<u32>(25440u, 1u, 4294967295u, 52209u))));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_1(global1.x, ~abs(~max(u_input.d.xz, vec2<u32>(arg_0.x, arg_0.x))), u_input.b);
    let var_1 = arg_0.x;
    let var_2 = 52088u;
    global1 = vec3<bool>(true, true, true);
    var var_3 = max(-48169i, u_input.b) << (58961u % 32u);
    return ~(~min(arg_0.x, ~countOneBits(var_2)));
}

fn func_3() -> vec4<i32> {
    global1 = vec3<bool>(!select(!global1.x | true, any(vec3<bool>(global1.x, global1.x, global1.x)), (u_input.b < u_input.a.x) && true), global1.x, select(true, global1.x, global1.x));
    var var_0 = countOneBits(select(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(74777u, 0u, u_input.c, u_input.d.x) | vec4<u32>(82300u, 4294967295u, u_input.c, 4294967295u), select(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c), vec4<u32>(1u, u_input.c, u_input.c, 0u), global1.x))), ~_wgslsmith_mult_u32(max(24310u, 38767u), _wgslsmith_div_u32(u_input.d.x, 4294967295u)), global1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1223f * 1000f), 153f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f * 1000f))))));
    global0 = array<Struct_1, 30>();
    let var_2 = Struct_2(u_input.a, var_1.x, global1.x, vec2<bool>(true, global1.x && select(global1.x, !global1.x, global1.x && global1.x)), vec4<u32>(22321u, abs(u_input.c), ~(~u_input.d.x), 0u));
    return ~select(select(abs(vec4<i32>(u_input.b, var_2.a.x, 32755i, u_input.a.x)), -abs(vec4<i32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), true), _wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.a.x, 0i, -128i, var_2.a.x)), ~vec4<i32>(25659i, 2147483647i, var_2.a.x, var_2.a.x)), !vec4<bool>(true, global1.x, global1.x, all(var_2.d)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<f32> {
    global0 = array<Struct_1, 30>();
    global1 = !arg_0.xxw;
    let var_0 = Struct_4(arg_1.e.x, Struct_3(_wgslsmith_sub_vec2_i32(arg_1.a.ww, arg_1.a.wy), ~(~(~vec2<u32>(arg_1.e.x, arg_1.e.x))), Struct_2(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(36735i, arg_1.a.x, -1i, 0i), vec4<i32>(u_input.a.x, 1i, arg_1.a.x, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1201f * arg_1.b) + -991f), _wgslsmith_f_op_f32(603f * 497f) >= arg_1.b, vec2<bool>(true, arg_1.c), _wgslsmith_div_vec4_u32(firstTrailingBit(arg_1.e), vec4<u32>(u_input.d.x, 53987u, arg_1.e.x, 17627u))), _wgslsmith_div_i32(reverseBits(_wgslsmith_add_i32(-23358i, arg_1.a.x)), i32(-1i) * -u_input.e.x), arg_0), Struct_1(true, arg_1.e.xx, reverseBits(u_input.b)), Struct_2(firstTrailingBit(func_3()) & abs(vec4<i32>(-2147483647i, 2147483647i, u_input.e.x, u_input.b) ^ arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b)))), all(select(vec4<bool>(arg_0.x, true, global1.x, true), !vec4<bool>(arg_1.c, false, false, true), vec4<bool>(false, arg_1.d.x, true, arg_1.d.x))), !arg_0.zw, ~vec4<u32>(_wgslsmith_div_u32(0u, 59594u), 1u ^ arg_1.e.x, ~4294967295u, u_input.c ^ u_input.d.x)));
    let var_1 = arg_1;
    let var_2 = var_0.c;
    return vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.c.b), var_1.b);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_2 {
    global2 = array<Struct_4, 17>();
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.d, select(countOneBits(firstTrailingBit(u_input.d)), ~_wgslsmith_clamp_vec3_u32(u_input.d, u_input.d, vec3<u32>(69733u, 1u, 46383u)), select(vec3<bool>(false, true, true), !vec3<bool>(true, global1.x, true), select(vec3<bool>(global1.x, true, false), vec3<bool>(arg_3, true, global1.x), vec3<bool>(true, true, global1.x))))) != _wgslsmith_div_u32(~select(u_input.d.x, 1u, !arg_2), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, u_input.c, u_input.c, 4294967295u), vec4<u32>(var_0, u_input.c, 17527u, var_0)) | firstTrailingBit(40618u));
    return Struct_2(countOneBits(firstLeadingBit(func_3())), _wgslsmith_f_op_f32(trunc(1744f)), all(select(vec2<bool>(arg_2, false), vec2<bool>(true, select(false, false, true)), global1.x)), vec2<bool>(!(arg_1.x > -1030f) | (_wgslsmith_f_op_f32(1151f * 305f) > _wgslsmith_f_op_f32(arg_1.x + arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, -1271f, true)) != _wgslsmith_f_op_f32(f32(-1f) * -686f)), vec4<u32>(var_0, ~89324u, ~u_input.d.x, ~(func_1(u_input.d) | countOneBits(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a ^ u_input.e, -547f, true, global1.zy, _wgslsmith_sub_vec4_u32(vec4<u32>(func_1(vec3<u32>(0u, u_input.c, u_input.c)), ~10228u, _wgslsmith_div_u32(1u, 4294967295u), u_input.c << (u_input.c % 32u)), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d.x) >> (~vec4<u32>(7822u, 0u, 45219u, u_input.c) % vec4<u32>(32u))) ^ ~firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 0u))));
    var_0 = func_4(!global1.yx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(!vec4<bool>(false, true, false, var_0.d.x), Struct_2(var_0.a, 1053f, true, !global1.xx, _wgslsmith_add_vec4_u32(var_0.e, var_0.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, -1398f)))))), var_0.a.x == -_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.e.x, -2147483647i), max(var_0.a.x, u_input.e.x)), any(select(!select(global1.zx, var_0.d, vec2<bool>(true, false)), global1.xz, select(var_0.d, !vec2<bool>(global1.x, true), global1.zz))));
    global0 = array<Struct_1, 30>();
    var var_1 = ~reverseBits(var_0.e.ww);
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(~u_input.c), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_clamp_u32(19563u, 40681u, var_0.e.x), 1u), ~var_1.x) & _wgslsmith_clamp_vec3_u32(vec3<u32>(~30614u, firstLeadingBit(26899u), var_1.x), var_0.e.yww, var_0.e.yxy >> (~u_input.d % vec3<u32>(32u))), abs(var_0.e.wyz));
    var_1 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(1460u, _wgslsmith_div_u32(u_input.c, var_2.x))), _wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(var_0.e.x, u_input.c)), ~func_4(vec2<bool>(false, false), vec2<f32>(var_0.b, 2010f), !var_0.c, false).e.xy), ~vec2<u32>(~(~4294967295u), _wgslsmith_mod_u32(reverseBits(var_1.x), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(((i32(-1i) * -13335i) | _wgslsmith_mod_i32(-2147483647i, u_input.e.x)) << ((_wgslsmith_sub_u32(var_1.x, 41638u) & 62390u) % 32u), u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-20877i, -_wgslsmith_sub_i32(-1i, 1i)), vec2<i32>(2627i, var_0.a.x)), 1529i, ~(~(~0u)) >> (~_wgslsmith_sub_u32(0u, var_1.x) % 32u), vec2<i32>(-7045i, var_0.a.x));
}

