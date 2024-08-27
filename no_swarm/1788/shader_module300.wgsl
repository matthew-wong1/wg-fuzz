struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(vec3<f32>(-1511f, -1075f, 1851f), vec3<f32>(1018f, -197f, 1000f)), vec3<f32>(-368f, 736f, -157f), Struct_1(vec3<f32>(-1052f, 1346f, 1860f), vec3<f32>(1168f, -205f, 1665f))), Struct_4(Struct_1(vec3<f32>(886f, 118f, 511f), vec3<f32>(-1075f, 345f, -203f)), vec3<f32>(-996f, -479f, -683f), Struct_1(vec3<f32>(-1756f, 1305f, -486f), vec3<f32>(2702f, -363f, 564f))), Struct_4(Struct_1(vec3<f32>(1000f, 575f, -151f), vec3<f32>(-855f, 1557f, -103f)), vec3<f32>(-657f, -1453f, 1928f), Struct_1(vec3<f32>(-937f, -1776f, 1004f), vec3<f32>(-1027f, 919f, -386f))), Struct_4(Struct_1(vec3<f32>(257f, -2039f, -373f), vec3<f32>(1322f, -458f, -1237f)), vec3<f32>(-530f, 557f, -222f), Struct_1(vec3<f32>(-444f, -137f, -616f), vec3<f32>(1000f, -1921f, -1010f))), Struct_4(Struct_1(vec3<f32>(339f, 220f, -768f), vec3<f32>(-1000f, 101f, -1000f)), vec3<f32>(787f, -582f, 448f), Struct_1(vec3<f32>(843f, 1368f, -158f), vec3<f32>(224f, -545f, 245f))), Struct_4(Struct_1(vec3<f32>(501f, -1000f, -1167f), vec3<f32>(219f, -211f, -620f)), vec3<f32>(965f, 944f, 767f), Struct_1(vec3<f32>(172f, -1008f, 574f), vec3<f32>(1000f, -2041f, -1000f))), Struct_4(Struct_1(vec3<f32>(1088f, 545f, 824f), vec3<f32>(-560f, -1329f, -598f)), vec3<f32>(-719f, 1019f, 486f), Struct_1(vec3<f32>(-638f, -1000f, 937f), vec3<f32>(1000f, -1228f, -1682f))), Struct_4(Struct_1(vec3<f32>(-787f, 1000f, -325f), vec3<f32>(-994f, -785f, -579f)), vec3<f32>(363f, -1762f, -1678f), Struct_1(vec3<f32>(-844f, -962f, 1433f), vec3<f32>(-1391f, -798f, 820f))), Struct_4(Struct_1(vec3<f32>(2850f, 245f, -1211f), vec3<f32>(-337f, 561f, 1044f)), vec3<f32>(462f, 260f, -1114f), Struct_1(vec3<f32>(-837f, -984f, 1577f), vec3<f32>(1000f, 1343f, 1373f))), Struct_4(Struct_1(vec3<f32>(983f, -148f, -1509f), vec3<f32>(-1325f, 252f, -765f)), vec3<f32>(-1137f, -1170f, 123f), Struct_1(vec3<f32>(868f, 302f, -1000f), vec3<f32>(-1555f, -481f, 869f))), Struct_4(Struct_1(vec3<f32>(405f, -834f, -1155f), vec3<f32>(148f, 969f, -790f)), vec3<f32>(543f, 1000f, 1572f), Struct_1(vec3<f32>(-336f, 1121f, -1171f), vec3<f32>(-328f, 1397f, -165f))), Struct_4(Struct_1(vec3<f32>(-203f, -739f, 1333f), vec3<f32>(1853f, -1282f, -1277f)), vec3<f32>(-2557f, -130f, 1328f), Struct_1(vec3<f32>(-747f, -527f, 1425f), vec3<f32>(-540f, 1495f, -807f))), Struct_4(Struct_1(vec3<f32>(-153f, -1096f, -1359f), vec3<f32>(-428f, 1337f, 1794f)), vec3<f32>(-1915f, 586f, 1288f), Struct_1(vec3<f32>(1000f, -1381f, 1119f), vec3<f32>(261f, -1736f, 667f))), Struct_4(Struct_1(vec3<f32>(-586f, 431f, 1117f), vec3<f32>(-159f, 422f, 641f)), vec3<f32>(1000f, -117f, 664f), Struct_1(vec3<f32>(318f, -2042f, -111f), vec3<f32>(1009f, 744f, -1269f))), Struct_4(Struct_1(vec3<f32>(1000f, 1000f, -925f), vec3<f32>(-887f, -206f, -427f)), vec3<f32>(-1696f, 2983f, 1592f), Struct_1(vec3<f32>(506f, -1579f, 1000f), vec3<f32>(-335f, 1000f, 899f))), Struct_4(Struct_1(vec3<f32>(-1226f, 1550f, 329f), vec3<f32>(-692f, -884f, 1240f)), vec3<f32>(1070f, 169f, -172f), Struct_1(vec3<f32>(-352f, 1360f, 320f), vec3<f32>(464f, 1214f, -2520f))), Struct_4(Struct_1(vec3<f32>(-675f, -383f, 327f), vec3<f32>(-349f, 1000f, 2063f)), vec3<f32>(814f, -172f, -1370f), Struct_1(vec3<f32>(-1287f, 443f, -636f), vec3<f32>(1571f, 1856f, 228f))), Struct_4(Struct_1(vec3<f32>(-283f, 639f, -835f), vec3<f32>(-582f, 868f, 829f)), vec3<f32>(-1204f, -560f, -2314f), Struct_1(vec3<f32>(1000f, 124f, -129f), vec3<f32>(-1000f, 1000f, -287f))), Struct_4(Struct_1(vec3<f32>(738f, -398f, -234f), vec3<f32>(-606f, -1000f, -1853f)), vec3<f32>(976f, -627f, -1529f), Struct_1(vec3<f32>(-328f, 1928f, 1338f), vec3<f32>(-1170f, -255f, -1000f))), Struct_4(Struct_1(vec3<f32>(-1058f, 1918f, 419f), vec3<f32>(-2835f, -322f, -1073f)), vec3<f32>(-2073f, 2159f, -1331f), Struct_1(vec3<f32>(-350f, 577f, -618f), vec3<f32>(403f, -1749f, 1277f))));

