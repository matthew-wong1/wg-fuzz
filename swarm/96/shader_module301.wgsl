struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(1i, -1i), vec4<f32>(1563f, 432f, -127f, 1154f), vec4<f32>(166f, -1573f, -724f, -1000f), 486f));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 6816i), vec4<f32>(1402f, 193f, -434f, 1000f), vec4<f32>(-252f, -1398f, -2077f, 1792f), -427f)), Struct_2(Struct_1(vec2<i32>(-25294i, 7548i), vec4<f32>(487f, 524f, -592f, -262f), vec4<f32>(-896f, 1630f, -1477f, 2855f), -740f)), Struct_2(Struct_1(vec2<i32>(-12328i, 0i), vec4<f32>(-370f, -1000f, -821f, -2069f), vec4<f32>(-1710f, 2035f, 1000f, 904f), -1044f)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-207f, 168f, 142f, -236f), vec4<f32>(-1184f, -356f, -140f, -901f), 449f)), Struct_2(Struct_1(vec2<i32>(0i, 0i), vec4<f32>(802f, 1668f, 888f, 1741f), vec4<f32>(-525f, 775f, -685f, 1000f), 408f)), Struct_2(Struct_1(vec2<i32>(1i, -45363i), vec4<f32>(226f, -1348f, 471f, 272f), vec4<f32>(-786f, -444f, 1496f, 1347f), -1367f)), Struct_2(Struct_1(vec2<i32>(-57608i, i32(-2147483648)), vec4<f32>(-1181f, 766f, 1000f, -651f), vec4<f32>(-379f, 1235f, -1000f, 905f), -423f)), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec4<f32>(-1660f, -1607f, 607f, 236f), vec4<f32>(-1033f, 186f, -1000f, 1736f), 725f)), Struct_2(Struct_1(vec2<i32>(53094i, 2147483647i), vec4<f32>(-446f, -470f, -942f, -1000f), vec4<f32>(-342f, 1113f, -642f, -264f), 760f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 25893i), vec4<f32>(367f, 152f, -677f, 516f), vec4<f32>(719f, 478f, -1443f, -1091f), 397f)), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec4<f32>(-1407f, 1718f, -653f, 1489f), vec4<f32>(-360f, -730f, -915f, 1000f), -1387f)), Struct_2(Struct_1(vec2<i32>(-16282i, -11687i), vec4<f32>(-1000f, -1066f, -938f, 1080f), vec4<f32>(829f, 730f, 1105f, -1865f), 273f)), Struct_2(Struct_1(vec2<i32>(51416i, -817i), vec4<f32>(308f, 639f, -1422f, 1000f), vec4<f32>(576f, -499f, 1594f, -756f), -1364f)), Struct_2(Struct_1(vec2<i32>(-2608i, i32(-2147483648)), vec4<f32>(-667f, -373f, -1389f, 1958f), vec4<f32>(-590f, 694f, -1000f, -774f), 311f)), Struct_2(Struct_1(vec2<i32>(16543i, -22081i), vec4<f32>(935f, 1084f, 483f, -1000f), vec4<f32>(-209f, 968f, -1341f, 1110f), 280f)), Struct_2(Struct_1(vec2<i32>(12602i, -55728i), vec4<f32>(-1643f, -410f, -600f, 699f), vec4<f32>(642f, 406f, 2172f, 2143f), 167f)), Struct_2(Struct_1(vec2<i32>(-3793i, 11967i), vec4<f32>(1161f, 2133f, 199f, 873f), vec4<f32>(-1000f, -844f, -1049f, 709f), 1000f)), Struct_2(Struct_1(vec2<i32>(-27228i, 0i), vec4<f32>(950f, -893f, 358f, -1535f), vec4<f32>(340f, 1366f, 1767f, 123f), -1000f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-263f, 314f, -1000f, 699f), vec4<f32>(702f, 916f, -947f, -1220f), -1672f)), Struct_2(Struct_1(vec2<i32>(-1i, 9131i), vec4<f32>(1164f, -995f, -320f, -1000f), vec4<f32>(449f, 505f, 900f, -390f), 1169f)), Struct_2(Struct_1(vec2<i32>(0i, -30667i), vec4<f32>(-1215f, -1315f, -699f, -1167f), vec4<f32>(-356f, -213f, -728f, -302f), 698f)), Struct_2(Struct_1(vec2<i32>(20288i, 12603i), vec4<f32>(1071f, -505f, 2128f, -1560f), vec4<f32>(1786f, -543f, -1237f, 268f), -1883f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<f32>(-1478f, -1767f, -674f, 307f), vec4<f32>(905f, 663f, -1491f, -1000f), -243f)), Struct_2(Struct_1(vec2<i32>(28656i, 1i), vec4<f32>(-161f, 117f, 773f, 434f), vec4<f32>(1843f, -640f, -1723f, 1557f), 1496f)), Struct_2(Struct_1(vec2<i32>(-2151i, i32(-2147483648)), vec4<f32>(1061f, -174f, -1123f, 101f), vec4<f32>(-1000f, 570f, -2447f, 441f), -1041f)), Struct_2(Struct_1(vec2<i32>(10139i, 2147483647i), vec4<f32>(719f, -489f, 1000f, 1000f), vec4<f32>(1800f, -466f, 178f, 813f), -1047f)), Struct_2(Struct_1(vec2<i32>(-101590i, -40776i), vec4<f32>(-130f, 363f, 820f, 1118f), vec4<f32>(-1132f, 141f, -2910f, 341f), -1379f)), Struct_2(Struct_1(vec2<i32>(2147483647i, 48181i), vec4<f32>(1019f, -130f, -1583f, 547f), vec4<f32>(-615f, -674f, 1000f, 1033f), -1185f)), Struct_2(Struct_1(vec2<i32>(1844i, 32705i), vec4<f32>(575f, 1714f, -2462f, 782f), vec4<f32>(-563f, -672f, 1482f, -1000f), 1451f)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(913f, 1890f, -737f, -1843f), vec4<f32>(254f, 667f, -1705f, 1158f), 1244f)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec4<f32>(886f, 1093f, -139f, 1570f), vec4<f32>(684f, -1084f, -1904f, -339f), -177f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<f32>(378f, 286f, 649f, -268f), vec4<f32>(-1452f, 193f, 840f, -1489f), -550f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = select(!vec2<bool>(all(vec2<bool>(true, false)), true), select(select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)), vec2<bool>(all(vec2<bool>(true, true)), false), vec2<bool>(true, true)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec2<bool>(false, false)))) || !any(vec2<bool>(true, true)));
    global1 = array<Struct_2, 32>();
    var var_1 = -20663i;
    var var_2 = _wgslsmith_mod_i32(countOneBits(min(global0.a.a.x, -1i)), u_input.d.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(global0.a.b));
    return ~u_input.c;
}

