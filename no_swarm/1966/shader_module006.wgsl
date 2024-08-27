struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<f32>(183f, -378f)), vec4<u32>(16410u, 0u, 0u, 57754u), true, Struct_1(vec2<f32>(-137f, 882f))), Struct_2(Struct_1(vec2<f32>(3027f, 1025f)), vec4<u32>(4294967295u, 29073u, 28210u, 25647u), false, Struct_1(vec2<f32>(1431f, -2264f))), Struct_2(Struct_1(vec2<f32>(-1816f, 1012f)), vec4<u32>(48517u, 4962u, 44311u, 29753u), false, Struct_1(vec2<f32>(878f, 444f))), Struct_2(Struct_1(vec2<f32>(665f, 1000f)), vec4<u32>(1u, 0u, 0u, 34037u), true, Struct_1(vec2<f32>(1061f, 1192f))), Struct_2(Struct_1(vec2<f32>(246f, 1336f)), vec4<u32>(38465u, 1u, 0u, 86395u), true, Struct_1(vec2<f32>(-500f, 374f))), Struct_2(Struct_1(vec2<f32>(873f, -883f)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), true, Struct_1(vec2<f32>(-281f, 120f))), Struct_2(Struct_1(vec2<f32>(-1302f, -177f)), vec4<u32>(4294967295u, 8441u, 1u, 1u), false, Struct_1(vec2<f32>(-1437f, -1000f))));

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_2(Struct_1(vec2<f32>(-741f, 1343f)), vec4<u32>(0u, 0u, 44605u, 9044u), false, Struct_1(vec2<f32>(-2810f, 1496f))), Struct_1(vec2<f32>(-473f, 1223f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-137f, 872f)), vec4<u32>(4294967295u, 9523u, 18431u, 1u), false, Struct_1(vec2<f32>(1646f, 512f))), Struct_1(vec2<f32>(-915f, 357f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-233f, 582f)), vec4<u32>(46038u, 4371u, 8728u, 0u), true, Struct_1(vec2<f32>(1250f, -1683f))), Struct_1(vec2<f32>(-446f, 1790f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(4280f, 943f)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 3183u), true, Struct_1(vec2<f32>(-614f, -528f))), Struct_1(vec2<f32>(1000f, 275f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(1562f, 195f)), vec4<u32>(19685u, 5823u, 24039u, 4294967295u), true, Struct_1(vec2<f32>(-446f, -369f))), Struct_1(vec2<f32>(218f, -1259f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-655f, -592f)), vec4<u32>(46971u, 1u, 27450u, 0u), true, Struct_1(vec2<f32>(231f, 1551f))), Struct_1(vec2<f32>(-2102f, 195f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-189f, -758f)), vec4<u32>(0u, 1u, 50697u, 4294967295u), true, Struct_1(vec2<f32>(-2201f, -1770f))), Struct_1(vec2<f32>(1119f, -489f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(1024f, -393f)), vec4<u32>(14680u, 1u, 70541u, 2738u), true, Struct_1(vec2<f32>(1000f, -737f))), Struct_1(vec2<f32>(-910f, -2179f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(1474f, -1000f)), vec4<u32>(2249u, 4294967295u, 96749u, 50692u), false, Struct_1(vec2<f32>(289f, 1331f))), Struct_1(vec2<f32>(1000f, -712f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-1000f, -1251f)), vec4<u32>(43678u, 141u, 4294967295u, 4294967295u), true, Struct_1(vec2<f32>(494f, -1395f))), Struct_1(vec2<f32>(1656f, -145f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-906f, -1682f)), vec4<u32>(44109u, 4294967295u, 5117u, 58366u), false, Struct_1(vec2<f32>(-1302f, 1459f))), Struct_1(vec2<f32>(-1212f, 834f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(777f, 1554f)), vec4<u32>(3933u, 1u, 24685u, 4294967295u), true, Struct_1(vec2<f32>(-357f, -1527f))), Struct_1(vec2<f32>(1002f, -1608f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(622f, 3042f)), vec4<u32>(4294967295u, 4294967295u, 37932u, 42856u), false, Struct_1(vec2<f32>(769f, -397f))), Struct_1(vec2<f32>(985f, 986f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-2272f, -150f)), vec4<u32>(0u, 2919u, 1u, 4294967295u), false, Struct_1(vec2<f32>(2207f, -1000f))), Struct_1(vec2<f32>(-242f, 497f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-543f, 230f)), vec4<u32>(1u, 1u, 0u, 4294967295u), true, Struct_1(vec2<f32>(-119f, 675f))), Struct_1(vec2<f32>(-859f, -1041f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(-180f, 565f)), vec4<u32>(75765u, 1u, 4294967295u, 0u), false, Struct_1(vec2<f32>(-842f, 1000f))), Struct_1(vec2<f32>(-1539f, -575f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-207f, 663f)), vec4<u32>(0u, 43606u, 7041u, 1u), false, Struct_1(vec2<f32>(752f, 630f))), Struct_1(vec2<f32>(-1019f, -292f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(800f, -817f)), vec4<u32>(37886u, 4294967295u, 1u, 52318u), true, Struct_1(vec2<f32>(-716f, -781f))), Struct_1(vec2<f32>(1000f, -156f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(-136f, 1000f)), vec4<u32>(20299u, 9677u, 120838u, 1u), false, Struct_1(vec2<f32>(467f, -651f))), Struct_1(vec2<f32>(1233f, 301f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(-289f, -636f)), vec4<u32>(28249u, 0u, 1u, 1u), true, Struct_1(vec2<f32>(-430f, -1920f))), Struct_1(vec2<f32>(893f, -851f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(391f, -232f)), vec4<u32>(1u, 10496u, 1u, 4294967295u), false, Struct_1(vec2<f32>(-1235f, 1228f))), Struct_1(vec2<f32>(-2690f, -1000f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(148f, -1000f)), vec4<u32>(16757u, 0u, 1u, 1u), false, Struct_1(vec2<f32>(113f, 1000f))), Struct_1(vec2<f32>(-936f, -212f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(223f, 678f)), vec4<u32>(24244u, 1u, 11451u, 78067u), true, Struct_1(vec2<f32>(201f, -1000f))), Struct_1(vec2<f32>(-1501f, 1559f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-1996f, 1000f)), vec4<u32>(4294967295u, 37928u, 1u, 1u), false, Struct_1(vec2<f32>(1000f, -707f))), Struct_1(vec2<f32>(1073f, -1184f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(729f, -134f)), vec4<u32>(4294967295u, 4294967295u, 22111u, 92207u), false, Struct_1(vec2<f32>(314f, 1562f))), Struct_1(vec2<f32>(-560f, -446f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(1921f, -743f)), vec4<u32>(36365u, 66652u, 0u, 0u), false, Struct_1(vec2<f32>(-1067f, 1676f))), Struct_1(vec2<f32>(-102f, -762f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(475f, 361f)), vec4<u32>(28887u, 33582u, 4294967295u, 25466u), true, Struct_1(vec2<f32>(753f, -1048f))), Struct_1(vec2<f32>(-2364f, 289f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-915f, 2133f)), vec4<u32>(0u, 83530u, 19817u, 0u), false, Struct_1(vec2<f32>(346f, -1706f))), Struct_1(vec2<f32>(-633f, 904f)), false), Struct_4(Struct_2(Struct_1(vec2<f32>(-657f, 175f)), vec4<u32>(1u, 0u, 34427u, 4294967295u), false, Struct_1(vec2<f32>(-675f, 190f))), Struct_1(vec2<f32>(734f, 1601f)), true), Struct_4(Struct_2(Struct_1(vec2<f32>(1220f, -168f)), vec4<u32>(4294967295u, 143524u, 15989u, 0u), false, Struct_1(vec2<f32>(-942f, -1245f))), Struct_1(vec2<f32>(706f, 951f)), false));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-2129f, 942f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 7>();
    var var_0 = -vec2<i32>(arg_1.x, ~(i32(-1i) * -19611i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -657f);
    let var_2 = vec4<i32>(u_input.e.x, -1i, var_0.x, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), 2147483647i), _wgslsmith_add_i32(var_0.x, u_input.e.x)));
    var var_3 = Struct_2(Struct_1(arg_0.yz), max(u_input.c, vec4<u32>(~(~62769u), 31871u, 1u, u_input.c.x)), false, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -1221f)));
    return var_3.d;
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: f32) -> vec3<f32> {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var var_0 = false;
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_0.e - vec4<f32>(-1103f, 908f, arg_0.c, 1868f)))))), u_input.e.yxw));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a.a)));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-485f - _wgslsmith_f_op_f32(-374f + arg_2)), 994f, _wgslsmith_f_op_f32(round(global2.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.e.wzy)))))));
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_2, 7>();
    global1 = array<Struct_4, 30>();
    var var_0 = vec2<i32>(_wgslsmith_add_i32(24478i, 6171i), -u_input.a.x | ~22184i);
    global2 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(771f, global2.a.x, _wgslsmith_f_op_f32(abs(1281f)), -811f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 1000f, -1007f, 1056f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, -1932f, 1423f), vec4<f32>(global2.a.x, global2.a.x, 1139f, global2.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), 1235f, _wgslsmith_f_op_f32(ceil(global2.a.x)), global2.a.x))), -min(reverseBits(u_input.e.yzw) ^ u_input.e.wxx, min(u_input.e.xzy, _wgslsmith_sub_vec3_i32(u_input.e.yyw, u_input.e.xzy))));
    let var_1 = !(!(!any(vec3<bool>(false, true, true))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(true, vec4<u32>(u_input.d.x, 25318u, 4294967295u, 4294967295u), global2.a.x, u_input.d, vec4<f32>(-1000f, -295f, global2.a.x, 339f)), vec2<bool>(false, false), -306f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 605f, 1000f) + vec3<f32>(global2.a.x, 925f, -1709f)), true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(var_1, vec4<u32>(u_input.c.x, u_input.d.x, 0u, u_input.d.x), global2.a.x, vec3<u32>(83016u, u_input.d.x, 4294967295u), vec4<f32>(global2.a.x, -274f, global2.a.x, global2.a.x)), vec2<bool>(var_1, true), -403f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, global2.a.x)), _wgslsmith_f_op_f32(global2.a.x - global2.a.x), _wgslsmith_f_op_f32(global2.a.x - global2.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(~abs(u_input.c.zwz));
    let x = u_input.a;
    s_output = func_1();
}

