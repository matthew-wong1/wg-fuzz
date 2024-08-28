struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, false, false, false, true, false, true, true, true, false, false, false, false, true, true, false, true, true, true, true, true, true);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(1i, 1i, -35952i), vec4<f32>(-923f, 586f, -281f, -2138f), Struct_1(vec3<f32>(-1289f, 1174f, 916f), vec3<bool>(true, false, false), 6413i), vec4<f32>(-1000f, 773f, -1000f, 1167f), vec2<u32>(4294967295u, 0u));

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<i32>(42146i, 15196i, 8918i), vec4<f32>(220f, -749f, 1158f, -1415f), Struct_1(vec3<f32>(-162f, -1000f, 1000f), vec3<bool>(false, false, true), 1i), vec4<f32>(-2745f, -1134f, 478f, 326f), vec2<u32>(0u, 0u)), Struct_2(vec3<i32>(-28510i, -42446i, -15379i), vec4<f32>(-1912f, 1056f, 685f, 717f), Struct_1(vec3<f32>(238f, 152f, 589f), vec3<bool>(true, false, false), i32(-2147483648)), vec4<f32>(-1157f, -1001f, -987f, -805f), vec2<u32>(0u, 4294967295u)), Struct_2(vec3<i32>(i32(-2147483648), -10045i, i32(-2147483648)), vec4<f32>(343f, 858f, -598f, -1000f), Struct_1(vec3<f32>(-2103f, 243f, 961f), vec3<bool>(true, true, false), 3776i), vec4<f32>(1000f, 1000f, -875f, -1285f), vec2<u32>(28705u, 0u)), Struct_2(vec3<i32>(25861i, 50219i, -6135i), vec4<f32>(536f, -1275f, 1164f, 1629f), Struct_1(vec3<f32>(-1958f, -663f, 1021f), vec3<bool>(true, false, false), 1i), vec4<f32>(-449f, -410f, -2087f, -280f), vec2<u32>(22042u, 4294967295u)), Struct_2(vec3<i32>(-7683i, 5284i, -33846i), vec4<f32>(-1293f, 1041f, 677f, 937f), Struct_1(vec3<f32>(-755f, 985f, 2257f), vec3<bool>(false, true, true), 2147483647i), vec4<f32>(-868f, 513f, -813f, -562f), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<i32>(21493i, -34931i, 8129i), vec4<f32>(-1253f, 1033f, -141f, -172f), Struct_1(vec3<f32>(1000f, -909f, -1607f), vec3<bool>(false, true, true), -25593i), vec4<f32>(668f, 1574f, -675f, -167f), vec2<u32>(47506u, 1175u)), Struct_2(vec3<i32>(-1i, -41291i, -1i), vec4<f32>(379f, 1000f, 838f, 696f), Struct_1(vec3<f32>(-736f, -1262f, -539f), vec3<bool>(false, true, false), 3196i), vec4<f32>(906f, -1000f, 1000f, 1425f), vec2<u32>(1u, 56277u)), Struct_2(vec3<i32>(2972i, -10259i, 5047i), vec4<f32>(656f, -2442f, 786f, 727f), Struct_1(vec3<f32>(-702f, 421f, -765f), vec3<bool>(true, false, false), 12649i), vec4<f32>(500f, 707f, 1512f, -247f), vec2<u32>(4294967295u, 86430u)), Struct_2(vec3<i32>(2147483647i, 53317i, 1i), vec4<f32>(1715f, 248f, -1178f, 232f), Struct_1(vec3<f32>(111f, -1000f, -667f), vec3<bool>(false, true, true), 52101i), vec4<f32>(695f, -1579f, 1685f, -737f), vec2<u32>(3641u, 96214u)), Struct_2(vec3<i32>(2147483647i, 7513i, -1i), vec4<f32>(-313f, -387f, -862f, -543f), Struct_1(vec3<f32>(-451f, 1000f, 166f), vec3<bool>(false, false, true), i32(-2147483648)), vec4<f32>(1171f, 1097f, 550f, 245f), vec2<u32>(4294967295u, 56786u)), Struct_2(vec3<i32>(15423i, -13788i, 33375i), vec4<f32>(1519f, -1061f, -1447f, -377f), Struct_1(vec3<f32>(-447f, -640f, -299f), vec3<bool>(true, true, true), -1484i), vec4<f32>(-738f, -909f, 1756f, -535f), vec2<u32>(29981u, 0u)), Struct_2(vec3<i32>(2147483647i, -40084i, 0i), vec4<f32>(1352f, -103f, -2123f, 200f), Struct_1(vec3<f32>(-142f, 989f, -1361f), vec3<bool>(true, false, true), 8633i), vec4<f32>(-218f, -1000f, -400f, -104f), vec2<u32>(1u, 15237u)), Struct_2(vec3<i32>(-49372i, 6586i, -14388i), vec4<f32>(-1245f, 604f, 1000f, -169f), Struct_1(vec3<f32>(-497f, -889f, -1258f), vec3<bool>(false, false, false), 19989i), vec4<f32>(-1105f, -674f, -1676f, 203f), vec2<u32>(17779u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), -22034i, 2147483647i), vec4<f32>(-1000f, 675f, -2246f, -339f), Struct_1(vec3<f32>(-903f, 568f, 567f), vec3<bool>(false, false, false), -29388i), vec4<f32>(753f, -1503f, -124f, 1829f), vec2<u32>(4294967295u, 1u)), Struct_2(vec3<i32>(9354i, 0i, 23343i), vec4<f32>(-1324f, -522f, -1622f, -614f), Struct_1(vec3<f32>(-197f, 1000f, 912f), vec3<bool>(false, true, false), -1i), vec4<f32>(-1730f, 130f, -1000f, 1283f), vec2<u32>(1u, 30729u)), Struct_2(vec3<i32>(-87644i, -54473i, 1i), vec4<f32>(-1307f, -1290f, 1443f, -486f), Struct_1(vec3<f32>(841f, -128f, -260f), vec3<bool>(true, true, true), i32(-2147483648)), vec4<f32>(-1792f, 1194f, 715f, 1458f), vec2<u32>(39887u, 9585u)), Struct_2(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec4<f32>(1077f, 211f, -151f, -1390f), Struct_1(vec3<f32>(-1186f, 1114f, -809f), vec3<bool>(true, false, true), 0i), vec4<f32>(275f, 418f, -986f, -297f), vec2<u32>(98110u, 7096u)), Struct_2(vec3<i32>(38461i, 1i, 2147483647i), vec4<f32>(1001f, 710f, -420f, 1381f), Struct_1(vec3<f32>(641f, -470f, 936f), vec3<bool>(false, false, false), 1i), vec4<f32>(1400f, -274f, -1054f, 1000f), vec2<u32>(60743u, 4294967295u)), Struct_2(vec3<i32>(10188i, 26515i, i32(-2147483648)), vec4<f32>(1226f, 1122f, 1434f, -1415f), Struct_1(vec3<f32>(622f, 970f, 1000f), vec3<bool>(false, true, true), -67007i), vec4<f32>(-266f, -1061f, -1299f, -1000f), vec2<u32>(4294967295u, 79353u)), Struct_2(vec3<i32>(1i, 2147483647i, 0i), vec4<f32>(1108f, 535f, 908f, -129f), Struct_1(vec3<f32>(-1000f, -703f, -116f), vec3<bool>(false, true, false), 29021i), vec4<f32>(222f, 1211f, 242f, -889f), vec2<u32>(13224u, 50800u)), Struct_2(vec3<i32>(i32(-2147483648), -1i, -1i), vec4<f32>(-141f, -384f, 1223f, 933f), Struct_1(vec3<f32>(-1261f, 344f, 308f), vec3<bool>(true, true, false), i32(-2147483648)), vec4<f32>(1000f, 2635f, 1305f, 1297f), vec2<u32>(0u, 0u)), Struct_2(vec3<i32>(-33507i, 2147483647i, i32(-2147483648)), vec4<f32>(-723f, 638f, -159f, 2037f), Struct_1(vec3<f32>(729f, 1178f, -520f), vec3<bool>(false, false, true), 12276i), vec4<f32>(117f, -475f, -246f, 219f), vec2<u32>(4294967295u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), 0i, 1i), vec4<f32>(-298f, 1325f, 112f, 285f), Struct_1(vec3<f32>(-1407f, 1213f, -508f), vec3<bool>(false, true, false), 29148i), vec4<f32>(279f, -1130f, -1147f, -1517f), vec2<u32>(102594u, 0u)), Struct_2(vec3<i32>(-1i, -1i, 33220i), vec4<f32>(244f, 244f, -265f, 1746f), Struct_1(vec3<f32>(380f, -865f, -969f), vec3<bool>(false, false, true), -50740i), vec4<f32>(-214f, -225f, -398f, -1000f), vec2<u32>(4294967295u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), -48545i, 2147483647i), vec4<f32>(-993f, 914f, 1000f, -1236f), Struct_1(vec3<f32>(-1098f, 1356f, 306f), vec3<bool>(true, false, false), 18995i), vec4<f32>(2083f, 353f, -842f, -454f), vec2<u32>(16246u, 4294967295u)), Struct_2(vec3<i32>(-18950i, 1i, 2147483647i), vec4<f32>(-412f, 544f, 1100f, 925f), Struct_1(vec3<f32>(-2494f, -231f, 1974f), vec3<bool>(false, false, false), 2147483647i), vec4<f32>(1685f, 856f, 2403f, 1009f), vec2<u32>(67065u, 64967u)), Struct_2(vec3<i32>(-47594i, -1i, 1i), vec4<f32>(-1162f, 2035f, -1320f, -277f), Struct_1(vec3<f32>(-148f, -210f, -931f), vec3<bool>(false, true, false), 825i), vec4<f32>(1225f, 1000f, -541f, -756f), vec2<u32>(28209u, 41891u)), Struct_2(vec3<i32>(46255i, -33822i, 1i), vec4<f32>(-638f, 1141f, 1000f, -515f), Struct_1(vec3<f32>(-332f, -355f, -982f), vec3<bool>(true, true, false), 2147483647i), vec4<f32>(2267f, -1111f, 733f, -265f), vec2<u32>(14846u, 123404u)), Struct_2(vec3<i32>(20221i, 28611i, 2147483647i), vec4<f32>(-2095f, 1289f, -476f, -1342f), Struct_1(vec3<f32>(1000f, 1000f, -401f), vec3<bool>(true, true, false), 13726i), vec4<f32>(1848f, -2000f, -1871f, 264f), vec2<u32>(39367u, 4294967295u)));

