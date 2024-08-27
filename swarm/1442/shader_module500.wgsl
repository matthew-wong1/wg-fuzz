struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(6524i, Struct_3(Struct_1(vec4<i32>(25187i, 0i, 26007i, -1i), true), vec4<u32>(72696u, 4858u, 34870u, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -1i, -35320i, -7328i), true), true, Struct_1(vec4<i32>(-5174i, 1i, 8175i, 15291i), true)), vec4<f32>(-1631f, 245f, 1000f, 446f), 5808i, vec2<f32>(-818f, -133f)), Struct_4(0i, Struct_3(Struct_1(vec4<i32>(2147483647i, -36422i, -8599i, 37916i), true), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(1i, -36610i, -30773i, 61301i), true), true, Struct_1(vec4<i32>(-17874i, -33632i, i32(-2147483648), 1278i), false)), vec4<f32>(817f, 341f, -1000f, 1018f), i32(-2147483648), vec2<f32>(641f, 1978f)), Struct_4(-27591i, Struct_3(Struct_1(vec4<i32>(43480i, 21190i, 1i, 18133i), false), vec4<u32>(32707u, 0u, 73275u, 8322u), Struct_1(vec4<i32>(-12971i, 31034i, 44095i, 2147483647i), false), false, Struct_1(vec4<i32>(-1i, 18914i, i32(-2147483648), 2147483647i), true)), vec4<f32>(-1411f, -1017f, -689f, -2233f), -1i, vec2<f32>(216f, -1116f)), Struct_4(2485i, Struct_3(Struct_1(vec4<i32>(34895i, 0i, i32(-2147483648), 2147483647i), false), vec4<u32>(14352u, 17475u, 35419u, 0u), Struct_1(vec4<i32>(-20040i, 20492i, -1i, -64431i), false), true, Struct_1(vec4<i32>(-6096i, 1i, -1i, 2147483647i), false)), vec4<f32>(1000f, 1193f, 262f, -623f), 1i, vec2<f32>(-811f, 1510f)), Struct_4(-1i, Struct_3(Struct_1(vec4<i32>(4810i, 13478i, 1i, 43487i), true), vec4<u32>(19559u, 55706u, 26522u, 29528u), Struct_1(vec4<i32>(-18281i, -36538i, 65148i, -39930i), false), true, Struct_1(vec4<i32>(15176i, 2147483647i, -1i, 0i), true)), vec4<f32>(-653f, -933f, -1108f, -848f), 0i, vec2<f32>(1328f, -1000f)), Struct_4(27102i, Struct_3(Struct_1(vec4<i32>(-28684i, i32(-2147483648), i32(-2147483648), 2147483647i), false), vec4<u32>(4294967295u, 0u, 64493u, 0u), Struct_1(vec4<i32>(19908i, -1i, 31206i, 13802i), true), false, Struct_1(vec4<i32>(0i, 0i, -31553i, 1i), false)), vec4<f32>(707f, 651f, -536f, -251f), -1i, vec2<f32>(1000f, 705f)), Struct_4(-1i, Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 4630i, 6651i, 0i), false), vec4<u32>(1u, 1u, 1u, 5980u), Struct_1(vec4<i32>(-48739i, -27335i, 0i, 3365i), true), false, Struct_1(vec4<i32>(-9476i, -11688i, 1i, 44126i), false)), vec4<f32>(-1410f, 1066f, -419f, -236f), -12365i, vec2<f32>(272f, -1242f)), Struct_4(-4120i, Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 2147483647i), false), vec4<u32>(17919u, 0u, 30892u, 22913u), Struct_1(vec4<i32>(74674i, -48484i, -1i, 2147483647i), false), false, Struct_1(vec4<i32>(-1i, -17819i, 147i, i32(-2147483648)), false)), vec4<f32>(-259f, -306f, 350f, -660f), 17075i, vec2<f32>(-345f, -504f)), Struct_4(i32(-2147483648), Struct_3(Struct_1(vec4<i32>(1i, 0i, 2147483647i, -1i), true), vec4<u32>(51405u, 2700u, 46872u, 37311u), Struct_1(vec4<i32>(0i, 6816i, 1i, 0i), true), true, Struct_1(vec4<i32>(0i, 27068i, i32(-2147483648), 1i), false)), vec4<f32>(830f, 249f, 1000f, -963f), 8335i, vec2<f32>(173f, -1225f)), Struct_4(i32(-2147483648), Struct_3(Struct_1(vec4<i32>(1026i, 0i, 0i, -1i), true), vec4<u32>(30339u, 0u, 4294967295u, 20449u), Struct_1(vec4<i32>(1i, 0i, 8761i, 39777i), false), false, Struct_1(vec4<i32>(50150i, -1i, 0i, -1i), false)), vec4<f32>(-462f, -247f, 819f, 432f), 0i, vec2<f32>(1236f, -1394f)), Struct_4(i32(-2147483648), Struct_3(Struct_1(vec4<i32>(-1i, 5016i, 0i, -769i), false), vec4<u32>(117327u, 4294967295u, 2143u, 57064u), Struct_1(vec4<i32>(-19158i, 0i, 0i, 1i), true), false, Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), -1i), false)), vec4<f32>(-827f, 711f, -408f, 1400f), -1i, vec2<f32>(-594f, 826f)), Struct_4(1i, Struct_3(Struct_1(vec4<i32>(2147483647i, -21720i, 0i, -10794i), false), vec4<u32>(48322u, 1u, 4294967295u, 9912u), Struct_1(vec4<i32>(-44936i, 1i, 13565i, i32(-2147483648)), true), false, Struct_1(vec4<i32>(-40037i, i32(-2147483648), -1i, -1i), false)), vec4<f32>(193f, 251f, 723f, -302f), 2147483647i, vec2<f32>(1152f, 477f)), Struct_4(-63082i, Struct_3(Struct_1(vec4<i32>(-4279i, 2911i, -29978i, -1i), false), vec4<u32>(1u, 46632u, 4294967295u, 0u), Struct_1(vec4<i32>(i32(-2147483648), 23007i, 17001i, i32(-2147483648)), true), false, Struct_1(vec4<i32>(23141i, 2147483647i, -42021i, 9398i), true)), vec4<f32>(-1725f, 746f, 171f, 1042f), 11408i, vec2<f32>(-584f, 693f)), Struct_4(14593i, Struct_3(Struct_1(vec4<i32>(64497i, 0i, 1i, 1i), true), vec4<u32>(1u, 40042u, 0u, 4294967295u), Struct_1(vec4<i32>(6283i, 2147483647i, 2147483647i, 1i), false), false, Struct_1(vec4<i32>(1i, 0i, 50668i, 1i), true)), vec4<f32>(498f, 614f, -1827f, -265f), 10929i, vec2<f32>(-1037f, -1628f)), Struct_4(0i, Struct_3(Struct_1(vec4<i32>(-64224i, 14220i, 20379i, 9846i), true), vec4<u32>(1u, 74845u, 0u, 0u), Struct_1(vec4<i32>(1i, -58106i, -1i, 2147483647i), true), true, Struct_1(vec4<i32>(i32(-2147483648), 1474i, i32(-2147483648), -26751i), false)), vec4<f32>(-820f, 960f, -449f, -738f), 2147483647i, vec2<f32>(-2447f, 2038f)), Struct_4(i32(-2147483648), Struct_3(Struct_1(vec4<i32>(0i, 1i, 2147483647i, 1i), true), vec4<u32>(40828u, 28838u, 0u, 4294967295u), Struct_1(vec4<i32>(-1i, -27910i, 10710i, 2147483647i), true), false, Struct_1(vec4<i32>(-1i, -50827i, -19264i, 66018i), false)), vec4<f32>(-491f, -915f, 754f, 2385f), 14092i, vec2<f32>(-1358f, 485f)));

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<vec3<f32>, 3>;

