struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(vec3<f32>(-1516f, -609f, -1112f), 1814u), Struct_1(vec3<f32>(1107f, 2111f, 877f), 4294967295u), vec3<u32>(1u, 49122u, 28200u), Struct_3(Struct_2(vec2<bool>(true, true), 29792i, Struct_1(vec3<f32>(960f, 1524f, -794f), 10450u)), Struct_1(vec3<f32>(-1682f, 677f, 177f), 863u), vec4<i32>(4763i, 4933i, 2147483647i, 2013i), Struct_1(vec3<f32>(995f, -1349f, -2303f), 70652u), Struct_2(vec2<bool>(false, false), -102287i, Struct_1(vec3<f32>(-1338f, -634f, 608f), 108515u))), 0i), Struct_4(Struct_1(vec3<f32>(719f, -972f, -472f), 32858u), Struct_1(vec3<f32>(-2158f, 246f, -652f), 21203u), vec3<u32>(22372u, 0u, 0u), Struct_3(Struct_2(vec2<bool>(true, false), 23419i, Struct_1(vec3<f32>(761f, -942f, -832f), 49136u)), Struct_1(vec3<f32>(1237f, -292f, -450f), 1u), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648)), Struct_1(vec3<f32>(-585f, -1693f, -1175f), 416u), Struct_2(vec2<bool>(true, true), -1i, Struct_1(vec3<f32>(1545f, 1000f, 684f), 34700u))), 1i), Struct_4(Struct_1(vec3<f32>(1278f, 222f, -944f), 4294967295u), Struct_1(vec3<f32>(-1000f, -924f, -653f), 15439u), vec3<u32>(1u, 16691u, 4731u), Struct_3(Struct_2(vec2<bool>(true, true), 586i, Struct_1(vec3<f32>(141f, 438f, 2180f), 0u)), Struct_1(vec3<f32>(-136f, 1276f, -1359f), 88048u), vec4<i32>(-3593i, 2147483647i, -41481i, -27600i), Struct_1(vec3<f32>(-1492f, -1920f, 485f), 33428u), Struct_2(vec2<bool>(false, false), -1i, Struct_1(vec3<f32>(-329f, 351f, -725f), 50846u))), i32(-2147483648)), Struct_4(Struct_1(vec3<f32>(880f, 398f, -967f), 16379u), Struct_1(vec3<f32>(744f, -1283f, -537f), 31189u), vec3<u32>(6847u, 4294967295u, 73976u), Struct_3(Struct_2(vec2<bool>(true, true), -19351i, Struct_1(vec3<f32>(-1159f, -1000f, 1121f), 0u)), Struct_1(vec3<f32>(-657f, -423f, 562f), 35821u), vec4<i32>(i32(-2147483648), 1i, -2655i, 32900i), Struct_1(vec3<f32>(1320f, 1000f, 920f), 32214u), Struct_2(vec2<bool>(true, false), 34573i, Struct_1(vec3<f32>(638f, -2017f, -701f), 41950u))), -1i), Struct_4(Struct_1(vec3<f32>(994f, -565f, 1155f), 0u), Struct_1(vec3<f32>(1000f, -935f, 804f), 14434u), vec3<u32>(0u, 21542u, 1u), Struct_3(Struct_2(vec2<bool>(true, true), 44527i, Struct_1(vec3<f32>(424f, 1280f, -906f), 1u)), Struct_1(vec3<f32>(1000f, 249f, -584f), 3506u), vec4<i32>(13503i, 14769i, i32(-2147483648), 2147483647i), Struct_1(vec3<f32>(-477f, 1101f, 931f), 26250u), Struct_2(vec2<bool>(true, false), i32(-2147483648), Struct_1(vec3<f32>(496f, -311f, 2166f), 2994u))), -1i), Struct_4(Struct_1(vec3<f32>(-278f, -642f, -1000f), 1u), Struct_1(vec3<f32>(180f, 381f, 472f), 73331u), vec3<u32>(27721u, 49636u, 1u), Struct_3(Struct_2(vec2<bool>(false, true), 2147483647i, Struct_1(vec3<f32>(-1114f, 1037f, 260f), 4294967295u)), Struct_1(vec3<f32>(1849f, -382f, -988f), 64809u), vec4<i32>(2147483647i, -47947i, -19797i, 1i), Struct_1(vec3<f32>(177f, -638f, 1000f), 1u), Struct_2(vec2<bool>(true, false), 2147483647i, Struct_1(vec3<f32>(-864f, -374f, -1316f), 0u))), 23853i), Struct_4(Struct_1(vec3<f32>(398f, -2046f, -358f), 4294967295u), Struct_1(vec3<f32>(-1007f, 1658f, -782f), 18861u), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_3(Struct_2(vec2<bool>(false, false), -53590i, Struct_1(vec3<f32>(-822f, -510f, 298f), 62638u)), Struct_1(vec3<f32>(2396f, 1000f, -265f), 0u), vec4<i32>(2147483647i, 2147483647i, 19869i, 18392i), Struct_1(vec3<f32>(615f, 1000f, -382f), 30973u), Struct_2(vec2<bool>(false, false), 23317i, Struct_1(vec3<f32>(898f, 710f, 379f), 0u))), -1i), Struct_4(Struct_1(vec3<f32>(-1000f, 710f, -1000f), 0u), Struct_1(vec3<f32>(-867f, -1293f, -458f), 16070u), vec3<u32>(76154u, 87308u, 69267u), Struct_3(Struct_2(vec2<bool>(true, true), 2147483647i, Struct_1(vec3<f32>(-1778f, 495f, 1251f), 0u)), Struct_1(vec3<f32>(-1367f, 618f, -908f), 1u), vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), Struct_1(vec3<f32>(750f, -769f, 345f), 13962u), Struct_2(vec2<bool>(true, true), -97558i, Struct_1(vec3<f32>(-441f, 132f, 348f), 27988u))), -1i), Struct_4(Struct_1(vec3<f32>(-139f, 1211f, -810f), 0u), Struct_1(vec3<f32>(-250f, -2127f, -950f), 0u), vec3<u32>(4294967295u, 66209u, 0u), Struct_3(Struct_2(vec2<bool>(true, true), 1i, Struct_1(vec3<f32>(-1431f, 204f, 475f), 14422u)), Struct_1(vec3<f32>(506f, 519f, -998f), 15963u), vec4<i32>(2147483647i, 57277i, -19559i, 73209i), Struct_1(vec3<f32>(402f, -636f, -380f), 37200u), Struct_2(vec2<bool>(false, true), 52669i, Struct_1(vec3<f32>(863f, 101f, -1682f), 1u))), 2147483647i), Struct_4(Struct_1(vec3<f32>(1029f, -721f, -470f), 2799u), Struct_1(vec3<f32>(-2161f, -682f, 738f), 1u), vec3<u32>(0u, 36007u, 0u), Struct_3(Struct_2(vec2<bool>(false, false), -28793i, Struct_1(vec3<f32>(-1000f, 1654f, 593f), 1u)), Struct_1(vec3<f32>(912f, 1344f, 680f), 0u), vec4<i32>(-25334i, 12903i, 13094i, 13167i), Struct_1(vec3<f32>(-1128f, 1000f, -170f), 9079u), Struct_2(vec2<bool>(false, false), 19045i, Struct_1(vec3<f32>(873f, -1162f, 1000f), 4294967295u))), -1i), Struct_4(Struct_1(vec3<f32>(432f, -887f, -988f), 38632u), Struct_1(vec3<f32>(524f, 2291f, 1000f), 22077u), vec3<u32>(44885u, 0u, 0u), Struct_3(Struct_2(vec2<bool>(true, false), -40260i, Struct_1(vec3<f32>(-982f, -1466f, 1001f), 61926u)), Struct_1(vec3<f32>(944f, -946f, 1488f), 4294967295u), vec4<i32>(18221i, 805i, 20154i, 1i), Struct_1(vec3<f32>(425f, 1418f, 417f), 19459u), Struct_2(vec2<bool>(true, true), 2147483647i, Struct_1(vec3<f32>(716f, 1759f, -1896f), 4294967295u))), -1i), Struct_4(Struct_1(vec3<f32>(765f, -1315f, 523f), 4294967295u), Struct_1(vec3<f32>(-787f, 1512f, 137f), 16642u), vec3<u32>(4294967295u, 77732u, 66533u), Struct_3(Struct_2(vec2<bool>(true, false), 31479i, Struct_1(vec3<f32>(147f, 1935f, 815f), 31992u)), Struct_1(vec3<f32>(-825f, -212f, -624f), 58744u), vec4<i32>(i32(-2147483648), 1i, 1i, 8209i), Struct_1(vec3<f32>(352f, 795f, -229f), 0u), Struct_2(vec2<bool>(false, false), 2147483647i, Struct_1(vec3<f32>(-1000f, -939f, -215f), 0u))), 0i), Struct_4(Struct_1(vec3<f32>(1000f, -239f, 3212f), 24100u), Struct_1(vec3<f32>(-968f, 457f, 194f), 51885u), vec3<u32>(4791u, 14867u, 4294967295u), Struct_3(Struct_2(vec2<bool>(false, false), i32(-2147483648), Struct_1(vec3<f32>(-419f, 920f, -1519f), 4294967295u)), Struct_1(vec3<f32>(-1891f, 557f, -320f), 10931u), vec4<i32>(-1i, -1i, 34928i, 48793i), Struct_1(vec3<f32>(451f, -1177f, -919f), 81975u), Struct_2(vec2<bool>(false, true), -31781i, Struct_1(vec3<f32>(-585f, 156f, 817f), 515u))), 2147483647i), Struct_4(Struct_1(vec3<f32>(-453f, 1233f, 1843f), 5872u), Struct_1(vec3<f32>(-1801f, 684f, -1000f), 114413u), vec3<u32>(1u, 32163u, 0u), Struct_3(Struct_2(vec2<bool>(true, false), -62742i, Struct_1(vec3<f32>(-1000f, 1243f, -1000f), 54199u)), Struct_1(vec3<f32>(-1000f, -783f, -1000f), 4294967295u), vec4<i32>(2147483647i, 51139i, 2147483647i, 18464i), Struct_1(vec3<f32>(-671f, -461f, 1991f), 41310u), Struct_2(vec2<bool>(true, false), 42902i, Struct_1(vec3<f32>(1649f, 215f, 474f), 34300u))), 1i), Struct_4(Struct_1(vec3<f32>(-564f, -358f, 1000f), 0u), Struct_1(vec3<f32>(436f, -2314f, 218f), 39755u), vec3<u32>(0u, 6744u, 23563u), Struct_3(Struct_2(vec2<bool>(true, true), -32208i, Struct_1(vec3<f32>(680f, -230f, 1325f), 50442u)), Struct_1(vec3<f32>(-1391f, -646f, -1902f), 48389u), vec4<i32>(28430i, -26271i, 0i, 2147483647i), Struct_1(vec3<f32>(-1155f, -245f, 330f), 4294967295u), Struct_2(vec2<bool>(false, true), -41991i, Struct_1(vec3<f32>(-448f, 1256f, 423f), 73305u))), -7341i), Struct_4(Struct_1(vec3<f32>(-480f, 1186f, 1696f), 47223u), Struct_1(vec3<f32>(638f, 592f, 2153f), 52598u), vec3<u32>(30239u, 4294967295u, 8657u), Struct_3(Struct_2(vec2<bool>(true, false), -1i, Struct_1(vec3<f32>(795f, -1560f, 1144f), 3996u)), Struct_1(vec3<f32>(-1591f, -1260f, 498f), 0u), vec4<i32>(24914i, -62342i, -17511i, -29160i), Struct_1(vec3<f32>(-536f, 721f, -468f), 44699u), Struct_2(vec2<bool>(true, true), -1i, Struct_1(vec3<f32>(404f, -1290f, -895f), 0u))), i32(-2147483648)), Struct_4(Struct_1(vec3<f32>(-264f, -724f, -1130f), 4294967295u), Struct_1(vec3<f32>(-538f, -1464f, -881f), 1u), vec3<u32>(0u, 0u, 1u), Struct_3(Struct_2(vec2<bool>(false, true), -1i, Struct_1(vec3<f32>(1221f, -1565f, -1129f), 7397u)), Struct_1(vec3<f32>(180f, 576f, 328f), 69010u), vec4<i32>(1i, -3426i, 13631i, 31285i), Struct_1(vec3<f32>(424f, 1337f, 2345f), 47798u), Struct_2(vec2<bool>(true, false), -15046i, Struct_1(vec3<f32>(668f, 784f, 1227f), 23154u))), i32(-2147483648)), Struct_4(Struct_1(vec3<f32>(-942f, -322f, 1188f), 4294967295u), Struct_1(vec3<f32>(397f, -1738f, 1017f), 19092u), vec3<u32>(4294967295u, 4294967295u, 25337u), Struct_3(Struct_2(vec2<bool>(true, true), 2147483647i, Struct_1(vec3<f32>(1117f, 1011f, -2016f), 4294967295u)), Struct_1(vec3<f32>(-378f, 980f, -2267f), 101938u), vec4<i32>(379i, -66977i, i32(-2147483648), -10322i), Struct_1(vec3<f32>(980f, 1283f, -1080f), 1u), Struct_2(vec2<bool>(false, false), i32(-2147483648), Struct_1(vec3<f32>(970f, 357f, -323f), 4294967295u))), 2147483647i));

