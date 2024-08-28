struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<u32>(0u, 56367u, 14079u, 4294967295u), Struct_1(vec3<u32>(37877u, 32274u, 30614u), false, vec2<f32>(-2379f, 750f), 756f), -418f, vec2<u32>(16613u, 0u), Struct_1(vec3<u32>(49099u, 8668u, 18172u), false, vec2<f32>(-1000f, 713f), 1000f)), Struct_2(vec4<u32>(0u, 69622u, 65084u, 1u), Struct_1(vec3<u32>(1u, 41339u, 1u), true, vec2<f32>(1000f, 1201f), 364f), 1000f, vec2<u32>(4294967295u, 1185u), Struct_1(vec3<u32>(55687u, 4294967295u, 14367u), true, vec2<f32>(-631f, 643f), -1000f)), Struct_2(vec4<u32>(1u, 64496u, 4294967295u, 22038u), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), true, vec2<f32>(406f, -1000f), -3075f), 1301f, vec2<u32>(39721u, 4294967295u), Struct_1(vec3<u32>(0u, 8062u, 0u), true, vec2<f32>(-651f, -913f), -1243f)), Struct_2(vec4<u32>(22760u, 39555u, 1u, 4294967295u), Struct_1(vec3<u32>(0u, 6416u, 1u), false, vec2<f32>(-384f, -1546f), 569f), -1287f, vec2<u32>(1u, 4294967295u), Struct_1(vec3<u32>(106332u, 4294967295u, 3998u), false, vec2<f32>(871f, -873f), 354f)), Struct_2(vec4<u32>(23558u, 1u, 4294967295u, 1u), Struct_1(vec3<u32>(58171u, 4294967295u, 36975u), false, vec2<f32>(124f, -113f), 1663f), 905f, vec2<u32>(1u, 37390u), Struct_1(vec3<u32>(4294967295u, 27999u, 4294967295u), true, vec2<f32>(1189f, -741f), 713f)), Struct_2(vec4<u32>(51689u, 43458u, 15219u, 45381u), Struct_1(vec3<u32>(7055u, 32747u, 81282u), false, vec2<f32>(-340f, 322f), -779f), 1451f, vec2<u32>(3525u, 44539u), Struct_1(vec3<u32>(70470u, 73379u, 46932u), true, vec2<f32>(-1551f, 1380f), -1832f)), Struct_2(vec4<u32>(41964u, 60024u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(80357u, 1u, 4294967295u), true, vec2<f32>(139f, 633f), -411f), -1523f, vec2<u32>(19517u, 1u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, vec2<f32>(941f, 417f), -973f)), Struct_2(vec4<u32>(6813u, 4294967295u, 43913u, 1u), Struct_1(vec3<u32>(81865u, 11571u, 0u), false, vec2<f32>(1000f, 526f), 608f), 1000f, vec2<u32>(4294967295u, 1236u), Struct_1(vec3<u32>(14929u, 6135u, 40613u), true, vec2<f32>(333f, -353f), 1062f)), Struct_2(vec4<u32>(16417u, 85748u, 12129u, 0u), Struct_1(vec3<u32>(28117u, 77756u, 32827u), true, vec2<f32>(-562f, 1538f), -980f), -529f, vec2<u32>(4294967295u, 22776u), Struct_1(vec3<u32>(7789u, 1u, 50506u), true, vec2<f32>(206f, -996f), 150f)), Struct_2(vec4<u32>(3215u, 0u, 0u, 422u), Struct_1(vec3<u32>(41149u, 21186u, 1u), false, vec2<f32>(-179f, -1049f), -872f), -646f, vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<u32>(1u, 0u, 29141u), true, vec2<f32>(-749f, -747f), 973f)), Struct_2(vec4<u32>(1u, 4294967295u, 55060u, 10581u), Struct_1(vec3<u32>(4294967295u, 1u, 54494u), false, vec2<f32>(1000f, -254f), 1835f), 433f, vec2<u32>(62563u, 0u), Struct_1(vec3<u32>(0u, 27885u, 42435u), true, vec2<f32>(-791f, -929f), 756f)), Struct_2(vec4<u32>(54406u, 4294967295u, 1u, 17810u), Struct_1(vec3<u32>(1135u, 28159u, 1u), false, vec2<f32>(-303f, 440f), 928f), -650f, vec2<u32>(1u, 4294967295u), Struct_1(vec3<u32>(1u, 0u, 1u), false, vec2<f32>(373f, -104f), 108f)), Struct_2(vec4<u32>(0u, 1u, 1u, 1u), Struct_1(vec3<u32>(4294967295u, 0u, 27881u), false, vec2<f32>(-910f, 529f), 396f), -1219f, vec2<u32>(1u, 0u), Struct_1(vec3<u32>(36518u, 71962u, 1u), false, vec2<f32>(-330f, 272f), -2138f)), Struct_2(vec4<u32>(26437u, 4294967295u, 325u, 0u), Struct_1(vec3<u32>(36777u, 4329u, 50492u), false, vec2<f32>(1615f, 329f), -671f), -1466f, vec2<u32>(1u, 22879u), Struct_1(vec3<u32>(1u, 567u, 1u), false, vec2<f32>(-1000f, -1552f), -109f)), Struct_2(vec4<u32>(36083u, 45031u, 36214u, 26342u), Struct_1(vec3<u32>(0u, 100033u, 0u), true, vec2<f32>(580f, 589f), 1000f), 1038f, vec2<u32>(1u, 62252u), Struct_1(vec3<u32>(13027u, 4294967295u, 1u), false, vec2<f32>(-825f, -1128f), -747f)), Struct_2(vec4<u32>(84402u, 48879u, 16685u, 10986u), Struct_1(vec3<u32>(1u, 133941u, 3823u), false, vec2<f32>(691f, -2006f), 145f), -1141f, vec2<u32>(0u, 4294967295u), Struct_1(vec3<u32>(7027u, 0u, 49529u), true, vec2<f32>(1000f, 208f), 837f)), Struct_2(vec4<u32>(4294967295u, 48449u, 4294967295u, 4294967295u), Struct_1(vec3<u32>(1u, 31025u, 21573u), true, vec2<f32>(-1616f, 800f), 1000f), -886f, vec2<u32>(27135u, 4294967295u), Struct_1(vec3<u32>(27747u, 1u, 1u), false, vec2<f32>(-1298f, 417f), -1253f)), Struct_2(vec4<u32>(1u, 1u, 79752u, 3430u), Struct_1(vec3<u32>(22059u, 73541u, 1u), true, vec2<f32>(-1662f, 1191f), 951f), -1488f, vec2<u32>(4294967295u, 46135u), Struct_1(vec3<u32>(50964u, 50631u, 4294967295u), false, vec2<f32>(695f, -1152f), 1230f)), Struct_2(vec4<u32>(0u, 4294967295u, 10896u, 1u), Struct_1(vec3<u32>(19891u, 39992u, 4294967295u), true, vec2<f32>(-1059f, -558f), 894f), 882f, vec2<u32>(1u, 1u), Struct_1(vec3<u32>(47449u, 0u, 10397u), false, vec2<f32>(-135f, -296f), -1000f)), Struct_2(vec4<u32>(4294967295u, 22851u, 4294967295u, 640u), Struct_1(vec3<u32>(0u, 4294967295u, 0u), true, vec2<f32>(-1971f, 802f), 920f), 2575f, vec2<u32>(121843u, 4294967295u), Struct_1(vec3<u32>(0u, 36001u, 13131u), false, vec2<f32>(-1294f, -562f), 711f)), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 22400u), Struct_1(vec3<u32>(1u, 16977u, 1u), false, vec2<f32>(1037f, -1000f), 1000f), 572f, vec2<u32>(4294967295u, 86376u), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), true, vec2<f32>(-272f, 2573f), 396f)), Struct_2(vec4<u32>(1u, 45153u, 35613u, 40104u), Struct_1(vec3<u32>(1u, 4294967295u, 21771u), true, vec2<f32>(1600f, -2624f), -188f), 420f, vec2<u32>(10879u, 0u), Struct_1(vec3<u32>(4294967295u, 0u, 2088u), false, vec2<f32>(1000f, 1546f), -812f)), Struct_2(vec4<u32>(21196u, 1u, 1u, 32400u), Struct_1(vec3<u32>(4294967295u, 0u, 63823u), true, vec2<f32>(694f, 1000f), -722f), -960f, vec2<u32>(59737u, 4294967295u), Struct_1(vec3<u32>(37029u, 1u, 0u), false, vec2<f32>(1495f, -1893f), -1260f)), Struct_2(vec4<u32>(16073u, 52696u, 39132u, 66894u), Struct_1(vec3<u32>(1355u, 50464u, 55779u), false, vec2<f32>(1565f, -1000f), 1276f), -130f, vec2<u32>(0u, 4938u), Struct_1(vec3<u32>(4294967295u, 13152u, 130442u), false, vec2<f32>(527f, 1336f), 1690f)), Struct_2(vec4<u32>(51996u, 4294967295u, 0u, 0u), Struct_1(vec3<u32>(30813u, 80490u, 1u), false, vec2<f32>(910f, 272f), 1000f), 674f, vec2<u32>(59585u, 0u), Struct_1(vec3<u32>(1u, 1u, 4294967295u), false, vec2<f32>(-822f, -531f), -1458f)), Struct_2(vec4<u32>(10832u, 107097u, 31745u, 0u), Struct_1(vec3<u32>(4294967295u, 16390u, 0u), false, vec2<f32>(-388f, 1476f), 311f), 556f, vec2<u32>(1u, 4294967295u), Struct_1(vec3<u32>(40694u, 1u, 4294967295u), false, vec2<f32>(-718f, -493f), 612f)));

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1169f, -1000f), vec2<f32>(-211f, 200f), vec2<f32>(284f, -1000f), vec2<f32>(-924f, 755f), vec2<f32>(1391f, 1000f), vec2<f32>(-774f, 1177f), vec2<f32>(1371f, -841f), vec2<f32>(-745f, -671f), vec2<f32>(332f, 1637f), vec2<f32>(1118f, -1303f), vec2<f32>(350f, -396f), vec2<f32>(-373f, 1744f), vec2<f32>(-1213f, 181f), vec2<f32>(-779f, 423f), vec2<f32>(-434f, -221f), vec2<f32>(-1600f, -1128f), vec2<f32>(1343f, -341f), vec2<f32>(-281f, -983f), vec2<f32>(-1163f, -724f), vec2<f32>(-160f, 1014f), vec2<f32>(1025f, 1012f), vec2<f32>(159f, -1367f), vec2<f32>(341f, -545f), vec2<f32>(1387f, -1035f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1))))))));
    var var_1 = Struct_2(firstLeadingBit(~firstTrailingBit(abs(vec4<u32>(arg_0, u_input.a, arg_0, 32421u)))), Struct_1(vec3<u32>(select(arg_0, arg_0 << (1u % 32u), all(vec2<bool>(true, false))), abs(u_input.a), 4294967295u), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, arg_1)) * _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(arg_0, 24u)]))), -1418f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572f + arg_1) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + 1883f))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0, 16616u) >> (~vec2<u32>(u_input.a, arg_0) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), vec2<u32>(countOneBits(4294967295u), 1u >> (0u % 32u)))), Struct_1(_wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, 1u, 27437u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 3544u, u_input.a), vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(u_input.a, 7452u, 0u))), vec3<u32>(firstTrailingBit(12927u), firstTrailingBit(0u), ~u_input.a)), !all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(11044u, 24u)] - global1[_wgslsmith_index_u32(24170u, 24u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(1315f, 233f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(43210u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]))), arg_1));
    var_1 = global0[_wgslsmith_index_u32(1u, 26u)];
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, countOneBits(arg_0)) | 4294967295u, 26u)]);
    let var_3 = _wgslsmith_dot_vec3_u32(abs(var_2.a.a.yww), max(var_2.a.e.a, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.d.x, 0u, ~4294967295u), var_2.a.e.a)));
    return ~max(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, 1u, 101930u, var_2.a.a.x), var_2.a.a), vec4<u32>(var_1.d.x, var_3, arg_0, var_2.a.b.a.x)), ~abs(var_1.a)), ~(~(vec4<u32>(var_3, 4294967295u, 4294967295u, var_1.d.x) >> (vec4<u32>(4294967295u, u_input.a, var_2.a.e.a.x, var_1.d.x) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_4 {
    global0 = array<Struct_2, 26>();
    global1 = array<vec2<f32>, 24>();
    let var_0 = -274f;
    global1 = array<vec2<f32>, 24>();
    var var_1 = 4294967295u;
    return Struct_4(Struct_2(select(func_3(u_input.a, arg_0.a) ^ (vec4<u32>(u_input.a, 68931u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 37370u) % vec4<u32>(32u))), countOneBits(~vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), Struct_1(vec3<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5456u, u_input.a, u_input.a), vec4<u32>(50110u, u_input.a, u_input.a, 1u))), arg_1.a <= _wgslsmith_f_op_f32(exp2(arg_1.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(600f, arg_0.a), vec2<f32>(arg_1.a, var_0), false)))), 137f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.a * arg_0.a))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(34205u, u_input.a), vec2<u32>(23188u, u_input.a))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 68345u), vec3<u32>(36063u, u_input.a, 48375u)) ^ ~vec3<u32>(u_input.a, 0u, 0u), !any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~76067u, 24u)]), 1f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = arg_3;
    var var_1 = ~firstTrailingBit(min(vec3<u32>(_wgslsmith_mult_u32(arg_0.a.x, 22566u), arg_0.a.x, arg_3.a.d.x), ~vec3<u32>(arg_0.a.x, 60762u, arg_0.a.x)));
    var_1 = firstTrailingBit(vec3<u32>(18310u, firstTrailingBit(38533u | var_0.a.d.x), ~1u));
    let var_2 = 5793i;
    var var_3 = 1402f;
    return vec3<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, var_2, var_2, -1i), vec4<i32>(var_2, var_2, var_2, 60424i)), vec4<i32>(1i, -33659i, var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2, 1i, var_2), vec4<i32>(-2147483647i, -2147483647i, -1i, var_2))))), firstTrailingBit(var_2), 1i);
}

