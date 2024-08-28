struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-31023i, vec4<f32>(-302f, 795f, 1538f, -1834f)), Struct_2(-1i, vec4<f32>(719f, 870f, -742f, 2757f)), Struct_2(i32(-2147483648), vec4<f32>(-1901f, 1778f, -1038f, 747f)), Struct_2(26110i, vec4<f32>(-809f, -211f, 276f, -301f)), Struct_2(-1i, vec4<f32>(387f, 1919f, 464f, -178f)), Struct_2(19657i, vec4<f32>(259f, 1144f, -1758f, -272f)), Struct_2(2147483647i, vec4<f32>(393f, -1256f, 344f, -225f)));

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(vec3<u32>(4294967295u, 0u, 6064u), true, vec4<f32>(1373f, 417f, -1806f, 136f), true, vec4<bool>(true, false, true, true)), vec2<f32>(748f, -758f), vec4<f32>(-400f, -720f, -715f, 1000f)), Struct_3(Struct_1(vec3<u32>(24220u, 0u, 1u), false, vec4<f32>(-255f, 1797f, -2249f, 1000f), true, vec4<bool>(true, true, true, true)), vec2<f32>(1495f, -1000f), vec4<f32>(1000f, -220f, -204f, -1045f)), Struct_3(Struct_1(vec3<u32>(36436u, 108u, 0u), true, vec4<f32>(-423f, 1523f, 400f, 630f), false, vec4<bool>(false, true, true, false)), vec2<f32>(792f, -196f), vec4<f32>(216f, 1488f, -725f, 150f)), Struct_3(Struct_1(vec3<u32>(54621u, 0u, 11364u), false, vec4<f32>(-1000f, 152f, 435f, 385f), true, vec4<bool>(false, true, true, true)), vec2<f32>(-588f, 522f), vec4<f32>(-1812f, 568f, 276f, 1062f)), Struct_3(Struct_1(vec3<u32>(25723u, 12824u, 0u), false, vec4<f32>(550f, -1234f, -833f, -1045f), false, vec4<bool>(false, false, true, false)), vec2<f32>(1276f, -291f), vec4<f32>(-1084f, -1629f, 1000f, 309f)), Struct_3(Struct_1(vec3<u32>(0u, 1u, 0u), false, vec4<f32>(-927f, 1237f, -568f, -1973f), false, vec4<bool>(true, false, false, false)), vec2<f32>(1001f, -710f), vec4<f32>(-1633f, 828f, 2949f, 373f)), Struct_3(Struct_1(vec3<u32>(32727u, 1u, 1u), true, vec4<f32>(-387f, -783f, -777f, -2115f), false, vec4<bool>(false, true, true, false)), vec2<f32>(-251f, -961f), vec4<f32>(1503f, -457f, -529f, -2950f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 95273u, 0u), true, vec4<f32>(421f, 1314f, 633f, 472f), false, vec4<bool>(false, true, false, true)), vec2<f32>(1228f, 813f), vec4<f32>(-521f, 1144f, -1740f, 207f)), Struct_3(Struct_1(vec3<u32>(38357u, 4294967295u, 14289u), true, vec4<f32>(-1113f, -1209f, 139f, 1127f), false, vec4<bool>(false, false, false, false)), vec2<f32>(1000f, 355f), vec4<f32>(-1382f, -1000f, -950f, -158f)), Struct_3(Struct_1(vec3<u32>(1u, 0u, 62496u), false, vec4<f32>(-765f, -1000f, -1025f, 2169f), false, vec4<bool>(false, false, true, false)), vec2<f32>(714f, -1309f), vec4<f32>(-767f, -1641f, -394f, 1000f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 4294967295u, 17255u), true, vec4<f32>(1093f, 593f, -394f, -196f), false, vec4<bool>(false, false, false, true)), vec2<f32>(-494f, -1125f), vec4<f32>(-113f, 1122f, -629f, 640f)), Struct_3(Struct_1(vec3<u32>(0u, 32449u, 1u), false, vec4<f32>(497f, 551f, 921f, 737f), true, vec4<bool>(false, false, true, false)), vec2<f32>(-515f, 436f), vec4<f32>(157f, -647f, 374f, 687f)), Struct_3(Struct_1(vec3<u32>(69645u, 4294967295u, 0u), true, vec4<f32>(363f, 811f, 1402f, -288f), false, vec4<bool>(false, true, true, true)), vec2<f32>(217f, 1458f), vec4<f32>(350f, -754f, 1000f, 372f)), Struct_3(Struct_1(vec3<u32>(23535u, 73573u, 48067u), false, vec4<f32>(301f, -1000f, 1442f, 111f), false, vec4<bool>(true, false, false, false)), vec2<f32>(503f, -2010f), vec4<f32>(-395f, -239f, -312f, 1000f)), Struct_3(Struct_1(vec3<u32>(7013u, 75487u, 1u), false, vec4<f32>(-1000f, -409f, -1044f, 1304f), true, vec4<bool>(true, true, false, false)), vec2<f32>(1856f, -614f), vec4<f32>(741f, 263f, 188f, 1455f)), Struct_3(Struct_1(vec3<u32>(56003u, 1768u, 4294967295u), false, vec4<f32>(458f, -1000f, -143f, -888f), false, vec4<bool>(true, true, true, false)), vec2<f32>(577f, -1553f), vec4<f32>(1489f, 288f, -2032f, -1000f)), Struct_3(Struct_1(vec3<u32>(19811u, 16838u, 0u), false, vec4<f32>(1888f, -550f, 1557f, -548f), false, vec4<bool>(false, true, false, false)), vec2<f32>(-1492f, -282f), vec4<f32>(524f, -509f, 392f, -201f)), Struct_3(Struct_1(vec3<u32>(4222u, 72194u, 66462u), false, vec4<f32>(1000f, 557f, -1392f, 185f), true, vec4<bool>(false, false, true, true)), vec2<f32>(-625f, 1294f), vec4<f32>(-2253f, -858f, -800f, -1221f)), Struct_3(Struct_1(vec3<u32>(5136u, 22640u, 2651u), true, vec4<f32>(1204f, -949f, 221f, -941f), true, vec4<bool>(true, true, false, false)), vec2<f32>(114f, 287f), vec4<f32>(978f, 799f, -291f, -172f)), Struct_3(Struct_1(vec3<u32>(37261u, 9852u, 4294967295u), false, vec4<f32>(269f, 494f, 494f, 1540f), true, vec4<bool>(true, true, false, false)), vec2<f32>(-354f, 944f), vec4<f32>(-539f, -976f, -310f, -1524f)), Struct_3(Struct_1(vec3<u32>(0u, 38463u, 0u), false, vec4<f32>(1410f, -1000f, -538f, -538f), false, vec4<bool>(false, true, false, true)), vec2<f32>(935f, 1808f), vec4<f32>(2120f, -1052f, 1000f, -1000f)), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 80876u), true, vec4<f32>(2008f, 1507f, 764f, -1000f), true, vec4<bool>(false, false, true, true)), vec2<f32>(1314f, 339f), vec4<f32>(1000f, 239f, 1543f, -112f)), Struct_3(Struct_1(vec3<u32>(43292u, 1u, 4294967295u), false, vec4<f32>(533f, -194f, -160f, 3721f), true, vec4<bool>(true, true, false, false)), vec2<f32>(1182f, 209f), vec4<f32>(223f, -1980f, 666f, 1959f)));

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(62118u, 7174u, 92243u, 19539u), vec4<u32>(26346u, 1u, 1u, 17022u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(22056u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 17822u, 43489u, 4294967295u), vec4<u32>(1u, 4294967295u, 30326u, 47736u), vec4<u32>(0u, 4294967295u, 11021u, 4009u), vec4<u32>(4294967295u, 0u, 53168u, 0u), vec4<u32>(0u, 1u, 4294967295u, 65406u), vec4<u32>(0u, 1u, 4294967295u, 79300u), vec4<u32>(38338u, 26856u, 33664u, 42456u), vec4<u32>(28225u, 1u, 3618u, 0u), vec4<u32>(31428u, 110692u, 0u, 0u), vec4<u32>(32283u, 1u, 31574u, 371u), vec4<u32>(1u, 11761u, 10264u, 9394u), vec4<u32>(32194u, 1u, 4294967295u, 42195u), vec4<u32>(4294967295u, 10712u, 0u, 4294967295u), vec4<u32>(1u, 0u, 30160u, 0u), vec4<u32>(4294967295u, 0u, 1215u, 21265u));

