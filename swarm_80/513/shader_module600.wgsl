struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global1: array<vec3<i32>, 15>;

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(1u, 1u, vec4<f32>(-865f, 567f, -476f, -1123f), Struct_3(Struct_1(vec4<f32>(269f, -688f, 2120f, -691f), vec2<i32>(2147483647i, 0i), 1u)), vec2<bool>(false, true)), Struct_4(0u, 2363u, vec4<f32>(708f, -1400f, 814f, 354f), Struct_3(Struct_1(vec4<f32>(560f, -339f, -506f, 908f), vec2<i32>(29090i, 27207i), 0u)), vec2<bool>(false, true)), Struct_4(27959u, 4294967295u, vec4<f32>(-905f, -772f, -2525f, 2153f), Struct_3(Struct_1(vec4<f32>(314f, -746f, -488f, -829f), vec2<i32>(2147483647i, i32(-2147483648)), 5303u)), vec2<bool>(true, false)), Struct_4(25688u, 45113u, vec4<f32>(367f, -990f, -711f, 663f), Struct_3(Struct_1(vec4<f32>(2296f, -2029f, -251f, -1545f), vec2<i32>(20490i, -1i), 1u)), vec2<bool>(false, true)), Struct_4(0u, 4294967295u, vec4<f32>(-1082f, -1718f, -889f, 198f), Struct_3(Struct_1(vec4<f32>(723f, 500f, 192f, -944f), vec2<i32>(-9186i, 1i), 4294967295u)), vec2<bool>(true, true)), Struct_4(0u, 1u, vec4<f32>(-1760f, 1000f, -273f, -1062f), Struct_3(Struct_1(vec4<f32>(950f, 1577f, 589f, -166f), vec2<i32>(-1i, i32(-2147483648)), 45823u)), vec2<bool>(false, false)), Struct_4(1u, 25244u, vec4<f32>(-1705f, -1660f, 890f, 293f), Struct_3(Struct_1(vec4<f32>(-2106f, 967f, 1349f, -712f), vec2<i32>(-1846i, -41481i), 39705u)), vec2<bool>(false, true)), Struct_4(46070u, 18210u, vec4<f32>(-114f, -1000f, -2356f, -1000f), Struct_3(Struct_1(vec4<f32>(471f, 414f, 1000f, -1000f), vec2<i32>(i32(-2147483648), 0i), 37970u)), vec2<bool>(false, true)), Struct_4(49480u, 9287u, vec4<f32>(-1834f, -106f, 957f, 1000f), Struct_3(Struct_1(vec4<f32>(-967f, 1000f, -2337f, 622f), vec2<i32>(0i, i32(-2147483648)), 4294967295u)), vec2<bool>(true, false)), Struct_4(4294967295u, 4294967295u, vec4<f32>(1116f, 1359f, -136f, -318f), Struct_3(Struct_1(vec4<f32>(2247f, -598f, -878f, 2057f), vec2<i32>(i32(-2147483648), -24622i), 21768u)), vec2<bool>(false, false)), Struct_4(1u, 24125u, vec4<f32>(-1455f, -1120f, 1226f, -607f), Struct_3(Struct_1(vec4<f32>(-1646f, -247f, 277f, 1364f), vec2<i32>(0i, -40964i), 1u)), vec2<bool>(false, true)), Struct_4(63069u, 0u, vec4<f32>(-211f, 333f, 814f, -620f), Struct_3(Struct_1(vec4<f32>(-1815f, 1879f, 972f, 1528f), vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u)), vec2<bool>(false, false)), Struct_4(0u, 17093u, vec4<f32>(-1133f, -194f, -1216f, -1000f), Struct_3(Struct_1(vec4<f32>(-2103f, -922f, 1332f, -384f), vec2<i32>(1i, -1i), 12891u)), vec2<bool>(false, false)), Struct_4(4294967295u, 4167u, vec4<f32>(564f, -160f, 864f, 792f), Struct_3(Struct_1(vec4<f32>(-128f, -2220f, 964f, 1010f), vec2<i32>(-9182i, i32(-2147483648)), 55089u)), vec2<bool>(false, true)), Struct_4(4294967295u, 31198u, vec4<f32>(-226f, 1000f, -312f, 934f), Struct_3(Struct_1(vec4<f32>(451f, -1476f, -560f, -1039f), vec2<i32>(1i, 0i), 28071u)), vec2<bool>(false, false)), Struct_4(23430u, 1u, vec4<f32>(-2393f, 1000f, 883f, 600f), Struct_3(Struct_1(vec4<f32>(-290f, -635f, -885f, -1000f), vec2<i32>(71874i, -46705i), 48321u)), vec2<bool>(true, true)), Struct_4(1u, 47882u, vec4<f32>(-1438f, 422f, -272f, -491f), Struct_3(Struct_1(vec4<f32>(-429f, -363f, -570f, 519f), vec2<i32>(0i, -1031i), 3052u)), vec2<bool>(false, false)), Struct_4(12508u, 0u, vec4<f32>(-1127f, 1870f, 435f, 1000f), Struct_3(Struct_1(vec4<f32>(1161f, -222f, 2108f, 1038f), vec2<i32>(7620i, -44005i), 90705u)), vec2<bool>(false, false)), Struct_4(0u, 63309u, vec4<f32>(425f, -162f, -433f, 843f), Struct_3(Struct_1(vec4<f32>(843f, 1944f, 410f, 195f), vec2<i32>(13417i, -1i), 4294967295u)), vec2<bool>(false, false)), Struct_4(0u, 1u, vec4<f32>(706f, 193f, 1012f, 1000f), Struct_3(Struct_1(vec4<f32>(1000f, 550f, 162f, -896f), vec2<i32>(23283i, -13268i), 0u)), vec2<bool>(false, false)), Struct_4(4294967295u, 23690u, vec4<f32>(-575f, -369f, 1550f, -852f), Struct_3(Struct_1(vec4<f32>(-145f, 265f, -1516f, -1313f), vec2<i32>(-41746i, -6852i), 41330u)), vec2<bool>(false, true)), Struct_4(972u, 4294967295u, vec4<f32>(823f, 1376f, -220f, -646f), Struct_3(Struct_1(vec4<f32>(-323f, 994f, -173f, -1323f), vec2<i32>(-23612i, 39185i), 22330u)), vec2<bool>(true, false)), Struct_4(0u, 0u, vec4<f32>(277f, -946f, 647f, -1201f), Struct_3(Struct_1(vec4<f32>(-2210f, -846f, 576f, 360f), vec2<i32>(20496i, -5723i), 22124u)), vec2<bool>(true, true)), Struct_4(64416u, 0u, vec4<f32>(1016f, 946f, 237f, 276f), Struct_3(Struct_1(vec4<f32>(889f, -346f, -1083f, -2697f), vec2<i32>(1i, i32(-2147483648)), 47786u)), vec2<bool>(true, true)), Struct_4(1u, 4294967295u, vec4<f32>(611f, -623f, -127f, 710f), Struct_3(Struct_1(vec4<f32>(1000f, -1000f, 1068f, 1597f), vec2<i32>(55223i, -3522i), 31909u)), vec2<bool>(false, true)));

