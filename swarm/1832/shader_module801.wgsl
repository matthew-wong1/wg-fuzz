struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<i32>(i32(-2147483648), -44161i, 1i, 3877i), Struct_1(vec4<i32>(30020i, -40748i, 2147483647i, 4273i)), -309f, Struct_1(vec4<i32>(13757i, i32(-2147483648), 1i, 2147483647i))), Struct_2(vec4<i32>(i32(-2147483648), -1i, -59215i, 1i), Struct_1(vec4<i32>(21983i, 2147483647i, -2240i, -21660i)), -847f, Struct_1(vec4<i32>(i32(-2147483648), -88246i, 1i, 2147483647i))), Struct_2(vec4<i32>(i32(-2147483648), 22544i, 2147483647i, 10070i), Struct_1(vec4<i32>(-34077i, 12954i, i32(-2147483648), 61207i)), -383f, Struct_1(vec4<i32>(-13361i, -1i, -21959i, -13771i))), Struct_2(vec4<i32>(-1i, 320i, -7763i, 10764i), Struct_1(vec4<i32>(0i, 1i, -22884i, 2147483647i)), 321f, Struct_1(vec4<i32>(-5160i, 1i, -46030i, 2147483647i))), Struct_2(vec4<i32>(1i, 4269i, -33860i, 2147483647i), Struct_1(vec4<i32>(0i, 1i, 15276i, 3931i)), -1402f, Struct_1(vec4<i32>(2147483647i, 26398i, i32(-2147483648), -41179i))), Struct_2(vec4<i32>(-1i, 16344i, -1i, -28454i), Struct_1(vec4<i32>(2839i, -63111i, 1i, -14881i)), -1000f, Struct_1(vec4<i32>(1i, 2147483647i, -8734i, 39115i))), Struct_2(vec4<i32>(-11155i, -50562i, -37963i, 26998i), Struct_1(vec4<i32>(2147483647i, 38789i, 0i, 40983i)), 2140f, Struct_1(vec4<i32>(-1i, -37796i, -21428i, 1i))), Struct_2(vec4<i32>(0i, 41037i, i32(-2147483648), -6993i), Struct_1(vec4<i32>(25474i, 14874i, 8974i, -19291i)), -524f, Struct_1(vec4<i32>(23429i, i32(-2147483648), -7822i, -17375i))), Struct_2(vec4<i32>(-4357i, 11369i, 2147483647i, 2147483647i), Struct_1(vec4<i32>(0i, 0i, 2147483647i, -45618i)), 1048f, Struct_1(vec4<i32>(-2517i, -2167i, -22347i, -1i))), Struct_2(vec4<i32>(1i, -44218i, i32(-2147483648), 18655i), Struct_1(vec4<i32>(-2520i, 972i, 1i, i32(-2147483648))), 1131f, Struct_1(vec4<i32>(39960i, 1i, 1i, 48950i))), Struct_2(vec4<i32>(14803i, -35876i, -18097i, -1i), Struct_1(vec4<i32>(-22726i, 1i, 27578i, -1i)), 525f, Struct_1(vec4<i32>(-36550i, 18169i, -12656i, 2147483647i))), Struct_2(vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), Struct_1(vec4<i32>(-1i, 1i, 80366i, 2147483647i)), 1343f, Struct_1(vec4<i32>(i32(-2147483648), 1i, 0i, -25509i))), Struct_2(vec4<i32>(-35433i, 0i, -1i, -1i), Struct_1(vec4<i32>(35949i, -51875i, -1i, -2225i)), -269f, Struct_1(vec4<i32>(74468i, 7538i, 1i, -7014i))), Struct_2(vec4<i32>(1i, -19450i, -36285i, -1i), Struct_1(vec4<i32>(11195i, 6632i, i32(-2147483648), -5259i)), 247f, Struct_1(vec4<i32>(-369i, -1844i, -1i, 1i))), Struct_2(vec4<i32>(2147483647i, 5995i, -32414i, 24834i), Struct_1(vec4<i32>(-36690i, -1i, 2147483647i, -708i)), 1004f, Struct_1(vec4<i32>(5834i, 29773i, 1i, 20304i))), Struct_2(vec4<i32>(28368i, i32(-2147483648), 23951i, 2147483647i), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 0i)), -311f, Struct_1(vec4<i32>(1i, -71074i, 0i, -1i))), Struct_2(vec4<i32>(i32(-2147483648), 27809i, 0i, 17497i), Struct_1(vec4<i32>(0i, 2147483647i, -13560i, 1i)), 1271f, Struct_1(vec4<i32>(55857i, -32219i, 2147483647i, 0i))), Struct_2(vec4<i32>(2147483647i, -57170i, 16357i, -1i), Struct_1(vec4<i32>(14486i, 1i, 16550i, 58634i)), -941f, Struct_1(vec4<i32>(-6756i, -45993i, -1904i, -24535i))), Struct_2(vec4<i32>(-36570i, 1i, 0i, 1i), Struct_1(vec4<i32>(2147483647i, -1i, -26740i, 26674i)), -310f, Struct_1(vec4<i32>(6291i, -13578i, -1i, i32(-2147483648)))), Struct_2(vec4<i32>(-22587i, i32(-2147483648), 1i, 1i), Struct_1(vec4<i32>(1i, -12694i, -50117i, 23546i)), 209f, Struct_1(vec4<i32>(1i, i32(-2147483648), 6795i, -26537i))), Struct_2(vec4<i32>(105837i, -1601i, -12420i, 30085i), Struct_1(vec4<i32>(-17350i, 43822i, -1i, 35520i)), -1936f, Struct_1(vec4<i32>(-1i, 10704i, 32189i, i32(-2147483648)))));

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(1022f, 1203f, -2547f), vec3<f32>(-758f, -220f, -951f), vec3<f32>(1000f, -401f, -1000f), vec3<f32>(404f, 134f, -1000f), vec3<f32>(101f, -2571f, -841f), vec3<f32>(-771f, 1990f, -666f), vec3<f32>(436f, 1060f, -622f), vec3<f32>(1000f, -521f, 579f), vec3<f32>(-563f, 826f, 122f), vec3<f32>(1416f, 256f, 1269f), vec3<f32>(1000f, 942f, 1307f), vec3<f32>(-367f, -1000f, 866f), vec3<f32>(-178f, -338f, -1298f), vec3<f32>(-550f, -1206f, 1811f), vec3<f32>(-1000f, 480f, 462f), vec3<f32>(-509f, -1715f, 308f), vec3<f32>(-849f, -1000f, -350f), vec3<f32>(658f, -746f, -677f), vec3<f32>(-415f, -811f, -320f), vec3<f32>(-825f, 993f, -288f), vec3<f32>(285f, -610f, 866f), vec3<f32>(1000f, 449f, 1808f), vec3<f32>(1776f, 2629f, 1824f), vec3<f32>(-1041f, 1000f, 867f), vec3<f32>(194f, -1000f, 1149f));

