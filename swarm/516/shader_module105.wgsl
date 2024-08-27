struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-1231f, -2153f, 978f, 315f), true, false)), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(731f, 1149f, 1000f, -1178f), true, true), 768f, vec2<f32>(-398f, -1863f), 4294967295u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-1001f, -1275f, -311f, 595f), false, true)), Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(-1000f, 323f, 255f, 347f), true, false), 172f, vec2<f32>(-344f, 1000f), 1u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-466f, -1156f, -634f, 731f), true, true)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-2372f, -1000f, -132f, 1000f), false, true), -1167f, vec2<f32>(232f, 1000f), 20181u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-760f, -713f, 1000f, -893f), false, false)), Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(321f, -402f, -638f, -1568f), true, true), -320f, vec2<f32>(-185f, -1483f), 0u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(779f, 567f, -179f, 478f), true, true)), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1762f, 1966f, -932f, -1536f), true, true), 1515f, vec2<f32>(110f, 1000f), 1u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(712f, -1576f, -1491f, -148f), true, false)), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(376f, -1736f, 1650f, -1317f), false, true), -128f, vec2<f32>(-137f, -1667f), 47355u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(760f, 1279f, 629f, 309f), true, false)), Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1349f, -808f, -224f, 542f), false, true), 773f, vec2<f32>(928f, -264f), 23677u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-985f, -445f, 371f, 254f), true, true)), Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-1174f, 1352f, -935f, -230f), true, true), -1351f, vec2<f32>(775f, -971f), 36102u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(294f, 1505f, 1057f, 1034f), true, true)), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(1239f, -1233f, 445f, -816f), true, true), -717f, vec2<f32>(-1232f, -2978f), 18335u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-344f, 1000f, 787f, -268f), false, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(217f, 744f, -246f, 441f), false, true), -1144f, vec2<f32>(-1446f, -1144f), 0u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-1927f, 115f, -958f, -531f), true, true)), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(219f, -1122f, -1996f, 151f), false, true), 2092f, vec2<f32>(1784f, -640f), 9703u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(263f, -1000f, 635f, 632f), true, true)), Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-667f, -1122f, 1239f, -361f), false, true), 1768f, vec2<f32>(1000f, -796f), 27871u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<f32>(-299f, 267f, -1309f, -212f), false, true)), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-1000f, -124f, 126f, 987f), false, true), -387f, vec2<f32>(573f, -479f), 9006u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-2291f, 1792f, -695f, 321f), false, true)), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-1156f, -927f, -390f, -965f), true, false), -892f, vec2<f32>(-1253f, 375f), 10592u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(562f, -681f, 227f, -260f), true, false)), Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(1000f, 1795f, 1013f, 459f), false, true), -261f, vec2<f32>(-1667f, 688f), 41552u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-415f, 190f, 3133f, -2124f), true, true)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(-615f, -242f, -899f, 1314f), true, true), -321f, vec2<f32>(-977f, 1372f), 4294967295u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-194f, -569f, 1212f, 1028f), true, true)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-583f, 585f, 761f, -409f), true, true), -1007f, vec2<f32>(-358f, -414f), 68880u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-2771f, -1074f, 100f, 1000f), false, true)), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-823f, -1133f, 1000f, 663f), false, true), 357f, vec2<f32>(-1000f, 429f), 7813u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(254f, 1035f, 1455f, -826f), false, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(560f, -460f, -572f, -1564f), false, true), -146f, vec2<f32>(-1000f, 2131f), 55386u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(1646f, 2065f, 639f, -465f), false, false)), Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(-1542f, -614f, 959f, -191f), false, true), -1455f, vec2<f32>(786f, 1760f), 1u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(1169f, 136f, 164f, 1124f), true, false)), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(159f, 1537f, -275f, 2197f), true, true), -269f, vec2<f32>(419f, -387f), 4294967295u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec4<f32>(1000f, 1698f, -1178f, 175f), false, true)), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-2283f, -1131f, -886f, 176f), true, true), -1790f, vec2<f32>(-590f, 1448f), 14072u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(522f, -503f, -1489f, -385f), false, false)), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(980f, 675f, 1000f, -1322f), false, true), 692f, vec2<f32>(759f, 346f), 27183u), Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(2819f, 1011f, -279f, 546f), false, true)), Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(486f, -277f, -600f, 1431f), true, true), -102f, vec2<f32>(1313f, 389f), 1u), Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-128f, -744f, -275f, -934f), true, false)), Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1963f, 1000f, -1106f, -606f), true, false), 921f, vec2<f32>(-194f, -564f), 0u));

