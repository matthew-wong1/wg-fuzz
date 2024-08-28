struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 51546i, -1i);

var<private> global1: u32 = 1u;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(-772f, vec2<u32>(44814u, 31348u), vec2<bool>(true, true), vec2<f32>(-835f, -477f)), vec4<f32>(-1687f, 228f, 390f, -323f), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, false, true), Struct_1(861f, vec2<u32>(13123u, 4294967295u), vec2<bool>(false, true), vec2<f32>(-1681f, 1392f))), Struct_2(Struct_1(-380f, vec2<u32>(1u, 32478u), vec2<bool>(false, false), vec2<f32>(-455f, 256f)), vec4<f32>(-725f, -1338f, -1022f, -1941f), vec2<u32>(12943u, 1u), vec3<bool>(false, false, true), Struct_1(-303f, vec2<u32>(0u, 0u), vec2<bool>(true, true), vec2<f32>(-428f, -530f))), Struct_2(Struct_1(301f, vec2<u32>(1u, 101015u), vec2<bool>(true, false), vec2<f32>(1216f, 594f)), vec4<f32>(-145f, -158f, 599f, -1330f), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, false, false), Struct_1(-499f, vec2<u32>(4708u, 0u), vec2<bool>(false, true), vec2<f32>(-1000f, 766f))), Struct_2(Struct_1(-1190f, vec2<u32>(0u, 1u), vec2<bool>(false, true), vec2<f32>(611f, 1276f)), vec4<f32>(690f, 694f, 509f, -301f), vec2<u32>(23460u, 0u), vec3<bool>(true, false, true), Struct_1(-691f, vec2<u32>(4294967295u, 71043u), vec2<bool>(true, true), vec2<f32>(-890f, -883f))), Struct_2(Struct_1(-811f, vec2<u32>(1u, 17084u), vec2<bool>(true, true), vec2<f32>(-365f, -303f)), vec4<f32>(305f, -714f, 234f, 533f), vec2<u32>(4294967295u, 67627u), vec3<bool>(true, true, true), Struct_1(-603f, vec2<u32>(11192u, 3798u), vec2<bool>(true, false), vec2<f32>(1584f, 831f))), Struct_2(Struct_1(-219f, vec2<u32>(17783u, 4813u), vec2<bool>(true, false), vec2<f32>(-270f, 435f)), vec4<f32>(1297f, -1343f, -334f, 254f), vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), Struct_1(1747f, vec2<u32>(0u, 0u), vec2<bool>(true, false), vec2<f32>(1430f, 472f))), Struct_2(Struct_1(224f, vec2<u32>(31436u, 4294967295u), vec2<bool>(false, true), vec2<f32>(-551f, -1253f)), vec4<f32>(854f, 792f, -258f, 1498f), vec2<u32>(4294967295u, 4294967295u), vec3<bool>(true, true, true), Struct_1(-544f, vec2<u32>(4062u, 0u), vec2<bool>(true, true), vec2<f32>(-1000f, -513f))), Struct_2(Struct_1(-1000f, vec2<u32>(62109u, 1u), vec2<bool>(false, false), vec2<f32>(448f, -901f)), vec4<f32>(-1712f, 411f, 1438f, -991f), vec2<u32>(1u, 108149u), vec3<bool>(false, false, false), Struct_1(1757f, vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), vec2<f32>(140f, -345f))), Struct_2(Struct_1(-1266f, vec2<u32>(1u, 0u), vec2<bool>(true, true), vec2<f32>(-1938f, 173f)), vec4<f32>(634f, 483f, -1846f, -1527f), vec2<u32>(1u, 43526u), vec3<bool>(true, true, false), Struct_1(-982f, vec2<u32>(0u, 4294967295u), vec2<bool>(true, false), vec2<f32>(2008f, 1526f))), Struct_2(Struct_1(-702f, vec2<u32>(17924u, 48647u), vec2<bool>(true, false), vec2<f32>(-521f, -1692f)), vec4<f32>(115f, -1732f, 1000f, -121f), vec2<u32>(4294967295u, 62367u), vec3<bool>(false, false, false), Struct_1(-1279f, vec2<u32>(12832u, 4294967295u), vec2<bool>(false, true), vec2<f32>(-980f, 1149f))), Struct_2(Struct_1(1957f, vec2<u32>(29099u, 1u), vec2<bool>(false, false), vec2<f32>(403f, 406f)), vec4<f32>(1007f, 1006f, -622f, -2219f), vec2<u32>(100168u, 39925u), vec3<bool>(true, false, true), Struct_1(1053f, vec2<u32>(19700u, 109960u), vec2<bool>(true, false), vec2<f32>(-906f, -877f))), Struct_2(Struct_1(299f, vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), vec2<f32>(-1000f, 1228f)), vec4<f32>(1267f, -1075f, 1102f, -1462f), vec2<u32>(87945u, 37403u), vec3<bool>(true, true, false), Struct_1(657f, vec2<u32>(25538u, 0u), vec2<bool>(true, true), vec2<f32>(-886f, -1344f))), Struct_2(Struct_1(-1495f, vec2<u32>(0u, 0u), vec2<bool>(false, true), vec2<f32>(-840f, 370f)), vec4<f32>(943f, -1087f, -247f, -1112f), vec2<u32>(34900u, 1u), vec3<bool>(true, false, false), Struct_1(926f, vec2<u32>(20786u, 65381u), vec2<bool>(false, true), vec2<f32>(751f, 361f))), Struct_2(Struct_1(-1535f, vec2<u32>(75296u, 1u), vec2<bool>(false, true), vec2<f32>(-106f, 990f)), vec4<f32>(1175f, 1826f, 559f, -1145f), vec2<u32>(4294967295u, 38785u), vec3<bool>(true, true, false), Struct_1(-562f, vec2<u32>(1u, 38770u), vec2<bool>(false, false), vec2<f32>(-805f, -1235f))), Struct_2(Struct_1(309f, vec2<u32>(9496u, 6028u), vec2<bool>(true, false), vec2<f32>(-1128f, 1910f)), vec4<f32>(526f, -960f, 161f, 139f), vec2<u32>(63381u, 5316u), vec3<bool>(true, true, false), Struct_1(-284f, vec2<u32>(1680u, 4294967295u), vec2<bool>(false, true), vec2<f32>(-2889f, -607f))), Struct_2(Struct_1(1964f, vec2<u32>(36556u, 0u), vec2<bool>(true, true), vec2<f32>(934f, -470f)), vec4<f32>(-2039f, -132f, 1305f, -1659f), vec2<u32>(82718u, 1u), vec3<bool>(false, true, true), Struct_1(955f, vec2<u32>(11679u, 90748u), vec2<bool>(true, true), vec2<f32>(882f, 728f))), Struct_2(Struct_1(1172f, vec2<u32>(0u, 0u), vec2<bool>(false, true), vec2<f32>(-641f, -352f)), vec4<f32>(129f, 2000f, -270f, 567f), vec2<u32>(29302u, 5506u), vec3<bool>(false, false, false), Struct_1(335f, vec2<u32>(1049u, 1302u), vec2<bool>(true, false), vec2<f32>(-227f, 862f))), Struct_2(Struct_1(-812f, vec2<u32>(0u, 80239u), vec2<bool>(true, false), vec2<f32>(-600f, -856f)), vec4<f32>(-122f, -1613f, -355f, 318f), vec2<u32>(6040u, 21458u), vec3<bool>(false, false, true), Struct_1(-1757f, vec2<u32>(11586u, 41542u), vec2<bool>(true, true), vec2<f32>(-333f, -1000f))), Struct_2(Struct_1(941f, vec2<u32>(0u, 30723u), vec2<bool>(false, true), vec2<f32>(145f, -350f)), vec4<f32>(-604f, 379f, -225f, -478f), vec2<u32>(3170u, 10153u), vec3<bool>(true, false, false), Struct_1(1511f, vec2<u32>(37481u, 14197u), vec2<bool>(true, true), vec2<f32>(-138f, 1282f))), Struct_2(Struct_1(-688f, vec2<u32>(38250u, 1u), vec2<bool>(true, true), vec2<f32>(189f, -1052f)), vec4<f32>(640f, 876f, -386f, -787f), vec2<u32>(4294967295u, 28699u), vec3<bool>(true, true, false), Struct_1(1553f, vec2<u32>(2979u, 69431u), vec2<bool>(true, true), vec2<f32>(-411f, 427f))), Struct_2(Struct_1(117f, vec2<u32>(66187u, 4294967295u), vec2<bool>(false, false), vec2<f32>(-533f, 152f)), vec4<f32>(-1219f, 379f, 1097f, -919f), vec2<u32>(4294967295u, 13962u), vec3<bool>(false, false, false), Struct_1(1360f, vec2<u32>(12503u, 4294967295u), vec2<bool>(true, false), vec2<f32>(-1136f, -121f))), Struct_2(Struct_1(-472f, vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), vec2<f32>(631f, 248f)), vec4<f32>(-800f, -1263f, 801f, -631f), vec2<u32>(42150u, 7632u), vec3<bool>(true, false, true), Struct_1(-1092f, vec2<u32>(10120u, 64738u), vec2<bool>(false, true), vec2<f32>(-250f, -667f))), Struct_2(Struct_1(-827f, vec2<u32>(57846u, 6821u), vec2<bool>(false, false), vec2<f32>(766f, -993f)), vec4<f32>(-764f, -1000f, -119f, -255f), vec2<u32>(7315u, 0u), vec3<bool>(false, true, false), Struct_1(-445f, vec2<u32>(40909u, 0u), vec2<bool>(true, false), vec2<f32>(1120f, -889f))), Struct_2(Struct_1(306f, vec2<u32>(4294967295u, 34569u), vec2<bool>(true, false), vec2<f32>(884f, 1546f)), vec4<f32>(1031f, -664f, -1000f, -1863f), vec2<u32>(29771u, 4294967295u), vec3<bool>(true, false, true), Struct_1(-441f, vec2<u32>(1u, 25908u), vec2<bool>(false, false), vec2<f32>(-1248f, -419f))), Struct_2(Struct_1(1000f, vec2<u32>(4231u, 85315u), vec2<bool>(true, false), vec2<f32>(232f, -840f)), vec4<f32>(-194f, -925f, 1129f, 2035f), vec2<u32>(4294967295u, 12929u), vec3<bool>(false, true, false), Struct_1(-788f, vec2<u32>(33180u, 0u), vec2<bool>(true, false), vec2<f32>(510f, 418f))), Struct_2(Struct_1(-186f, vec2<u32>(12901u, 4294967295u), vec2<bool>(true, true), vec2<f32>(1235f, -1223f)), vec4<f32>(-185f, 1770f, -382f, 766f), vec2<u32>(47019u, 9396u), vec3<bool>(true, false, false), Struct_1(-1000f, vec2<u32>(1u, 3559u), vec2<bool>(false, false), vec2<f32>(765f, 478f))), Struct_2(Struct_1(1000f, vec2<u32>(0u, 1u), vec2<bool>(false, false), vec2<f32>(735f, -1454f)), vec4<f32>(-1153f, 786f, -1662f, 616f), vec2<u32>(22639u, 35753u), vec3<bool>(true, true, false), Struct_1(644f, vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), vec2<f32>(-308f, -233f))), Struct_2(Struct_1(-1010f, vec2<u32>(4294967295u, 21047u), vec2<bool>(false, true), vec2<f32>(-1562f, -228f)), vec4<f32>(-155f, 375f, -1376f, 1459f), vec2<u32>(18113u, 1u), vec3<bool>(true, false, true), Struct_1(-204f, vec2<u32>(4018u, 93986u), vec2<bool>(true, true), vec2<f32>(496f, 685f))), Struct_2(Struct_1(-618f, vec2<u32>(4133u, 31553u), vec2<bool>(true, true), vec2<f32>(518f, -940f)), vec4<f32>(-606f, 1000f, -369f, 250f), vec2<u32>(65469u, 4294967295u), vec3<bool>(true, true, false), Struct_1(-1289f, vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec2<f32>(1000f, -187f))), Struct_2(Struct_1(785f, vec2<u32>(37744u, 0u), vec2<bool>(true, false), vec2<f32>(-1772f, 1403f)), vec4<f32>(2000f, -307f, -1179f, 1402f), vec2<u32>(42909u, 15264u), vec3<bool>(false, true, false), Struct_1(1168f, vec2<u32>(24260u, 0u), vec2<bool>(false, false), vec2<f32>(-1151f, -2184f))), Struct_2(Struct_1(490f, vec2<u32>(12207u, 4294967295u), vec2<bool>(false, true), vec2<f32>(-209f, 125f)), vec4<f32>(1000f, -326f, -360f, 1913f), vec2<u32>(73763u, 28604u), vec3<bool>(true, true, true), Struct_1(-1183f, vec2<u32>(79956u, 4294967295u), vec2<bool>(false, false), vec2<f32>(372f, -239f))), Struct_2(Struct_1(-1865f, vec2<u32>(47282u, 0u), vec2<bool>(false, false), vec2<f32>(223f, 974f)), vec4<f32>(976f, 1435f, 2015f, 1022f), vec2<u32>(1u, 4294967295u), vec3<bool>(true, true, false), Struct_1(426f, vec2<u32>(40172u, 1u), vec2<bool>(false, true), vec2<f32>(157f, -1216f))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = vec4<i32>((_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, arg_0.b, u_input.e), ~vec3<i32>(arg_0.b, 2147483647i, 0i)) | (arg_0.b ^ ~u_input.e)) >> (44099u % 32u), _wgslsmith_dot_vec2_i32(global0.xx, ~_wgslsmith_sub_vec2_i32(min(vec2<i32>(9221i, arg_0.b), vec2<i32>(u_input.a, 45229i)), min(vec2<i32>(-37289i, global0.x), vec2<i32>(global0.x, u_input.e)))), _wgslsmith_dot_vec3_i32(-min(~vec3<i32>(1i, -2147483647i, arg_0.b), vec3<i32>(u_input.e, -133i, arg_0.b) >> (u_input.c % vec3<u32>(32u))), firstTrailingBit(-vec3<i32>(-17698i, 37503i, arg_0.b))), i32(-1i) * -select(_wgslsmith_dot_vec3_i32(vec3<i32>(-9033i, 1i, arg_0.b), vec3<i32>(14855i, arg_0.b, global0.x)), -arg_0.b, -4806i >= arg_0.b));
    var_0 = select(-vec4<i32>(-1i, _wgslsmith_clamp_i32(arg_0.b, _wgslsmith_div_i32(u_input.a, -17816i), _wgslsmith_dot_vec2_i32(var_0.ww, var_0.wx)), 29286i, 1i), -(~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.e, u_input.e, 0i, 2219i), vec4<i32>(global0.x, -33122i, 56601i, u_input.a) | vec4<i32>(1i, 2147483647i, -4112i, var_0.x))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-973f, arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -402f), arg_0.c, -266f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1221f, arg_1.d.x, -869f, -530f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -1000f, 775f, -1000f) * vec4<f32>(arg_0.c, -471f, -160f, 500f)))))), !(!(!select(vec4<bool>(true, true, false, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_0.d.x, false, arg_0.d.x), vec4<bool>(false, arg_0.d.x, true, arg_0.d.x))))));
    let var_2 = true;
    let var_3 = vec4<bool>(false, arg_0.d.x, all(!vec4<bool>(all(vec4<bool>(true, false, false, false)), true, arg_1.a < arg_1.a, true)), arg_1.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a)))));
    return vec3<i32>(global0.x, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(_wgslsmith_clamp_vec2_i32(var_0.zz, vec2<i32>(2147483647i, -13380i), vec2<i32>(global0.x, 16628i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-4598i, u_input.a), global0.zx), select(arg_0.d.zz, arg_1.c, false)), max(global0.xy & var_0.yx, vec2<i32>(36223i, u_input.a) << (arg_1.b % vec2<u32>(32u)))), vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(~global0.yy, vec2<i32>(arg_0.b, global0.x)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> u32 {
    var var_0 = reverseBits(vec3<i32>(_wgslsmith_mult_i32(u_input.a, -18325i), 1i, global0.x));
    global3 = array<Struct_2, 32>();
    global1 = ~u_input.d.x;
    var var_1 = vec4<i32>(countOneBits(_wgslsmith_div_i32(min(_wgslsmith_mult_i32(-20085i, var_0.x), reverseBits(global0.x)), 16005i)), u_input.e, ~u_input.a << (u_input.b % 32u), _wgslsmith_mod_i32(5181i, ~(-41672i) ^ min(max(u_input.e, var_0.x), global0.x & var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(638f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f * 1646f)))), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(282f * 332f))))));
    return 0u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(func_3(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_0.x) | ~firstTrailingBit(0u >> (arg_0.x % 32u))), 32u)];
    let var_1 = Struct_3(false, countOneBits(-32900i ^ _wgslsmith_clamp_i32(-19933i, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -72085i), global0.yy))), _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), select(var_0.d, var_0.d, all(!select(vec2<bool>(var_0.d.x, var_0.a.c.x), var_0.a.c, true))));
    var var_2 = all(vec4<bool>(!select(true, -199f >= var_0.b.x, any(vec2<bool>(false, var_1.a))), all(select(select(vec2<bool>(false, false), var_1.d.yy, vec2<bool>(var_1.a, var_0.e.c.x)), select(vec2<bool>(var_0.e.c.x, var_1.a), var_0.a.c, false), var_1.d.x)), any(var_0.d), var_0.e.c.x));
    let var_3 = min(min(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 29626i), vec3<i32>(u_input.a, -24296i, global0.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.e, 2147483647i), vec3<i32>(0i, u_input.a, 39499i)), ~vec3<i32>(u_input.e, var_1.b, global0.x))), _wgslsmith_sub_i32(i32(-1i) * -global0.x, _wgslsmith_dot_vec2_i32(-global0.yy, vec2<i32>(5837i, u_input.a)))), ~(-_wgslsmith_mult_i32(u_input.e, u_input.e)));
    let var_4 = Struct_3(true, _wgslsmith_mult_i32(var_3, countOneBits(-2147483647i)), var_1.c, vec3<bool>(any(var_0.a.c), select(true, !(true | var_1.a), true), true));
    return var_4;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = arg_3;
    let var_1 = arg_1.d.x & arg_0;
    global2 = all(arg_1.d);
    global1 = 1u;
    global2 = arg_1.d.x;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_3(true | ((35030u | u_input.c.x) == 30743u), -75906i, 1000f, vec3<bool>(false, true, true)), Struct_1(-1000f, u_input.d.xw, !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-1765f)), _wgslsmith_f_op_f32(-1155f * 1000f)))));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.b, u_input.b)), ~u_input.d.x))), 32u)];
    let var_1 = !(_wgslsmith_f_op_f32(func_4(var_0.e.c.x || false, func_2(vec2<u32>(u_input.c.x, var_0.a.b.x)), !(var_0.e.c.x | var_0.d.x), -14723i)) != 118f);
    var var_2 = var_0.b.xyz;
    global3 = array<Struct_2, 32>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.e.d.x), _wgslsmith_mod_vec2_u32(~var_0.c, ~vec2<u32>(u_input.b, u_input.b)), func_2(~max(vec2<u32>(var_0.e.b.x, 4294967295u), vec2<u32>(var_0.c.x, 19618u))).d.xx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx * vec2<f32>(988f, var_2.x))), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.d)), !(!var_0.a.c)))), var_0.b, ~(~(~u_input.d.xz)) << (u_input.d.yx % vec2<u32>(32u)), !select(vec3<bool>(false, var_0.d.x, var_0.e.c.x), !vec3<bool>(true, var_0.e.c.x, var_1), vec3<bool>(true, u_input.a == global0.x, true)), Struct_1(-181f, vec2<u32>(var_0.e.b.x, var_0.e.b.x), func_2(u_input.d.zz).d.xy, var_2.xx));
    let var_4 = func_2(select(~select(var_3.a.b, vec2<u32>(var_3.c.x, 44507u), false), min(u_input.d.yw, _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, var_0.a.b.x), var_0.e.b << (u_input.c.zx % vec2<u32>(32u)), vec2<u32>(var_3.c.x, 0u) | var_0.e.b)), !select(var_3.d.zz, select(vec2<bool>(true, true), vec2<bool>(var_1, true), var_0.d.yz), func_2(var_3.a.b).a)));
    global1 = ~var_0.e.b.x & u_input.d.x;
    global2 = var_0.a.c.x | true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(_wgslsmith_add_u32(var_3.e.b.x, 73814u), max(0u, 53055u))), (abs(u_input.d) ^ u_input.d) ^ u_input.d);
}

