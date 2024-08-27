struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(-10285i, -11800i, 9024i, 2147483647i), vec4<u32>(0u, 4294967295u, 42890u, 83269u), false, vec2<f32>(-1000f, -1000f), 794f), Struct_1(vec4<i32>(7587i, 2147483647i, -1i, -8989i), vec4<u32>(1u, 0u, 74879u, 40188u), true, vec2<f32>(1074f, -1583f), -642f), Struct_1(vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i), vec4<u32>(4294967295u, 0u, 0u, 13470u), true, vec2<f32>(1892f, -1000f), -199f), Struct_1(vec4<i32>(14327i, 603i, 11990i, 1i), vec4<u32>(14354u, 1u, 1u, 4294967295u), false, vec2<f32>(-864f, -1000f), 267f), Struct_1(vec4<i32>(-1i, -1i, 62242i, -31945i), vec4<u32>(1u, 4294967295u, 18091u, 50054u), true, vec2<f32>(826f, -931f), 1770f), Struct_1(vec4<i32>(-23856i, 34461i, i32(-2147483648), 1i), vec4<u32>(10978u, 0u, 64119u, 4294967295u), false, vec2<f32>(-1389f, 241f), 263f), Struct_1(vec4<i32>(0i, -1i, -19855i, 31220i), vec4<u32>(0u, 1u, 113171u, 4294967295u), true, vec2<f32>(-940f, 1360f), -609f), Struct_1(vec4<i32>(5042i, -32368i, 36416i, 1i), vec4<u32>(0u, 4294967295u, 1u, 10503u), true, vec2<f32>(-355f, -836f), 699f), Struct_1(vec4<i32>(i32(-2147483648), 34266i, 2147483647i, -1i), vec4<u32>(66106u, 0u, 18587u, 12389u), true, vec2<f32>(-114f, 1000f), -568f), Struct_1(vec4<i32>(-17475i, 2147483647i, 0i, 2147483647i), vec4<u32>(1908u, 0u, 15050u, 1u), false, vec2<f32>(445f, 993f), -444f), Struct_1(vec4<i32>(2147483647i, -1i, 0i, i32(-2147483648)), vec4<u32>(13940u, 18696u, 4294967295u, 0u), true, vec2<f32>(140f, -535f), 1236f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 8540i, -16857i), vec4<u32>(0u, 25930u, 22649u, 11403u), false, vec2<f32>(175f, -885f), -160f), Struct_1(vec4<i32>(10148i, 30630i, 1i, 2147483647i), vec4<u32>(24811u, 1u, 0u, 74028u), true, vec2<f32>(428f, -293f), -153f), Struct_1(vec4<i32>(20348i, i32(-2147483648), 2147483647i, 5173i), vec4<u32>(0u, 1u, 1u, 8188u), false, vec2<f32>(-1464f, -2059f), -1248f), Struct_1(vec4<i32>(18849i, 6200i, 1i, 16797i), vec4<u32>(7797u, 44158u, 62766u, 0u), true, vec2<f32>(1818f, -243f), 770f), Struct_1(vec4<i32>(2147483647i, 26106i, -8647i, 42691i), vec4<u32>(1u, 4294967295u, 7109u, 12317u), false, vec2<f32>(-770f, -573f), -387f), Struct_1(vec4<i32>(-38626i, 49367i, -11101i, -1i), vec4<u32>(0u, 4294967295u, 4138u, 5878u), true, vec2<f32>(-122f, -1000f), -1120f), Struct_1(vec4<i32>(20070i, 1i, 0i, 0i), vec4<u32>(1u, 18534u, 4294967295u, 4294967295u), true, vec2<f32>(505f, 712f), 154f), Struct_1(vec4<i32>(i32(-2147483648), 54306i, 11058i, 1i), vec4<u32>(0u, 0u, 4294967295u, 0u), false, vec2<f32>(549f, -1622f), 279f), Struct_1(vec4<i32>(-4061i, i32(-2147483648), 2147483647i, -3436i), vec4<u32>(9030u, 29014u, 2675u, 7803u), true, vec2<f32>(-1530f, 878f), -1664f), Struct_1(vec4<i32>(i32(-2147483648), 47979i, 1i, 0i), vec4<u32>(17843u, 4294967295u, 0u, 1u), false, vec2<f32>(1000f, 1713f), -479f), Struct_1(vec4<i32>(-1571i, 0i, i32(-2147483648), 20836i), vec4<u32>(19358u, 1u, 0u, 21894u), true, vec2<f32>(-828f, -636f), -1581f), Struct_1(vec4<i32>(1i, 1i, 1i, 5632i), vec4<u32>(79894u, 10988u, 1u, 0u), false, vec2<f32>(570f, 849f), -136f), Struct_1(vec4<i32>(-32966i, 0i, i32(-2147483648), -40812i), vec4<u32>(25097u, 4294967295u, 62659u, 36290u), false, vec2<f32>(-432f, 133f), 305f), Struct_1(vec4<i32>(-15179i, -25524i, 3796i, 0i), vec4<u32>(18080u, 12708u, 0u, 55494u), true, vec2<f32>(-223f, -242f), 126f));

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1467f, 1000f, 1820f), vec3<f32>(1869f, -812f, -839f), vec3<f32>(1000f, -374f, -988f), vec3<f32>(-1224f, 623f, 188f), vec3<f32>(1470f, -152f, 536f), vec3<f32>(-1549f, 1913f, 549f), vec3<f32>(677f, -1766f, 403f), vec3<f32>(404f, -1884f, -197f), vec3<f32>(1369f, 304f, 940f), vec3<f32>(760f, 293f, -1479f), vec3<f32>(139f, 597f, -257f));

