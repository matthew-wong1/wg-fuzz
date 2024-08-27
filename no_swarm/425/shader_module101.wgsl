struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, true, false, false, true, true, false, true, false, true, false, false, false, true, true, false, false, false, true, false, false);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(true, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(1670f, 1132f, -1111f, 1000f), 1u, vec2<i32>(0i, i32(-2147483648))), 118677u), Struct_4(true, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-488f, -1000f, 441f, -367f), 14338u, vec2<i32>(2147483647i, i32(-2147483648))), 0u), Struct_4(true, Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(426f, 111f, 993f, -832f), 1u, vec2<i32>(2147483647i, -1i)), 0u), Struct_4(true, Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(-1505f, -242f, -361f, -1303f), 85772u, vec2<i32>(32838i, -17496i)), 4294967295u), Struct_4(true, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1164f, -1224f, -929f, 1487f), 32975u, vec2<i32>(0i, 0i)), 1u), Struct_4(false, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(502f, 1905f, -869f, 126f), 81659u, vec2<i32>(-46538i, 0i)), 4294967295u), Struct_4(true, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-853f, 820f, -1124f, -1964f), 2140u, vec2<i32>(1i, 2147483647i)), 15949u), Struct_4(false, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(389f, -346f, -976f, 422f), 71676u, vec2<i32>(-1i, 0i)), 20407u), Struct_4(true, Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(667f, -593f, -207f, 947f), 4294967295u, vec2<i32>(-18013i, i32(-2147483648))), 12835u), Struct_4(false, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1001f, 264f, 1556f, 673f), 47390u, vec2<i32>(2147483647i, 35403i)), 13705u), Struct_4(false, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(120f, -617f, -466f, 1391f), 4294967295u, vec2<i32>(27782i, i32(-2147483648))), 4294967295u), Struct_4(false, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(568f, -1027f, 1464f, -509f), 4294967295u, vec2<i32>(50745i, 33377i)), 0u), Struct_4(true, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(1152f, 474f, 331f, -1293f), 33143u, vec2<i32>(-1i, -1i)), 0u), Struct_4(true, Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-317f, 1540f, -241f, -269f), 0u, vec2<i32>(-10743i, i32(-2147483648))), 25872u), Struct_4(true, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(1080f, -1564f, -618f, -188f), 1u, vec2<i32>(-22080i, 0i)), 1u), Struct_4(true, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(117f, 549f, -575f, -1459f), 0u, vec2<i32>(-1i, 17124i)), 19046u), Struct_4(true, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(706f, -1978f, 2025f, -1032f), 4294967295u, vec2<i32>(2147483647i, 0i)), 4294967295u), Struct_4(true, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(709f, 974f, -1040f, -334f), 73928u, vec2<i32>(63950i, 1i)), 1u), Struct_4(false, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(178f, -1871f, -257f, -1121f), 1u, vec2<i32>(25760i, 2147483647i)), 1u), Struct_4(true, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-1642f, 1005f, 2895f, -555f), 0u, vec2<i32>(51367i, i32(-2147483648))), 1u), Struct_4(true, Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(1500f, 147f, 119f, -702f), 58477u, vec2<i32>(-1i, 15257i)), 1u), Struct_4(true, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(168f, 1000f, -2527f, -493f), 136u, vec2<i32>(-32337i, 1i)), 4294967295u), Struct_4(true, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-171f, -304f, 128f, 183f), 4294967295u, vec2<i32>(-1i, -4117i)), 4294967295u), Struct_4(true, Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(854f, -398f, -536f, 815f), 1u, vec2<i32>(1i, -1i)), 4294967295u), Struct_4(false, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-869f, 732f, 680f, -1414f), 82769u, vec2<i32>(2147483647i, -13442i)), 30778u));

