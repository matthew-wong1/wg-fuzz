struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(33556u, 28226u), vec3<f32>(-2008f, 809f, -470f), 41930i, vec2<bool>(false, true), vec4<f32>(-1248f, 997f, -710f, 491f)), Struct_1(vec2<u32>(0u, 0u), vec3<f32>(368f, -1329f, 664f), 0i, vec2<bool>(false, false), vec4<f32>(482f, 1729f, -1081f, 347f)), Struct_1(vec2<u32>(4294967295u, 21167u), vec3<f32>(857f, -286f, -842f), 17003i, vec2<bool>(false, true), vec4<f32>(-102f, -1619f, -752f, 915f)), Struct_1(vec2<u32>(22748u, 25744u), vec3<f32>(998f, 686f, 2350f), 13483i, vec2<bool>(true, false), vec4<f32>(354f, 1063f, -1000f, 604f)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(-1582f, 748f, 1000f), i32(-2147483648), vec2<bool>(true, false), vec4<f32>(774f, 968f, -470f, 1927f)), Struct_1(vec2<u32>(47157u, 75357u), vec3<f32>(1333f, -126f, 141f), i32(-2147483648), vec2<bool>(false, true), vec4<f32>(436f, -786f, 263f, -652f)), Struct_1(vec2<u32>(11124u, 31874u), vec3<f32>(-413f, -993f, -603f), -36973i, vec2<bool>(true, true), vec4<f32>(208f, -471f, -337f, 1000f)), Struct_1(vec2<u32>(15189u, 51297u), vec3<f32>(229f, -154f, 1533f), -1i, vec2<bool>(true, true), vec4<f32>(1918f, 654f, -666f, -619f)), Struct_1(vec2<u32>(0u, 26871u), vec3<f32>(137f, -1415f, 1993f), 1i, vec2<bool>(true, false), vec4<f32>(-1289f, -368f, -1652f, -742f)), Struct_1(vec2<u32>(28405u, 2075u), vec3<f32>(-935f, -1556f, -168f), i32(-2147483648), vec2<bool>(false, true), vec4<f32>(-571f, -423f, 552f, -1640f)), Struct_1(vec2<u32>(0u, 29213u), vec3<f32>(936f, -1707f, -1150f), 2147483647i, vec2<bool>(true, false), vec4<f32>(1207f, 962f, 1079f, 741f)), Struct_1(vec2<u32>(0u, 40831u), vec3<f32>(-570f, 583f, -634f), 38319i, vec2<bool>(true, false), vec4<f32>(-581f, -1087f, 541f, 727f)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(1706f, -303f, -619f), -38632i, vec2<bool>(false, false), vec4<f32>(2636f, 829f, 855f, -262f)), Struct_1(vec2<u32>(11051u, 10429u), vec3<f32>(1679f, -1118f, -579f), 21898i, vec2<bool>(false, true), vec4<f32>(-2390f, 305f, 1000f, 132f)), Struct_1(vec2<u32>(17717u, 38811u), vec3<f32>(242f, 316f, 1001f), -4986i, vec2<bool>(false, true), vec4<f32>(-150f, 1178f, -414f, 663f)), Struct_1(vec2<u32>(1u, 49685u), vec3<f32>(688f, 1742f, -1062f), 46433i, vec2<bool>(true, true), vec4<f32>(-1335f, 708f, 1390f, 923f)), Struct_1(vec2<u32>(0u, 64274u), vec3<f32>(1215f, -393f, 1165f), i32(-2147483648), vec2<bool>(false, true), vec4<f32>(568f, 1000f, 1352f, -1049f)), Struct_1(vec2<u32>(1u, 16366u), vec3<f32>(-981f, -1562f, -900f), 24653i, vec2<bool>(true, false), vec4<f32>(856f, 477f, 3620f, -149f)), Struct_1(vec2<u32>(1u, 64981u), vec3<f32>(136f, -756f, -834f), 2147483647i, vec2<bool>(false, true), vec4<f32>(-855f, 602f, 646f, -1252f)), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(2493f, -1268f, -1049f), 2147483647i, vec2<bool>(false, true), vec4<f32>(-216f, -208f, 986f, -145f)), Struct_1(vec2<u32>(19987u, 1u), vec3<f32>(183f, 942f, 1319f), -1i, vec2<bool>(false, false), vec4<f32>(363f, -279f, -1165f, -1207f)), Struct_1(vec2<u32>(43054u, 0u), vec3<f32>(1565f, 154f, 281f), 1i, vec2<bool>(true, false), vec4<f32>(-2374f, -248f, -2687f, -2175f)), Struct_1(vec2<u32>(0u, 11056u), vec3<f32>(-321f, 1566f, 1658f), 0i, vec2<bool>(false, false), vec4<f32>(314f, -1000f, -356f, -598f)));

