struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 14809i;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<f32>(-161f, -1387f), Struct_2(vec3<i32>(1i, -93572i, i32(-2147483648)), Struct_1(-55308i, false)), vec4<bool>(true, true, true, true), Struct_1(-1i, true), vec3<u32>(799u, 4294967295u, 4294967295u)), Struct_3(vec2<f32>(1000f, 446f), Struct_2(vec3<i32>(55541i, 1046i, 2147483647i), Struct_1(55932i, true)), vec4<bool>(false, true, false, false), Struct_1(-1i, false), vec3<u32>(12836u, 35698u, 31079u)), Struct_3(vec2<f32>(-695f, -1140f), Struct_2(vec3<i32>(77637i, 45845i, 20630i), Struct_1(14207i, true)), vec4<bool>(false, true, true, true), Struct_1(23121i, true), vec3<u32>(1u, 60771u, 0u)), Struct_3(vec2<f32>(-691f, -791f), Struct_2(vec3<i32>(0i, 0i, 0i), Struct_1(40063i, false)), vec4<bool>(false, true, true, true), Struct_1(25117i, false), vec3<u32>(58196u, 15152u, 4294967295u)), Struct_3(vec2<f32>(457f, 1864f), Struct_2(vec3<i32>(-3165i, -1i, 32848i), Struct_1(2147483647i, false)), vec4<bool>(true, true, true, false), Struct_1(1i, true), vec3<u32>(4294967295u, 59013u, 4294967295u)), Struct_3(vec2<f32>(-1649f, 2000f), Struct_2(vec3<i32>(46993i, 2147483647i, 2147483647i), Struct_1(-35129i, false)), vec4<bool>(false, true, false, true), Struct_1(472i, true), vec3<u32>(1u, 121409u, 6861u)), Struct_3(vec2<f32>(-811f, -1574f), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 23204i), Struct_1(1i, true)), vec4<bool>(false, false, false, false), Struct_1(-13961i, true), vec3<u32>(1u, 29728u, 72475u)), Struct_3(vec2<f32>(210f, 2370f), Struct_2(vec3<i32>(-9399i, 3133i, 2147483647i), Struct_1(2147483647i, false)), vec4<bool>(true, false, false, false), Struct_1(1i, false), vec3<u32>(1u, 91402u, 0u)), Struct_3(vec2<f32>(479f, -431f), Struct_2(vec3<i32>(60360i, 0i, -44877i), Struct_1(i32(-2147483648), true)), vec4<bool>(true, true, true, false), Struct_1(1i, true), vec3<u32>(4294967295u, 81783u, 41639u)), Struct_3(vec2<f32>(-1632f, 410f), Struct_2(vec3<i32>(-1i, 2147483647i, 2147483647i), Struct_1(0i, false)), vec4<bool>(false, false, false, true), Struct_1(-35654i, false), vec3<u32>(1u, 8544u, 48013u)), Struct_3(vec2<f32>(816f, 1125f), Struct_2(vec3<i32>(-27125i, -1i, -1i), Struct_1(2147483647i, true)), vec4<bool>(false, false, false, true), Struct_1(-1i, false), vec3<u32>(72106u, 0u, 0u)), Struct_3(vec2<f32>(130f, -597f), Struct_2(vec3<i32>(1i, 14022i, 2002i), Struct_1(i32(-2147483648), true)), vec4<bool>(false, false, true, false), Struct_1(2480i, true), vec3<u32>(46177u, 40547u, 10406u)), Struct_3(vec2<f32>(-837f, -1000f), Struct_2(vec3<i32>(0i, -1i, 1i), Struct_1(1i, true)), vec4<bool>(true, true, true, false), Struct_1(0i, true), vec3<u32>(4294967295u, 1143u, 68434u)), Struct_3(vec2<f32>(300f, -751f), Struct_2(vec3<i32>(-12123i, 1i, 0i), Struct_1(i32(-2147483648), false)), vec4<bool>(true, false, true, true), Struct_1(i32(-2147483648), false), vec3<u32>(31365u, 1u, 1u)), Struct_3(vec2<f32>(-726f, 1000f), Struct_2(vec3<i32>(-46262i, -26034i, -35676i), Struct_1(-33310i, false)), vec4<bool>(true, false, false, true), Struct_1(31505i, true), vec3<u32>(6259u, 0u, 12191u)), Struct_3(vec2<f32>(-300f, 420f), Struct_2(vec3<i32>(0i, -1i, -24553i), Struct_1(17041i, true)), vec4<bool>(true, false, true, true), Struct_1(1i, true), vec3<u32>(1u, 13806u, 42062u)), Struct_3(vec2<f32>(-320f, -400f), Struct_2(vec3<i32>(-36598i, 20884i, 37652i), Struct_1(-2099i, false)), vec4<bool>(false, true, false, true), Struct_1(0i, false), vec3<u32>(1u, 10653u, 28189u)), Struct_3(vec2<f32>(-1618f, -1000f), Struct_2(vec3<i32>(1i, 2147483647i, -34689i), Struct_1(2147483647i, false)), vec4<bool>(false, true, false, false), Struct_1(-29228i, false), vec3<u32>(0u, 4294967295u, 0u)), Struct_3(vec2<f32>(340f, -1429f), Struct_2(vec3<i32>(10127i, 33723i, 0i), Struct_1(21549i, false)), vec4<bool>(true, false, true, false), Struct_1(-1i, false), vec3<u32>(76u, 0u, 0u)), Struct_3(vec2<f32>(-2500f, 261f), Struct_2(vec3<i32>(31879i, 23251i, 2147483647i), Struct_1(i32(-2147483648), false)), vec4<bool>(true, false, true, true), Struct_1(0i, false), vec3<u32>(0u, 27622u, 41748u)), Struct_3(vec2<f32>(-1000f, -594f), Struct_2(vec3<i32>(-33416i, -46650i, -1i), Struct_1(11024i, false)), vec4<bool>(true, false, true, true), Struct_1(2832i, false), vec3<u32>(16906u, 4294967295u, 0u)), Struct_3(vec2<f32>(840f, -217f), Struct_2(vec3<i32>(i32(-2147483648), -40240i, 0i), Struct_1(13306i, false)), vec4<bool>(true, true, true, false), Struct_1(-1i, false), vec3<u32>(4294967295u, 5898u, 4294967295u)), Struct_3(vec2<f32>(1237f, 2199f), Struct_2(vec3<i32>(10807i, -5252i, -9675i), Struct_1(0i, false)), vec4<bool>(false, true, true, true), Struct_1(i32(-2147483648), true), vec3<u32>(1u, 0u, 4294967295u)), Struct_3(vec2<f32>(-752f, 286f), Struct_2(vec3<i32>(28932i, -42077i, 1i), Struct_1(-30193i, true)), vec4<bool>(true, true, false, true), Struct_1(-1i, true), vec3<u32>(0u, 57600u, 1453u)), Struct_3(vec2<f32>(998f, -273f), Struct_2(vec3<i32>(0i, i32(-2147483648), -20059i), Struct_1(0i, true)), vec4<bool>(true, false, false, true), Struct_1(59982i, true), vec3<u32>(91u, 4294967295u, 30971u)), Struct_3(vec2<f32>(-903f, 2680f), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 35188i), Struct_1(-43788i, true)), vec4<bool>(false, true, false, false), Struct_1(i32(-2147483648), true), vec3<u32>(47155u, 4294967295u, 0u)), Struct_3(vec2<f32>(-1000f, 1743f), Struct_2(vec3<i32>(1i, 0i, 3932i), Struct_1(-36198i, true)), vec4<bool>(false, false, false, false), Struct_1(-33623i, false), vec3<u32>(33224u, 10160u, 1327u)), Struct_3(vec2<f32>(866f, 176f), Struct_2(vec3<i32>(-2296i, -18615i, -11827i), Struct_1(-17609i, false)), vec4<bool>(true, true, true, true), Struct_1(-1i, false), vec3<u32>(4294967295u, 64132u, 4294967295u)), Struct_3(vec2<f32>(-1360f, -924f), Struct_2(vec3<i32>(i32(-2147483648), 22218i, -11023i), Struct_1(7469i, true)), vec4<bool>(true, true, false, true), Struct_1(0i, false), vec3<u32>(55536u, 77393u, 4294967295u)), Struct_3(vec2<f32>(-2360f, 522f), Struct_2(vec3<i32>(4438i, 30448i, -32157i), Struct_1(0i, false)), vec4<bool>(true, true, true, false), Struct_1(25953i, false), vec3<u32>(21566u, 4294967295u, 4294967295u)), Struct_3(vec2<f32>(-267f, -1056f), Struct_2(vec3<i32>(1i, 1i, 1i), Struct_1(6890i, true)), vec4<bool>(false, false, true, false), Struct_1(18370i, false), vec3<u32>(0u, 7110u, 42851u)));

