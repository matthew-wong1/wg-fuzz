struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec4<f32>(-122f, -1000f, -1268f, 238f), vec2<f32>(1000f, -1303f), vec3<i32>(-1i, 0i, -1i), Struct_3(true, Struct_2(vec2<u32>(4294967295u, 1u), -42559i, vec2<f32>(-571f, 211f), vec4<bool>(false, true, true, true), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-437f, 1130f), vec3<bool>(false, true, false)))), Struct_4(vec4<f32>(1475f, 1625f, -619f, 187f), vec2<f32>(413f, 1282f), vec3<i32>(0i, -77087i, -1i), Struct_3(true, Struct_2(vec2<u32>(24264u, 4294967295u), -23010i, vec2<f32>(-1679f, 887f), vec4<bool>(true, true, true, true), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(-1895f, 1649f), vec3<bool>(false, true, false)))), Struct_4(vec4<f32>(451f, -1051f, 406f, 1174f), vec2<f32>(916f, -2032f), vec3<i32>(1i, 0i, -46454i), Struct_3(true, Struct_2(vec2<u32>(25722u, 1u), 0i, vec2<f32>(-1000f, -200f), vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, false, false, true), vec2<f32>(-1521f, -900f), vec3<bool>(false, false, false)))), Struct_4(vec4<f32>(133f, 493f, 498f, 1363f), vec2<f32>(1000f, 486f), vec3<i32>(-66994i, -1i, i32(-2147483648)), Struct_3(false, Struct_2(vec2<u32>(28770u, 4294967295u), -16547i, vec2<f32>(817f, -712f), vec4<bool>(true, false, true, false), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-287f, 1257f), vec3<bool>(true, true, false)))), Struct_4(vec4<f32>(968f, 197f, -216f, 136f), vec2<f32>(-1165f, -1641f), vec3<i32>(28589i, i32(-2147483648), -24727i), Struct_3(false, Struct_2(vec2<u32>(1u, 28122u), -1i, vec2<f32>(-832f, -1161f), vec4<bool>(true, true, true, true), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, true, true, false), vec2<f32>(-675f, -1749f), vec3<bool>(true, false, true)))), Struct_4(vec4<f32>(-1797f, -151f, 879f, -695f), vec2<f32>(1650f, 292f), vec3<i32>(-41581i, i32(-2147483648), 1i), Struct_3(false, Struct_2(vec2<u32>(54666u, 4294967295u), -20994i, vec2<f32>(852f, 951f), vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(733f, 384f), vec3<bool>(true, false, false)))), Struct_4(vec4<f32>(619f, 602f, -1356f, 725f), vec2<f32>(-415f, -2314f), vec3<i32>(51642i, -40492i, 19333i), Struct_3(false, Struct_2(vec2<u32>(0u, 9981u), -13299i, vec2<f32>(1462f, 107f), vec4<bool>(true, false, false, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(-1574f, -1000f), vec3<bool>(true, true, false)))), Struct_4(vec4<f32>(1000f, -1000f, 1000f, -357f), vec2<f32>(844f, 836f), vec3<i32>(1i, 37554i, i32(-2147483648)), Struct_3(false, Struct_2(vec2<u32>(4294967295u, 19508u), 1i, vec2<f32>(-1240f, -1307f), vec4<bool>(false, false, false, false), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(850f, -1412f), vec3<bool>(true, true, true)))), Struct_4(vec4<f32>(-303f, 1540f, 329f, 208f), vec2<f32>(-659f, -1729f), vec3<i32>(2147483647i, -1i, -33762i), Struct_3(true, Struct_2(vec2<u32>(77680u, 7247u), -78734i, vec2<f32>(1000f, -254f), vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(1000f, 500f), vec3<bool>(true, false, true)))), Struct_4(vec4<f32>(283f, -1523f, 1214f, 394f), vec2<f32>(-365f, 1906f), vec3<i32>(0i, -145i, 56878i), Struct_3(true, Struct_2(vec2<u32>(4294967295u, 519u), 3309i, vec2<f32>(-1132f, 2482f), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-1047f, 551f), vec3<bool>(true, false, true)))), Struct_4(vec4<f32>(1000f, 528f, -664f, 133f), vec2<f32>(-638f, 827f), vec3<i32>(-4988i, -25254i, 23655i), Struct_3(true, Struct_2(vec2<u32>(53128u, 95257u), 2147483647i, vec2<f32>(-539f, 1955f), vec4<bool>(true, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-234f, -1000f), vec3<bool>(true, true, true)))), Struct_4(vec4<f32>(-187f, 101f, -770f, -989f), vec2<f32>(722f, -1913f), vec3<i32>(1i, -15900i, 2147483647i), Struct_3(false, Struct_2(vec2<u32>(1u, 4294967295u), i32(-2147483648), vec2<f32>(-2041f, -1268f), vec4<bool>(false, false, false, true), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-1439f, -1000f), vec3<bool>(false, false, true)))), Struct_4(vec4<f32>(299f, -242f, -546f, -431f), vec2<f32>(-146f, -645f), vec3<i32>(94162i, -1i, -1i), Struct_3(false, Struct_2(vec2<u32>(82449u, 49130u), -1i, vec2<f32>(2178f, -217f), vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(1311f, -1616f), vec3<bool>(true, false, false)))));

