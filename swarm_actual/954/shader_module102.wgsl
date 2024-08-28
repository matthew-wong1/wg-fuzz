struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(-811f, 13286u, vec2<f32>(-1000f, 394f), 1u, true), vec2<i32>(-14976i, 71962i), Struct_1(-552f, 1u, vec2<f32>(-638f, -633f), 9815u, true)), Struct_2(Struct_1(-322f, 27596u, vec2<f32>(-811f, 461f), 0u, true), vec2<i32>(-23324i, 28637i), Struct_1(-799f, 0u, vec2<f32>(1249f, -1021f), 0u, true)), Struct_2(Struct_1(-456f, 36066u, vec2<f32>(2796f, -801f), 4294967295u, true), vec2<i32>(5973i, -31179i), Struct_1(-754f, 4294967295u, vec2<f32>(-205f, 318f), 17920u, false)), Struct_2(Struct_1(-744f, 58708u, vec2<f32>(959f, -1713f), 38257u, true), vec2<i32>(-34119i, -48554i), Struct_1(-2054f, 0u, vec2<f32>(-722f, 306f), 44438u, true)), Struct_2(Struct_1(-292f, 0u, vec2<f32>(-980f, 996f), 36703u, true), vec2<i32>(42866i, 49103i), Struct_1(542f, 0u, vec2<f32>(-394f, -169f), 6512u, true)), Struct_2(Struct_1(-1115f, 37960u, vec2<f32>(-518f, 1000f), 0u, false), vec2<i32>(-12403i, i32(-2147483648)), Struct_1(-814f, 15700u, vec2<f32>(-1174f, 616f), 98135u, false)), Struct_2(Struct_1(-1000f, 22543u, vec2<f32>(-1479f, -878f), 0u, false), vec2<i32>(0i, -29334i), Struct_1(-1088f, 0u, vec2<f32>(-3092f, -853f), 87291u, false)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(245f, 1u, vec2<f32>(-313f, 737f), 0u, true), vec2<i32>(-7913i, 2147483647i), Struct_1(281f, 12627u, vec2<f32>(221f, -1648f), 4294967295u, false)), Struct_2(Struct_1(-1780f, 27587u, vec2<f32>(-108f, 1760f), 40111u, true), vec2<i32>(2147483647i, 0i), Struct_1(1434f, 292u, vec2<f32>(-458f, 147f), 47086u, true)), Struct_2(Struct_1(292f, 1u, vec2<f32>(-151f, 1424f), 0u, true), vec2<i32>(-1i, 20560i), Struct_1(-399f, 42224u, vec2<f32>(318f, -711f), 1u, false)), Struct_2(Struct_1(-1825f, 0u, vec2<f32>(468f, 1098f), 446u, false), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(-422f, 1u, vec2<f32>(-1008f, -1548f), 1u, true)), Struct_2(Struct_1(743f, 1u, vec2<f32>(176f, -364f), 0u, true), vec2<i32>(-1i, 17597i), Struct_1(-544f, 1u, vec2<f32>(901f, 217f), 17459u, true)), Struct_2(Struct_1(1000f, 32823u, vec2<f32>(765f, 1745f), 50410u, false), vec2<i32>(1i, i32(-2147483648)), Struct_1(-872f, 1u, vec2<f32>(1673f, -1143f), 4294967295u, false)), Struct_2(Struct_1(-399f, 51350u, vec2<f32>(-462f, 1072f), 0u, true), vec2<i32>(0i, i32(-2147483648)), Struct_1(-924f, 41025u, vec2<f32>(-1270f, -324f), 1u, false)), Struct_2(Struct_1(1869f, 4294967295u, vec2<f32>(1397f, -1387f), 1u, false), vec2<i32>(-21089i, 16587i), Struct_1(556f, 8461u, vec2<f32>(-241f, 992f), 86943u, true)), Struct_2(Struct_1(-347f, 11845u, vec2<f32>(-896f, 1132f), 9405u, true), vec2<i32>(0i, 42475i), Struct_1(281f, 44221u, vec2<f32>(740f, -639f), 14565u, false)), Struct_2(Struct_1(807f, 4294967295u, vec2<f32>(701f, 991f), 68183u, false), vec2<i32>(i32(-2147483648), -30341i), Struct_1(2146f, 21821u, vec2<f32>(2417f, 1050f), 24824u, false)), Struct_2(Struct_1(-2842f, 4294967295u, vec2<f32>(207f, -1063f), 1u, true), vec2<i32>(10432i, -16868i), Struct_1(-320f, 31493u, vec2<f32>(-410f, -652f), 156927u, true)), Struct_2(Struct_1(594f, 1u, vec2<f32>(-759f, -520f), 92u, false), vec2<i32>(0i, 1i), Struct_1(-894f, 1u, vec2<f32>(-511f, 379f), 1u, false)), Struct_2(Struct_1(1210f, 54255u, vec2<f32>(-1322f, -259f), 58133u, false), vec2<i32>(1i, -4613i), Struct_1(595f, 273u, vec2<f32>(-1426f, 118f), 4705u, false)), Struct_2(Struct_1(-590f, 1072u, vec2<f32>(-1274f, -1000f), 42221u, false), vec2<i32>(0i, i32(-2147483648)), Struct_1(417f, 4294967295u, vec2<f32>(-183f, -1436f), 14710u, false)), Struct_2(Struct_1(-1035f, 19185u, vec2<f32>(188f, 511f), 1u, false), vec2<i32>(-1i, 6951i), Struct_1(-1599f, 4294967295u, vec2<f32>(657f, -1070f), 0u, false)), Struct_2(Struct_1(-165f, 39987u, vec2<f32>(1358f, -299f), 31106u, true), vec2<i32>(i32(-2147483648), -31096i), Struct_1(-1000f, 8001u, vec2<f32>(159f, -754f), 29114u, false)), Struct_2(Struct_1(753f, 0u, vec2<f32>(273f, 1179f), 0u, false), vec2<i32>(1i, -10907i), Struct_1(-2100f, 21096u, vec2<f32>(-606f, 249f), 1u, false)), Struct_2(Struct_1(-1119f, 929u, vec2<f32>(376f, -1029f), 154575u, false), vec2<i32>(-1i, -1i), Struct_1(-384f, 0u, vec2<f32>(1734f, 2192f), 1u, false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    global3 = array<Struct_2, 18>();
    var var_0 = Struct_2(Struct_1(1133f, min(reverseBits(global0.d) ^ u_input.a.x, max(global0.d, 1u) << (global2.d % 32u)), vec2<f32>(217f, arg_3.c.a), 109091u, any(vec2<bool>(true, u_input.b.x <= arg_3.b.x))), -_wgslsmith_add_vec2_i32(select(u_input.b, u_input.b, vec2<bool>(false, true)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4866i, -11326i), vec2<i32>(0i, arg_3.b.x)), _wgslsmith_mod_i32(1132i, 1i))), arg_3.a);
    global3 = array<Struct_2, 18>();
    global0 = arg_3.a;
    let var_1 = Struct_2(Struct_1(arg_1.x, firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 441f) - arg_3.a.c))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~4294967295u), ~arg_3.a.d | 55478u, firstTrailingBit(~7351u)), var_0.c.e), firstTrailingBit(_wgslsmith_add_vec2_i32(-var_0.b, var_0.b)), Struct_1(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_div_f32(-476f, global2.a), true)), arg_3.c.b, var_0.c.c, var_0.a.b, !(_wgslsmith_f_op_f32(global2.c.x + var_0.a.c.x) <= global2.c.x)));
    return reverseBits(arg_3.b);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -118f), global2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, 1000f) - arg_0.c.c)) * vec2<f32>(_wgslsmith_f_op_f32(-1037f + arg_0.c.c.x), global0.a)), ~4294967295u, global2.e), select(arg_0.b, func_3(vec3<f32>(_wgslsmith_f_op_f32(global2.c.x - 912f), -623f, -333f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-440f, arg_0.c.a))) * _wgslsmith_f_op_vec2_f32(select(arg_0.a.c, vec2<f32>(global0.c.x, global0.c.x), global2.e))), global0.c.x == -1314f, arg_0), !global2.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(938f, -269f, true))), select(~firstTrailingBit(51379u), 4294967295u, global2.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(2135f, _wgslsmith_div_f32(global0.c.x, global0.a)) + global0.c), u_input.a.x, true));
    let var_1 = u_input.b;
    var var_2 = !(!vec3<bool>(any(vec3<bool>(var_0.a.e, arg_0.a.e, true)), true, false));
    let var_3 = ~0u;
    let var_4 = false;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = 39259u;
    var_0 = 4294967295u;
    global3 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_sub_u32(min(~arg_0.d, _wgslsmith_mult_u32(~firstLeadingBit(1u), func_2(func_2(Struct_2(Struct_1(global2.c.x, u_input.a.x, vec2<f32>(706f, 2217f), 33197u, arg_0.e), u_input.b, arg_0), vec3<i32>(arg_3.b.x, 14726i, arg_3.b.x)), countOneBits(vec3<i32>(-2147483647i, 1i, arg_3.b.x))).c.d)), 1u);
    let var_2 = func_2(Struct_2(Struct_1(global2.c.x, 7968u, global2.c, ~_wgslsmith_mod_u32(global0.b, 1u), global0.e), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_3.b, u_input.b), func_3(vec3<f32>(arg_2, -953f, -990f), arg_3.c.c, true, global1[_wgslsmith_index_u32(67998u, 7u)])) ^ u_input.b, arg_0), ~(~(-vec3<i32>(10225i, u_input.b.x, u_input.b.x) << (vec3<u32>(global2.b, 23892u, 4294967295u) % vec3<u32>(32u))))).a;
    return func_2(func_2(Struct_2(func_2(func_2(arg_3, vec3<i32>(arg_3.b.x, 45677i, arg_3.b.x)), -vec3<i32>(68925i, 17624i, -12326i)).a, u_input.b, func_2(func_2(arg_3, vec3<i32>(arg_3.b.x, 0i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.b.x, arg_3.b.x, -2147483647i), vec3<i32>(-32580i, u_input.b.x, u_input.b.x))).a), reverseBits(~vec3<i32>(2147483647i, 2147483647i, u_input.b.x) ^ -vec3<i32>(2147483647i, u_input.b.x, u_input.b.x))), max(~(~vec3<i32>(u_input.b.x, -18273i, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(select(u_input.b.x, -2147483647i, global2.e), 0i, arg_3.b.x >> (78156u % 32u)), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, -2147483647i, arg_3.b.x), vec3<i32>(2147483647i, u_input.b.x, 1025i) >> (vec3<u32>(u_input.a.x, var_2.d, var_1) % vec3<u32>(32u)))))).c;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = func_4(arg_1, true, _wgslsmith_f_op_f32(f32(-1f) * -1172f), func_2(global3[_wgslsmith_index_u32(global2.b, 18u)], vec3<i32>(-abs(arg_0.x), -8779i, -27612i)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), ~1u, var_0.c, 66859u, false);
    var_0 = func_2(func_2(func_2(Struct_2(func_2(global3[_wgslsmith_index_u32(global2.b, 18u)], vec3<i32>(-43794i, -2147483647i, u_input.b.x)).a, vec2<i32>(arg_0.x, 0i), arg_1), select(_wgslsmith_div_vec3_i32(vec3<i32>(-26245i, arg_0.x, 0i), vec3<i32>(u_input.b.x, 4787i, 15841i)), vec3<i32>(0i, 1i, arg_0.x), vec3<bool>(false, false, var_1.e))), abs(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, 32526i, arg_0.x), vec3<i32>(u_input.b.x, 6628i, arg_0.x)))), abs(max(countOneBits(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)), ~vec3<i32>(6625i, 2147483647i, -2147483647i))) ^ ~firstTrailingBit(~vec3<i32>(u_input.b.x, arg_0.x, arg_0.x))).c;
    let var_2 = var_0.e;
    var var_3 = -countOneBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -21767i, arg_0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(u_input.b.x, 0i, 1i)))));
    return _wgslsmith_add_u32(reverseBits(1u), arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_1(global2.c.x, firstLeadingBit(~func_1(~u_input.b, Struct_1(global0.c.x, 30980u, global2.c, u_input.a.x, global0.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, global2.a), _wgslsmith_f_op_vec2_f32(global0.c * global2.c))) - _wgslsmith_f_op_vec2_f32(-func_4(Struct_1(global0.c.x, 5951u, vec2<f32>(global0.a, -585f), 7361u, true), any(vec3<bool>(false, global2.e, true)), global2.a, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, global0.b), 7u)]).c)), _wgslsmith_mod_u32(11932u, firstLeadingBit(0u)), global0.e);
    var var_2 = min(reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, u_input.b.x, u_input.b.x, 24358i), -vec4<i32>(u_input.b.x, u_input.b.x, -264i, 45283i))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b.x, -11877i, -2147483647i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(4963i, 3358i, -1i, 41449i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-21902i, u_input.b.x, -110i, u_input.b.x)))) | vec4<i32>(-28909i, u_input.b.x, _wgslsmith_add_i32(u_input.b.x, func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, -127f, 470f))), vec2<f32>(global2.a, -604f), !var_1.e, func_2(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], vec3<i32>(21820i, -4170i, 26660i))).x), _wgslsmith_mod_i32(u_input.b.x | -u_input.b.x, func_3(vec3<f32>(1152f, var_1.a, global2.a), vec2<f32>(global0.c.x, global0.a), global2.e, Struct_2(var_1, u_input.b, var_1)).x >> (~0u % 32u)));
    var var_3 = func_3(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-242f, global0.c.x), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.x - global2.c.x), _wgslsmith_f_op_f32(step(global0.c.x, global2.a))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) - var_1.c.x), var_1.b > 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global2.a))))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -729f)))), any(vec3<bool>(var_1.e, false, var_0)), Struct_2(Struct_1(1278f, _wgslsmith_mod_u32(func_1(vec2<i32>(u_input.b.x, -2147483647i), Struct_1(global0.a, u_input.a.x, var_1.c, u_input.a.x, global0.e)), 1u), global0.c, global2.b, !(-2147483647i != u_input.b.x)), -abs(vec2<i32>(u_input.b.x, -2147483647i)) & vec2<i32>(min(u_input.b.x, var_2.x), var_2.x), var_1)).x;
    var var_4 = vec3<i32>(abs(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_2.x, u_input.b.x), -6216i)), _wgslsmith_sub_i32((select(u_input.b.x, 55697i, var_1.e) & (-62682i & u_input.b.x)) >> (var_1.b % 32u), -(~(-var_2.x))), var_2.x);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f)), reverseBits(_wgslsmith_sub_u32(~(4294967295u << (global0.d % 32u)), ~(global2.d << (4294967295u % 32u)))), _wgslsmith_f_op_vec2_f32(step(global2.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(439f * global0.a) + 315f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + 1092f)))), 0u, false);
    let var_6 = vec4<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(floor(125f)))), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(1190f - global2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1204f), _wgslsmith_div_f32(var_1.c.x, -275f));
    let var_7 = var_6.yw;
    let var_8 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(74328u, ~(~u_input.a.x | min(0u, 92702u)))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-625f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1050f)) * var_8.a.c.x))), abs(func_1(~var_8.b, Struct_1(global2.a, _wgslsmith_add_u32(0u, 1u), _wgslsmith_f_op_vec2_f32(var_5.c + global0.c), var_5.b, !global2.e))), vec4<i32>(-1i, -1i, ~0i >> (global2.d % 32u), 3790i) | ~(-(vec4<i32>(var_2.x, var_8.b.x, 2147483647i, var_8.b.x) & vec4<i32>(2147483647i, var_4.x, var_4.x, 1i))), -1i, global2.b);
}