fn func_2() -> i32 {
    global0 = global1[_wgslsmith_index_u32(func_3(), 32u)];
    let var_0 = all(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))) | true));
    let var_1 = Struct_1(vec2<i32>(global0.a.a.x, firstLeadingBit(global0.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.b * vec4<f32>(-449f, -686f, -1044f, _wgslsmith_f_op_f32(select(global0.a.b.x, -1981f, var_0))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-636f, 580f))) - global0.a.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.c.x - global0.a.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -787f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-232f + global0.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.d * 756f) - global0.a.c.x))), 337f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.c.x + -611f), _wgslsmith_f_op_f32(select(global0.a.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(394f * 908f))), var_0)))));
    global0 = Struct_2(Struct_1(~(-vec2<i32>(-25145i, u_input.d.x)), global0.a.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(-237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))), var_1.b.x, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-var_1.b.x)));
    global1 = array<Struct_2, 32>();
    return _wgslsmith_mod_i32(min(firstLeadingBit(-1i), firstLeadingBit(-(i32(-1i) * -35914i))), 23669i);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_0, -15081i), _wgslsmith_clamp_i32(-9872i, arg_0, arg_1.a.a.x)), vec2<i32>(31944i >> (u_input.c % 32u), func_2())), countOneBits(_wgslsmith_mult_i32(countOneBits(0i), _wgslsmith_clamp_i32(0i, global0.a.a.x, 19284i)))) << ((~(~max(u_input.c, 4294967295u)) >> (_wgslsmith_mult_u32(~u_input.c, abs(~2477u)) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(func_1(abs(~u_input.a.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 32u)], Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(26719i, 45484i), _wgslsmith_mult_vec2_i32(global0.a.a, global0.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.a.c, global0.a.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-856f, global0.a.c.x, 628f, -458f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a.c + global0.a.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -109f) * _wgslsmith_f_op_f32(abs(-1187f)))), -159f), global0.a.a.x);
    var var_1 = vec3<u32>(30387u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.c, u_input.c, 22925u, 5754u) & vec4<u32>(0u, u_input.c, u_input.c, 14551u)) | vec4<u32>(u_input.c, 4294967295u, 1u, 112045u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(0u, 4294967295u, 1u, u_input.c))))), func_3());
    var var_2 = _wgslsmith_f_op_f32(floor(1690f));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, firstLeadingBit(u_input.c), _wgslsmith_f_op_vec4_f32(-global0.a.b), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(global0.a.b)))) - global0.a.b))), _wgslsmith_f_op_f32(sign(global0.a.c.x)));
}