var<private> global3: array<Struct_2, 15>;

var<private> global4: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(i32(-2147483648), -32006i, 2147483647i, 2147483647i), Struct_1(vec4<i32>(i32(-2147483648), 0i, 17911i, -32546i)), 523f, Struct_1(vec4<i32>(-46352i, 41775i, 1i, 0i))), Struct_2(vec4<i32>(35327i, 0i, -44600i, -25483i), Struct_1(vec4<i32>(-40121i, -40075i, -24248i, -1i)), -318f, Struct_1(vec4<i32>(i32(-2147483648), -19337i, -845i, 0i))), Struct_2(vec4<i32>(0i, i32(-2147483648), -10244i, 13452i), Struct_1(vec4<i32>(-17822i, 10196i, -1i, 2155i)), -835f, Struct_1(vec4<i32>(-12871i, i32(-2147483648), 1i, 8825i))), Struct_2(vec4<i32>(62200i, -41347i, i32(-2147483648), -12801i), Struct_1(vec4<i32>(-47045i, 2147483647i, -1i, i32(-2147483648))), 429f, Struct_1(vec4<i32>(0i, -65553i, i32(-2147483648), -1i))), Struct_2(vec4<i32>(1i, -1i, 2147483647i, -1i), Struct_1(vec4<i32>(49826i, 0i, 2147483647i, 21968i)), -2012f, Struct_1(vec4<i32>(1i, -40696i, -4072i, 0i))), Struct_2(vec4<i32>(-5100i, 1i, 217i, 0i), Struct_1(vec4<i32>(0i, 1i, -37894i, -1i)), -1000f, Struct_1(vec4<i32>(i32(-2147483648), 1i, -1i, -5945i))), Struct_2(vec4<i32>(2147483647i, 2147483647i, -1i, i32(-2147483648)), Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, 10983i)), -1000f, Struct_1(vec4<i32>(8845i, -27243i, 54355i, 6977i))), Struct_2(vec4<i32>(-10973i, 0i, -28311i, -20018i), Struct_1(vec4<i32>(-13388i, 88031i, -92534i, 19081i)), -400f, Struct_1(vec4<i32>(-35773i, -1i, 0i, 15181i))), Struct_2(vec4<i32>(13195i, 1i, 1i, 53379i), Struct_1(vec4<i32>(13307i, -1i, 11422i, -17276i)), -1038f, Struct_1(vec4<i32>(i32(-2147483648), -20996i, 19982i, 2147483647i))), Struct_2(vec4<i32>(43091i, -22567i, -1i, 48298i), Struct_1(vec4<i32>(-25666i, i32(-2147483648), -31938i, 11727i)), -788f, Struct_1(vec4<i32>(3341i, 1i, 20410i, -11817i))), Struct_2(vec4<i32>(-15889i, -26076i, -65550i, 1i), Struct_1(vec4<i32>(1170i, -22316i, 2147483647i, i32(-2147483648))), -268f, Struct_1(vec4<i32>(28998i, 0i, 64700i, -17065i))), Struct_2(vec4<i32>(2147483647i, -1i, 1i, 2147483647i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -11399i, -1i)), -1441f, Struct_1(vec4<i32>(-13187i, 2085i, 0i, 0i))), Struct_2(vec4<i32>(52236i, i32(-2147483648), 1i, -38278i), Struct_1(vec4<i32>(i32(-2147483648), 0i, -20974i, 6234i)), -1853f, Struct_1(vec4<i32>(2147483647i, -26585i, 2147483647i, 1i))), Struct_2(vec4<i32>(1i, -1i, 28145i, 2147483647i), Struct_1(vec4<i32>(33738i, i32(-2147483648), 1i, 1i)), -1002f, Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, 2147483647i))), Struct_2(vec4<i32>(i32(-2147483648), -32179i, -1i, -1i), Struct_1(vec4<i32>(2147483647i, 33466i, 0i, 35053i)), 691f, Struct_1(vec4<i32>(0i, i32(-2147483648), -64766i, 1i))), Struct_2(vec4<i32>(-22790i, -1i, 2147483647i, 1i), Struct_1(vec4<i32>(-64143i, i32(-2147483648), -11418i, 1i)), -187f, Struct_1(vec4<i32>(-25803i, 2147483647i, -13030i, -29977i))));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    global2 = array<vec3<f32>, 25>();
    return 295f;
}

