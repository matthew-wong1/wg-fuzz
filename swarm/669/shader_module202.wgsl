struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(false, 1063f, Struct_2(i32(-2147483648), 4294967295u, Struct_1(vec2<bool>(false, true)), -295f), vec3<u32>(9726u, 0u, 39624u), Struct_2(1i, 23399u, Struct_1(vec2<bool>(false, false)), 1273f)), Struct_3(false, 1496f, Struct_2(5971i, 7825u, Struct_1(vec2<bool>(true, false)), 335f), vec3<u32>(86899u, 67185u, 48974u), Struct_2(-5751i, 0u, Struct_1(vec2<bool>(false, false)), -604f)), Struct_3(false, 178f, Struct_2(26087i, 1u, Struct_1(vec2<bool>(true, true)), -223f), vec3<u32>(9943u, 4294967295u, 0u), Struct_2(44066i, 96603u, Struct_1(vec2<bool>(true, false)), -845f)), Struct_3(false, -664f, Struct_2(-45683i, 4785u, Struct_1(vec2<bool>(true, true)), 981f), vec3<u32>(1u, 1u, 43024u), Struct_2(i32(-2147483648), 119479u, Struct_1(vec2<bool>(false, false)), 1625f)), Struct_3(false, -890f, Struct_2(2147483647i, 1u, Struct_1(vec2<bool>(false, false)), -962f), vec3<u32>(12557u, 59766u, 24541u), Struct_2(58893i, 52016u, Struct_1(vec2<bool>(false, false)), 1682f)), Struct_3(true, 1877f, Struct_2(31859i, 0u, Struct_1(vec2<bool>(false, true)), 1410f), vec3<u32>(91641u, 1u, 95654u), Struct_2(-1511i, 35075u, Struct_1(vec2<bool>(true, true)), -425f)), Struct_3(false, -1184f, Struct_2(13549i, 70638u, Struct_1(vec2<bool>(false, true)), -138f), vec3<u32>(10279u, 4294967295u, 39738u), Struct_2(18493i, 4294967295u, Struct_1(vec2<bool>(false, false)), 1026f)), Struct_3(false, 458f, Struct_2(-81067i, 0u, Struct_1(vec2<bool>(true, false)), 140f), vec3<u32>(504u, 4294967295u, 16150u), Struct_2(0i, 4904u, Struct_1(vec2<bool>(true, true)), 1291f)), Struct_3(false, -1431f, Struct_2(-45771i, 0u, Struct_1(vec2<bool>(true, false)), 1000f), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_2(34266i, 4294967295u, Struct_1(vec2<bool>(true, true)), 1039f)), Struct_3(false, 729f, Struct_2(-32583i, 1u, Struct_1(vec2<bool>(false, false)), 2672f), vec3<u32>(4294967295u, 30318u, 1890u), Struct_2(40725i, 4294967295u, Struct_1(vec2<bool>(true, false)), -492f)), Struct_3(true, -110f, Struct_2(-20167i, 7994u, Struct_1(vec2<bool>(true, true)), 344f), vec3<u32>(23142u, 34764u, 55484u), Struct_2(1i, 35540u, Struct_1(vec2<bool>(false, true)), -461f)), Struct_3(false, 992f, Struct_2(2147483647i, 4294967295u, Struct_1(vec2<bool>(false, true)), 524f), vec3<u32>(25840u, 51438u, 4294967295u), Struct_2(-26886i, 39020u, Struct_1(vec2<bool>(true, false)), 1660f)), Struct_3(true, 1396f, Struct_2(1i, 4419u, Struct_1(vec2<bool>(false, false)), 186f), vec3<u32>(20668u, 4294967295u, 0u), Struct_2(-27603i, 128969u, Struct_1(vec2<bool>(true, true)), 526f)), Struct_3(false, -675f, Struct_2(18320i, 1u, Struct_1(vec2<bool>(true, false)), -581f), vec3<u32>(0u, 26938u, 1u), Struct_2(1i, 4294967295u, Struct_1(vec2<bool>(false, true)), 377f)), Struct_3(true, -1857f, Struct_2(-9532i, 12033u, Struct_1(vec2<bool>(false, false)), -1263f), vec3<u32>(0u, 1u, 21667u), Struct_2(-1752i, 1546u, Struct_1(vec2<bool>(false, false)), -1440f)), Struct_3(true, 629f, Struct_2(2147483647i, 23542u, Struct_1(vec2<bool>(false, false)), -746f), vec3<u32>(33400u, 36206u, 4294967295u), Struct_2(1i, 0u, Struct_1(vec2<bool>(false, false)), -800f)), Struct_3(true, -983f, Struct_2(-2235i, 4294967295u, Struct_1(vec2<bool>(true, true)), -339f), vec3<u32>(60272u, 0u, 19245u), Struct_2(0i, 49724u, Struct_1(vec2<bool>(false, true)), 720f)), Struct_3(true, -895f, Struct_2(i32(-2147483648), 20208u, Struct_1(vec2<bool>(false, false)), 378f), vec3<u32>(8917u, 4294967295u, 0u), Struct_2(56991i, 3072u, Struct_1(vec2<bool>(true, false)), -129f)));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(false, -1000f, Struct_2(-19607i, 37577u, Struct_1(vec2<bool>(false, false)), 209f), vec3<u32>(1u, 43272u, 13670u), Struct_2(i32(-2147483648), 50870u, Struct_1(vec2<bool>(false, true)), 1380f)), Struct_3(true, 233f, Struct_2(i32(-2147483648), 27774u, Struct_1(vec2<bool>(true, false)), 456f), vec3<u32>(14391u, 77895u, 0u), Struct_2(i32(-2147483648), 4294967295u, Struct_1(vec2<bool>(true, false)), 2017f)), Struct_3(false, 1122f, Struct_2(31606i, 0u, Struct_1(vec2<bool>(false, false)), -1272f), vec3<u32>(16156u, 1201u, 0u), Struct_2(1i, 721u, Struct_1(vec2<bool>(false, false)), 370f)), Struct_3(false, 663f, Struct_2(i32(-2147483648), 1u, Struct_1(vec2<bool>(true, false)), 846f), vec3<u32>(3997u, 9280u, 40589u), Struct_2(1i, 0u, Struct_1(vec2<bool>(true, false)), -462f)), Struct_3(true, -128f, Struct_2(39304i, 51234u, Struct_1(vec2<bool>(true, false)), -375f), vec3<u32>(0u, 4294967295u, 122616u), Struct_2(2147483647i, 13267u, Struct_1(vec2<bool>(true, true)), -1893f)), Struct_3(true, -109f, Struct_2(2147483647i, 174u, Struct_1(vec2<bool>(false, true)), -1170f), vec3<u32>(4294967295u, 49789u, 0u), Struct_2(13442i, 0u, Struct_1(vec2<bool>(false, false)), 1320f)), Struct_3(true, 626f, Struct_2(35253i, 19922u, Struct_1(vec2<bool>(false, true)), -582f), vec3<u32>(29848u, 1u, 10757u), Struct_2(1i, 35430u, Struct_1(vec2<bool>(false, false)), -411f)), Struct_3(true, -499f, Struct_2(54137i, 4674u, Struct_1(vec2<bool>(false, true)), 568f), vec3<u32>(34799u, 0u, 0u), Struct_2(-1i, 10322u, Struct_1(vec2<bool>(true, false)), 483f)), Struct_3(false, -203f, Struct_2(1i, 0u, Struct_1(vec2<bool>(true, false)), -1005f), vec3<u32>(21106u, 0u, 0u), Struct_2(-39143i, 4294967295u, Struct_1(vec2<bool>(false, true)), -1316f)), Struct_3(false, 716f, Struct_2(i32(-2147483648), 64683u, Struct_1(vec2<bool>(false, true)), -499f), vec3<u32>(77323u, 86409u, 0u), Struct_2(-1i, 4294967295u, Struct_1(vec2<bool>(false, true)), 490f)), Struct_3(true, 832f, Struct_2(2147483647i, 25770u, Struct_1(vec2<bool>(true, false)), -460f), vec3<u32>(1u, 38888u, 27888u), Struct_2(33149i, 0u, Struct_1(vec2<bool>(false, false)), 121f)), Struct_3(true, 219f, Struct_2(-82666i, 61867u, Struct_1(vec2<bool>(true, false)), 923f), vec3<u32>(2543u, 0u, 39627u), Struct_2(33220i, 23779u, Struct_1(vec2<bool>(true, false)), -1038f)), Struct_3(false, -676f, Struct_2(i32(-2147483648), 25246u, Struct_1(vec2<bool>(false, false)), 572f), vec3<u32>(1u, 23285u, 6307u), Struct_2(13841i, 14939u, Struct_1(vec2<bool>(false, false)), -1000f)), Struct_3(false, -738f, Struct_2(3708i, 35759u, Struct_1(vec2<bool>(false, true)), -232f), vec3<u32>(0u, 53196u, 0u), Struct_2(0i, 24421u, Struct_1(vec2<bool>(false, false)), -441f)), Struct_3(true, -1244f, Struct_2(1i, 1u, Struct_1(vec2<bool>(true, true)), -1208f), vec3<u32>(20933u, 1u, 66032u), Struct_2(2147483647i, 1u, Struct_1(vec2<bool>(true, false)), 891f)), Struct_3(true, -981f, Struct_2(6403i, 0u, Struct_1(vec2<bool>(true, true)), -542f), vec3<u32>(1u, 20537u, 1u), Struct_2(20578i, 33581u, Struct_1(vec2<bool>(true, false)), 280f)), Struct_3(false, 320f, Struct_2(17561i, 4294967295u, Struct_1(vec2<bool>(false, true)), -747f), vec3<u32>(13598u, 4294967295u, 0u), Struct_2(-1i, 26429u, Struct_1(vec2<bool>(true, true)), 161f)), Struct_3(true, 1300f, Struct_2(-10409i, 29506u, Struct_1(vec2<bool>(true, true)), 894f), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(1i, 4294967295u, Struct_1(vec2<bool>(true, false)), 1018f)), Struct_3(false, -651f, Struct_2(i32(-2147483648), 1u, Struct_1(vec2<bool>(true, false)), 334f), vec3<u32>(45108u, 4294967295u, 3577u), Struct_2(-25842i, 47550u, Struct_1(vec2<bool>(true, false)), 1877f)), Struct_3(true, -349f, Struct_2(8809i, 18470u, Struct_1(vec2<bool>(true, true)), 736f), vec3<u32>(29440u, 38174u, 1u), Struct_2(-1i, 0u, Struct_1(vec2<bool>(true, false)), 189f)), Struct_3(true, 439f, Struct_2(-61694i, 1u, Struct_1(vec2<bool>(true, true)), 800f), vec3<u32>(36237u, 1u, 1u), Struct_2(i32(-2147483648), 37359u, Struct_1(vec2<bool>(false, true)), -943f)), Struct_3(false, -273f, Struct_2(-11700i, 1u, Struct_1(vec2<bool>(false, true)), 481f), vec3<u32>(4294967295u, 1u, 1u), Struct_2(28829i, 89007u, Struct_1(vec2<bool>(true, true)), -477f)), Struct_3(false, -912f, Struct_2(2147483647i, 16926u, Struct_1(vec2<bool>(false, false)), -1893f), vec3<u32>(121111u, 113880u, 2938u), Struct_2(-1i, 34877u, Struct_1(vec2<bool>(true, true)), -124f)), Struct_3(true, 1000f, Struct_2(2412i, 51806u, Struct_1(vec2<bool>(true, false)), 1448f), vec3<u32>(1u, 8363u, 1u), Struct_2(i32(-2147483648), 1u, Struct_1(vec2<bool>(false, false)), 1000f)), Struct_3(false, -1575f, Struct_2(i32(-2147483648), 67537u, Struct_1(vec2<bool>(false, true)), 819f), vec3<u32>(1u, 1u, 4294967295u), Struct_2(22314i, 6380u, Struct_1(vec2<bool>(true, false)), 538f)), Struct_3(false, 111f, Struct_2(32540i, 83331u, Struct_1(vec2<bool>(true, true)), -1000f), vec3<u32>(1u, 1u, 25838u), Struct_2(-35063i, 0u, Struct_1(vec2<bool>(true, true)), -595f)), Struct_3(true, -498f, Struct_2(1i, 35948u, Struct_1(vec2<bool>(true, true)), 1187f), vec3<u32>(12895u, 4294967295u, 4294967295u), Struct_2(1i, 1u, Struct_1(vec2<bool>(false, true)), 934f)), Struct_3(true, 1373f, Struct_2(73366i, 4294967295u, Struct_1(vec2<bool>(true, false)), 770f), vec3<u32>(1u, 11093u, 66320u), Struct_2(5298i, 52422u, Struct_1(vec2<bool>(true, true)), -359f)), Struct_3(true, -228f, Struct_2(87076i, 16823u, Struct_1(vec2<bool>(false, true)), 468f), vec3<u32>(4294967295u, 9278u, 18177u), Struct_2(0i, 4294967295u, Struct_1(vec2<bool>(false, false)), -440f)));

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-626f, -2056f, -724f), vec3<f32>(-1000f, 1113f, 744f), vec3<f32>(-1000f, 657f, -1098f), vec3<f32>(-1032f, -1338f, 1187f), vec3<f32>(567f, -647f, -1304f), vec3<f32>(649f, -2221f, -1772f), vec3<f32>(2127f, 1300f, 367f));