var<private> global2: array<vec3<i32>, 27>;

var<private> global3: i32 = 48119i;

var<private> global4: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(42493i, 2788i, 2147483647i, 27528i), vec4<i32>(0i, -13270i, -42364i, -56559i), vec4<i32>(-20919i, 2147483647i, -1i, 1i), vec4<i32>(42359i, 27392i, -454i, -8046i), vec4<i32>(-1i, -7232i, 27729i, i32(-2147483648)), vec4<i32>(-16358i, 24253i, 1i, 47891i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), vec4<i32>(33837i, 17379i, -1i, 2147483647i), vec4<i32>(17865i, 65539i, 0i, 33192i), vec4<i32>(i32(-2147483648), i32(-2147483648), 4208i, 46924i), vec4<i32>(1i, 1i, i32(-2147483648), -39255i), vec4<i32>(i32(-2147483648), 1i, -31487i, 2147483647i), vec4<i32>(i32(-2147483648), -42939i, -33118i, 1i), vec4<i32>(i32(-2147483648), -54150i, -1i, -9807i), vec4<i32>(24484i, 2147483647i, 34417i, 806i), vec4<i32>(-22366i, 1i, 23955i, -55115i), vec4<i32>(2147483647i, 0i, 2147483647i, 1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), -21683i), vec4<i32>(40767i, -30491i, -2033i, 2147483647i), vec4<i32>(1i, -37035i, -1i, -38213i), vec4<i32>(11609i, i32(-2147483648), -40651i, 2147483647i), vec4<i32>(26317i, 45744i, 2147483647i, 43343i), vec4<i32>(1i, -1i, -54156i, 76117i), vec4<i32>(25587i, -3009i, 12960i, 0i), vec4<i32>(28912i, 21182i, -10824i, 8172i), vec4<i32>(-1i, -30135i, 16258i, 8169i), vec4<i32>(i32(-2147483648), 10638i, 0i, -12570i), vec4<i32>(2147483647i, 0i, 0i, i32(-2147483648)), vec4<i32>(21478i, 2147483647i, 29831i, -20001i), vec4<i32>(-45987i, -26238i, -4299i, 31945i), vec4<i32>(-30723i, -20118i, -71314i, -1i), vec4<i32>(40493i, 0i, -12696i, 0i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    global2 = array<vec3<i32>, 27>();
    global2 = array<vec3<i32>, 27>();
    var var_0 = min(~(~(~(~1i))), 19238i);
    let var_1 = arg_0.a.a.x;
    return 1u;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(298f, arg_0.b.x, arg_0.e.x, arg_0.b.x) - vec4<f32>(arg_0.e.x, -357f, arg_0.b.x, arg_0.b.x)))))), abs(~vec2<u32>(_wgslsmith_mult_u32(1u, arg_0.a.x), arg_0.a.x)), arg_0.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(21964i, -1i, u_input.d), vec3<i32>(-1i, arg_0.c, -39596i)) >> (~_wgslsmith_add_u32(1u, 50735u) % 32u), u_input.d));
    var var_1 = arg_0.a;
    var var_2 = ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 43020u, 0u, u_input.e) >> (vec4<u32>(13665u, 8660u, 0u, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, var_1.x))) | ~u_input.e;
    var_2 = var_1.x;
    global2 = array<vec3<i32>, 27>();
    return var_0.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(~21600u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.e, 1u), _wgslsmith_clamp_u32(u_input.e, 50319u, 4294967295u)))), reverseBits(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.e, u_input.e), vec4<u32>(5396u, 1u, 42499u, 4294967295u)), ~u_input.e & 33784u)));
    global2 = array<vec3<i32>, 27>();
    var var_1 = _wgslsmith_add_i32(~firstTrailingBit((u_input.a & arg_0.x) << (u_input.e % 32u)), 8862i);
    global4 = array<vec4<i32>, 32>();
    let var_2 = arg_2.a.x;
    return vec3<f32>(arg_2.a.x, 1741f, _wgslsmith_f_op_f32(floor(arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(global0.x | (-2147483647i > _wgslsmith_clamp_i32(1i, u_input.a, u_input.b.x)), any(vec3<bool>(global0.x | true, true, !global0.x)), !(_wgslsmith_sub_i32(2147483647i, u_input.c) != _wgslsmith_clamp_i32(u_input.c, u_input.a, -1i)));
    var var_0 = Struct_1(~vec2<u32>(func_1(Struct_3(Struct_2(vec4<f32>(-958f, -1324f, -1643f, 292f)), vec2<u32>(0u, 50428u), vec3<f32>(1000f, -305f, -1000f), 5866i), global1[_wgslsmith_index_u32(u_input.e, 23u)], vec2<bool>(true, false)), ~8360u), _wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(u_input.a, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6328i, 1i, -26142i), global4[_wgslsmith_index_u32(0u, 32u)])), -2147483647i, -u_input.b.x), true, func_2(global1[_wgslsmith_index_u32(u_input.e, 23u)]))), i32(-1i) * -(~countOneBits(20564i)), global0.xz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, -811f, -638f, 261f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-926f, 1002f, -499f, -326f), vec4<f32>(740f, 592f, 703f, 838f), vec4<bool>(global0.x, false, global0.x, true))), global0.x)), vec4<f32>(228f, _wgslsmith_f_op_f32(ceil(-946f)), _wgslsmith_div_f32(-221f, 944f), 710f), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1669f, -402f, _wgslsmith_f_op_f32(-870f + 281f), _wgslsmith_f_op_f32(f32(-1f) * -1015f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * var_0.e.yxx);
    var var_2 = u_input.c;
    let var_3 = firstTrailingBit(var_0.a.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(var_0.e.xx * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)) * vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_0.e.x), _wgslsmith_f_op_f32(round(var_0.b.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.e.x, 1467f), vec2<f32>(var_1.x, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + var_1.xz)))))));
    global2 = array<vec3<i32>, 27>();
    var var_5 = vec3<i32>(~select(0i | max(-2147483647i, u_input.d), abs(_wgslsmith_mult_i32(u_input.a, u_input.a)), true), 1i, u_input.c);
    let var_6 = Struct_3(func_2(Struct_1(firstLeadingBit(countOneBits(var_0.a)), _wgslsmith_div_vec3_f32(var_0.e.yxz, func_2(global1[_wgslsmith_index_u32(var_0.a.x, 23u)]).a.www), ~(-87330i), !global0.xz, var_0.e)), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, u_input.e), vec2<u32>(var_3, 1u)), vec2<u32>(_wgslsmith_sub_u32(u_input.e, 44918u), ~var_3) >> (var_0.a % vec2<u32>(32u)), ~reverseBits(select(vec2<u32>(u_input.e, 0u), vec2<u32>(var_0.a.x, 86949u), global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.e.yyy * vec3<f32>(119f, 774f, 588f)), var_0.b)))), firstLeadingBit(u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.e, select(var_0.a.x, ~1u, !var_0.d.x), 17729u, var_3), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_dot_vec2_u32(var_0.a, abs(firstTrailingBit(select(var_0.a, vec2<u32>(80174u, var_6.b.x), vec2<bool>(true, var_0.d.x))))), var_1.yy, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1751f * 828f) - var_6.c.x), 1021f, var_1.x));
}