fn func_2() -> bool {
    let var_0 = 1u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-785f, 895f)), _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(func_3(all(vec4<bool>(true, true, false, true)), Struct_3(global0[_wgslsmith_index_u32(var_0, 21u)], vec2<u32>(var_0, 55367u), u_input.a << (var_0 % 32u))))), -665f);
    let var_2 = all(!vec2<bool>((var_1.x == -684f) && true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_3 = ~abs(global1[_wgslsmith_index_u32(~14962u, 21u)]);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(253f - 1320f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, Struct_3(global4[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(24727u, 21u)], u_input.a))), -259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return true;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    var var_1 = vec3<bool>(true, arg_0, false);
    var var_2 = Struct_3(global4[_wgslsmith_index_u32(var_0.x, 16u)], ~vec2<u32>(var_0.x, select(1u & var_0.x, var_0.x, var_1.x)), -u_input.a);
    global3 = array<Struct_2, 15>();
    var var_3 = var_2.a.d;
    return vec4<i32>(_wgslsmith_add_i32(1i, -1i), u_input.a, -(firstTrailingBit(var_3.a.x) << (0u % 32u)), ~59795i);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))))) + _wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(13293u, 25u)])));
    let var_1 = Struct_1(-(firstLeadingBit(vec4<i32>(u_input.a, -11415i, -1i, -22660i)) >> (vec4<u32>(_wgslsmith_sub_u32(61544u, 12636u), countOneBits(33770u), _wgslsmith_clamp_u32(83470u, 36999u, 1u), 1u) % vec4<u32>(32u))));
    global1 = array<vec2<u32>, 21>();
    global3 = array<Struct_2, 15>();
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(~35986u), 21u)];
    return global4[_wgslsmith_index_u32(34226u, 16u)];
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, arg_2.x, 79053u, arg_2.x)), firstTrailingBit(vec4<u32>(arg_2.x, arg_3.x, 37684u, 50919u))) ^ ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.x, arg_3.x, arg_2.x, 61191u), vec4<u32>(2903u, arg_2.x, 4294967295u, 56864u)), _wgslsmith_sub_vec4_u32(~(~(vec4<u32>(arg_3.x, 1u, 27111u, 61165u) & vec4<u32>(0u, arg_2.x, 20770u, 54659u))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, arg_2.x, 57926u, 50259u), vec4<u32>(arg_3.x, 46092u, 4294967295u, arg_2.x), vec4<u32>(81976u, 4294967295u, 0u, 1u)), vec4<u32>(arg_2.x, 4294967295u, 4294967295u, arg_2.x)), ~max(vec4<u32>(31428u, arg_2.x, 1u, 86339u), vec4<u32>(4294967295u, arg_3.x, 2098u, 61731u)))));
    global2 = array<vec3<f32>, 25>();
    global2 = array<vec3<f32>, 25>();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(reverseBits(62825u), 15u)], arg_2.yx, -56834i << (~min(var_0.x, countOneBits(arg_2.x)) % 32u));
    return var_1.a.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32((global1[_wgslsmith_index_u32(1u, 21u)] & vec2<u32>(37311u, 20799u)) >> (global1[_wgslsmith_index_u32(max(~1u, 0u), 21u)] % vec2<u32>(32u)), vec2<u32>(1u, 1u), max(~(~global1[_wgslsmith_index_u32(4294967295u, 21u)]), global1[_wgslsmith_index_u32(1u, 21u)]));
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(reverseBits(var_0.x), 16828u));
    var var_2 = Struct_1(vec4<i32>(-1i) * -(~(vec4<i32>(-8555i, u_input.a, 11918i, 46i) << (vec4<u32>(var_0.x, 58534u, 4294967295u, var_0.x) % vec4<u32>(32u)))));
    let var_3 = func_6(all(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, _wgslsmith_f_op_f32(max(arg_1.c, arg_1.c)), _wgslsmith_f_op_f32(-arg_1.c)) * global2[_wgslsmith_index_u32(~max(4294967295u, var_0.x), 25u)]), func_4(!func_2(), -2158f, false, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 463f, -871f, arg_1.c)))), 2892f, 20058i < firstLeadingBit(arg_1.d.a.x)), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(15322u, 4294967295u, 4294967295u), ~vec3<u32>(var_0.x, var_0.x, var_0.x)))), min(_wgslsmith_div_vec3_u32(abs(vec3<u32>(var_0.x, var_0.x, 1u)), vec3<u32>(4294967295u, 32348u, var_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 76181u, 25983u), vec3<u32>(0u, 6876u, 62818u), vec3<u32>(var_0.x, 6834u, var_0.x)) << (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.x, 79748u, 63706u)), vec3<u32>(1u, 0u, 0u) & ~vec3<u32>(var_0.x, var_0.x, var_0.x)));
    let var_4 = Struct_4(func_2());
    return Struct_3(arg_1, var_0, arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec3<bool>(true, true, any(vec2<bool>(false, true))));
    var var_1 = ~(~_wgslsmith_div_u32(33430u, 1u));
    var var_2 = func_1(~vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-15481i, u_input.a), vec2<i32>(-2147483647i, u_input.a)), -_wgslsmith_div_i32(-40276i, 2147483647i), 0i, ~(~1i)), global0[_wgslsmith_index_u32(~((select(1110u, 12284u, true) & 1u) ^ ~27792u), 21u)]);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(17065u, 25u)]) - vec3<f32>(var_2.a.c, var_2.a.c, var_2.a.c)), vec4<i32>(-2147483647i, -u_input.a, countOneBits(var_2.a.a.x), var_2.a.d.a.x | 10542i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(514f - var_2.a.c)), any(vec2<bool>(true, var_0))).c)) * _wgslsmith_f_op_f32(max(var_2.a.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(var_2.a.c - -1451f))))));
    let var_4 = any(vec3<bool>((i32(-1i) * -u_input.a) != func_1(var_2.a.a, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 38371u), 16u)]).a.d.a.x, !var_0, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0, 1104f, !(!var_0 && false), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, var_2.a.c, var_2.a.c, var_2.a.c) - vec4<f32>(var_2.a.c, var_2.a.c, var_2.a.c, -1329f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1947f, var_2.a.c, var_2.a.c, var_2.a.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(851f, -1656f, 542f, 1043f), vec4<f32>(566f, var_2.a.c, var_2.a.c, var_2.a.c)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.c, -382f, var_2.a.c, var_2.a.c)))))).x, func_5(_wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(var_2.b.x, 25u)])), -_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, var_2.a.a.x, u_input.a), select(var_2.a.d.a, var_2.a.b.a, false)), _wgslsmith_f_op_f32(f32(-1f) * -466f), all(select(!vec2<bool>(true, var_4), !vec2<bool>(true, var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, var_4), var_0)))).c, 77530u);
}

