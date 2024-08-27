struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(0i, -31858i, -1i), vec3<i32>(68565i, 0i, 35753i), vec3<i32>(9484i, 3337i, 2147483647i), vec3<i32>(39022i, 1i, -25785i), vec3<i32>(2841i, -34945i, -20770i), vec3<i32>(-67679i, 0i, 1i), vec3<i32>(26100i, 33272i, 0i), vec3<i32>(15864i, 4189i, 0i), vec3<i32>(23728i, -29739i, -63517i), vec3<i32>(37102i, -29515i, 2147483647i), vec3<i32>(1i, 2147483647i, 7590i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(0i, i32(-2147483648), -14215i), vec3<i32>(2147483647i, 17918i, -31122i), vec3<i32>(-488i, 18544i, 2147483647i), vec3<i32>(-1i, 13141i, i32(-2147483648)), vec3<i32>(-43671i, 64550i, 3647i), vec3<i32>(-21544i, 1i, 1i), vec3<i32>(-82743i, 6161i, -14543i), vec3<i32>(i32(-2147483648), -25757i, 18045i), vec3<i32>(70463i, -16456i, -14643i), vec3<i32>(12373i, 34388i, -8354i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(1i, i32(-2147483648), -41658i), vec3<i32>(i32(-2147483648), -46443i, 1i), vec3<i32>(-15448i, 8191i, -8613i), vec3<i32>(-15935i, -1i, -1i), vec3<i32>(-1i, 45752i, 0i), vec3<i32>(1i, -19584i, -43369i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)));

var<private> global1: array<u32, 16>;

var<private> global2: array<bool, 17> = array<bool, 17>(false, false, false, true, false, true, true, true, true, false, true, true, true, false, false, false, true);