var<private> global2: f32;

var<private> global3: Struct_5 = Struct_5(false);

var<private> global4: array<f32, 23> = array<f32, 23>(-1588f, -152f, 1160f, 318f, 1268f, -388f, -1000f, -672f, -772f, 202f, 554f, -1515f, 274f, -771f, 508f, -541f, 110f, -760f, -263f, 2211f, -473f, -914f, -1454f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    var var_0 = -218f;
    var var_1 = Struct_3(Struct_2(Struct_1((vec4<i32>(17311i, 0i, 1i, 2147483647i) >> (vec4<u32>(0u, u_input.a, u_input.b.x, 105259u) % vec4<u32>(32u))) >> (~vec4<u32>(17107u, u_input.b.x, 37693u, 0u) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, 1u, u_input.b.x), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -860f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 23u)] + arg_0.x) + -1471f))));
    global4 = array<f32, 23>();
    global4 = array<f32, 23>();
    let var_2 = vec4<f32>(arg_0.x, global4[_wgslsmith_index_u32(~abs(~abs(4294967295u)), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_1.a.a.d.x) * _wgslsmith_f_op_f32(-2091f - var_1.a.a.e)))) - -199f), _wgslsmith_f_op_f32(trunc(arg_0.x)));
    return ~42716u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_2) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(global1[_wgslsmith_index_u32(1u, 11u)], global3.a), 11u)];
    var var_1 = -2150f;
    var var_2 = -1239f;
    global3 = Struct_5(false);
    var var_3 = arg_1;
    return _wgslsmith_clamp_u32(0u, (_wgslsmith_add_u32(var_3.a.b.x, 61045u) ^ var_3.a.b.x) ^ arg_1.b.a.a.b.x, ~arg_1.b.a.a.b.x) & ~abs((var_3.e.x & 21399u) & _wgslsmith_sub_u32(arg_2.a.b.x, u_input.b.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = ~select(abs(countOneBits(1i)), _wgslsmith_sub_i32(-2147483647i, -2147483647i), (global3.a | false) | !global3.a);
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_div_i32(-71070i, 2147483647i)), _wgslsmith_mod_i32(countOneBits(-6007i), 0i >> (u_input.b.x % 32u)), -7944i >> (1u % 32u), -(~2147483647i)), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-14683i, 2737i, 2147483647i), vec3<i32>(-1i, 2147483647i, 42637i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(8058i, 1i), 1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, -1i, 14995i), vec4<i32>(3556i, 16591i, -2147483647i, -12069i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(12965i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-18879i, 2147483647i, 2147483647i, 5995i), vec4<i32>(30207i, -2147483647i, 20837i, 1i)), reverseBits(2147483647i)))), vec4<i32>(86279i, 0i, reverseBits(countOneBits(-1i)), _wgslsmith_sub_i32(abs(79308i), -32999i)), -vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(15866i, 2147483647i, -2147483647i), vec3<i32>(2147483647i, 78343i, -1i))), 1i, -countOneBits(36183i), max(-18329i, -2147483647i) >> (reverseBits(u_input.a) % 32u)));
    var var_2 = 1630f;
    var var_3 = _wgslsmith_mod_vec3_u32(arg_3.wwx, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~arg_3.x, _wgslsmith_dot_vec3_u32(arg_3.xxx, vec3<u32>(arg_1, 35043u, u_input.a))), arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1, arg_0.x, arg_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_3.x, u_input.b.x), arg_3))), abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(74434u, 1u, 40470u), arg_3.wyy))));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(~19644u, ~10104u), 4294967295u), 23u)])), 475f));
    return Struct_4(Struct_1(vec4<i32>(-2147483647i & -var_1.x, var_1.x, -17173i, -_wgslsmith_dot_vec3_i32(var_1.wxy, vec3<i32>(var_1.x, 46383i, 2147483647i))), ~(~(vec4<u32>(4294967295u, 1u, 67171u, var_3.x) & arg_3)), arg_2.x | any(!vec3<bool>(global3.a, global3.a, arg_2.x)), vec2<f32>(-451f, global4[_wgslsmith_index_u32(~var_3.x | 4294967295u, 23u)]), global4[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_u32(arg_0.x, 1u, arg_0.x))), 23u)]), Struct_3(Struct_2(global0[_wgslsmith_index_u32(~44595u, 25u)])), Struct_3(Struct_2(global0[_wgslsmith_index_u32(89807u, 25u)])), var_4, arg_3);
}