var<private> global3: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(true, 48350u, Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(1097f, -223f, -1041f, 1271f), 105238u, vec2<i32>(0i, 2506i))), Struct_3(true, 4294967295u, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-317f, -1554f, -142f, 1613f), 38623u, vec2<i32>(6080i, i32(-2147483648)))), Struct_3(true, 40118u, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1295f, 968f, -2044f, -1645f), 26967u, vec2<i32>(1i, -1i))), Struct_3(false, 15266u, Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-1000f, 1403f, 2178f, 853f), 4294967295u, vec2<i32>(1i, 0i))), Struct_3(true, 144262u, Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-554f, -614f, -940f, 432f), 25094u, vec2<i32>(-44427i, -23522i))), Struct_3(false, 0u, Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-197f, 548f, -1020f, -1000f), 4294967295u, vec2<i32>(34929i, 43760i))), Struct_3(false, 8533u, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(813f, -740f, 995f, -941f), 4294967295u, vec2<i32>(-21249i, -1902i))), Struct_3(false, 27717u, Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(637f, -2155f, 2115f, 142f), 4294967295u, vec2<i32>(4292i, 19743i))), Struct_3(true, 5790u, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-659f, -394f, -1422f, 552f), 29407u, vec2<i32>(-5220i, 18599i))), Struct_3(true, 1u, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-920f, 114f, 446f, 991f), 0u, vec2<i32>(30322i, 2147483647i))), Struct_3(true, 12313u, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-1561f, 599f, -657f, -1000f), 49912u, vec2<i32>(-16857i, 0i))), Struct_3(true, 4294967295u, Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(567f, -673f, -979f, -786f), 0u, vec2<i32>(-1i, 15530i))), Struct_3(true, 0u, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(458f, -110f, -171f, -1143f), 1u, vec2<i32>(1i, -1i))), Struct_3(true, 31327u, Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(1816f, 675f, -1248f, -392f), 1u, vec2<i32>(-8754i, 2147483647i))), Struct_3(false, 6745u, Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1787f, -603f, -1054f, -685f), 49414u, vec2<i32>(-7737i, -12249i))), Struct_3(true, 0u, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(1087f, 994f, 309f, -276f), 45669u, vec2<i32>(2147483647i, -5054i))), Struct_3(false, 58839u, Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(1374f, -698f, 909f, 1753f), 25090u, vec2<i32>(i32(-2147483648), 10360i))), Struct_3(false, 0u, Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-789f, -2401f, 393f, -308f), 4294967295u, vec2<i32>(1i, 44588i))), Struct_3(true, 10134u, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(434f, -774f, 336f, -1792f), 24787u, vec2<i32>(2678i, 15352i))), Struct_3(true, 1u, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-930f, -702f, 825f, 1000f), 0u, vec2<i32>(2147483647i, -27078i))), Struct_3(false, 0u, Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-3363f, 1728f, 200f, -721f), 1u, vec2<i32>(-1i, 0i))));