var<private> global1: vec4<u32> = vec4<u32>(0u, 44745u, 1u, 45732u);

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(1000f, -446f, 119f, 285f), true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-766f, 760f, -292f, 489f), false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-364f, 292f, 548f, 799f), true, true)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-1291f, 891f, 737f, 989f), true, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-1483f, 785f, 489f, -673f), true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<f32>(2582f, 1000f, -1148f, -118f), false, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(148f, 217f, -924f, -1000f), false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(680f, 180f, 1000f, -680f), false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(971f, -1697f, -1491f, 905f), false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(-1002f, -1004f, 727f, -569f), false, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<f32>(-253f, 102f, -1211f, -232f), true, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-270f, -347f, 2103f, 351f), true, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(-1507f, -1329f, -1859f, 112f), true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1304f, -175f, -305f, -957f), true, true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(-451f, 1298f, 150f, -1000f), false, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(271f, 940f, -287f, -1000f), false, true)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(1305f, -1001f, -1757f, 1694f), false, false)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(185f, 1017f, 342f, -346f), true, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(309f, 261f, 610f, 120f), true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(1152f, 1134f, -1000f, 207f), true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(-530f, 175f, -978f, -1227f), true, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-177f, 477f, 929f, 2173f), true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-1000f, -1000f, 1169f, -694f), true, false)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-567f, 2101f, 660f, -1132f), false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-772f, -1764f, 1325f, -544f), true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(1964f, -426f, -445f, 1354f), true, true)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<f32>(-193f, -651f, -280f, -1218f), false, false)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(360f, -138f, -996f, -1271f), false, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec3<i32>) -> f32 {
    global2 = array<Struct_2, 28>();
    var var_0 = ~firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_3.x) | -arg_3, countOneBits(~arg_3)));
    global0 = array<Struct_4, 25>();
    var var_1 = !(!arg_1.b.a.xw);
    let var_2 = Struct_2(Struct_1(!(!arg_1.a.a.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1406f + arg_1.a.a.b.x)), -1000f, _wgslsmith_f_op_f32(-1010f + _wgslsmith_div_f32(1177f, 527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f - -2853f))), _wgslsmith_f_op_f32(trunc(-686f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-813f, arg_2.x)), arg_2.x)), true));
    return 865f;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-792f, arg_0.a.b.x, arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(244f, 1301f, -1130f), arg_0.a.b.xzx)))))) - arg_0.a.b.zyw);
    global2 = array<Struct_2, 28>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-318f)), _wgslsmith_f_op_f32(func_3(~vec2<i32>(0i, -39865i), Struct_4(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], Struct_1(arg_0.a.a, arg_0.a.b, true, arg_0.a.d), arg_1, var_0.xz, 6604u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-623f, -344f), vec2<f32>(-1000f, arg_0.a.b.x), vec2<bool>(false, arg_0.a.c))), -vec3<i32>(-1i, -1i, 6548i))))) - arg_1)));
    let var_2 = Struct_4(Struct_2(Struct_1(!vec4<bool>(arg_0.a.c, true, arg_0.a.c, arg_0.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, -1382f, -835f, arg_1))), arg_0.a.c, !(!arg_0.a.c))), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -350f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(157f, -209f) - vec2<f32>(arg_1, -733f))))), var_0.zy)), global1.x);
    let var_3 = u_input.b;
    return vec2<i32>(_wgslsmith_mod_i32(-firstTrailingBit(31148i), abs(1i)), 2147483647i);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    global2 = array<Struct_2, 28>();
    var var_0 = select(select(vec3<bool>(true, !any(vec2<bool>(false, false)), any(vec2<bool>(false, false))), vec3<bool>(true, any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, true)) && all(vec4<bool>(false, false, true, false))), arg_1.x <= abs(abs(29092i))), vec3<bool>(!(!(arg_1.x == -2147483647i)), true, !all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), all(vec4<bool>(all(vec3<bool>(false, true, true)), true, true, false)));
    let var_1 = _wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-597f)))), _wgslsmith_div_f32(-453f, -520f))));
    var var_2 = Struct_2(Struct_1(vec4<bool>(true, var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(105f)), _wgslsmith_f_op_f32(max(1121f, -1257f)), _wgslsmith_f_op_f32(trunc(var_1)), -1681f) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, var_1, 657f)))), (u_input.b.x < arg_2) || (func_2(global2[_wgslsmith_index_u32(1896u, 28u)], -346f).x < _wgslsmith_dot_vec3_i32(vec3<i32>(13538i, 2147483647i, arg_1.x), vec3<i32>(-1i, arg_1.x, arg_1.x))), var_0.x));
    var var_3 = arg_1.x;
    return Struct_1(vec4<bool>(select(var_0.x | var_2.a.c, false, true), var_0.x, true, any(var_2.a.a.zxw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-239f, _wgslsmith_f_op_f32(min(-1071f, var_1)), _wgslsmith_f_op_f32(1483f * var_2.a.b.x), 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.b), var_2.a.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-187f, 662f, var_2.a.b.x, var_1) + _wgslsmith_div_vec4_f32(var_2.a.b, var_2.a.b)) - _wgslsmith_f_op_vec4_f32(-var_2.a.b))), ~_wgslsmith_div_u32(~arg_2, ~arg_2) != global1.x, var_2.a.a.x);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-674f - 587f);
    global2 = array<Struct_2, 28>();
    let var_1 = func_4(select(countOneBits(u_input.b), ~vec4<u32>(~global1.x, ~u_input.b.x, 23009u & u_input.c, ~4294967295u), true), vec4<i32>(select(min(-2147483647i, -2147483647i), -2147483647i, true), -2147483647i, ~firstLeadingBit(45035i >> (1u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(7985i, 31838i)), countOneBits(vec2<i32>(0i, 41002i))), func_2(global2[_wgslsmith_index_u32(u_input.c, 28u)], _wgslsmith_f_op_f32(select(var_0, var_0, true))))), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(18841u, 41062u, 54246u, 77730u) & u_input.b, ~vec4<u32>(global1.x, global1.x, global1.x, u_input.a.x))));
    var var_2 = reverseBits(~(~max(firstLeadingBit(-13565i), 37946i >> (u_input.a.x % 32u))));
    let var_3 = 66945i;
    return Struct_4(Struct_2(var_1), Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), -550f, _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x)), false, any(var_1.a)), _wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x)), var_1.b.xz, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), true, true);
    var var_1 = var_0.a;
    let var_2 = vec2<i32>(_wgslsmith_add_i32(-34202i, 1i), 6025i);
    var var_3 = _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_sub_i32(var_2.x, max(var_2.x, 50460i)), var_2.x);
    var var_4 = func_1();
    var_1 = vec4<bool>(!(!all(vec2<bool>(true, true))), false, true, any(vec2<bool>(any(vec3<bool>(true, var_0.a.x, true)), all(var_0.a.zzw))));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d.x, 906f)) * var_0.b.yz))) - _wgslsmith_f_op_vec2_f32(select(var_4.a.a.b.xz, func_4(min(abs(vec4<u32>(1u, 4294967295u, global1.x, global1.x)), vec4<u32>(global1.x, 16343u, 6942u, 81427u)), vec4<i32>(var_2.x, -5045i, -18275i, 1i) ^ ~vec4<i32>(0i, var_2.x, var_2.x, var_2.x), _wgslsmith_mult_u32(abs(var_4.e), 0u | u_input.a.x)).b.zw, vec2<bool>(true, true))));
    var var_6 = -firstLeadingBit(func_2(func_1().a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.x) - -1397f)).x);
    var_0 = func_1().a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_add_i32(-1422i, _wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x)), func_2(Struct_2(var_4.a.a), -1803f).x) << (_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(~u_input.b.xyx, select(global1.zyy, u_input.b.yzy, var_4.b.c))) % 32u), vec4<i32>(abs(_wgslsmith_sub_i32(1i | var_2.x, -var_2.x)), -(0i ^ func_2(global2[_wgslsmith_index_u32(var_4.e, 28u)], var_5.x).x), var_2.x, var_2.x), -501f);
}

