struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-746f, 1301f, 1000f);

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-131f, Struct_2(vec4<f32>(1021f, -1576f, -1000f, 1000f), vec4<bool>(true, true, true, true), vec2<f32>(506f, -1258f), Struct_1(vec3<f32>(2859f, 260f, 1000f), vec2<f32>(934f, -1220f), -1533i)), i32(-2147483648), vec2<u32>(2311u, 4294967295u), vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_3(-1765f, Struct_2(vec4<f32>(-525f, 968f, 242f, 174f), vec4<bool>(false, false, true, true), vec2<f32>(-2010f, -1386f), Struct_1(vec3<f32>(1035f, 1271f, -1195f), vec2<f32>(183f, -609f), 13799i)), -16851i, vec2<u32>(1u, 4294967295u), vec3<i32>(1i, i32(-2147483648), -18648i)), Struct_3(-1000f, Struct_2(vec4<f32>(-1000f, -490f, 3857f, 162f), vec4<bool>(false, true, false, false), vec2<f32>(-363f, -1583f), Struct_1(vec3<f32>(918f, -1000f, 135f), vec2<f32>(2072f, -1019f), 18285i)), 1i, vec2<u32>(0u, 8118u), vec3<i32>(28859i, i32(-2147483648), -8767i)), Struct_3(1000f, Struct_2(vec4<f32>(1000f, -1793f, 685f, 553f), vec4<bool>(true, false, false, true), vec2<f32>(669f, 1594f), Struct_1(vec3<f32>(313f, 696f, -1264f), vec2<f32>(869f, -912f), -22258i)), i32(-2147483648), vec2<u32>(99465u, 84115u), vec3<i32>(-37559i, -1i, 1i)), Struct_3(-2512f, Struct_2(vec4<f32>(721f, -178f, -201f, 840f), vec4<bool>(true, false, false, true), vec2<f32>(1219f, -1232f), Struct_1(vec3<f32>(-158f, -428f, 1283f), vec2<f32>(259f, 227f), 44671i)), 1i, vec2<u32>(6646u, 23553u), vec3<i32>(-42435i, -11751i, 24933i)), Struct_3(-197f, Struct_2(vec4<f32>(-145f, -1843f, -255f, 100f), vec4<bool>(true, false, true, true), vec2<f32>(1040f, 377f), Struct_1(vec3<f32>(-769f, -294f, 885f), vec2<f32>(-282f, -768f), -1i)), i32(-2147483648), vec2<u32>(0u, 33913u), vec3<i32>(0i, 26433i, i32(-2147483648))), Struct_3(494f, Struct_2(vec4<f32>(1594f, 132f, 535f, 201f), vec4<bool>(true, false, true, true), vec2<f32>(-665f, -700f), Struct_1(vec3<f32>(-811f, -142f, -510f), vec2<f32>(187f, -223f), i32(-2147483648))), 74024i, vec2<u32>(0u, 10288u), vec3<i32>(i32(-2147483648), -8357i, 6146i)), Struct_3(1293f, Struct_2(vec4<f32>(545f, 1000f, 420f, 649f), vec4<bool>(true, true, true, false), vec2<f32>(295f, -355f), Struct_1(vec3<f32>(1501f, -1479f, 1000f), vec2<f32>(1168f, 1263f), 2147483647i)), 0i, vec2<u32>(9142u, 4726u), vec3<i32>(1i, -38345i, 0i)), Struct_3(804f, Struct_2(vec4<f32>(1000f, -724f, 461f, 732f), vec4<bool>(false, true, true, true), vec2<f32>(-474f, -1000f), Struct_1(vec3<f32>(696f, 950f, -820f), vec2<f32>(-1424f, -905f), 2147483647i)), -1i, vec2<u32>(100806u, 1u), vec3<i32>(1i, 2147483647i, -1i)), Struct_3(-741f, Struct_2(vec4<f32>(-1575f, -206f, -1225f, -1000f), vec4<bool>(false, false, false, false), vec2<f32>(741f, -424f), Struct_1(vec3<f32>(558f, -711f, -459f), vec2<f32>(871f, 766f), 0i)), 26499i, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(28032i, -1i, 1i)), Struct_3(558f, Struct_2(vec4<f32>(-468f, 1625f, 1050f, -1515f), vec4<bool>(false, false, true, true), vec2<f32>(-433f, 1920f), Struct_1(vec3<f32>(-303f, 657f, -132f), vec2<f32>(1000f, -590f), -43924i)), i32(-2147483648), vec2<u32>(15267u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 3031i)), Struct_3(-2739f, Struct_2(vec4<f32>(-3205f, 1178f, -1852f, 1739f), vec4<bool>(true, false, true, false), vec2<f32>(801f, -1269f), Struct_1(vec3<f32>(1168f, -411f, 1078f), vec2<f32>(1006f, -831f), 1i)), 0i, vec2<u32>(11872u, 4294967295u), vec3<i32>(47618i, 1i, i32(-2147483648))), Struct_3(1940f, Struct_2(vec4<f32>(-1000f, 946f, -555f, -1813f), vec4<bool>(false, false, true, false), vec2<f32>(855f, -438f), Struct_1(vec3<f32>(-686f, -297f, 1207f), vec2<f32>(101f, 438f), -24898i)), 59022i, vec2<u32>(4294967295u, 0u), vec3<i32>(3804i, -2053i, 2147483647i)), Struct_3(475f, Struct_2(vec4<f32>(-1539f, 616f, 1621f, 680f), vec4<bool>(false, true, true, false), vec2<f32>(817f, -1000f), Struct_1(vec3<f32>(-1035f, -278f, 675f), vec2<f32>(-233f, -1000f), i32(-2147483648))), i32(-2147483648), vec2<u32>(79416u, 33607u), vec3<i32>(-1i, -25929i, -31180i)), Struct_3(-2170f, Struct_2(vec4<f32>(-719f, 276f, -1662f, -1053f), vec4<bool>(false, false, true, true), vec2<f32>(-558f, -267f), Struct_1(vec3<f32>(-1000f, 1000f, -386f), vec2<f32>(1004f, 219f), -28713i)), -1i, vec2<u32>(16443u, 4294967295u), vec3<i32>(-27538i, -9822i, 28236i)), Struct_3(-310f, Struct_2(vec4<f32>(1128f, -1000f, -501f, 1000f), vec4<bool>(true, true, false, false), vec2<f32>(343f, -2533f), Struct_1(vec3<f32>(567f, -1063f, 266f), vec2<f32>(1088f, 829f), -43658i)), -17256i, vec2<u32>(32333u, 4016u), vec3<i32>(-43330i, 0i, 1i)));

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(0i, -10096i, 0i, 47318i), vec4<i32>(-52717i, -29158i, i32(-2147483648), -20596i), vec4<i32>(14414i, 45027i, -1i, i32(-2147483648)), vec4<i32>(-20453i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-33870i, 39636i, 32250i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(2147483647i, 983i, -3849i, -24291i), vec4<i32>(-1i, i32(-2147483648), 0i, -51972i), vec4<i32>(19999i, 6249i, 1i, 78633i), vec4<i32>(18653i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i), vec4<i32>(10863i, -15196i, 2147483647i, i32(-2147483648)), vec4<i32>(-7367i, 41012i, 2147483647i, 0i), vec4<i32>(-1i, 19823i, 7832i, i32(-2147483648)), vec4<i32>(13426i, 60374i, -1i, 2147483647i), vec4<i32>(-33118i, 0i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -19147i, -55086i), vec4<i32>(4302i, i32(-2147483648), 30196i, -1i), vec4<i32>(31126i, 2147483647i, 1i, -46153i), vec4<i32>(-47454i, i32(-2147483648), 60260i, 10708i), vec4<i32>(1i, 16739i, -20265i, 25289i), vec4<i32>(7000i, 31316i, 0i, 47764i), vec4<i32>(1i, 2147483647i, 9386i, i32(-2147483648)), vec4<i32>(1i, 20000i, -35696i, 2627i));

