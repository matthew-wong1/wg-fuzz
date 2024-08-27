struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<bool>(true, true, true, false), false, Struct_1(0u, vec2<i32>(1508i, 8299i), vec3<i32>(0i, -29141i, 1i), vec4<u32>(33973u, 1u, 0u, 35244u)), vec2<f32>(1497f, 1844f), Struct_1(4294967295u, vec2<i32>(-1i, 2147483647i), vec3<i32>(-31120i, 19672i, 2147483647i), vec4<u32>(21068u, 54311u, 0u, 2317u))), Struct_3(vec4<bool>(false, false, false, false), true, Struct_1(1u, vec2<i32>(34459i, 0i), vec3<i32>(83i, 8625i, -1i), vec4<u32>(0u, 16364u, 67662u, 0u)), vec2<f32>(596f, 463f), Struct_1(1u, vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(-15294i, 1i, -30290i), vec4<u32>(34951u, 0u, 28137u, 4294967295u))), Struct_3(vec4<bool>(false, false, true, true), true, Struct_1(33153u, vec2<i32>(1i, 0i), vec3<i32>(-13338i, i32(-2147483648), -1i), vec4<u32>(28833u, 58118u, 1u, 4294967295u)), vec2<f32>(-1671f, 1203f), Struct_1(19027u, vec2<i32>(1i, -3873i), vec3<i32>(i32(-2147483648), -21612i, 51521i), vec4<u32>(4294967295u, 0u, 4294967295u, 37899u))), Struct_3(vec4<bool>(false, true, false, false), true, Struct_1(1u, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(13500i, 2147483647i, -17758i), vec4<u32>(107981u, 1u, 50211u, 4294967295u)), vec2<f32>(-1021f, 488f), Struct_1(0u, vec2<i32>(0i, 2147483647i), vec3<i32>(2147483647i, -9260i, 1i), vec4<u32>(0u, 4294967295u, 0u, 1u))), Struct_3(vec4<bool>(true, true, false, false), false, Struct_1(70335u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(4336i, i32(-2147483648), 0i), vec4<u32>(23986u, 4294967295u, 20074u, 44893u)), vec2<f32>(-462f, -1088f), Struct_1(2653u, vec2<i32>(-1i, 2147483647i), vec3<i32>(2147483647i, -9221i, 2147483647i), vec4<u32>(0u, 1u, 98506u, 4294967295u))), Struct_3(vec4<bool>(true, true, false, false), true, Struct_1(99013u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, -25884i), vec4<u32>(22576u, 17219u, 43895u, 1u)), vec2<f32>(-969f, 1936f), Struct_1(4294967295u, vec2<i32>(36135i, -27487i), vec3<i32>(42827i, 8341i, i32(-2147483648)), vec4<u32>(0u, 81805u, 4294967295u, 57540u))), Struct_3(vec4<bool>(false, true, false, false), false, Struct_1(17601u, vec2<i32>(-19533i, 0i), vec3<i32>(0i, i32(-2147483648), -1i), vec4<u32>(68890u, 4294967295u, 4294967295u, 0u)), vec2<f32>(559f, -1997f), Struct_1(1u, vec2<i32>(i32(-2147483648), -45920i), vec3<i32>(1i, 0i, -13223i), vec4<u32>(0u, 17183u, 11874u, 3734u))), Struct_3(vec4<bool>(false, true, true, false), false, Struct_1(88760u, vec2<i32>(1061i, 47616i), vec3<i32>(-27709i, -1i, -15301i), vec4<u32>(67856u, 1u, 6150u, 1u)), vec2<f32>(-159f, 189f), Struct_1(1u, vec2<i32>(6812i, -24004i), vec3<i32>(0i, 2147483647i, -33927i), vec4<u32>(76175u, 17107u, 15500u, 51759u))), Struct_3(vec4<bool>(false, true, false, false), false, Struct_1(1u, vec2<i32>(35452i, -70795i), vec3<i32>(36990i, -25646i, -1i), vec4<u32>(1926u, 48815u, 97330u, 74939u)), vec2<f32>(1522f, 1154f), Struct_1(1u, vec2<i32>(-7801i, -1i), vec3<i32>(-27552i, 1571i, -1i), vec4<u32>(0u, 1u, 61422u, 0u))), Struct_3(vec4<bool>(false, true, true, false), true, Struct_1(1u, vec2<i32>(40775i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec4<u32>(0u, 53452u, 0u, 103953u)), vec2<f32>(-1561f, -621f), Struct_1(4294967295u, vec2<i32>(1i, 1i), vec3<i32>(2147483647i, 11618i, -10283i), vec4<u32>(4294967295u, 43858u, 0u, 1u))), Struct_3(vec4<bool>(true, true, true, true), true, Struct_1(4294967295u, vec2<i32>(8432i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec4<u32>(1u, 4294967295u, 40058u, 24308u)), vec2<f32>(1391f, -1229f), Struct_1(4294967295u, vec2<i32>(-15327i, 1i), vec3<i32>(1i, -1i, 14720i), vec4<u32>(12852u, 0u, 27561u, 45375u))), Struct_3(vec4<bool>(true, true, true, true), true, Struct_1(28309u, vec2<i32>(1i, 1i), vec3<i32>(4954i, -23369i, 14634i), vec4<u32>(43539u, 103262u, 28549u, 38923u)), vec2<f32>(1000f, -1000f), Struct_1(1u, vec2<i32>(-68921i, 60175i), vec3<i32>(i32(-2147483648), 0i, 1532i), vec4<u32>(60366u, 0u, 22897u, 0u))), Struct_3(vec4<bool>(true, true, true, false), true, Struct_1(494u, vec2<i32>(i32(-2147483648), -1i), vec3<i32>(32862i, -3056i, -5880i), vec4<u32>(49330u, 4294967295u, 7475u, 1u)), vec2<f32>(236f, 1815f), Struct_1(20660u, vec2<i32>(2147483647i, -37658i), vec3<i32>(16310i, -1i, -1893i), vec4<u32>(4294967295u, 62484u, 1u, 85767u))), Struct_3(vec4<bool>(false, false, false, false), true, Struct_1(0u, vec2<i32>(i32(-2147483648), 0i), vec3<i32>(1537i, -5162i, -5591i), vec4<u32>(1u, 36614u, 24641u, 685u)), vec2<f32>(-509f, -427f), Struct_1(1u, vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(1i, 10760i, 0i), vec4<u32>(39292u, 4294967295u, 6669u, 4294967295u))), Struct_3(vec4<bool>(false, false, true, false), false, Struct_1(0u, vec2<i32>(9968i, 1i), vec3<i32>(2147483647i, -91164i, -7793i), vec4<u32>(1u, 1u, 7280u, 90685u)), vec2<f32>(273f, 513f), Struct_1(0u, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 1i, -5052i), vec4<u32>(10316u, 56793u, 4294967295u, 0u))));

