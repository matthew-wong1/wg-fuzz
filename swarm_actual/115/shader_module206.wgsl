struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-38971i, 34398i, -16042i, 2147483647i);

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(0i, vec2<u32>(4294967295u, 1u), Struct_1(-796f, vec4<i32>(-45961i, 1i, 33314i, 5192i))), Struct_3(-34016i, vec2<u32>(5405u, 33659u), Struct_1(-791f, vec4<i32>(-51047i, -1i, 6215i, 24050i))), Struct_3(i32(-2147483648), vec2<u32>(1u, 4294967295u), Struct_1(1438f, vec4<i32>(-103906i, -2995i, -24323i, -24427i))), Struct_3(41082i, vec2<u32>(4294967295u, 15656u), Struct_1(1111f, vec4<i32>(2147483647i, 2147483647i, -70943i, -24208i))), Struct_3(2147483647i, vec2<u32>(48705u, 4975u), Struct_1(-837f, vec4<i32>(0i, 1i, i32(-2147483648), -62566i))), Struct_3(2147483647i, vec2<u32>(4294967295u, 0u), Struct_1(127f, vec4<i32>(36980i, 52110i, 2147483647i, -14752i))), Struct_3(2147483647i, vec2<u32>(39885u, 44033u), Struct_1(-403f, vec4<i32>(45229i, -1i, 47095i, -1i))), Struct_3(-3999i, vec2<u32>(0u, 52u), Struct_1(1130f, vec4<i32>(-3479i, i32(-2147483648), -7068i, -28521i))), Struct_3(-27769i, vec2<u32>(7904u, 4294967295u), Struct_1(1000f, vec4<i32>(15013i, 31349i, 0i, 14718i))), Struct_3(0i, vec2<u32>(4294967295u, 1u), Struct_1(-135f, vec4<i32>(-18980i, 21918i, -31211i, 29970i))), Struct_3(54735i, vec2<u32>(839u, 25714u), Struct_1(170f, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -1i))), Struct_3(11573i, vec2<u32>(0u, 1u), Struct_1(-546f, vec4<i32>(1i, -51001i, 0i, -19086i))), Struct_3(2147483647i, vec2<u32>(1u, 0u), Struct_1(-1029f, vec4<i32>(13823i, -54966i, 1i, 0i))), Struct_3(1i, vec2<u32>(55595u, 76416u), Struct_1(-1896f, vec4<i32>(14450i, 2147483647i, -18658i, -1i))), Struct_3(0i, vec2<u32>(146099u, 9904u), Struct_1(1190f, vec4<i32>(-40116i, -24158i, -2525i, -16889i))), Struct_3(47991i, vec2<u32>(13408u, 0u), Struct_1(1000f, vec4<i32>(0i, 2147483647i, 1i, -12610i))), Struct_3(i32(-2147483648), vec2<u32>(0u, 4294967295u), Struct_1(-796f, vec4<i32>(-35154i, 61248i, 8836i, -36776i))), Struct_3(-21530i, vec2<u32>(1u, 0u), Struct_1(713f, vec4<i32>(1i, 43755i, -20025i, 30081i))), Struct_3(0i, vec2<u32>(29926u, 4294967295u), Struct_1(-841f, vec4<i32>(1i, 18153i, -1i, 23558i))), Struct_3(0i, vec2<u32>(0u, 1u), Struct_1(1350f, vec4<i32>(57886i, i32(-2147483648), 21655i, 2147483647i))), Struct_3(-26551i, vec2<u32>(4294967295u, 0u), Struct_1(-1159f, vec4<i32>(0i, 13745i, 1903i, 3548i))), Struct_3(21482i, vec2<u32>(59643u, 1u), Struct_1(805f, vec4<i32>(0i, -1i, 33784i, 1i))), Struct_3(i32(-2147483648), vec2<u32>(0u, 0u), Struct_1(926f, vec4<i32>(-1079i, -1i, 1i, 35553i))), Struct_3(0i, vec2<u32>(74931u, 1u), Struct_1(1565f, vec4<i32>(-40068i, 2147483647i, 10824i, 0i))), Struct_3(63936i, vec2<u32>(63617u, 0u), Struct_1(581f, vec4<i32>(1i, 18236i, -14170i, 1i))), Struct_3(2147483647i, vec2<u32>(4294967295u, 1u), Struct_1(281f, vec4<i32>(-1i, -23008i, i32(-2147483648), 0i))), Struct_3(2147483647i, vec2<u32>(35900u, 1u), Struct_1(-870f, vec4<i32>(0i, 10300i, -56439i, 80063i))));

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(-38665i, vec2<u32>(4294967295u, 0u), Struct_1(-1334f, vec4<i32>(0i, -1i, -28675i, -11968i))), Struct_3(1i, vec2<u32>(114916u, 1u), Struct_1(-1000f, vec4<i32>(-1i, 37879i, -18659i, 2147483647i))), Struct_3(1i, vec2<u32>(4294967295u, 0u), Struct_1(-704f, vec4<i32>(58072i, -32115i, i32(-2147483648), 2147483647i))), Struct_3(-25233i, vec2<u32>(58072u, 40780u), Struct_1(-334f, vec4<i32>(-33602i, 17640i, 36933i, -1i))), Struct_3(2147483647i, vec2<u32>(59932u, 4294967295u), Struct_1(352f, vec4<i32>(0i, 21237i, 9610i, -50655i))), Struct_3(0i, vec2<u32>(20537u, 23971u), Struct_1(1000f, vec4<i32>(45284i, -1253i, i32(-2147483648), -35557i))), Struct_3(i32(-2147483648), vec2<u32>(1u, 42337u), Struct_1(833f, vec4<i32>(41083i, 2540i, 2147483647i, -33621i))), Struct_3(59272i, vec2<u32>(49109u, 1648u), Struct_1(749f, vec4<i32>(-1i, -10753i, -47544i, -28840i))), Struct_3(-912i, vec2<u32>(4294967295u, 14939u), Struct_1(-162f, vec4<i32>(2147483647i, 22208i, 12776i, 0i))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_5(Struct_2(~_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.x, u_input.c.x), ~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, -1090f, 575f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1296f, 719f, 885f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1097f, -713f, -1000f, -226f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, 1377f, -2191f, -500f))))));
    global2 = array<Struct_3, 27>();
    var var_1 = Struct_2(~(~countOneBits(_wgslsmith_div_u32(43961u, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.b + var_0.a.c.zxy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.a.b))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0.a.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a.c.x, 178f, true)))), 1000f, 1000f), var_0.a.c)));
    let var_2 = u_input.a;
    let var_3 = true;
    return -_wgslsmith_mult_i32(_wgslsmith_mod_i32(min(1i, global0.x), _wgslsmith_clamp_i32(1874i, u_input.b.x, 1i)), abs(_wgslsmith_div_i32(var_2.x, var_2.x))) != var_2.x;
}

