struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(2147483647i, vec3<u32>(4294967295u, 2713u, 4294967295u), Struct_3(vec3<i32>(-52594i, 2147483647i, 2147483647i), 4294967295u, vec3<f32>(473f, 667f, -522f), 63204u), 13170u), Struct_5(1i, vec3<u32>(14634u, 0u, 1u), Struct_3(vec3<i32>(0i, i32(-2147483648), -23615i), 32817u, vec3<f32>(612f, 1128f, -938f), 0u), 0u), Struct_5(0i, vec3<u32>(47015u, 4294967295u, 31550u), Struct_3(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 1u, vec3<f32>(-435f, -198f, -1000f), 1u), 0u), Struct_5(-118947i, vec3<u32>(1u, 4294967295u, 0u), Struct_3(vec3<i32>(-5177i, i32(-2147483648), 2147483647i), 18841u, vec3<f32>(-1131f, 1000f, 1000f), 14087u), 2709u), Struct_5(-26917i, vec3<u32>(58120u, 5290u, 1u), Struct_3(vec3<i32>(1i, -21283i, 40384i), 0u, vec3<f32>(-634f, 1544f, -543f), 21109u), 0u));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(17164u, 18057u, 0u, 4294967295u));

var<private> global2: u32;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(45362u, vec4<f32>(-1215f, 384f, -758f, 222f), 542f, -644f, vec3<i32>(-79012i, -31955i, 22226i)), Struct_1(1u, vec4<f32>(-114f, 1832f, -849f, 971f), 436f, 696f, vec3<i32>(2147483647i, -32235i, -1i)), Struct_1(0u, vec4<f32>(1000f, 396f, -746f, 698f), 451f, -713f, vec3<i32>(-5251i, -11764i, i32(-2147483648))), Struct_1(22402u, vec4<f32>(-358f, 212f, 1492f, 891f), 944f, -1111f, vec3<i32>(1i, -1i, 1i)), Struct_1(100150u, vec4<f32>(639f, 1299f, -1000f, -593f), 120f, -1397f, vec3<i32>(30627i, -52619i, -7548i)), Struct_1(5600u, vec4<f32>(1181f, 1308f, -433f, -1000f), -151f, -199f, vec3<i32>(-1i, 27693i, 2147483647i)), Struct_1(4294967295u, vec4<f32>(-810f, -972f, -1616f, -331f), -472f, -641f, vec3<i32>(-59243i, 2147483647i, -17509i)), Struct_1(51429u, vec4<f32>(1181f, 985f, 1116f, 677f), 991f, 917f, vec3<i32>(0i, 42063i, 46361i)), Struct_1(4294967295u, vec4<f32>(-1000f, 687f, -213f, 684f), 1233f, 1000f, vec3<i32>(-1i, -2155i, 1i)), Struct_1(42382u, vec4<f32>(-786f, -304f, -684f, 1519f), 107f, 1614f, vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(4294967295u, vec4<f32>(3632f, 1109f, -1310f, 1000f), 1125f, -441f, vec3<i32>(85535i, 2147483647i, 4777i)), Struct_1(1u, vec4<f32>(232f, 979f, 238f, 812f), -1953f, 924f, vec3<i32>(-24685i, 0i, -24700i)), Struct_1(1u, vec4<f32>(-131f, 141f, -3726f, -147f), 194f, -2252f, vec3<i32>(i32(-2147483648), -1i, -760i)), Struct_1(1u, vec4<f32>(1130f, -925f, 131f, 462f), -293f, -1055f, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(31294u, vec4<f32>(-674f, -541f, -1593f, -2363f), 144f, -2145f, vec3<i32>(0i, -10646i, 2147483647i)), Struct_1(4294967295u, vec4<f32>(538f, -833f, 1074f, 460f), 321f, -456f, vec3<i32>(24314i, 0i, 0i)), Struct_1(18481u, vec4<f32>(-564f, -1028f, 766f, -845f), 163f, -1690f, vec3<i32>(i32(-2147483648), -1i, 21190i)), Struct_1(4294967295u, vec4<f32>(692f, 1034f, -440f, -676f), -1688f, -574f, vec3<i32>(-15423i, -8884i, 25711i)), Struct_1(11994u, vec4<f32>(-1441f, -961f, 1737f, -419f), -413f, 532f, vec3<i32>(40412i, 2147483647i, -29987i)), Struct_1(0u, vec4<f32>(2157f, -529f, -1073f, 1520f), 215f, 1561f, vec3<i32>(-1i, 2147483647i, -73521i)), Struct_1(28257u, vec4<f32>(-872f, 850f, -1000f, -1326f), 1405f, -220f, vec3<i32>(0i, 6059i, 2147483647i)), Struct_1(1u, vec4<f32>(127f, -376f, -1000f, 1923f), -405f, -1077f, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_1(17079u, vec4<f32>(-453f, 1070f, 119f, -664f), 593f, -1229f, vec3<i32>(0i, 1i, -48184i)));

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4294967295u, vec4<f32>(1525f, -676f, 1179f, 1000f), -252f, 757f, vec3<i32>(-25346i, 28133i, 1i)), Struct_1(0u, vec4<f32>(746f, 1531f, 1548f, -965f), -494f, -703f, vec3<i32>(-3723i, 1i, i32(-2147483648))), Struct_1(50712u, vec4<f32>(425f, -296f, 1000f, -399f), 830f, -1056f, vec3<i32>(1i, i32(-2147483648), 46i)), Struct_1(1u, vec4<f32>(-1458f, 1051f, 829f, 1376f), -1082f, 480f, vec3<i32>(-30046i, 1i, 2147483647i)), Struct_1(30421u, vec4<f32>(216f, -2872f, -1841f, 1000f), -372f, -601f, vec3<i32>(6839i, 2147483647i, -1i)), Struct_1(1u, vec4<f32>(-2002f, 426f, -892f, -1517f), -1678f, -271f, vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(0u, vec4<f32>(-181f, 355f, 732f, 1318f), -1059f, 748f, vec3<i32>(-12205i, 1187i, 1i)), Struct_1(4294967295u, vec4<f32>(-384f, 601f, -1429f, -924f), -860f, 600f, vec3<i32>(-1i, 1i, 338i)), Struct_1(4294967295u, vec4<f32>(-700f, 642f, -1000f, -1000f), 1203f, -495f, vec3<i32>(-45631i, -35425i, 0i)), Struct_1(60984u, vec4<f32>(324f, 3022f, -478f, -1023f), 299f, -2101f, vec3<i32>(2147483647i, 1i, -1i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    global2 = _wgslsmith_dot_vec3_u32(abs(u_input.e.xyx ^ ~arg_1.zyz), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.e.wxy), _wgslsmith_add_vec3_u32(u_input.e.zyw, ~arg_1.zxz)), arg_1.x, ~(arg_1.x | (0u | u_input.e.x))));
    global0 = array<Struct_5, 5>();
    global4 = array<Struct_1, 10>();
    global0 = array<Struct_5, 5>();
    let var_0 = 21833u;
    return 4294967295u;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(69121u, 5u)];
    global0 = array<Struct_5, 5>();
    let var_1 = 52851i;
    let var_2 = Struct_4(~_wgslsmith_mod_u32(~arg_0.d, func_3(true | arg_2, vec4<u32>(4294967295u, 24274u, 0u, var_0.b.x))), arg_0.c.x, arg_2);
    var var_3 = Struct_3(firstLeadingBit(vec3<i32>(-1184i, _wgslsmith_mult_i32(0i, 75540i), -u_input.d.x)) << (vec3<u32>(arg_0.d ^ var_2.a, 4294967295u, select(_wgslsmith_mod_u32(arg_1.x, u_input.c.x), 0u, var_2.c)) % vec3<u32>(32u)), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.c.x)))), var_0.c.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.c.c.x, arg_0.c.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, 501f, arg_0.c.x))))), 1u);
    return Struct_1(~(var_3.b & (_wgslsmith_clamp_u32(u_input.c.x, var_3.d, 20751u) << (~arg_0.b % 32u))), vec4<f32>(_wgslsmith_f_op_f32(-1f), -134f, arg_0.c.x, var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2190f - _wgslsmith_f_op_f32(var_2.b * -1106f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -(~(~vec3<i32>(var_1, 1i, 0i))));
}

fn func_1() -> vec4<i32> {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_2(func_2(Struct_3(abs(-u_input.d), 16309u, vec3<f32>(_wgslsmith_f_op_f32(-2151f + 1398f), 1f, -1000f), u_input.c.x), u_input.e.xxw, true), func_2(Struct_3(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, 9747i), vec3<i32>(-45858i, -1645i, u_input.b))), abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1643f, -1000f, 1013f) - vec3<f32>(-967f, 218f, -377f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(146f, 1000f, 1000f), vec3<f32>(-1000f, 348f, -920f)))), 1u ^ u_input.e.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(13124u, 4294967295u, u_input.c.x ^ 1u), vec3<u32>(abs(u_input.c.x), u_input.e.x, 46437u), ~(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) & u_input.e.wzw)), any(vec2<bool>(var_0.x, all(var_0.wzy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, -1015f, 710f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(491f, 1000f, 114f), vec3<f32>(101f, 191f, -1897f), true)))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a | -23870i, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -33716i), ~u_input.a, _wgslsmith_div_i32(-23343i, u_input.a)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 11556i, 22257i, u_input.b), vec4<i32>(0i, 1i, u_input.b, u_input.b), vec4<i32>(-1i, -25571i, u_input.a, -22287i))), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -1i, -54201i, 12526i), vec4<i32>(u_input.b, u_input.a, 2147483647i, 64667i))), vec4<i32>(_wgslsmith_mod_i32(u_input.b, -28174i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i), _wgslsmith_mult_i32(2975i, u_input.d.x), 1i))), Struct_1(~u_input.c.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(246f, 136f, -183f, -574f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-914f, -340f, 787f, 587f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, 1023f, -1000f, -989f))), any(select(var_0.zz, var_0.yy, vec2<bool>(true, true))))), 343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f * -1000f))), -abs(u_input.d)));
    global1 = array<vec4<u32>, 1>();
    var var_2 = Struct_2(func_2(Struct_3(~_wgslsmith_mod_vec3_i32(var_1.b.e, u_input.d), 32856u, vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_1.b.d), 2193f, _wgslsmith_f_op_f32(-var_1.c.x)), 49951u), u_input.e.xyz, reverseBits(~var_1.e.a) >= 7746u), func_2(Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-2147483647i, 1i, 1i)), u_input.d, select(var_1.a.e, vec3<i32>(var_1.b.e.x, 20542i, var_1.e.e.x), false)), ~var_1.a.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.e.d, var_1.e.b.x, var_1.a.d))), ~0u | var_1.b.a), vec3<u32>(~var_1.e.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c), max(u_input.e.wz, vec2<u32>(34308u, 1u))), max(~u_input.e.x, u_input.e.x)), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b.b.zzw, _wgslsmith_f_op_vec3_f32(-var_1.c))), u_input.d.yx, Struct_1(u_input.e.x << (u_input.c.x % 32u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d, var_1.e.b.x, -990f, 1000f) + var_1.b.b), vec4<f32>(701f, 2116f, 289f, 1342f)))), var_1.a.b.x, var_1.b.c, var_1.a.e));
    let var_3 = Struct_4(~_wgslsmith_mult_u32(81984u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.b.a, var_1.b.a, 4294967295u), u_input.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.e.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1743f))))), true);
    return max(-_wgslsmith_mult_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(var_2.d.x, -43440i, var_2.a.e.x, var_1.a.e.x))), min(vec4<i32>(36693i, var_2.b.e.x, var_2.b.e.x, -49535i), vec4<i32>(var_1.d.x, var_2.b.e.x, -2147483647i, -1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, var_2.a.a, 76u, var_3.a), vec4<u32>(15780u, var_2.a.a, var_3.a, 37688u)) % vec4<u32>(32u))), ~(-vec4<i32>(max(u_input.d.x, u_input.d.x), i32(-1i) * -1242i, -var_2.a.e.x, var_1.d.x >> (4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec4_i32(select(~vec4<i32>(i32(-1i) * -9891i, countOneBits(u_input.a), -12792i, ~2147483647i), func_1(), select(select(vec4<bool>(false, var_0, false, var_0), select(vec4<bool>(var_0, false, true, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)), !vec4<bool>(var_0, var_0, var_0, false)), select(select(vec4<bool>(true, false, var_0, false), vec4<bool>(true, true, var_0, false), var_0), vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, false, true), vec4<bool>(true, var_0, var_0, var_0))), vec4<bool>(all(vec3<bool>(false, var_0, true)), !var_0, var_0, var_0))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.a, u_input.d.x, 9730i, -31517i) << (vec4<u32>(0u, 4294967295u, u_input.e.x, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b, 26076i, 1i, -34028i), vec4<i32>(u_input.a, u_input.d.x, -2147483647i, 0i)), select(vec4<i32>(u_input.d.x, u_input.b, -2147483647i, 2147483647i), vec4<i32>(u_input.b, 40518i, 25868i, u_input.d.x), vec4<bool>(true, var_0, var_0, true)), max(vec4<i32>(54912i, u_input.a, u_input.b, -27392i), vec4<i32>(23224i, u_input.a, 0i, u_input.b)))), ~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(11294i, u_input.d.x, -42778i, u_input.a)), vec4<i32>(-1i, 1i, 30599i, -2147483647i), vec4<i32>(-61900i, u_input.b, 1i, 1i)), vec4<i32>(u_input.a, select(0i, -2147483647i, !var_0), ~14784i, ~abs(-11476i))));
    let var_2 = func_2(Struct_3(-u_input.d, ~u_input.e.x ^ countOneBits(4294967295u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-815f, -715f, -226f)))), vec3<f32>(_wgslsmith_f_op_f32(-574f * -719f), _wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(f32(-1f) * -245f)))), 1u), u_input.e.yxz, var_0 || var_0).b.x;
    var var_3 = Struct_1(~u_input.c.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(1707f, -1018f), _wgslsmith_f_op_f32(max(var_2, var_2)), var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -1512f, var_2, var_2), vec4<f32>(348f, var_2, 1363f, 600f), vec4<bool>(true, false, false, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2, var_2, -616f), vec4<f32>(923f, var_2, var_2, -768f)) + func_2(Struct_3(vec3<i32>(u_input.b, -19163i, u_input.b), u_input.e.x, vec3<f32>(var_2, -465f, var_2), 16264u), u_input.e.zwy, var_0).b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(409f, var_2) - _wgslsmith_div_f32(348f, -834f)), var_2, abs(u_input.d));
    var var_4 = ~global1[_wgslsmith_index_u32(~u_input.e.x, 1u)];
    let var_5 = select(select(!(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_0), false)), select(!select(vec3<bool>(true, var_0, false), vec3<bool>(false, var_0, false), vec3<bool>(var_0, true, var_0)), select(vec3<bool>(var_0, true, false), select(vec3<bool>(true, true, var_0), vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, true)), select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, true, true), vec3<bool>(false, false, var_0))), true), vec3<bool>(true, var_0, true)), !select(vec3<bool>(var_0 && true, true, true), vec3<bool>(false, true, all(vec2<bool>(var_0, false))), !var_0), !any(!vec4<bool>(true, var_0, var_0, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(-countOneBits(vec3<i32>(1i, var_3.e.x, 24796i)), -(var_3.e | u_input.d)), u_input.e.x, select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(64715u, var_4.x), u_input.e.xy) >> (var_4.x % 32u), ~u_input.e.x), ~3093u, select(var_5.x, (var_5.x | var_5.x) | (1448f < var_2), all(vec3<bool>(var_0, var_0, var_5.x)))));
}