var<private> global1: array<u32, 11> = array<u32, 11>(1u, 68239u, 96270u, 1u, 33682u, 44057u, 4296u, 29319u, 18186u, 0u, 1u);

var<private> global2: array<u32, 32> = array<u32, 32>(31885u, 1u, 28364u, 29597u, 58412u, 4294967295u, 7920u, 59298u, 4294967295u, 16801u, 27585u, 1u, 4294967295u, 0u, 4294967295u, 34113u, 78496u, 0u, 1u, 75721u, 28699u, 1u, 4294967295u, 87459u, 40556u, 22217u, 1u, 4294967295u, 55049u, 12268u, 64160u, 4294967295u);

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 25076i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_3.a.xz);
    let var_1 = vec4<u32>(0u, 0u, ~4294967295u, ~(~reverseBits(u_input.b.x)) << (u_input.a % 32u));
    let var_2 = Struct_2(vec2<bool>(false, false), 15221i, arg_2);
    let var_3 = vec3<f32>(arg_3.a.x, -524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2089f)));
    var var_4 = -vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, -54105i, -30402i), vec3<i32>(global3.x, -2147483647i, -326i)), ~vec3<i32>(global3.x, var_2.b, 0i)), vec3<i32>(var_2.b << (arg_0.x % 32u), global3.x | 15225i, -22319i)), _wgslsmith_clamp_i32(~(-1i << (u_input.a % 32u)), 29246i, -global3.x & global3.x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f + _wgslsmith_f_op_f32(var_3.x - -263f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -848f, true)) - 125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(548f, 971f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + 1624f)) + _wgslsmith_f_op_f32(-673f - -2324f))), -272f);
    global1 = array<u32, 11>();
    let var_1 = Struct_3(Struct_2(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), firstTrailingBit(11865i), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1165f, 1000f, 1186f), vec3<f32>(-139f, 158f, 1602f))), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(23583u, 11u)], ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 32u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(275f, var_0.x, -534f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(964f, 300f, arg_0))) - _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.b.x, u_input.c.x, 23751u) ^ u_input.b.wyy, select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(arg_0, var_0.x, 523f), global2[_wgslsmith_index_u32(u_input.a, 32u)]), Struct_1(vec3<f32>(720f, 524f, var_0.x), 68328u)))), u_input.b.x), -vec4<i32>(1i, 11693i, global3.x, -(~(-10470i))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-669f * arg_0), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(var_0.x * arg_0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, arg_0, var_0.x)))), true)), countOneBits(~abs(21282u))), Struct_2(vec2<bool>(u_input.b.x < u_input.b.x, 1629f <= _wgslsmith_f_op_f32(step(var_0.x, var_0.x))), -23968i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_0, arg_0) - vec3<f32>(arg_0, 3326f, arg_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1358f, arg_0))), 9017u)));
    global2 = array<u32, 32>();
    global0 = array<Struct_4, 18>();
    return Struct_3(var_1.a, Struct_1(var_1.b.a, global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), _wgslsmith_div_vec4_i32(var_1.c, min(var_1.c, vec4<i32>(-global3.x, _wgslsmith_sub_i32(-1i, global3.x), -1i, global3.x))), var_1.e.c, var_1.a);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_4, 18>();
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    var var_0 = func_2(_wgslsmith_f_op_f32(386f - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2091f * 1137f), -528f, true)))));
    global1 = array<u32, 11>();
    return func_2(_wgslsmith_f_op_f32(var_0.b.a.x * -229f)).a;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    global0 = array<Struct_4, 18>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-func_1().c.a.x)).d;
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-2147483647i == _wgslsmith_mult_i32(func_4(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 0u), func_1(), u_input.b.wyw), global3.x), true, true & !(true && func_1().a.x));
    global3 = select(_wgslsmith_clamp_vec2_i32(abs(select(vec2<i32>(global3.x, -2147483647i), vec2<i32>(global3.x, global3.x), var_0)), vec2<i32>(global3.x >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30295u, 11u)], 11u)] % 32u), func_1().b), vec2<i32>(global3.x, global3.x)) ^ reverseBits(~(-vec2<i32>(global3.x, 1i))), vec2<i32>(global3.x, ~(~2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(296f * -260f), _wgslsmith_f_op_f32(-1779f - -1000f), var_0)), -140f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-943f)))));
    global3 = _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, global3.x), vec2<i32>(~abs(-27338i), -2147483647i) ^ vec2<i32>(global3.x, global3.x));
    global1 = array<u32, 11>();
    global0 = array<Struct_4, 18>();
    let var_1 = Struct_3(func_1(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(-1470f, _wgslsmith_f_op_f32(949f - -1034f))), 1f, 1338f), firstLeadingBit(0u) << (~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], u_input.a) % 32u)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 2147483647i, -47553i, global3.x), vec4<i32>(-1i, 1i, global3.x, -23775i)), max(-vec4<i32>(0i, -2147483647i, global3.x, global3.x), firstLeadingBit(vec4<i32>(global3.x, 0i, global3.x, 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(global3.x, 1i, global3.x, global3.x), _wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, global3.x), vec4<i32>(global3.x, global3.x, -1i, 9308i)))), select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global3.x, global3.x, -2147483647i), vec4<i32>(global3.x, global3.x, 2147483647i, global3.x)), ~vec4<i32>(global3.x, 2147483647i, -2147483647i, 2147483647i), select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, var_0, true, false), vec4<bool>(false, false, true, var_0))) ^ (-vec4<i32>(global3.x, global3.x, -39941i, 0i) >> (~u_input.b % vec4<u32>(32u)))), func_1().c, Struct_2(vec2<bool>(any(vec4<bool>(var_0, false, var_0, var_0)), var_0), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-9241i, global3.x, -904i, 22662i)), vec4<i32>(53444i >> (u_input.c.x % 32u), reverseBits(global3.x), abs(11786i), ~(-2147483647i))), func_2(302f).b));
    global3 = -var_1.c.wy;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.b, 1u, u_input.b.x);
}

