struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(i32(-2147483648), Struct_1(27565u, false), Struct_1(1u, true), Struct_3(4294967295u, -234f, Struct_1(6709u, true), Struct_2(-2028f, 4294967295u, Struct_1(64051u, true), vec3<i32>(-21151i, i32(-2147483648), 2147483647i), vec3<f32>(1603f, -818f, 461f))), vec2<bool>(false, true)), Struct_4(2147483647i, Struct_1(36015u, false), Struct_1(38769u, true), Struct_3(0u, 190f, Struct_1(20134u, false), Struct_2(577f, 20659u, Struct_1(1u, false), vec3<i32>(21814i, 19273i, 45221i), vec3<f32>(749f, -286f, -1000f))), vec2<bool>(true, true)), Struct_4(771i, Struct_1(0u, true), Struct_1(4294967295u, false), Struct_3(52674u, 381f, Struct_1(1u, false), Struct_2(1254f, 13726u, Struct_1(4294967295u, true), vec3<i32>(i32(-2147483648), 43519i, 2147483647i), vec3<f32>(345f, 1047f, -680f))), vec2<bool>(false, true)), Struct_4(1i, Struct_1(48742u, false), Struct_1(23112u, true), Struct_3(95167u, -1300f, Struct_1(33710u, true), Struct_2(-834f, 74138u, Struct_1(4294967295u, false), vec3<i32>(i32(-2147483648), -30560i, -41349i), vec3<f32>(1384f, 234f, -673f))), vec2<bool>(true, true)), Struct_4(11882i, Struct_1(30243u, true), Struct_1(0u, false), Struct_3(97863u, 352f, Struct_1(79259u, true), Struct_2(-140f, 30035u, Struct_1(4294967295u, true), vec3<i32>(1i, -1i, -7533i), vec3<f32>(136f, -547f, 1000f))), vec2<bool>(true, false)), Struct_4(i32(-2147483648), Struct_1(0u, false), Struct_1(1u, false), Struct_3(18167u, 2258f, Struct_1(1u, false), Struct_2(633f, 27409u, Struct_1(4294967295u, false), vec3<i32>(16784i, 36276i, 0i), vec3<f32>(-1455f, -1637f, -1933f))), vec2<bool>(false, false)), Struct_4(0i, Struct_1(1u, false), Struct_1(0u, false), Struct_3(0u, -646f, Struct_1(0u, true), Struct_2(129f, 27136u, Struct_1(32741u, true), vec3<i32>(2147483647i, 27044i, -56493i), vec3<f32>(-709f, -1000f, 1000f))), vec2<bool>(true, true)), Struct_4(4396i, Struct_1(1u, false), Struct_1(0u, false), Struct_3(66195u, -548f, Struct_1(1u, false), Struct_2(-568f, 26184u, Struct_1(43571u, true), vec3<i32>(67251i, 1i, 0i), vec3<f32>(-952f, -679f, 1516f))), vec2<bool>(true, true)), Struct_4(31251i, Struct_1(23155u, false), Struct_1(70782u, true), Struct_3(34738u, -631f, Struct_1(0u, false), Struct_2(515f, 62267u, Struct_1(1u, false), vec3<i32>(1i, -1835i, 2147483647i), vec3<f32>(174f, 1173f, -1000f))), vec2<bool>(false, false)), Struct_4(-5531i, Struct_1(3544u, true), Struct_1(1u, true), Struct_3(0u, 434f, Struct_1(0u, false), Struct_2(2536f, 4294967295u, Struct_1(70244u, true), vec3<i32>(-54985i, 47180i, 2147483647i), vec3<f32>(-1080f, -711f, -1047f))), vec2<bool>(false, true)), Struct_4(1i, Struct_1(23352u, true), Struct_1(1u, true), Struct_3(49593u, -1328f, Struct_1(0u, false), Struct_2(-916f, 1057u, Struct_1(1u, false), vec3<i32>(i32(-2147483648), -32540i, 2147483647i), vec3<f32>(752f, -848f, -2065f))), vec2<bool>(false, false)), Struct_4(2147483647i, Struct_1(14337u, false), Struct_1(43432u, false), Struct_3(4294967295u, 366f, Struct_1(4294967295u, true), Struct_2(-143f, 1u, Struct_1(1u, false), vec3<i32>(-17524i, 16383i, -60012i), vec3<f32>(-297f, 625f, 530f))), vec2<bool>(true, true)), Struct_4(24159i, Struct_1(51936u, true), Struct_1(1u, true), Struct_3(0u, 1000f, Struct_1(0u, false), Struct_2(346f, 28755u, Struct_1(54388u, true), vec3<i32>(-46711i, -5010i, 1i), vec3<f32>(1243f, 1059f, 450f))), vec2<bool>(false, true)), Struct_4(2147483647i, Struct_1(27018u, true), Struct_1(72405u, false), Struct_3(42928u, -1486f, Struct_1(0u, false), Struct_2(1534f, 0u, Struct_1(1u, true), vec3<i32>(15513i, 9391i, 22957i), vec3<f32>(-932f, -549f, 173f))), vec2<bool>(false, false)), Struct_4(-27543i, Struct_1(81803u, false), Struct_1(1u, false), Struct_3(40114u, -545f, Struct_1(34092u, false), Struct_2(-1101f, 1u, Struct_1(15371u, true), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<f32>(-359f, -516f, 1932f))), vec2<bool>(false, true)), Struct_4(-1i, Struct_1(20566u, false), Struct_1(41240u, false), Struct_3(49182u, 459f, Struct_1(8364u, true), Struct_2(1585f, 7215u, Struct_1(4294967295u, true), vec3<i32>(-3942i, -2771i, -82528i), vec3<f32>(906f, 332f, -217f))), vec2<bool>(false, false)), Struct_4(30061i, Struct_1(51936u, false), Struct_1(64458u, false), Struct_3(4294967295u, 1000f, Struct_1(1u, false), Struct_2(644f, 1u, Struct_1(0u, false), vec3<i32>(1i, 2147483647i, 11095i), vec3<f32>(-1000f, -597f, 435f))), vec2<bool>(true, true)), Struct_4(2147483647i, Struct_1(35967u, true), Struct_1(41261u, true), Struct_3(1u, 409f, Struct_1(0u, true), Struct_2(-1076f, 5867u, Struct_1(4294967295u, false), vec3<i32>(-68111i, 5958i, -21630i), vec3<f32>(1219f, 182f, -905f))), vec2<bool>(true, true)), Struct_4(-27539i, Struct_1(0u, false), Struct_1(1u, true), Struct_3(1u, -851f, Struct_1(13220u, true), Struct_2(423f, 16269u, Struct_1(49112u, true), vec3<i32>(1i, -1i, 2147483647i), vec3<f32>(-237f, 1451f, 338f))), vec2<bool>(false, false)), Struct_4(0i, Struct_1(4294967295u, true), Struct_1(1u, false), Struct_3(4294967295u, -1000f, Struct_1(26225u, false), Struct_2(124f, 49625u, Struct_1(18015u, true), vec3<i32>(-55828i, 67675i, 59172i), vec3<f32>(2088f, -2339f, 197f))), vec2<bool>(true, true)), Struct_4(-33153i, Struct_1(40944u, false), Struct_1(4294967295u, false), Struct_3(1807u, 410f, Struct_1(23144u, true), Struct_2(222f, 3909u, Struct_1(5122u, false), vec3<i32>(0i, 0i, 2147483647i), vec3<f32>(141f, -898f, 871f))), vec2<bool>(true, true)), Struct_4(i32(-2147483648), Struct_1(67950u, false), Struct_1(0u, true), Struct_3(45056u, -1000f, Struct_1(11035u, false), Struct_2(789f, 78368u, Struct_1(4294967295u, true), vec3<i32>(-40752i, -26191i, 2147483647i), vec3<f32>(968f, -1129f, -123f))), vec2<bool>(true, false)), Struct_4(1i, Struct_1(4294967295u, true), Struct_1(1u, true), Struct_3(43753u, -821f, Struct_1(62419u, false), Struct_2(1498f, 4294967295u, Struct_1(4294967295u, false), vec3<i32>(40068i, -37417i, -1i), vec3<f32>(1303f, -856f, 168f))), vec2<bool>(false, true)), Struct_4(-1i, Struct_1(48968u, true), Struct_1(4294967295u, false), Struct_3(4294967295u, 370f, Struct_1(33622u, false), Struct_2(333f, 0u, Struct_1(32536u, false), vec3<i32>(-9452i, -13005i, -8849i), vec3<f32>(1728f, -1506f, 603f))), vec2<bool>(true, false)), Struct_4(29943i, Struct_1(1u, true), Struct_1(1u, true), Struct_3(1u, 1432f, Struct_1(4294967295u, true), Struct_2(974f, 0u, Struct_1(6950u, true), vec3<i32>(49231i, 11072i, -6879i), vec3<f32>(1152f, -218f, 2567f))), vec2<bool>(false, false)), Struct_4(15085i, Struct_1(26957u, true), Struct_1(99155u, false), Struct_3(0u, 2224f, Struct_1(4294967295u, false), Struct_2(-481f, 13127u, Struct_1(1u, false), vec3<i32>(17797i, 1i, -1i), vec3<f32>(-1000f, -115f, 374f))), vec2<bool>(true, false)), Struct_4(10490i, Struct_1(13551u, false), Struct_1(9000u, false), Struct_3(4827u, -326f, Struct_1(1u, true), Struct_2(-640f, 0u, Struct_1(4294967295u, false), vec3<i32>(-55672i, 60019i, 29724i), vec3<f32>(1547f, 766f, -552f))), vec2<bool>(true, false)), Struct_4(0i, Struct_1(1u, true), Struct_1(0u, true), Struct_3(1u, -1275f, Struct_1(107075u, false), Struct_2(-538f, 83169u, Struct_1(0u, true), vec3<i32>(-1i, -49517i, i32(-2147483648)), vec3<f32>(2023f, -235f, 563f))), vec2<bool>(false, true)), Struct_4(0i, Struct_1(25624u, false), Struct_1(34973u, false), Struct_3(63066u, -1000f, Struct_1(79843u, false), Struct_2(786f, 103567u, Struct_1(10198u, false), vec3<i32>(50877i, 0i, 41834i), vec3<f32>(445f, 294f, 1793f))), vec2<bool>(true, false)), Struct_4(-1i, Struct_1(0u, true), Struct_1(4294967295u, false), Struct_3(0u, -118f, Struct_1(0u, true), Struct_2(-1606f, 60116u, Struct_1(16851u, true), vec3<i32>(1i, 48943i, -6297i), vec3<f32>(133f, -1011f, -1224f))), vec2<bool>(true, true)));

