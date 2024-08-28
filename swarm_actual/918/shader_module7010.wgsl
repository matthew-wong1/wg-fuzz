struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1514f), Struct_1(217f), Struct_1(1236f), Struct_1(842f), Struct_1(-994f), Struct_1(-301f), Struct_1(831f), Struct_1(1253f), Struct_1(653f), Struct_1(830f), Struct_1(-101f), Struct_1(254f));

var<private> global1: vec3<u32> = vec3<u32>(1156u, 0u, 9787u);

var<private> global2: f32 = -1054f;

var<private> global3: Struct_2 = Struct_2(vec3<i32>(408i, -1i, -1i), 609f, vec3<f32>(176f, 309f, 431f), vec3<bool>(false, true, true));

var<private> global4: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-1000f, 1u, Struct_2(vec3<i32>(0i, i32(-2147483648), -1i), -1702f, vec3<f32>(563f, -362f, 1100f), vec3<bool>(true, false, false)), -2440f), Struct_4(-1294f, 54714u, Struct_2(vec3<i32>(-9437i, 4628i, -46254i), 576f, vec3<f32>(341f, -430f, -161f), vec3<bool>(false, false, false)), -1589f), Struct_4(366f, 4294967295u, Struct_2(vec3<i32>(-1i, 2147483647i, 8018i), -632f, vec3<f32>(338f, -285f, 1038f), vec3<bool>(false, false, false)), -457f), Struct_4(-1225f, 1u, Struct_2(vec3<i32>(-1i, -4643i, -31326i), 549f, vec3<f32>(877f, -227f, -346f), vec3<bool>(true, false, false)), -2148f), Struct_4(-1233f, 4294967295u, Struct_2(vec3<i32>(-56982i, -1i, i32(-2147483648)), 1707f, vec3<f32>(-834f, 640f, 745f), vec3<bool>(false, false, true)), 1565f), Struct_4(-1306f, 59351u, Struct_2(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), -1150f, vec3<f32>(441f, 1668f, 1534f), vec3<bool>(true, true, false)), -1571f), Struct_4(-390f, 367u, Struct_2(vec3<i32>(19509i, i32(-2147483648), i32(-2147483648)), -737f, vec3<f32>(-226f, -1492f, 436f), vec3<bool>(true, false, false)), 878f), Struct_4(-1078f, 37881u, Struct_2(vec3<i32>(1i, -12776i, i32(-2147483648)), 330f, vec3<f32>(299f, 2069f, -417f), vec3<bool>(false, true, true)), -294f), Struct_4(462f, 100881u, Struct_2(vec3<i32>(-7142i, 1i, -1i), -750f, vec3<f32>(-1074f, 2875f, -1235f), vec3<bool>(true, false, false)), 2486f), Struct_4(1145f, 4294967295u, Struct_2(vec3<i32>(-13318i, -6413i, -3580i), 102f, vec3<f32>(141f, 734f, -636f), vec3<bool>(false, true, true)), 840f), Struct_4(-305f, 2755u, Struct_2(vec3<i32>(i32(-2147483648), -18455i, 2147483647i), -196f, vec3<f32>(567f, -1489f, -780f), vec3<bool>(false, true, true)), 1484f), Struct_4(-361f, 51646u, Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), -281f, vec3<f32>(-142f, -737f, -564f), vec3<bool>(false, true, false)), 463f), Struct_4(-423f, 41277u, Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -34240i), 1345f, vec3<f32>(578f, 889f, 1945f), vec3<bool>(true, true, true)), -758f), Struct_4(1074f, 1u, Struct_2(vec3<i32>(1i, -44582i, -7981i), 150f, vec3<f32>(-286f, 1551f, -606f), vec3<bool>(false, true, true)), 1244f), Struct_4(540f, 0u, Struct_2(vec3<i32>(0i, 2147483647i, -1i), 149f, vec3<f32>(-1653f, 382f, 353f), vec3<bool>(true, true, true)), 1000f), Struct_4(-1392f, 4294967295u, Struct_2(vec3<i32>(-32168i, 1i, -3963i), -783f, vec3<f32>(665f, -1000f, 264f), vec3<bool>(true, true, false)), 1907f), Struct_4(-2454f, 106152u, Struct_2(vec3<i32>(i32(-2147483648), 44179i, 0i), -831f, vec3<f32>(488f, -936f, 954f), vec3<bool>(false, true, true)), 714f), Struct_4(-550f, 33702u, Struct_2(vec3<i32>(-1i, -24383i, -1i), -684f, vec3<f32>(-249f, -318f, -2042f), vec3<bool>(false, false, true)), 1800f), Struct_4(1229f, 48770u, Struct_2(vec3<i32>(35091i, -15415i, 19357i), 1000f, vec3<f32>(441f, 1928f, -891f), vec3<bool>(false, true, false)), -1634f), Struct_4(257f, 56730u, Struct_2(vec3<i32>(2147483647i, 1i, -41960i), 1465f, vec3<f32>(1141f, 978f, -186f), vec3<bool>(true, false, true)), -319f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<f32>) -> bool {
    var var_0 = vec3<bool>(any(global3.d), global3.d.x, true);
    var var_1 = !select(select(global3.d, global3.d, global3.d), !(!(!vec3<bool>(false, false, arg_0))), !(var_0.x != any(var_0.zx)));
    var var_2 = ~71183u;
    let var_3 = arg_0;
    global4 = array<Struct_4, 20>();
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    global2 = 1856f;
    global2 = _wgslsmith_f_op_f32(-global3.b);
    global4 = array<Struct_4, 20>();
    var var_0 = arg_0;
    let var_1 = !global3.d.x;
    return Struct_3(all(vec2<bool>(!func_3(false, global1.zy, vec4<f32>(-761f, 652f, 870f, -390f)), true)), ~20366u, Struct_1(1137f), _wgslsmith_f_op_vec3_f32(vec3<f32>(254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a, -309f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.b)), -866f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-global3.b)))));
}