var<private> global1: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(390f, -1208f, 157f), vec3<f32>(665f, -675f, -1000f), vec3<f32>(1792f, -487f, 1602f), vec3<f32>(1595f, 266f, 292f), vec3<f32>(-1000f, 1912f, -436f), vec3<f32>(-516f, 1923f, 719f), vec3<f32>(114f, -1296f, 428f), vec3<f32>(796f, 684f, 1155f), vec3<f32>(-2483f, 1381f, 212f), vec3<f32>(-1270f, -134f, -435f), vec3<f32>(1597f, 212f, 508f), vec3<f32>(-581f, -234f, -1078f), vec3<f32>(893f, -1920f, -884f), vec3<f32>(186f, -1606f, 1180f), vec3<f32>(1384f, 472f, -947f));

var<private> global2: array<f32, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    global2 = array<f32, 26>();
    let var_0 = 1i;
    global1 = array<vec3<f32>, 15>();
    return vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true))), !any(vec4<bool>(true, true, true, true)), 40380u <= u_input.a.x);
}

fn func_2() -> vec2<i32> {
    global0 = array<Struct_4, 13>();
    global2 = array<f32, 26>();
    global0 = array<Struct_4, 13>();
    var var_0 = Struct_1(select(!vec4<bool>(select(false, true, true), true, any(vec3<bool>(false, true, false)), any(vec4<bool>(false, false, false, true))), vec4<bool>(false, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, false)) & true), vec4<bool>(true, true, true, true)), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), func_3(), vec3<bool>(false, true, false))));
    let var_1 = Struct_2(vec2<u32>(69431u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, u_input.a.x, 58066u) << (vec3<u32>(1u, u_input.a.x, 0u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), ~vec3<u32>(16852u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x)))), firstLeadingBit(~(-abs(2147483647i))), vec2<f32>(global2[_wgslsmith_index_u32(90814u, 26u)], 1293f), vec4<bool>(!var_0.c.x, !all(!vec4<bool>(var_0.c.x, false, var_0.a.x, var_0.c.x)), var_0.c.x, !(u_input.a.x >= firstLeadingBit(4294967295u))), !func_3());
    return abs(_wgslsmith_div_vec2_i32(vec2<i32>(abs(-1i), var_1.b >> (0u % 32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.b) & vec2<i32>(var_1.b, 23464i), vec2<i32>(var_1.b, -29539i))) | vec2<i32>(var_1.b, 2147483647i));
}