var<private> global3: array<vec3<f32>, 29>;

var<private> global4: array<bool, 29> = array<bool, 29>(true, true, false, true, false, false, false, true, false, true, true, false, false, false, true, true, true, true, false, true, true, true, true, true, true, false, true, false, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    global4 = array<bool, 29>();
    global4 = array<bool, 29>();
    let var_0 = global1.c;
    var var_1 = vec2<bool>(any(global1.c.b), false);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32((~vec4<i32>(var_0.c, 2147483647i, u_input.b, var_0.c) ^ (vec4<i32>(u_input.b, 9654i, var_0.c, var_0.c) & vec4<i32>(global1.a.x, u_input.b, global1.c.c, var_0.c))) ^ countOneBits(vec4<i32>(global1.a.x, global1.c.c, global1.c.c, 0i) << (vec4<u32>(global1.e.x, 11882u, 13231u, global1.e.x) % vec4<u32>(32u))), min(_wgslsmith_add_vec4_i32(vec4<i32>(10677i, -2147483647i, 0i, 45911i), vec4<i32>(0i, -10449i, -32269i, 0i) & vec4<i32>(1i, 49785i, global1.a.x, global1.a.x)), reverseBits(~vec4<i32>(0i, var_0.c, -62661i, u_input.b)))), 1i);
    return global1.c;
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2738f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1558f), _wgslsmith_f_op_f32(-global1.c.a.x))), func_1().a.x, _wgslsmith_f_op_f32(ceil(-410f)))), func_1(), _wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(_wgslsmith_f_op_f32(614f - _wgslsmith_f_op_f32(-796f * -331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.b.x)))), global1.c.a.x)), select(~(vec2<u32>(37833u, global1.e.x) << (global1.e % vec2<u32>(32u))), min(~u_input.a.zx, ~global1.e) >> (u_input.a.xz % vec2<u32>(32u)), true));
    var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(var_0.a, firstLeadingBit(-(var_0.a ^ vec3<i32>(-70845i, 379i, 1i))), vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(global1.a.yy, vec2<i32>(u_input.b, 2328i)), -global1.a.x) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.d))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.e.x, global1.e.x), 29u)])), vec3<bool>(reverseBits(1u) != _wgslsmith_div_u32(global1.e.x, 11164u), !any(vec2<bool>(false, true)), any(vec3<bool>(global1.c.b.x, true, false))), global1.a.x), var_0.b, u_input.a.zy);
    var_0 = Struct_2(-(~(-(~global1.a))), var_0.b, var_0.c, var_0.b, u_input.a.yy << (((vec2<u32>(67434u, 30151u) & min(u_input.a.zz, vec2<u32>(8320u, 0u))) | _wgslsmith_add_vec2_u32(vec2<u32>(var_0.e.x, 4294967295u) | vec2<u32>(global1.e.x, 1u), vec2<u32>(0u, var_0.e.x))) % vec2<u32>(32u)));
    var var_1 = Struct_1(var_0.d.zxz, var_0.c.b, _wgslsmith_sub_i32(-29988i, -(var_0.a.x & ~u_input.b)));
    var var_2 = abs(~_wgslsmith_div_vec3_u32(~(~u_input.a), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 64280u))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.c.a.x, global1.d.x, all(var_1.b.zy))), _wgslsmith_f_op_f32(-global1.d.x), global1.d.x), vec3<f32>(_wgslsmith_f_op_f32(round(179f)), 158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(exp2(global1.d.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(907f)), _wgslsmith_f_op_f32(1000f * var_0.b.x))), -990f, var_1.a.x)));
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_1(vec3<f32>(global1.b.x, func_1().a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * -809f)), !(!vec3<bool>(!global0[_wgslsmith_index_u32(58703u, 22u)], true, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 32396u), vec3<u32>(global1.e.x, 0u, 34602u)), 29u)])), global1.a.x);
    let var_1 = max(vec4<i32>(~(-min(global1.a.x, 45410i)), var_0.c, firstLeadingBit(_wgslsmith_dot_vec3_i32(global1.a, vec3<i32>(global1.c.c, var_0.c, var_0.c))) | var_0.c, reverseBits(-31135i)), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.b, var_0.c, global1.c.c, 47204i) << (vec4<u32>(84028u, u_input.a.x, 30118u, arg_0.x) % vec4<u32>(32u))), -vec4<i32>(firstLeadingBit(-26460i), -1i, i32(-1i) * -45308i, _wgslsmith_mult_i32(u_input.b, 2147483647i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.c, global1.a.x, -23511i, 19417i) >> (~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, arg_0.x) % vec4<u32>(32u)), -vec4<i32>(global1.a.x, -81734i, -14442i, 26450i))));
    global1 = Struct_2(vec3<i32>(-65160i, ~(~(global1.a.x >> (u_input.a.x % 32u))), countOneBits(-var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 569f, var_0.a.x, -2104f)), vec4<f32>(var_0.a.x, -124f, -919f, -725f), false)) - global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.d), vec4<f32>(var_0.a.x, -356f, -293f, var_0.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, 717f, -1349f) - global3[_wgslsmith_index_u32(global1.e.x, 29u)]))), global1.c.b, 1i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -733f)), _wgslsmith_div_vec4_f32(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -890f, var_0.a.x, var_0.a.x))))), (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.e, arg_0.zy, vec2<u32>(global1.e.x, 38113u)), vec2<u32>(67104u, arg_0.x)) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, 1u, 36411u, 73255u), vec4<u32>(4294967295u, global1.e.x, 4294967295u, 1u)), 4294967295u & u_input.a.x)) >> (~vec2<u32>(~1u, ~4294967295u) % vec2<u32>(32u)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(global1.a, ~vec3<i32>(var_0.c, global1.a.x & u_input.b, u_input.b)), 39708i, _wgslsmith_div_i32(~func_1().c, -2147483647i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.a.x)))) - global1.d.x);
    return _wgslsmith_add_vec2_i32(abs(global1.a.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -var_1.zz, ~global1.a.xx) << (~global1.e % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)], global1.c.b, 1i);
    var var_1 = func_1();
    let var_2 = var_0.b.x | all(!(!vec4<bool>(global1.c.b.x, global0[_wgslsmith_index_u32(global1.e.x, 22u)], global4[_wgslsmith_index_u32(global1.e.x, 29u)], global1.c.b.x)));
    global4 = array<bool, 29>();
    global0 = array<bool, 22>();
    var var_3 = vec3<f32>(195f, 615f, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.c, _wgslsmith_add_i32(global1.c.c, global1.c.c)), func_2(vec3<u32>(global1.e.x, global1.e.x, u_input.a.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 1i, 0i, 1i), select(vec4<i32>(1i, var_1.c, global1.a.x, u_input.b), vec4<i32>(-7829i, var_1.c, u_input.b, -2147483647i), var_1.b.x)), 1i)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x - 786f), _wgslsmith_f_op_f32(exp2(global1.d.x))))));
}

