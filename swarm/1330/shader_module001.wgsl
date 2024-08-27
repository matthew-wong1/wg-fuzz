struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(1u, -18159i, vec3<i32>(-33273i, 1i, 0i), vec4<f32>(-476f, 286f, 1641f, -321f)), Struct_1(4294967295u, -30005i, vec3<i32>(-5082i, -35191i, 1i), vec4<f32>(-322f, -1200f, -804f, 567f))), Struct_2(Struct_1(0u, -9165i, vec3<i32>(-1i, -1i, 2147483647i), vec4<f32>(-186f, -485f, -1248f, 381f)), Struct_1(59474u, i32(-2147483648), vec3<i32>(1i, -1i, 12154i), vec4<f32>(-2256f, 1086f, -254f, 632f))), Struct_2(Struct_1(0u, -1i, vec3<i32>(33057i, -19852i, 25031i), vec4<f32>(-2796f, -309f, -2068f, -1154f)), Struct_1(1u, 3314i, vec3<i32>(1i, -10804i, -86591i), vec4<f32>(-1138f, -1316f, 465f, -820f))), Struct_2(Struct_1(53291u, 48199i, vec3<i32>(-18349i, -418i, 1i), vec4<f32>(1280f, 1049f, 970f, 123f)), Struct_1(126471u, -26314i, vec3<i32>(-24768i, -20694i, 1i), vec4<f32>(-156f, -1406f, -785f, 1000f))), Struct_2(Struct_1(91017u, -1i, vec3<i32>(-30048i, 1i, 67741i), vec4<f32>(1293f, -838f, 1000f, 817f)), Struct_1(0u, 78580i, vec3<i32>(2147483647i, -1i, 28214i), vec4<f32>(1363f, -823f, -2827f, -752f))), Struct_2(Struct_1(0u, 18863i, vec3<i32>(1i, 0i, -57559i), vec4<f32>(1128f, 2136f, -444f, 547f)), Struct_1(82181u, -37951i, vec3<i32>(-1i, 44905i, 0i), vec4<f32>(-352f, 1797f, 780f, -1013f))), Struct_2(Struct_1(23024u, 2147483647i, vec3<i32>(9687i, i32(-2147483648), -9422i), vec4<f32>(-1430f, -1874f, 2307f, -1000f)), Struct_1(0u, -1i, vec3<i32>(i32(-2147483648), 31837i, 3570i), vec4<f32>(947f, -2217f, 2724f, 1388f))), Struct_2(Struct_1(1u, 2147483647i, vec3<i32>(2920i, -39933i, -1i), vec4<f32>(-769f, 1623f, -360f, 975f)), Struct_1(45557u, -5161i, vec3<i32>(49575i, 2147483647i, 1i), vec4<f32>(-1277f, 771f, 1244f, 681f))), Struct_2(Struct_1(4294967295u, 0i, vec3<i32>(i32(-2147483648), 41769i, 2147483647i), vec4<f32>(-578f, 661f, -1000f, -440f)), Struct_1(0u, 1i, vec3<i32>(2147483647i, -27438i, -464i), vec4<f32>(-336f, -1634f, -1318f, -1000f))), Struct_2(Struct_1(4294967295u, -27165i, vec3<i32>(-36940i, -59021i, 0i), vec4<f32>(-563f, 1000f, -1000f, 292f)), Struct_1(20363u, i32(-2147483648), vec3<i32>(2147483647i, -52328i, 4046i), vec4<f32>(-1000f, -607f, -345f, -781f))), Struct_2(Struct_1(1u, -1i, vec3<i32>(50220i, -33643i, 67288i), vec4<f32>(284f, -1000f, 1957f, 1289f)), Struct_1(72149u, -1i, vec3<i32>(25979i, i32(-2147483648), -8558i), vec4<f32>(-774f, -678f, 755f, 900f))), Struct_2(Struct_1(10731u, -1430i, vec3<i32>(1i, -63259i, i32(-2147483648)), vec4<f32>(242f, -1246f, 1706f, -289f)), Struct_1(1u, 19619i, vec3<i32>(24291i, 0i, i32(-2147483648)), vec4<f32>(-1649f, 712f, 843f, 233f))), Struct_2(Struct_1(537u, 1i, vec3<i32>(-15449i, -41713i, -9287i), vec4<f32>(1474f, -167f, 565f, -1000f)), Struct_1(1u, -1i, vec3<i32>(21011i, -52080i, -30739i), vec4<f32>(-2263f, -332f, -190f, 1231f))), Struct_2(Struct_1(30002u, 2147483647i, vec3<i32>(-68850i, -13936i, 1i), vec4<f32>(409f, 1229f, -170f, -879f)), Struct_1(0u, -26007i, vec3<i32>(-1i, 18984i, -1i), vec4<f32>(-1938f, -1000f, 218f, 591f))), Struct_2(Struct_1(25150u, 23099i, vec3<i32>(i32(-2147483648), -62105i, i32(-2147483648)), vec4<f32>(-386f, 186f, -347f, 235f)), Struct_1(37316u, -33033i, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec4<f32>(-1000f, 1000f, -538f, 277f))), Struct_2(Struct_1(230u, -1i, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<f32>(-522f, -615f, -536f, -1000f)), Struct_1(18058u, i32(-2147483648), vec3<i32>(-55251i, 1i, 8626i), vec4<f32>(-1523f, 326f, 165f, -496f))), Struct_2(Struct_1(8817u, -1i, vec3<i32>(1i, 9472i, 72580i), vec4<f32>(124f, 1255f, 514f, -1340f)), Struct_1(1000u, 2147483647i, vec3<i32>(-1i, 2147483647i, -1i), vec4<f32>(-183f, 1290f, 320f, 830f))));

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(645f, -1645f, 427f), vec3<f32>(-1698f, 1303f, -243f), vec3<f32>(-188f, 2051f, 1173f), vec3<f32>(1611f, 658f, -182f), vec3<f32>(-1000f, 282f, -803f), vec3<f32>(-222f, -399f, -603f), vec3<f32>(-1492f, 1091f, 1154f), vec3<f32>(-960f, 1276f, -232f));

