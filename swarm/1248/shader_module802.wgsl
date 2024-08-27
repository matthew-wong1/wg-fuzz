struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(-25738i, -1i, -43783i, 697i, -96557i, -27265i, -26222i, -45713i, 38060i, 0i, 10804i);

var<private> global1: f32;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(-191f, true, -82599i, Struct_2(vec4<u32>(0u, 1180u, 0u, 0u), Struct_1(vec4<f32>(202f, 2613f, 1780f, -1343f), vec2<u32>(1u, 0u), vec3<f32>(-839f, -468f, 473f), 4294967295u, false)), vec2<u32>(79107u, 62537u)), Struct_3(1000f, false, 6130i, Struct_2(vec4<u32>(4294967295u, 4294967295u, 31574u, 1u), Struct_1(vec4<f32>(-1225f, 292f, -507f, 1061f), vec2<u32>(1u, 72510u), vec3<f32>(-1000f, 402f, -163f), 65720u, false)), vec2<u32>(42616u, 4294967295u)), Struct_3(-829f, true, 25143i, Struct_2(vec4<u32>(0u, 4294967295u, 2064u, 29195u), Struct_1(vec4<f32>(-831f, -624f, -1561f, 1391f), vec2<u32>(1u, 45366u), vec3<f32>(-1288f, -346f, 126f), 4294967295u, true)), vec2<u32>(4294967295u, 0u)), Struct_3(444f, true, i32(-2147483648), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), Struct_1(vec4<f32>(-697f, 472f, -1254f, -390f), vec2<u32>(4294967295u, 0u), vec3<f32>(2022f, -2522f, -637f), 0u, false)), vec2<u32>(0u, 4294967295u)), Struct_3(518f, true, 2147483647i, Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 51397u), Struct_1(vec4<f32>(193f, 129f, -1805f, 792f), vec2<u32>(4294967295u, 5799u), vec3<f32>(-1581f, -1000f, -1706f), 67930u, true)), vec2<u32>(1u, 25933u)), Struct_3(1000f, false, -62239i, Struct_2(vec4<u32>(19547u, 31657u, 17440u, 13874u), Struct_1(vec4<f32>(345f, -465f, 295f, 2262f), vec2<u32>(54109u, 0u), vec3<f32>(1083f, 804f, -403f), 104647u, true)), vec2<u32>(4294967295u, 0u)), Struct_3(-1066f, true, -3918i, Struct_2(vec4<u32>(18872u, 21706u, 1u, 4294967295u), Struct_1(vec4<f32>(553f, -562f, 1376f, -625f), vec2<u32>(15374u, 1u), vec3<f32>(209f, -337f, -189f), 10651u, true)), vec2<u32>(33877u, 22483u)), Struct_3(917f, false, 2147483647i, Struct_2(vec4<u32>(24279u, 1u, 38699u, 0u), Struct_1(vec4<f32>(881f, -756f, 1035f, -2095f), vec2<u32>(4294967295u, 1u), vec3<f32>(-2079f, 1367f, -1630f), 0u, false)), vec2<u32>(49925u, 95581u)), Struct_3(-903f, true, -3877i, Struct_2(vec4<u32>(0u, 53811u, 4294967295u, 4294967295u), Struct_1(vec4<f32>(920f, 532f, -295f, -1117f), vec2<u32>(14760u, 0u), vec3<f32>(1004f, -2064f, -1000f), 1u, true)), vec2<u32>(0u, 4294967295u)), Struct_3(413f, false, -17483i, Struct_2(vec4<u32>(22951u, 1u, 0u, 0u), Struct_1(vec4<f32>(-305f, -1622f, -2006f, -1000f), vec2<u32>(1u, 4294967295u), vec3<f32>(-334f, -1000f, 1000f), 1u, true)), vec2<u32>(26579u, 0u)), Struct_3(1943f, false, 27298i, Struct_2(vec4<u32>(1u, 0u, 0u, 30095u), Struct_1(vec4<f32>(-180f, 1703f, 1000f, 1169f), vec2<u32>(20062u, 1u), vec3<f32>(1427f, -1000f, 283f), 1u, true)), vec2<u32>(0u, 50211u)), Struct_3(-1320f, true, i32(-2147483648), Struct_2(vec4<u32>(30061u, 4294967295u, 1u, 0u), Struct_1(vec4<f32>(408f, 1029f, 176f, 731f), vec2<u32>(1u, 1u), vec3<f32>(-1489f, -542f, -1826f), 0u, false)), vec2<u32>(4294967295u, 337u)), Struct_3(-1305f, true, -28089i, Struct_2(vec4<u32>(0u, 4294967295u, 0u, 1u), Struct_1(vec4<f32>(226f, 156f, -421f, -1250f), vec2<u32>(1u, 3013u), vec3<f32>(110f, 645f, 561f), 33170u, false)), vec2<u32>(54380u, 1u)), Struct_3(-1284f, false, 18550i, Struct_2(vec4<u32>(38605u, 4294967295u, 31580u, 34911u), Struct_1(vec4<f32>(-717f, 1448f, 728f, 679f), vec2<u32>(37449u, 0u), vec3<f32>(-254f, 945f, 1156f), 21365u, true)), vec2<u32>(1u, 50477u)), Struct_3(522f, false, 2147483647i, Struct_2(vec4<u32>(0u, 0u, 4516u, 33858u), Struct_1(vec4<f32>(-2345f, 1000f, -277f, -221f), vec2<u32>(93385u, 0u), vec3<f32>(-1281f, 507f, 296f), 26226u, true)), vec2<u32>(4294967295u, 42894u)), Struct_3(-233f, false, i32(-2147483648), Struct_2(vec4<u32>(48339u, 1u, 46174u, 15494u), Struct_1(vec4<f32>(-440f, -718f, -169f, -742f), vec2<u32>(0u, 33436u), vec3<f32>(274f, -592f, -1071f), 21543u, false)), vec2<u32>(0u, 29292u)), Struct_3(-1000f, true, 0i, Struct_2(vec4<u32>(4294967295u, 1u, 19902u, 1u), Struct_1(vec4<f32>(111f, -1478f, 437f, 846f), vec2<u32>(40237u, 22834u), vec3<f32>(-1024f, 268f, -763f), 22426u, false)), vec2<u32>(18070u, 1u)), Struct_3(1174f, true, 1i, Struct_2(vec4<u32>(0u, 109885u, 11689u, 4294967295u), Struct_1(vec4<f32>(207f, -1113f, 1260f, 412f), vec2<u32>(29537u, 0u), vec3<f32>(-524f, -759f, 1000f), 0u, false)), vec2<u32>(4294967295u, 0u)), Struct_3(-1469f, false, 1i, Struct_2(vec4<u32>(18627u, 22150u, 4294967295u, 0u), Struct_1(vec4<f32>(-1000f, 737f, -1197f, 938f), vec2<u32>(49660u, 4294967295u), vec3<f32>(-380f, 1000f, -1142f), 4294967295u, false)), vec2<u32>(1u, 51596u)), Struct_3(1542f, false, -9265i, Struct_2(vec4<u32>(1311u, 1u, 1u, 0u), Struct_1(vec4<f32>(433f, 685f, 1000f, -1051f), vec2<u32>(1u, 1u), vec3<f32>(424f, 960f, -314f), 1u, true)), vec2<u32>(1u, 0u)), Struct_3(110f, true, -52976i, Struct_2(vec4<u32>(9584u, 19717u, 19279u, 35646u), Struct_1(vec4<f32>(1014f, -720f, 601f, 2083f), vec2<u32>(0u, 40163u), vec3<f32>(1480f, 1135f, -1179f), 14624u, true)), vec2<u32>(4294967295u, 4294967295u)));