var<private> global3: bool = true;

var<private> global4: Struct_4 = Struct_4(Struct_1(vec3<f32>(-310f, 398f, -1334f), vec3<f32>(992f, -1795f, -1008f)), vec3<f32>(653f, -254f, 704f), Struct_1(vec3<f32>(471f, -236f, -2758f), vec3<f32>(-376f, 700f, -580f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-648f + -128f))), global4.a.a.x);
    var var_0 = !vec4<bool>(true, all(vec2<bool>(true, true)), false, true);
    var var_1 = all(!var_0.ww);
    global0 = global4.b.zy;
    global4 = global2[_wgslsmith_index_u32(~(max(_wgslsmith_div_u32(~u_input.a.x, 4294967295u), ~firstTrailingBit(45016u)) ^ ~0u), 20u)];
    return _wgslsmith_f_op_f32(sign(1000f));
}

fn func_2() -> f32 {
    global2 = array<Struct_4, 20>();
    let var_0 = Struct_5(~_wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(20447i, -2147483647i), vec2<i32>(u_input.d, u_input.d))), _wgslsmith_clamp_vec2_i32(vec2<i32>(33803i, u_input.c), -vec2<i32>(0i, -1i), vec2<i32>(23864i, -4864i))), Struct_4(global4.a, _wgslsmith_f_op_vec3_f32(-global4.c.b), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.c.a - vec3<f32>(-292f, 3017f, 287f)) + _wgslsmith_f_op_vec3_f32(select(global4.c.b, global4.c.b, vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(global4.a.a, vec3<f32>(-451f, global4.c.b.x, 699f))))))));
    global4 = var_0.b;
    let var_1 = vec4<i32>(73081i ^ ~u_input.d, -2434i, -59819i, 11099i);
    global4 = Struct_4(Struct_1(var_0.b.c.a, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global4.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec3_f32(ceil(var_0.b.a.b)), global4.a);
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    global1 = vec3<u32>(~4294967295u, _wgslsmith_div_u32(30637u, arg_0.c) << (arg_0.c % 32u), ~_wgslsmith_div_u32(~(~120510u), 77563u));
    global3 = all(!vec2<bool>(arg_1, all(vec4<bool>(true, false, arg_1, arg_1))));
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_2()))) >= -648f);
    global1 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(max(75236u, arg_0.c), _wgslsmith_mult_u32(arg_3.x, 24396u), min(61331u, u_input.a.x)), firstTrailingBit(vec3<u32>(arg_3.x, u_input.a.x, u_input.a.x))), ~arg_3, select(arg_3, _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(arg_3.x, arg_0.c, arg_0.c)), max(vec3<u32>(133911u, 4294967295u, u_input.a.x), arg_3), arg_3), arg_1)), vec3<u32>(~74241u, abs(arg_3.x), 1u ^ global1.x));
    var_0 = select(true, true, true);
    return arg_0.d;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5, arg_3: vec3<u32>) -> u32 {
    let var_0 = !vec3<bool>(true, firstTrailingBit(_wgslsmith_mult_u32(global1.x, 0u)) <= global1.x, all(vec4<bool>(u_input.a.x <= 0u, true, true, true)));
    let var_1 = -743f;
    let var_2 = !(!select(vec4<bool>(true, false, var_1 >= -1498f, !var_0.x), select(!vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), false), vec4<bool>(var_0.x, var_0.x, false, true)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), -276f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_0.b.b.zz, arg_2.b.c.b.xy)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.c.a.zz - arg_2.b.b.zx)) - vec2<f32>(267f, _wgslsmith_f_op_f32(global4.b.x - global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(func_1(Struct_2(366f, arg_2.a.x, 48973u, Struct_1(arg_0.b.a.a, global4.a.b)), false, arg_0.b.b.x, arg_3).b.zz)))));
    let var_3 = _wgslsmith_f_op_f32(arg_1 + 1395f);
    return min(4294967295u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_sub_i32(-_wgslsmith_div_i32(u_input.d, -6999i), _wgslsmith_add_i32(u_input.d, -1853i)));
    let var_1 = vec3<i32>(0i, abs(_wgslsmith_mult_i32(u_input.d, firstLeadingBit(-37730i)) >> (~(~global1.x) % 32u)), -1i);
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(global1.x, global1.x), 1u, 4294967295u, func_4(Struct_5(select(-vec2<i32>(u_input.d, 1i), -vec2<i32>(1i, -19521i), false), Struct_4(func_1(Struct_2(global4.c.b.x, 2147483647i, 54118u, Struct_1(vec3<f32>(-221f, 720f, 1000f), vec3<f32>(717f, 854f, global0.x))), true, 2025f, vec3<u32>(1u, 27205u, 60678u)), func_1(Struct_2(global4.c.a.x, -27621i, global1.x, global4.a), false, global0.x, vec3<u32>(1u, 0u, 4294967295u)).b, Struct_1(vec3<f32>(global0.x, global4.c.b.x, -639f), vec3<f32>(1401f, global0.x, global4.b.x)))), global4.b.x, Struct_5(~(~var_1.yz), Struct_4(global4.c, global4.b, Struct_1(vec3<f32>(471f, 553f, global0.x), vec3<f32>(global4.b.x, global4.a.a.x, -311f)))), vec3<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(~global1.x, ~90076u))));
    var var_3 = _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(min(u_input.b, ~(-1i)) >> (u_input.a.x % 32u), u_input.b));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(global4.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.b.x, -337f, global4.c.b.x)))))) * vec3<f32>(global4.a.a.x, _wgslsmith_f_op_f32(func_3()), global0.x)), vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1233f, global0.x))))));
    var var_5 = u_input.d;
    global3 = all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), false), !any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false))));
    global2 = array<Struct_4, 20>();
    let var_6 = vec3<bool>(select(any(vec2<bool>(true, true)), any(vec2<bool>(true, var_4.a.x >= -323f)), true & !all(vec2<bool>(true, false))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec2<i32>(-2147483647i, 12217i)));
}