var<private> global3: vec3<bool>;

var<private> global4: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(1011f, 570f, -926f, 317f), vec4<f32>(821f, -580f, -500f, 624f), vec4<f32>(526f, -1081f, -238f, 237f), vec4<f32>(-1382f, 744f, -920f, 660f), vec4<f32>(-405f, 1237f, -1878f, -417f), vec4<f32>(-596f, 1734f, -441f, -470f), vec4<f32>(-770f, 1698f, 846f, -490f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 18u)];
    global3 = !select(select(!select(vec3<bool>(arg_0.a, global3.x, true), vec3<bool>(arg_0.c.c.a.x, var_0.c.c.a.x, false), arg_0.e.c.a.x), select(vec3<bool>(var_0.e.c.a.x, false, false), !vec3<bool>(var_0.c.c.a.x, true, var_0.c.c.a.x), var_0.c.c.a.x && arg_0.a), vec3<bool>(any(vec4<bool>(true, false, false, arg_0.a)), true, true)), vec3<bool>(!var_0.c.c.a.x, true | !var_0.c.c.a.x, arg_0.c.c.a.x), var_0.e.a > max(0i, 75003i | var_0.c.a));
    var var_1 = u_input.a;
    global4 = array<vec4<f32>, 7>();
    global4 = array<vec4<f32>, 7>();
    return !select(vec3<bool>(arg_0.a, false, !any(vec4<bool>(global3.x, arg_0.a, false, true))), select(!select(vec3<bool>(true, arg_0.a, arg_0.e.c.a.x), vec3<bool>(arg_0.c.c.a.x, var_0.e.c.a.x, false), vec3<bool>(true, false, false)), !(!vec3<bool>(var_0.e.c.a.x, arg_0.a, false)), select(vec3<bool>(false, false, true), vec3<bool>(var_0.e.c.a.x, global3.x, true), all(vec3<bool>(arg_0.e.c.a.x, arg_0.a, true)))), !any(vec2<bool>(true, global3.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_1.e.b;
    global3 = !select(select(func_3(arg_3), select(vec3<bool>(arg_3.a, false, false), select(vec3<bool>(false, arg_1.e.c.a.x, false), vec3<bool>(arg_1.c.c.a.x, true, false), vec3<bool>(false, arg_3.c.c.a.x, arg_1.c.c.a.x)), global3.x), vec3<bool>(false, !global3.x, arg_3.b >= -1341f)), select(!select(vec3<bool>(arg_3.e.c.a.x, false, global3.x), vec3<bool>(false, global3.x, arg_3.a), vec3<bool>(true, false, true)), select(select(vec3<bool>(arg_1.a, global3.x, true), vec3<bool>(global3.x, false, global3.x), vec3<bool>(arg_3.a, global3.x, false)), select(vec3<bool>(global3.x, arg_1.c.c.a.x, true), vec3<bool>(arg_1.a, false, arg_3.a), vec3<bool>(arg_3.c.c.a.x, true, arg_1.c.c.a.x)), vec3<bool>(false, global3.x, true)), !(!vec3<bool>(global3.x, false, arg_1.c.c.a.x))), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1894f, arg_1.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1191f - arg_3.e.d) - _wgslsmith_f_op_f32(-arg_3.e.d)), arg_1.e.d)))));
    var var_2 = ~(~38709u);
    global1 = array<Struct_3, 29>();
    return global0[_wgslsmith_index_u32(u_input.b.x, 18u)];
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = -abs(~max(vec4<i32>(arg_0.e.a, 2147483647i, u_input.c, u_input.d) & vec4<i32>(42733i, 19704i, -55876i, 1i), ~vec4<i32>(40107i, 34602i, -24636i, u_input.d)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-879f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(arg_0.b, -258f), _wgslsmith_f_op_f32(f32(-1f) * -305f)))))));
    global3 = select(!(!vec3<bool>(arg_0.e.c.a.x, global3.x && true, !global3.x)), vec3<bool>(select(120059u < arg_0.e.b, false, true), true, !(select(arg_0.c.b, 18030u, false) != max(0u, arg_0.c.b))), vec3<bool>(global3.x, !global3.x, any(!(!vec3<bool>(false, global3.x, global3.x)))));
    var var_2 = arg_0.d.yx;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(var_1.ww));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(26666u, _wgslsmith_clamp_u32(reverseBits(arg_0.d.x), var_2.x, ~arg_0.e.b), arg_0.c.b), _wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 1u, arg_0.e.b)), select(~arg_0.d, vec3<u32>(arg_0.c.b, 2788u, 0u), any(vec4<bool>(arg_0.e.c.a.x, arg_0.a, global3.x, global3.x))))), u_input.b.zww);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global3 = vec3<bool>((global3.x || !(global3.x & global3.x)) && (func_4(func_2(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_1, Struct_3(global3.x, 1000f, Struct_2(0i, u_input.b.x, Struct_1(vec2<bool>(global3.x, global3.x)), 1312f), u_input.b.zzy, Struct_2(arg_0.x, 4591u, Struct_1(vec2<bool>(global3.x, global3.x)), 803f)))) >= min(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_sub_u32(u_input.b.x, 1u))), global3.x, global3.x);
    global4 = array<vec4<f32>, 7>();
    var var_0 = vec3<i32>(~countOneBits(-2147483647i), _wgslsmith_mod_i32(~(u_input.d | (i32(-1i) * -6163i)), 2147483647i), min(countOneBits(_wgslsmith_sub_i32(0i, -20244i) ^ func_2(4294967295u, Struct_3(global3.x, -2284f, Struct_2(1i, 4294967295u, Struct_1(global3.yy), -1754f), u_input.b.yww, Struct_2(3792i, 94191u, Struct_1(vec2<bool>(global3.x, true)), -341f)), u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]).e.a), _wgslsmith_add_i32(31148i, max(-u_input.a, arg_0.x))));
    global0 = array<Struct_3, 18>();
    let var_1 = func_2(u_input.b.x, Struct_3(global3.x, _wgslsmith_f_op_f32(sign(-497f)), func_2(abs(u_input.b.x), func_2(1u, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], i32(-1i) * -2052i, global0[_wgslsmith_index_u32(~1u, 18u)]), min(11567i, _wgslsmith_div_i32(arg_0.x, 0i)), global0[_wgslsmith_index_u32(~(u_input.b.x >> (0u % 32u)), 18u)]).e, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.xyz) & countOneBits(firstLeadingBit(u_input.b.yyz)), func_2(u_input.b.x | u_input.b.x, Struct_3(all(vec3<bool>(false, true, global3.x)), _wgslsmith_f_op_f32(-191f - 1589f), Struct_2(-9199i, 0u, Struct_1(global3.yy), -211f), vec3<u32>(0u, 0u, u_input.b.x), Struct_2(var_0.x, u_input.b.x, Struct_1(global3.xx), -1409f)), 14416i, global0[_wgslsmith_index_u32(~41136u, 18u)]).c), ~(-1565i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(30638u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(min(u_input.b.x, u_input.b.x), ~49067u), ~(~u_input.b.x))), 18u)]).c;
    return 11407u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.e, u_input.e, vec2<bool>(true, global3.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(5612u, 7u)], _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(39412u, 7u)]))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-545f)) * _wgslsmith_div_f32(632f, 830f)) - _wgslsmith_f_op_f32(-800f * _wgslsmith_div_f32(182f, -792f))), 109f, -110f));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-var_1);
    let var_4 = countOneBits(~vec3<i32>(var_0.x, 0i, 1i));
    let var_5 = Struct_2(max(~(-2147483647i), ~1i), ~(func_1(u_input.e, var_4.x | 74193i) ^ 4294967295u), func_2(~0u, Struct_3(any(!vec3<bool>(global3.x, global3.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), func_2(~u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a >> (u_input.b.x % 32u), global1[_wgslsmith_index_u32(39818u, 29u)]).e, u_input.b.wyz, Struct_2(firstLeadingBit(2147483647i), ~1952u, func_2(4294967295u, Struct_3(false, 286f, Struct_2(0i, u_input.b.x, Struct_1(vec2<bool>(true, global3.x)), 1397f), u_input.b.xww, Struct_2(-1i, 0u, Struct_1(global3.zx), var_3.x)), var_0.x, Struct_3(false, var_2.x, Struct_2(var_4.x, 33197u, Struct_1(global3.zx), var_3.x), u_input.b.zxx, Struct_2(-25300i, 1u, Struct_1(global3.yx), var_1.x))).e.c, _wgslsmith_f_op_f32(round(581f)))), ~(-2147483647i), global0[_wgslsmith_index_u32(4294967295u, 18u)]).e.c, -574f);
    global2 = array<vec3<f32>, 7>();
    let var_6 = Struct_2(-_wgslsmith_sub_i32(var_5.a, var_0.x), select(~abs(~u_input.b.x), abs(max(~u_input.b.x, ~36196u)), var_0.x < _wgslsmith_sub_i32(var_4.x, abs(u_input.c))), Struct_1(vec2<bool>(any(!vec3<bool>(global3.x, global3.x, true)), !(!global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f)));
    var var_7 = var_3.zx;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_6.a);
}

