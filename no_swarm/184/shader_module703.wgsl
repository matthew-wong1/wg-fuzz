struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<f32>(-382f, 131f), vec3<u32>(0u, 34159u, 57065u), i32(-2147483648), 1u, false), Struct_1(vec2<f32>(1026f, -1000f), vec3<u32>(0u, 0u, 8020u), -1194i, 7921u, true), Struct_1(vec2<f32>(-235f, 1110f), vec3<u32>(49269u, 69062u, 693u), i32(-2147483648), 4294967295u, false)), Struct_2(Struct_1(vec2<f32>(-569f, 620f), vec3<u32>(36043u, 1u, 4294967295u), 0i, 75u, true), Struct_1(vec2<f32>(-930f, -285f), vec3<u32>(59722u, 47705u, 0u), i32(-2147483648), 17832u, false), Struct_1(vec2<f32>(-1838f, 763f), vec3<u32>(1u, 17240u, 11654u), 12611i, 23072u, false)), Struct_2(Struct_1(vec2<f32>(1051f, -135f), vec3<u32>(3688u, 18760u, 0u), 1i, 56118u, true), Struct_1(vec2<f32>(1253f, -676f), vec3<u32>(1u, 16611u, 4294967295u), 0i, 31186u, false), Struct_1(vec2<f32>(-1341f, -825f), vec3<u32>(3845u, 64506u, 4294967295u), 0i, 1u, true)), Struct_2(Struct_1(vec2<f32>(568f, 1977f), vec3<u32>(48687u, 46303u, 4294967295u), 24578i, 111492u, true), Struct_1(vec2<f32>(1408f, -736f), vec3<u32>(4294967295u, 4294967295u, 0u), -43583i, 43196u, false), Struct_1(vec2<f32>(-258f, 476f), vec3<u32>(0u, 1u, 2548u), -1i, 18222u, true)), Struct_2(Struct_1(vec2<f32>(274f, -208f), vec3<u32>(1u, 84236u, 0u), 2147483647i, 1u, true), Struct_1(vec2<f32>(1165f, 545f), vec3<u32>(71786u, 0u, 1u), 0i, 1u, false), Struct_1(vec2<f32>(343f, 493f), vec3<u32>(39809u, 28571u, 1u), i32(-2147483648), 21654u, true)), Struct_2(Struct_1(vec2<f32>(-598f, 881f), vec3<u32>(1u, 4294967295u, 4294967295u), -68400i, 4294967295u, false), Struct_1(vec2<f32>(699f, 152f), vec3<u32>(1u, 11753u, 28802u), i32(-2147483648), 1u, true), Struct_1(vec2<f32>(1000f, -935f), vec3<u32>(1u, 36880u, 4294967295u), -1585i, 37467u, true)), Struct_2(Struct_1(vec2<f32>(1048f, -552f), vec3<u32>(45957u, 4294967295u, 1u), -40834i, 55162u, true), Struct_1(vec2<f32>(459f, -747f), vec3<u32>(43843u, 37933u, 1u), 51161i, 1u, true), Struct_1(vec2<f32>(1720f, -154f), vec3<u32>(4294967295u, 44759u, 1u), 17i, 9201u, true)), Struct_2(Struct_1(vec2<f32>(1861f, 1877f), vec3<u32>(1u, 2809u, 1u), -13714i, 1u, false), Struct_1(vec2<f32>(-961f, -1000f), vec3<u32>(6573u, 32182u, 1u), 24077i, 1u, false), Struct_1(vec2<f32>(1003f, 1366f), vec3<u32>(4294967295u, 24814u, 0u), -1i, 25896u, false)), Struct_2(Struct_1(vec2<f32>(-182f, -1000f), vec3<u32>(0u, 12621u, 0u), -8705i, 4294967295u, false), Struct_1(vec2<f32>(435f, -1772f), vec3<u32>(11240u, 4294967295u, 1u), 0i, 0u, false), Struct_1(vec2<f32>(-1448f, -843f), vec3<u32>(11292u, 7814u, 7151u), -3685i, 0u, true)), Struct_2(Struct_1(vec2<f32>(2106f, 271f), vec3<u32>(76523u, 0u, 14475u), 1i, 14866u, true), Struct_1(vec2<f32>(538f, 1327f), vec3<u32>(4294967295u, 24225u, 27140u), 34441i, 7509u, false), Struct_1(vec2<f32>(840f, 1170f), vec3<u32>(4294967295u, 0u, 16418u), 1i, 47641u, false)), Struct_2(Struct_1(vec2<f32>(1270f, 1595f), vec3<u32>(33614u, 4294967295u, 18066u), -1i, 1u, true), Struct_1(vec2<f32>(-615f, 1214f), vec3<u32>(10614u, 94078u, 1u), i32(-2147483648), 60536u, false), Struct_1(vec2<f32>(712f, -302f), vec3<u32>(42637u, 52554u, 2949u), -8329i, 101798u, false)), Struct_2(Struct_1(vec2<f32>(875f, -1705f), vec3<u32>(4294967295u, 4294967295u, 1u), -11790i, 4294967295u, false), Struct_1(vec2<f32>(-1080f, -1697f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 2312i, 80343u, true), Struct_1(vec2<f32>(1000f, 497f), vec3<u32>(0u, 4294967295u, 14341u), -69073i, 46969u, true)), Struct_2(Struct_1(vec2<f32>(1523f, 781f), vec3<u32>(88828u, 0u, 56097u), -52075i, 9731u, false), Struct_1(vec2<f32>(-929f, -869f), vec3<u32>(4294967295u, 76695u, 23033u), i32(-2147483648), 4294967295u, false), Struct_1(vec2<f32>(290f, 648f), vec3<u32>(1u, 1u, 26175u), -11312i, 14443u, true)), Struct_2(Struct_1(vec2<f32>(1272f, -310f), vec3<u32>(0u, 75904u, 21144u), 1i, 43881u, false), Struct_1(vec2<f32>(-1272f, 444f), vec3<u32>(46788u, 127374u, 1u), 930i, 1u, true), Struct_1(vec2<f32>(-321f, -734f), vec3<u32>(55118u, 75575u, 1507u), i32(-2147483648), 60176u, true)), Struct_2(Struct_1(vec2<f32>(-810f, -235f), vec3<u32>(0u, 4294967295u, 4294967295u), -1i, 2075u, true), Struct_1(vec2<f32>(-1502f, 420f), vec3<u32>(1u, 0u, 18130u), -1i, 0u, true), Struct_1(vec2<f32>(-1661f, -1231f), vec3<u32>(4294967295u, 1u, 0u), 1i, 51710u, false)), Struct_2(Struct_1(vec2<f32>(-1000f, 1823f), vec3<u32>(11194u, 45440u, 4294967295u), 0i, 4294967295u, false), Struct_1(vec2<f32>(-305f, 181f), vec3<u32>(0u, 83819u, 1u), 1i, 90628u, true), Struct_1(vec2<f32>(-1347f, -646f), vec3<u32>(4294967295u, 30697u, 2636u), 25857i, 0u, true)), Struct_2(Struct_1(vec2<f32>(-616f, -875f), vec3<u32>(1u, 2095u, 0u), i32(-2147483648), 4294967295u, false), Struct_1(vec2<f32>(-1362f, 1000f), vec3<u32>(0u, 18686u, 0u), -1i, 25029u, true), Struct_1(vec2<f32>(-694f, -3164f), vec3<u32>(0u, 0u, 1u), -9294i, 4294967295u, true)), Struct_2(Struct_1(vec2<f32>(-236f, 179f), vec3<u32>(41732u, 0u, 15172u), -1i, 0u, false), Struct_1(vec2<f32>(-1000f, -332f), vec3<u32>(51072u, 15824u, 37371u), 1i, 22735u, false), Struct_1(vec2<f32>(920f, -834f), vec3<u32>(37843u, 39087u, 48917u), 2147483647i, 4294967295u, false)), Struct_2(Struct_1(vec2<f32>(396f, 1220f), vec3<u32>(30621u, 103674u, 27374u), 10455i, 5298u, false), Struct_1(vec2<f32>(470f, 1085f), vec3<u32>(4294967295u, 16569u, 4294967295u), i32(-2147483648), 9667u, true), Struct_1(vec2<f32>(-1062f, 560f), vec3<u32>(35361u, 58660u, 0u), 1i, 4294967295u, true)), Struct_2(Struct_1(vec2<f32>(1000f, -546f), vec3<u32>(4294967295u, 29725u, 0u), -19102i, 0u, true), Struct_1(vec2<f32>(-1000f, 828f), vec3<u32>(70662u, 12705u, 4294967295u), -1i, 4294967295u, true), Struct_1(vec2<f32>(1815f, 414f), vec3<u32>(4294967295u, 24499u, 18130u), i32(-2147483648), 4294967295u, false)), Struct_2(Struct_1(vec2<f32>(432f, 623f), vec3<u32>(30508u, 2918u, 5865u), 0i, 41532u, false), Struct_1(vec2<f32>(452f, -281f), vec3<u32>(0u, 45140u, 13492u), -8276i, 3112u, true), Struct_1(vec2<f32>(-724f, -1751f), vec3<u32>(4294967295u, 68429u, 1u), 0i, 1787u, false)), Struct_2(Struct_1(vec2<f32>(-1443f, 523f), vec3<u32>(0u, 1u, 70086u), -22057i, 9631u, true), Struct_1(vec2<f32>(-1409f, 375f), vec3<u32>(1u, 67118u, 10477u), 2147483647i, 0u, false), Struct_1(vec2<f32>(-324f, -647f), vec3<u32>(1u, 43301u, 58621u), -22620i, 1u, true)), Struct_2(Struct_1(vec2<f32>(1000f, -310f), vec3<u32>(11899u, 4294967295u, 0u), 0i, 0u, false), Struct_1(vec2<f32>(967f, -1249f), vec3<u32>(4294967295u, 0u, 19705u), -42101i, 46068u, false), Struct_1(vec2<f32>(-273f, -1372f), vec3<u32>(79640u, 41337u, 4294967295u), 56840i, 4294967295u, false)), Struct_2(Struct_1(vec2<f32>(-2095f, -1397f), vec3<u32>(34269u, 1u, 0u), 0i, 67908u, true), Struct_1(vec2<f32>(-170f, -1208f), vec3<u32>(68637u, 1u, 58644u), 2147483647i, 20759u, true), Struct_1(vec2<f32>(-928f, -146f), vec3<u32>(4294967295u, 351u, 67280u), 0i, 4294967295u, true)));

