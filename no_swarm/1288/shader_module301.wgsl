struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(vec4<u32>(61095u, 0u, 0u, 3887u), false, Struct_1(1230f), Struct_1(217f)), Struct_2(vec4<u32>(0u, 69801u, 25814u, 2158u), true, Struct_1(997f), Struct_1(-143f))), Struct_3(Struct_2(vec4<u32>(32408u, 0u, 12714u, 17318u), true, Struct_1(703f), Struct_1(-209f)), Struct_2(vec4<u32>(32136u, 66861u, 576u, 0u), true, Struct_1(-1424f), Struct_1(-1093f))), Struct_3(Struct_2(vec4<u32>(0u, 1u, 74819u, 4294967295u), false, Struct_1(663f), Struct_1(-129f)), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), false, Struct_1(526f), Struct_1(-2143f))), Struct_3(Struct_2(vec4<u32>(1u, 0u, 1u, 103736u), true, Struct_1(178f), Struct_1(449f)), Struct_2(vec4<u32>(15643u, 27508u, 4294967295u, 1u), false, Struct_1(176f), Struct_1(-465f))), Struct_3(Struct_2(vec4<u32>(39588u, 31700u, 21860u, 6787u), true, Struct_1(349f), Struct_1(-223f)), Struct_2(vec4<u32>(44205u, 106648u, 3270u, 59006u), true, Struct_1(-542f), Struct_1(-113f))), Struct_3(Struct_2(vec4<u32>(51930u, 64208u, 59515u, 17298u), false, Struct_1(1299f), Struct_1(-432f)), Struct_2(vec4<u32>(10143u, 1u, 4294967295u, 0u), true, Struct_1(-301f), Struct_1(-372f))), Struct_3(Struct_2(vec4<u32>(35011u, 0u, 9844u, 0u), true, Struct_1(-541f), Struct_1(-665f)), Struct_2(vec4<u32>(37707u, 15261u, 1u, 40217u), false, Struct_1(-1201f), Struct_1(-304f))), Struct_3(Struct_2(vec4<u32>(36377u, 1u, 4294967295u, 25827u), true, Struct_1(661f), Struct_1(-681f)), Struct_2(vec4<u32>(95597u, 1u, 23345u, 1u), true, Struct_1(876f), Struct_1(611f))), Struct_3(Struct_2(vec4<u32>(0u, 18822u, 42825u, 44536u), false, Struct_1(-273f), Struct_1(1046f)), Struct_2(vec4<u32>(1u, 17806u, 1u, 0u), true, Struct_1(130f), Struct_1(1424f))), Struct_3(Struct_2(vec4<u32>(48053u, 1614u, 17875u, 12503u), false, Struct_1(-335f), Struct_1(939f)), Struct_2(vec4<u32>(1u, 1u, 18727u, 4294967295u), false, Struct_1(576f), Struct_1(-843f))), Struct_3(Struct_2(vec4<u32>(2722u, 4294967295u, 0u, 4294967295u), false, Struct_1(-961f), Struct_1(-727f)), Struct_2(vec4<u32>(78457u, 1u, 4294967295u, 4294967295u), false, Struct_1(1693f), Struct_1(1000f))), Struct_3(Struct_2(vec4<u32>(15708u, 58322u, 1u, 7923u), true, Struct_1(-1328f), Struct_1(-1289f)), Struct_2(vec4<u32>(13335u, 36624u, 57987u, 32952u), false, Struct_1(-582f), Struct_1(-1045f))), Struct_3(Struct_2(vec4<u32>(4294967295u, 29978u, 92572u, 4294967295u), true, Struct_1(799f), Struct_1(1171f)), Struct_2(vec4<u32>(4294967295u, 58711u, 4294967295u, 4294967295u), false, Struct_1(-222f), Struct_1(-955f))), Struct_3(Struct_2(vec4<u32>(10370u, 1u, 4294967295u, 24656u), true, Struct_1(515f), Struct_1(918f)), Struct_2(vec4<u32>(0u, 0u, 1u, 0u), false, Struct_1(-1018f), Struct_1(1000f))), Struct_3(Struct_2(vec4<u32>(14042u, 4294967295u, 4294967295u, 22490u), false, Struct_1(-1000f), Struct_1(-855f)), Struct_2(vec4<u32>(0u, 28874u, 42778u, 4294967295u), true, Struct_1(-341f), Struct_1(-422f))), Struct_3(Struct_2(vec4<u32>(69323u, 40985u, 0u, 36041u), false, Struct_1(291f), Struct_1(464f)), Struct_2(vec4<u32>(0u, 0u, 47989u, 1u), false, Struct_1(399f), Struct_1(-1655f))), Struct_3(Struct_2(vec4<u32>(1u, 53014u, 8353u, 4294967295u), true, Struct_1(-191f), Struct_1(-671f)), Struct_2(vec4<u32>(0u, 55502u, 26741u, 4294967295u), false, Struct_1(1620f), Struct_1(-625f))), Struct_3(Struct_2(vec4<u32>(1u, 45641u, 1u, 4326u), true, Struct_1(-603f), Struct_1(-537f)), Struct_2(vec4<u32>(14043u, 1u, 1u, 11464u), false, Struct_1(-2417f), Struct_1(-1348f))), Struct_3(Struct_2(vec4<u32>(1u, 0u, 1u, 16824u), true, Struct_1(-516f), Struct_1(-577f)), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 0u), true, Struct_1(-1554f), Struct_1(658f))), Struct_3(Struct_2(vec4<u32>(1u, 101330u, 7269u, 4294967295u), false, Struct_1(-593f), Struct_1(-470f)), Struct_2(vec4<u32>(47747u, 38992u, 105451u, 4294967295u), false, Struct_1(-213f), Struct_1(544f))), Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), true, Struct_1(-564f), Struct_1(631f)), Struct_2(vec4<u32>(4294967295u, 1u, 45774u, 4026u), true, Struct_1(129f), Struct_1(-1000f))), Struct_3(Struct_2(vec4<u32>(10681u, 65163u, 1u, 4294967295u), false, Struct_1(-799f), Struct_1(1092f)), Struct_2(vec4<u32>(0u, 24214u, 1u, 40786u), true, Struct_1(287f), Struct_1(311f))), Struct_3(Struct_2(vec4<u32>(1u, 1u, 0u, 1u), false, Struct_1(1191f), Struct_1(473f)), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), false, Struct_1(241f), Struct_1(1275f))), Struct_3(Struct_2(vec4<u32>(38778u, 17595u, 0u, 0u), true, Struct_1(-612f), Struct_1(1184f)), Struct_2(vec4<u32>(0u, 17665u, 4294967295u, 4294967295u), false, Struct_1(-1504f), Struct_1(2439f))), Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 1u, 13277u), true, Struct_1(426f), Struct_1(-482f)), Struct_2(vec4<u32>(536u, 35832u, 4294967295u, 4294967295u), false, Struct_1(122f), Struct_1(-954f))), Struct_3(Struct_2(vec4<u32>(23015u, 2343u, 31607u, 14816u), true, Struct_1(672f), Struct_1(-832f)), Struct_2(vec4<u32>(48698u, 3835u, 0u, 0u), false, Struct_1(-1928f), Struct_1(-212f))), Struct_3(Struct_2(vec4<u32>(67613u, 0u, 40341u, 28056u), false, Struct_1(1000f), Struct_1(1612f)), Struct_2(vec4<u32>(1u, 0u, 26651u, 6608u), true, Struct_1(1059f), Struct_1(496f))), Struct_3(Struct_2(vec4<u32>(0u, 33360u, 0u, 1u), false, Struct_1(255f), Struct_1(122f)), Struct_2(vec4<u32>(15195u, 37382u, 4294967295u, 3421u), false, Struct_1(421f), Struct_1(-540f))));

