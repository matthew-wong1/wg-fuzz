struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1007f, 1533f, 252f, 1000f, -226f, -2685f, 626f, -654f, -500f, -853f, -634f, 589f, 1924f, -468f, 117f, -224f, -380f, 649f, -565f, 1385f, -1217f, 2059f, -1089f, -109f, -907f);

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec4<i32>(-6380i, 2147483647i, 0i, 0i), vec3<f32>(-1406f, -1297f, 1559f)), Struct_1(vec4<i32>(2147483647i, -6610i, -2061i, 0i), vec3<f32>(-167f, 723f, -1148f)), true), Struct_3(Struct_1(vec4<i32>(2147483647i, 71678i, 2147483647i, 1i), vec3<f32>(842f, 789f, -1162f)), Struct_1(vec4<i32>(-19631i, -1i, 72215i, 1i), vec3<f32>(-121f, -1202f, 258f)), false), Struct_3(Struct_1(vec4<i32>(-23431i, 0i, i32(-2147483648), -77213i), vec3<f32>(-455f, 972f, -1714f)), Struct_1(vec4<i32>(1i, 1i, -33726i, -6981i), vec3<f32>(-1053f, 1081f, 1745f)), true), Struct_3(Struct_1(vec4<i32>(-24355i, 18861i, 18361i, 2147483647i), vec3<f32>(936f, -1002f, 752f)), Struct_1(vec4<i32>(2147483647i, 9584i, 1i, 0i), vec3<f32>(-366f, -741f, 337f)), true), Struct_3(Struct_1(vec4<i32>(31221i, 24189i, 2147483647i, 1i), vec3<f32>(317f, 1052f, 822f)), Struct_1(vec4<i32>(-12793i, i32(-2147483648), 16962i, i32(-2147483648)), vec3<f32>(-262f, -606f, -146f)), false), Struct_3(Struct_1(vec4<i32>(-1i, -19543i, i32(-2147483648), 0i), vec3<f32>(-692f, 345f, 1733f)), Struct_1(vec4<i32>(2147483647i, -4611i, -29783i, 2147483647i), vec3<f32>(597f, -469f, -1844f)), true), Struct_3(Struct_1(vec4<i32>(-11325i, 2147483647i, 2147483647i, -89628i), vec3<f32>(1198f, -573f, 459f)), Struct_1(vec4<i32>(-7972i, 0i, 18756i, 54244i), vec3<f32>(127f, 187f, -749f)), true), Struct_3(Struct_1(vec4<i32>(-33701i, -1i, 0i, i32(-2147483648)), vec3<f32>(-1000f, 2206f, 496f)), Struct_1(vec4<i32>(1i, 19446i, 2147483647i, 57295i), vec3<f32>(1853f, -1073f, 861f)), true), Struct_3(Struct_1(vec4<i32>(26939i, i32(-2147483648), -1i, 2147483647i), vec3<f32>(400f, -511f, -1086f)), Struct_1(vec4<i32>(0i, 2147483647i, -4891i, -1i), vec3<f32>(-1000f, -263f, 1000f)), true), Struct_3(Struct_1(vec4<i32>(-12877i, 2147483647i, -61639i, -45779i), vec3<f32>(550f, 517f, -558f)), Struct_1(vec4<i32>(2147483647i, 16487i, 1i, -36959i), vec3<f32>(-624f, 205f, -1659f)), false), Struct_3(Struct_1(vec4<i32>(-1377i, 1i, -20290i, 60149i), vec3<f32>(166f, -1085f, 429f)), Struct_1(vec4<i32>(20176i, 1i, i32(-2147483648), -16623i), vec3<f32>(-268f, -574f, -493f)), true), Struct_3(Struct_1(vec4<i32>(-10597i, 2147483647i, 0i, i32(-2147483648)), vec3<f32>(-519f, -905f, -240f)), Struct_1(vec4<i32>(-16219i, -2984i, 0i, -6366i), vec3<f32>(-977f, 2124f, -1938f)), true), Struct_3(Struct_1(vec4<i32>(3345i, 0i, 1i, i32(-2147483648)), vec3<f32>(-515f, 1142f, 2081f)), Struct_1(vec4<i32>(-1i, -1i, 0i, 1i), vec3<f32>(482f, 358f, 677f)), true), Struct_3(Struct_1(vec4<i32>(1i, 1i, 13786i, i32(-2147483648)), vec3<f32>(-1283f, 638f, -1324f)), Struct_1(vec4<i32>(1i, 22154i, -30591i, 63695i), vec3<f32>(-165f, 1296f, -291f)), true), Struct_3(Struct_1(vec4<i32>(0i, i32(-2147483648), -40787i, -1i), vec3<f32>(1000f, 343f, 870f)), Struct_1(vec4<i32>(-1i, -1i, 19796i, -26650i), vec3<f32>(685f, 1601f, 1344f)), true), Struct_3(Struct_1(vec4<i32>(1i, i32(-2147483648), -19976i, i32(-2147483648)), vec3<f32>(-320f, 181f, 1169f)), Struct_1(vec4<i32>(i32(-2147483648), -22227i, i32(-2147483648), 2147483647i), vec3<f32>(1000f, -1000f, 504f)), false), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 28539i, 49056i, 1i), vec3<f32>(-318f, 1241f, 1436f)), Struct_1(vec4<i32>(0i, 48892i, 46390i, -1i), vec3<f32>(-584f, -1247f, 836f)), false), Struct_3(Struct_1(vec4<i32>(-1i, 5180i, i32(-2147483648), i32(-2147483648)), vec3<f32>(-274f, -1210f, 717f)), Struct_1(vec4<i32>(-58873i, 13115i, 1i, 11901i), vec3<f32>(-587f, -1000f, 299f)), false), Struct_3(Struct_1(vec4<i32>(-19613i, -1i, 1i, 0i), vec3<f32>(-2040f, 1000f, -1438f)), Struct_1(vec4<i32>(-1i, 58698i, -49109i, -81989i), vec3<f32>(1123f, -1062f, -1528f)), true), Struct_3(Struct_1(vec4<i32>(-16501i, -1i, -69778i, 30563i), vec3<f32>(1688f, 313f, 131f)), Struct_1(vec4<i32>(-15329i, -15968i, 2147483647i, -72563i), vec3<f32>(-790f, 1964f, 140f)), false), Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, -30065i, -1i), vec3<f32>(-1244f, -645f, -305f)), Struct_1(vec4<i32>(0i, -21555i, -2081i, 1i), vec3<f32>(2340f, 313f, 733f)), false), Struct_3(Struct_1(vec4<i32>(-38079i, 0i, -42061i, 33608i), vec3<f32>(2353f, -373f, 452f)), Struct_1(vec4<i32>(17262i, -1896i, 1i, 1i), vec3<f32>(-139f, -297f, -1000f)), false), Struct_3(Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, -33522i), vec3<f32>(-1019f, -1187f, 901f)), Struct_1(vec4<i32>(2147483647i, 24726i, -10459i, 1i), vec3<f32>(-792f, 1084f, 1000f)), false), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 1i), vec3<f32>(422f, 1082f, -1888f)), Struct_1(vec4<i32>(-33550i, -1i, 0i, -1164i), vec3<f32>(590f, 291f, -632f)), false), Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 0i, 10087i, i32(-2147483648)), vec3<f32>(-720f, 818f, 1000f)), Struct_1(vec4<i32>(-29146i, 1i, 1i, -1i), vec3<f32>(-746f, 560f, -221f)), false));

