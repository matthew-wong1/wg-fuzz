struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(-355f, Struct_1(vec2<u32>(1u, 0u), vec3<f32>(-2029f, 2826f, 1040f), vec2<bool>(true, false), vec3<f32>(748f, -1245f, 194f), vec2<f32>(628f, 947f)), Struct_2(vec4<u32>(0u, 18842u, 62737u, 0u), vec4<bool>(true, true, true, true), vec3<u32>(3378u, 1u, 1u))), Struct_4(540f, Struct_1(vec2<u32>(5126u, 4294967295u), vec3<f32>(1122f, 1264f, -431f), vec2<bool>(false, true), vec3<f32>(-1372f, -299f, 645f), vec2<f32>(-377f, 647f)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 31004u), vec4<bool>(true, false, true, true), vec3<u32>(38210u, 68439u, 3253u))), Struct_4(496f, Struct_1(vec2<u32>(0u, 44254u), vec3<f32>(2175f, 285f, 1289f), vec2<bool>(false, true), vec3<f32>(-259f, -2466f, 438f), vec2<f32>(-801f, -627f)), Struct_2(vec4<u32>(49059u, 1u, 4294967295u, 0u), vec4<bool>(false, false, true, false), vec3<u32>(4294967295u, 1u, 1u))), Struct_4(-1000f, Struct_1(vec2<u32>(41757u, 4294967295u), vec3<f32>(745f, -405f, 2455f), vec2<bool>(true, true), vec3<f32>(-156f, 152f, -935f), vec2<f32>(-1539f, 304f)), Struct_2(vec4<u32>(46438u, 0u, 1u, 4294967295u), vec4<bool>(false, true, true, false), vec3<u32>(0u, 1693u, 0u))), Struct_4(-412f, Struct_1(vec2<u32>(4294967295u, 37157u), vec3<f32>(130f, 2092f, -1375f), vec2<bool>(true, true), vec3<f32>(1000f, -533f, -1000f), vec2<f32>(-836f, -265f)), Struct_2(vec4<u32>(4294967295u, 86422u, 52697u, 29451u), vec4<bool>(false, true, false, true), vec3<u32>(0u, 1u, 0u))), Struct_4(-1281f, Struct_1(vec2<u32>(1u, 55103u), vec3<f32>(859f, -344f, 1561f), vec2<bool>(true, true), vec3<f32>(-309f, 210f, 1000f), vec2<f32>(463f, 2208f)), Struct_2(vec4<u32>(20524u, 49571u, 4294967295u, 42341u), vec4<bool>(false, true, false, false), vec3<u32>(22610u, 4601u, 57111u))), Struct_4(552f, Struct_1(vec2<u32>(0u, 91162u), vec3<f32>(477f, -979f, -811f), vec2<bool>(true, true), vec3<f32>(-1015f, 723f, -1125f), vec2<f32>(1403f, -152f)), Struct_2(vec4<u32>(1u, 191u, 3619u, 19798u), vec4<bool>(true, false, true, true), vec3<u32>(40187u, 4294967295u, 4294967295u))), Struct_4(-953f, Struct_1(vec2<u32>(18885u, 0u), vec3<f32>(-180f, 1000f, 787f), vec2<bool>(false, true), vec3<f32>(-1122f, 1409f, -824f), vec2<f32>(517f, -1920f)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 8283u), vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 52490u, 0u))), Struct_4(324f, Struct_1(vec2<u32>(39814u, 21288u), vec3<f32>(-230f, 391f, 838f), vec2<bool>(false, true), vec3<f32>(781f, -1363f, 1046f), vec2<f32>(576f, -562f)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 3427u), vec4<bool>(true, true, false, false), vec3<u32>(36325u, 1u, 10200u))), Struct_4(1364f, Struct_1(vec2<u32>(39501u, 0u), vec3<f32>(912f, 129f, 1000f), vec2<bool>(false, true), vec3<f32>(890f, -763f, -886f), vec2<f32>(-648f, 1294f)), Struct_2(vec4<u32>(77047u, 1u, 9303u, 25543u), vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 0u, 3395u))), Struct_4(302f, Struct_1(vec2<u32>(1u, 0u), vec3<f32>(1000f, 1244f, 297f), vec2<bool>(false, false), vec3<f32>(1651f, -635f, 2023f), vec2<f32>(1000f, -1042f)), Struct_2(vec4<u32>(49863u, 60218u, 0u, 1u), vec4<bool>(true, false, false, false), vec3<u32>(4294967295u, 4963u, 0u))), Struct_4(-1309f, Struct_1(vec2<u32>(4294967295u, 1u), vec3<f32>(-646f, 1207f, 408f), vec2<bool>(true, true), vec3<f32>(-1660f, -434f, -144f), vec2<f32>(410f, -313f)), Struct_2(vec4<u32>(1u, 61053u, 0u, 0u), vec4<bool>(true, false, false, true), vec3<u32>(64690u, 1u, 44915u))), Struct_4(-267f, Struct_1(vec2<u32>(4294967295u, 8410u), vec3<f32>(590f, -563f, 279f), vec2<bool>(true, true), vec3<f32>(217f, 718f, -1598f), vec2<f32>(-904f, -446f)), Struct_2(vec4<u32>(1u, 1u, 23413u, 2937u), vec4<bool>(true, false, false, true), vec3<u32>(0u, 0u, 35945u))), Struct_4(1098f, Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-460f, -892f, 204f), vec2<bool>(true, false), vec3<f32>(285f, 950f, 538f), vec2<f32>(-364f, -164f)), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<bool>(false, true, false, false), vec3<u32>(0u, 1u, 1u))), Struct_4(357f, Struct_1(vec2<u32>(17585u, 1u), vec3<f32>(752f, -434f, -1552f), vec2<bool>(false, false), vec3<f32>(-544f, 254f, 994f), vec2<f32>(1104f, 693f)), Struct_2(vec4<u32>(50748u, 0u, 0u, 43347u), vec4<bool>(false, false, false, false), vec3<u32>(0u, 79201u, 4294967295u))), Struct_4(-568f, Struct_1(vec2<u32>(60149u, 24261u), vec3<f32>(1297f, 1331f, -481f), vec2<bool>(true, true), vec3<f32>(202f, 379f, -544f), vec2<f32>(-1188f, -362f)), Struct_2(vec4<u32>(4294967295u, 38425u, 17493u, 1u), vec4<bool>(false, true, true, false), vec3<u32>(94659u, 4294967295u, 1u))), Struct_4(897f, Struct_1(vec2<u32>(6091u, 52305u), vec3<f32>(1868f, 185f, -1608f), vec2<bool>(false, true), vec3<f32>(-1752f, -805f, 1243f), vec2<f32>(831f, -642f)), Struct_2(vec4<u32>(56514u, 4294967295u, 4294967295u, 10105u), vec4<bool>(true, false, true, false), vec3<u32>(0u, 6436u, 1u))), Struct_4(1335f, Struct_1(vec2<u32>(1u, 35537u), vec3<f32>(286f, 607f, -553f), vec2<bool>(false, false), vec3<f32>(-1000f, 1214f, -1393f), vec2<f32>(666f, -528f)), Struct_2(vec4<u32>(1u, 54967u, 0u, 0u), vec4<bool>(true, true, false, false), vec3<u32>(65784u, 1u, 4294967295u))), Struct_4(1311f, Struct_1(vec2<u32>(1u, 25193u), vec3<f32>(427f, 1000f, -1377f), vec2<bool>(false, false), vec3<f32>(1463f, -989f, 691f), vec2<f32>(-137f, -560f)), Struct_2(vec4<u32>(57582u, 4294967295u, 55906u, 4294967295u), vec4<bool>(false, true, false, true), vec3<u32>(50395u, 3810u, 20617u))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = true;
    global1 = array<Struct_4, 19>();
    global0 = array<vec4<bool>, 23>();
    global1 = array<Struct_4, 19>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_1(~arg_1.a.c.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, vec3<bool>(arg_1.a.b.x, false, true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-187f, arg_1.b.x, 788f), arg_1.b) - vec3<f32>(arg_0.x, -445f, -121f))), arg_1.a.b.ww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(arg_1.b)), arg_1.b, select(arg_1.a.b.yyx, arg_1.a.b.yxz, arg_1.a.b.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.zy)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, -731f))))))), arg_1.a);
    return var_1.b.d.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-660f - 268f)))))), Struct_1(_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(45764u, u_input.c.x)), arg_2.c.c.yx), vec3<f32>(759f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-arg_2.b.d), Struct_3(arg_2.c, arg_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(801f)) - _wgslsmith_f_op_f32(min(-1555f, -1792f)))), arg_1.c, _wgslsmith_f_op_vec3_f32(step(arg_1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, 358f, arg_1.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.e.x))), _wgslsmith_f_op_f32(742f - _wgslsmith_f_op_f32(-1000f * arg_1.e.x)))), Struct_2(_wgslsmith_div_vec4_u32(select(arg_2.c.a, vec4<u32>(u_input.e.x, u_input.e.x, arg_2.b.a.x, 44648u) & vec4<u32>(1u, u_input.a.x, 4294967295u, arg_2.b.a.x), global0[_wgslsmith_index_u32(4294967295u, 23u)]), arg_2.c.a), select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(~(~0u), 23u)], true), firstTrailingBit(~abs(vec3<u32>(903u, u_input.e.x, 0u)))));
    let var_1 = arg_0;
    let var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_4 = vec2<u32>(arg_2.c.a.x & ~4294967295u, _wgslsmith_clamp_u32(var_0.c.a.x, arg_1.a.x, 26071u) & 0u);
    return ~u_input.b;
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = abs(vec3<i32>(func_2(true, Struct_1(select(u_input.c.xy, vec2<u32>(u_input.c.x, 2785u), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1141f, -2906f, arg_0) * vec3<f32>(558f, 164f, arg_0)), vec2<f32>(arg_0, 1232f)), Struct_4(_wgslsmith_f_op_f32(-arg_0), Struct_1(vec2<u32>(1u, u_input.e.x), vec3<f32>(arg_0, 1367f, -851f), vec2<bool>(false, true), vec3<f32>(arg_0, arg_0, arg_0), vec2<f32>(arg_0, arg_0)), Struct_2(vec4<u32>(33975u, u_input.a.x, 61911u, 4294967295u), vec4<bool>(false, true, true, true), u_input.e)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -2147483647i), max(vec3<i32>(14585i, u_input.d, -23954i), vec3<i32>(-2147483647i, arg_1, -27254i)), vec3<i32>(-2147483647i, arg_1, u_input.d))), 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(1i, 14791i)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 0i), vec2<i32>(u_input.d, -1i))) | 1i));
    global1 = array<Struct_4, 19>();
    global0 = array<vec4<bool>, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1804f, 1240f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 138f, arg_0, 966f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(516f, -173f, 1201f, -473f), vec4<f32>(-1392f, 1000f, -452f, 981f)))))));
    var var_2 = vec4<u32>(~u_input.a.x, 1u, min(firstTrailingBit(firstTrailingBit(u_input.c.x)) ^ ~max(u_input.c.x, u_input.e.x), abs(2433u)), u_input.a.x);
    return Struct_1(var_2.yz, _wgslsmith_f_op_vec3_f32(var_1.yww * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 453f, var_1.x))))))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(step(var_1.xyx, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(771f, _wgslsmith_f_op_f32(ceil(var_1.x)), -426f), vec3<f32>(_wgslsmith_f_op_f32(-704f + var_1.x), 363f, _wgslsmith_f_op_f32(f32(-1f) * -116f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1250f, -1326f) - vec2<f32>(1000f, arg_0))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(979f, arg_0)), var_1.zy) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(var_1.x, -2228f))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> StorageBuffer {
    var var_0 = !global0[_wgslsmith_index_u32(arg_1.c.c.x, 23u)];
    let var_1 = _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(ceil(arg_1.b.e.x)), u_input.d).d.x);
    let var_2 = func_1(arg_1.a, _wgslsmith_mod_i32(i32(-1i) * -u_input.b, u_input.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(func_1(arg_1.a, _wgslsmith_add_i32(47770i, ~u_input.b & 15114i)).b.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1306f, -451f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -1101f) * var_2.d.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.e.x, 1824f), vec2<f32>(-783f, arg_1.b.d.x))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(938f, 1254f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -382f)))), vec2<bool>(var_2.c.x, all(vec3<bool>(arg_1.b.c.x != true, var_2.c.x, all(arg_1.c.b))))));
    var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.d.x)))), _wgslsmith_f_op_f32(-var_1))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(367f, 1074f, var_3.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.d))))), _wgslsmith_sub_i32(-37425i, -6101i), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(arg_1.b.a.x, 1u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.c.a, vec4<u32>(1u, 48176u, 9487u, u_input.e.x) >> (vec4<u32>(u_input.e.x, u_input.a.x, arg_0.x, arg_1.c.c.x) % vec4<u32>(32u)), arg_0 & arg_0), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(46012u, var_2.a.x, 4294967295u, 4294967295u), vec4<u32>(var_2.a.x, u_input.c.x, arg_0.x, 0u)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_2.a.x & u_input.e.x, _wgslsmith_sub_u32(53774u, arg_1.b.a.x)), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 19>();
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    let var_0 = _wgslsmith_add_u32(~u_input.e.x, (4294967295u | u_input.a.x) << (0u % 32u));
    let var_1 = 855f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2004f, 1728f));
    let x = u_input.a;
    s_output = func_4(~(min(~vec4<u32>(var_0, 1u, var_0, var_0), vec4<u32>(4294967295u, 53757u, var_0, 64448u) | vec4<u32>(var_0, 0u, 1u, 43908u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 2523u, u_input.c.x, 1u), vec4<u32>(u_input.a.x, var_0, 1u, var_0))), Struct_4(var_1, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2336f)))), ~0i), Struct_2(abs(~vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 0u)), select(!global0[_wgslsmith_index_u32(0u, 23u)], select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(1u, 23u)], vec4<bool>(false, false, true, false)), false), u_input.e)));
}