fn func_2(arg_0: Struct_5) -> Struct_2 {
    global3 = array<Struct_3, 9>();
    let var_0 = Struct_4(select(func_3(u_input.c.x, u_input.c), false, (global0.x > u_input.b.x) && (_wgslsmith_mod_i32(u_input.d, 24436i) > 1i)));
    global3 = array<Struct_3, 9>();
    var var_1 = !vec2<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(false, var_0.a), var_0.a)), var_0.a);
    global0 = -u_input.b;
    return arg_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_5 {
    return Struct_5(func_2(Struct_5(Struct_2(~1u, vec3<f32>(-262f, arg_0.a, -972f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 1346f)))))));
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    global3 = array<Struct_3, 9>();
    let var_0 = 1i >> (arg_0.a.a % 32u);
    let var_1 = _wgslsmith_add_vec3_i32(~(u_input.a ^ _wgslsmith_mod_vec3_i32(-vec3<i32>(var_0, 1i, var_0), firstTrailingBit(global0.zyy))), _wgslsmith_sub_vec3_i32(abs(abs(countOneBits(vec3<i32>(global0.x, 0i, -2147483647i)))), select(vec3<i32>(global0.x, global0.x, u_input.a.x << (64267u % 32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-12857i, var_0, 0i, -13622i), vec4<i32>(1i, global0.x, u_input.d, -2147483647i)), var_0, _wgslsmith_mult_i32(u_input.a.x, -12163i)), vec3<bool>(true, true, true))));
    let var_2 = Struct_4((~_wgslsmith_mod_u32(u_input.c.x, arg_0.a.a) & u_input.c.x) < _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a.a, ~u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(_wgslsmith_add_u32(63049u, u_input.c.x), 77970u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(8026u, 0u, 1u), vec3<u32>(9471u, 94119u, arg_0.a.a)))));
    global0 = vec4<i32>(-1i, -(~2976i), -2802i, _wgslsmith_dot_vec3_i32(var_1, abs(-(var_1 | var_1))));
    return Struct_5(func_2(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(_wgslsmith_f_op_f32(145f + 718f), u_input.b), true));
    var var_1 = select(~(~abs(u_input.c.x)), ~(~4294967295u), !(var_0.a.b.x != _wgslsmith_f_op_f32(-func_2(Struct_5(var_0.a)).b.x)));
    var var_2 = 0i;
    let var_3 = vec4<i32>(-1i) * -(~u_input.b);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.a.b.x))) - -1749f), vec4<i32>(8492i, _wgslsmith_add_i32(u_input.b.x, -1i), select(u_input.a.x, var_3.x, all(vec3<bool>(false, true, true))) ^ 16625i, _wgslsmith_div_i32(global0.x, countOneBits(u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(func_1(var_4, true).a.b.x, 130f), 889f, ~(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, 0u, var_0.a.a), vec4<u32>(39247u, 4294967295u, var_0.a.a, u_input.c.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(37025u, u_input.c.x, 18798u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(107088u, var_0.a.a, u_input.c.x, 51555u), vec4<u32>(0u, 0u, 1u, 8902u)))));
}