var<private> global3: array<f32, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global1 = array<vec3<i32>, 15>();
    global2 = array<Struct_4, 25>();
    var var_0 = vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 13u)], -207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~abs(global0.x), 13u)] - 713f)), global3[_wgslsmith_index_u32(41463u, 13u)]);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global0.x, 13u)], var_0.x, global3[_wgslsmith_index_u32(20303u, 13u)], 1576f), vec4<f32>(-309f, global3[_wgslsmith_index_u32(48370u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], var_0.x)) * vec4<f32>(-1053f, global3[_wgslsmith_index_u32(global0.x, 13u)], 109f, global3[_wgslsmith_index_u32(0u, 13u)])))), countOneBits(-vec2<i32>(u_input.a, u_input.a)), 16534u));
    var var_2 = Struct_1(var_1.a.a, reverseBits(var_1.a.b), var_1.a.c);
    return vec4<f32>(global3[_wgslsmith_index_u32(firstTrailingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42628u, var_1.a.c), vec3<u32>(4294967295u, global0.x, var_2.c)))), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(157f + 182f), _wgslsmith_f_op_f32(step(var_0.x, -1906f)))), 116f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_1.a.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> bool {
    global0 = vec2<u32>(abs(global0.x >> (_wgslsmith_div_u32(1u | global0.x, global0.x) % 32u)), global0.x);
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(757f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(99550u, 13u)], _wgslsmith_div_f32(1443f, -1484f), u_input.a <= -59514i)), global3[_wgslsmith_index_u32(4294967295u >> (global0.x % 32u), 13u)], global3[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_vec4_f32(func_3(false))), firstTrailingBit(countOneBits(firstLeadingBit(arg_1.ww))) << (~(firstTrailingBit(vec2<u32>(12946u, 0u)) | vec2<u32>(40735u, 121272u)) % vec2<u32>(32u)), (~(~global0.x) << (firstTrailingBit(~global0.x) % 32u)) ^ firstLeadingBit(global0.x));
    var var_1 = select(!vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), _wgslsmith_mult_u32(13189u, global0.x) < countOneBits(0u)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)) != all(vec4<bool>(false, false, true, true))), true), all(select(vec2<bool>(false, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), all(vec3<bool>(true, false, true)))));
    global3 = array<f32, 13>();
    global1 = array<vec3<i32>, 15>();
    return !all(!(!(!vec2<bool>(var_1.x, var_1.x))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1959f, -185f, -837f, arg_0)), vec4<f32>(arg_0, arg_0, arg_0, -1643f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], arg_0)))));
    var var_1 = ~(~(~_wgslsmith_sub_i32(-1i, -6418i)));
    let var_2 = select(vec2<bool>(1u == global0.x, any(vec3<bool>(true, true, func_2(vec4<i32>(1i, 0i, 28696i, -28136i), vec4<i32>(-97610i, u_input.a, u_input.a, 2147483647i))))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec2<bool>(true, true))), !vec2<bool>(true, true || (u_input.a <= -1i)));
    let var_3 = global2[_wgslsmith_index_u32(68850u, 25u)];
    var var_4 = countOneBits(var_3.d.a.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1565f * 146f) * _wgslsmith_div_f32(-2065f, global3[_wgslsmith_index_u32(4294967295u, 13u)]));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    var var_0 = vec3<bool>(any(vec4<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), true, true)), !select(func_2(select(vec4<i32>(arg_0.b.x, u_input.a, arg_0.b.x, -37933i), vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i), false), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, u_input.a, 18840i, 4558i), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a))), (global3[_wgslsmith_index_u32(arg_0.c, 13u)] == -388f) && true, select(24905i >= u_input.a, true, all(vec4<bool>(false, false, false, false)))), all(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), all(vec4<bool>(false, true, true, false)))));
    let var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(-1868i, 1i, u_input.a, firstLeadingBit(select(arg_0.b.x, arg_0.b.x, false))), _wgslsmith_div_vec4_i32(-countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, -40184i, u_input.a, u_input.a), vec4<i32>(u_input.a, arg_0.b.x, 47788i, 0i))), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 36823i, -29011i), vec4<i32>(arg_0.b.x, -1i, -1i, arg_0.b.x), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, 1i, 1i, arg_0.b.x), vec4<i32>(-17370i, 8089i, arg_0.b.x, -2147483647i)), vec4<bool>(false, true, var_0.x, var_0.x))));
    let var_2 = Struct_2(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.c, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, global0.x), vec2<u32>(51344u, 1u))), vec2<u32>(countOneBits(0u), ~global0.x)), -2147483647i, vec2<i32>(6399i ^ _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x, arg_0.b.x), 1i), abs(abs(u_input.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3(any(vec2<bool>(true, false)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), select(vec4<bool>(false, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !(global3[_wgslsmith_index_u32(global0.x, 13u)] < -505f), true), vec4<bool>(any(!vec4<bool>(var_0.x, true, var_0.x, false)), false, var_0.x, true), select(vec4<bool>(false, var_0.x, var_0.x || true, true), vec4<bool>(select(var_0.x, var_0.x, var_0.x), true, true, false), vec4<bool>(false, true, var_0.x, true))));
    let var_3 = 40509i;
    global0 = firstTrailingBit(~countOneBits(vec2<u32>(22122u, _wgslsmith_add_u32(global0.x, var_2.a.x))));
    return vec4<i32>(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(~arg_0.b.x), -_wgslsmith_clamp_i32(~12299i, var_1.x, -1i)), 0i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-418f, global3[_wgslsmith_index_u32(global0.x, 13u)], 1355f, global3[_wgslsmith_index_u32(global0.x, 13u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, 1149f, global3[_wgslsmith_index_u32(4842u, 13u)], 154f)))))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(1i, u_input.a)) ^ (-vec2<i32>(-5336i, -11613i) << (_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))), ~(~14857u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global3[_wgslsmith_index_u32(1u, 13u)])), -1568f)));
    var var_1 = global0.x;
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_add_u32(~global0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 62825u), vec2<u32>(1u, global0.x)) % 32u), min(global0.x, global0.x)), global0.x), var_0.x, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(var_0.x, -1i)), _wgslsmith_div_vec2_i32(var_0.yx, var_0.yw)), ~countOneBits(vec2<i32>(0i, u_input.a))), vec2<i32>(countOneBits(u_input.a), -var_0.x) & ~_wgslsmith_add_vec2_i32(var_0.zz, vec2<i32>(u_input.a, -47849i))), 1432f, vec4<bool>(true, !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), false, false));
    var_0 = firstLeadingBit((vec4<i32>(1i >> (1u % 32u), -var_2.b, -2147483647i, var_2.b) << (~(~vec4<u32>(4294967295u, 59659u, global0.x, global0.x)) % vec4<u32>(32u))) | func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_2.a.x, 13u)], var_2.d, var_2.d, -1608f) * vec4<f32>(672f, 1287f, var_2.d, -1074f)), var_2.c, 4294967295u), _wgslsmith_f_op_f32(-1366f - _wgslsmith_f_op_f32(f32(-1f) * -902f))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 112335u), 13u)])), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 13u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(199f, global3[_wgslsmith_index_u32(72086u, 13u)], -589f) - vec3<f32>(var_2.d, global3[_wgslsmith_index_u32(global0.x, 13u)], global3[_wgslsmith_index_u32(55649u, 13u)])) * vec3<f32>(-1430f, global3[_wgslsmith_index_u32(31138u, 13u)], -210f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-725f, _wgslsmith_f_op_f32(var_2.d + var_2.d), _wgslsmith_f_op_f32(-var_2.d))), vec3<f32>(var_2.d, _wgslsmith_f_op_f32(step(var_2.d, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 13u)] * global3[_wgslsmith_index_u32(20801u, 13u)]))), global3[_wgslsmith_index_u32(min(global0.x, ~0u), 13u)]))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_2.a.x, 13u)], -1583f, 728f, global3[_wgslsmith_index_u32(1u, 13u)]), vec4<f32>(var_3.x, 177f, -114f, var_2.d)) + vec4<f32>(var_2.d, -1345f, -1036f, global3[_wgslsmith_index_u32(global0.x, 13u)])) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-656f)), _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(min(var_2.d, global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(round(-1639f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.d, -1910f, var_3.x, var_2.d))))), var_0.yz, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, global0.x, max(18351u, var_2.a.x), ~92u), vec4<u32>(var_2.a.x, ~_wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec2_u32(var_2.a, var_2.a), _wgslsmith_div_u32(global0.x, global0.x)), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.x | var_4.b.x, var_4.b.x | var_4.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_4.a.zw, _wgslsmith_f_op_vec2_f32(exp2(var_4.a.yy)))), vec2<f32>(_wgslsmith_div_f32(283f, var_3.x), 1f))), abs(vec4<i32>(var_4.b.x, var_4.b.x, var_4.b.x, abs(u_input.a ^ var_4.b.x))), select(0u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(48540u, ~var_2.a.x), var_2.a.x), _wgslsmith_mult_u32(~0u, _wgslsmith_add_u32(var_2.a.x, 5010u)) <= var_2.a.x));
}