var<private> global3: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec3<f32>(-424f, 2315f, 847f), false, vec4<bool>(true, true, true, false), -614f, vec2<bool>(true, true)), Struct_1(vec3<f32>(-385f, -1955f, -401f), false, vec4<bool>(false, false, true, true), 630f, vec2<bool>(true, false)), vec2<f32>(-1033f, 495f)), Struct_2(Struct_1(vec3<f32>(-1708f, 1830f, 186f), true, vec4<bool>(false, true, false, false), 1125f, vec2<bool>(true, true)), Struct_1(vec3<f32>(-1301f, 352f, -1453f), false, vec4<bool>(true, false, true, true), -1526f, vec2<bool>(true, false)), vec2<f32>(164f, 1440f)), Struct_2(Struct_1(vec3<f32>(-164f, 813f, -146f), true, vec4<bool>(true, true, false, true), 159f, vec2<bool>(false, true)), Struct_1(vec3<f32>(1000f, -1240f, 436f), false, vec4<bool>(true, false, false, true), -668f, vec2<bool>(true, true)), vec2<f32>(1000f, -1000f)), Struct_2(Struct_1(vec3<f32>(922f, -653f, -2015f), true, vec4<bool>(false, true, false, true), -714f, vec2<bool>(false, true)), Struct_1(vec3<f32>(168f, 509f, 1241f), false, vec4<bool>(false, false, false, false), -315f, vec2<bool>(true, false)), vec2<f32>(1062f, 1014f)), Struct_2(Struct_1(vec3<f32>(407f, -425f, -1000f), true, vec4<bool>(false, true, true, true), 1793f, vec2<bool>(true, true)), Struct_1(vec3<f32>(1000f, -1394f, 517f), true, vec4<bool>(true, true, false, false), 139f, vec2<bool>(false, false)), vec2<f32>(-414f, -1000f)), Struct_2(Struct_1(vec3<f32>(1000f, -2084f, -671f), true, vec4<bool>(true, true, true, true), -623f, vec2<bool>(true, false)), Struct_1(vec3<f32>(-158f, -2011f, -523f), false, vec4<bool>(true, false, false, false), 676f, vec2<bool>(true, false)), vec2<f32>(-1215f, 1195f)), Struct_2(Struct_1(vec3<f32>(1019f, 1000f, -195f), true, vec4<bool>(true, false, true, true), 1232f, vec2<bool>(true, false)), Struct_1(vec3<f32>(-327f, -2172f, -1000f), true, vec4<bool>(false, true, true, false), 562f, vec2<bool>(true, false)), vec2<f32>(299f, 1044f)), Struct_2(Struct_1(vec3<f32>(467f, 1062f, -1309f), true, vec4<bool>(true, false, true, true), -962f, vec2<bool>(true, true)), Struct_1(vec3<f32>(1330f, 2000f, -1000f), true, vec4<bool>(false, false, false, true), 1453f, vec2<bool>(false, true)), vec2<f32>(-939f, 1767f)), Struct_2(Struct_1(vec3<f32>(-552f, -846f, 958f), false, vec4<bool>(true, true, false, false), 960f, vec2<bool>(false, true)), Struct_1(vec3<f32>(305f, -1187f, -973f), false, vec4<bool>(true, true, true, true), -1172f, vec2<bool>(false, true)), vec2<f32>(1651f, 1523f)), Struct_2(Struct_1(vec3<f32>(834f, 1000f, 925f), true, vec4<bool>(false, true, true, true), 609f, vec2<bool>(true, true)), Struct_1(vec3<f32>(621f, 1311f, -858f), true, vec4<bool>(true, false, false, false), 1010f, vec2<bool>(false, false)), vec2<f32>(-1618f, -375f)), Struct_2(Struct_1(vec3<f32>(-916f, -2856f, 888f), true, vec4<bool>(false, false, true, true), -165f, vec2<bool>(false, true)), Struct_1(vec3<f32>(1000f, 924f, -1703f), true, vec4<bool>(true, true, false, true), -668f, vec2<bool>(true, true)), vec2<f32>(-459f, -311f)), Struct_2(Struct_1(vec3<f32>(628f, -456f, -624f), false, vec4<bool>(true, false, false, true), 605f, vec2<bool>(false, false)), Struct_1(vec3<f32>(1302f, 858f, -349f), false, vec4<bool>(false, false, true, true), -1024f, vec2<bool>(true, false)), vec2<f32>(312f, -1065f)), Struct_2(Struct_1(vec3<f32>(879f, 437f, 782f), false, vec4<bool>(true, true, false, false), 1824f, vec2<bool>(false, true)), Struct_1(vec3<f32>(-158f, 1705f, 575f), false, vec4<bool>(true, false, true, false), -1000f, vec2<bool>(false, false)), vec2<f32>(343f, -900f)), Struct_2(Struct_1(vec3<f32>(1126f, -1865f, 1737f), false, vec4<bool>(false, true, false, false), 1000f, vec2<bool>(false, false)), Struct_1(vec3<f32>(-712f, -243f, 662f), false, vec4<bool>(true, true, false, true), -1000f, vec2<bool>(true, true)), vec2<f32>(606f, -1704f)), Struct_2(Struct_1(vec3<f32>(-489f, -756f, 1460f), false, vec4<bool>(true, true, true, true), -1595f, vec2<bool>(false, true)), Struct_1(vec3<f32>(184f, 279f, 1066f), false, vec4<bool>(false, false, true, false), 2915f, vec2<bool>(true, false)), vec2<f32>(565f, -327f)), Struct_2(Struct_1(vec3<f32>(1077f, -595f, 949f), false, vec4<bool>(false, false, false, true), 256f, vec2<bool>(false, false)), Struct_1(vec3<f32>(-142f, -1517f, 660f), true, vec4<bool>(true, true, true, true), -995f, vec2<bool>(false, true)), vec2<f32>(1557f, -603f)), Struct_2(Struct_1(vec3<f32>(-372f, 488f, 1365f), true, vec4<bool>(true, false, true, false), -1710f, vec2<bool>(true, true)), Struct_1(vec3<f32>(1047f, 682f, -406f), false, vec4<bool>(false, false, true, true), 1286f, vec2<bool>(false, true)), vec2<f32>(1597f, -723f)), Struct_2(Struct_1(vec3<f32>(605f, -565f, -522f), true, vec4<bool>(true, true, false, true), 500f, vec2<bool>(false, false)), Struct_1(vec3<f32>(1187f, 1000f, 1333f), true, vec4<bool>(true, false, false, false), -302f, vec2<bool>(true, false)), vec2<f32>(-1232f, 1000f)), Struct_2(Struct_1(vec3<f32>(261f, -1552f, 941f), true, vec4<bool>(false, true, false, false), 1891f, vec2<bool>(false, false)), Struct_1(vec3<f32>(-613f, -1386f, -270f), false, vec4<bool>(true, false, true, false), 1000f, vec2<bool>(false, true)), vec2<f32>(106f, 882f)));

