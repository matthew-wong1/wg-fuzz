struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, false, false, false, false, true, true, true, false, true, true, false, true, true, true, true, true, true);

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<f32>(-199f, -1054f, -352f), Struct_1(vec4<i32>(14191i, 43513i, i32(-2147483648), 1i), true), vec3<bool>(true, true, false), vec3<f32>(-604f, 1000f, -788f)), Struct_2(vec3<f32>(-1114f, 2698f, 1000f), Struct_1(vec4<i32>(0i, 1i, -47073i, 0i), false), vec3<bool>(true, false, false), vec3<f32>(510f, 550f, 744f)), Struct_2(vec3<f32>(982f, -581f, -1025f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -23391i, -26839i), false), vec3<bool>(false, false, true), vec3<f32>(1000f, 339f, -1023f)), Struct_2(vec3<f32>(886f, -1075f, 1101f), Struct_1(vec4<i32>(11929i, 2617i, -1i, 21565i), true), vec3<bool>(true, false, false), vec3<f32>(-354f, 525f, 1397f)), Struct_2(vec3<f32>(-384f, -370f, 1149f), Struct_1(vec4<i32>(i32(-2147483648), -1503i, 1i, 0i), true), vec3<bool>(true, true, false), vec3<f32>(1080f, -355f, 889f)), Struct_2(vec3<f32>(-1873f, 1000f, -966f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 3902i, i32(-2147483648)), true), vec3<bool>(false, true, false), vec3<f32>(-471f, -826f, -206f)), Struct_2(vec3<f32>(-523f, 219f, 1245f), Struct_1(vec4<i32>(-27204i, i32(-2147483648), -11089i, 2147483647i), true), vec3<bool>(false, true, true), vec3<f32>(-116f, -1151f, -1799f)), Struct_2(vec3<f32>(1576f, -1334f, 463f), Struct_1(vec4<i32>(1i, -55867i, 20376i, -1i), false), vec3<bool>(false, true, true), vec3<f32>(-864f, -1276f, 519f)), Struct_2(vec3<f32>(-1160f, -1269f, 813f), Struct_1(vec4<i32>(14159i, -45314i, -15826i, 53226i), false), vec3<bool>(false, true, false), vec3<f32>(1485f, -1744f, 352f)), Struct_2(vec3<f32>(339f, -1000f, 468f), Struct_1(vec4<i32>(i32(-2147483648), -28712i, -1i, 0i), true), vec3<bool>(true, false, false), vec3<f32>(-1293f, 1000f, -162f)), Struct_2(vec3<f32>(1561f, 1364f, 409f), Struct_1(vec4<i32>(22697i, i32(-2147483648), 0i, 1i), true), vec3<bool>(false, true, false), vec3<f32>(161f, 981f, 2387f)), Struct_2(vec3<f32>(-3153f, 1873f, 515f), Struct_1(vec4<i32>(-1i, 8370i, -20995i, 20373i), false), vec3<bool>(true, true, true), vec3<f32>(-1104f, -2856f, -1240f)), Struct_2(vec3<f32>(-149f, -102f, -1959f), Struct_1(vec4<i32>(-45633i, 0i, 6930i, -36545i), true), vec3<bool>(false, false, false), vec3<f32>(-633f, 149f, -438f)), Struct_2(vec3<f32>(581f, -1505f, 1825f), Struct_1(vec4<i32>(41517i, -1i, 27244i, i32(-2147483648)), false), vec3<bool>(false, true, true), vec3<f32>(-388f, 990f, -717f)), Struct_2(vec3<f32>(-653f, 483f, 1761f), Struct_1(vec4<i32>(-1i, 335i, -35133i, -28486i), false), vec3<bool>(true, true, false), vec3<f32>(797f, -635f, -1307f)), Struct_2(vec3<f32>(-1000f, -103f, -566f), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -18609i), false), vec3<bool>(false, false, true), vec3<f32>(-1358f, 1183f, 1736f)), Struct_2(vec3<f32>(2975f, -342f, 554f), Struct_1(vec4<i32>(0i, 25215i, 1i, 36923i), true), vec3<bool>(true, true, false), vec3<f32>(1841f, 383f, 332f)), Struct_2(vec3<f32>(1571f, -130f, 1000f), Struct_1(vec4<i32>(i32(-2147483648), -1i, -29136i, 28246i), false), vec3<bool>(true, false, true), vec3<f32>(1090f, -239f, 1878f)), Struct_2(vec3<f32>(1000f, -144f, -597f), Struct_1(vec4<i32>(1i, 2147483647i, 1i, -22157i), false), vec3<bool>(true, true, true), vec3<f32>(-156f, -391f, -184f)), Struct_2(vec3<f32>(1000f, 131f, 1000f), Struct_1(vec4<i32>(2147483647i, 14351i, i32(-2147483648), -23139i), true), vec3<bool>(false, false, true), vec3<f32>(175f, -1000f, -1907f)), Struct_2(vec3<f32>(181f, 914f, -534f), Struct_1(vec4<i32>(-9106i, i32(-2147483648), 0i, 0i), false), vec3<bool>(false, false, true), vec3<f32>(-174f, 900f, 266f)), Struct_2(vec3<f32>(1000f, 249f, 700f), Struct_1(vec4<i32>(36001i, -16587i, 1i, 41850i), true), vec3<bool>(true, true, true), vec3<f32>(-221f, 630f, 371f)), Struct_2(vec3<f32>(897f, -277f, 913f), Struct_1(vec4<i32>(10377i, -1i, i32(-2147483648), i32(-2147483648)), true), vec3<bool>(true, false, true), vec3<f32>(436f, 1286f, -1701f)), Struct_2(vec3<f32>(-583f, 1000f, 201f), Struct_1(vec4<i32>(0i, 0i, 1i, 1i), false), vec3<bool>(false, false, false), vec3<f32>(548f, 999f, 1289f)), Struct_2(vec3<f32>(839f, 1271f, -226f), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), false), vec3<bool>(true, true, false), vec3<f32>(-434f, 326f, -252f)), Struct_2(vec3<f32>(1073f, 131f, 551f), Struct_1(vec4<i32>(1i, -1i, -8580i, -32687i), true), vec3<bool>(false, false, true), vec3<f32>(-912f, 1738f, -297f)), Struct_2(vec3<f32>(598f, 1429f, -386f), Struct_1(vec4<i32>(2147483647i, -50647i, 1i, 0i), true), vec3<bool>(false, true, true), vec3<f32>(700f, 1000f, -980f)), Struct_2(vec3<f32>(1193f, -1898f, 1262f), Struct_1(vec4<i32>(-28810i, 0i, 2147483647i, 4706i), true), vec3<bool>(false, false, false), vec3<f32>(699f, 395f, 522f)), Struct_2(vec3<f32>(-1121f, -1138f, 1562f), Struct_1(vec4<i32>(20349i, i32(-2147483648), 42451i, i32(-2147483648)), false), vec3<bool>(true, true, true), vec3<f32>(-191f, 1031f, -370f)), Struct_2(vec3<f32>(1325f, 625f, -1367f), Struct_1(vec4<i32>(-10632i, i32(-2147483648), -1i, i32(-2147483648)), true), vec3<bool>(true, false, false), vec3<f32>(422f, -2016f, 236f)), Struct_2(vec3<f32>(-514f, -749f, -354f), Struct_1(vec4<i32>(2147483647i, -4213i, -73234i, -76501i), false), vec3<bool>(true, true, false), vec3<f32>(-428f, 1695f, -313f)));

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(0i, -21339i, 1i, 31150i), vec4<i32>(-24042i, 0i, 1i, -13872i), vec4<i32>(11446i, 31089i, -14524i, 11317i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -15770i), vec4<i32>(i32(-2147483648), -1i, 54016i, 2147483647i), vec4<i32>(-61774i, 0i, -8253i, -32048i), vec4<i32>(-24272i, i32(-2147483648), 0i, -27619i), vec4<i32>(2147483647i, -1i, 1i, 2147483647i), vec4<i32>(22195i, 5905i, 36487i, 43799i), vec4<i32>(-1i, i32(-2147483648), -5406i, 0i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -20039i), vec4<i32>(0i, 2147483647i, -1i, 4275i), vec4<i32>(i32(-2147483648), -25617i, i32(-2147483648), -76900i), vec4<i32>(544i, 2147483647i, 1i, 1i), vec4<i32>(19314i, -1i, 2147483647i, -6972i), vec4<i32>(20962i, i32(-2147483648), 4008i, -1i), vec4<i32>(i32(-2147483648), 24810i, 2147483647i, 2147483647i), vec4<i32>(-12638i, 64985i, -1i, 1i), vec4<i32>(-1i, -11559i, 20824i, 32757i), vec4<i32>(-51316i, 1i, -294i, 2147483647i), vec4<i32>(1i, 92i, 0i, 0i), vec4<i32>(i32(-2147483648), 51476i, i32(-2147483648), 24072i), vec4<i32>(2147483647i, -69536i, -10443i, 0i), vec4<i32>(i32(-2147483648), -1i, 11088i, 1i), vec4<i32>(-23129i, -102221i, -1i, 0i), vec4<i32>(14915i, i32(-2147483648), -1i, -1i), vec4<i32>(i32(-2147483648), -2183i, 2147483647i, -5663i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    var var_0 = arg_1.d;
    global1 = array<Struct_2, 31>();
    var var_1 = Struct_3(vec2<u32>(select(u_input.c.x << (4294967295u % 32u), _wgslsmith_add_u32(arg_1.a.x, 57024u), !var_0.c.x), 1u), select(var_0.c, vec3<bool>(select(true, !global0[_wgslsmith_index_u32(arg_1.a.x, 21u)], select(var_0.b.b, arg_1.d.b.b, false)), global0[_wgslsmith_index_u32(select(u_input.e, abs(u_input.e), any(var_0.c)), 21u)], true), true), 0u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, arg_0, arg_0))), arg_1.d.b, arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1333f, arg_0)) * var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), -2764f)));
    var var_2 = Struct_3(arg_1.a, vec3<bool>(_wgslsmith_f_op_f32(abs(1363f)) < arg_1.d.a.x, false, var_1.d.b.b), _wgslsmith_sub_u32(var_1.a.x, u_input.e), var_1.d);
    return 1i;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1304f, 2311f, -720f));
    var var_1 = _wgslsmith_sub_i32(18989i, select(43448i, u_input.a, !global0[_wgslsmith_index_u32(68098u, 21u)]));
    let var_2 = global1[_wgslsmith_index_u32(u_input.e, 31u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 141f))));
    return _wgslsmith_dot_vec4_i32(-var_2.b.a ^ vec4<i32>(var_2.b.a.x, abs(u_input.a), abs(-1i), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(2147483647i, 1i, var_2.b.a.x))), -vec4<i32>(u_input.a, u_input.a, var_2.b.a.x, u_input.a) | vec4<i32>(_wgslsmith_mod_i32(1429i, -2147483647i), func_3(var_3.x, Struct_3(u_input.c.xw, var_2.c, 1361u, Struct_2(vec3<f32>(var_0.x, -969f, var_3.x), var_2.b, vec3<bool>(true, var_2.b.b, global0[_wgslsmith_index_u32(u_input.e, 21u)]), vec3<f32>(-342f, -384f, var_3.x)))), var_2.b.a.x, 1i)) > 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> bool {
    return false;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec3<i32>) -> bool {
    global2 = array<vec4<i32>, 27>();
    var var_0 = Struct_3(~u_input.c.yz, !select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true)), vec3<bool>(func_2(), true, 530f < arg_0.x), false), _wgslsmith_dot_vec4_u32(vec4<u32>(34741u, ~(~u_input.e), u_input.e, 27334u), min(u_input.c << (vec4<u32>(0u, 42194u, u_input.d, u_input.d) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 31716u), vec4<u32>(u_input.d, u_input.e, u_input.e, 13709u), vec4<bool>(arg_1, global0[_wgslsmith_index_u32(24690u, 21u)], arg_2.x, arg_1))) | _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 48388u), u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 31628u, u_input.e, 26550u), u_input.c, u_input.c), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.e, 4294967295u, 1u, 1u)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(1u) >> (u_input.c.x % 32u), ~_wgslsmith_mod_u32(u_input.e, abs(0u))), 31u)]);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = Struct_3(select(u_input.c.ww, var_0.a, arg_2), !vec3<bool>(func_2(), select(var_0.d.b.b, true, func_2()), false), 0u, var_0.d);
    global0 = array<bool, 21>();
    return true;
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1152f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -1222f)))), func_4(vec4<i32>(~_wgslsmith_div_i32(-3799i, arg_0), min(~1i, u_input.b.x | -1i), 1i, u_input.a ^ abs(-27705i)), func_2() | true), select(!select(!vec2<bool>(arg_1, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 21u)], global0[_wgslsmith_index_u32(65529u, 21u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], arg_1), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 21u)], false))), select(select(vec2<bool>(true, false), !vec2<bool>(global0[_wgslsmith_index_u32(2261u, 21u)], arg_1), !arg_1), vec2<bool>(func_4(global2[_wgslsmith_index_u32(68274u, 27u)], true), true), func_2()), !vec2<bool>(func_2(), true)), -u_input.b);
    global2 = array<vec4<i32>, 27>();
    global0 = array<bool, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(776f, _wgslsmith_div_f32(-236f, -1999f)) - vec2<f32>(_wgslsmith_div_f32(-1682f, -471f), _wgslsmith_f_op_f32(f32(-1f) * -781f))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2430f), 1f)), 1171f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -148f), 1750f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, 1047f))))))));
    return global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d | _wgslsmith_sub_u32(~0u, var_0)), 31u)];
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = array<bool, 21>();
    let var_0 = func_1(-1i, true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x)))))));
    var var_2 = vec4<bool>(arg_2.b.b, func_1(func_1(arg_1.b.a.x, false).b.a.x & (2147483647i ^ _wgslsmith_div_i32(var_0.b.a.x, arg_1.b.a.x)), func_2()).c.x, false, arg_1.c.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 31>();
    global1 = array<Struct_2, 31>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, ~u_input.d) ^ func_6(global1[_wgslsmith_index_u32(~(~u_input.c.x << (1u % 32u)), 31u)], Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 425f, -2408f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1956f, -403f, 298f) - vec3<f32>(-768f, -643f, 611f))), Struct_1(_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(35486u, 27u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(11174u, 21u)], global0[_wgslsmith_index_u32(u_input.e, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], false))), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], true), vec3<bool>(global0[_wgslsmith_index_u32(42046u, 21u)], global0[_wgslsmith_index_u32(1380u, 21u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-117f, 1553f, 346f) * vec3<f32>(-296f, -553f, -1527f)))), func_1(~u_input.b.x, !(u_input.e < 4294967295u))), 31u)];
    let var_1 = countOneBits(vec2<i32>(1i ^ ~_wgslsmith_mult_i32(33877i, u_input.a), var_0.b.a.x));
    let var_2 = vec2<u32>(u_input.d, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(~abs(u_input.c), u_input.c, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), _wgslsmith_mod_u32(~4294967295u, firstTrailingBit(u_input.c.x)), abs(func_1(-_wgslsmith_mod_i32(1i, u_input.b.x), select(any(vec4<bool>(var_0.b.b, true, true, true)), -1359i >= u_input.a, true)).b.a));
}