var<private> global1: array<i32, 3>;

var<private> global2: i32 = -4935i;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.a.x), -1000f), _wgslsmith_f_op_f32(-global3.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x - 1413f) + _wgslsmith_f_op_f32(-global3.a.a.x)))));
    var var_1 = false;
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, reverseBits(firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, global3.b.d, 49263u, 8440u)), _wgslsmith_mult_vec4_u32(vec4<u32>(35143u, 4294967295u, 1u, 7528u), vec4<u32>(4294967295u, 20254u, global3.b.b.x, 5235u)))))), 3u)];
    var var_2 = ~global1[_wgslsmith_index_u32(abs(u_input.c), 3u)];
    let var_3 = max(-34339i, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.b, -25107i, 32751i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(7909u, 3u)], 1i)), u_input.a | u_input.a), u_input.a));
    return _wgslsmith_add_i32(reverseBits(global3.a.c), var_3);
}

fn func_2() -> Struct_2 {
    var var_0 = -244f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, 384f, global3.b.a.x, 1904f))) + vec4<f32>(_wgslsmith_f_op_f32(-global3.a.a.x), 359f, _wgslsmith_f_op_f32(-382f * -1591f), -1072f)), vec4<f32>(global3.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(176f, -312f))), _wgslsmith_f_op_f32(-global3.a.a.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a.a.x, global3.b.a.x, global3.c.a.x, global3.a.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.a.x, _wgslsmith_f_op_f32(-global3.a.a.x), -2176f, _wgslsmith_f_op_f32(global3.c.a.x + 2291f)))));
    var var_2 = _wgslsmith_clamp_vec4_i32(~(~(-vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(global3.a.b.x, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], u_input.a.x))), -vec4<i32>(~global3.a.c, select(func_3(), reverseBits(34563i), global3.b.e & global3.a.e), abs(global1[_wgslsmith_index_u32(global3.c.b.x, 3u)] & u_input.a.x), ~_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3.b.c, -1i, u_input.b))), -min(~vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(15125u, 3u)], u_input.a.x, -11287i) ^ firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(22010u, 3u)], global1[_wgslsmith_index_u32(global3.a.b.x, 3u)], global3.c.c, u_input.a.x)), ~(vec4<i32>(9494i, -2147483647i, 0i, u_input.b) << (vec4<u32>(u_input.c, 9738u, 73854u, u_input.c) % vec4<u32>(32u)))));
    let var_3 = Struct_3(u_input.a.xy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))))), global3.c.b.x, global0[_wgslsmith_index_u32(countOneBits(abs(~u_input.c)) ^ _wgslsmith_mod_u32(57012u, 1u), 24u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1904f)))));
    var var_4 = select(!vec4<bool>(var_3.d.c.e || true, !(-1195f <= var_1.x), any(vec4<bool>(false, true, global3.b.e, global3.a.e)) || select(var_3.d.a.e, var_3.d.b.e, var_3.d.a.e), false), vec4<bool>(true, true, true, true), select(!select(select(vec4<bool>(var_3.d.b.e, false, true, false), vec4<bool>(global3.c.e, false, false, var_3.d.b.e), vec4<bool>(true, global3.b.e, false, global3.b.e)), select(vec4<bool>(true, var_3.d.b.e, false, global3.c.e), vec4<bool>(global3.a.e, var_3.d.a.e, global3.a.e, false), true), select(vec4<bool>(global3.c.e, global3.c.e, global3.c.e, var_3.d.a.e), vec4<bool>(var_3.d.c.e, global3.c.e, var_3.d.a.e, var_3.d.b.e), var_3.d.c.e)), vec4<bool>(global3.c.e, any(vec2<bool>(false, false)), all(!vec4<bool>(var_3.d.b.e, global3.c.e, var_3.d.b.e, var_3.d.b.e)), false), !select(vec4<bool>(true, var_3.d.c.e, global3.c.e, var_3.d.c.e), select(vec4<bool>(global3.c.e, false, true, global3.c.e), vec4<bool>(false, false, true, false), false), var_3.d.c.e)));
    return var_3.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<f32>) -> f32 {
    global2 = ~(-abs(global3.b.c));
    global0 = array<Struct_2, 24>();
    var var_0 = select(select(select(vec4<bool>(global3.c.e && arg_0.d.b.e, true, global3.a.e, true), vec4<bool>(false, global3.b.e, any(vec2<bool>(true, true)), !global3.a.e), !(!global3.a.e)), vec4<bool>(global3.a.a.x != arg_0.b, !select(global3.c.e, arg_0.d.b.e, false), any(!vec3<bool>(true, arg_0.d.c.e, global3.a.e)), any(vec4<bool>(false, global3.c.e, true, arg_0.d.b.e))), !global3.a.e), select(vec4<bool>(false, !all(vec4<bool>(false, false, arg_0.d.b.e, arg_0.d.b.e)), false, func_2().a.e), vec4<bool>(any(select(vec4<bool>(arg_0.d.c.e, false, global3.b.e, false), vec4<bool>(global3.c.e, global3.a.e, global3.c.e, true), vec4<bool>(arg_0.d.b.e, false, false, arg_0.d.b.e))), false, true, global3.b.e), vec4<bool>(false, _wgslsmith_add_u32(arg_1.x, arg_1.x) > arg_0.d.c.b.x, true, any(vec2<bool>(global3.a.e, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b.a.x + _wgslsmith_f_op_f32(arg_2.x + global3.c.a.x)))) >= _wgslsmith_div_f32(1469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.a.x) - _wgslsmith_f_op_f32(arg_2.x + -582f))));
    let var_1 = ~_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec2_u32(min(arg_1, vec2<u32>(arg_1.x, global3.a.b.x)), arg_1));
    global3 = global0[_wgslsmith_index_u32(0u, 24u)];
    return arg_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    return firstLeadingBit(_wgslsmith_mult_u32(0u >> (select(global3.a.d ^ 15322u, ~u_input.c, any(vec3<bool>(arg_1.d.c.e, arg_2, arg_1.d.c.e))) % 32u), 9557u << (~select(57403u, 1u, false) % 32u)));
}

