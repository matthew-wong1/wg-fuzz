struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64724u;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(-1344f, false, vec4<u32>(12603u, 70487u, 43827u, 43402u), -1694f), vec3<f32>(-591f, -1000f, -1824f), Struct_1(-140f, true, vec4<u32>(1u, 77209u, 0u, 55250u), -554f)), Struct_3(Struct_1(228f, false, vec4<u32>(0u, 1u, 0u, 1u), -1001f), vec3<f32>(-393f, 1000f, 184f), Struct_1(-1150f, true, vec4<u32>(1u, 38770u, 27484u, 4294967295u), -713f)), Struct_3(Struct_1(705f, true, vec4<u32>(0u, 4294967295u, 12358u, 18990u), -579f), vec3<f32>(1342f, -1354f, -1000f), Struct_1(-1404f, false, vec4<u32>(7586u, 49744u, 43833u, 55123u), 1676f)), Struct_3(Struct_1(102f, false, vec4<u32>(14086u, 0u, 36865u, 0u), 287f), vec3<f32>(904f, 206f, -197f), Struct_1(-1000f, true, vec4<u32>(1u, 1u, 9425u, 61956u), 592f)), Struct_3(Struct_1(-568f, true, vec4<u32>(107726u, 23214u, 0u, 30653u), 1045f), vec3<f32>(822f, 1845f, -815f), Struct_1(443f, true, vec4<u32>(17831u, 12906u, 4294967295u, 4294967295u), 325f)), Struct_3(Struct_1(-252f, true, vec4<u32>(1u, 4294967295u, 4510u, 4407u), -1449f), vec3<f32>(535f, 976f, -116f), Struct_1(693f, true, vec4<u32>(38374u, 49953u, 0u, 31005u), -1700f)), Struct_3(Struct_1(-867f, false, vec4<u32>(1u, 0u, 38323u, 0u), -554f), vec3<f32>(1000f, 692f, 1058f), Struct_1(-471f, false, vec4<u32>(4294967295u, 21282u, 7836u, 2741u), -523f)), Struct_3(Struct_1(110f, false, vec4<u32>(4294967295u, 0u, 2684u, 1u), -1000f), vec3<f32>(2149f, 825f, -1000f), Struct_1(-1000f, false, vec4<u32>(279u, 91379u, 4294967295u, 33010u), 801f)), Struct_3(Struct_1(488f, true, vec4<u32>(47749u, 57429u, 0u, 4294967295u), -937f), vec3<f32>(434f, 1251f, -1003f), Struct_1(530f, true, vec4<u32>(1u, 18633u, 1u, 35215u), -1417f)), Struct_3(Struct_1(-1603f, false, vec4<u32>(1u, 8029u, 50129u, 57859u), 1973f), vec3<f32>(714f, 1583f, 283f), Struct_1(419f, false, vec4<u32>(106116u, 4294967295u, 1u, 46083u), -1011f)), Struct_3(Struct_1(-639f, false, vec4<u32>(58866u, 0u, 47248u, 0u), -1771f), vec3<f32>(1792f, 2290f, -484f), Struct_1(1000f, true, vec4<u32>(0u, 0u, 4294967295u, 1u), 266f)), Struct_3(Struct_1(593f, false, vec4<u32>(82451u, 45648u, 0u, 18423u), -836f), vec3<f32>(-825f, 432f, 158f), Struct_1(-1060f, false, vec4<u32>(24170u, 0u, 40857u, 19858u), -760f)), Struct_3(Struct_1(1000f, true, vec4<u32>(1u, 4294967295u, 1u, 49002u), 508f), vec3<f32>(1419f, -683f, 649f), Struct_1(1000f, false, vec4<u32>(1u, 1u, 21882u, 0u), -707f)), Struct_3(Struct_1(472f, true, vec4<u32>(53552u, 138080u, 95017u, 29502u), 1508f), vec3<f32>(-1355f, -297f, 562f), Struct_1(1255f, false, vec4<u32>(13142u, 4294967295u, 4294967295u, 4294967295u), -407f)), Struct_3(Struct_1(-579f, false, vec4<u32>(46579u, 0u, 0u, 4294967295u), -493f), vec3<f32>(-100f, -181f, -1000f), Struct_1(1044f, true, vec4<u32>(14522u, 76859u, 51671u, 41430u), -1376f)), Struct_3(Struct_1(876f, true, vec4<u32>(8776u, 10346u, 1u, 55768u), 1705f), vec3<f32>(788f, 347f, -2896f), Struct_1(-1236f, true, vec4<u32>(30973u, 34699u, 53765u, 4294967295u), -629f)), Struct_3(Struct_1(-1139f, false, vec4<u32>(16117u, 0u, 58555u, 67524u), -103f), vec3<f32>(-1488f, 687f, 1820f), Struct_1(1889f, true, vec4<u32>(77605u, 9537u, 68001u, 12152u), 953f)), Struct_3(Struct_1(739f, true, vec4<u32>(31981u, 33913u, 4294967295u, 45585u), -1110f), vec3<f32>(1405f, 1157f, 1097f), Struct_1(163f, false, vec4<u32>(17295u, 0u, 161u, 16599u), -220f)), Struct_3(Struct_1(-972f, false, vec4<u32>(0u, 77552u, 1u, 159685u), -1000f), vec3<f32>(-1594f, -2116f, 1000f), Struct_1(311f, true, vec4<u32>(2658u, 2128u, 39593u, 65499u), 1000f)), Struct_3(Struct_1(368f, false, vec4<u32>(87385u, 0u, 0u, 0u), -100f), vec3<f32>(-1629f, 894f, 1592f), Struct_1(-346f, false, vec4<u32>(1u, 1u, 1u, 145444u), -1483f)), Struct_3(Struct_1(-262f, false, vec4<u32>(1u, 21584u, 0u, 17945u), -726f), vec3<f32>(-250f, 621f, 1378f), Struct_1(1000f, false, vec4<u32>(47012u, 1u, 1u, 19528u), 162f)), Struct_3(Struct_1(-2053f, true, vec4<u32>(1u, 15282u, 35597u, 10232u), -395f), vec3<f32>(862f, 1619f, 2071f), Struct_1(116f, false, vec4<u32>(31706u, 0u, 4294967295u, 0u), -1151f)), Struct_3(Struct_1(-168f, true, vec4<u32>(1u, 4294967295u, 44996u, 60813u), -186f), vec3<f32>(-100f, 1000f, -376f), Struct_1(-1233f, true, vec4<u32>(1u, 4294967295u, 4294967295u, 35332u), -418f)), Struct_3(Struct_1(-915f, false, vec4<u32>(1u, 17273u, 4553u, 55129u), 741f), vec3<f32>(-374f, 2661f, -1305f), Struct_1(-1104f, true, vec4<u32>(22125u, 4294967295u, 17084u, 47084u), 1000f)), Struct_3(Struct_1(-2036f, true, vec4<u32>(27670u, 88160u, 1u, 40144u), 163f), vec3<f32>(747f, 1772f, -106f), Struct_1(-382f, true, vec4<u32>(2757u, 67760u, 4294967295u, 0u), 1338f)), Struct_3(Struct_1(1000f, false, vec4<u32>(1u, 1u, 1u, 0u), 128f), vec3<f32>(454f, -249f, -1176f), Struct_1(-939f, true, vec4<u32>(4294967295u, 28581u, 0u, 4294967295u), 278f)), Struct_3(Struct_1(1352f, true, vec4<u32>(1u, 31173u, 82236u, 65435u), -1000f), vec3<f32>(843f, -239f, 1167f), Struct_1(414f, true, vec4<u32>(4294967295u, 20851u, 0u, 30963u), -957f)), Struct_3(Struct_1(134f, true, vec4<u32>(0u, 4294967295u, 0u, 0u), -1556f), vec3<f32>(1518f, -470f, 275f), Struct_1(-1000f, true, vec4<u32>(1301u, 89794u, 74555u, 20403u), -766f)), Struct_3(Struct_1(-109f, true, vec4<u32>(0u, 1u, 135275u, 74152u), 564f), vec3<f32>(1181f, 673f, -803f), Struct_1(2047f, false, vec4<u32>(1u, 7360u, 37274u, 97481u), 214f)), Struct_3(Struct_1(-2649f, true, vec4<u32>(29165u, 75434u, 4294967295u, 0u), 343f), vec3<f32>(-726f, -1945f, -1241f), Struct_1(1321f, false, vec4<u32>(125460u, 1u, 46396u, 4294967295u), 281f)), Struct_3(Struct_1(600f, true, vec4<u32>(1u, 4294967295u, 58067u, 1096u), 285f), vec3<f32>(472f, -2098f, -1046f), Struct_1(-497f, false, vec4<u32>(0u, 0u, 94384u, 14550u), -220f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = min(select(~min(~vec3<u32>(0u, u_input.a, arg_0.c.c.x), arg_0.c.c.yzx), vec3<u32>(~min(0u, 1u), _wgslsmith_dot_vec4_u32(arg_0.c.c & vec4<u32>(37795u, u_input.a, 97222u, u_input.a), arg_0.c.c ^ vec4<u32>(19154u, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_u32(8452u, u_input.a ^ 0u, 50652u)), vec3<bool>(select(!arg_0.c.b, false, true && arg_0.b.x), !(!arg_0.c.b), !select(true, true, false))), arg_0.c.c.xyy);
    global1 = array<Struct_3, 31>();
    global1 = array<Struct_3, 31>();
    let var_1 = ~firstTrailingBit(var_0.x);
    let var_2 = arg_0.a;
    return ~(~var_1);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_mod_u32(~u_input.a, u_input.a);
    global1 = array<Struct_3, 31>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec2<bool>(true, all(vec3<bool>(false, false, false)))), ~vec4<u32>(u_input.a, u_input.a, u_input.a, _wgslsmith_mod_u32(73802u, 1u)), _wgslsmith_f_op_f32(select(-1827f, -2684f, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, -883f, -447f)) + vec3<f32>(-1374f, _wgslsmith_f_op_f32(531f * -993f), -1490f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-1033f, 895f)), _wgslsmith_f_op_f32(ceil(-1507f)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -823f), all(vec3<bool>(true, false, select(false, false, true))), min(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, 12858u, 4294967295u, u_input.a), vec4<bool>(false, true, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, 62644u, u_input.a), vec4<u32>(34931u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(25413u, 1u, 70407u, u_input.a)), vec4<u32>(u_input.a, u_input.a, u_input.a, 16054u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 29638u, 17295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 32624u)))), -1417f));
    var_0 = select(0u, _wgslsmith_div_u32(0u, var_1.c.c.x), all(select(vec4<bool>(true, any(vec4<bool>(var_1.a.b, true, false, var_1.a.b)), false, true), vec4<bool>(var_1.c.b, !var_1.a.b, true, var_1.a.d >= 780f), select(select(vec4<bool>(false, var_1.c.b, false, true), vec4<bool>(var_1.c.b, true, var_1.c.b, var_1.a.b), vec4<bool>(true, var_1.a.b, false, false)), !vec4<bool>(true, var_1.a.b, false, var_1.a.b), var_1.a.b))));
    return vec4<u32>(~_wgslsmith_sub_u32(~34559u, var_1.c.c.x >> (101969u % 32u)) & _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(15104u, var_1.a.c.x, u_input.a, u_input.a), vec4<u32>(57888u, 4294967295u, var_1.c.c.x, u_input.a)), ~var_1.c.c), ~61045u), ~(~firstTrailingBit(var_1.c.c.x)), abs(23210u ^ u_input.a), _wgslsmith_dot_vec2_u32(~var_1.a.c.yz, min(vec2<u32>(~51202u, _wgslsmith_add_u32(15102u, 44947u)), countOneBits(vec2<u32>(22843u, var_1.c.c.x)))));
}