var<private> global4: array<f32, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    global0 = array<vec3<i32>, 30>();
    let var_1 = global4[_wgslsmith_index_u32(min(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_0.x, 16u)], arg_0.x, global1[_wgslsmith_index_u32(1u, 16u)])), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), arg_0.x), 28u)] != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-395f)), _wgslsmith_f_op_f32(-arg_1.x))));
    global4 = array<f32, 28>();
    global2 = array<bool, 17>();
    return global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 16u)], 28u)];
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.b.d;
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    global2 = array<bool, 17>();
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37547u, global1[_wgslsmith_index_u32(arg_0, 16u)], 104124u, u_input.d), vec4<u32>(u_input.d, arg_0, global1[_wgslsmith_index_u32(arg_0, 16u)], 67009u)), 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.b.yz, vec4<f32>(-1208f, -217f, arg_1.d, 1182f), u_input.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.a.x))))), _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(56821i, -63957i), _wgslsmith_mult_i32(u_input.a.x, -1i)) == 27978i, select(vec4<bool>(all(vec4<bool>(false, true, true, arg_1.b)), arg_2.b.c.x, true, all(arg_1.c.xyw)), arg_1.c, vec4<bool>(arg_1.e.x && false, arg_2.a.c.x, all(arg_1.c.xzy), arg_1.b || false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 28u)] + -682f))))), select(arg_1.c.zy, !select(vec2<bool>(global2[_wgslsmith_index_u32(58184u, 17u)], false), vec2<bool>(global2[_wgslsmith_index_u32(0u, 17u)], true), arg_1.b), arg_2.a.c.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.a.x, arg_1.a.x, arg_1.a.x) * arg_1.a), vec3<f32>(-1195f, 161f, 418f), arg_2.b.c.yxw))), all(!select(arg_1.c.zwx, arg_2.a.c.xxx, false)), !vec4<bool>(false, !arg_2.a.b, arg_1.c.x & false, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(30974u, 28u)]), true)))), !arg_2.b.c.wy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(2048f)), _wgslsmith_f_op_f32(trunc(641f)))));
    return reverseBits(4294967295u);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = array<bool, 17>();
    var var_0 = _wgslsmith_add_vec3_i32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~52918u, global1[_wgslsmith_index_u32(func_2(55344u, Struct_1(vec3<f32>(arg_0, global4[_wgslsmith_index_u32(4294967295u, 28u)], -1431f), global2[_wgslsmith_index_u32(12193u, 17u)], vec4<bool>(arg_3, false, true, false), -1680f, vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 17u)], false)), Struct_2(Struct_1(vec3<f32>(arg_0, arg_2, -539f), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29521u, 16u)], 17u)], vec4<bool>(global2[_wgslsmith_index_u32(445u, 17u)], arg_3, false, false), -227f, vec2<bool>(false, true)), Struct_1(vec3<f32>(-437f, arg_0, global4[_wgslsmith_index_u32(0u, 28u)]), arg_3, vec4<bool>(false, false, arg_3, true), global4[_wgslsmith_index_u32(80658u, 28u)], vec2<bool>(true, true)), vec2<f32>(367f, -1015f))), 16u)]), ~(~u_input.b.yy)), 30u)], global0[_wgslsmith_index_u32(1u, 30u)]);
    global0 = array<vec3<i32>, 30>();
    var var_1 = global3[_wgslsmith_index_u32(abs(firstLeadingBit(~4294967295u)), 19u)];
    global4 = array<f32, 28>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 17>();
    var var_0 = Struct_3(u_input.b, func_1(global4[_wgslsmith_index_u32(1u, 28u)], ~(~u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62001u, 16u)], 28u)]))), true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4353u, 16u)], global1[_wgslsmith_index_u32(59685u, 16u)]), u_input.d) << (abs(~vec2<u32>(4294967295u, u_input.b.x)) % vec2<u32>(32u)), vec2<u32>(~(~global1[_wgslsmith_index_u32(4294967295u, 16u)]), u_input.d)), 19u)]);
    var_0 = Struct_3(vec3<u32>(~abs(~u_input.b.x), ~var_0.a.x, u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_0.c.b.a)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1584f, 312f)), _wgslsmith_clamp_i32(countOneBits(u_input.c), abs(-60887i), 20321i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) + _wgslsmith_f_op_f32(-531f * 1554f)), false).b, !vec4<bool>(u_input.a.x < -1i, true, any(vec4<bool>(true, true, false, false)), var_0.b.e.x | global2[_wgslsmith_index_u32(23709u, 17u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-650f)), -961f, true)), var_0.b.a.x), var_0.b.e), Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.a.x))), ~(-u_input.e), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(95213u, var_0.a.x), 28u)], any(select(var_0.c.b.c.yxx, var_0.b.c.xzx, vec3<bool>(var_0.b.b, global2[_wgslsmith_index_u32(u_input.d, 17u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 17u)])))), Struct_1(var_0.b.a, !(u_input.e > u_input.c), var_0.c.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1492f), !var_0.c.b.c.wz), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c.b.a.zz)))))));
    let var_1 = ~(~_wgslsmith_div_vec4_u32(min(~vec4<u32>(1u, 35025u, 4294967295u, global1[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 1u, u_input.d)), ~(vec4<u32>(0u, 30955u, var_0.a.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 16u)], 62356u, u_input.d, 0u))));
    global1 = array<u32, 16>();
    var var_2 = var_0.c;
    global2 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(2342f, _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.e, u_input.c, 0i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, -78792i, 2147483647i)), ~(abs(vec4<i32>(-2147483647i, -2147483647i, 0i, -26075i)) & select(vec4<i32>(-35222i, 12426i, 1i, 69450i), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -1i), vec4<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, var_0.c.b.c.x, true)))));
}

