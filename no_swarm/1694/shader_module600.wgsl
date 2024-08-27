struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-1251f, Struct_1(i32(-2147483648), -1i, vec3<f32>(-412f, 1515f, -180f), -165f, vec4<u32>(1u, 73762u, 4294967295u, 8385u)), vec3<u32>(4340u, 67608u, 0u), Struct_1(-9872i, 53756i, vec3<f32>(-156f, -435f, -356f), -708f, vec4<u32>(112665u, 7719u, 0u, 44912u)), 2147483647i), Struct_2(141f, Struct_1(24169i, 1i, vec3<f32>(1873f, -421f, 1483f), 602f, vec4<u32>(4294967295u, 1u, 9564u, 59964u)), vec3<u32>(28150u, 4294967295u, 0u), Struct_1(-46871i, 1i, vec3<f32>(-413f, -814f, -958f), -398f, vec4<u32>(0u, 4294967295u, 1u, 0u)), 1i), Struct_2(-1416f, Struct_1(68301i, 0i, vec3<f32>(1199f, -1125f, 540f), -389f, vec4<u32>(46246u, 1u, 4294967295u, 10202u)), vec3<u32>(1u, 55835u, 62447u), Struct_1(26233i, -18876i, vec3<f32>(1082f, 782f, 225f), 1000f, vec4<u32>(29131u, 0u, 4294967295u, 16857u)), -19104i), Struct_2(2167f, Struct_1(1i, 2147483647i, vec3<f32>(-2569f, -1149f, -808f), -272f, vec4<u32>(16216u, 54270u, 26659u, 10503u)), vec3<u32>(1u, 26198u, 1u), Struct_1(-1i, -1961i, vec3<f32>(1187f, -200f, -249f), 239f, vec4<u32>(9583u, 0u, 0u, 0u)), -13295i), Struct_2(-1851f, Struct_1(-47047i, -56413i, vec3<f32>(1887f, -203f, 2061f), 403f, vec4<u32>(4294967295u, 0u, 20541u, 54537u)), vec3<u32>(1u, 75255u, 1u), Struct_1(i32(-2147483648), i32(-2147483648), vec3<f32>(-1043f, 256f, 210f), 1410f, vec4<u32>(4294967295u, 0u, 388u, 44923u)), 1i), Struct_2(300f, Struct_1(1i, -1i, vec3<f32>(-1939f, 1000f, 106f), -439f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 82789u)), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(-30172i, 2147483647i, vec3<f32>(212f, 543f, -1058f), 1000f, vec4<u32>(0u, 71450u, 27161u, 4294967295u)), 27700i), Struct_2(1171f, Struct_1(2147483647i, -75554i, vec3<f32>(718f, 819f, -875f), 317f, vec4<u32>(20235u, 38070u, 3220u, 1u)), vec3<u32>(27551u, 4294967295u, 7730u), Struct_1(45418i, -57277i, vec3<f32>(-661f, 1000f, 697f), -239f, vec4<u32>(4294967295u, 58703u, 1u, 4294967295u)), -7068i), Struct_2(996f, Struct_1(1i, 57382i, vec3<f32>(337f, 866f, 435f), -293f, vec4<u32>(37974u, 4490u, 36221u, 1u)), vec3<u32>(103636u, 4294967295u, 1u), Struct_1(6113i, i32(-2147483648), vec3<f32>(833f, 1172f, -138f), -184f, vec4<u32>(57618u, 1u, 100138u, 8178u)), 26435i), Struct_2(-521f, Struct_1(-22602i, 2147483647i, vec3<f32>(1408f, -1097f, 1026f), 717f, vec4<u32>(8747u, 96654u, 1u, 1u)), vec3<u32>(4294967295u, 23704u, 35747u), Struct_1(i32(-2147483648), -12412i, vec3<f32>(-2185f, 1116f, -769f), 200f, vec4<u32>(4294967295u, 61640u, 16608u, 65244u)), -1i), Struct_2(-2079f, Struct_1(-18318i, i32(-2147483648), vec3<f32>(1129f, -1051f, -2201f), 323f, vec4<u32>(0u, 1u, 1u, 1u)), vec3<u32>(1u, 1u, 0u), Struct_1(11564i, -71665i, vec3<f32>(-579f, -1105f, -725f), -1061f, vec4<u32>(43744u, 0u, 0u, 54625u)), 2147483647i), Struct_2(344f, Struct_1(i32(-2147483648), 590i, vec3<f32>(187f, -1153f, 1111f), 933f, vec4<u32>(0u, 1u, 44366u, 3099u)), vec3<u32>(32511u, 27436u, 15277u), Struct_1(2147483647i, 0i, vec3<f32>(270f, -285f, 1279f), -624f, vec4<u32>(0u, 0u, 0u, 0u)), -1i), Struct_2(-1641f, Struct_1(71867i, i32(-2147483648), vec3<f32>(1000f, -844f, -216f), 758f, vec4<u32>(67465u, 1u, 19455u, 11005u)), vec3<u32>(0u, 46260u, 0u), Struct_1(1i, -1i, vec3<f32>(1000f, 1113f, -1392f), -513f, vec4<u32>(0u, 6985u, 57754u, 4294967295u)), i32(-2147483648)), Struct_2(-1000f, Struct_1(-32757i, -1i, vec3<f32>(-911f, 583f, 1148f), -1000f, vec4<u32>(36524u, 4294967295u, 0u, 0u)), vec3<u32>(1u, 4294967295u, 8825u), Struct_1(i32(-2147483648), 306i, vec3<f32>(1217f, 1485f, -529f), -677f, vec4<u32>(0u, 1u, 4294967295u, 9537u)), -28138i), Struct_2(-1198f, Struct_1(-185i, -8847i, vec3<f32>(478f, 470f, -335f), 589f, vec4<u32>(4194u, 1460u, 1u, 4294967295u)), vec3<u32>(3374u, 1u, 4294967295u), Struct_1(-1i, 0i, vec3<f32>(1269f, 743f, -1793f), 1485f, vec4<u32>(0u, 15676u, 56492u, 0u)), -39594i), Struct_2(-1057f, Struct_1(33015i, 0i, vec3<f32>(422f, 1189f, -1000f), -2069f, vec4<u32>(10051u, 648u, 4294967295u, 55701u)), vec3<u32>(14867u, 40068u, 1u), Struct_1(i32(-2147483648), -1i, vec3<f32>(-1020f, 1433f, -125f), 994f, vec4<u32>(24555u, 28578u, 4294967295u, 45777u)), 38912i), Struct_2(1000f, Struct_1(-1i, -1i, vec3<f32>(1610f, -1015f, -922f), -1165f, vec4<u32>(16621u, 1u, 8209u, 1u)), vec3<u32>(0u, 103076u, 11734u), Struct_1(i32(-2147483648), -1i, vec3<f32>(-2521f, 1000f, 1000f), 1424f, vec4<u32>(71280u, 23210u, 4294967295u, 8570u)), i32(-2147483648)), Struct_2(702f, Struct_1(-8050i, i32(-2147483648), vec3<f32>(-327f, 747f, -536f), -902f, vec4<u32>(0u, 8645u, 88187u, 48945u)), vec3<u32>(1u, 1u, 16290u), Struct_1(1i, 2147483647i, vec3<f32>(-1000f, -1339f, 169f), -1620f, vec4<u32>(0u, 9069u, 26037u, 25989u)), i32(-2147483648)), Struct_2(901f, Struct_1(2147483647i, 1i, vec3<f32>(1157f, 586f, -1723f), -332f, vec4<u32>(44500u, 1u, 0u, 98142u)), vec3<u32>(0u, 4294967295u, 1u), Struct_1(0i, 45636i, vec3<f32>(-590f, 2416f, -274f), -2207f, vec4<u32>(29204u, 1u, 63207u, 1u)), -13957i), Struct_2(-429f, Struct_1(1i, -30748i, vec3<f32>(1000f, -378f, 1063f), 795f, vec4<u32>(4294967295u, 28658u, 1u, 68810u)), vec3<u32>(1u, 67393u, 0u), Struct_1(0i, -35142i, vec3<f32>(926f, 1267f, -214f), -342f, vec4<u32>(37037u, 1747u, 4294967295u, 4294967295u)), 10191i), Struct_2(-440f, Struct_1(0i, 0i, vec3<f32>(-772f, -715f, 574f), -1559f, vec4<u32>(0u, 6706u, 0u, 62208u)), vec3<u32>(0u, 0u, 61934u), Struct_1(0i, i32(-2147483648), vec3<f32>(-592f, -1251f, -744f), -176f, vec4<u32>(56418u, 1u, 0u, 1u)), 31056i), Struct_2(328f, Struct_1(2147483647i, 43009i, vec3<f32>(873f, -661f, 150f), 2027f, vec4<u32>(3029u, 32337u, 0u, 49629u)), vec3<u32>(23623u, 4294967295u, 84179u), Struct_1(1i, -30764i, vec3<f32>(738f, 290f, -806f), 1000f, vec4<u32>(8005u, 0u, 0u, 68059u)), 20905i), Struct_2(-1091f, Struct_1(i32(-2147483648), -8622i, vec3<f32>(-1000f, -1538f, 497f), 940f, vec4<u32>(1u, 40585u, 0u, 40557u)), vec3<u32>(0u, 28105u, 1u), Struct_1(-26891i, 1i, vec3<f32>(723f, -477f, -439f), -1000f, vec4<u32>(4294967295u, 42184u, 50238u, 1u)), 0i), Struct_2(-644f, Struct_1(i32(-2147483648), -16821i, vec3<f32>(1913f, -504f, 296f), 1355f, vec4<u32>(0u, 4294967295u, 1u, 0u)), vec3<u32>(0u, 0u, 28840u), Struct_1(-11236i, -1i, vec3<f32>(-1737f, -1681f, -342f), 189f, vec4<u32>(4294967295u, 60007u, 7463u, 10844u)), -34588i), Struct_2(1053f, Struct_1(3820i, i32(-2147483648), vec3<f32>(767f, 1290f, -954f), -484f, vec4<u32>(74233u, 4294967295u, 5545u, 6052u)), vec3<u32>(117422u, 4294967295u, 35157u), Struct_1(i32(-2147483648), 12893i, vec3<f32>(-1321f, -130f, 2234f), 2038f, vec4<u32>(1909u, 1u, 0u, 1u)), 0i), Struct_2(401f, Struct_1(32179i, 21558i, vec3<f32>(-889f, 1286f, -306f), -819f, vec4<u32>(0u, 78326u, 7499u, 1u)), vec3<u32>(7757u, 1u, 64767u), Struct_1(-1i, i32(-2147483648), vec3<f32>(-790f, -284f, 1000f), 965f, vec4<u32>(1u, 1u, 0u, 3789u)), 36633i), Struct_2(-933f, Struct_1(0i, -12516i, vec3<f32>(1000f, -1068f, 1217f), 281f, vec4<u32>(31710u, 0u, 72123u, 74790u)), vec3<u32>(47872u, 68446u, 4294967295u), Struct_1(-1i, -3719i, vec3<f32>(598f, 1940f, 627f), -1058f, vec4<u32>(27961u, 35737u, 0u, 0u)), -1i), Struct_2(-1000f, Struct_1(1i, i32(-2147483648), vec3<f32>(-619f, -130f, -100f), 1025f, vec4<u32>(11396u, 5048u, 53407u, 1u)), vec3<u32>(4294967295u, 93142u, 50453u), Struct_1(0i, -18684i, vec3<f32>(812f, 1915f, 465f), 329f, vec4<u32>(24333u, 4294967295u, 71571u, 10980u)), -39754i));

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_div_u32(~_wgslsmith_div_u32(abs(_wgslsmith_add_u32(arg_0.e.x, 4294967295u)), 1u), arg_0.e.x);
    let var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d), -735f, -372f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1001f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.c.x))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1169f - 266f), -197f, _wgslsmith_f_op_f32(-692f * var_2.x), -981f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -1260f, var_2.x, arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, -263f, arg_0.c.x, -289f), vec4<f32>(587f, var_2.x, -876f, -575f), vec4<bool>(true, true, true, var_1))) + vec4<f32>(-2249f, arg_0.c.x, var_2.x, var_2.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-618f, -1571f, var_2.x, var_2.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_0.d, 429f, -1536f) - vec4<f32>(arg_0.d, var_2.x, arg_0.d, var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, 1000f, -296f, 355f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2171f, -114f, 677f, 1155f), vec4<f32>(635f, var_2.x, 463f, arg_0.d), vec4<bool>(false, var_1, var_1, false)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, -683f, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_f32(min(1466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1110f))))))), -828f);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(649f, arg_0.x) + arg_0.xy));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-428f - _wgslsmith_f_op_f32(-var_0.x))))));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f + -682f)), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.a, 2147483647i, vec3<f32>(var_0.x, arg_0.x, arg_0.x), 1508f, vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x)))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = ~(~arg_0.a.a.a);
    var var_1 = arg_0.a;
    var var_2 = arg_0.a;
    var_0 = 0i ^ (-_wgslsmith_add_i32(1i, 43361i) & -_wgslsmith_dot_vec4_i32(u_input.b, u_input.b));
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_sub_i32(arg_0.a.a.a, i32(-1i) * -19923i), -25674i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1522f, 1000f, 785f)) + _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(-904f, arg_0.a.b, var_2.a.d), vec3<u32>(arg_1.x, arg_1.x, var_1.a.e.x)))), _wgslsmith_f_op_f32(-320f - var_1.b), firstLeadingBit(vec4<u32>(20678u, var_2.a.e.x, 31346u, 51370u))), var_1.a.d));
    return Struct_3(var_3.a.a, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(var_1.b + arg_0.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(vec3<u32>(2847u, 16968u, 112286u), select(vec3<u32>(1u, 5453u, 4294967295u), vec3<u32>(4294967295u, 38383u, 0u), vec3<bool>(false, true, true)))) << (vec3<u32>(~43717u, 0u, 1u) % vec3<u32>(32u));
    var var_1 = func_1(Struct_4(Struct_3(Struct_1(firstLeadingBit(u_input.a), _wgslsmith_add_i32(-1i, -9956i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, 1543f, -252f)), _wgslsmith_f_op_f32(min(-635f, -303f)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 23699u, 19465u), vec4<u32>(865u, 6950u, 0u, var_0.x))), _wgslsmith_f_op_f32(770f + -442f))), vec2<u32>(_wgslsmith_mult_u32(var_0.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 0u)), _wgslsmith_mult_vec2_u32(var_0.xz, vec2<u32>(0u, 1u)))), var_0.x), var_0 << ((var_0 | vec3<u32>(~0u, ~var_0.x, 0u | var_0.x)) % vec3<u32>(32u)));
    global1 = 1941f;
    var var_2 = select(max(u_input.b, u_input.b ^ (u_input.b & min(vec4<i32>(u_input.b.x, -1i, var_1.a.b, -21872i), vec4<i32>(1i, 1i, var_1.a.a, -11644i)))), abs(-u_input.b), !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, var_1.a.e.x <= 4294967295u, true, any(vec4<bool>(true, true, false, true)))));
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wz, var_1.a.e, var_1.a.e.x);
}