var<private> global3: f32;

var<private> global4: vec3<i32> = vec3<i32>(-6493i, -4832i, 0i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<u32> {
    global2 = array<vec4<u32>, 19>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~17951u, ~(~2463u)), ~firstTrailingBit(~(~vec2<u32>(u_input.b, 4566u)))), 7u)];
    let var_1 = _wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(-var_0.b.x));
    let var_2 = select(vec2<bool>(true, !(all(vec2<bool>(true, true)) | true)), !vec2<bool>(all(vec2<bool>(false, false)), true), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)));
    global0 = array<Struct_2, 7>();
    return vec3<u32>(~u_input.b, abs(~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.b)), min(min(_wgslsmith_mod_u32(49134u, 19511u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(14743u, u_input.b, 0u))) | ~abs(1u), 4294967295u));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = ~(_wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, 21665i, 0i, u_input.e.x), firstTrailingBit(vec4<i32>(global4.x, arg_0, -34556i, 1i)), true), vec4<i32>(-arg_0, 2147483647i, abs(arg_0), firstLeadingBit(42925i))) | _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global4.x, -43444i, -25736i, -11367i), abs(vec4<i32>(global4.x, u_input.a, 1i, -2147483647i)), vec4<i32>(2147483647i, -23892i, arg_0, 1618i)), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, u_input.e.x, 1151i, 32491i), vec4<i32>(global4.x, arg_0, 0i, global4.x) & vec4<i32>(arg_0, global4.x, global4.x, -1i))));
    global2 = array<vec4<u32>, 19>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(min(~vec3<u32>(u_input.b, u_input.b, 30314u), ~vec3<u32>(1u, 0u, u_input.b)), abs(vec3<u32>(1u, u_input.b, u_input.b))), ~max(func_3(), vec3<u32>(1u, 1u, 1u))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -458f, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)))), true, vec4<bool>(!(!any(vec4<bool>(true, false, true, true))), true, !(!(23496u >= u_input.b)), select(true, u_input.a < -1i, all(vec2<bool>(true, true)))));
    var var_2 = max(global4.xy, abs(_wgslsmith_clamp_vec2_i32(select(~vec2<i32>(-30427i, -2147483647i), ~vec2<i32>(-19040i, -26760i), false), u_input.e.xx, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, u_input.e.x), var_0.yy), abs(var_0.yz)))));
    var var_3 = all(var_1.e);
    return Struct_3(Struct_1(var_1.a, !(!(!var_1.d)), var_1.c, !any(var_1.e), vec4<bool>(var_1.e.x | !var_1.e.x, !var_1.d, !(!var_1.e.x), all(select(vec3<bool>(var_1.d, true, var_1.b), vec3<bool>(false, true, false), vec3<bool>(false, false, var_1.b))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1.c.zy, vec2<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), _wgslsmith_f_op_f32(835f * var_1.c.x)), select(var_1.e.yy, var_1.e.yx, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1708f, var_1.c.x)))))), var_1.c);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(u_input.e.x);
    let var_1 = -23172i;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, 824f) + var_0.c.x)))) != 396f;
    let var_3 = var_1;
    global2 = array<vec4<u32>, 19>();
    return global0[_wgslsmith_index_u32(func_2(999i).a.a.x, 7u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    global4 = vec3<i32>(-arg_0.a, u_input.a, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, -1i, global4.x, -23597i) ^ arg_1, _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(0i, global4.x, -32122i, global4.x), vec4<i32>(global4.x, 2147483647i, global4.x, arg_0.a))), _wgslsmith_mod_vec4_i32(-vec4<i32>(global4.x, 0i, -2147483647i, 0i), vec4<i32>(-1i, arg_0.a, global4.x, arg_0.a)) & -_wgslsmith_add_vec4_i32(arg_1, vec4<i32>(-1i, 0i, global4.x, 2147483647i))));
    let var_0 = Struct_3(Struct_1(vec3<u32>(min(abs(6924u), reverseBits(u_input.b)), u_input.b, u_input.b | 0u), true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, 1000f), arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(trunc(arg_0.b))), false, !func_2(arg_1.x).a.e), _wgslsmith_div_vec2_f32(arg_0.b.yz, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x + 370f), false)), -487f)), arg_0.b);
    let var_1 = u_input.b;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 7u)];
    var var_3 = var_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-116f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1392f) + -405f));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    global0 = array<Struct_2, 7>();
    let var_0 = 2147483647i;
    global1 = array<Struct_3, 23>();
    let var_1 = all(vec4<bool>(false, true, false, true));
    global4 = u_input.e;
    return _wgslsmith_sub_i32(25829i, arg_2 >> (~1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(~u_input.b), 7u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1436f, 1158f, -1000f, 331f))) + vec4<f32>(var_0.b.x, var_0.b.x, 669f, -1276f)), vec4<bool>(4848u >= u_input.b, true, true, all(vec4<bool>(false, true, false, true))))))));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -616f);
    var_1 = var_0.b;
    let var_2 = Struct_2(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1570f)))), _wgslsmith_f_op_f32(func_4(func_1(), vec4<i32>(abs(17970i), 840i, global4.x | -8081i, firstTrailingBit(global4.x)))), select(var_0.a, -(0i | global4.x), true), _wgslsmith_f_op_vec2_f32(-var_1.xy)), var_0.b);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -1120f))))) + func_2(~(-u_input.e.x)).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x);
}

