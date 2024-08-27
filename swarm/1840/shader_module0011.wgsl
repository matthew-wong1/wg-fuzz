struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 14673u, 0u);

var<private> global1: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(674f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(1000f, 566f, 1467f), true, -1i, vec3<i32>(1i, 0i, 2147483647i)), vec2<f32>(1000f, -1000f), 1172f), -1381f, 0u, Struct_1(vec3<f32>(385f, -134f, 293f), true, -15887i, vec3<i32>(19134i, 0i, 0i))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1719f, -358f, -1000f), false, 1i, vec3<i32>(i32(-2147483648), -7449i, i32(-2147483648))), vec2<f32>(-159f, 124f), -612f), 240f, 4294967295u, Struct_1(vec3<f32>(-915f, 657f, 1285f), false, 2147483647i, vec3<i32>(i32(-2147483648), 22938i, 2147483647i)))), Struct_4(-2463f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(1138f, 1061f, -1000f), false, i32(-2147483648), vec3<i32>(i32(-2147483648), -47752i, 0i)), vec2<f32>(1574f, -1432f), -372f), 301f, 0u, Struct_1(vec3<f32>(706f, 373f, -640f), true, 1i, vec3<i32>(1i, 0i, i32(-2147483648)))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(-1000f, -126f, 319f), false, -1i, vec3<i32>(2147483647i, 0i, 19435i)), vec2<f32>(546f, 384f), 323f), 3012f, 6336u, Struct_1(vec3<f32>(-134f, -789f, -637f), true, 1i, vec3<i32>(-1i, -13070i, -1i)))), Struct_4(-259f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(-1146f, 649f, 1145f), false, -1i, vec3<i32>(2147483647i, -33692i, i32(-2147483648))), vec2<f32>(651f, 688f), -208f), 527f, 4294967295u, Struct_1(vec3<f32>(720f, 473f, -116f), false, 2147483647i, vec3<i32>(-1i, 2147483647i, -56136i))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(-808f, -444f, 1534f), false, -1i, vec3<i32>(-3388i, -16224i, -3115i)), vec2<f32>(-1087f, -1000f), -124f), 662f, 70678u, Struct_1(vec3<f32>(1401f, -273f, 139f), false, -6283i, vec3<i32>(-25029i, 0i, i32(-2147483648))))), Struct_4(1778f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(1597f, 1857f, 1000f), true, i32(-2147483648), vec3<i32>(2147483647i, -22288i, -27735i)), vec2<f32>(272f, 1714f), 755f), -205f, 3535u, Struct_1(vec3<f32>(-525f, 257f, 245f), true, 0i, vec3<i32>(0i, i32(-2147483648), -9720i))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(-704f, -468f, 1139f), true, -29758i, vec3<i32>(1i, 63843i, 0i)), vec2<f32>(1978f, 428f), -475f), -2171f, 16803u, Struct_1(vec3<f32>(1000f, -906f, 1000f), false, 33440i, vec3<i32>(8771i, i32(-2147483648), 1i)))), Struct_4(1000f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(763f, 1222f, 1000f), false, -1i, vec3<i32>(42838i, -13451i, 2147483647i)), vec2<f32>(-2522f, -130f), 2305f), -926f, 16791u, Struct_1(vec3<f32>(-853f, 1000f, 356f), true, -1i, vec3<i32>(-1i, 3834i, 20046i))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(721f, 326f, -1668f), false, -10373i, vec3<i32>(5448i, -2874i, 1i)), vec2<f32>(-1671f, 519f), 682f), -1034f, 25081u, Struct_1(vec3<f32>(-1000f, 1000f, 357f), true, -32595i, vec3<i32>(-1i, 20371i, 40209i)))), Struct_4(-564f, Struct_3(Struct_2(true, Struct_1(vec3<f32>(994f, 1198f, 462f), false, -2751i, vec3<i32>(-1i, -1i, i32(-2147483648))), vec2<f32>(-844f, 1602f), 1065f), -650f, 0u, Struct_1(vec3<f32>(162f, 244f, -373f), true, -45828i, vec3<i32>(i32(-2147483648), -8605i, i32(-2147483648)))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(1853f, 2033f, -327f), true, 43896i, vec3<i32>(-39748i, 13174i, -14441i)), vec2<f32>(-1215f, -1588f), 737f), -459f, 83811u, Struct_1(vec3<f32>(134f, 305f, -679f), false, 35405i, vec3<i32>(-3476i, -16177i, 2147483647i)))), Struct_4(796f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(-105f, 311f, -149f), true, 48343i, vec3<i32>(13814i, 2147483647i, -1i)), vec2<f32>(1000f, -609f), 581f), 182f, 2713u, Struct_1(vec3<f32>(302f, -1883f, 2001f), true, i32(-2147483648), vec3<i32>(-1i, 40811i, 51389i))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(-1470f, -703f, 551f), true, 2147483647i, vec3<i32>(0i, -8012i, i32(-2147483648))), vec2<f32>(211f, 509f), 218f), -1000f, 4294967295u, Struct_1(vec3<f32>(-447f, -205f, 1930f), true, 1i, vec3<i32>(6555i, -21829i, 45776i)))), Struct_4(1082f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(-1123f, 1000f, 895f), false, 10643i, vec3<i32>(-1i, -1i, -42655i)), vec2<f32>(-636f, 257f), -641f), -887f, 1u, Struct_1(vec3<f32>(-307f, 796f, 666f), true, -1i, vec3<i32>(-6112i, 7110i, 0i))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(441f, 1000f, 319f), false, 0i, vec3<i32>(-48994i, 2147483647i, 1i)), vec2<f32>(1000f, 1271f), 1058f), 973f, 0u, Struct_1(vec3<f32>(479f, 743f, 730f), true, 2147483647i, vec3<i32>(1i, 1i, 63485i)))), Struct_4(1058f, Struct_3(Struct_2(true, Struct_1(vec3<f32>(-163f, 1304f, 580f), true, -34320i, vec3<i32>(1i, -15873i, 0i)), vec2<f32>(-701f, 840f), 575f), 282f, 89975u, Struct_1(vec3<f32>(709f, 716f, 540f), true, 24323i, vec3<i32>(2790i, 1i, -48226i))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(-514f, -189f, -309f), false, 1i, vec3<i32>(-2189i, 29624i, -31047i)), vec2<f32>(-1365f, -260f), -734f), 202f, 0u, Struct_1(vec3<f32>(1000f, -1395f, 890f), true, 57542i, vec3<i32>(2147483647i, -27531i, -21089i)))), Struct_4(-153f, Struct_3(Struct_2(true, Struct_1(vec3<f32>(1281f, -1215f, 1103f), false, i32(-2147483648), vec3<i32>(-1i, 0i, 0i)), vec2<f32>(576f, -444f), 646f), 1000f, 0u, Struct_1(vec3<f32>(-1144f, 1690f, 670f), false, -15187i, vec3<i32>(-1i, -24750i, i32(-2147483648)))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(139f, -1000f, -429f), true, -1i, vec3<i32>(-10530i, -1i, i32(-2147483648))), vec2<f32>(1369f, -451f), -295f), -121f, 6531u, Struct_1(vec3<f32>(1056f, -146f, -863f), false, i32(-2147483648), vec3<i32>(2147483647i, 1i, 2147483647i)))), Struct_4(-693f, Struct_3(Struct_2(true, Struct_1(vec3<f32>(722f, 966f, -1813f), true, 2147483647i, vec3<i32>(23667i, -54704i, i32(-2147483648))), vec2<f32>(-731f, -252f), -513f), 709f, 1u, Struct_1(vec3<f32>(1498f, -142f, 1235f), false, -9165i, vec3<i32>(-22382i, -8576i, 26356i))), Struct_3(Struct_2(true, Struct_1(vec3<f32>(1000f, -176f, -476f), true, -8276i, vec3<i32>(2147483647i, -1i, 2829i)), vec2<f32>(200f, -596f), 578f), 1122f, 4294967295u, Struct_1(vec3<f32>(-523f, 1000f, -462f), false, 8870i, vec3<i32>(i32(-2147483648), -1i, -6347i)))), Struct_4(-317f, Struct_3(Struct_2(false, Struct_1(vec3<f32>(310f, 299f, 197f), true, 0i, vec3<i32>(1838i, i32(-2147483648), 1i)), vec2<f32>(491f, 1000f), 232f), 415f, 1u, Struct_1(vec3<f32>(-1323f, 464f, -1260f), true, 60793i, vec3<i32>(0i, 1000i, i32(-2147483648)))), Struct_3(Struct_2(false, Struct_1(vec3<f32>(1469f, 1035f, -324f), true, -42410i, vec3<i32>(-37653i, -1i, 1i)), vec2<f32>(313f, 2095f), -589f), -157f, 15743u, Struct_1(vec3<f32>(-1654f, -1000f, -1000f), false, -1i, vec3<i32>(i32(-2147483648), -10457i, 48984i)))));

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(0u, 0u), vec2<u32>(9901u, 0u), vec2<u32>(1u, 17633u), vec2<u32>(15793u, 4294967295u), vec2<u32>(4294967295u, 44371u), vec2<u32>(72917u, 1u), vec2<u32>(4294967295u, 79426u), vec2<u32>(0u, 1u), vec2<u32>(25015u, 1u), vec2<u32>(1u, 11451u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(49428u, 55478u), vec2<u32>(9889u, 0u), vec2<u32>(1u, 41200u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(countOneBits(-(u_input.c | vec2<i32>(u_input.b, -1i))), vec2<i32>(u_input.c.x, u_input.b)) ^ (_wgslsmith_mod_i32(-2147483647i, -2147483647i) ^ u_input.c.x);
    global0 = vec3<u32>(1u, u_input.a, u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1);
    global1 = array<Struct_4, 12>();
    global2 = array<vec2<u32>, 15>();
    return vec3<u32>(~u_input.a ^ select(_wgslsmith_add_u32(u_input.a & u_input.a, 54341u), 1u, true), _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(28421u, 1u, 4294967295u))), u_input.a), global0.x), 8103u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = array<Struct_4, 12>();
    global0 = abs(~(((vec3<u32>(u_input.a, global0.x, 19341u) & vec3<u32>(u_input.a, 39229u, 4294967295u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 33398u, 4294967295u), vec3<u32>(57063u, 0u, 96874u)) % vec3<u32>(32u))) ^ (firstTrailingBit(vec3<u32>(4294967295u, global0.x, 4294967295u)) | func_2(true, vec3<f32>(arg_0, 394f, -2608f)))));
    global2 = array<vec2<u32>, 15>();
    global2 = array<vec2<u32>, 15>();
    global1 = array<Struct_4, 12>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2454f, arg_0, arg_0) * vec3<f32>(-1189f, arg_0, 180f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, arg_0, 912f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-334f, arg_0, -110f), vec3<f32>(-1010f, -422f, 532f))))))), !(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)) && (~u_input.b < 1182i)), _wgslsmith_mod_i32(35133i, -_wgslsmith_sub_i32(u_input.c.x, abs(-2147483647i))), vec3<i32>(-1i, firstTrailingBit(_wgslsmith_clamp_i32(max(1409i, 0i), -22422i, u_input.b)), (u_input.b << (~global0.x % 32u)) << (_wgslsmith_mod_u32(u_input.a, 0u) % 32u)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2((min(u_input.a, 54018u) > 0u) & arg_0.x, func_1(func_1(-527f).a.x), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_f32(-1613f, -281f)).a.zx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1573f, -328f) + vec2<f32>(292f, 1000f)) - vec2<f32>(1366f, -773f))), _wgslsmith_f_op_f32(f32(-1f) * -1355f)), _wgslsmith_f_op_f32(-698f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_f_op_f32(-843f - 237f))))), _wgslsmith_add_u32(~(~45235u), min(~(~global0.x), firstTrailingBit(u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1068f, -452f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 998f, -550f) - vec3<f32>(122f, 518f, 1844f)))), true, ~u_input.b, -reverseBits(vec3<i32>(9074i, u_input.b, u_input.c.x) >> (vec3<u32>(71415u, 32050u, global0.x) % vec3<u32>(32u)))));
    global0 = ~vec3<u32>(func_2(arg_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1118f, -885f, -623f) - vec3<f32>(var_0.b, var_0.b, var_0.a.b.a.x)), vec3<f32>(var_0.a.d, var_0.a.b.a.x, var_0.d.a.x))).x, 17120u, _wgslsmith_mult_u32(reverseBits(firstLeadingBit(47955u)), global0.x ^ _wgslsmith_add_u32(u_input.a, 28418u)));
    var_0 = Struct_3(var_0.a, -2594f, ~36812u, func_1(_wgslsmith_f_op_f32(var_0.d.a.x + _wgslsmith_f_op_f32(-func_1(607f).a.x))));
    global2 = array<vec2<u32>, 15>();
    global1 = array<Struct_4, 12>();
    return !vec3<bool>(all(select(select(vec3<bool>(true, var_0.a.b.b, false), vec3<bool>(false, false, var_0.a.b.b), false), !vec3<bool>(arg_0.x, false, false), true)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 12>();
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f * 2486f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -224f)))) * -260f));
    var var_1 = false;
    let var_2 = !(!select(vec3<bool>(var_0.b || true, false, var_0.b), func_3(select(vec2<bool>(true, true), vec2<bool>(false, var_0.b), false)), select(vec3<bool>(false, false, false), vec3<bool>(var_0.b, var_0.b, var_0.b), true || var_0.b)));
    var_1 = all(select(!vec4<bool>(-2147483647i <= var_0.d.x, 10130u <= global0.x, false, true), select(select(select(vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_0.b, false, var_2.x, var_0.b), true), select(vec4<bool>(false, true, false, var_0.b), vec4<bool>(false, true, var_0.b, var_2.x), true), select(vec4<bool>(true, var_0.b, true, true), vec4<bool>(var_2.x, true, true, true), vec4<bool>(true, var_0.b, var_0.b, var_2.x))), !vec4<bool>(var_2.x, var_0.b, true, true), vec4<bool>(true, true, true, !var_0.b)), ~(-1i) > _wgslsmith_mult_i32(func_1(var_0.a.x).d.x, -var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global2[_wgslsmith_index_u32(min(~max(0u, 4294967295u), ~29505u), 15u)]), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f)), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)) - _wgslsmith_f_op_f32(select(-1722f, var_0.a.x, false)))))), 197f, _wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)), _wgslsmith_div_f32(var_0.a.x, 1027f))), var_0.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, 1630f))), select(!(!vec3<bool>(false, var_0.b, true)), !vec3<bool>(false, true, var_0.b), false))), abs(-37777i));
}