var<private> global3: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(35317u, 26607i, vec3<i32>(-1i, 2692i, 22840i), vec4<f32>(-256f, -825f, 1034f, -1166f)), Struct_1(0u, -2685i, vec3<i32>(-1i, -1i, i32(-2147483648)), vec4<f32>(-1181f, 1719f, -424f, -1184f)), Struct_1(4294967295u, -53277i, vec3<i32>(-20816i, -3441i, i32(-2147483648)), vec4<f32>(1836f, 262f, -379f, 1335f)), Struct_1(4458u, 26724i, vec3<i32>(28026i, 2147483647i, 1i), vec4<f32>(-639f, -2076f, -372f, -1782f)), Struct_1(1u, -32638i, vec3<i32>(1i, 0i, 2147483647i), vec4<f32>(1980f, 947f, 1264f, -718f)), Struct_1(83707u, -26002i, vec3<i32>(i32(-2147483648), 0i, 0i), vec4<f32>(549f, -859f, -450f, 2059f)), Struct_1(0u, -10800i, vec3<i32>(5350i, -40887i, 7855i), vec4<f32>(222f, -548f, 461f, 852f)), Struct_1(13006u, -25869i, vec3<i32>(-1i, -1i, 1i), vec4<f32>(316f, -1138f, -410f, 1000f)), Struct_1(85575u, -22389i, vec3<i32>(61765i, i32(-2147483648), -29280i), vec4<f32>(-416f, -156f, -1545f, -805f)), Struct_1(0u, 0i, vec3<i32>(37556i, -2696i, 0i), vec4<f32>(-809f, -1116f, -185f, -1123f)), Struct_1(4294967295u, 28542i, vec3<i32>(5159i, -50485i, 8393i), vec4<f32>(522f, -991f, 390f, 711f)), Struct_1(1u, 26392i, vec3<i32>(1i, 6995i, 0i), vec4<f32>(-1918f, -504f, 620f, 998f)), Struct_1(1u, -5457i, vec3<i32>(-27061i, -3860i, 2147483647i), vec4<f32>(384f, 167f, -2588f, 611f)), Struct_1(68928u, 2147483647i, vec3<i32>(1i, -53449i, 14058i), vec4<f32>(680f, 1000f, 216f, -1727f)), Struct_1(1u, 24547i, vec3<i32>(66003i, -43156i, 782i), vec4<f32>(-568f, -567f, 1000f, -1385f)), Struct_1(0u, 26086i, vec3<i32>(1i, i32(-2147483648), -1i), vec4<f32>(372f, -535f, -363f, 152f)), Struct_1(4294967295u, -33137i, vec3<i32>(i32(-2147483648), 8256i, i32(-2147483648)), vec4<f32>(315f, 1629f, 459f, -1246f)), Struct_1(6318u, i32(-2147483648), vec3<i32>(39388i, 2147483647i, -2037i), vec4<f32>(890f, -454f, 889f, 372f)), Struct_1(90466u, 0i, vec3<i32>(1i, 2147483647i, 13030i), vec4<f32>(115f, -273f, 596f, 987f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 17u)];
    let var_1 = var_0.a.b;
    global4 = array<Struct_1, 19>();
    global2 = array<vec3<f32>, 8>();
    var var_2 = u_input.a;
    return ~firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 23582u, 22640u), vec3<u32>(u_input.a, var_0.b.a, 24082u), vec3<u32>(24913u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 29572u), vec3<u32>(4294967295u, 75045u, u_input.a)), true)) << (vec3<u32>(~_wgslsmith_mult_u32(~22582u, select(var_0.b.a, 39002u, false)), ~(1u | u_input.a), firstTrailingBit(abs(max(var_0.a.a, 4294967295u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> u32 {
    global0 = -(~(vec4<i32>(~global0.x, 1i, _wgslsmith_add_i32(-1i, u_input.b.x), arg_1.x) ^ abs(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, arg_0.a.b, arg_0.b.c.x, 38843i), vec4<i32>(arg_0.b.b, arg_1.x, -2147483647i, u_input.b.x)))));
    let var_0 = global1[_wgslsmith_index_u32(arg_0.b.a, 17u)];
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.a, _wgslsmith_add_u32(reverseBits(abs(u_input.a) | 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u) << (vec3<u32>(arg_0.b.a, 0u, 1u) % vec3<u32>(32u)), vec3<u32>(42838u, 18330u, var_0.a.a) | vec3<u32>(4294967295u, arg_0.b.a, arg_0.a.a)), func_3()))), 8u)];
    var var_2 = Struct_1(var_0.a.a, 2174i, _wgslsmith_div_vec3_i32(arg_0.b.c, _wgslsmith_sub_vec3_i32(abs(countOneBits(u_input.b)), vec3<i32>(max(arg_1.x, global0.x), var_0.b.c.x, min(2147483647i, -9845i)))), _wgslsmith_f_op_vec4_f32(arg_0.b.d * _wgslsmith_f_op_vec4_f32(var_0.b.d * _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 1000f, -360f, 838f), var_0.a.d))));
    var var_3 = ~vec3<i32>(-2147483647i & var_2.b, _wgslsmith_dot_vec3_i32(global0.wyy, var_2.c) ^ -var_2.c.x, -_wgslsmith_mult_i32(var_0.a.c.x, var_0.b.c.x)) & vec3<i32>(abs(~19806i), var_2.b ^ ~max(15000i, var_2.b), countOneBits(countOneBits(i32(-1i) * -139i)));
    return var_2.a;
}

