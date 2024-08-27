struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
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

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(707f, -1000f, 1418f, -401f), vec4<f32>(-602f, -651f, 281f, 708f), vec4<f32>(-144f, -1612f, 851f, -171f), vec4<f32>(-1776f, -580f, 1000f, 765f), vec4<f32>(-253f, 1953f, 365f, -1369f), vec4<f32>(-660f, -368f, -168f, -163f), vec4<f32>(341f, 1020f, -1618f, 1116f), vec4<f32>(-903f, -621f, 106f, 935f), vec4<f32>(2282f, -621f, -1465f, -316f), vec4<f32>(-1134f, -759f, 1726f, 636f), vec4<f32>(1000f, 771f, -246f, 1112f), vec4<f32>(-1001f, -981f, 403f, 219f), vec4<f32>(-499f, -332f, -1485f, -970f), vec4<f32>(608f, -557f, 1032f, 754f), vec4<f32>(282f, 689f, -157f, 384f), vec4<f32>(-286f, -858f, 1124f, 499f), vec4<f32>(993f, -803f, 609f, -1000f), vec4<f32>(748f, -758f, 648f, -1180f), vec4<f32>(-733f, -697f, 1154f, -4224f), vec4<f32>(615f, 401f, 952f, -271f), vec4<f32>(574f, -1778f, -305f, -321f), vec4<f32>(-518f, 814f, 944f, -109f), vec4<f32>(-954f, -1662f, -511f, 1428f), vec4<f32>(-1857f, -755f, 391f, 567f), vec4<f32>(-283f, 1041f, 927f, 1243f), vec4<f32>(1000f, -928f, -1240f, -1000f), vec4<f32>(2011f, 290f, -1023f, 635f), vec4<f32>(-1000f, 1000f, -411f, -931f), vec4<f32>(216f, 1368f, 289f, 278f), vec4<f32>(-503f, -1000f, -1286f, 1000f), vec4<f32>(-125f, -468f, 2277f, 2511f), vec4<f32>(-1000f, 631f, -634f, -351f));

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(4294967295u, Struct_2(vec3<u32>(9494u, 26231u, 4294967295u)), Struct_4(376f, Struct_2(vec3<u32>(9134u, 0u, 1u)), Struct_2(vec3<u32>(1356u, 51817u, 32696u)), vec2<f32>(-1090f, -1814f), Struct_3(vec4<f32>(786f, -1909f, 113f, 446f), vec2<i32>(0i, 2147483647i), vec3<bool>(false, false, true), vec3<f32>(-1105f, 369f, -143f), vec4<u32>(10188u, 1u, 5043u, 4294967295u)))));

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<f32>(1457f, -1036f, -1000f, 242f), vec2<i32>(-1i, 66409i), vec3<bool>(false, true, true), vec3<f32>(-581f, -870f, 307f), vec4<u32>(24043u, 66417u, 1u, 26418u)), Struct_3(vec4<f32>(-673f, -1024f, 1719f, 169f), vec2<i32>(-13901i, -1i), vec3<bool>(false, true, false), vec3<f32>(-846f, 1000f, -279f), vec4<u32>(33391u, 4294967295u, 1u, 33846u)), Struct_3(vec4<f32>(1015f, 1074f, -320f, -621f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, true, true), vec3<f32>(-1017f, 1886f, -1380f), vec4<u32>(65299u, 1u, 5545u, 102172u)), Struct_3(vec4<f32>(774f, -1579f, -1625f, -1000f), vec2<i32>(-38660i, 36837i), vec3<bool>(true, true, true), vec3<f32>(652f, 1000f, 683f), vec4<u32>(1235u, 1u, 1u, 25084u)), Struct_3(vec4<f32>(-1911f, 276f, 1481f, 934f), vec2<i32>(i32(-2147483648), -17708i), vec3<bool>(false, true, false), vec3<f32>(-1430f, 1416f, -507f), vec4<u32>(0u, 9576u, 1u, 4666u)), Struct_3(vec4<f32>(1000f, -2338f, 1470f, 2011f), vec2<i32>(72794i, 0i), vec3<bool>(true, true, false), vec3<f32>(-876f, -167f, -474f), vec4<u32>(22184u, 1u, 1u, 8181u)), Struct_3(vec4<f32>(599f, 521f, 1000f, 1216f), vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, true, true), vec3<f32>(-952f, -1783f, -353f), vec4<u32>(24658u, 39943u, 4294967295u, 67210u)), Struct_3(vec4<f32>(-485f, -1073f, -1602f, 2770f), vec2<i32>(-32147i, 24071i), vec3<bool>(false, true, false), vec3<f32>(-857f, 1488f, 379f), vec4<u32>(0u, 4294967295u, 32772u, 3999u)), Struct_3(vec4<f32>(753f, 1095f, -295f, -802f), vec2<i32>(0i, -26890i), vec3<bool>(false, false, false), vec3<f32>(-784f, -603f, -238f), vec4<u32>(60503u, 15145u, 22082u, 58891u)), Struct_3(vec4<f32>(870f, -2020f, 797f, 160f), vec2<i32>(45596i, 1i), vec3<bool>(true, true, false), vec3<f32>(521f, -387f, 553f), vec4<u32>(2701u, 0u, 0u, 22464u)), Struct_3(vec4<f32>(-1305f, 1159f, 205f, 537f), vec2<i32>(-1i, 0i), vec3<bool>(true, true, true), vec3<f32>(976f, -207f, 1430f), vec4<u32>(4294967295u, 4294967295u, 51879u, 37965u)), Struct_3(vec4<f32>(-108f, 520f, -237f, 663f), vec2<i32>(65736i, -1i), vec3<bool>(false, false, false), vec3<f32>(-1395f, -1913f, -111f), vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_3(vec4<f32>(688f, 2197f, -686f, -601f), vec2<i32>(-1i, 19265i), vec3<bool>(true, true, false), vec3<f32>(302f, 537f, -648f), vec4<u32>(46166u, 51231u, 4294967295u, 1u)), Struct_3(vec4<f32>(2668f, 516f, -400f, 524f), vec2<i32>(i32(-2147483648), 15261i), vec3<bool>(true, true, true), vec3<f32>(-1348f, -464f, 197f), vec4<u32>(1u, 2004u, 16416u, 0u)), Struct_3(vec4<f32>(-118f, -546f, -450f, -1462f), vec2<i32>(1i, 37923i), vec3<bool>(false, false, false), vec3<f32>(1148f, -1552f, 529f), vec4<u32>(4294967295u, 0u, 0u, 25144u)), Struct_3(vec4<f32>(424f, 1102f, 811f, 292f), vec2<i32>(2147483647i, 70008i), vec3<bool>(true, false, false), vec3<f32>(2402f, -326f, -328f), vec4<u32>(2142u, 51824u, 33317u, 1u)), Struct_3(vec4<f32>(-364f, 346f, 163f, 2441f), vec2<i32>(6357i, i32(-2147483648)), vec3<bool>(true, false, false), vec3<f32>(-854f, -151f, 1000f), vec4<u32>(0u, 1u, 6213u, 0u)), Struct_3(vec4<f32>(-963f, -671f, 285f, -1000f), vec2<i32>(8998i, 0i), vec3<bool>(true, true, false), vec3<f32>(365f, 102f, 1809f), vec4<u32>(52572u, 20127u, 1u, 6032u)), Struct_3(vec4<f32>(-2231f, -129f, 715f, -311f), vec2<i32>(33632i, 0i), vec3<bool>(false, true, true), vec3<f32>(-1780f, -1000f, -461f), vec4<u32>(22903u, 31760u, 14346u, 1u)), Struct_3(vec4<f32>(735f, -1351f, -471f, 322f), vec2<i32>(2147483647i, 2147483647i), vec3<bool>(false, true, false), vec3<f32>(727f, 195f, -1017f), vec4<u32>(30828u, 4294967295u, 4294967295u, 33701u)), Struct_3(vec4<f32>(1419f, -1000f, -277f, -441f), vec2<i32>(2147483647i, 2147483647i), vec3<bool>(false, false, true), vec3<f32>(-711f, 191f, 357f), vec4<u32>(59271u, 0u, 27311u, 20608u)), Struct_3(vec4<f32>(-254f, -274f, -235f, 1458f), vec2<i32>(i32(-2147483648), 39796i), vec3<bool>(true, false, false), vec3<f32>(-1152f, 894f, 235f), vec4<u32>(0u, 4294967295u, 59932u, 43973u)), Struct_3(vec4<f32>(-1007f, -1094f, -2689f, -1130f), vec2<i32>(2147483647i, -1i), vec3<bool>(true, false, true), vec3<f32>(496f, -266f, -847f), vec4<u32>(52768u, 15181u, 4294967295u, 22079u)), Struct_3(vec4<f32>(880f, 1000f, 160f, 913f), vec2<i32>(2147483647i, -29209i), vec3<bool>(true, false, true), vec3<f32>(1000f, -330f, -317f), vec4<u32>(1u, 2622u, 37179u, 52236u)), Struct_3(vec4<f32>(438f, -1000f, -1104f, 839f), vec2<i32>(1i, -453i), vec3<bool>(true, true, false), vec3<f32>(-1359f, -1911f, 1144f), vec4<u32>(34961u, 7780u, 5911u, 2366u)), Struct_3(vec4<f32>(1425f, -858f, 825f, 232f), vec2<i32>(0i, 1i), vec3<bool>(true, true, false), vec3<f32>(139f, -390f, -1007f), vec4<u32>(0u, 4294967295u, 46641u, 1u)), Struct_3(vec4<f32>(-1385f, 772f, 1161f, 1713f), vec2<i32>(2147483647i, 39514i), vec3<bool>(false, false, false), vec3<f32>(-1000f, -1091f, 1260f), vec4<u32>(0u, 1u, 10545u, 8345u)), Struct_3(vec4<f32>(355f, -867f, -767f, 1083f), vec2<i32>(1i, i32(-2147483648)), vec3<bool>(true, true, true), vec3<f32>(-1367f, 1505f, 702f), vec4<u32>(0u, 0u, 1u, 87608u)), Struct_3(vec4<f32>(-1356f, 275f, -400f, 1336f), vec2<i32>(6670i, -25241i), vec3<bool>(false, true, true), vec3<f32>(-247f, -451f, -331f), vec4<u32>(62607u, 0u, 44358u, 10979u)), Struct_3(vec4<f32>(-481f, 1427f, -371f, -476f), vec2<i32>(i32(-2147483648), 311i), vec3<bool>(false, true, false), vec3<f32>(-1005f, -440f, -1204f), vec4<u32>(1406u, 0u, 64646u, 1u)), Struct_3(vec4<f32>(-261f, 1680f, -400f, 482f), vec2<i32>(-28881i, 58241i), vec3<bool>(false, true, true), vec3<f32>(1855f, -331f, -1156f), vec4<u32>(1u, 0u, 22557u, 96932u)), Struct_3(vec4<f32>(1109f, -922f, -1982f, 1118f), vec2<i32>(1i, 2147483647i), vec3<bool>(true, true, false), vec3<f32>(-303f, 368f, 1000f), vec4<u32>(0u, 72445u, 19653u, 7800u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<vec4<f32>, 32>();
    let var_0 = vec2<i32>(abs(i32(-1i) * -(-20603i << (arg_0 % 32u))), ~(~0i));
    var var_1 = Struct_4(-992f, Struct_2(_wgslsmith_div_vec3_u32(min(u_input.b, u_input.b), ~vec3<u32>(32462u, 8069u, arg_0))), Struct_2(_wgslsmith_div_vec3_u32(u_input.b, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(494f))) * -216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-407f))))), global3[_wgslsmith_index_u32(u_input.a, 32u)]);
    global1 = array<vec3<bool>, 11>();
    var var_2 = vec4<bool>(false, var_1.e.c.x, !all(select(vec2<bool>(var_1.e.c.x, false), var_1.e.c.zx, false)), var_1.e.c.x);
    return 1000f;
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(36673u)), _wgslsmith_f_op_f32(max(2236f, _wgslsmith_f_op_f32(step(-500f, -1476f))))), Struct_2(u_input.b), Struct_2(vec3<u32>(u_input.b.x, u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-178f, 861f))), -655f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-204f, 2181f))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(-104f, -2673f))), true)))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a, ~u_input.a), u_input.b.x), 32u)]);
    let var_1 = vec4<bool>((_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.c.a.x, 0u), var_0.c.a.xx, vec2<bool>(var_0.e.c.x, var_0.e.c.x)), ~u_input.b.xz) > abs(1u)) & !var_0.e.c.x, true, true, true);
    global2 = array<Struct_5, 1>();
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), -863f))), _wgslsmith_f_op_vec2_f32(step(var_0.d, var_0.d)))));
    global0 = array<vec4<f32>, 32>();
    return -firstTrailingBit(-arg_0.x);
}