fn func_1() -> Struct_3 {
    let var_0 = reverseBits(max(-vec4<i32>(1i, -39066i << (u_input.a.x % 32u), -15317i, abs(-50151i)), _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(-17410i, -2147483647i, -8351i, -18628i)), ~vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = -vec2<i32>(56209i, _wgslsmith_mult_i32(~var_0.x, var_0.x)) & select(func_2() & firstTrailingBit(select(vec2<i32>(28292i, 66846i), vec2<i32>(1i, 14044i), true)), var_0.ww, vec2<bool>(true, ~var_0.x > max(var_0.x, 0i)));
    return Struct_3(all(vec3<bool>(true, true, true)), Struct_2(vec2<u32>(~9664u, u_input.a.x << (u_input.a.x % 32u)), abs(_wgslsmith_dot_vec2_i32(var_0.wz, vec2<i32>(var_0.x, 19145i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(151f, global2[_wgslsmith_index_u32(27773u, 26u)]), vec2<f32>(-163f, global2[_wgslsmith_index_u32(0u, 26u)]), false)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1456f, global2[_wgslsmith_index_u32(1u, 26u)]) - vec2<f32>(-115f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(7850u, 26u)]))))), vec4<bool>(true, !all(vec4<bool>(true, false, false, true)), false, true | select(false, false, false)), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, func_3().x, any(vec4<bool>(true, false, true, false))))), Struct_1(select(vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), var_0.x < var_1.x), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, false), vec4<bool>(true, any(vec3<bool>(false, true, true)), 20602u > u_input.a.x, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(389f, 1456f)))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, true))), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)] <= 1614f, true, all(vec3<bool>(false, true, true))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_4 {
    let var_0 = Struct_1(vec4<bool>(arg_0.a, arg_2, false, all(vec4<bool>(!arg_0.b.e.x, true, select(arg_0.c.a.x, arg_2, arg_2), arg_2))), arg_0.c.b, !vec3<bool>(!arg_0.c.a.x, true, arg_2));
    let var_1 = abs(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~46496i, 4897i), 2147483647i), arg_0.b.b));
    var var_2 = reverseBits(~(~abs(vec3<u32>(4294967295u, arg_0.b.a.x, 23512u)))) ^ select(vec3<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), countOneBits(25234u)), ~vec3<u32>(~u_input.a.x, 1u, 0u), !arg_0.b.d.xyx);
    let var_3 = abs(min(vec4<i32>(_wgslsmith_add_i32(~(-1i), 0i), var_1.x, 7497i, min(_wgslsmith_add_i32(var_1.x, 1i), func_2().x)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(~var_1.x, 1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-18082i, arg_0.b.b), vec2<i32>(arg_0.b.b, arg_0.b.b)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_1.x, arg_0.b.b), var_1), var_1 >> (u_input.a % vec2<u32>(32u))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1039f, -1499f, 144f, 1142f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, 1000f, arg_1.x, -2341f) * vec4<f32>(-466f, global2[_wgslsmith_index_u32(arg_0.b.a.x, 26u)], arg_0.c.b.x, 786f))))));
    return global0[_wgslsmith_index_u32((u_input.a.x >> (min(~(36439u << (var_2.x % 32u)), ~1u) % 32u)) << (_wgslsmith_sub_u32(select(1u, arg_0.b.a.x, false), 54950u) % 32u), 13u)];
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_1(vec4<bool>(all(func_4(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, -247f) + vec2<f32>(arg_0.b.x, 109f)), arg_3.d.c.a.x).d.c.a), max(~arg_1.d.b.a.x, firstLeadingBit(u_input.a.x)) != _wgslsmith_sub_u32(reverseBits(arg_1.d.b.a.x), arg_1.d.b.a.x), true, !(!arg_0.d.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(516f - arg_3.d.b.c.x), _wgslsmith_div_f32(arg_3.b.x, -589f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.d.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, 1736f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.d.b.c + arg_0.a.yz) * vec2<f32>(arg_3.a.x, -108f))), arg_0.d.b.d.x)), !(!select(func_1().b.e, arg_0.d.c.c, arg_1.d.c.c)));
    var var_1 = _wgslsmith_f_op_f32(round(1345f));
    var var_2 = func_4(arg_0.d, _wgslsmith_f_op_vec2_f32(-arg_0.d.c.b), any(func_4(func_1(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(961f, 939f), vec2<f32>(403f, -152f), arg_1.d.b.c.x <= -991f)), func_4(arg_3.d, arg_1.a.yz, arg_1.d.a).d.b.e.x & true).d.b.d)).d;
    var var_3 = arg_0.d.b;
    let var_4 = _wgslsmith_f_op_f32(513f + _wgslsmith_f_op_f32(874f + global2[_wgslsmith_index_u32(1u, 26u)]));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, global2[_wgslsmith_index_u32(u_input.a.x, 26u)])) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])))), func_1().c.b)), any(vec4<bool>(true, true, true, true)) || true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.a.x, 1703u), ~u_input.a.x), ~(~vec2<u32>(u_input.a.x, u_input.a.x))), reverseBits(77594u), ~(~u_input.a.x)), 13u)], ~(~1i), global0[_wgslsmith_index_u32(58071u, 13u)]);
    var_0 = global0[_wgslsmith_index_u32(7656u, 13u)];
    let var_1 = var_0.d.b;
    let var_2 = -_wgslsmith_dot_vec3_i32(min(vec3<i32>(-31333i, var_1.b, -30213i), ~var_0.c) >> (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(14463u, 5191u, 18599u), vec3<u32>(u_input.a.x, 1u, var_0.d.b.a.x)), vec3<u32>(4294967295u, 33452u, u_input.a.x) | vec3<u32>(var_0.d.b.a.x, 119757u, var_1.a.x), vec3<u32>(var_1.a.x, var_0.d.b.a.x, var_0.d.b.a.x)) % vec3<u32>(32u)), var_0.c);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(func_5(func_4(var_0.d, vec2<f32>(-1323f, -640f), var_0.d.b.d.x), func_5(Struct_4(vec4<f32>(var_1.c.x, -898f, var_0.b.x, var_0.a.x), vec2<f32>(394f, 2091f), var_0.c, var_0.d), Struct_4(var_0.a, var_1.c, vec3<i32>(-33825i, -1i, 6641i), var_0.d), 1i, global0[_wgslsmith_index_u32(var_1.a.x, 13u)]), ~var_1.b, Struct_4(vec4<f32>(379f, var_0.d.b.c.x, var_1.c.x, var_0.d.b.c.x), vec2<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 26u)], 1036f), var_0.c, var_0.d)).a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, 2163f, global2[_wgslsmith_index_u32(var_0.d.b.a.x, 26u)], var_1.c.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(639f, 752f, var_1.c.x, var_1.c.x), vec4<f32>(-1008f, -1000f, global2[_wgslsmith_index_u32(0u, 26u)], var_0.b.x))))), var_1.c, ~var_0.c, func_1());
    global2 = array<f32, 26>();
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    var var_4 = Struct_3(false, var_0.d.b, var_0.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(var_0.d.b.a.x ^ 0u), 5418u, var_0.d.b.a.x, ~(~1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.x, 0u, var_4.b.a.x, 9459u), firstTrailingBit(vec4<u32>(var_3.d.b.a.x, var_3.d.b.a.x, 51613u, var_3.d.b.a.x)), ~vec4<u32>(4294967295u, 63999u, u_input.a.x, 1u)) ^ ~(vec4<u32>(var_1.a.x, var_3.d.b.a.x, var_1.a.x, var_3.d.b.a.x) & vec4<u32>(u_input.a.x, var_1.a.x, var_0.d.b.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, var_0.d.b.a.x, 46026u, var_3.d.b.a.x) & vec4<u32>(0u, u_input.a.x, 1u, 20856u), vec4<u32>(var_1.a.x, var_1.a.x, var_3.d.b.a.x, var_3.d.b.a.x)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(7476u, var_4.b.a.x, 1u, var_3.d.b.a.x), vec4<u32>(0u, 1u, u_input.a.x, var_4.b.a.x))), _wgslsmith_mod_i32(var_3.c.x, _wgslsmith_add_i32(~2147483647i, var_0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2[_wgslsmith_index_u32(var_1.a.x, 26u)], 1556f) + global1[_wgslsmith_index_u32(4294967295u, 15u)]) + _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 15u)] - var_3.a.ywy))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(var_4.b.a.x, 15u)], vec3<f32>(2381f, 1827f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, 774f, var_3.d.c.b.x)))), var_0.d.b.a);
}