var<private> global4: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, false, false, false, true, false, false, true, true, false, true, true, false, false, true, true, true, true, false, true, true, false, true, true, false, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec2<f32> {
    global4 = array<bool, 32>();
    let var_0 = arg_1.x;
    global4 = array<bool, 32>();
    var var_1 = vec2<i32>(min(u_input.a, ~(-4110i)) ^ (u_input.a << (u_input.b % 32u)), u_input.a);
    let var_2 = firstLeadingBit(_wgslsmith_div_u32(~u_input.b, _wgslsmith_clamp_u32(6948u, 0u, 2468u)));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, arg_1.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1408f, arg_1.x))))), false)))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global1 = vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(31229i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))) >= min(_wgslsmith_mult_i32(u_input.a & -1i, firstLeadingBit(u_input.a)), ~(0i | u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 1000f), _wgslsmith_f_op_f32(-1000f * arg_0)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-317f - _wgslsmith_f_op_f32(arg_0 - 962f)), _wgslsmith_f_op_f32(-1000f - arg_0)));
    global3 = array<Struct_3, 21>();
    var var_0 = u_input.a >= u_input.a;
    var var_1 = Struct_5(global1.ww, _wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 24u, u_input.b), u_input.c.xyy | u_input.c.yzx), u_input.b, global1.x), firstLeadingBit(u_input.b)), 560f, firstTrailingBit(max(~vec2<i32>(-1i, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a))) | (vec2<i32>(-1i, u_input.a) >> ((u_input.c.wx >> (u_input.c.wz % vec2<u32>(32u))) % vec2<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(select(vec4<bool>(true, false, false, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 32u)], true, global1.x, false), true), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-345f, arg_0))))).x + _wgslsmith_f_op_f32(498f * arg_0)), u_input.c.xx, _wgslsmith_div_vec4_f32(vec4<f32>(-467f, -365f, 1622f, 1050f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1177f, 1000f, -645f) + vec4<f32>(arg_0, arg_0, arg_0, 660f)), vec4<f32>(arg_0, -955f, arg_0, 243f))), Struct_1(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], global1.x, false), vec4<bool>(global4[_wgslsmith_index_u32(1u, 32u)], true, global4[_wgslsmith_index_u32(u_input.c.x, 32u)], global1.x), true), select(vec4<bool>(global0[_wgslsmith_index_u32(30087u, 23u)], global1.x, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 23u)], global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(u_input.c.x, 32u)]), global4[_wgslsmith_index_u32(u_input.c.x, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true, false, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, -845f, 387f, -614f)), ~u_input.c.x, vec2<i32>(-10903i, _wgslsmith_add_i32(-23646i, -1339i))), u_input.c.x));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(var_1.d.x >> (1u % 32u)), var_1.e.d.d.x), var_1.d), ~(_wgslsmith_div_i32(u_input.a, -14816i) | min(var_1.d.x, u_input.a)) >> (u_input.b % 32u));
    return select(!vec4<bool>(global4[_wgslsmith_index_u32(reverseBits(var_1.b) | ~u_input.c.x, 32u)], global0[_wgslsmith_index_u32(~(1u >> (var_1.e.b.x % 32u)), 23u)], global0[_wgslsmith_index_u32(var_1.b, 23u)] | false, any(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.b, 23u)], global4[_wgslsmith_index_u32(33677u, 32u)], true, true))), var_1.e.d.a, select(vec4<bool>(!global4[_wgslsmith_index_u32(u_input.c.x, 32u)], true, var_1.a.x, !(u_input.a < u_input.a)), select(!select(vec4<bool>(var_1.a.x, true, global1.x, false), vec4<bool>(false, var_1.e.d.a.x, false, false), vec4<bool>(global4[_wgslsmith_index_u32(var_1.b, 32u)], global4[_wgslsmith_index_u32(76638u, 32u)], true, true)), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global1.x, var_1.a.x, global1.x), var_1.e.d.a, var_1.e.d.a), !(1961u >= u_input.c.x)), vec4<bool>(!any(vec3<bool>(true, global4[_wgslsmith_index_u32(5389u, 32u)], true)), global4[_wgslsmith_index_u32(58412u, 32u)], !var_1.e.d.a.x, (true && var_1.a.x) & false)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(select(select(vec4<bool>(false, false, true, arg_0.x), arg_0, true), !vec4<bool>(true, global1.x, global4[_wgslsmith_index_u32(u_input.c.x, 32u)], false), false), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(717f, 1826f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1626f, -1080f))))))));
    let var_1 = !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]);
    var var_2 = Struct_1(select(arg_0, select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], true, global1.x)), func_3(var_0.x), select(!vec4<bool>(var_1.x, true, false, global4[_wgslsmith_index_u32(57715u, 32u)]), arg_0, true)), any(var_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1339f, var_0.x, 747f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1006f, var_0.x, -1444f, 206f), vec4<f32>(962f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1064f, 501f, -1340f) * vec4<f32>(var_0.x, var_0.x, var_0.x, -601f)))), 0u, vec2<i32>(3400i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) | select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 0i), global1.xz), ~vec2<i32>(u_input.a, -10553i))));
    var var_3 = firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -7283i, -1i) ^ -46574i, _wgslsmith_div_i32(var_2.d.x, 2147483647i)));
    global3 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(f32(-1f) * -852f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-381f, -1158f), vec2<f32>(1214f, 1528f)))))));
    var var_1 = Struct_2(var_0.x, vec2<u32>(u_input.c.x, 0u), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global4[_wgslsmith_index_u32(u_input.c.x, 32u)], false, global4[_wgslsmith_index_u32(18147u, 32u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(44595u, 32u)], true), vec4<bool>(true, global4[_wgslsmith_index_u32(20864u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], true), global0[_wgslsmith_index_u32(u_input.b, 23u)]))), _wgslsmith_f_op_vec2_f32(func_2(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 23u)], true), var_0)).x, !all(vec4<bool>(false, global1.x, false, false)))), var_0.x), Struct_1(!vec4<bool>(true, true, true, 32944i == u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1630f, _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))), u_input.b, ~_wgslsmith_div_vec2_i32(select(vec2<i32>(1i, u_input.a), vec2<i32>(0i, u_input.a), global1.x), firstTrailingBit(vec2<i32>(44647i, -8948i)))), 4294967295u);
    global1 = var_1.d.a;
    global1 = select(var_1.d.a, !vec4<bool>(global4[_wgslsmith_index_u32(17601u, 32u)], any(var_1.d.a.zyx), true, global0[_wgslsmith_index_u32(4294967295u, 23u)] && !var_1.d.a.x), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x | var_1.d.c, 23u)], true)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(-var_1.d.b.x))))) * 1348f), -145f, _wgslsmith_f_op_f32(-var_1.c.x));
    var_1 = Struct_2(_wgslsmith_f_op_f32(func_1(var_1.d.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(var_1.e), var_1.d.c), ~(~countOneBits(vec2<u32>(30205u, var_1.e))), ~max(vec2<u32>(var_1.b.x, var_1.d.c), vec2<u32>(u_input.b, 4294967295u)) ^ ~u_input.c.xx), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-292f - 472f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1640f)), _wgslsmith_f_op_f32(var_1.c.x + 1126f), 261f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, var_0.x, -353f, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(var_1.c))))), var_1.d, _wgslsmith_sub_u32(55619u, ~(~var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~vec4<i32>(-2147483647i, u_input.a, 53554i, 10588i)), _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(var_1.d.d.x), ~0i, _wgslsmith_clamp_i32(-14897i, var_1.d.d.x, u_input.a), ~868i), -vec4<i32>(39551i, var_1.d.d.x, u_input.a, 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -1374f), 241f, _wgslsmith_div_f32(var_1.c.x, 873f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(434f, var_1.c.x, 898f)))) + _wgslsmith_div_vec3_f32(var_2.wxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_2.zwz)) + _wgslsmith_f_op_vec3_f32(-var_1.c.zwx)))), u_input.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-838f, var_1.a, -746f, var_0.x) - vec4<f32>(var_0.x, var_2.x, var_2.x, var_2.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(func_1(var_1.d.a)), 1388f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b.x - var_2.x) + _wgslsmith_f_op_f32(-298f - var_1.d.b.x))), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) + _wgslsmith_f_op_f32(func_1(var_1.d.a))) - var_0.x), -587f, (reverseBits(4294967295u) ^ _wgslsmith_sub_u32(u_input.c.x, 0u)) <= u_input.c.x)));
}

