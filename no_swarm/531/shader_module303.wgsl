struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(true, false, false), vec4<f32>(602f, 1419f, 632f, -1000f), vec4<f32>(-374f, -2265f, -857f, -816f), vec4<u32>(13416u, 85930u, 1u, 1u), -452i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(1184f, -789f, 405f, 997f), vec4<f32>(443f, -1773f, 759f, 581f), vec4<u32>(0u, 67544u, 1u, 4294967295u), 8603i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(1388f, 462f, -1357f, 1030f), vec4<f32>(2057f, 286f, -1983f, -322f), vec4<u32>(16224u, 15076u, 1u, 71167u), 5204i), Struct_1(vec3<bool>(true, true, false), vec4<f32>(124f, 1000f, 1463f, -1000f), vec4<f32>(-918f, -140f, 1132f, 485f), vec4<u32>(40428u, 59818u, 39859u, 5651u), -79724i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(1144f, -798f, -1435f, 750f), vec4<f32>(1140f, -196f, -1153f, 1230f), vec4<u32>(573u, 32510u, 1u, 92270u), 0i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-191f, -1923f, 689f, -647f), vec4<f32>(444f, -745f, 514f, -1471f), vec4<u32>(1u, 0u, 0u, 55755u), 16271i), Struct_1(vec3<bool>(true, true, true), vec4<f32>(285f, -1085f, 1615f, 1220f), vec4<f32>(-998f, 1000f, 897f, 183f), vec4<u32>(51731u, 13544u, 115628u, 33995u), 1i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1796f, 796f, 1129f, 1093f), vec4<f32>(485f, 711f, -2130f, -596f), vec4<u32>(62033u, 106078u, 4294967295u, 19868u), 8736i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(942f, -1389f, -239f, -1945f), vec4<f32>(1318f, 1547f, 259f, 1118f), vec4<u32>(30377u, 125588u, 29506u, 46215u), 0i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(299f, -352f, 1000f, 393f), vec4<f32>(-176f, 1813f, 874f, -1000f), vec4<u32>(14761u, 31613u, 112164u, 42836u), -1i), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-1011f, -439f, 1664f, 1133f), vec4<f32>(434f, -1260f, -511f, -1000f), vec4<u32>(22470u, 0u, 0u, 1u), 6137i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(511f, -774f, 370f, -2553f), vec4<f32>(392f, 218f, -128f, -104f), vec4<u32>(52875u, 1u, 4294967295u, 45782u), 1i), Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1716f, 144f, -297f, 792f), vec4<f32>(-1592f, 2745f, -811f, 1664f), vec4<u32>(80858u, 71863u, 67940u, 0u), 34386i), Struct_1(vec3<bool>(false, false, true), vec4<f32>(1185f, -100f, -767f, 285f), vec4<f32>(1274f, -859f, -1782f, -1087f), vec4<u32>(5140u, 0u, 53047u, 1u), 2147483647i), Struct_1(vec3<bool>(false, true, false), vec4<f32>(1155f, 140f, -253f, -1308f), vec4<f32>(-1610f, 698f, -582f, -427f), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), i32(-2147483648)), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-864f, -1046f, 3037f, 1353f), vec4<f32>(-1000f, -1564f, 232f, -713f), vec4<u32>(4294967295u, 1u, 4988u, 92064u), -18179i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(1364f, -962f, -472f, 236f), vec4<f32>(798f, -773f, -330f, -1006f), vec4<u32>(28137u, 1u, 18349u, 0u), -1i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1567f, 769f, 139f, -2277f), vec4<f32>(1785f, 639f, 339f, -1707f), vec4<u32>(88557u, 1u, 53386u, 20314u), -1i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-374f, 1432f, -1291f, -787f), vec4<f32>(338f, -159f, 483f, -1000f), vec4<u32>(1u, 42292u, 41813u, 1u), i32(-2147483648)), Struct_1(vec3<bool>(false, false, false), vec4<f32>(110f, -213f, 1230f, -780f), vec4<f32>(135f, 815f, -292f, -540f), vec4<u32>(4294967295u, 74094u, 0u, 32829u), 0i), Struct_1(vec3<bool>(false, false, false), vec4<f32>(1000f, -284f, 200f, -1258f), vec4<f32>(144f, -1000f, -671f, 1000f), vec4<u32>(0u, 1u, 4294967295u, 1u), 2147483647i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-136f, -1223f, -1072f, 883f), vec4<f32>(143f, 1496f, -564f, -210f), vec4<u32>(4294967295u, 0u, 42915u, 1u), 21837i), Struct_1(vec3<bool>(false, true, true), vec4<f32>(-196f, -1000f, -398f, 899f), vec4<f32>(1411f, -1000f, -1199f, -207f), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), -14127i), Struct_1(vec3<bool>(true, false, false), vec4<f32>(-319f, -1185f, -486f, -227f), vec4<f32>(683f, 202f, -196f, -1566f), vec4<u32>(1u, 5754u, 4294967295u, 0u), 1i), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-372f, 1593f, -1346f, 351f), vec4<f32>(646f, 627f, 1000f, -527f), vec4<u32>(18445u, 66730u, 1262u, 75078u), -53933i));

var<private> global1: vec3<u32> = vec3<u32>(29239u, 39336u, 48602u);