fn func_1(arg_0: u32) -> u32 {
    return min(select(52224u, reverseBits(func_2(Struct_2(Struct_1(1u, 1i, global0.zzw, vec4<f32>(-970f, 1323f, 1131f, 1495f)), global4[_wgslsmith_index_u32(13356u, 19u)]), u_input.b, vec2<f32>(377f, 1188f), vec3<f32>(894f, -2002f, -1469f))), true) ^ 0u, 0u);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_i32(global0.zy, vec2<i32>(u_input.b.x, -1i));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.yy)));
    var var_3 = global1[_wgslsmith_index_u32(13097u, 17u)];
    global0 = vec4<i32>(-_wgslsmith_mult_i32(max(global0.x, _wgslsmith_mult_i32(28898i, 0i)), 35730i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c.x, var_3.b.c.x, arg_2.c.x, 1i | u_input.b.x), min(~vec4<i32>(-3292i, global0.x, arg_2.b, arg_2.b), vec4<i32>(var_3.a.c.x, global0.x, 2147483647i, -2147483647i)))), select(var_0.x, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i), ~arg_2.c.x), !(func_3().x <= arg_1.x)), firstLeadingBit(var_3.a.c.x));
    return Struct_1(~(~var_3.b.a >> ((~1u >> (abs(var_3.b.a) % 32u)) % 32u)), global0.x, vec3<i32>(var_3.b.c.x & 15469i, u_input.c.x, global0.x), _wgslsmith_f_op_vec4_f32(trunc(var_3.b.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20304i;
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(180f + 268f)))), max(~(~select(vec4<u32>(4294967295u, u_input.a, 16774u, u_input.a), vec4<u32>(4294967295u, 36194u, 4294967295u, 0u), vec4<bool>(true, true, true, false))), vec4<u32>(u_input.a, u_input.a, select(~u_input.a, func_1(u_input.a), true), ~0u)), global4[_wgslsmith_index_u32(u_input.a | ~64716u, 19u)]);
    global1 = array<Struct_2, 17>();
    let var_2 = Struct_3(global4[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, u_input.a, u_input.a, 30275u), ~vec4<u32>(14025u, 4242u, var_1.a, u_input.a))), 19u)], true, global1[_wgslsmith_index_u32(4294967295u, 17u)], abs(~_wgslsmith_sub_u32(func_4(1000f, vec4<u32>(1u, var_1.a, u_input.a, u_input.a), global4[_wgslsmith_index_u32(46023u, 19u)]).a, var_1.a ^ var_1.a)));
    global2 = array<vec3<f32>, 8>();
    let var_3 = func_4(func_4(var_1.d.x, vec4<u32>(~0u, ~(~0u), u_input.a, ~var_2.a.a), Struct_1(var_2.a.a ^ abs(var_1.a), _wgslsmith_mult_i32(abs(u_input.c.x), min(var_1.c.x, u_input.c.x)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(-52717i, var_2.a.c.x, -37070i), var_1.c), ~var_1.c), var_1.d)).d.x, vec4<u32>(var_2.a.a, firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a, var_2.d, var_2.a.a), reverseBits(vec3<u32>(var_2.c.a.a, 1u, var_2.d)))), _wgslsmith_add_u32(~35378u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(82023u, 6296u), vec2<u32>(9898u, 44241u)))), _wgslsmith_mod_u32(var_2.c.b.a, min(countOneBits(var_1.a), u_input.a))), func_4(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_1.a), vec4<u32>(7160u, 0u, u_input.a, var_1.a)) & select(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(var_2.d, u_input.a, var_1.a, 1u), select(vec4<bool>(var_2.b, var_2.b, var_2.b, false), vec4<bool>(var_2.b, false, var_2.b, false), var_2.b)), func_4(-468f, vec4<u32>(firstLeadingBit(u_input.a), ~var_2.d, var_1.a | u_input.a, var_2.d), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, ~var_1.a), 19u)])));
    let var_4 = var_2;
    var var_5 = Struct_3(Struct_1(~1u, global0.x ^ (global0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_3.a), vec2<u32>(u_input.a, var_1.a)) % 32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_4.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0, var_1.c.x, 20171i), vec4<i32>(55461i, -2147483647i, u_input.c.x, 0i)), var_3.c.x), ~var_2.c.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.b.d.x, -200f, -1876f, -416f)), _wgslsmith_f_op_vec4_f32(-var_1.d)))), !var_2.b, var_4.c, _wgslsmith_mult_u32(~select(func_1(var_1.a), ~var_3.a, 2147483647i <= var_3.c.x), var_4.d));
    let var_6 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(var_4.a.a, 1u, var_4.d, var_1.a), vec4<u32>(var_4.c.b.a, var_3.a, 4294967295u, 10671u)), ~(~vec4<u32>(var_4.c.b.a, var_1.a, var_1.a, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a, var_5.a.a, var_1.a, 0u), vec4<u32>(var_5.c.a.a, 37998u, 6273u, 0u)) ^ vec4<u32>(12516u, var_2.c.a.a, 4294967295u, var_2.d)), vec4<u32>(reverseBits(u_input.a | 33167u), abs(abs(var_1.a)), var_2.a.a, _wgslsmith_sub_u32(64385u, 21226u) << (_wgslsmith_add_u32(u_input.a, var_5.c.a.a) % 32u))), ~(~abs(min(1u, 4294967295u))), var_2.c.a.a, ~abs(6998u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(var_6.yxx & var_6.www)) >> (vec3<u32>(~var_2.a.a, ~(~var_1.a), firstLeadingBit(var_2.a.a)) % vec3<u32>(32u)), ~(max(var_5.a.a, 0u) | var_3.a) << (~_wgslsmith_dot_vec4_u32(firstLeadingBit(var_6), ~var_6) % 32u), ~1u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x))), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), u_input.a, _wgslsmith_mult_u32(firstLeadingBit(var_1.a), 60156u), _wgslsmith_add_u32(21296u, 16717u)), Struct_1(abs(~0u), (var_4.a.b >> (u_input.a % 32u)) ^ var_2.a.c.x, select(vec3<i32>(u_input.b.x, global0.x, var_2.c.a.b), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.a.c.x, 1i), u_input.b), any(vec3<bool>(var_4.b, true, var_2.b))), var_3.d)).b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.d.x))));
}

