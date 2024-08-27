struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec2<u32>(4294967295u, 42674u), Struct_3(2147483647i, vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(559f, -1063f, 301f, -1218f)), Struct_2(vec4<f32>(-1318f, -195f, -1000f, 1671f)), 236f), Struct_2(vec4<f32>(1526f, -1000f, -1265f, -1085f))), Struct_4(vec2<u32>(38658u, 4294967295u), Struct_3(0i, vec4<bool>(false, true, true, true), Struct_2(vec4<f32>(-828f, -675f, -1468f, 702f)), Struct_2(vec4<f32>(1026f, 692f, -1301f, 952f)), -1000f), Struct_2(vec4<f32>(-215f, 1300f, -1283f, 467f))), Struct_4(vec2<u32>(7612u, 4294967295u), Struct_3(2147483647i, vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(-3382f, -1132f, -562f, 2072f)), Struct_2(vec4<f32>(-1161f, 1000f, -431f, -1228f)), -2250f), Struct_2(vec4<f32>(-118f, -757f, 1000f, -390f))), Struct_4(vec2<u32>(1u, 4294967295u), Struct_3(0i, vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(693f, -474f, -364f, -746f)), Struct_2(vec4<f32>(802f, 324f, -440f, -343f)), 383f), Struct_2(vec4<f32>(-1354f, -1000f, 447f, 1149f))), Struct_4(vec2<u32>(6474u, 4294967295u), Struct_3(i32(-2147483648), vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(-1000f, -505f, -1000f, -505f)), Struct_2(vec4<f32>(954f, 351f, 422f, -447f)), -570f), Struct_2(vec4<f32>(-1791f, -1517f, 1000f, -1260f))), Struct_4(vec2<u32>(4294967295u, 0u), Struct_3(i32(-2147483648), vec4<bool>(false, true, true, false), Struct_2(vec4<f32>(-1765f, 831f, -449f, 216f)), Struct_2(vec4<f32>(1199f, -1165f, -145f, 661f)), -547f), Struct_2(vec4<f32>(1000f, -420f, -2037f, -355f))), Struct_4(vec2<u32>(32728u, 26255u), Struct_3(-39349i, vec4<bool>(false, false, false, true), Struct_2(vec4<f32>(645f, -1221f, -327f, -500f)), Struct_2(vec4<f32>(980f, -932f, 1000f, -315f)), -207f), Struct_2(vec4<f32>(283f, 102f, 373f, -179f))), Struct_4(vec2<u32>(37203u, 9704u), Struct_3(-1i, vec4<bool>(false, false, false, false), Struct_2(vec4<f32>(-143f, 1049f, 1424f, 865f)), Struct_2(vec4<f32>(-718f, -264f, 1048f, 1013f)), 365f), Struct_2(vec4<f32>(-150f, 350f, -928f, 354f))), Struct_4(vec2<u32>(1u, 4294967295u), Struct_3(2147483647i, vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(1778f, 713f, -214f, -1609f)), Struct_2(vec4<f32>(-1000f, 433f, -652f, -323f)), -234f), Struct_2(vec4<f32>(446f, -1261f, -1086f, -561f))), Struct_4(vec2<u32>(56363u, 33694u), Struct_3(42800i, vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(-1582f, 617f, 1910f, 218f)), Struct_2(vec4<f32>(1544f, -886f, 530f, -580f)), 919f), Struct_2(vec4<f32>(-165f, -1000f, 159f, 702f))), Struct_4(vec2<u32>(4294967295u, 0u), Struct_3(0i, vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(781f, -1117f, 1340f, 1148f)), Struct_2(vec4<f32>(-1517f, -807f, 1000f, -316f)), 201f), Struct_2(vec4<f32>(-377f, -1000f, -507f, -1154f))), Struct_4(vec2<u32>(63027u, 4294967295u), Struct_3(22939i, vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(-372f, 1354f, 1309f, -1254f)), Struct_2(vec4<f32>(-403f, -1179f, 1826f, -483f)), -218f), Struct_2(vec4<f32>(854f, -1916f, -970f, 169f))), Struct_4(vec2<u32>(1u, 59395u), Struct_3(i32(-2147483648), vec4<bool>(false, true, false, false), Struct_2(vec4<f32>(-389f, 781f, 195f, 625f)), Struct_2(vec4<f32>(-1453f, -489f, 1030f, 1005f)), -1618f), Struct_2(vec4<f32>(1059f, 139f, 837f, -833f))), Struct_4(vec2<u32>(1u, 1u), Struct_3(-19800i, vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(341f, -982f, 502f, 502f)), Struct_2(vec4<f32>(169f, 840f, 388f, -213f)), 906f), Struct_2(vec4<f32>(-893f, -372f, -660f, -600f))), Struct_4(vec2<u32>(21317u, 57011u), Struct_3(-1i, vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(777f, 574f, 1296f, 1329f)), Struct_2(vec4<f32>(-362f, -202f, -520f, -1000f)), -594f), Struct_2(vec4<f32>(-1035f, -676f, 965f, 1000f))), Struct_4(vec2<u32>(0u, 4294967295u), Struct_3(2147483647i, vec4<bool>(true, false, false, false), Struct_2(vec4<f32>(825f, -961f, -960f, -443f)), Struct_2(vec4<f32>(951f, 112f, 1250f, 1168f)), -1576f), Struct_2(vec4<f32>(-1345f, 1047f, -128f, 962f))), Struct_4(vec2<u32>(0u, 1u), Struct_3(1i, vec4<bool>(false, false, false, true), Struct_2(vec4<f32>(438f, 344f, 477f, -155f)), Struct_2(vec4<f32>(-952f, 331f, 1306f, -214f)), -578f), Struct_2(vec4<f32>(1986f, -1000f, -2311f, 1172f))), Struct_4(vec2<u32>(4294967295u, 62737u), Struct_3(-2774i, vec4<bool>(false, false, true, false), Struct_2(vec4<f32>(591f, 1193f, -133f, -1552f)), Struct_2(vec4<f32>(1211f, -179f, -1808f, -499f)), -640f), Struct_2(vec4<f32>(-1147f, -812f, -1058f, 2056f))), Struct_4(vec2<u32>(1u, 98038u), Struct_3(2147483647i, vec4<bool>(false, false, true, true), Struct_2(vec4<f32>(1009f, 293f, -674f, 1401f)), Struct_2(vec4<f32>(1617f, 641f, 1485f, 403f)), -1106f), Struct_2(vec4<f32>(-630f, -1916f, -308f, -559f))), Struct_4(vec2<u32>(1u, 0u), Struct_3(18472i, vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(1140f, 1305f, -2095f, 956f)), Struct_2(vec4<f32>(1000f, -277f, -335f, -849f)), -405f), Struct_2(vec4<f32>(1401f, -903f, 103f, -1964f))), Struct_4(vec2<u32>(0u, 0u), Struct_3(1i, vec4<bool>(true, false, false, true), Struct_2(vec4<f32>(1000f, -366f, -651f, -628f)), Struct_2(vec4<f32>(1718f, -1226f, 1068f, -578f)), 946f), Struct_2(vec4<f32>(-1026f, 653f, 171f, 2122f))), Struct_4(vec2<u32>(46764u, 39773u), Struct_3(1i, vec4<bool>(true, true, false, true), Struct_2(vec4<f32>(-1784f, -1706f, -1000f, 700f)), Struct_2(vec4<f32>(1235f, 1000f, 1083f, 1677f)), -606f), Struct_2(vec4<f32>(1018f, -1966f, 118f, 1162f))), Struct_4(vec2<u32>(1u, 0u), Struct_3(43636i, vec4<bool>(false, true, false, false), Struct_2(vec4<f32>(-1000f, -1505f, 1433f, 579f)), Struct_2(vec4<f32>(-877f, -179f, -623f, -972f)), 1682f), Struct_2(vec4<f32>(-2608f, 221f, -722f, -1465f))), Struct_4(vec2<u32>(80121u, 0u), Struct_3(33518i, vec4<bool>(true, false, true, true), Struct_2(vec4<f32>(752f, 559f, 1198f, 343f)), Struct_2(vec4<f32>(1000f, 119f, -1000f, -1632f)), 1008f), Struct_2(vec4<f32>(-722f, 1681f, -318f, 402f))), Struct_4(vec2<u32>(4294967295u, 4294967295u), Struct_3(-66033i, vec4<bool>(false, false, false, true), Struct_2(vec4<f32>(-583f, -1636f, -352f, 422f)), Struct_2(vec4<f32>(993f, 961f, 269f, -1968f)), 248f), Struct_2(vec4<f32>(1000f, -1416f, -567f, 559f))), Struct_4(vec2<u32>(1u, 1u), Struct_3(1i, vec4<bool>(true, false, false, true), Struct_2(vec4<f32>(1000f, 727f, -665f, -976f)), Struct_2(vec4<f32>(581f, -160f, 627f, -865f)), 1080f), Struct_2(vec4<f32>(604f, -346f, -734f, -517f))), Struct_4(vec2<u32>(1145u, 67746u), Struct_3(-18281i, vec4<bool>(false, false, false, false), Struct_2(vec4<f32>(-781f, 1946f, -751f, -840f)), Struct_2(vec4<f32>(679f, 662f, 869f, -1398f)), 1000f), Struct_2(vec4<f32>(419f, -863f, -103f, -406f))), Struct_4(vec2<u32>(4294967295u, 12047u), Struct_3(0i, vec4<bool>(true, false, true, false), Struct_2(vec4<f32>(905f, -691f, -243f, 760f)), Struct_2(vec4<f32>(-621f, 1000f, -334f, -428f)), -276f), Struct_2(vec4<f32>(-1113f, -782f, -342f, -1470f))), Struct_4(vec2<u32>(0u, 4294967295u), Struct_3(891i, vec4<bool>(true, false, false, true), Struct_2(vec4<f32>(258f, 1000f, 918f, -1808f)), Struct_2(vec4<f32>(-227f, -911f, -330f, 1000f)), -417f), Struct_2(vec4<f32>(-296f, -1434f, 1000f, -1000f))), Struct_4(vec2<u32>(1u, 1u), Struct_3(i32(-2147483648), vec4<bool>(true, true, true, false), Struct_2(vec4<f32>(-1000f, 815f, 462f, -204f)), Struct_2(vec4<f32>(-196f, -1009f, -2910f, 3109f)), 1665f), Struct_2(vec4<f32>(771f, 956f, -1288f, 1050f))), Struct_4(vec2<u32>(14557u, 39480u), Struct_3(1i, vec4<bool>(false, false, false, false), Struct_2(vec4<f32>(455f, -895f, -275f, -250f)), Struct_2(vec4<f32>(1012f, 304f, 176f, 280f)), -823f), Struct_2(vec4<f32>(1000f, -650f, -883f, 1571f))), Struct_4(vec2<u32>(67009u, 36631u), Struct_3(-1i, vec4<bool>(false, true, false, false), Struct_2(vec4<f32>(554f, 798f, -328f, -657f)), Struct_2(vec4<f32>(-155f, -1126f, 725f, 442f)), 290f), Struct_2(vec4<f32>(-722f, 386f, 760f, -1558f))));

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = global2.b;
    var_0 = _wgslsmith_f_op_vec3_f32(select(global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, 1401f), global2.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(-1446f, 1265f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, var_0.x, global2.b.x))))), !(-6945i > global0[_wgslsmith_index_u32(~0u, 30u)])));
    var_0 = global2.b;
    let var_1 = ~(~firstTrailingBit(vec4<u32>(102379u << (u_input.c % 32u), ~1u, u_input.d.x, ~0u)));
    global1 = array<Struct_4, 32>();
    return all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true || all(vec4<bool>(false, false, true, false))), vec3<bool>(all(vec3<bool>(true, false, false)) || false, false, false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> bool {
    let var_0 = Struct_5(vec4<u32>(~1u, ~(u_input.c | 27429u), _wgslsmith_clamp_u32(~4294967295u, u_input.c, u_input.a.x), u_input.a.x | u_input.d.x) & ~(~vec4<u32>(u_input.c, 0u, u_input.a.x, 0u) & (vec4<u32>(0u, 0u, u_input.c, 0u) >> (vec4<u32>(11619u, 44412u, u_input.a.x, 1u) % vec4<u32>(32u)))), 889f, any(select(arg_0.yyy, select(!vec3<bool>(true, true, arg_0.x), arg_0.yzz, true), any(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))));
    global1 = array<Struct_4, 32>();
    var var_1 = Struct_5(~(~var_0.a), 1038f, false);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.b.x))) - -511f), 1958f, global2.a.x, -958f) + vec4<f32>(1023f, -868f, 317f, -175f));
    var var_3 = var_2;
    return select(var_0.c, false, var_1.c);
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<i32, 30>();
    var var_0 = Struct_5(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 1u), vec4<u32>(0u, 4294967295u, u_input.c, u_input.a.x)) | ~_wgslsmith_sub_vec4_u32(~vec4<u32>(3403u, u_input.c, 13752u, 0u), ~vec4<u32>(u_input.c, 0u, 4294967295u, 10917u)), arg_0.b.x, func_4(!vec4<bool>(u_input.a.x == u_input.d.x, func_3(), global0[_wgslsmith_index_u32(u_input.a.x, 30u)] <= u_input.e, true), reverseBits(-44261i)));
    global1 = array<Struct_4, 32>();
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -629f)))), arg_0.b.yy, all(vec3<bool>(any(vec3<bool>(var_0.c, var_0.c, false)), true, false | var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.a.x, var_0.b) - arg_0.b) + vec3<f32>(arg_0.b.x, arg_0.b.x, var_0.b)))));
    let var_1 = arg_0.a.x;
    return true;
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_5, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_5(~(arg_2.a >> (~arg_2.a % vec4<u32>(32u))), _wgslsmith_f_op_f32(global2.b.x * 357f), arg_1);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.a.wx, ~vec2<u32>(15164u, 24143u)) | 0u, u_input.a.x);
    let var_2 = 18056i;
    global1 = array<Struct_4, 32>();
    var var_3 = func_3();
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(global2.b.xx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1152f)) - var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1232f)))), _wgslsmith_f_op_vec3_f32(round(global2.b)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: f32) -> StorageBuffer {
    global2 = func_5(vec2<bool>(true, any(vec4<bool>(u_input.c >= 29239u, func_2(Struct_1(vec2<f32>(arg_0.c.a.x, 939f), vec3<f32>(-284f, 1000f, 1788f))), arg_0.b.b.x, arg_0.b.b.x))), arg_0.b.b.x, Struct_5(max(arg_1, ~vec4<u32>(arg_0.a.x, arg_0.a.x, 15149u, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(step(arg_0.c.a.x, arg_2))) + -2193f), !select(arg_0.b.b.x, arg_0.b.b.x, false | arg_0.b.b.x)), _wgslsmith_div_vec2_f32(arg_0.b.d.a.xw, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)), 222f)));
    var var_0 = arg_0.c;
    var var_1 = arg_0.b;
    var var_2 = Struct_3(_wgslsmith_mult_i32(~(-var_1.a), 16654i), vec4<bool>(false, any(!var_1.b), any(!vec2<bool>(var_1.b.x, var_1.b.x)), true), Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.a * var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1.e, 135f, 508f) - arg_0.c.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_1.d.a, var_0.a)))))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1065f, global2.b.x)) + arg_2))));
    var var_3 = var_2.b.x;
    return StorageBuffer(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, arg_1.x), _wgslsmith_dot_vec2_u32(arg_0.a, arg_1.xw) ^ _wgslsmith_mult_u32(u_input.d.x, 4294967295u))), -26014i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(485f, global2.a.x) + vec2<f32>(-237f, global2.a.x)) * _wgslsmith_f_op_vec2_f32(global2.a + global2.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + 835f) * _wgslsmith_f_op_f32(ceil(global2.a.x)))), global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, _wgslsmith_div_f32(global2.a.x, global2.a.x)))));
    global0 = array<i32, 30>();
    let var_0 = u_input.d;
    global0 = array<i32, 30>();
    global1 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(38588u, 32u)], vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~(~35184u)), _wgslsmith_clamp_u32(max(4289u, 54020u), ~var_0.x, var_0.x) >> (~0u % 32u), var_0.x, 4734u), -1000f);
}

