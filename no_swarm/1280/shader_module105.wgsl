struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec4<bool>(false, false, true, false), Struct_1(1u, vec3<i32>(-1186i, -1i, -1i)), Struct_1(24604u, vec3<i32>(-15295i, -97299i, 0i)), Struct_3(Struct_1(9560u, vec3<i32>(16016i, -5667i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(-1i, -10186i, i32(-2147483648))), vec4<u32>(43987u, 4294967295u, 4294967295u, 1u)), 1299f), Struct_5(vec4<bool>(false, false, true, true), Struct_1(159422u, vec3<i32>(-13899i, 5890i, -31879i)), Struct_1(0u, vec3<i32>(2147483647i, 67035i, 2138i)), Struct_3(Struct_1(1u, vec3<i32>(36703i, -1i, -1i)), Struct_1(4294967295u, vec3<i32>(-27449i, 22239i, -21094i)), vec4<u32>(4294967295u, 4294967295u, 9895u, 4294967295u)), 835f), Struct_5(vec4<bool>(true, true, false, false), Struct_1(0u, vec3<i32>(23550i, -17294i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(2147483647i, 2147483647i, 0i)), Struct_3(Struct_1(0u, vec3<i32>(1i, i32(-2147483648), -43296i)), Struct_1(48515u, vec3<i32>(2147483647i, 26559i, 0i)), vec4<u32>(6981u, 4294967295u, 26211u, 12879u)), -800f), Struct_5(vec4<bool>(false, true, true, true), Struct_1(1u, vec3<i32>(-4224i, 3703i, i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(57427i, 86715i, 2147483647i)), Struct_3(Struct_1(1u, vec3<i32>(46753i, 2147483647i, 0i)), Struct_1(15954u, vec3<i32>(-1i, 22564i, 1i)), vec4<u32>(7484u, 48174u, 4294967295u, 42008u)), -353f), Struct_5(vec4<bool>(false, false, false, true), Struct_1(1u, vec3<i32>(2147483647i, -46028i, -1i)), Struct_1(9644u, vec3<i32>(2147483647i, 0i, -1i)), Struct_3(Struct_1(0u, vec3<i32>(-1767i, 37024i, 1i)), Struct_1(4294967295u, vec3<i32>(10710i, -1i, 0i)), vec4<u32>(4294967295u, 1u, 4534u, 74545u)), 1474f), Struct_5(vec4<bool>(true, false, false, true), Struct_1(4294967295u, vec3<i32>(-9835i, -30507i, 2227i)), Struct_1(41835u, vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_3(Struct_1(1u, vec3<i32>(-1297i, i32(-2147483648), i32(-2147483648))), Struct_1(1027u, vec3<i32>(-22342i, 2147483647i, -1i)), vec4<u32>(0u, 68646u, 3873u, 22569u)), 650f), Struct_5(vec4<bool>(false, true, true, false), Struct_1(4294967295u, vec3<i32>(21383i, i32(-2147483648), 33584i)), Struct_1(55284u, vec3<i32>(2147483647i, -9486i, 13776i)), Struct_3(Struct_1(1u, vec3<i32>(0i, i32(-2147483648), -6569i)), Struct_1(23177u, vec3<i32>(34905i, -1i, 0i)), vec4<u32>(8385u, 7120u, 0u, 9116u)), 205f), Struct_5(vec4<bool>(false, false, true, true), Struct_1(1u, vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(50089u, vec3<i32>(-39573i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_1(4294967295u, vec3<i32>(65569i, 44127i, 2147483647i)), Struct_1(23180u, vec3<i32>(31309i, i32(-2147483648), 8397i)), vec4<u32>(20171u, 85421u, 88780u, 1u)), -2153f), Struct_5(vec4<bool>(true, false, false, false), Struct_1(38452u, vec3<i32>(0i, 1i, 18439i)), Struct_1(1u, vec3<i32>(55719i, 2147483647i, -20366i)), Struct_3(Struct_1(0u, vec3<i32>(-78389i, 41548i, -38418i)), Struct_1(0u, vec3<i32>(-12057i, -28669i, i32(-2147483648))), vec4<u32>(108456u, 0u, 4294967295u, 1u)), 1222f), Struct_5(vec4<bool>(true, false, false, true), Struct_1(7826u, vec3<i32>(-1i, 2147483647i, 50292i)), Struct_1(5929u, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_3(Struct_1(70465u, vec3<i32>(i32(-2147483648), 1i, -11935i)), Struct_1(11923u, vec3<i32>(-9415i, 2147483647i, 0i)), vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), -507f), Struct_5(vec4<bool>(false, true, true, false), Struct_1(5982u, vec3<i32>(-45456i, i32(-2147483648), -9456i)), Struct_1(23687u, vec3<i32>(11878i, 0i, 2825i)), Struct_3(Struct_1(22983u, vec3<i32>(49712i, -1i, -26627i)), Struct_1(1u, vec3<i32>(1928i, 0i, -1i)), vec4<u32>(48375u, 36063u, 52643u, 100809u)), -611f), Struct_5(vec4<bool>(false, true, false, false), Struct_1(0u, vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(105186u, vec3<i32>(0i, -5760i, -16214i)), Struct_3(Struct_1(4294967295u, vec3<i32>(-1i, -1i, -30984i)), Struct_1(715u, vec3<i32>(i32(-2147483648), -5744i, -1i)), vec4<u32>(1u, 0u, 21513u, 18570u)), -194f), Struct_5(vec4<bool>(false, true, false, false), Struct_1(0u, vec3<i32>(i32(-2147483648), -4973i, i32(-2147483648))), Struct_1(1u, vec3<i32>(0i, 0i, 768i)), Struct_3(Struct_1(4294967295u, vec3<i32>(-35515i, i32(-2147483648), -1i)), Struct_1(4294967295u, vec3<i32>(-24950i, i32(-2147483648), 1i)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28703u)), 700f), Struct_5(vec4<bool>(true, true, false, true), Struct_1(1u, vec3<i32>(11357i, 1i, 2147483647i)), Struct_1(1u, vec3<i32>(-1i, 1i, -12123i)), Struct_3(Struct_1(90297u, vec3<i32>(1i, 2147483647i, 0i)), Struct_1(44145u, vec3<i32>(1i, -1i, i32(-2147483648))), vec4<u32>(0u, 41009u, 58832u, 1u)), 261f), Struct_5(vec4<bool>(true, false, false, false), Struct_1(4294967295u, vec3<i32>(i32(-2147483648), i32(-2147483648), -3387i)), Struct_1(63930u, vec3<i32>(-114401i, 22902i, -1i)), Struct_3(Struct_1(4294967295u, vec3<i32>(38422i, 1i, 0i)), Struct_1(0u, vec3<i32>(2147483647i, -16916i, 1i)), vec4<u32>(14730u, 105984u, 1u, 1u)), 268f), Struct_5(vec4<bool>(true, false, false, true), Struct_1(38016u, vec3<i32>(1i, 1i, 33609i)), Struct_1(67304u, vec3<i32>(-3787i, 24118i, 2147483647i)), Struct_3(Struct_1(32981u, vec3<i32>(i32(-2147483648), -10578i, 1i)), Struct_1(0u, vec3<i32>(-28196i, -16288i, -31881i)), vec4<u32>(25055u, 12786u, 0u, 4294967295u)), -1423f), Struct_5(vec4<bool>(false, true, false, true), Struct_1(52845u, vec3<i32>(67078i, 2147483647i, 0i)), Struct_1(0u, vec3<i32>(-27676i, -39665i, 1i)), Struct_3(Struct_1(1u, vec3<i32>(i32(-2147483648), 1i, -1i)), Struct_1(0u, vec3<i32>(-61960i, 2147483647i, 11903i)), vec4<u32>(40604u, 0u, 41871u, 4294967295u)), 431f), Struct_5(vec4<bool>(false, false, false, true), Struct_1(1u, vec3<i32>(-49330i, -37164i, -33340i)), Struct_1(1u, vec3<i32>(-11999i, -53424i, i32(-2147483648))), Struct_3(Struct_1(0u, vec3<i32>(1i, 3767i, 0i)), Struct_1(3317u, vec3<i32>(2147483647i, 0i, -10830i)), vec4<u32>(64158u, 4294967295u, 47168u, 1u)), 166f), Struct_5(vec4<bool>(true, false, true, false), Struct_1(0u, vec3<i32>(2147483647i, 40815i, -1i)), Struct_1(61448u, vec3<i32>(18109i, -2385i, 5186i)), Struct_3(Struct_1(51377u, vec3<i32>(-10441i, -60193i, 1i)), Struct_1(1605u, vec3<i32>(0i, i32(-2147483648), 2147483647i)), vec4<u32>(4294967295u, 0u, 70327u, 31907u)), 1330f), Struct_5(vec4<bool>(true, true, true, false), Struct_1(13440u, vec3<i32>(1i, i32(-2147483648), 2147483647i)), Struct_1(0u, vec3<i32>(-1i, 2147483647i, 54366i)), Struct_3(Struct_1(94061u, vec3<i32>(-1i, 28441i, -43754i)), Struct_1(1u, vec3<i32>(-3822i, 1i, -54094i)), vec4<u32>(68909u, 0u, 4294967295u, 1u)), -188f), Struct_5(vec4<bool>(false, true, false, true), Struct_1(25742u, vec3<i32>(9193i, 73616i, 0i)), Struct_1(0u, vec3<i32>(1i, 3228i, -31508i)), Struct_3(Struct_1(65016u, vec3<i32>(i32(-2147483648), -49912i, 1i)), Struct_1(32956u, vec3<i32>(1i, 0i, i32(-2147483648))), vec4<u32>(14672u, 4294967295u, 61891u, 1614u)), -1465f), Struct_5(vec4<bool>(false, false, false, true), Struct_1(61108u, vec3<i32>(-1i, 54784i, i32(-2147483648))), Struct_1(36306u, vec3<i32>(-1i, 1i, 6497i)), Struct_3(Struct_1(80860u, vec3<i32>(-44367i, i32(-2147483648), 0i)), Struct_1(1u, vec3<i32>(i32(-2147483648), -18481i, -21851i)), vec4<u32>(0u, 0u, 81897u, 4294967295u)), 1642f), Struct_5(vec4<bool>(true, true, true, false), Struct_1(1u, vec3<i32>(1i, 2147483647i, -1i)), Struct_1(0u, vec3<i32>(1i, -37135i, i32(-2147483648))), Struct_3(Struct_1(53454u, vec3<i32>(-30233i, -37649i, -1i)), Struct_1(48133u, vec3<i32>(1i, -29038i, i32(-2147483648))), vec4<u32>(26769u, 1u, 23622u, 0u)), -2558f), Struct_5(vec4<bool>(false, true, false, false), Struct_1(17502u, vec3<i32>(-31870i, -38602i, -32305i)), Struct_1(2760u, vec3<i32>(7672i, i32(-2147483648), -18581i)), Struct_3(Struct_1(16060u, vec3<i32>(-1i, 1i, -12449i)), Struct_1(1u, vec3<i32>(20277i, 8042i, -1i)), vec4<u32>(0u, 14273u, 11050u, 83811u)), 658f), Struct_5(vec4<bool>(false, true, false, true), Struct_1(4294967295u, vec3<i32>(2147483647i, 0i, -3271i)), Struct_1(0u, vec3<i32>(-98426i, 7372i, 1i)), Struct_3(Struct_1(48452u, vec3<i32>(0i, -64384i, 34611i)), Struct_1(1u, vec3<i32>(-1i, -6847i, 44924i)), vec4<u32>(37169u, 4294967295u, 1u, 1u)), -2580f), Struct_5(vec4<bool>(true, false, false, false), Struct_1(1u, vec3<i32>(1i, 0i, -22996i)), Struct_1(55511u, vec3<i32>(i32(-2147483648), 8632i, -25923i)), Struct_3(Struct_1(0u, vec3<i32>(-346i, i32(-2147483648), 1i)), Struct_1(4294967295u, vec3<i32>(1i, -33353i, -18800i)), vec4<u32>(30046u, 58812u, 0u, 1u)), -414f), Struct_5(vec4<bool>(true, true, true, false), Struct_1(5078u, vec3<i32>(0i, -1276i, i32(-2147483648))), Struct_1(95502u, vec3<i32>(0i, -1901i, -3915i)), Struct_3(Struct_1(36647u, vec3<i32>(6197i, 7572i, 27955i)), Struct_1(38638u, vec3<i32>(41642i, 77235i, 1i)), vec4<u32>(1u, 24779u, 0u, 50271u)), 489f), Struct_5(vec4<bool>(false, false, false, true), Struct_1(20582u, vec3<i32>(-86543i, 7712i, 0i)), Struct_1(1u, vec3<i32>(1i, -23942i, -50327i)), Struct_3(Struct_1(0u, vec3<i32>(72720i, 21923i, -15222i)), Struct_1(87229u, vec3<i32>(30816i, -1i, 0i)), vec4<u32>(10068u, 27817u, 4294967295u, 1u)), 1096f), Struct_5(vec4<bool>(false, false, true, false), Struct_1(0u, vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(5663u, vec3<i32>(-6688i, -12012i, -40995i)), Struct_3(Struct_1(28891u, vec3<i32>(-83665i, 55913i, 1i)), Struct_1(0u, vec3<i32>(11029i, 6472i, -1i)), vec4<u32>(1u, 47953u, 5648u, 0u)), 402f), Struct_5(vec4<bool>(true, true, true, true), Struct_1(4294967295u, vec3<i32>(1i, 8608i, -40035i)), Struct_1(0u, vec3<i32>(i32(-2147483648), -17057i, -10476i)), Struct_3(Struct_1(6197u, vec3<i32>(1i, -13159i, 2147483647i)), Struct_1(57652u, vec3<i32>(1i, i32(-2147483648), 0i)), vec4<u32>(1u, 1u, 27878u, 46470u)), 1367f), Struct_5(vec4<bool>(false, false, true, true), Struct_1(27841u, vec3<i32>(163i, 2147483647i, 25052i)), Struct_1(94503u, vec3<i32>(1i, 6241i, -30151i)), Struct_3(Struct_1(4294967295u, vec3<i32>(3340i, -1i, i32(-2147483648))), Struct_1(64254u, vec3<i32>(1i, 2147483647i, 0i)), vec4<u32>(4294967295u, 0u, 0u, 40936u)), 1716f));

var<private> global2: array<Struct_2, 24>;

var<private> global3: array<i32, 10> = array<i32, 10>(27555i, i32(-2147483648), 36081i, -5744i, 2147483647i, -31127i, 0i, -18294i, -27686i, 31434i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    global3 = array<i32, 10>();
    let var_0 = firstLeadingBit(global3[_wgslsmith_index_u32(u_input.b, 10u)]) >= _wgslsmith_div_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~90813u, 1u), 10u)], 62002i), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(47705u, 10u)], -2147483647i, global3[_wgslsmith_index_u32(64406u, 10u)], 1i), vec4<i32>(1i, 0i, 23906i, 2147483647i))));
    var var_1 = Struct_5(!vec4<bool>(var_0 | true, all(select(vec3<bool>(true, var_0, true), vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, var_0))), var_0, !(var_0 || var_0)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, select(~u_input.a, ~vec3<u32>(120420u, u_input.b, 4294967295u), vec3<bool>(var_0, var_0, var_0))), vec3<i32>((global3[_wgslsmith_index_u32(6130u, 10u)] | 15202i) >> (1u % 32u), -countOneBits(-20368i), global3[_wgslsmith_index_u32(8965u << (~u_input.b % 32u), 10u)])), Struct_1(84651u, _wgslsmith_mod_vec3_i32(select(firstLeadingBit(vec3<i32>(global3[_wgslsmith_index_u32(38145u, 10u)], -34420i, -78734i)), abs(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], 20433i, global3[_wgslsmith_index_u32(50103u, 10u)])), global3[_wgslsmith_index_u32(0u, 10u)] >= global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(0i, 1i, global3[_wgslsmith_index_u32(u_input.b, 10u)]) ^ vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)]))), Struct_3(Struct_1(~4496u, vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 56500i, select(-58272i, global3[_wgslsmith_index_u32(1u, 10u)], false))), Struct_1(1u & _wgslsmith_mult_u32(u_input.a.x, 4294967295u), abs(select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -3119i), vec3<i32>(global3[_wgslsmith_index_u32(20587u, 10u)], 1i, -1i), vec3<bool>(true, true, var_0)))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(13813u, 0u, 4294967295u, u_input.b), ~vec4<u32>(30337u, 31580u, 0u, 17158u))), -861f);
    global1 = array<Struct_5, 31>();
    var var_2 = -abs(max(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_1.b.b.x, 14155i, global3[_wgslsmith_index_u32(var_1.b.a, 10u)], 0i)), vec4<i32>(-1011i, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)], -7952i) >> (vec4<u32>(27054u, 41012u, var_1.d.c.x, 1u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.d.b.b.x, 19116i, global3[_wgslsmith_index_u32(4294967295u, 10u)], -1i), _wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], -1i, var_1.b.b.x, global3[_wgslsmith_index_u32(var_1.b.a, 10u)]), vec4<i32>(12704i, global3[_wgslsmith_index_u32(u_input.b, 10u)], -1i, 0i)))));
    return max(_wgslsmith_mod_vec4_u32(~var_1.d.c, _wgslsmith_sub_vec4_u32(abs(var_1.d.c) & ~vec4<u32>(6275u, 1u, var_1.b.a, var_1.c.a), vec4<u32>(82112u, _wgslsmith_mod_u32(4294967295u, var_1.c.a), 137710u, 58418u >> (u_input.a.x % 32u)))), var_1.d.c);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_2(arg_0.c.b, -17446i, Struct_1(abs(~arg_0.e.b.a), -max(vec3<i32>(global3[_wgslsmith_index_u32(6650u, 10u)], 0i, -56470i), arg_0.e.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false))))))), all(!vec2<bool>(!arg_0.a, true)));
    global3 = array<i32, 10>();
    global1 = array<Struct_5, 31>();
    let var_1 = var_0.d;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), var_1);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(true, 1236f, Struct_3(Struct_1(0u, vec3<i32>(arg_1, 25792i, 10554i)), Struct_1(6011u, vec3<i32>(global3[_wgslsmith_index_u32(2009u, 10u)], 10205i, 0i)), _wgslsmith_add_vec4_u32(func_3(), ~vec4<u32>(u_input.a.x, 19074u, u_input.b, 4294967295u))), Struct_2(Struct_1(u_input.b, vec3<i32>(arg_1, arg_1, arg_1)), 2147483647i, Struct_1(~15459u, vec3<i32>(-1i, arg_1, -6662i) & vec3<i32>(2992i, 43923i, global3[_wgslsmith_index_u32(u_input.b, 10u)])), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), true)), _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(arg_0 - arg_0)), Struct_3(Struct_1(u_input.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-168i, 52927i, arg_1), vec3<i32>(0i, arg_1, 1i))), Struct_1(max(u_input.b, u_input.a.x), vec3<i32>(22259i, 47046i, 45907i)), abs(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b))))), vec3<f32>(arg_0, 1205f, 881f)));
    return Struct_3(Struct_1(u_input.b, vec3<i32>(arg_1, ~global3[_wgslsmith_index_u32(19736u, 10u)], _wgslsmith_add_i32(global3[_wgslsmith_index_u32(0u, 10u)], 0i)) | (select(vec3<i32>(arg_1, 2147483647i, -1i), vec3<i32>(0i, -1i, arg_1), false) | ~vec3<i32>(1i, 1i, 68405i))), Struct_1(_wgslsmith_mod_u32(u_input.a.x, ~32231u), abs(~firstLeadingBit(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b, 10u)], 38278i)))), vec4<u32>(~u_input.b, abs(_wgslsmith_div_u32(0u, ~u_input.b)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.b, max(u_input.b, u_input.a.x)), min(reverseBits(31735u), u_input.b), 1u), max(u_input.b ^ abs(u_input.b), 0u)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(2025f, _wgslsmith_f_op_f32(f32(-1f) * -844f))))) - _wgslsmith_f_op_f32(max(arg_0.x, 1154f))), global3[_wgslsmith_index_u32(u_input.a.x, 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(~(-(abs(vec3<i32>(-1i, global3[_wgslsmith_index_u32(1u, 10u)], 42402i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(25929i, -1i, global3[_wgslsmith_index_u32(u_input.b, 10u)]), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], -30423i, -6216i)))), -((vec3<i32>(global3[_wgslsmith_index_u32(74530u, 10u)], -19840i, 2147483647i) | vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(52745u, 10u)], -1i)) >> (u_input.a % vec3<u32>(32u))) >> (max(max(~vec3<u32>(4294967295u, u_input.a.x, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(76870u, u_input.b, 75661u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 26493u), vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 25740u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))) % vec3<u32>(32u)));
    let var_1 = Struct_1(u_input.b, firstTrailingBit(var_0));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f + 1402f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1993f)))), 486f, -997f))));
    let var_3 = !vec4<bool>(any(vec2<bool>(true, true)) == true, true, true, false);
    var var_4 = select(select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), var_3.x), u_input.a.x >= 0u), !(!(!var_3.xz)), false), select(vec2<bool>(true, var_3.x), var_3.wx, false), var_3.zw);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(var_2.c, var_2.c)), var_2.a.b.zy, ~vec2<u32>(15188u, abs(var_1.a)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, 34442u), u_input.a.yx));
}