var<private> global4: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-872f, -892f, -610f, -456f), vec4<f32>(1149f, 518f, -1000f, -509f), vec4<f32>(582f, 165f, -485f, -102f), vec4<f32>(841f, -1112f, 1780f, 473f), vec4<f32>(151f, 671f, -155f, 1743f), vec4<f32>(578f, -2225f, 389f, 1364f), vec4<f32>(454f, 746f, -424f, 399f), vec4<f32>(-1941f, -460f, 712f, 1459f), vec4<f32>(-1186f, -1646f, 1573f, -1592f), vec4<f32>(-1000f, -825f, -701f, 1131f), vec4<f32>(-249f, -735f, 1000f, 1484f), vec4<f32>(305f, -1989f, 1000f, -384f), vec4<f32>(1000f, -559f, 454f, -500f), vec4<f32>(-511f, 929f, -1536f, 215f), vec4<f32>(370f, 100f, 275f, -1886f), vec4<f32>(-858f, -734f, 306f, -1508f), vec4<f32>(-1259f, 987f, -242f, 974f), vec4<f32>(-265f, 736f, 271f, 1331f), vec4<f32>(-1354f, 1221f, 667f, 822f), vec4<f32>(1276f, 1108f, -281f, -965f), vec4<f32>(1143f, -1520f, 1511f, 761f), vec4<f32>(1446f, 1269f, 782f, 466f), vec4<f32>(1361f, 900f, -1000f, -1108f), vec4<f32>(433f, 917f, 1165f, 634f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    global3 = array<vec3<f32>, 3>();
    var var_0 = arg_1.d;
    let var_1 = u_input.a;
    var var_2 = Struct_4(firstTrailingBit(-(arg_1.c.a.x | -2147483647i)), Struct_3(Struct_1(arg_1.c.a, global1.b), vec4<u32>(38175u, 1u, u_input.a, u_input.a), arg_1.c, any(select(select(vec4<bool>(global1.b, arg_1.c.b, true, false), vec4<bool>(true, false, arg_1.b.b, global1.b), false), vec4<bool>(false, arg_1.b.b, global1.b, global1.b), global1.b)), arg_1.c), global4[_wgslsmith_index_u32(arg_1.d, 24u)], -(arg_0.x >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, -1902f) * vec2<f32>(arg_1.a, arg_1.a))))));
    let var_3 = Struct_5(Struct_4(18558i, var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.c), -_wgslsmith_div_i32(34143i, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), var_2.e.x)), ~vec2<u32>(u_input.a, 20465u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.e.x - _wgslsmith_f_op_f32(-265f - 754f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(335f + -1000f), arg_1.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    global2 = false & arg_2;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1260f, 1280f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f * -1633f) + _wgslsmith_f_op_f32(func_3(vec3<i32>(global1.a.x, -16372i, -2147483647i), Struct_2(684f, Struct_1(vec4<i32>(1i, global1.a.x, global1.a.x, -1i), true), Struct_1(global1.a, false), arg_1))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-9250i, arg_0.a.x, -2147483647i), Struct_2(-326f, Struct_1(vec4<i32>(arg_0.a.x, 20170i, global1.a.x, 0i), true), Struct_1(vec4<i32>(1398i, 18950i, global1.a.x, global1.a.x), true), 16949u))) * 808f)), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.wzy, arg_0.a.xyy), -2147483647i, global1.a.x >> (60108u % 32u), _wgslsmith_mod_i32(-2147483647i, global1.a.x)) ^ ~(-arg_0.a), global1.b), arg_0, 50671u);
    global3 = array<vec3<f32>, 3>();
    global3 = array<vec3<f32>, 3>();
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(~max(vec4<i32>(global1.a.x, -1i, 1i, var_0.c.a.x), var_0.b.a), vec4<i32>(~_wgslsmith_sub_i32(1i, var_0.c.a.x), 0i, global1.a.x, -var_0.c.a.x)), !var_0.c.b & (2147483647i == _wgslsmith_mod_i32(_wgslsmith_add_i32(global1.a.x, arg_0.a.x), countOneBits(arg_0.a.x))));
    return 36038i;
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(~vec4<i32>(global1.a.x, func_2(Struct_1(global1.a, global1.b), u_input.a, false), arg_0.x | arg_0.x, global1.a.x), true), ~((_wgslsmith_mult_vec4_u32(vec4<u32>(52140u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) << ((vec4<u32>(17250u, u_input.a, u_input.a, 0u) >> (vec4<u32>(u_input.a, 5377u, u_input.a, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))) & ((vec4<u32>(u_input.a, 1u, u_input.a, 53365u) ^ vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) >> (~vec4<u32>(55358u, u_input.a, 43740u, u_input.a) % vec4<u32>(32u)))), Struct_1(abs(-vec4<i32>(global1.a.x, arg_0.x, 2147483647i, arg_0.x)), any(select(select(vec2<bool>(false, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, arg_1), global1.b))), 35680i >= arg_0.x, Struct_1(_wgslsmith_sub_vec4_i32(~global1.a, min(global1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, global1.a.x, global1.a.x, -2147483647i), global1.a))), reverseBits(-2147483647i) >= func_2(Struct_1(global1.a, true), ~41134u, false)));
    var var_1 = ~(var_0.b.x ^ 1u);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~firstTrailingBit(var_0.b.x) << (firstLeadingBit(reverseBits(var_0.b.x)) % 32u), 3u)]) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(var_0.b.x, 3u)] + global3[_wgslsmith_index_u32(~var_0.b.x, 3u)]))));
    let var_4 = var_0.e;
    return Struct_2(var_3.x, Struct_1(_wgslsmith_mult_vec4_i32(var_4.a, -(vec4<i32>(1i, 1i, var_4.a.x, 36936i) >> (vec4<u32>(0u, 31859u, var_0.b.x, 0u) % vec4<u32>(32u)))), var_4.b), Struct_1(global1.a, var_4.b), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!(!global1.b | true));
    let var_0 = func_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(-global1.a.x, ~global1.a.x, 10295i), vec3<i32>(1i, -global1.a.x, 1i)), false);
    let var_1 = global1.b;
    var var_2 = vec2<bool>(all(select(vec4<bool>(any(vec3<bool>(var_0.c.b, var_0.c.b, global1.b)), true, all(vec3<bool>(true, false, false)), !var_0.c.b), select(!vec4<bool>(true, false, var_0.b.b, false), vec4<bool>(false, false, var_0.b.b, var_0.b.b), func_1(vec3<i32>(2147483647i, global1.a.x, -11991i), false).c.b), vec4<bool>(true, true, false, false))), true);
    var var_3 = var_0;
    global4 = array<vec4<f32>, 24>();
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1507f)), -2157f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_3.a)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_3.a) + vec2<f32>(302f, 533f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-134f, var_0.a), vec2<f32>(var_0.a, var_0.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-975f, var_0.a) + vec2<f32>(181f, var_3.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(var_0.a, var_0.a)))))), false || !var_2.x));
    global3 = array<vec3<f32>, 3>();
    var_2 = vec2<bool>(true, !(false | select(all(vec2<bool>(var_3.c.b, var_3.b.b)), any(vec4<bool>(global1.b, var_3.b.b, var_2.x, global1.b)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(var_0.c.a.x)), vec3<u32>(~(~_wgslsmith_add_u32(1u, u_input.a)), u_input.a, ~(_wgslsmith_sub_u32(30387u, var_3.d) >> (3551u % 32u))));
}