fn func_1() -> Struct_1 {
    let var_0 = -((func_4(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a), true, global1[_wgslsmith_index_u32(u_input.a, 24u)], -143f), _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(min(-614f, 438f)), func_2(Struct_3(1437f), Struct_3(-933f), vec4<i32>(2147483647i, 1i, 0i, -61306i))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))) & (func_4(Struct_1(vec3<u32>(37662u, 4294967295u, 17461u), false, global1[_wgslsmith_index_u32(u_input.a, 24u)], 1317f), 221f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_4(Struct_2(vec4<u32>(1u, 4294967295u, 36780u, u_input.a), Struct_1(vec3<u32>(4294967295u, u_input.a, 11512u), true, vec2<f32>(-296f, -152f), 342f), -1376f, vec2<u32>(u_input.a, 83496u), Struct_1(vec3<u32>(0u, 4294967295u, 0u), false, global1[_wgslsmith_index_u32(95352u, 24u)], 1021f)))) >> (min(~vec3<u32>(1u, 20967u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a) >> (vec3<u32>(1772u, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = func_2(Struct_3(func_2(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -239f)), Struct_3(1569f), vec4<i32>(max(-12485i, -50632i), ~var_0.x, firstTrailingBit(-14900i), var_0.x)).a.e.d), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(435f, 267f)), _wgslsmith_f_op_f32(890f * -109f))))), reverseBits(vec4<i32>(-1i) * -countOneBits(vec4<i32>(var_0.x, 0i, 1i, 1i))));
    global0 = array<Struct_2, 26>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.c * _wgslsmith_f_op_f32(func_2(Struct_3(-1205f), Struct_3(-2407f), vec4<i32>(var_0.x, -1i, var_0.x, -62081i)).a.b.d * -1892f)))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~5411u, _wgslsmith_mult_u32(30013u, 1u)), _wgslsmith_div_u32(u_input.a, 1u) & var_1.a.d.x), ~(var_1.a.b.a.zx | abs(var_1.a.b.a.yy))), reverseBits(~(~(~var_1.a.d.x))), u_input.a, u_input.a);
    return var_1.a.e;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = 0u;
    let var_1 = 1i;
    global0 = array<Struct_2, 26>();
    let var_2 = func_2(Struct_3(1651f), Struct_3(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, -688f))))), -select(~(-vec4<i32>(1i, 1i, 37542i, 1i)), vec4<i32>(1i, firstLeadingBit(-2147483647i), abs(var_1), var_1), !select(vec4<bool>(arg_1.b, arg_1.b, true, false), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b)))).a.b;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1689f), _wgslsmith_f_op_f32(f32(-1f) * -780f), var_2.d < func_1().c.x))), -191f);
    return ~vec4<u32>(countOneBits(arg_0), ~u_input.a, u_input.a & arg_0, arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(func_5(1u, func_1()), vec4<u32>(27175u, 1u, u_input.a, func_2(Struct_3(1000f), Struct_3(-459f), select(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(-26590i, 17153i, -31115i, 18783i), vec4<bool>(true, true, true, true))).a.b.a.x)), Struct_1(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 41780u), func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 11355u, 4294967295u)), _wgslsmith_f_op_f32(min(-1222f, 764f))).x, u_input.a), true, global1[_wgslsmith_index_u32(0u, 24u)], -147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1025f + -567f))) - -1607f), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a) ^ 4294967295u), 0u), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(4008u, u_input.a, 2715u))), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(floor(-595f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 24u)])) - global1[_wgslsmith_index_u32(u_input.a ^ 77525u, 24u)])), _wgslsmith_f_op_f32(exp2(func_1().d))));
    var_0 = Struct_2(firstLeadingBit(func_3(~(var_0.d.x & u_input.a), _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(floor(var_0.e.d))))), Struct_1(var_0.a.xzy, var_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(var_0.c * func_2(Struct_3(var_0.b.c.x), Struct_3(482f), vec4<i32>(15123i, -31769i, -19386i, -8672i)).a.b.c.x), 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.c.x + var_0.b.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -156f)))), vec2<u32>(51738u, ~1u), var_0.b);
    global0 = array<Struct_2, 26>();
    let var_1 = any(!select(!select(vec2<bool>(false, true), vec2<bool>(false, var_0.b.b), vec2<bool>(true, var_0.e.b)), !vec2<bool>(var_0.b.b, true), vec2<bool>(true, !var_0.e.b)));
    var var_2 = _wgslsmith_sub_vec4_u32(var_0.a, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1466f, 1322f, 686f) - vec3<f32>(1145f, 940f, -2000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.c.x, 1211f, -1216f) * vec3<f32>(var_0.e.c.x, var_0.c, -508f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-186f + -1227f), var_0.b.c.x, _wgslsmith_f_op_f32(step(1045f, var_0.e.d))) * vec3<f32>(_wgslsmith_div_f32(var_0.c, 740f), _wgslsmith_f_op_f32(ceil(var_0.e.c.x)), var_0.b.d)), var_1)), var_0.a.x);
}