fn func_1() -> Struct_4 {
    global1 = array<vec3<f32>, 11>();
    global1 = array<vec3<f32>, 11>();
    var var_0 = ~select(~_wgslsmith_mod_u32(abs(4294967295u), 9245u), 1u, false);
    var var_1 = ~2147483647i | _wgslsmith_mod_i32(33613i << (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 1u)) % 32u), ~min(~(-13349i), _wgslsmith_mult_i32(-2147483647i, 0i)));
    var var_2 = abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~_wgslsmith_mod_u32(73618u, u_input.a)), u_input.b.x));
    return func_4(u_input.b, abs(func_2(vec3<i32>(20387i, -59698i, -1i) << (vec3<u32>(0u, u_input.b.x, u_input.a) % vec3<u32>(32u)), Struct_4(Struct_1(vec4<i32>(-2147483647i, 2147483647i, -49408i, 14314i), vec4<u32>(33083u, 21706u, 25345u, 1u), global3.a, vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)]), global4[_wgslsmith_index_u32(10029u, 23u)]), Struct_3(Struct_2(Struct_1(vec4<i32>(-46203i, -1i, -67364i, -2147483647i), vec4<u32>(u_input.b.x, 4294967295u, 60791u, 1u), global3.a, vec2<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], 1000f), -325f))), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 25u)])), global4[_wgslsmith_index_u32(u_input.b.x, 23u)], vec4<u32>(1u, 0u, 42659u, 7378u)), Struct_2(Struct_1(vec4<i32>(-2147483647i, 2147483647i, 0i, -40080i), vec4<u32>(0u, u_input.b.x, 61552u, u_input.a), global3.a, vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 23u)], -1159f), 1000f))) << (func_3(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)], -221f), global3.a) % 32u)), select(select(!vec3<bool>(global3.a, false, true), vec3<bool>(true, false, global3.a), !global3.a), vec3<bool>(true, _wgslsmith_f_op_f32(-391f * global4[_wgslsmith_index_u32(28790u, 23u)]) == _wgslsmith_f_op_f32(f32(-1f) * -895f), !(1u > u_input.a)), vec3<bool>(true, true, true)), abs(firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = arg_3.a;
    let var_1 = var_0.c;
    let var_2 = ~var_0.b.x;
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_div_i32(arg_3.a.a.x, var_0.a.x), -2147483647i, arg_1.c.a.a.a.x, arg_1.c.a.a.a.x), arg_3.a.b, !var_0.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) - _wgslsmith_f_op_f32(exp2(arg_3.a.e))), _wgslsmith_f_op_f32(round(465f))), 734f);
    let var_4 = !(!all(vec3<bool>(true, true, true)));
    return Struct_4(func_1().a, Struct_3(func_1().b.a), func_1().b, -556f, _wgslsmith_add_vec4_u32(func_4(~arg_3.a.b.zy, 8905u, vec3<bool>(func_4(vec2<u32>(var_3.b.x, var_2), arg_3.a.b.x, vec3<bool>(var_3.c, true, var_0.c), arg_3.a.b).a.c, true, false), arg_1.a.b).c.a.a.b, _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, 4294967295u, var_0.b.x), ~var_0.b) | func_1().a.b));
}