var<private> global2: Struct_3 = Struct_3(Struct_2(i32(-2147483648), -19651i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1000f, -135f, -1000f, 1000f), vec4<f32>(-1122f, 1117f, -1049f, 370f), vec4<u32>(26189u, 50411u, 1u, 20198u), 16288i), vec3<u32>(15215u, 4294967295u, 53452u)));

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global4: vec4<f32> = vec4<f32>(201f, 144f, 500f, -1246f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec3<u32> {
    global4 = global2.a.c.b;
    var var_0 = Struct_3(Struct_2(-2147483647i, 48846i, global2.a.c, arg_0.d.wxy));
    let var_1 = max(u_input.d, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.d.x, 26593u, var_0.a.d.x), global2.a.d), 1u, ~firstTrailingBit(~arg_0.d.x)));
    let var_2 = Struct_3(Struct_2(i32(-1i) * -2147483647i, -14475i, Struct_1(vec3<bool>(true, !arg_0.a.x, all(vec3<bool>(arg_0.a.x, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(206f, 1151f, -600f, -631f))) + _wgslsmith_f_op_vec4_f32(arg_0.b - var_0.a.c.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(var_0.a.c.c, vec4<f32>(556f, -1407f, 373f, global4.x)))), ~(~vec4<u32>(var_1.x, 1u, u_input.e.x, 4294967295u)), u_input.b.x), ~(~(global2.a.d & arg_0.d.zwz))));
    let var_3 = var_2;
    return abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.a.d ^ var_3.a.d, vec3<u32>(~1u, 54602u, _wgslsmith_div_u32(global2.a.c.d.x, u_input.d.x))), _wgslsmith_add_vec3_u32(var_0.a.c.d.xxx, var_1), vec3<u32>(134095u, 1u, arg_1 << (~var_2.a.d.x % 32u))));
}

fn func_2() -> vec2<u32> {
    global3 = _wgslsmith_mult_vec2_u32(global1.zx, global2.a.d.yx);
    var var_0 = Struct_3(global2.a);
    var var_1 = countOneBits(var_0.a.c.e);
    var_0 = Struct_3(Struct_2(firstLeadingBit(u_input.a & var_0.a.a) | (i32(-1i) * -global2.a.b), u_input.a, var_0.a.c, select(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.d.x, 26179u, global3.x), vec3<u32>(global2.a.d.x, 4294967295u, 1u))), func_3(Struct_1(var_0.a.c.a, var_0.a.c.c, vec4<f32>(global2.a.c.b.x, 533f, global2.a.c.b.x, -1000f), vec4<u32>(5135u, global3.x, u_input.e.x, 87482u), 0i), 96117u, u_input.b.zy >> (u_input.c.xx % vec2<u32>(32u))), global2.a.c.a)));
    var var_2 = _wgslsmith_f_op_f32(floor(398f));
    return global2.a.d.zx;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = ~global2.a.b;
    let var_1 = global4.ww;
    var var_2 = countOneBits(~func_2());
    global0 = array<Struct_1, 25>();
    global2 = Struct_3(Struct_2(_wgslsmith_mult_i32(u_input.b.x & _wgslsmith_add_i32(u_input.b.x, u_input.b.x), abs(global2.a.a)), 35895i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, global2.a.d.x), 25u)], u_input.d));
    return Struct_1(select(vec3<bool>(global2.a.c.a.x, !global2.a.c.a.x, false), !select(select(global2.a.c.a, vec3<bool>(global2.a.c.a.x, false, global2.a.c.a.x), global2.a.c.a), vec3<bool>(true, global2.a.c.a.x, global2.a.c.a.x), select(global2.a.c.a, global2.a.c.a, true)), false), vec4<f32>(global2.a.c.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(735f)))), _wgslsmith_f_op_f32(1181f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1686f + 254f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, -713f))))), global2.a.c.c, ~u_input.e >> (~(~vec4<u32>(global2.a.d.x, arg_1, 0u, var_2.x)) % vec4<u32>(32u)), global2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    let var_1 = Struct_2(var_0.a, 0i, func_1(firstTrailingBit(1u), 26724u), ~var_0.d);
    var var_2 = var_0.c.a.x;
    let var_3 = Struct_1(select(!var_1.c.a, !var_1.c.a, func_1(~(~global1.x), _wgslsmith_mult_u32(u_input.c.x, ~39804u)).a), vec4<f32>(-1287f, global4.x, 1495f, -1000f), _wgslsmith_f_op_vec4_f32(-var_1.c.c), vec4<u32>(global1.x, ~10214u, 27546u, global2.a.c.d.x), _wgslsmith_mod_i32(-abs(-var_0.a), 6935i));
    var var_4 = _wgslsmith_mod_i32(2147483647i, -2147483647i);
    global1 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1244u, _wgslsmith_sub_u32(~var_3.d.x, ~global2.a.d.x)), vec3<u32>(var_0.d.x, var_3.d.x, max(1u, global2.a.c.d.x))));
    global2 = Struct_3(Struct_2(1i, -var_1.b, Struct_1(var_1.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b)), vec4<f32>(-1009f, _wgslsmith_f_op_f32(-global4.x), 1075f, _wgslsmith_f_op_f32(1200f * global4.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.d.x, global3.x, global2.a.c.d.x), abs(u_input.e)), -8552i), ~vec3<u32>(global2.a.d.x, 5880u, 1u) << (~var_3.d.ywy % vec3<u32>(32u))));
    let var_5 = var_0.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global2.a.b ^ _wgslsmith_div_i32(~6310i, 1i), max(min(-var_1.a, global2.a.c.e), -30585i)));
}