var<private> global2: vec4<i32> = vec4<i32>(-18155i, -10368i, 1i, -41320i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_4(-vec4<i32>(max(i32(-1i) * -37442i, 39249i), 1i, arg_2.d.a, -(~arg_2.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2.a.x)), _wgslsmith_f_op_f32(min(523f, arg_2.a.x))))))), global2.x);
    return !select(select(select(arg_2.c, select(arg_2.c, arg_2.c, arg_2.b.b.b), true), arg_2.c, arg_2.c), select(vec4<bool>(select(arg_1.x, arg_0, true), arg_0, true, arg_2.b.b.b), select(!arg_2.c, vec4<bool>(true, false, arg_2.c.x, false), arg_2.c), false), arg_2.c);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1294f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -605f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(2655f, -573f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1027f)))))), Struct_2(global2.wyz, Struct_1(~1i << (~u_input.d.x % 32u), any(vec4<bool>(true, true, true, true)))), !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), func_3(true, vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(u_input.d.x, 31u)], u_input.d.xy))), Struct_1(abs(u_input.a), true & all(vec3<bool>(true, false, true))), ~vec3<u32>(firstTrailingBit(u_input.d.x) >> (u_input.b.x % 32u), u_input.d.x, 42542u));
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(1076f, var_0.a.x))))), var_0.a)), var_0.b, vec4<bool>(true, false, true, var_0.d.b), Struct_1(var_0.b.a.x, select(true, false, _wgslsmith_sub_i32(-15455i, u_input.a) < 1i)), ~(~_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.b.zyy), ~u_input.d)));
    return Struct_1(-54006i >> (~4294967295u % 32u), !var_0.d.b & select(var_0.c.x, all(select(vec2<bool>(var_0.d.b, false), var_0.c.wx, false)), var_0.b.b.b));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    global2 = ~(-reverseBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_1.a, 32915i, arg_2.d.a), vec4<i32>(arg_1.a, u_input.c, -2147483647i, arg_1.a)))));
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = firstTrailingBit(vec2<i32>(-2147483647i, reverseBits(1i)));
    let var_1 = Struct_5(_wgslsmith_div_i32(_wgslsmith_sub_i32(13862i, arg_0.c), u_input.a ^ ~arg_0.c) != 32793i);
    global0 = max(-reverseBits(select(~9063i, 0i, true)), 11998i);
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.d, ~u_input.d), ~_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(0u), ~u_input.b.x, 1u), abs(u_input.b.xxx << (vec3<u32>(u_input.d.x, 1u, 1u) % vec3<u32>(32u)))), select(u_input.d, u_input.b.zzy, any(select(select(arg_1, vec3<bool>(false, arg_1.x, false), var_1.a), arg_1, func_3(true, arg_1, Struct_3(arg_3.xz, Struct_2(arg_2.a, arg_2.b), vec4<bool>(arg_2.b.b, false, false, var_1.a), Struct_1(arg_2.a.x, arg_1.x), u_input.b.zxy), vec2<u32>(u_input.d.x, 4294967295u)).wyy))));
    global1 = array<Struct_3, 31>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global2.x, u_input.a), ~2147483647i, u_input.a, -18616i), vec4<i32>(u_input.c, ~global2.x, ~u_input.a, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(272f - -1106f) + 1361f) + -125f), -36213i >> (u_input.b.x % 32u)), !vec3<bool>(true, true, -u_input.c != 1i), Struct_2(~_wgslsmith_add_vec3_i32(global2.zzx, _wgslsmith_div_vec3_i32(global2.zww, vec3<i32>(u_input.a, global2.x, 0i))), func_1((6445u & u_input.b.x) << (u_input.b.x % 32u), Struct_1(_wgslsmith_dot_vec3_i32(global2.xxx, vec3<i32>(-61441i, 2147483647i, u_input.c)), all(vec3<bool>(true, false, false))), global1[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-329f, -710f, 464f), vec3<f32>(421f, -559f, 462f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-721f, 1000f, 1089f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(479f, -1712f, 401f)))))));
    var var_1 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(774f * 2043f) - -214f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-174f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1867f, 1390f, var_0.b.b)))), 1567f)));
    var_1 = ~var_0.a;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(-107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-930f, 835f) + -1808f) - _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-403f * var_2.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1257f, var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1014f, -336f))))))));
    var_0 = func_4(Struct_4(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_1.x, -1i), ~vec4<i32>(global2.x, -1936i, var_1.x, -20463i))), _wgslsmith_f_op_f32(var_3.x * 257f), u_input.c), vec3<bool>(select(select(any(vec2<bool>(var_0.b.b, var_0.b.b)), any(vec3<bool>(false, var_0.b.b, false)), false && var_0.b.b), true, any(select(vec2<bool>(true, var_0.b.b), vec2<bool>(false, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) >= 1679f, ~countOneBits(-52058i) < _wgslsmith_add_i32(_wgslsmith_add_i32(34127i, var_1.x), 17044i | var_0.a.x)), Struct_2(_wgslsmith_div_vec3_i32(~global2.wzy, firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 1i, -1i), vec3<i32>(-7654i, -2147483647i, global2.x)))), Struct_1(firstTrailingBit(u_input.a), func_1(u_input.b.x, var_0.b, global1[_wgslsmith_index_u32(1u, 31u)]).b & var_0.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_3.x, var_3.x))))))));
    let var_4 = Struct_4(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, var_1.x, 47783i, u_input.a), ~vec4<i32>(u_input.a, var_0.b.a, -39150i, var_1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -21578i, var_0.b.a, 9085i) & vec4<i32>(global2.x, 2147483647i, 29400i, var_1.x), -vec4<i32>(u_input.a, 2865i, var_1.x, var_0.b.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_2.x))), 275f))), global2.x | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, var_0.b.a, global2.x) >> (u_input.b % vec4<u32>(32u)), ~vec4<i32>(global2.x, -24682i, global2.x, var_1.x)), -1i));
    var var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<i32>(~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, global2.x, var_1.x), vec3<i32>(1i, 0i, 0i)), -2147483647i)), countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.d.x, u_input.b.x), u_input.d))));
}

