struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(vec4<f32>(842f, 686f, 1165f, 795f), 2147483647i, true), Struct_2(vec4<f32>(-585f, -1000f, -1000f, 2444f), -1i, true), vec3<u32>(1u, 0u, 4294967295u), vec3<i32>(1i, 1i, i32(-2147483648))), Struct_3(Struct_2(vec4<f32>(-1232f, -779f, 181f, -209f), -3616i, false), Struct_2(vec4<f32>(955f, 1529f, 800f, 514f), -1i, false), vec3<u32>(4294967295u, 29920u, 42186u), vec3<i32>(1830i, 2147483647i, 41267i)), Struct_3(Struct_2(vec4<f32>(-1002f, -1000f, -103f, -1417f), -13334i, false), Struct_2(vec4<f32>(-563f, -1751f, -199f, -1376f), 1i, true), vec3<u32>(0u, 4294967295u, 73189u), vec3<i32>(2147483647i, 3868i, -1i)), Struct_3(Struct_2(vec4<f32>(425f, 599f, -112f, 1047f), 1i, false), Struct_2(vec4<f32>(-636f, 919f, 2067f, -105f), -37427i, true), vec3<u32>(4294967295u, 16401u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 8992i)), Struct_3(Struct_2(vec4<f32>(-725f, 494f, -847f, -301f), i32(-2147483648), false), Struct_2(vec4<f32>(-1582f, -1393f, -112f, 839f), i32(-2147483648), true), vec3<u32>(63608u, 0u, 21627u), vec3<i32>(1870i, i32(-2147483648), -1i)), Struct_3(Struct_2(vec4<f32>(844f, -1016f, 392f, -769f), -20546i, false), Struct_2(vec4<f32>(-320f, 470f, 1589f, -1287f), 0i, true), vec3<u32>(19525u, 0u, 64281u), vec3<i32>(9949i, -1i, 2147483647i)), Struct_3(Struct_2(vec4<f32>(991f, -2880f, -742f, -345f), 2147483647i, false), Struct_2(vec4<f32>(287f, -383f, 109f, 677f), -30666i, false), vec3<u32>(53246u, 0u, 1u), vec3<i32>(i32(-2147483648), 43630i, 2147483647i)), Struct_3(Struct_2(vec4<f32>(1675f, 992f, 244f, 517f), 0i, true), Struct_2(vec4<f32>(-720f, -454f, -2330f, 422f), -51938i, true), vec3<u32>(24614u, 0u, 0u), vec3<i32>(-16609i, 2147483647i, 2147483647i)), Struct_3(Struct_2(vec4<f32>(967f, 163f, 531f, -118f), 30919i, true), Struct_2(vec4<f32>(-1100f, 972f, 169f, -1409f), i32(-2147483648), false), vec3<u32>(0u, 2574u, 0u), vec3<i32>(0i, 0i, -1i)), Struct_3(Struct_2(vec4<f32>(142f, 649f, -1219f, -314f), 10949i, true), Struct_2(vec4<f32>(1976f, 262f, -286f, -1410f), 2147483647i, true), vec3<u32>(0u, 41138u, 0u), vec3<i32>(0i, 1i, 1i)), Struct_3(Struct_2(vec4<f32>(200f, -733f, 288f, -766f), -1i, false), Struct_2(vec4<f32>(248f, -652f, -1776f, -369f), -1445i, false), vec3<u32>(67959u, 4294967295u, 20629u), vec3<i32>(11088i, i32(-2147483648), -16002i)), Struct_3(Struct_2(vec4<f32>(2029f, -1374f, -941f, -610f), i32(-2147483648), true), Struct_2(vec4<f32>(-595f, 1575f, 426f, 212f), 16767i, false), vec3<u32>(50855u, 13155u, 0u), vec3<i32>(-1i, 1i, -3218i)), Struct_3(Struct_2(vec4<f32>(-605f, -404f, 1000f, -570f), -8200i, true), Struct_2(vec4<f32>(-2019f, -2359f, -1454f, -119f), -9790i, false), vec3<u32>(20846u, 20021u, 50640u), vec3<i32>(77252i, -63301i, -45787i)), Struct_3(Struct_2(vec4<f32>(-1000f, 1322f, -500f, 928f), -15032i, false), Struct_2(vec4<f32>(1000f, -1214f, 889f, -551f), 2147483647i, false), vec3<u32>(6880u, 1u, 25681u), vec3<i32>(-1i, 0i, -58575i)), Struct_3(Struct_2(vec4<f32>(-1065f, 333f, 444f, -2902f), 1i, true), Struct_2(vec4<f32>(-264f, -1371f, -272f, 1046f), i32(-2147483648), true), vec3<u32>(4294967295u, 45813u, 0u), vec3<i32>(i32(-2147483648), -47739i, -1i)), Struct_3(Struct_2(vec4<f32>(-322f, 302f, -1268f, 865f), 2147483647i, false), Struct_2(vec4<f32>(-667f, 337f, 1396f, -861f), 0i, true), vec3<u32>(1u, 40267u, 62062u), vec3<i32>(21934i, -53884i, 0i)), Struct_3(Struct_2(vec4<f32>(2276f, -317f, 166f, 411f), 2147483647i, true), Struct_2(vec4<f32>(-565f, 845f, 537f, 128f), 16892i, false), vec3<u32>(0u, 43423u, 22038u), vec3<i32>(-9229i, -5530i, 9262i)), Struct_3(Struct_2(vec4<f32>(-1135f, -679f, -1244f, -248f), 0i, false), Struct_2(vec4<f32>(-847f, 732f, 1000f, 168f), -36488i, false), vec3<u32>(0u, 1u, 67239u), vec3<i32>(1i, -1i, -3793i)), Struct_3(Struct_2(vec4<f32>(177f, 1991f, 334f, 523f), 2147483647i, true), Struct_2(vec4<f32>(326f, 108f, -2234f, 428f), 3771i, false), vec3<u32>(35544u, 27090u, 62948u), vec3<i32>(27921i, -15221i, 2147483647i)), Struct_3(Struct_2(vec4<f32>(-797f, -939f, 590f, -1361f), 687i, false), Struct_2(vec4<f32>(-188f, 979f, -124f, 3553f), 36399i, true), vec3<u32>(4294967295u, 1u, 10760u), vec3<i32>(i32(-2147483648), -3920i, -1i)), Struct_3(Struct_2(vec4<f32>(154f, 955f, 928f, 708f), i32(-2147483648), false), Struct_2(vec4<f32>(2028f, -447f, -149f, -585f), 0i, true), vec3<u32>(9205u, 1u, 19453u), vec3<i32>(0i, -1i, 1i)), Struct_3(Struct_2(vec4<f32>(-372f, 288f, -172f, 787f), 2147483647i, true), Struct_2(vec4<f32>(-146f, -1364f, -130f, 878f), -29343i, false), vec3<u32>(25134u, 4294967295u, 83412u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_3(Struct_2(vec4<f32>(301f, 704f, -1614f, -129f), i32(-2147483648), true), Struct_2(vec4<f32>(607f, -2212f, -304f, -521f), -20320i, true), vec3<u32>(56286u, 44685u, 2498u), vec3<i32>(41724i, 38163i, -65754i)), Struct_3(Struct_2(vec4<f32>(-604f, -1694f, -452f, -1000f), -15476i, false), Struct_2(vec4<f32>(575f, 128f, 422f, -1000f), -53185i, false), vec3<u32>(54096u, 4294967295u, 12521u), vec3<i32>(0i, -41336i, 32055i)));

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    let var_0 = !(~0u >= abs(arg_0));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~15592u), 35461u, ~1u, ~arg_0), vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.d & u_input.d, _wgslsmith_mod_vec3_u32(u_input.d, u_input.d)), u_input.d.x, _wgslsmith_sub_u32(55105u, 20224u) | select(0u, arg_0, true))), u_input.d.x), 24u)];
    var var_2 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 29201u) & var_1.c.zz), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c.x, 28791u), vec2<u32>(4294967295u, 10134u), vec2<u32>(u_input.d.x, 32769u)), vec2<u32>(arg_0, 106337u), var_0))));
    var_2 = vec2<u32>(_wgslsmith_mult_u32(countOneBits(u_input.d.x), firstLeadingBit(var_1.c.x)), countOneBits((_wgslsmith_clamp_u32(var_2.x, 4396u, var_1.c.x) >> (1u % 32u)) & ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_2.x, 0u, 4294967295u))));
    global1 = array<vec3<bool>, 15>();
    return _wgslsmith_add_u32(4294967295u ^ _wgslsmith_div_u32(~arg_0, 0u), 1u) <= 0u;
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 15>();
    var var_0 = !vec3<bool>(any(vec2<bool>(true, true)), false, true);
    var var_1 = Struct_4(1u, Struct_1(!vec4<bool>(u_input.c <= u_input.c, any(vec3<bool>(var_0.x, false, true)), func_3(1u, vec3<bool>(true, true, var_0.x), vec3<f32>(-771f, 152f, 240f), vec4<i32>(u_input.c, u_input.c, u_input.b.x, 1i)), true), 13467u, func_3(u_input.d.x, vec3<bool>(false, var_0.x, var_0.x && var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, 583f, 1391f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, 455f, 308f))), u_input.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(795f + 488f), -104f, var_0.x))))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.d)), 879f, 349f, _wgslsmith_f_op_f32(round(-1398f))))));
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    var var_0 = 1i & reverseBits(-abs(u_input.c));
    return 963f;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_2(), Struct_5(global0[_wgslsmith_index_u32(u_input.d.x, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(112f))), -571f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(f32(-1f) * -1468f), 1570f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1297f, 496f)));
    global1 = array<vec3<bool>, 15>();
    let var_1 = reverseBits(~vec4<u32>(1u, u_input.d.x, 4294967295u, firstTrailingBit(u_input.d.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-308f)));
    return firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1554f, -1000f, 260f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1387f, -1803f, -1391f) + vec3<f32>(-571f, -698f, 691f))), true)))));
    global1 = array<vec3<bool>, 15>();
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(firstLeadingBit(u_input.b.x) << (u_input.d.x % 32u)), func_1(), max(max(u_input.c, abs(u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(11385i, 7924i, -3019i, -1i), ~vec4<i32>(-1i, 11969i, u_input.b.x, 42557i))), abs(_wgslsmith_mult_i32(u_input.b.x, ~u_input.a.x))), ~(-(~u_input.a & _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.c, -1i, 2147483647i, -1i)))));
    var var_2 = -var_1.xxy;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1503f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 260f)))))));
    var var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -105f, 755f), vec4<f32>(var_0.x, 532f, -528f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, var_0.x, -1000f, -291f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, var_0.x, var_0.x, -446f))))), var_1.x, 28096u >= _wgslsmith_add_u32(abs(~u_input.d.x), ~6342u));
    let var_4 = vec3<bool>(var_3.c, select(false, func_3(~u_input.d.x, vec3<bool>(var_3.c, true, var_3.c), _wgslsmith_div_vec3_f32(vec3<f32>(-1101f, 1498f, var_3.a.x), vec3<f32>(-1498f, var_0.x, -801f)), vec4<i32>(-8514i, var_2.x, var_3.b, -5348i)), true) || !any(select(vec4<bool>(var_3.c, true, var_3.c, var_3.c), vec4<bool>(var_3.c, true, false, false), var_3.c)), func_2().a.x);
    var_2 = var_1.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, -1473i), 32365i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1218f, var_3.a.x) * -1042f)) * var_3.a.x), u_input.d.x);
}

