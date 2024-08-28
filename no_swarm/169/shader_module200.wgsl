struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(1214f, vec3<i32>(0i, -1i, -9450i)), Struct_1(282f, vec3<i32>(18521i, -40864i, 0i)), vec3<u32>(0u, 24889u, 0u), Struct_1(-1097f, vec3<i32>(0i, i32(-2147483648), -12688i)), Struct_1(-2081f, vec3<i32>(-5296i, 39894i, 1i))), Struct_2(Struct_1(-929f, vec3<i32>(-33569i, -33387i, -66434i)), Struct_1(621f, vec3<i32>(18614i, -26684i, 0i)), vec3<u32>(1u, 4294967295u, 72786u), Struct_1(1451f, vec3<i32>(10180i, i32(-2147483648), 42070i)), Struct_1(-1654f, vec3<i32>(54388i, 1i, -80687i))), Struct_2(Struct_1(1066f, vec3<i32>(-24367i, 1i, 0i)), Struct_1(-1127f, vec3<i32>(2147483647i, -1i, -11546i)), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(1337f, vec3<i32>(-17751i, -1i, 2147483647i)), Struct_1(1362f, vec3<i32>(-21808i, i32(-2147483648), 20918i))), Struct_2(Struct_1(1000f, vec3<i32>(1i, 0i, 0i)), Struct_1(-290f, vec3<i32>(0i, i32(-2147483648), 0i)), vec3<u32>(9342u, 947u, 45724u), Struct_1(1000f, vec3<i32>(-1i, 0i, -1i)), Struct_1(-1723f, vec3<i32>(6097i, -1i, 16938i))), Struct_2(Struct_1(-115f, vec3<i32>(1326i, 0i, 2147483647i)), Struct_1(-479f, vec3<i32>(-7067i, 66278i, i32(-2147483648))), vec3<u32>(1u, 0u, 1u), Struct_1(-277f, vec3<i32>(-50699i, -23406i, 1i)), Struct_1(763f, vec3<i32>(-45261i, -42828i, -1i))), Struct_2(Struct_1(989f, vec3<i32>(-2902i, 0i, -37230i)), Struct_1(-403f, vec3<i32>(2147483647i, -26235i, i32(-2147483648))), vec3<u32>(37488u, 5590u, 325u), Struct_1(591f, vec3<i32>(-4398i, -5711i, 7841i)), Struct_1(2477f, vec3<i32>(-30095i, 42778i, 14801i))), Struct_2(Struct_1(-711f, vec3<i32>(-1i, -20383i, -19421i)), Struct_1(685f, vec3<i32>(35098i, 2147483647i, i32(-2147483648))), vec3<u32>(0u, 8295u, 1u), Struct_1(552f, vec3<i32>(0i, -19167i, i32(-2147483648))), Struct_1(-152f, vec3<i32>(1i, -1i, 2147483647i))), Struct_2(Struct_1(1644f, vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_1(-1059f, vec3<i32>(-44631i, 0i, i32(-2147483648))), vec3<u32>(0u, 74917u, 1819u), Struct_1(1423f, vec3<i32>(0i, 17307i, 53389i)), Struct_1(-1547f, vec3<i32>(-1i, -61684i, 40958i))), Struct_2(Struct_1(-241f, vec3<i32>(15406i, 2147483647i, -26285i)), Struct_1(-952f, vec3<i32>(1i, 2147483647i, 1i)), vec3<u32>(27336u, 15868u, 1u), Struct_1(-664f, vec3<i32>(-75282i, -17779i, -36486i)), Struct_1(883f, vec3<i32>(46788i, 0i, -1i))), Struct_2(Struct_1(1219f, vec3<i32>(38559i, 11435i, 1i)), Struct_1(781f, vec3<i32>(1i, -17787i, -18798i)), vec3<u32>(12296u, 12683u, 4294967295u), Struct_1(-108f, vec3<i32>(17613i, -49676i, -17443i)), Struct_1(1721f, vec3<i32>(-33335i, 331i, 10666i))), Struct_2(Struct_1(-473f, vec3<i32>(i32(-2147483648), -10830i, 2147483647i)), Struct_1(-600f, vec3<i32>(1145i, -1i, 5044i)), vec3<u32>(24575u, 1u, 4294967295u), Struct_1(-1769f, vec3<i32>(-1i, -12983i, 25165i)), Struct_1(240f, vec3<i32>(i32(-2147483648), i32(-2147483648), -7689i))), Struct_2(Struct_1(297f, vec3<i32>(i32(-2147483648), 19919i, 1i)), Struct_1(-452f, vec3<i32>(i32(-2147483648), -37511i, i32(-2147483648))), vec3<u32>(59540u, 1u, 4294967295u), Struct_1(-995f, vec3<i32>(-1i, 0i, -31118i)), Struct_1(1000f, vec3<i32>(0i, -1i, i32(-2147483648)))), Struct_2(Struct_1(281f, vec3<i32>(2147483647i, 2147483647i, 60706i)), Struct_1(477f, vec3<i32>(1i, -24357i, -45521i)), vec3<u32>(137874u, 1u, 8157u), Struct_1(590f, vec3<i32>(-49888i, 43117i, -1i)), Struct_1(539f, vec3<i32>(7100i, 0i, -1i))), Struct_2(Struct_1(-746f, vec3<i32>(i32(-2147483648), -1i, 70264i)), Struct_1(930f, vec3<i32>(-71788i, 82896i, -15251i)), vec3<u32>(0u, 1u, 25968u), Struct_1(1849f, vec3<i32>(1i, -23944i, 2147483647i)), Struct_1(-831f, vec3<i32>(-59110i, i32(-2147483648), 1i))), Struct_2(Struct_1(722f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_1(831f, vec3<i32>(-7829i, 38185i, -21213i)), vec3<u32>(1u, 1u, 3930u), Struct_1(-393f, vec3<i32>(2147483647i, 0i, 0i)), Struct_1(352f, vec3<i32>(0i, 52702i, 0i))), Struct_2(Struct_1(918f, vec3<i32>(35030i, -34236i, -23438i)), Struct_1(-1564f, vec3<i32>(1i, -7782i, -4771i)), vec3<u32>(3971u, 4294967295u, 0u), Struct_1(-1169f, vec3<i32>(-10146i, 42176i, 1i)), Struct_1(1000f, vec3<i32>(58389i, 14230i, 3221i))), Struct_2(Struct_1(-169f, vec3<i32>(15822i, i32(-2147483648), 22770i)), Struct_1(-261f, vec3<i32>(-20608i, -6608i, 53354i)), vec3<u32>(0u, 16560u, 0u), Struct_1(357f, vec3<i32>(-35021i, 1i, i32(-2147483648))), Struct_1(613f, vec3<i32>(-20569i, -5350i, 2147483647i))), Struct_2(Struct_1(-331f, vec3<i32>(-17377i, 0i, -3979i)), Struct_1(-1055f, vec3<i32>(i32(-2147483648), -1i, -6757i)), vec3<u32>(37653u, 38625u, 1u), Struct_1(-1996f, vec3<i32>(0i, -37468i, 17808i)), Struct_1(-266f, vec3<i32>(28397i, -40316i, 2147483647i))), Struct_2(Struct_1(-571f, vec3<i32>(2147483647i, 2147483647i, -13856i)), Struct_1(-2076f, vec3<i32>(i32(-2147483648), 68114i, 2147483647i)), vec3<u32>(13053u, 24973u, 42295u), Struct_1(620f, vec3<i32>(-43266i, 1i, 0i)), Struct_1(-140f, vec3<i32>(-1i, 39285i, -79588i))), Struct_2(Struct_1(449f, vec3<i32>(13634i, -45817i, 17977i)), Struct_1(-1000f, vec3<i32>(-63946i, -72529i, 33951i)), vec3<u32>(4294967295u, 48360u, 39349u), Struct_1(-1586f, vec3<i32>(1i, 1i, -24578i)), Struct_1(231f, vec3<i32>(-6214i, 2147483647i, -77047i))), Struct_2(Struct_1(-572f, vec3<i32>(-9986i, -32469i, 1i)), Struct_1(1984f, vec3<i32>(-6968i, 1i, -64296i)), vec3<u32>(17680u, 33213u, 4968u), Struct_1(-487f, vec3<i32>(-60957i, 44490i, i32(-2147483648))), Struct_1(1392f, vec3<i32>(25105i, i32(-2147483648), 52392i))), Struct_2(Struct_1(-2148f, vec3<i32>(-57376i, 2147483647i, -25254i)), Struct_1(923f, vec3<i32>(-59881i, -3876i, 26946i)), vec3<u32>(127516u, 29178u, 45057u), Struct_1(-1727f, vec3<i32>(-29817i, i32(-2147483648), -2245i)), Struct_1(-319f, vec3<i32>(-1i, 0i, -38992i))), Struct_2(Struct_1(682f, vec3<i32>(-5174i, 2147483647i, 2147483647i)), Struct_1(1987f, vec3<i32>(2147483647i, 0i, 23947i)), vec3<u32>(85207u, 1u, 0u), Struct_1(-639f, vec3<i32>(-31178i, -2529i, -52598i)), Struct_1(-1058f, vec3<i32>(-43i, 2147483647i, 1i))), Struct_2(Struct_1(361f, vec3<i32>(-37034i, 2147483647i, -28093i)), Struct_1(447f, vec3<i32>(-2867i, 50702i, 1i)), vec3<u32>(4294967295u, 28274u, 36278u), Struct_1(-893f, vec3<i32>(0i, -1i, 48259i)), Struct_1(-399f, vec3<i32>(-48206i, 1i, 1i))), Struct_2(Struct_1(584f, vec3<i32>(1i, -1i, -46846i)), Struct_1(-698f, vec3<i32>(-26907i, i32(-2147483648), i32(-2147483648))), vec3<u32>(18954u, 4294967295u, 0u), Struct_1(145f, vec3<i32>(0i, 0i, -3212i)), Struct_1(536f, vec3<i32>(-1i, -1580i, 2147483647i))));

var<private> global2: Struct_3 = Struct_3(Struct_1(150f, vec3<i32>(-35689i, -65073i, -65778i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = global2.a;
    let var_1 = false;
    let var_2 = arg_3;
    global1 = array<Struct_2, 25>();
    let var_3 = arg_0;
    return ~firstTrailingBit(arg_3.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    global0 = array<vec3<bool>, 17>();
    global1 = array<Struct_2, 25>();
    let var_0 = Struct_2(global2.a, Struct_1(global2.a.a, global2.a.b), vec3<u32>(_wgslsmith_div_u32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-965f, arg_0.a, -899f, global2.a.a), vec4<f32>(global2.a.a, 880f, arg_0.a, -441f)), vec4<u32>(16631u, u_input.b, 0u, 0u) >> (vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, -491f, -1040f) - vec3<f32>(global2.a.a, global2.a.a, global2.a.a)), Struct_2(global2.a, arg_0, u_input.d, global2.a, global2.a)), u_input.b), ~(~(~u_input.b)), 4294967295u), global2.a, Struct_1(522f, vec3<i32>(arg_0.b.x, -1i, -_wgslsmith_add_i32(35975i, 1i))));
    global0 = array<vec3<bool>, 17>();
    global2 = Struct_3(global2.a);
    return Struct_1(397f, vec3<i32>(arg_0.b.x, firstTrailingBit(-7952i), global2.a.b.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(168f, 926f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-930f)))), arg_0.a) + arg_2);
    global2 = Struct_3(func_1(Struct_1(global2.a.a, global2.a.b), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), false), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))))));
    var var_1 = !global0[_wgslsmith_index_u32(u_input.b, 17u)];
    global2 = Struct_3(Struct_1(-1443f, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, arg_0.b.x, global2.a.b.x), vec3<i32>(global2.a.b.x, global2.a.b.x, arg_0.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1280i, arg_0.b.x, -2147483647i), vec3<i32>(-1i, u_input.c.x, global2.a.b.x)) | vec3<i32>(-4106i, arg_0.b.x, arg_1.b.x))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + arg_1.a)))), select(vec3<i32>(_wgslsmith_add_i32(1i, u_input.c.x), arg_0.b.x, -u_input.c.x), ~firstLeadingBit(vec3<i32>(arg_0.b.x, global2.a.b.x, arg_1.b.x)), vec3<bool>(true, true, !var_1.x))));
    return ~u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec3_i32(reverseBits(global2.a.b), global2.a.b);
    let var_1 = ~(25609u & select(~(~u_input.b), 1u, u_input.d.x >= ~35623u));
    var var_2 = var_1;
    let var_3 = countOneBits(vec4<u32>(15846u, abs(var_1), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 0u, var_1, 4294967295u), ~vec4<u32>(1u, u_input.b, 57090u, var_1)), countOneBits(vec4<u32>(var_1, var_1, u_input.d.x, var_1)) ^ ~vec4<u32>(u_input.b, 29774u, 4294967295u, var_1)), 1u));
    let var_4 = _wgslsmith_mod_u32(4294967295u, func_3(func_1(Struct_1(_wgslsmith_f_op_f32(global2.a.a - 1502f), ~vec3<i32>(var_0.x, -10082i, global2.a.b.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), true), func_1(global2.a, !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, _wgslsmith_f_op_f32(round(2049f)), _wgslsmith_f_op_f32(abs(230f)), _wgslsmith_f_op_f32(-2123f - global2.a.a)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.a, 374f, 720f, -364f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, global2.a.a, 301f, global2.a.a) - vec4<f32>(1000f, global2.a.a, global2.a.a, 844f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.a), global2.a.a, global2.a.a) - vec3<f32>(391f, -706f, 740f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a, global2.a.a, -540f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a, global2.a.a, global2.a.a)))), (vec2<i32>(-1i) * -(~vec2<i32>(var_0.x, 11435i))) ^ u_input.c.zy, 5370u, _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(var_3), var_3), ~min(_wgslsmith_div_vec4_u32(vec4<u32>(var_4, 29480u, var_3.x, var_1), vec4<u32>(var_4, 21973u, var_4, var_3.x)), ~vec4<u32>(1u, u_input.b, 4294967295u, 16639u))));
}