var<private> global1: array<vec3<bool>, 29>;

var<private> global2: array<Struct_4, 17>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global4: array<u32, 15>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    global1 = array<vec3<bool>, 29>();
    let var_0 = global3.yy;
    global1 = array<vec3<bool>, 29>();
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(arg_0.a.c.d.x, 15u)], !(!select(select(vec3<bool>(true, var_0.x, global3.x), arg_0.b, vec3<bool>(global3.x, true, global3.x)), !vec3<bool>(true, true, var_0.x), select(arg_0.b, global1[_wgslsmith_index_u32(arg_3, 29u)], false))));
    let var_2 = arg_0.a.c.c.x;
    return var_1.a.e.d.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_2.d.d.x;
    var var_1 = arg_1;
    var var_2 = ~(~var_1.d.www);
    var var_3 = Struct_1(firstLeadingBit(arg_2.d.a) | 1u, arg_3.a.c.b, (vec3<i32>(-1i) * -vec3<i32>(-2147483647i, arg_2.a.c.x, 29711i)) ^ vec3<i32>(arg_3.a.c.c.x >> (func_3(arg_3, var_1.d.wzy, vec3<f32>(arg_3.a.d.x, arg_3.a.d.x, -1784f), var_1.d.x) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, var_1.c.x, var_1.c.x), vec4<i32>(arg_3.a.c.b.x, arg_2.d.b.x, 0i, 24938i), vec4<i32>(var_1.c.x, arg_2.d.b.x, -2147483647i, -43111i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_1.b.x, var_1.c.x, arg_2.a.b.x), vec4<i32>(-39708i, 1i, arg_3.a.e.c.x, -2147483647i), vec4<i32>(-2147483647i, var_1.c.x, 0i, arg_2.c))), (i32(-1i) * -38850i) >> (~arg_1.a % 32u)), vec4<u32>(arg_2.a.a, _wgslsmith_clamp_u32(~arg_1.a, 20311u, 63624u), 1u, 0u));
    global4 = array<u32, 15>();
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: Struct_5) -> Struct_2 {
    var var_0 = true;
    global3 = !(!(!(!(!arg_3.a.a.a))));
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_4 {
    global2 = array<Struct_4, 17>();
    let var_0 = max(_wgslsmith_div_i32(arg_0.a.a.c.b.x, _wgslsmith_add_i32(-72427i, _wgslsmith_clamp_i32(-1i, ~(-1i), arg_0.c))), select(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-18757i, -56457i, 0i, -2147483647i), vec4<i32>(arg_0.c, arg_0.a.a.c.b.x, arg_3.a.c.x, arg_0.a.a.c.c.x)), 1i, arg_0.c), -11138i, arg_0.d.x));
    global0 = array<Struct_3, 15>();
    global1 = array<vec3<bool>, 29>();
    return arg_0.a;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec4<u32>) -> Struct_1 {
    global4 = array<u32, 15>();
    global3 = !arg_1.a.a.a;
    var var_0 = func_2(_wgslsmith_f_op_f32(-956f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.d.x))), func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f * -2066f)))), arg_0.a.a.e, func_2(2088f, Struct_1(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(0u, 15u)], 43334u), vec2<i32>(arg_0.a.a.e.b.x, arg_0.a.a.c.b.x), vec3<i32>(-81824i, 17292i, 40829i) >> (arg_2.zwx % vec3<u32>(32u)), firstTrailingBit(vec4<u32>(arg_1.a.a.c.a, arg_1.a.a.c.a, 34104u, 26365u))), func_2(_wgslsmith_f_op_f32(-arg_1.e), Struct_1(1u, vec2<i32>(arg_1.a.a.e.b.x, -2147483647i), vec3<i32>(0i, arg_0.a.a.c.c.x, 2147483647i), u_input.a), func_2(arg_1.b.x, arg_1.a.a.c, Struct_2(arg_0.a.a.c, global3.x, 1311i, arg_1.a.a.e), arg_0.a), arg_0.a), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(42432u, 4294967295u), 15u)], !arg_0.a.b)), func_5(Struct_5(arg_1.a, arg_1.b, _wgslsmith_add_i32(arg_0.a.a.c.b.x, -15503i), func_5(Struct_5(Struct_4(Struct_3(arg_1.a.a.a, global3.x, Struct_1(50714u, arg_1.a.a.c.b, vec3<i32>(arg_0.a.a.e.b.x, 22525i, arg_0.c), vec4<u32>(0u, 0u, arg_2.x, u_input.b)), arg_0.b.xx, arg_1.a.a.e), vec3<bool>(true, true, arg_0.a.b.x)), vec4<f32>(249f, arg_1.b.x, arg_0.b.x, arg_1.b.x), arg_0.c, vec2<bool>(global3.x, arg_0.a.a.b), 1955f), arg_2, arg_0.b, Struct_2(arg_1.a.a.c, arg_1.d.x, arg_1.a.a.e.b.x, Struct_1(u_input.b, vec2<i32>(20924i, 37085i), arg_1.a.a.e.c, vec4<u32>(7177u, 4294967295u, 1u, arg_2.x)))).a.a.yy, _wgslsmith_f_op_f32(-arg_1.a.a.d.x)), reverseBits(_wgslsmith_mod_vec4_u32(arg_2, arg_0.a.a.c.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), func_4(func_2(arg_0.b.x, Struct_1(global4[_wgslsmith_index_u32(u_input.b, 15u)], arg_1.a.a.e.b, vec3<i32>(arg_0.a.a.c.c.x, -6464i, arg_0.a.a.c.b.x), vec4<u32>(arg_0.a.a.c.d.x, 4294967295u, global4[_wgslsmith_index_u32(7838u, 15u)], global4[_wgslsmith_index_u32(arg_0.a.a.c.d.x, 15u)])), Struct_2(arg_0.a.a.e, true, arg_0.c, arg_1.a.a.c), Struct_4(arg_0.a.a, vec3<bool>(false, global3.x, false))), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 15u)], vec2<i32>(arg_0.c, arg_1.c), arg_0.a.a.e.c, vec4<u32>(arg_0.a.a.c.d.x, 4294967295u, arg_0.a.a.c.a, global4[_wgslsmith_index_u32(u_input.b, 15u)])), arg_0.a.b.x, Struct_5(Struct_4(global0[_wgslsmith_index_u32(arg_2.x, 15u)], vec3<bool>(arg_0.a.b.x, true, arg_1.d.x)), arg_0.b, -56502i, global3.zw, arg_1.a.a.d.x)))).d, func_2(-1158f, Struct_1(~103459u, vec2<i32>(_wgslsmith_mod_i32(arg_0.a.a.e.c.x, -4384i), -arg_0.c), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(arg_1.a.a.e.c.x, -1i, arg_1.c)), func_5(Struct_5(arg_0.a, vec4<f32>(2019f, -752f, arg_0.a.a.d.x, -2774f), arg_1.c, arg_0.d, arg_1.e), vec4<u32>(1u, u_input.a.x, 34226u, arg_2.x), vec4<f32>(arg_0.b.x, -638f, -680f, arg_0.a.a.d.x), Struct_2(arg_1.a.a.e, false, arg_0.a.a.c.c.x, Struct_1(arg_0.a.a.c.d.x, vec2<i32>(-2147483647i, arg_1.c), vec3<i32>(-1i, -1i, -5030i), arg_0.a.a.c.d))).a.e.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global4[_wgslsmith_index_u32(4110u, 15u)], 1u, 1u), vec4<u32>(arg_2.x, 1u, 0u, 0u))), Struct_2(Struct_1(countOneBits(arg_0.a.a.c.a), vec2<i32>(arg_1.a.a.c.c.x, arg_1.a.a.c.b.x), vec3<i32>(47562i, arg_0.c, arg_1.c), ~vec4<u32>(arg_1.a.a.c.d.x, arg_1.a.a.e.a, 76732u, arg_2.x)), -1i > arg_0.a.a.e.b.x, _wgslsmith_div_i32(-935i, arg_1.a.a.e.c.x) ^ _wgslsmith_sub_i32(arg_0.c, arg_0.a.a.e.c.x), func_4(func_2(arg_1.a.a.d.x, Struct_1(arg_2.x, arg_1.a.a.c.b, vec3<i32>(arg_1.c, 16571i, arg_1.c), arg_1.a.a.e.d), Struct_2(arg_1.a.a.c, global3.x, arg_1.c, arg_0.a.a.c), Struct_4(arg_1.a.a, global1[_wgslsmith_index_u32(1u, 29u)])), arg_1.a.a.e, !arg_1.a.a.a.x, Struct_5(Struct_4(arg_1.a.a, global3.ywz), vec4<f32>(2538f, arg_0.b.x, arg_0.a.a.d.x, arg_1.b.x), 1i, vec2<bool>(arg_0.a.a.a.x, true), arg_0.b.x)).d), Struct_4(arg_0.a.a, select(vec3<bool>(arg_0.a.b.x, arg_1.a.a.a.x, global3.x), vec3<bool>(false, arg_1.d.x, global3.x), arg_0.d.x))), func_5(arg_0, u_input.a, _wgslsmith_f_op_vec4_f32(-arg_0.b), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1333f))), Struct_1(1u, vec2<i32>(arg_1.a.a.c.b.x, arg_0.c), vec3<i32>(-50285i, -10138i, -4043i), _wgslsmith_div_vec4_u32(vec4<u32>(6823u, 8956u, 70511u, arg_0.a.a.c.d.x), arg_0.a.a.e.d)), func_2(-1474f, func_4(Struct_2(Struct_1(u_input.a.x, vec2<i32>(1i, -2147483647i), arg_1.a.a.e.c, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.b)), global3.x, -40813i, arg_0.a.a.c), Struct_1(global4[_wgslsmith_index_u32(arg_0.a.a.c.a, 15u)], vec2<i32>(-2464i, -2147483647i), arg_0.a.a.e.c, vec4<u32>(80158u, 7824u, 1u, 30062u)), arg_1.d.x, arg_0).a, Struct_2(arg_0.a.a.e, arg_0.a.a.b, arg_0.c, Struct_1(1u, vec2<i32>(arg_1.a.a.c.c.x, -2147483647i), arg_0.a.a.c.c, u_input.a)), Struct_4(arg_0.a.a, vec3<bool>(false, global3.x, global3.x))), arg_0.a)));
    let var_1 = _wgslsmith_f_op_f32(-1383f + arg_1.e);
    global4 = array<u32, 15>();
    return func_5(Struct_5(func_5(Struct_5(arg_0.a, arg_1.b, 41486i, vec2<bool>(false, arg_1.a.a.a.x), -1002f), vec4<u32>(_wgslsmith_mult_u32(24269u, u_input.a.x), _wgslsmith_dot_vec2_u32(arg_1.a.a.c.d.zx, vec2<u32>(3018u, 4294967295u)), 56109u, 0u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(arg_0.b)))), Struct_2(var_0.d, global3.x, arg_1.a.a.c.c.x, func_2(arg_1.e, arg_0.a.a.c, Struct_2(var_0.d, true, arg_1.a.a.c.c.x, Struct_1(25512u, var_0.a.c.yx, vec3<i32>(0i, -1i, 29731i), vec4<u32>(var_0.a.d.x, 1u, arg_2.x, arg_2.x))), Struct_4(arg_1.a.a, arg_1.a.a.a.zzy)).d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))), var_0.d.c.x, !arg_0.a.a.a.xx, -1105f), vec4<u32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), Struct_1(63732u, -arg_1.a.a.c.c.xx, ~vec3<i32>(2147483647i, var_0.a.b.x, arg_1.a.a.c.c.x), var_0.d.d), func_2(arg_0.e, var_0.d, func_2(arg_0.a.a.d.x, Struct_1(u_input.b, arg_0.a.a.e.c.yz, vec3<i32>(48582i, 0i, arg_1.a.a.e.c.x), arg_1.a.a.e.d), Struct_2(Struct_1(arg_1.a.a.c.d.x, var_0.d.c.zz, arg_1.a.a.e.c, arg_1.a.a.c.d), false, -19209i, Struct_1(arg_1.a.a.c.d.x, vec2<i32>(-18825i, -2147483647i), vec3<i32>(46532i, arg_0.a.a.e.b.x, arg_1.c), u_input.a)), Struct_4(Struct_3(vec4<bool>(true, global3.x, global3.x, false), var_0.b, arg_1.a.a.e, vec2<f32>(arg_1.e, arg_0.e), var_0.a), vec3<bool>(arg_1.d.x, var_0.b, arg_1.d.x))), arg_0.a), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a.c.d.x, 21677u, 1u), vec3<u32>(11176u, 1u, 34751u)), ~462u), 17u)]).d.a, var_0.a.d.x, u_input.b, 13768u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_1) + arg_1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(min(arg_1.b.x, 1702f)))), arg_1.a.a.d.x, _wgslsmith_div_f32(-466f, 1f)) + _wgslsmith_f_op_vec4_f32(-arg_0.b)), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(func_5(arg_0, arg_1.a.a.e.d, arg_0.b, Struct_2(Struct_1(var_0.d.d.x, vec2<i32>(arg_0.c, -1i), vec3<i32>(arg_0.a.a.e.b.x, var_0.d.c.x, 1i), vec4<u32>(global4[_wgslsmith_index_u32(5027u, 15u)], 1u, 1u, 4294967295u)), var_0.b, arg_0.c, Struct_1(29053u, vec2<i32>(var_0.c, 52552i), vec3<i32>(arg_1.a.a.c.b.x, var_0.c, arg_0.a.a.c.b.x), vec4<u32>(1u, 0u, 2717u, arg_0.a.a.c.d.x)))).a.d.x)))), func_5(arg_0, vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(14140u, var_0.d.d.x), u_input.b, u_input.a.x), arg_0.b, Struct_2(arg_0.a.a.e, true, -14317i, func_5(Struct_5(Struct_4(Struct_3(vec4<bool>(global3.x, true, arg_1.a.b.x, var_0.b), var_0.b, Struct_1(10958u, vec2<i32>(2147483647i, -675i), vec3<i32>(arg_0.c, 32010i, 0i), vec4<u32>(arg_2.x, arg_0.a.a.e.d.x, arg_2.x, 124101u)), vec2<f32>(arg_0.e, -407f), arg_1.a.a.e), vec3<bool>(false, var_0.b, false)), arg_1.b, 2147483647i, vec2<bool>(true, false), arg_0.e), u_input.a, arg_1.b, Struct_2(Struct_1(25619u, var_0.a.c.xx, arg_0.a.a.c.c, arg_2), global3.x, 0i, var_0.a)).a.c)).a.c, Struct_2(Struct_1(35736u, ~vec2<i32>(arg_1.c, 29209i), vec3<i32>(arg_1.a.a.e.c.x, 73540i, -37833i), _wgslsmith_mult_vec4_u32(vec4<u32>(9667u, 26804u, 28896u, var_0.a.d.x), vec4<u32>(arg_2.x, 12008u, 4294967295u, global4[_wgslsmith_index_u32(0u, 15u)]))), true, var_0.c, func_2(-599f, Struct_1(arg_2.x, arg_1.a.a.c.c.xy, vec3<i32>(2147483647i, arg_1.a.a.c.b.x, arg_0.c), vec4<u32>(global4[_wgslsmith_index_u32(74583u, 15u)], 9123u, 1u, u_input.a.x)), Struct_2(Struct_1(23584u, arg_1.a.a.c.c.zx, arg_0.a.a.c.c, vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], 23205u, 0u, 0u)), arg_1.d.x, var_0.c, arg_1.a.a.e), func_5(arg_0, vec4<u32>(1u, u_input.a.x, 0u, 3652u), arg_1.b, Struct_2(Struct_1(arg_0.a.a.e.a, vec2<i32>(1i, 9657i), vec3<i32>(2147483647i, 1i, arg_1.c), var_0.d.d), false, arg_0.a.a.c.c.x, arg_1.a.a.c))).a), Struct_4(arg_0.a.a, vec3<bool>(!var_0.b, false, any(vec2<bool>(arg_0.a.b.x, false)))))).a.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_3 {
    global1 = array<vec3<bool>, 29>();
    let var_0 = func_6(Struct_5(func_5(Struct_5(Struct_4(Struct_3(vec4<bool>(arg_0.b, true, false, global3.x), global3.x, arg_0.a, vec2<f32>(-961f, -1201f), Struct_1(arg_1.x, vec2<i32>(arg_0.d.c.x, arg_0.d.b.x), vec3<i32>(arg_0.d.c.x, arg_0.c, arg_0.a.b.x), arg_1)), vec3<bool>(global3.x, arg_0.b, arg_0.b)), vec4<f32>(-249f, -1311f, 1112f, 275f), arg_0.c ^ arg_0.c, select(vec2<bool>(false, arg_0.b), vec2<bool>(true, arg_0.b), global3.x), _wgslsmith_f_op_f32(sign(567f))), arg_1 & _wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(9082u, 15u)], 36130u, 4294967295u, u_input.a.x), arg_0.a.d), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(ceil(-1564f)), -1639f, 1384f), func_4(func_2(919f, arg_0.a, Struct_2(arg_0.a, arg_0.b, arg_0.d.c.x, Struct_1(0u, vec2<i32>(-1i, -1i), arg_0.a.c, vec4<u32>(1u, 0u, 6040u, 0u))), Struct_4(Struct_3(vec4<bool>(false, arg_0.b, false, global3.x), false, arg_0.d, vec2<f32>(985f, -396f), arg_0.d), vec3<bool>(false, false, arg_0.b))), func_2(-1000f, Struct_1(57196u, vec2<i32>(38266i, 0i), vec3<i32>(arg_0.c, arg_0.a.c.x, -2147483647i), arg_1), arg_0, global2[_wgslsmith_index_u32(u_input.b, 17u)]).a, arg_0.b, Struct_5(global2[_wgslsmith_index_u32(arg_0.a.a, 17u)], vec4<f32>(-1745f, -758f, -413f, 1424f), 25457i, vec2<bool>(false, arg_0.b), 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(923f, -274f, -1883f, 1196f) * vec4<f32>(-198f, 675f, 618f, 249f)))), arg_0.a.b.x, global3.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(677f, 767f, true)), 245f, select(true, global3.x, global3.x))))), Struct_5(global2[_wgslsmith_index_u32(arg_0.d.a, 17u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(117f, 1000f, -322f, 340f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(767f, 106f, -1247f, -576f) - vec4<f32>(-1606f, 694f, 359f, -389f)), vec4<f32>(1718f, -456f, -648f, -1605f)))), arg_0.a.c.x, !global3.wy, -436f), ~arg_0.a.d);
    global1 = array<vec3<bool>, 29>();
    global1 = array<vec3<bool>, 29>();
    let var_1 = var_0.c;
    return global0[_wgslsmith_index_u32(1u ^ arg_1.x, 15u)];
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1959f), _wgslsmith_f_op_f32(func_5(Struct_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.e.d, vec4<u32>(4294967295u, arg_0.d.x, 1260u, arg_0.a)), 17u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -784f, arg_1.d.x, -1537f)), 49819i & arg_0.c.x, global3.yx, _wgslsmith_f_op_f32(1211f - -162f)), ~vec4<u32>(arg_1.c.d.x, u_input.b, 19362u, u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-356f, arg_1.d.x, arg_1.d.x, -2088f), vec4<f32>(arg_1.d.x, -1289f, arg_1.d.x, 967f))), vec4<f32>(1258f, -1000f, arg_1.d.x, -355f)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1222f), Struct_1(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], vec2<i32>(arg_0.b.x, -2147483647i), arg_0.c, arg_0.d), Struct_2(Struct_1(1u, arg_0.c.xz, vec3<i32>(-10380i, 15330i, arg_1.c.b.x), arg_1.e.d), global3.x, arg_0.b.x, Struct_1(1u, vec2<i32>(arg_0.c.x, arg_0.b.x), arg_1.c.c, vec4<u32>(0u, u_input.b, 69959u, 4294967295u))), Struct_4(Struct_3(vec4<bool>(false, true, false, true), true, arg_0, vec2<f32>(arg_1.d.x, arg_1.d.x), Struct_1(25720u, vec2<i32>(arg_0.b.x, arg_1.c.c.x), arg_1.e.c, vec4<u32>(43882u, u_input.a.x, u_input.b, 4294967295u))), global3.wyy))).a.d.x + _wgslsmith_div_f32(arg_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-348f + arg_1.d.x), _wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-750f, arg_1.d.x, false)))) - arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(func_5(Struct_5(Struct_4(Struct_3(vec4<bool>(global3.x, arg_1.a.x, global3.x, arg_1.a.x), global3.x, Struct_1(40201u, arg_0.b, vec3<i32>(arg_0.b.x, -1664i, arg_1.c.c.x), vec4<u32>(2829u, u_input.a.x, global4[_wgslsmith_index_u32(35176u, 15u)], 1u)), arg_1.d, Struct_1(4294967295u, arg_0.b, arg_1.c.c, vec4<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 15u)], 15u)], 4294967295u, 21683u))), vec3<bool>(arg_1.a.x, false, arg_1.a.x)), vec4<f32>(arg_1.d.x, 604f, arg_1.d.x, arg_1.d.x), arg_1.c.c.x, arg_1.a.zw, arg_1.d.x), u_input.a, vec4<f32>(1000f, 191f, arg_1.d.x, -1944f), func_4(Struct_2(arg_1.c, true, 26106i, arg_0), arg_0, true, Struct_5(global2[_wgslsmith_index_u32(48433u, 17u)], vec4<f32>(-1000f, arg_1.d.x, 656f, -601f), arg_1.e.c.x, arg_1.a.zy, -312f))).a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.d.x)), _wgslsmith_div_f32(arg_1.d.x, -458f)))) * 677f));
    let var_1 = min(-reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(65257i, arg_0.c.x, arg_1.c.c.x, 2147483647i) | vec4<i32>(18797i, arg_1.e.b.x, -20376i, arg_0.c.x), vec4<i32>(49954i, arg_0.b.x, arg_0.c.x, -45436i) >> (arg_1.c.d % vec4<u32>(32u)))), vec4<i32>(-1i) * -vec4<i32>(arg_1.e.b.x, reverseBits(arg_1.e.c.x), _wgslsmith_add_i32(7095i, arg_1.c.c.x), arg_0.b.x));
    global4 = array<u32, 15>();
    global1 = array<vec3<bool>, 29>();
    global0 = array<Struct_3, 15>();
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u ^ ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 39327u), 15u)], 15u)], 15u)];
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.e.c.x, var_0.e.c.x, -2147483647i ^ var_0.e.b.x, var_0.e.c.x), abs(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.c.b.x, var_0.e.b.x, -2147483647i), vec4<i32>(var_0.c.b.x, 1i, 2147483647i, var_0.e.c.x)), vec4<i32>(-2147483647i, -5068i, select(-18280i, -29997i, global3.x), -1i))));
    global4 = array<u32, 15>();
    var_0 = global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(37486u, 15u)], 15u)];
    global3 = vec4<bool>(!(_wgslsmith_div_i32(-22932i, firstTrailingBit(30237i)) > 1i), true, -606f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x)))), ~func_7(Struct_1(1u, vec2<i32>(1i, 27748i), var_0.e.c, vec4<u32>(56747u, global4[_wgslsmith_index_u32(u_input.a.x, 15u)], var_0.e.a, 98538u)), func_1(Struct_2(Struct_1(u_input.a.x, var_0.e.c.xy, var_0.e.c, vec4<u32>(global4[_wgslsmith_index_u32(var_0.e.d.x, 15u)], 38452u, 3369u, var_0.c.a)), var_0.a.x, 2147483647i, var_0.c), var_0.e.d)) < -15659i);
    let var_2 = ~(func_4(Struct_2(var_0.c, var_0.b & global3.x, var_1, var_0.c), func_1(Struct_2(Struct_1(var_0.c.d.x, vec2<i32>(var_1, var_0.e.c.x), vec3<i32>(-2147483647i, var_1, 18295i), var_0.c.d), true, var_1, var_0.c), vec4<u32>(u_input.a.x, 1u, global4[_wgslsmith_index_u32(45267u, 15u)], u_input.b) | var_0.e.d).e, func_5(Struct_5(global2[_wgslsmith_index_u32(0u, 17u)], vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), -2147483647i, vec2<bool>(global3.x, true), var_0.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a.x, var_0.e.d.x, global4[_wgslsmith_index_u32(0u, 15u)]), vec4<u32>(u_input.b, u_input.b, 53007u, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -1000f, var_0.d.x, var_0.d.x) + vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, -1310f)), func_2(718f, var_0.c, Struct_2(Struct_1(u_input.b, var_0.e.c.yy, vec3<i32>(2147483647i, var_0.c.b.x, -1i), vec4<u32>(global4[_wgslsmith_index_u32(var_0.c.a, 15u)], u_input.a.x, u_input.b, u_input.a.x)), var_0.a.x, 1i, Struct_1(var_0.c.d.x, var_0.e.c.xx, vec3<i32>(var_0.e.c.x, 0i, var_1), var_0.e.d)), global2[_wgslsmith_index_u32(u_input.a.x, 17u)])).b.x, Struct_5(Struct_4(Struct_3(var_0.a, false, Struct_1(21930u, var_0.e.b, var_0.e.c, u_input.a), var_0.d, var_0.e), vec3<bool>(true, false, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-181f, 481f, 232f, var_0.d.x) * vec4<f32>(-1055f, var_0.d.x, var_0.d.x, 668f)), var_1, !vec2<bool>(global3.x, false), -240f)).d.d.zxw | ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 21656u, var_0.c.a), vec3<u32>(1u, var_0.c.a, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