var<private> global1: vec2<u32> = vec2<u32>(48432u, 11211u);

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, true), Struct_1(0u, true), Struct_1(54704u, false), Struct_1(81360u, false), Struct_1(12438u, false), Struct_1(25996u, false), Struct_1(1u, true), Struct_1(4294967295u, false), Struct_1(4294967295u, false), Struct_1(1u, true), Struct_1(4294967295u, true), Struct_1(26966u, true), Struct_1(0u, false), Struct_1(62891u, true));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b.zz, arg_0.d.yy) << (_wgslsmith_add_u32(1u, arg_0.b) % 32u), reverseBits(-2147483647i), _wgslsmith_add_i32(-8074i, 49233i), ~(-24459i));
    var_0 = _wgslsmith_mod_vec4_i32(~select(max(vec4<i32>(arg_0.d.x, 1i, 2147483647i, 0i), vec4<i32>(-2147483647i, arg_0.d.x, arg_0.d.x, 37917i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.x, 2147483647i, var_0.x, -1i), vec4<i32>(u_input.a.x, var_0.x, var_0.x, 2147483647i)), vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, true)), -(~vec4<i32>(7594i, -14928i, u_input.b.x, -2147483647i) ^ select(vec4<i32>(1i, arg_0.d.x, -2147483647i, 2147483647i), vec4<i32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x), arg_0.c.b))) | vec4<i32>(~8485i, firstTrailingBit(min(~u_input.b.x, _wgslsmith_div_i32(var_0.x, var_0.x))), var_0.x, _wgslsmith_add_i32(var_0.x, u_input.b.x));
    let var_1 = any(!(!(!vec3<bool>(false, arg_0.c.b, arg_0.c.b))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, var_2.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))))));
    return _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_3.x));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = -vec2<i32>(-_wgslsmith_add_i32(2147483647i, -2147483647i), ~(~arg_0.x >> (_wgslsmith_sub_u32(24270u, u_input.c) % 32u)));
    let var_1 = ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(global1.x, 1u)), ~vec2<u32>(34051u, 18533u)), ~vec2<u32>(u_input.c, 4294967295u)));
    var var_2 = !vec3<bool>(true, 576f > _wgslsmith_f_op_f32(min(-409f, _wgslsmith_f_op_f32(func_3(Struct_2(-256f, u_input.c, Struct_1(1u, true), vec3<i32>(u_input.a.x, 0i, var_0.x), vec3<f32>(-385f, -1000f, -1604f)), 102893u)))), true);
    global2 = array<Struct_1, 14>();
    let var_3 = !(!(!(!(!vec4<bool>(var_2.x, true, true, var_2.x)))));
    return false;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<u32> {
    global2 = array<Struct_1, 14>();
    var var_0 = !select(vec2<bool>(arg_1.b, arg_1.b), !(!select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), true)), all(vec3<bool>(arg_1.b, arg_1.b, arg_1.b)));
    let var_1 = arg_0.yy;
    var var_2 = all(!(!select(!vec4<bool>(arg_1.b, false, false, false), vec4<bool>(var_0.x, false, false, true), false)));
    let var_3 = Struct_5(-667f);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, ~((19995u << (global1.x % 32u)) | ~54580u), 18107u, min(arg_1.a, 26320u) << (abs(~26983u) % 32u)), firstTrailingBit(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a, u_input.c, 58506u, global1.x), vec4<u32>(37432u, 44680u, u_input.c, global1.x)) | ~vec4<u32>(21082u, 0u, arg_1.a, arg_1.a))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c, global1.x, global1.x, global1.x) ^ vec4<u32>(u_input.c, 4294967295u, 2448u, u_input.c), ~vec4<u32>(35484u, 0u, global1.x, u_input.c), false && arg_1.b), vec4<u32>(1u, max(u_input.c, 39289u), u_input.c, 69748u)), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, 17761u), vec3<u32>(arg_1.a, 0u, arg_1.a))), ~19681u, _wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, u_input.c, 1u, 1u), vec4<u32>(global1.x, arg_1.a, 4294967295u, arg_1.a))), _wgslsmith_div_u32(47925u, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(75259u, u_input.c), u_input.c), u_input.c, global1.x, u_input.c)));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> f32 {
    let var_0 = ~func_4(select(_wgslsmith_mult_vec3_i32(select(vec3<i32>(arg_0.x, u_input.a.x, u_input.a.x), u_input.b, true), _wgslsmith_clamp_vec3_i32(arg_0.yyx, vec3<i32>(u_input.a.x, 16705i, u_input.b.x), arg_0.zwx)), vec3<i32>(u_input.b.x, u_input.a.x, -41808i), func_2(vec2<i32>(u_input.b.x, 1i))), Struct_1(firstLeadingBit(arg_2), false));
    var var_1 = 0u;
    var_1 = 5363u;
    var var_2 = ~var_0.zy;
    var var_3 = Struct_4(~u_input.a.x, global2[_wgslsmith_index_u32(abs(u_input.c), 14u)], Struct_1(~abs(~arg_2), any(vec4<bool>(true, true, true, true)) && true), Struct_3(67612u, 782f, global2[_wgslsmith_index_u32(firstLeadingBit(~(~var_0.x)), 14u)], Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_1), ~func_4(vec3<i32>(u_input.b.x, -1i, u_input.b.x), global2[_wgslsmith_index_u32(global1.x, 14u)]).x, global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 14u)], arg_0.wwz, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1334f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1472f, arg_1, arg_1) * vec3<f32>(arg_1, arg_1, arg_1))))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, false))));
    return _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - -175f), _wgslsmith_f_op_f32(trunc(arg_1))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(715f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(434f)), -1138f), true || (-10430i != var_3.d.d.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    global0 = array<Struct_4, 30>();
    var var_0 = Struct_3(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(38932i, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(76859u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, -28343i))), _wgslsmith_f_op_f32(1377f * _wgslsmith_f_op_f32(-120f - -139f)), global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)))), global2[_wgslsmith_index_u32(~7756u, 14u)], Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1107f + -1688f)) - -281f), reverseBits(firstLeadingBit(reverseBits(7466u))), global2[_wgslsmith_index_u32(u_input.c, 14u)], min(vec3<i32>(u_input.b.x, reverseBits(u_input.b.x), reverseBits(u_input.a.x)), _wgslsmith_div_vec3_i32(firstLeadingBit(u_input.a), reverseBits(u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(685f, -1453f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1009f * -106f)))));
    let var_1 = u_input.a.x;
    global0 = array<Struct_4, 30>();
    var var_2 = select(vec2<bool>(false, var_0.b != var_0.b), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.d.c.b), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.c.b), var_0.d.c.b), select(!vec2<bool>(var_0.c.b, true), vec2<bool>(var_0.c.b, true), true), vec2<bool>(true, var_0.d.c.b)), vec2<bool>(var_0.d.c.b, any(vec4<bool>(false, var_0.d.c.b, true, true))), true), true);
    let var_3 = u_input.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, max(vec2<i32>(abs(countOneBits(var_1)), -2147483647i), var_0.d.d.xx), _wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2446f, 451f) - var_0.b)))), _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_clamp_i32(var_3.x >> ((4021u << (1u % 32u)) % 32u), var_0.d.d.x, countOneBits(_wgslsmith_sub_i32(-1i, 87220i)))));
}