fn func_1() -> u32 {
    var var_0 = -(~vec4<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), 2147483647i, -34666i, 1i)) & reverseBits(vec4<i32>(1i, 15225i, -func_2(vec4<i32>(-8499i, 78558i, -3701i, 50631i)), 10730i));
    let var_1 = global2[_wgslsmith_index_u32(u_input.b.x >> (0u % 32u), 1u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)));
    var var_3 = countOneBits(firstTrailingBit(vec4<i32>(var_0.x, var_1.c.e.b.x, _wgslsmith_clamp_i32(1104i, var_0.x, 7939i | var_0.x), _wgslsmith_clamp_i32(-35153i, var_1.c.e.b.x, _wgslsmith_dot_vec3_i32(var_0.wyw, var_0.yzx)))));
    var_3 = max(vec4<i32>(var_3.x, reverseBits(-2147483647i), 0i, _wgslsmith_mod_i32(var_0.x, 8016i)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-1i, var_1.c.e.b.x)), (19429i | var_0.x) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.c.e.b.x, var_3.x, 1i), vec4<i32>(var_3.x, -7424i, var_1.c.e.b.x, var_3.x)), _wgslsmith_mod_i32(46342i, ~(var_1.c.e.b.x & var_0.x)), _wgslsmith_add_i32(~_wgslsmith_sub_i32(-41781i, 1593i), -var_3.x)));
    return _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(~max(1u, 0u), countOneBits(_wgslsmith_sub_u32(var_1.a, var_1.a)))) >> (firstLeadingBit(var_1.b.a.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(~u_input.a, u_input.a)) & 26594u, 32u)];
    global3 = array<Struct_3, 32>();
    var var_1 = vec4<u32>(u_input.a, func_1(), 4294967295u, _wgslsmith_mod_u32(0u, ~var_0.e.x)) & _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(var_0.e, vec4<u32>(35795u, 4294967295u, u_input.a << (var_0.e.x % 32u), 49534u)), var_0.e);
    var_1 = _wgslsmith_sub_vec4_u32(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_0.e.x, 0u, var_1.x), vec4<u32>(var_1.x, 0u, 0u, var_0.e.x))), vec4<u32>(firstTrailingBit(reverseBits(~1u)), 183u, var_1.x, ~var_0.e.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)), _wgslsmith_f_op_f32(f32(-1f) * -469f), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1983f) - 134f))));
    global3 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(430f)) + var_0.d.x) * var_2.x), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + -420f) * _wgslsmith_f_op_f32(step(var_0.a.x, var_2.x))))), firstTrailingBit(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.b.x, -33932i, var_0.b.x, var_0.b.x), abs(vec4<i32>(var_0.b.x, -1i, var_0.b.x, 11378i)), -vec4<i32>(9339i, var_0.b.x, var_0.b.x, var_0.b.x))), ~var_0.e.x, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) + var_2.x));
}