var<private> global3: array<Struct_4, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    global1 = array<Struct_3, 16>();
    let var_0 = arg_0.d.d.x;
    return global1[_wgslsmith_index_u32(0u, 16u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    let var_0 = (global0.x != 452f) & any(vec3<bool>(_wgslsmith_f_op_f32(max(arg_1.d.a, 697f)) <= _wgslsmith_div_f32(186f, -785f), arg_3.d.b.b.x, arg_1.d.b.b.x));
    return 1f;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 1137f, -1593f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1613f, global0.x) * vec3<f32>(global0.x, 990f, 429f)))), Struct_4(Struct_1(vec3<f32>(-1247f, global0.x, global0.x), vec2<f32>(-876f, global0.x), 2147483647i), firstLeadingBit(u_input.a), firstLeadingBit(vec2<i32>(u_input.d.x, 0i)), func_2(global3[_wgslsmith_index_u32(39916u, 30u)])), Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x), vec3<i32>(2147483647i, u_input.d.x, u_input.b))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a >> (1u % 32u), 4294967295u), 30u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1509f);
    var var_1 = ~2147483647i;
    let var_2 = ~u_input.b & ~u_input.b;
    global3 = array<Struct_4, 30>();
    var var_3 = !(func_2(Struct_4(Struct_1(var_0, vec2<f32>(614f, global0.x), u_input.b), u_input.a, u_input.d.zx, func_2(Struct_4(Struct_1(vec3<f32>(-1078f, -2670f, var_0.x), vec2<f32>(-2080f, var_0.x), -12042i), 59055u, u_input.d.xy, global1[_wgslsmith_index_u32(5796u, 16u)])))).b.b.x | false);
    return global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(1u, ~select(firstTrailingBit(u_input.a), ~14259u, true))), 16u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> f32 {
    let var_0 = arg_0.b.b;
    let var_1 = false;
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.b.d.a * arg_0.b.d.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, 208f, -1000f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, 531f, 1045f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-869f, 991f, -1469f), arg_0.b.a.xyx, arg_0.b.b.yyw))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1422f, arg_0.a, global0.x) + arg_0.b.d.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 1880f, 286f)));
    let var_2 = all(var_0.xyx);
    global0 = vec3<f32>(func_2(global3[_wgslsmith_index_u32(arg_0.d.x & (min(4294967295u, arg_0.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 51682u, 1u, 0u), vec4<u32>(32691u, arg_0.d.x, 45025u, arg_0.d.x)) % 32u)), 30u)]).b.d.a.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -436f));
    return -1107f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(586f, 1546f, -137f), vec3<f32>(309f, 1953f, global0.x)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1191f * global0.x), -1571f)), global0.x), 578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.x)))) * _wgslsmith_f_op_f32(func_4(func_1(), Struct_5(vec3<i32>(-3026i, u_input.c.x, u_input.d.x))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2021f, -775f, -665f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 121f) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1306f, -779f, global0.x, global0.x) + vec4<f32>(global0.x, -1000f, -488f, 1656f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-629f, 619f, global0.x, -1316f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 1542f) * vec4<f32>(global0.x, 517f, global0.x, 791f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, 1000f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(-773f, global0.x), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(886f * global0.x), _wgslsmith_f_op_f32(func_3(vec3<f32>(global0.x, -1119f, global0.x), global3[_wgslsmith_index_u32(96262u, 30u)], Struct_5(u_input.c), Struct_4(Struct_1(vec3<f32>(-382f, global0.x, -1143f), global0.zy, 1i), u_input.a, u_input.c.yx, global1[_wgslsmith_index_u32(u_input.a, 16u)]))))))));
    let var_2 = Struct_3(global0.x, func_2(Struct_4(Struct_1(vec3<f32>(-682f, global0.x, global0.x), _wgslsmith_f_op_vec2_f32(exp2(global0.xy)), abs(u_input.c.x)), ~(u_input.a << (u_input.a % 32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.d.yy), _wgslsmith_sub_i32(u_input.c.x, 30659i)), global1[_wgslsmith_index_u32(max(_wgslsmith_div_u32(u_input.a, 3845u), u_input.a), 16u)])).b, 46507i, _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, min(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))) >> (~firstTrailingBit(vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))), vec3<i32>(u_input.c.x, u_input.d.x, 1i) & (u_input.d & u_input.c));
    let var_3 = func_1().b;
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1048f * var_2.a), _wgslsmith_div_f32(-787f, -2044f)))), _wgslsmith_f_op_f32(step(-852f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_5 = var_3.d;
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a + _wgslsmith_div_vec4_f32(var_2.b.a, var_2.b.a)) - vec4<f32>(var_1.x, -687f, 820f, 1952f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -594f, var_4.x, var_4.x) + var_3.a)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_2.b.a - var_2.b.a), _wgslsmith_f_op_vec4_f32(step(var_2.b.a, vec4<f32>(-1166f, 1000f, 608f, -323f))))))), _wgslsmith_f_op_vec4_f32(-var_3.a));
    let var_6 = _wgslsmith_div_vec3_u32(max(vec3<u32>(~var_2.d.x, var_2.d.x, 14080u) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), min(vec3<u32>(var_2.d.x, 1u, 1u), vec3<u32>(37645u, 67836u, var_2.d.x))), vec3<u32>(1u, 13765u << (~4294967295u % 32u), 0u)), vec3<u32>(u_input.a, 1u, 15173u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2.b.a * var_3.a), var_3.d.c);
}