fn func_1() -> f32 {
    let var_0 = global3.a.e;
    global1 = array<i32, 3>();
    let var_1 = vec2<bool>((global3.c.b.x << (~(~0u) % 32u)) > ~abs(65469u & u_input.c), global3.b.a.x <= _wgslsmith_f_op_f32(f32(-1f) * -485f));
    global3 = global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(func_4(Struct_3(-vec2<i32>(global3.a.c, global1[_wgslsmith_index_u32(u_input.c, 3u)]) ^ vec2<i32>(2147483647i, 7725i), 666f, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35414u, u_input.c, 0u), vec4<u32>(u_input.c, 4294967295u, global3.b.d, 1210u)) ^ ~u_input.c, func_2(), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, global3.b.a.x))))), global3.b.b.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(605f, global3.b.a.x, global3.c.a.x) * vec3<f32>(221f, global3.a.a.x, 231f)))))), Struct_3(vec2<i32>(24465i, 2147483647i), _wgslsmith_f_op_f32(254f + global3.c.a.x), ~(~(~1u)), Struct_2(global3.c, func_2().b, global3.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-224f, global3.c.a.x), vec2<f32>(global3.c.a.x, -552f), select(vec2<bool>(true, false), var_1, var_1))), global3.b.a)), any(!(!vec4<bool>(true, var_1.x, false, false))), ~u_input.a.zy), 24u)];
    var var_2 = _wgslsmith_dot_vec2_u32(global3.b.b.yy, select(~vec2<u32>(abs(396u), _wgslsmith_dot_vec3_u32(global3.b.b, global3.b.b)), select(_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.c, 2382u), vec2<u32>(global3.b.b.x, u_input.c), var_1), vec2<u32>(49612u, u_input.c) << (vec2<u32>(1u, 51870u) % vec2<u32>(32u))), global3.c.b.xx, var_1), false));
    return -784f;
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec3_u32(firstTrailingBit(arg_1.wwx), select(global3.a.b, global3.c.b, !vec3<bool>(false, global3.c.e, global3.c.e)));
    global0 = array<Struct_2, 24>();
    let var_1 = !(!vec4<bool>(global3.a.e, any(!vec4<bool>(global3.a.e, false, true, true)), global3.c.e, global3.c.e));
    global2 = -((i32(-1i) * -2147483647i) >> (~firstTrailingBit(min(var_0.x, arg_1.x)) % 32u));
    let var_2 = func_2().b.b;
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-882f, 1171f, u_input.c == global3.c.d)) + 600f), global3.a.a.x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(global3.c.d, 108463u, 56979u) ^ global3.a.b, global3.c.b), vec3<u32>(_wgslsmith_mod_u32(4294967295u, global3.b.d), 0u, 1u)), vec3<u32>(~4294967295u, ~(~global3.a.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global3.b.b, global3.b.b), u_input.c))), ~min(u_input.b, global1[_wgslsmith_index_u32(global3.b.b.x, 3u)]) | u_input.a.x, 23201u, any(vec2<bool>(any(!vec3<bool>(global3.c.e, true, global3.a.e)), global3.b.e)));
    var var_1 = Struct_2(func_6(~vec3<u32>(~0u, 4294967295u, 6216u), abs(firstLeadingBit(vec4<u32>(global3.a.d, 0u, global3.b.b.x, var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(func_1()), -1119f)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global3.c.a.x)), _wgslsmith_f_op_f32(min(-204f, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a.a.x, global3.a.a.x), global3.a.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 2231f)))), _wgslsmith_add_vec3_u32(var_0.b | var_0.b, var_0.b), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-2147483647i), var_0.c), abs(-41068i), 2147483647i), ~global3.a.d, !global3.a.e), func_2().c);
    let var_2 = func_2().c;
    global2 = firstLeadingBit(func_3()) | reverseBits(var_2.c);
    var var_3 = -2147483647i;
    let var_4 = _wgslsmith_sub_i32(0i, ~countOneBits(-2147483647i));
    var var_5 = -4391i >> (~global3.b.d % 32u);
    let var_6 = abs(min(~abs(abs(vec4<i32>(-68152i, var_4, -26289i, -37950i))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(4294967295u, 3u)], 2147483647i, var_2.c)), vec4<i32>(-2147483647i, global3.a.c, u_input.a.x, -59610i) | -vec4<i32>(var_2.c, 0i, var_0.c, var_4))));
    global0 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, 58724u, global3.a.b.x), select(37323u, 4294967295u, false), var_0.b.x, global3.c.b.x | var_2.b.x) << (~(~vec4<u32>(4294967295u, var_1.a.b.x, var_0.b.x, 76767u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(firstLeadingBit(abs(vec4<u32>(var_1.c.b.x, 4294967295u, 1u, 4294967295u))), countOneBits(vec4<u32>(72073u, 84666u, var_0.b.x, var_2.b.x)))), countOneBits(select(~var_1.a.b, _wgslsmith_mod_vec3_u32(var_0.b, vec3<u32>(4294967295u, 4294967295u, 18557u) ^ vec3<u32>(43986u, 55589u, var_2.d)), 142901u < ~global3.a.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.a.x, var_2.a.x, var_2.a.x, global3.b.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 438f, 1265f, -798f) * vec4<f32>(var_2.a.x, -165f, -1964f, -392f)))))), ~var_2.c >> (41878u % 32u), -2147483647i);
}