fn func_6(arg_0: Struct_4) -> Struct_5 {
    global1 = array<vec3<f32>, 11>();
    global0 = array<Struct_1, 25>();
    global1 = array<vec3<f32>, 11>();
    var var_0 = arg_0;
    var var_1 = Struct_2(func_5(-320f, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(79018u, 23u)] - 418f) + -882f), func_1(), -1942f, Struct_2(func_4(vec2<u32>(u_input.a, 0u), arg_0.a.b.x, vec3<bool>(global3.a, var_0.b.a.a.c, true), var_0.e).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - -682f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.a.d.x) * -199f)), Struct_2(arg_0.a)).b.a.a);
    return Struct_5(var_0.b.a.a.a.x < countOneBits((13960i >> (1u % 32u)) | arg_0.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(~1u, u_input.a), 42981u), u_input.a, 35946u);
    global3 = func_6(func_5(global4[_wgslsmith_index_u32(~22861u, 23u)], func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1138f))), func_1().b.a));
    let var_1 = func_4(_wgslsmith_add_vec2_u32(u_input.b, u_input.b), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 43368u, u_input.b.x, 11471u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 8525u, 17309u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)))), ~min(11198u, 19470u)), !select(!select(vec3<bool>(global3.a, global3.a, false), vec3<bool>(false, global3.a, true), global3.a), vec3<bool>(true, true, !global3.a), vec3<bool>(!global3.a, all(vec3<bool>(global3.a, global3.a, global3.a)), func_1().c.a.a.c)), vec4<u32>(~u_input.a, u_input.b.x, ~(~u_input.b.x) ^ u_input.a, u_input.a)).b.a;
    var var_2 = select(u_input.b, vec2<u32>(4294967295u, ~max(105495u, 2887u)), global3.a);
    var var_3 = func_6(func_1());
    var_2 = ~var_1.a.b.wx;
    let var_4 = firstLeadingBit(var_1.a.a.zyx);
    let var_5 = var_1.a.e;
    var var_6 = select(vec3<bool>(true, all(select(!vec4<bool>(global3.a, true, var_3.a, var_3.a), select(vec4<bool>(var_1.a.c, var_3.a, global3.a, var_1.a.c), vec4<bool>(var_1.a.c, global3.a, false, true), var_1.a.c), select(vec4<bool>(var_1.a.c, true, true, global3.a), vec4<bool>(true, false, var_1.a.c, var_1.a.c), false))), func_1().a.c), vec3<bool>(true, var_3.a, false && func_5(_wgslsmith_div_f32(-1695f, global4[_wgslsmith_index_u32(1u, 23u)]), Struct_4(global0[_wgslsmith_index_u32(u_input.a, 25u)], Struct_3(Struct_2(var_1.a)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(var_1.a.b.x, 25u)])), var_1.a.e, vec4<u32>(var_2.x, u_input.b.x, var_1.a.b.x, 24405u)), _wgslsmith_div_f32(var_5, 325f), func_5(var_5, Struct_4(Struct_1(vec4<i32>(-28757i, var_4.x, var_4.x, var_4.x), vec4<u32>(36304u, u_input.a, var_2.x, u_input.b.x), false, var_1.a.d, global4[_wgslsmith_index_u32(var_2.x, 23u)]), Struct_3(var_1), Struct_3(Struct_2(Struct_1(var_1.a.a, var_1.a.b, global3.a, vec2<f32>(-1338f, var_1.a.d.x), var_1.a.d.x))), 717f, vec4<u32>(var_1.a.b.x, u_input.a, u_input.b.x, 1u)), -167f, var_1).b.a).c.a.a.c), var_1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

