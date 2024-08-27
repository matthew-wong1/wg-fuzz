struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec3<i32>(2147483647i, i32(-2147483648), -20707i), 2147483647i, vec3<bool>(true, false, false), Struct_1(vec3<u32>(74037u, 141046u, 4294967295u), 7696u, vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)));

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_1(vec3<u32>(1u, 35853u, 4294967295u), 1652u, vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<f32>(-387f, 520f), vec4<f32>(602f, 668f, 1000f, 1138f), vec2<f32>(-474f, 1049f), 44903u), Struct_3(Struct_1(vec3<u32>(13146u, 4294967295u, 1u), 43183u, vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<f32>(695f, -335f), vec4<f32>(-657f, -1315f, -172f, 2866f), vec2<f32>(-502f, 1680f), 28305u), Struct_3(Struct_1(vec3<u32>(23265u, 28558u, 4294967295u), 0u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(-1311f, -1044f), vec4<f32>(161f, 1454f, 1000f, -114f), vec2<f32>(1930f, 1058f), 1u), Struct_3(Struct_1(vec3<u32>(27793u, 1u, 46804u), 4294967295u, vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(-1107f, -338f), vec4<f32>(-1697f, -740f, 1159f, 495f), vec2<f32>(711f, 284f), 4294967295u), Struct_3(Struct_1(vec3<u32>(1u, 19840u, 65693u), 14204u, vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<f32>(-198f, -341f), vec4<f32>(-396f, -1000f, -1301f, 1000f), vec2<f32>(-2248f, -1380f), 4294967295u), Struct_3(Struct_1(vec3<u32>(50171u, 21425u, 4294967295u), 18138u, vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<f32>(-2448f, 928f), vec4<f32>(1000f, -791f, -2034f, 568f), vec2<f32>(940f, 284f), 4294967295u), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 0u), 0u, vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<f32>(1374f, -146f), vec4<f32>(-1146f, -657f, -1056f, -595f), vec2<f32>(2779f, 311f), 0u), Struct_3(Struct_1(vec3<u32>(5438u, 4294967295u, 1u), 4294967295u, vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(-1668f, 130f), vec4<f32>(-339f, 485f, 470f, 1369f), vec2<f32>(-1269f, 1535f), 76627u), Struct_3(Struct_1(vec3<u32>(1u, 1u, 46516u), 4294967295u, vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(-640f, 649f), vec4<f32>(872f, 998f, -1435f, 1000f), vec2<f32>(246f, -210f), 49297u), Struct_3(Struct_1(vec3<u32>(4294967295u, 18621u, 4294967295u), 4294967295u, vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<f32>(-447f, 1170f), vec4<f32>(-402f, -1963f, -1205f, 869f), vec2<f32>(-1000f, -263f), 5391u), Struct_3(Struct_1(vec3<u32>(26378u, 23063u, 61048u), 4294967295u, vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(-1205f, -540f), vec4<f32>(1306f, 1322f, 455f, -199f), vec2<f32>(-195f, -260f), 1u), Struct_3(Struct_1(vec3<u32>(11855u, 0u, 4294967295u), 35313u, vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(1686f, 1211f), vec4<f32>(-2137f, 388f, 1047f, 682f), vec2<f32>(-1000f, -257f), 45067u), Struct_3(Struct_1(vec3<u32>(88360u, 4294967295u, 1u), 4120u, vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<f32>(1613f, -276f), vec4<f32>(1762f, 1834f, 754f, -228f), vec2<f32>(-145f, -662f), 60544u), Struct_3(Struct_1(vec3<u32>(87507u, 23990u, 0u), 0u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(-199f, -258f), vec4<f32>(1663f, 988f, -723f, 308f), vec2<f32>(971f, 1793f), 67772u), Struct_3(Struct_1(vec3<u32>(46668u, 4294967295u, 59117u), 1u, vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<f32>(-236f, -1868f), vec4<f32>(2066f, 404f, -1646f, -226f), vec2<f32>(1146f, 1577f), 1u), Struct_3(Struct_1(vec3<u32>(27159u, 4294967295u, 0u), 129616u, vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(1081f, -114f), vec4<f32>(645f, 1000f, -2461f, -1000f), vec2<f32>(1527f, -2093f), 2353u), Struct_3(Struct_1(vec3<u32>(4294967295u, 9935u, 0u), 1u, vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(1070f, -875f), vec4<f32>(-1139f, -846f, -687f, 1186f), vec2<f32>(723f, -377f), 9710u), Struct_3(Struct_1(vec3<u32>(1u, 34885u, 0u), 34957u, vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<f32>(707f, -200f), vec4<f32>(980f, 1000f, -255f, 172f), vec2<f32>(-1000f, -2116f), 4294967295u), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 10627u), 126011u, vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<f32>(1065f, 1247f), vec4<f32>(2052f, 1024f, -1075f, 1036f), vec2<f32>(1809f, 415f), 1u), Struct_3(Struct_1(vec3<u32>(19787u, 1u, 4294967295u), 4294967295u, vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<f32>(-864f, 793f), vec4<f32>(318f, 554f, 2180f, 1000f), vec2<f32>(398f, -1000f), 4294967295u), Struct_3(Struct_1(vec3<u32>(1u, 93049u, 0u), 1u, vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(-407f, -1000f), vec4<f32>(-2086f, -1017f, -598f, -990f), vec2<f32>(-882f, 786f), 71887u), Struct_3(Struct_1(vec3<u32>(4294967295u, 59974u, 4783u), 4294967295u, vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<f32>(-668f, -593f), vec4<f32>(562f, 437f, -2659f, 237f), vec2<f32>(-465f, 1000f), 22508u), Struct_3(Struct_1(vec3<u32>(10048u, 43552u, 1u), 107442u, vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(-160f, 556f), vec4<f32>(-490f, -372f, -1517f, 837f), vec2<f32>(1468f, 1000f), 14422u), Struct_3(Struct_1(vec3<u32>(58644u, 32934u, 1u), 0u, vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<f32>(909f, -891f), vec4<f32>(-779f, 945f, -713f, -1311f), vec2<f32>(223f, -1320f), 82260u), Struct_3(Struct_1(vec3<u32>(0u, 50731u, 76811u), 4294967295u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<f32>(1000f, -1000f), vec4<f32>(-1279f, 1000f, 870f, 1109f), vec2<f32>(1000f, -286f), 6810u), Struct_3(Struct_1(vec3<u32>(1197u, 15766u, 1u), 38764u, vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<f32>(-1905f, -1316f), vec4<f32>(-1007f, -1000f, 296f, -1178f), vec2<f32>(-410f, -733f), 6922u), Struct_3(Struct_1(vec3<u32>(45314u, 0u, 5958u), 4294967295u, vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<f32>(487f, 141f), vec4<f32>(-881f, -1000f, 2662f, -1447f), vec2<f32>(-684f, -312f), 32652u), Struct_3(Struct_1(vec3<u32>(4294967295u, 67710u, 1508u), 109782u, vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(-1263f, 947f), vec4<f32>(1277f, -130f, -295f, 550f), vec2<f32>(-327f, -547f), 4294967295u), Struct_3(Struct_1(vec3<u32>(1u, 12446u, 0u), 0u, vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(1000f, -240f), vec4<f32>(767f, 1994f, 1882f, 229f), vec2<f32>(-417f, -254f), 32765u), Struct_3(Struct_1(vec3<u32>(48983u, 102854u, 0u), 1256u, vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<f32>(510f, 1752f), vec4<f32>(1000f, -2140f, -1742f, 547f), vec2<f32>(-1350f, -568f), 8673u), Struct_3(Struct_1(vec3<u32>(63901u, 30008u, 20007u), 0u, vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<f32>(-362f, 705f), vec4<f32>(885f, -582f, 607f, 1121f), vec2<f32>(-185f, 519f), 1u), Struct_3(Struct_1(vec3<u32>(16287u, 16463u, 17987u), 111393u, vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<f32>(2273f, -1211f), vec4<f32>(609f, 130f, 1534f, -446f), vec2<f32>(-265f, -381f), 1u));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(4294967295u, 55453u, 1u), 59693u, vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<f32>(-1216f, 210f), vec4<f32>(-155f, -1146f, -305f, 148f), vec2<f32>(-568f, -1000f), 0u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_2(global0.a, global0.b, u_input.b ^ -15839i, !global0.d, global0.e);
    global0 = Struct_2(all(!select(select(vec3<bool>(global0.e.d.x, global2.a.e.x, true), global0.d, true), !vec3<bool>(global2.a.c.x, global0.e.c.x, false), all(vec3<bool>(global2.a.e.x, global0.e.e.x, global0.d.x)))), global0.b, max(28716i, min(-(~2147483647i), -2147483647i)), global0.d, global2.a);
    let var_0 = -global0.c;
    let var_1 = Struct_3(global0.e, global2.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -635f, global2.b.x, global2.d.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, 538f, global2.b.x, 281f) + vec4<f32>(global2.b.x, global2.b.x, global2.d.x, -614f)))))), global2.d, 1u);
    let var_2 = !var_1.a.c.x;
    return !var_1.a.c;
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    global2 = Struct_3(Struct_1(global0.e.a, u_input.a, global0.e.d, global2.a.e, func_3()), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d.x))) - _wgslsmith_f_op_f32(max(157f, global2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.c.x, global2.b.x))))), _wgslsmith_f_op_vec4_f32(trunc(global2.c)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.d.x, -841f), _wgslsmith_f_op_f32(floor(1000f)))) + 332f), -586f), 1u);
    global1 = array<Struct_3, 32>();
    global0 = Struct_2(!(firstLeadingBit(1i) < u_input.b), -_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(global0.b), firstLeadingBit(vec3<i32>(global0.b.x, global0.b.x, global0.c))), abs(vec3<i32>(23255i, u_input.b, u_input.b) ^ global0.b)), global0.c, global0.d, global2.a);
    let var_0 = (global0.a | (32561u <= firstTrailingBit(~1u))) & global0.e.e.x;
    global1 = array<Struct_3, 32>();
    return !func_3().x;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = ~arg_0 >= 4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, global2.b.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 1209f) * vec2<f32>(global2.b.x, global2.d.x))))))));
    var var_2 = global0.b;
    var_0 = any(select(select(select(vec4<bool>(global0.e.c.x, global2.a.c.x, global0.d.x, global0.d.x), !vec4<bool>(false, global2.a.e.x, global0.a, false), global0.d.x), vec4<bool>(func_2(global0.a, arg_0), any(vec4<bool>(global2.a.c.x, true, global0.d.x, global2.a.c.x)), u_input.b <= -3069i, select(global0.d.x, global2.a.e.x, false)), true), !(!(!vec4<bool>(global0.a, global0.a, false, global2.a.c.x))), vec4<bool>(false, _wgslsmith_f_op_f32(floor(global2.b.x)) <= global2.c.x, global2.a.e.x, !(global2.a.d.x | global0.a))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(trunc(208f)), global2.a.c.x)))), global2.d.x) - global2.c);
    return global1[_wgslsmith_index_u32(4294967295u, 32u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = global2.d.x;
    global1 = array<Struct_3, 32>();
    let var_1 = max(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, countOneBits(global2.e)), ~arg_2.e, 31095u, global2.a.b), ~(~(vec4<u32>(u_input.a, 29293u, global2.a.a.x, 4294967295u) >> (vec4<u32>(1u, global0.e.a.x, 1u, global2.a.a.x) % vec4<u32>(32u))))) ^ ~vec4<u32>(arg_2.a.a.x, 4294967295u, 1u, ~(~4294967295u));
    let var_2 = vec2<u32>(0u, _wgslsmith_div_u32(global0.e.a.x, max(49699u, arg_2.a.b)) | 48636u);
    global1 = array<Struct_3, 32>();
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.c.x;
    var var_1 = -3585i | global0.b.x;
    var_0 = any(select(select(!(!vec3<bool>(false, global2.a.c.x, false)), select(!global0.d, global0.d, global0.d), func_4(vec3<bool>(global2.a.c.x, global2.a.d.x, global2.a.e.x), _wgslsmith_sub_i32(global0.c, 99296i), func_1(81339u), vec3<bool>(true, true, true))), !global0.d, !func_3().x));
    var var_2 = ~(-min(~u_input.b, ~global0.b.x)) << (select(1u, global2.e, global2.a.c.x) % 32u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(544f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-126f, global2.d.x, !global0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.a.x, -649f, func_1(_wgslsmith_sub_u32(4294967295u ^ _wgslsmith_dot_vec2_u32(global2.a.a.yx, global2.a.a.yy), ~global2.a.b)).d.x);
}