fn func_4(arg_0: Struct_3) -> bool {
    global4 = array<Struct_4, 20>();
    var var_0 = ~global1.x;
    let var_1 = ~reverseBits(0i);
    global1 = vec3<u32>(62815u, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 192u, arg_0.b), 1u)), arg_0.b);
    global3 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(1i | -var_1, _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -44514i))), u_input.a.x, -2147483647i), -1000f, vec3<f32>(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f - arg_0.d.x)) + _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(arg_0.d.x * global3.c.x))), _wgslsmith_f_op_f32(-arg_0.d.x)), !(!global3.d));
    return true;
}

fn func_1() -> vec4<i32> {
    let var_0 = vec2<u32>(0u, 1557u);
    let var_1 = !any(vec2<bool>(true, true));
    global1 = ~(~(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, global1.x, u_input.b.x), u_input.d.yzy)) | (_wgslsmith_clamp_vec3_u32(u_input.c.ywx, vec3<u32>(var_0.x, 22913u, 77446u), u_input.d.wzw) >> (u_input.d.zyz % vec3<u32>(32u)))));
    let var_2 = Struct_3(all(vec2<bool>(true, func_4(func_2(global0[_wgslsmith_index_u32(26948u, 12u)])))), firstLeadingBit(~var_0.x), func_2(func_2(func_2(Struct_1(-328f)).c).c).c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)), vec3<f32>(global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1291f * -812f), 1188f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-764f)))))));
    var var_3 = 1u;
    return -vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, global3.a.x), global3.a.x), 0i, -2147483647i, _wgslsmith_div_i32(global3.a.x, u_input.a.x)) & _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.x, u_input.a.x, global3.a.x, u_input.a.x), vec4<i32>(15044i, 1i, -4749i, global3.a.x)), vec4<i32>(13367i, -2147483647i, 0i, u_input.a.x) ^ vec4<i32>(global3.a.x, global3.a.x, global3.a.x, 2147483647i)), select(vec4<i32>(global3.a.x, -64671i, 1i, global3.a.x), countOneBits(vec4<i32>(u_input.a.x, -20849i, global3.a.x, -1i)), !vec4<bool>(true, true, var_2.a, var_2.a))), -countOneBits(~vec4<i32>(global3.a.x, -10770i, u_input.a.x, -45022i)));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) + 1000f))))));
    global3 = Struct_2(arg_2.d.zzy & -abs(global3.a & vec3<i32>(1093i, -20414i, arg_2.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-607f, _wgslsmith_f_op_f32(var_0 - 1205f)) - var_0) * 695f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, _wgslsmith_div_f32(arg_2.b.x, -422f), _wgslsmith_div_f32(180f, arg_3.a))))), !vec3<bool>(any(vec4<bool>(arg_2.c.x, true, arg_3.c.d.x, arg_2.c.x)) && (false | global3.d.x), true, false));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_3.c.c.x))));
    global3 = Struct_2(select(~(~u_input.a), u_input.a << (u_input.d.wxw % vec3<u32>(32u)), any(!vec3<bool>(arg_3.c.d.x, true, arg_3.c.d.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.a, -348f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1013f, arg_0.x, arg_3.a), global3.c, vec3<bool>(true, var_1.a, arg_2.c.x)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1290f, arg_3.c.c.x, arg_2.b.x))))))), vec3<bool>(all(vec2<bool>(false, true)), global3.a.x <= -2147483647i, false & (true | (var_1.a || false))));
    var var_2 = Struct_1(393f);
    return Struct_2(global3.a, 2440f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -1112f, -873f) + vec3<f32>(-888f, global3.c.x, 1663f))))), select(!vec3<bool>(arg_2.c.x, any(vec4<bool>(arg_2.c.x, false, false, false)), true), select(select(vec3<bool>(arg_2.c.x, true, false), arg_2.c, select(arg_3.c.d, global3.d, global3.d)), arg_2.c, !vec3<bool>(true, true, arg_3.c.d.x)), arg_3.c.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(1007f, 1361f);
    let var_1 = !any(vec2<bool>(true, true));
    global3 = func_5(vec4<f32>(1063f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -148f)), _wgslsmith_f_op_f32(-1214f * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(954f, -573f) + var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), global3.c.x)), func_1(), Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, min(u_input.d.x, global1.x)), _wgslsmith_add_vec2_u32(min(global1.xy, vec2<u32>(global1.x, 96145u)), global1.zz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c) * vec3<f32>(global3.b, global3.b, global3.c.x)) + _wgslsmith_f_op_vec3_f32(ceil(global3.c))), global3.d, abs(~(-vec4<i32>(12961i, 23403i, 28984i, 1i))), -func_1().x), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -505f))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d.wwy, vec3<u32>(74629u, 0u, global1.x) << (u_input.c.zyx % vec3<u32>(32u))), ~4294967295u << (~global1.x % 32u)), Struct_2(vec3<i32>(-u_input.a.x, -51823i, _wgslsmith_dot_vec2_i32(vec2<i32>(48675i, 0i), vec2<i32>(global3.a.x, -44343i))), -399f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, -1907f, global3.b)))), select(!global3.d, vec3<bool>(true, var_1, true), vec3<bool>(true, var_1, false))), -1307f));
    global2 = -1687f;
    var var_2 = Struct_5(u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.c.x, var_0.x, var_0.x))) * vec3<f32>(var_0.x, var_0.x, global3.b)) + _wgslsmith_f_op_vec3_f32(ceil(global3.c)))), vec3<bool>(true, true, !(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3.a.x, global3.a.x, -24722i)) > (u_input.a.x ^ u_input.a.x))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~select(vec4<i32>(global3.a.x, 1i, global3.a.x, 24924i), vec4<i32>(2147483647i, -1i, 5510i, 0i), true), max(vec4<i32>(global3.a.x, u_input.a.x, global3.a.x, global3.a.x), countOneBits(vec4<i32>(u_input.a.x, global3.a.x, 33527i, 2147483647i)))), ~(select(vec4<i32>(global3.a.x, global3.a.x, u_input.a.x, u_input.a.x), vec4<i32>(34132i, -1i, -49373i, global3.a.x), var_1) & _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global3.a.x, u_input.a.x, global3.a.x), vec4<i32>(u_input.a.x, global3.a.x, -19326i, 17449i)))), countOneBits(1i));
    global3 = Struct_2(-vec3<i32>(~var_2.e & ~var_2.d.x, -_wgslsmith_sub_i32(global3.a.x, -27006i), u_input.a.x), _wgslsmith_f_op_f32(-global3.c.x), vec3<f32>(_wgslsmith_f_op_f32(-1753f - 1f), 1943f, 523f), global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global3.a.xy, var_2.d.xw), var_2.d.wx >> (vec2<u32>(u_input.b.x, u_input.d.x) % vec2<u32>(32u))), var_2.d.x << (1u % 32u)), 0i), ~u_input.c.yzz, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x << (12559u % 32u)), abs(-(vec2<i32>(0i, global3.a.x) & vec2<i32>(u_input.a.x, 2147483647i)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(49396u, var_2.a.x), global1.x), vec3<u32>(1u, 4294967295u, 4294967295u >> (global1.x % 32u))), ~(~u_input.d.xyz)), _wgslsmith_f_op_f32(-586f * -230f));
}

