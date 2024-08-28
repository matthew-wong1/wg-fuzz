struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<f32>(149f, -1588f, 1719f, -346f), Struct_1(vec3<i32>(15058i, i32(-2147483648), 1i), 1u, vec3<f32>(-1151f, 193f, -1000f), vec2<u32>(67971u, 39735u)), 0i, 0i, vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_2(vec4<f32>(-1349f, -1427f, 487f, -726f), Struct_1(vec3<i32>(-49857i, -19158i, 0i), 1u, vec3<f32>(-408f, -1231f, 1131f), vec2<u32>(1u, 36533u)), 0i, 0i, vec4<u32>(1u, 0u, 52923u, 0u)), Struct_2(vec4<f32>(-1944f, -872f, 2622f, -473f), Struct_1(vec3<i32>(1751i, 0i, 36993i), 0u, vec3<f32>(955f, -289f, 306f), vec2<u32>(43431u, 51093u)), 2147483647i, 3868i, vec4<u32>(22039u, 0u, 973u, 27974u)), Struct_2(vec4<f32>(-884f, 1601f, 1000f, 989f), Struct_1(vec3<i32>(-26705i, -33109i, -1i), 68167u, vec3<f32>(222f, -1424f, -669f), vec2<u32>(31156u, 25467u)), 21771i, -775i, vec4<u32>(57059u, 20939u, 24322u, 10761u)), Struct_2(vec4<f32>(-244f, -1633f, -242f, -514f), Struct_1(vec3<i32>(-1i, -33207i, 21294i), 64102u, vec3<f32>(-1129f, 1506f, 1000f), vec2<u32>(0u, 4294967295u)), -6108i, 11704i, vec4<u32>(8418u, 64467u, 54066u, 4294967295u)), Struct_2(vec4<f32>(-1618f, -245f, 758f, 1962f), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), 945u, vec3<f32>(414f, -1150f, 1042f), vec2<u32>(0u, 2890u)), i32(-2147483648), 42083i, vec4<u32>(4294967295u, 17571u, 4294967295u, 35468u)), Struct_2(vec4<f32>(-111f, 110f, 551f, 558f), Struct_1(vec3<i32>(-1i, -1i, -1i), 20927u, vec3<f32>(238f, 410f, -697f), vec2<u32>(7754u, 22725u)), 2147483647i, 11772i, vec4<u32>(22254u, 47811u, 1u, 3712u)), Struct_2(vec4<f32>(1396f, 944f, 801f, 1829f), Struct_1(vec3<i32>(-1i, -18969i, 2147483647i), 5068u, vec3<f32>(-1000f, -623f, 842f), vec2<u32>(4294967295u, 86367u)), 2147483647i, 1i, vec4<u32>(7880u, 12269u, 1u, 49368u)), Struct_2(vec4<f32>(1423f, -493f, -299f, -201f), Struct_1(vec3<i32>(0i, -34946i, 0i), 21742u, vec3<f32>(-1071f, -104f, -531f), vec2<u32>(4294967295u, 4294967295u)), -19804i, 2147483647i, vec4<u32>(29810u, 41874u, 1828u, 73743u)), Struct_2(vec4<f32>(272f, 1059f, 1288f, 1242f), Struct_1(vec3<i32>(1i, 6366i, -4797i), 0u, vec3<f32>(777f, 888f, -1230f), vec2<u32>(18228u, 12581u)), i32(-2147483648), 0i, vec4<u32>(8948u, 1u, 35677u, 3465u)), Struct_2(vec4<f32>(-503f, -1494f, 414f, -777f), Struct_1(vec3<i32>(-26141i, 8602i, 0i), 91852u, vec3<f32>(1067f, -776f, 851f), vec2<u32>(14273u, 1u)), -11168i, -10196i, vec4<u32>(4294967295u, 0u, 0u, 16576u)), Struct_2(vec4<f32>(555f, -1920f, -1618f, -1097f), Struct_1(vec3<i32>(-37177i, i32(-2147483648), -28116i), 1u, vec3<f32>(-1072f, 510f, -177f), vec2<u32>(25626u, 4294967295u)), 1i, 38630i, vec4<u32>(1u, 47012u, 0u, 86867u)), Struct_2(vec4<f32>(251f, -1727f, -1540f, 1911f), Struct_1(vec3<i32>(25413i, 0i, -12281i), 4294967295u, vec3<f32>(-205f, -184f, -270f), vec2<u32>(4294967295u, 6788u)), 2147483647i, -1i, vec4<u32>(0u, 4294967295u, 1u, 0u)), Struct_2(vec4<f32>(1999f, -471f, 713f, 1406f), Struct_1(vec3<i32>(i32(-2147483648), -41356i, -4033i), 1u, vec3<f32>(1670f, 1807f, 214f), vec2<u32>(4294967295u, 51901u)), i32(-2147483648), 8441i, vec4<u32>(2333u, 1358u, 43717u, 24500u)), Struct_2(vec4<f32>(1000f, 775f, -1599f, -249f), Struct_1(vec3<i32>(56184i, 2147483647i, 0i), 8029u, vec3<f32>(671f, -1371f, 612f), vec2<u32>(1u, 1u)), i32(-2147483648), -1i, vec4<u32>(1u, 1878u, 1u, 0u)), Struct_2(vec4<f32>(-795f, -1186f, -435f, 531f), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), 4294967295u, vec3<f32>(-1306f, 1123f, 643f), vec2<u32>(22079u, 44211u)), 22264i, 1i, vec4<u32>(1u, 42628u, 4294967295u, 37175u)), Struct_2(vec4<f32>(-1363f, -1292f, 1874f, -1056f), Struct_1(vec3<i32>(1i, -26460i, 0i), 4104u, vec3<f32>(822f, -1000f, 1162f), vec2<u32>(42822u, 4294967295u)), -24650i, 2147483647i, vec4<u32>(15330u, 1u, 49056u, 4294967295u)), Struct_2(vec4<f32>(-1525f, -638f, -1000f, -443f), Struct_1(vec3<i32>(9595i, -17586i, 2147483647i), 89469u, vec3<f32>(165f, -2428f, 882f), vec2<u32>(42542u, 0u)), 1i, 20037i, vec4<u32>(292u, 88923u, 1u, 64860u)), Struct_2(vec4<f32>(823f, 450f, -1253f, 1251f), Struct_1(vec3<i32>(2147483647i, -30827i, 2147483647i), 11254u, vec3<f32>(-1131f, -359f, -1825f), vec2<u32>(551u, 1u)), 25614i, 33176i, vec4<u32>(14711u, 4294967295u, 1143u, 1u)), Struct_2(vec4<f32>(-863f, 650f, 732f, -349f), Struct_1(vec3<i32>(-1i, 16399i, 51980i), 4294967295u, vec3<f32>(1177f, 942f, -209f), vec2<u32>(0u, 104411u)), 6212i, 26717i, vec4<u32>(19765u, 23515u, 1u, 4294967295u)), Struct_2(vec4<f32>(483f, -328f, -474f, 347f), Struct_1(vec3<i32>(56815i, 57594i, 2147483647i), 0u, vec3<f32>(871f, 1453f, 197f), vec2<u32>(4294967295u, 37459u)), 13633i, -40971i, vec4<u32>(4294967295u, 30548u, 29259u, 4294967295u)), Struct_2(vec4<f32>(524f, 734f, 391f, 255f), Struct_1(vec3<i32>(-25025i, -290i, i32(-2147483648)), 0u, vec3<f32>(-415f, -1632f, -1471f), vec2<u32>(4294967295u, 4294967295u)), 2782i, 2147483647i, vec4<u32>(1u, 13548u, 1u, 4294967295u)), Struct_2(vec4<f32>(1207f, 1142f, 958f, 331f), Struct_1(vec3<i32>(0i, 1i, 1i), 4294967295u, vec3<f32>(686f, 1728f, -467f), vec2<u32>(28084u, 75661u)), -1i, 17680i, vec4<u32>(11824u, 12276u, 1u, 40341u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_mult_vec4_u32(~max(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<u32>(~106597u, ~0u, u_input.c, ~u_input.c)), countOneBits(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) & vec4<u32>(4294967295u, u_input.c | u_input.c, 17041u, select(7886u, 98058u, true))));
    global0 = array<Struct_2, 23>();
    var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 19873u, var_0.x, u_input.c), vec4<u32>(1u, u_input.c, 1u, u_input.c) & vec4<u32>(u_input.c, u_input.c, 13271u, 4294967295u)) >> (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 79714u, 1u, 36068u), max(vec4<u32>(var_0.x, u_input.c, 1u, u_input.c), vec4<u32>(1u, var_0.x, 42077u, u_input.c)), select(vec4<u32>(24929u, var_0.x, var_0.x, 0u), vec4<u32>(16254u, 35080u, u_input.c, 30430u), vec4<bool>(false, false, true, true))) % vec4<u32>(32u)), ~vec4<u32>(abs(_wgslsmith_sub_u32(33848u, u_input.c)), var_0.x, u_input.c, reverseBits(~58122u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(988f, -375f, -223f), _wgslsmith_div_vec3_f32(vec3<f32>(902f, 1110f, 998f), vec3<f32>(1000f, 1511f, -1089f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, -2451f)), _wgslsmith_f_op_f32(f32(-1f) * -1142f), _wgslsmith_f_op_f32(f32(-1f) * -2172f))))));
    return u_input.c;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_2, 23>();
    let var_0 = abs(16086u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(714f, 693f, 1000f, 765f), vec4<f32>(-600f, -509f, 836f, -1297f)))))), abs(u_input.b.xz), global0[_wgslsmith_index_u32(7459u, 23u)], select(_wgslsmith_div_vec2_u32(vec2<u32>(func_3(), _wgslsmith_mod_u32(0u, 4294967295u)), vec2<u32>(3180u, 34479u)), vec2<u32>(_wgslsmith_sub_u32(var_0, u_input.c), _wgslsmith_mod_u32(var_0, 1u)) & ~firstLeadingBit(vec2<u32>(0u, u_input.c)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global0 = array<Struct_2, 23>();
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(0i, 2147483647i, var_1.b.x) ^ vec3<i32>(var_1.b.x, var_1.b.x, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-6694i, -2147483647i, 2147483647i), vec3<i32>(1i, var_1.b.x, -11872i))), var_1.c.c, var_1.c.c), 1u, vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1186f)))), reverseBits(vec2<u32>(var_0, 0u) & countOneBits(~var_1.d)));
    return var_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_5) -> Struct_3 {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 633f, 457f, -1406f) - vec4<f32>(-1196f, 1046f, 2265f, -1689f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(658f, 407f, -1157f, 111f))))))), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.a), Struct_5(any(vec4<bool>(true, true, u_input.c > 1u, true))));
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(6061u, var_0.d.x, ~(~firstLeadingBit(u_input.c))), var_0.c.e.ywx);
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_2 = Struct_5(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
    let var_3 = Struct_5(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_1.zy, _wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.c, 46737u) >> (var_0.d % vec2<u32>(32u))), vec2<u32>(~34949u, ~var_0.d.x)), 43617i, var_0.b.x);
}