var<private> global2: array<bool, 27>;

var<private> global3: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, abs(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))) << (_wgslsmith_mod_u32(~u_input.c, ~u_input.a) % 32u), 60955i);
    global1 = array<Struct_3, 25>();
    global3 = _wgslsmith_mod_i32(u_input.b.x, countOneBits(var_0));
    var var_1 = ~(~firstLeadingBit(firstLeadingBit(abs(vec4<u32>(44366u, 0u, 1u, 48173u)))));
    global0 = array<f32, 25>();
    return u_input.b;
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = arg_0;
    global2 = array<bool, 27>();
    global0 = array<f32, 25>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.c, 27u)];
    var var_2 = Struct_5(select(vec2<bool>(true, true), select(!select(vec2<bool>(global2[_wgslsmith_index_u32(85334u, 27u)], global2[_wgslsmith_index_u32(51094u, 27u)]), vec2<bool>(true, false), false), select(vec2<bool>(true, true), !vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 27u)]), !vec2<bool>(global2[_wgslsmith_index_u32(64882u, 27u)], false)), !global2[_wgslsmith_index_u32(0u, 27u)]), vec2<bool>(!any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], false, global2[_wgslsmith_index_u32(u_input.c, 27u)], false)), all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 27u)], true)))), global1[_wgslsmith_index_u32(4294967295u, 25u)], 19759i);
    return vec4<u32>(28217u, _wgslsmith_add_u32(29598u, countOneBits(48275u)), 44851u, 20411u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<i32> {
    global3 = arg_2.b.a.x;
    var var_0 = ~u_input.a;
    var var_1 = Struct_5(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], u_input.c != 1u)), arg_2, -42842i);
    var var_2 = Struct_1(countOneBits(vec4<i32>(arg_3.x, countOneBits(19893i), ~arg_1, -597i)), arg_2.a.b);
    global0 = array<f32, 25>();
    return var_2.a.yxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), u_input.b.zy, u_input.a, abs(1u));
    var var_1 = ~vec2<i32>(-1i, ~0i);
    var var_2 = max(~(reverseBits(min(vec4<u32>(34269u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, var_0.c, var_0.d))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.c, var_0.d, 13643u), ~vec4<u32>(0u, var_0.d, u_input.c, var_0.d)) % vec4<u32>(32u))), select(countOneBits(func_2(vec3<f32>(-1000f, global0[_wgslsmith_index_u32(22899u, 25u)], 662f))), ~vec4<u32>(23283u, u_input.c, u_input.c, var_0.c) & vec4<u32>(4294967295u, var_0.d, 1u, 0u), any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 27u)], false, false, global2[_wgslsmith_index_u32(29225u, 27u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(45182u, 27u)], false, global2[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.c, 27u)], false, false)))) & vec4<u32>(0u, ~(~var_0.c), _wgslsmith_mult_u32(~var_0.c, var_0.c), abs(u_input.a)));
    global0 = array<f32, 25>();
    var_2 = ~_wgslsmith_div_vec4_u32(func_2(vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 25u)], 348f), 1113f, _wgslsmith_f_op_f32(1000f * 505f))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 25u)], -1486f, -1491f), vec3<f32>(-120f, 1454f, -344f)) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_2.x, 25u)], 348f))));
    global3 = u_input.b.x;
    let var_3 = _wgslsmith_f_op_f32(select(-951f, global0[_wgslsmith_index_u32(4294967295u, 25u)], any(select(vec3<bool>(true, true, true), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 27u)], false)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(84280u, 27u)], global2[_wgslsmith_index_u32(86625u, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_2.x, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(var_2.x, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(min((func_3(423f, -23557i, Struct_3(Struct_1(var_0.a, vec3<f32>(global0[_wgslsmith_index_u32(var_0.c, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], -843f)), Struct_1(vec4<i32>(31i, -4525i, var_1.x, 15060i), vec3<f32>(var_3, 2018f, -1000f)), false), vec2<i32>(-2147483647i, 21194i)) ^ u_input.b.yyy) >> (var_2.yww % vec3<u32>(32u)), u_input.b.xwx), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] * 867f)), var_3, _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(sign(929f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), -484f, _wgslsmith_f_op_f32(select(1121f, _wgslsmith_f_op_f32(sign(var_3)), all(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_f32(abs(1238f)))), ~vec2<u32>(13345u, _wgslsmith_clamp_u32(25741u, 0u, 2063u)) | ~(~(~vec2<u32>(var_2.x, 1u))), _wgslsmith_f_op_f32(ceil(1000f)));
}