var<private> global3: array<f32, 30> = array<f32, 30>(-1386f, -171f, 1660f, 1193f, -1725f, -409f, 269f, -1000f, 1022f, 565f, 1658f, 566f, -282f, 1000f, -1151f, -1000f, -204f, 1000f, -456f, 145f, 563f, 1000f, 294f, -1000f, -977f, 480f, -1232f, 2710f, -569f, 1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(75957u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -442f))))), !select(any(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(false, false))), i32(-1i) * -42448i, Struct_2(u_input.b << (u_input.b % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], -564f, 1000f))), u_input.b.xw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-359f, 1574f, global3[_wgslsmith_index_u32(u_input.a, 30u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], 753f, global3[_wgslsmith_index_u32(13847u, 30u)]) * vec3<f32>(1000f, 833f, 160f))), abs(firstLeadingBit(u_input.b.x)), !select(false, false, false))), u_input.b.zx);
    let var_1 = Struct_2(var_0.d.a, var_0.d.b);
    let var_2 = var_0.d;
    return var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32, arg_3: f32) -> vec4<f32> {
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(5905u, arg_0.x), 4294967295u);
    global2 = array<Struct_3, 21>();
    let var_1 = _wgslsmith_mult_u32(func_3(), ~u_input.b.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1513f, _wgslsmith_f_op_f32(-1101f * -721f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 30u)]), _wgslsmith_f_op_f32(1000f + arg_3)), vec4<f32>(_wgslsmith_f_op_f32(1692f - 1000f), _wgslsmith_f_op_f32(arg_2 * -1723f), _wgslsmith_f_op_f32(-arg_1), 1f), ~u_input.a < func_3())), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, true), true, all(vec2<bool>(true, true))), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 11u)] != global0[_wgslsmith_index_u32(68106u, 11u)], all(vec2<bool>(false, false)), true, select(false, true, true))))), vec4<f32>(815f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 - -1327f), arg_3)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(func_2(~u_input.b, -1367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.c.x)), -1427f)), countOneBits(arg_1.xz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1196f, global3[_wgslsmith_index_u32(arg_1.x, 30u)], arg_0.a.x) * arg_0.a.yyz))), u_input.d & ~_wgslsmith_div_u32(u_input.b.x, arg_0.d), arg_0.d >= 1u));
    let var_1 = Struct_3(-1615f, !(-2147483647i != ~_wgslsmith_dot_vec3_i32(vec3<i32>(2509i, u_input.c.x, global0[_wgslsmith_index_u32(arg_0.b.x, 11u)]), vec3<i32>(-46289i, u_input.c.x, u_input.c.x))), reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, var_0.b.d), 11u)]), Struct_2(min(~var_0.a, reverseBits(~vec4<u32>(10678u, 4294967295u, 40477u, 4294967295u))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_0.b.a)), vec4<f32>(-204f, global3[_wgslsmith_index_u32(arg_1.x, 30u)], var_0.b.a.x, -137f), vec4<bool>(true, var_0.b.e, true, true))), vec2<u32>(~u_input.b.x, reverseBits(1u)), _wgslsmith_f_op_vec3_f32(arg_0.a.zyw + _wgslsmith_f_op_vec3_f32(var_0.b.c - var_0.b.c)), 1u, _wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 11u)], u_input.c.x)) < (u_input.c.x ^ global0[_wgslsmith_index_u32(1u, 11u)]))), ~vec2<u32>(_wgslsmith_div_u32(36794u, _wgslsmith_dot_vec3_u32(u_input.b.wxx, var_0.a.zyy)), 42997u));
    global3 = array<f32, 30>();
    let var_2 = abs(_wgslsmith_div_vec4_i32(-max(vec4<i32>(u_input.c.x, -1i, global0[_wgslsmith_index_u32(arg_1.x, 11u)], 2147483647i), vec4<i32>(var_1.c, -2147483647i, u_input.c.x, global0[_wgslsmith_index_u32(var_0.a.x, 11u)]) ^ vec4<i32>(53923i, u_input.c.x, -64871i, -1i)), vec4<i32>(_wgslsmith_mod_i32(var_1.c, 2147483647i) ^ ~2147483647i, abs(~u_input.c.x), i32(-1i) * -12120i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, var_1.c, var_1.c), vec4<i32>(var_1.c, 31388i, global0[_wgslsmith_index_u32(var_1.e.x, 11u)], global0[_wgslsmith_index_u32(var_1.e.x, 11u)])))));
    var var_3 = vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(29135i, var_2.x, global0[_wgslsmith_index_u32(arg_0.d, 11u)]), firstTrailingBit(0i), -2297i), 13745i), u_input.c.x, 1i, 2576i);
    return var_1.d.b.d;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = u_input.c.x;
    global0 = array<i32, 11>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_0.d.a, u_input.b), _wgslsmith_add_u32(~reverseBits(_wgslsmith_add_u32(30739u, u_input.b.x)), arg_0.e.x));
    let var_3 = -191f;
    return -13937i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>((2764i >> (1u % 32u)) & _wgslsmith_dot_vec2_i32(u_input.c.yy, ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.c.x)), func_4(global2[_wgslsmith_index_u32(func_1(Struct_1(vec4<f32>(984f, global3[_wgslsmith_index_u32(57641u, 30u)], 664f, global3[_wgslsmith_index_u32(4294967295u, 30u)]), u_input.b.wz, vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 30u)], global3[_wgslsmith_index_u32(56353u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)]), u_input.a, false), u_input.b) ^ _wgslsmith_add_u32(26408u, u_input.d), 21u)]), _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), -1i) ^ -min(-14217i, -15571i)) ^ u_input.c;
    global2 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~u_input.d, 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.b.x, 30u)])))), _wgslsmith_f_op_f32(281f - global3[_wgslsmith_index_u32(max((u_input.a & u_input.b.x) >> (4579u % 32u), u_input.b.x), 30u)])));
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    global3 = array<f32, 30>();
    let var_2 = -940f;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.a)) ^ select(vec3<u32>(5514u, u_input.b.x, u_input.d), u_input.b.wzw, false)), ~u_input.b.wwx), min(select(vec4<u32>(~27477u, 1u, 0u, u_input.b.x), ~vec4<u32>(0u, 1u, u_input.a, 0u), select(var_2 == 272f, true, all(vec3<bool>(false, false, true)))), ~reverseBits(~u_input.b)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(6423u, u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d, 1u, 4294967295u), u_input.b << (u_input.b % vec4<u32>(32u)))), u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 30u)], 875f) - vec2<f32>(-664f, -407f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1772f, var_2), vec2<f32>(var_2, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], var_2), vec2<f32>(var_2, var_2)))))), _wgslsmith_div_f32(631f, var_2));
}