var<private> global1: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(vec4<u32>(42097u, 4294967295u, 74458u, 14503u), Struct_2(vec4<u32>(792u, 22060u, 45127u, 0u), false, Struct_1(1000f), Struct_1(-1000f)), true, Struct_2(vec4<u32>(1u, 97690u, 1u, 0u), true, Struct_1(605f), Struct_1(1786f))), Struct_5(vec4<u32>(1u, 68729u, 10756u, 4294967295u), Struct_2(vec4<u32>(0u, 29959u, 50531u, 3025u), false, Struct_1(1000f), Struct_1(-1616f)), false, Struct_2(vec4<u32>(20956u, 50121u, 17482u, 79369u), false, Struct_1(760f), Struct_1(1076f))), Struct_5(vec4<u32>(7968u, 9130u, 33966u, 4294967295u), Struct_2(vec4<u32>(1u, 19417u, 46798u, 57302u), false, Struct_1(1693f), Struct_1(927f)), false, Struct_2(vec4<u32>(4294967295u, 4294967295u, 101646u, 0u), false, Struct_1(1167f), Struct_1(671f))), Struct_5(vec4<u32>(4294967295u, 0u, 31612u, 33029u), Struct_2(vec4<u32>(78665u, 46726u, 56712u, 20605u), false, Struct_1(-824f), Struct_1(-849f)), false, Struct_2(vec4<u32>(4294967295u, 4815u, 0u, 56746u), false, Struct_1(895f), Struct_1(1040f))), Struct_5(vec4<u32>(0u, 4294967295u, 0u, 2759u), Struct_2(vec4<u32>(27495u, 39304u, 0u, 4294967295u), false, Struct_1(844f), Struct_1(1000f)), false, Struct_2(vec4<u32>(63673u, 51950u, 4294967295u, 38214u), false, Struct_1(1442f), Struct_1(543f))), Struct_5(vec4<u32>(1u, 1u, 19832u, 1u), Struct_2(vec4<u32>(17204u, 78907u, 1u, 4294967295u), false, Struct_1(-473f), Struct_1(1000f)), true, Struct_2(vec4<u32>(6728u, 0u, 0u, 0u), false, Struct_1(-203f), Struct_1(576f))), Struct_5(vec4<u32>(66878u, 4294967295u, 42581u, 1u), Struct_2(vec4<u32>(1u, 3620u, 95720u, 4294967295u), false, Struct_1(-465f), Struct_1(-698f)), false, Struct_2(vec4<u32>(0u, 1u, 4294967295u, 70716u), true, Struct_1(-757f), Struct_1(-1000f))));

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> u32 {
    global1 = array<Struct_5, 7>();
    var var_0 = Struct_2(arg_2.a.a, global2.x, Struct_1(_wgslsmith_f_op_f32(floor(1846f))), Struct_1(arg_2.b.d.a));
    let var_1 = ~(~(arg_2.a.a.x >> (78240u % 32u)));
    var_0 = arg_2.b;
    var var_2 = false;
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec3<u32> {
    global0 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(781f + _wgslsmith_div_f32(-523f, -457f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1399f), -437f)), 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-227f + 952f)), -127f))));
    var var_1 = !(!any(vec4<bool>(31997u < u_input.a.x, true, u_input.a.x < 4294967295u, 55746i > u_input.c)));
    var var_2 = 1u;
    var_2 = abs(0u);
    return ~(~vec3<u32>(func_3(19404i, u_input.c, global0[_wgslsmith_index_u32(u_input.b, 28u)]) & u_input.b, ~10392u << (0u % 32u), ~(~45244u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global2 = select(!select(!(!vec4<bool>(global2.x, false, true, false)), !select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(global2.x, true, global2.x, global2.x), global2.x), select(!vec4<bool>(true, global2.x, global2.x, true), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, global2.x, true, global2.x)), true)), !(!vec4<bool>(global2.x, !global2.x, false, true)), !select(select(vec4<bool>(global2.x, false, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(global2.x, global2.x, true, false)), select(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, global2.x, false, false)), !vec4<bool>(false, global2.x, global2.x, true), u_input.c == -2147483647i), vec4<bool>(global2.x, true, global2.x && false, global2.x)));
    let var_0 = _wgslsmith_mult_i32(firstLeadingBit(36957i), -u_input.c);
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 1u, arg_0.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(arg_0.x, 1u, 4294967295u, arg_0.x) >> (vec4<u32>(67937u, 1111u, u_input.a.x, 0u) % vec4<u32>(32u))), ~min(vec4<u32>(17275u, u_input.a.x, arg_0.x, u_input.a.x), vec4<u32>(12328u, 27075u, 0u, 1u))), select(vec4<u32>(107492u, 328u, 1u, 4294967295u), vec4<u32>(43046u, 8862u, 51716u, u_input.a.x), true) & _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 30075u, arg_0.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(488u, 50468u, 4294967295u, u_input.b), vec4<u32>(u_input.a.x, 49736u, 1u, u_input.a.x)))), false, Struct_1(_wgslsmith_f_op_f32(1638f * _wgslsmith_f_op_f32(1143f - _wgslsmith_f_op_f32(-671f - -996f)))), Struct_1(657f));
    var var_2 = vec2<f32>(var_1.d.a, 255f);
    return Struct_1(var_2.x);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(countOneBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(22313u, u_input.a.x, u_input.b), vec3<u32>(1u, u_input.a.x, u_input.b)), func_2(vec2<i32>(-53980i, u_input.c), vec4<i32>(0i, 15268i, u_input.c, 41775i))) << (~reverseBits(vec3<u32>(0u, u_input.a.x, u_input.b)) % vec3<u32>(32u))), vec4<i32>(-2147483647i, u_input.c, u_input.c, 34477i));
    var var_1 = Struct_4(u_input.c, abs(min(38226u, ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, 1453f, -787f, -605f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, var_0.a, var_0.a, -1301f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1912f, var_0.a, var_0.a) + vec4<f32>(-819f, -1256f, 575f, 1591f)))) * vec4<f32>(-1164f, var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(269f, 639f)) * var_0.a))), Struct_1(_wgslsmith_f_op_f32(floor(1239f))), Struct_1(var_0.a));
    let var_2 = Struct_4(var_1.a, ~(~abs(1u)), var_1.c, var_1.e, Struct_1(var_0.a));
    var_0 = func_4(~(~vec3<u32>(abs(0u), 1u, ~u_input.a.x)), ~vec4<i32>(reverseBits(u_input.c), 35696i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, var_2.a), vec3<i32>(var_2.a, var_2.a, 0i)), var_1.a));
    let var_3 = -340f;
    return var_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~arg_1.a.zxx), arg_1.a.wyz, abs(arg_1.a.ywz));
    var var_1 = arg_1;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(func_3(1i, arg_3.x ^ 0i, global0[_wgslsmith_index_u32(u_input.b, 28u)]), _wgslsmith_dot_vec2_u32(~var_0.yx, u_input.a), 4294967295u, var_0.x), ~vec4<u32>(52552u << (1u % 32u), arg_1.a.x, ~11927u, firstTrailingBit(27081u))), var_1.b, func_1(), var_1.c);
    let var_3 = var_2.b;
    global2 = select(vec4<bool>(any(vec4<bool>(false, var_3, var_2.b || false, true)), any(global2.xww) | var_1.b, false, any(global2.yyy)), vec4<bool>(var_2.b | (all(vec3<bool>(false, true, false)) & all(vec4<bool>(global2.x, var_2.b, arg_1.b, var_1.b))), arg_3.x < 29912i, !all(!vec2<bool>(global2.x, var_2.b)), !var_1.b & false), !(any(vec4<bool>(var_3, arg_1.b, global2.x, var_2.b)) == (arg_1.b | var_3)) | any(select(!vec4<bool>(false, true, false, var_3), vec4<bool>(false, false, true, var_2.b), true)));
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -1i;
    global0 = array<Struct_3, 28>();
    let var_1 = global1[_wgslsmith_index_u32(12576u >> ((_wgslsmith_sub_u32(u_input.b, 0u) << (_wgslsmith_add_u32(4294967295u, func_5(func_1(), Struct_2(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), true, Struct_1(922f), Struct_1(-946f)), Struct_1(155f), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)))) % 32u)) % 32u), 7u)];
    var var_2 = Struct_3(var_1.b, Struct_2(~abs(~var_1.b.a), var_1.c, var_1.b.d, func_4(vec3<u32>(abs(1u), ~u_input.a.x, var_1.d.a.x), vec4<i32>(min(0i, 2147483647i), abs(-35497i), _wgslsmith_div_i32(-1i, 33713i), -u_input.c))));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, firstTrailingBit(firstTrailingBit(u_input.c) | u_input.c), ~1i ^ u_input.c), var_1.d.a.x, firstTrailingBit(~abs(select(19614u, 20992u, var_2.b.b))));
}