fn func_1() -> u32 {
    let var_0 = !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)))));
    let var_1 = Struct_1(-100f, var_0.x, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a >> (u_input.a % 32u), func_2(Struct_2(Struct_1(1547f, var_0.x, vec4<u32>(u_input.a, 1u, u_input.a, 35239u), -253f), var_0, Struct_1(574f, var_0.x, vec4<u32>(31641u, u_input.a, u_input.a, u_input.a), -323f))), _wgslsmith_clamp_u32(1u, 4294967295u, 826u)), func_3()), ~u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1532f));
    let var_2 = Struct_2(var_1, select(!(!var_0), select(vec4<bool>(any(var_0.yww), all(var_0.wx), var_1.b, var_0.x), vec4<bool>(all(var_0.zw), !var_1.b, !var_1.b, all(vec3<bool>(true, false, false))), var_1.b), var_1.b), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) * _wgslsmith_div_f32(432f, 466f)), -1535f)), var_1.b, ~vec4<u32>(var_1.c.x ^ var_1.c.x, ~29905u, 22259u, 0u), -1919f));
    let var_3 = var_2.b;
    global0 = ~1u;
    return firstTrailingBit(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstTrailingBit(1i));
    var var_1 = max(vec4<u32>(4294967295u, reverseBits(u_input.a), u_input.a, firstTrailingBit(u_input.a)), ~max(~(~vec4<u32>(4663u, u_input.a, 27936u, 30477u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(23290u, 23979u), vec2<u32>(50221u, 50489u)), _wgslsmith_clamp_u32(11726u, 27064u, u_input.a), func_1(), u_input.a)));
    global1 = array<Struct_3, 31>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(-241f, _wgslsmith_f_op_f32(max(-1513f, _wgslsmith_div_f32(-1461f, _wgslsmith_f_op_f32(abs(-1181f))))), true)), -721f);
    global0 = ~(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~30170u, _wgslsmith_div_u32(u_input.a, var_1.x)), _wgslsmith_clamp_u32(firstTrailingBit(21724u), func_3().x, abs(0u))) ^ _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(~var_1.x, 1u << (var_1.x % 32u), abs(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.wyy ^ abs(~vec3<u32>(1u, 0u, var_1.x))), -(~abs(1i)), var_1.wyz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2163f), _wgslsmith_div_f32(var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x), -643f, var_2.x) + vec4<f32>(_wgslsmith_f_op_f32(var_2.x * 1700f), var_2.x, _wgslsmith_f_op_f32(round(var_2.x)), var_2.x)))));
}

