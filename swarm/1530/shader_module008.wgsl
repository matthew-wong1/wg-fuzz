struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(0u, vec3<i32>(i32(-2147483648), -2272i, 2147483647i)), 10864u, Struct_1(false, true), vec3<f32>(-244f, 1039f, -394f)), Struct_3(Struct_2(8272u, vec3<i32>(-1i, 1i, 0i)), 4294967295u, Struct_1(false, true), vec3<f32>(2094f, -859f, -947f)), Struct_3(Struct_2(63386u, vec3<i32>(0i, 15802i, 2147483647i)), 37836u, Struct_1(true, false), vec3<f32>(-786f, 133f, -621f)), Struct_3(Struct_2(1u, vec3<i32>(-60615i, -17484i, 13942i)), 35488u, Struct_1(false, false), vec3<f32>(-1000f, -701f, 1000f)), Struct_3(Struct_2(4294967295u, vec3<i32>(i32(-2147483648), 1i, 15810i)), 4294967295u, Struct_1(false, true), vec3<f32>(372f, 1320f, 1195f)), Struct_3(Struct_2(25564u, vec3<i32>(19267i, 1i, 27607i)), 4294967295u, Struct_1(true, true), vec3<f32>(-571f, 1091f, 668f)), Struct_3(Struct_2(48128u, vec3<i32>(26436i, -28135i, 1i)), 1u, Struct_1(false, false), vec3<f32>(-885f, -634f, -728f)), Struct_3(Struct_2(8744u, vec3<i32>(-1i, 2147483647i, 0i)), 1u, Struct_1(false, true), vec3<f32>(832f, 458f, 683f)), Struct_3(Struct_2(69945u, vec3<i32>(i32(-2147483648), 0i, 2147483647i)), 21878u, Struct_1(false, true), vec3<f32>(2616f, 100f, -231f)), Struct_3(Struct_2(0u, vec3<i32>(i32(-2147483648), 2147483647i, 47030i)), 0u, Struct_1(true, true), vec3<f32>(1704f, 1000f, -1530f)), Struct_3(Struct_2(18413u, vec3<i32>(-57584i, -1i, 35006i)), 14311u, Struct_1(true, false), vec3<f32>(-503f, -318f, -418f)), Struct_3(Struct_2(72918u, vec3<i32>(49690i, 2147483647i, -10764i)), 0u, Struct_1(false, true), vec3<f32>(-553f, -2845f, 994f)), Struct_3(Struct_2(15694u, vec3<i32>(-6212i, -1i, 1i)), 5594u, Struct_1(false, false), vec3<f32>(634f, 603f, 1362f)), Struct_3(Struct_2(5715u, vec3<i32>(32218i, i32(-2147483648), 8415i)), 87003u, Struct_1(false, false), vec3<f32>(728f, -860f, 394f)), Struct_3(Struct_2(49871u, vec3<i32>(i32(-2147483648), -1i, 1i)), 6259u, Struct_1(false, true), vec3<f32>(-916f, 702f, 1234f)), Struct_3(Struct_2(4294967295u, vec3<i32>(-29231i, 1i, 2147483647i)), 4294967295u, Struct_1(true, false), vec3<f32>(-1366f, 824f, 235f)), Struct_3(Struct_2(4294967295u, vec3<i32>(-5641i, -11114i, 505i)), 10364u, Struct_1(false, true), vec3<f32>(151f, 965f, 816f)), Struct_3(Struct_2(38130u, vec3<i32>(1i, 2147483647i, 2147483647i)), 41199u, Struct_1(false, false), vec3<f32>(-115f, 703f, 872f)), Struct_3(Struct_2(4294967295u, vec3<i32>(10473i, 20888i, -1i)), 5447u, Struct_1(true, true), vec3<f32>(1190f, 133f, 316f)), Struct_3(Struct_2(1u, vec3<i32>(-1i, 16538i, 199i)), 26245u, Struct_1(false, true), vec3<f32>(-923f, -139f, 1000f)));

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(0u, u_input.d.x)), _wgslsmith_dot_vec2_u32(min(u_input.d, vec2<u32>(u_input.d.x, u_input.e.x)), abs(vec2<u32>(30175u, 46475u))), _wgslsmith_clamp_u32(~u_input.d.x, 1u, u_input.d.x))), firstLeadingBit(max(global0[_wgslsmith_index_u32(~(u_input.d.x ^ 23772u), 18u)], ~global0[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x), 18u)]))), 20u)];
    global1 = array<Struct_3, 20>();
    var var_1 = !vec2<bool>(any(vec3<bool>(false, true, true)), false || any(vec2<bool>(true, false)));
    let var_2 = var_0.a;
    let var_3 = Struct_1(!any(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(false, var_1.x, false, var_1.x), var_1.x)), var_1.x);
    return u_input.d.x;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(func_3() << (u_input.e.x % 32u), 20u)], ~(~arg_2), arg_1, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f), _wgslsmith_f_op_f32(f32(-1f) * -1707f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(743f)) * -1758f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1696f))))))));
    let var_2 = vec4<bool>(!arg_1.a, true, !all(vec2<bool>(var_1.c.a, arg_3 && false)), arg_3);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * var_1.d.x);
    global1 = array<Struct_3, 20>();
    return var_1.c;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_3 {
    global2 = array<Struct_2, 20>();
    let var_0 = func_2(any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))), Struct_1(!(!any(vec3<bool>(false, false, false))), _wgslsmith_mod_u32(~1u, u_input.e.x) >= 0u), arg_2.x, ~(~0i) == select(-13995i, max(0i, u_input.c) | -u_input.c, all(vec3<bool>(true, true, true))));
    var var_1 = u_input.b.yzx;
    global1 = array<Struct_3, 20>();
    global0 = array<vec3<u32>, 18>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.xx, arg_1.yy), 20u)];
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_0.c;
    var var_1 = !(1i != countOneBits(select(u_input.a, 29513i, true)));
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.b.xx), vec2<i32>(countOneBits(-arg_0.a.b.x) | -firstLeadingBit(arg_0.a.b.x), -u_input.a), u_input.b.xz);
    let var_3 = vec4<u32>(9420u, _wgslsmith_mult_u32(arg_0.a.a, max(~_wgslsmith_sub_u32(u_input.d.x, 0u), arg_3.x)), _wgslsmith_add_u32(0u, _wgslsmith_add_u32(firstLeadingBit(~arg_3.x), ~1u)), _wgslsmith_mod_u32(26430u, firstLeadingBit(_wgslsmith_clamp_u32(arg_3.x, arg_3.x, 7848u) & ~arg_0.b)));
    var_1 = !arg_0.c.b;
    return func_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~select(var_3, vec4<u32>(0u, 4294967295u, arg_3.x, 38792u), vec4<bool>(arg_2.x, arg_0.c.a, arg_2.x, arg_0.c.a)), select(var_3, vec4<u32>(1u, 0u, 1u, var_3.x), arg_2.x), ~(vec4<u32>(var_3.x, 4294967295u, 82388u, 0u) >> (var_3 % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(firstLeadingBit(~var_3), ~vec4<u32>(4294967295u, 6676u, arg_3.x, arg_3.x))), ~vec4<u32>(~45791u, 23252u, u_input.d.x, var_3.x), max(var_3, ~(select(var_3, var_3, vec4<bool>(arg_2.x, arg_2.x, var_0.a, false)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 29315u, 1u, 4294967295u), vec4<u32>(18309u, 6458u, u_input.d.x, 102969u))))).a;
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~func_3(), 20u)];
    let var_1 = var_0.c.a;
    let var_2 = var_0.d.xz;
    let var_3 = arg_0.d.x;
    let var_4 = true;
    return func_2(var_0.c.a, arg_0.c, func_4(global1[_wgslsmith_index_u32(abs(arg_0.b), 20u)], _wgslsmith_f_op_f32(abs(var_3)), select(select(select(vec2<bool>(arg_0.c.a, true), vec2<bool>(true, true), vec2<bool>(arg_0.c.b, arg_0.c.b)), !vec2<bool>(var_4, var_4), select(vec2<bool>(arg_0.c.b, var_4), vec2<bool>(arg_0.c.a, false), arg_0.c.a)), vec2<bool>(any(vec2<bool>(arg_0.c.b, var_4)), func_1(0u, vec4<u32>(arg_0.b, 19504u, 20716u, u_input.e.x), vec4<u32>(u_input.d.x, var_0.b, 0u, 0u)).c.a), vec2<bool>(any(vec4<bool>(var_4, true, arg_0.c.b, false)), !arg_0.c.b)), _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(~var_0.b, 18u)], vec3<u32>(~arg_0.a.a, u_input.d.x, _wgslsmith_div_u32(var_0.b, 4294967295u)))).a, var_0.c.b);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<vec3<u32>, 18>();
    let var_0 = vec4<bool>(arg_0, !arg_1.a, all(!select(vec3<bool>(false, arg_2.b, arg_1.a), !vec3<bool>(arg_0, arg_1.a, true), select(vec3<bool>(arg_2.a, false, arg_0), vec3<bool>(true, true, true), true))), !arg_2.a);
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 20u)];
    var var_2 = func_5(Struct_3(global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(~u_input.d.x, var_1.a.a & var_1.a.a)), 20u)], var_1.a.a, func_5(global1[_wgslsmith_index_u32(min(min(3132u, var_1.a.a), ~var_1.a.a), 20u)], _wgslsmith_mod_i32(var_1.a.b.x, -var_1.a.b.x)), var_1.d), -(((var_1.a.b.x << (82317u % 32u)) | u_input.b.x) << (~0u % 32u)));
    global2 = array<Struct_2, 20>();
    return _wgslsmith_dot_vec2_i32(var_1.a.b.zx, _wgslsmith_mult_vec2_i32(~func_1(1u, ~vec4<u32>(1u, u_input.d.x, 1370u, 19111u), ~vec4<u32>(4294967295u, 0u, 0u, u_input.e.x)).a.b.xy, vec2<i32>(_wgslsmith_add_i32(u_input.a | var_1.a.b.x, u_input.a), -var_1.a.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    var var_0 = func_6(true, func_5(Struct_3(func_4(func_1(17069u, vec4<u32>(u_input.e.x, 17476u, u_input.e.x, 0u), vec4<u32>(0u, u_input.e.x, 24324u, u_input.e.x)), 1f, vec2<bool>(true, false), _wgslsmith_mod_vec3_u32(vec3<u32>(40990u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.e.x, 11143u))), 1u, func_2(true, func_1(4294967295u, vec4<u32>(u_input.d.x, u_input.d.x, u_input.e.x, u_input.e.x), vec4<u32>(13675u, 42646u, u_input.d.x, u_input.d.x)).c, 1u, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 459f, 590f), vec3<f32>(1550f, 1326f, 726f), vec3<bool>(true, true, false)))))), ~select(u_input.c, 1i, all(vec4<bool>(false, true, false, true)))), func_1(0u, _wgslsmith_mod_vec4_u32(vec4<u32>(58164u, 4294967295u, 8605u, u_input.d.x), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 7495u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.d.x)), vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.d.x) << (vec4<u32>(u_input.e.x, 42967u, u_input.d.x, 12547u) % vec4<u32>(32u)))), vec4<u32>(~(~4294967295u), func_1(~65773u, abs(vec4<u32>(13031u, 1u, 40765u, 9073u)), ~vec4<u32>(17161u, u_input.d.x, u_input.d.x, 34932u)).b, ~(~u_input.e.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, u_input.d.x), u_input.d.x))).c);
    var var_1 = ~(~_wgslsmith_sub_u32(func_1(u_input.e.x, vec4<u32>(u_input.e.x, u_input.d.x, 1u, 25944u) ^ vec4<u32>(u_input.d.x, 16711u, u_input.d.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 15334u, u_input.e.x, u_input.d.x), vec4<u32>(77020u, 4294967295u, 1u, u_input.e.x))).b, _wgslsmith_div_u32(u_input.e.x, func_1(61917u, vec4<u32>(0u, 22171u, u_input.e.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 77908u, 42263u)).a.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1258f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -487f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -206f) * _wgslsmith_div_f32(-1000f, -809f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-404f, -715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-379f))), 2129f, 1369f))));
    var var_3 = Struct_2(u_input.e.x, vec3<i32>(8489i, -firstTrailingBit(u_input.a) | -_wgslsmith_add_i32(u_input.b.x, 13894i), -func_1(u_input.e.x & 54251u, ~vec4<u32>(12353u, 0u, 0u, 33817u), vec4<u32>(u_input.d.x, 5370u, 13357u, 1u)).a.b.x));
    var var_4 = func_4(global1[_wgslsmith_index_u32(u_input.e.x ^ func_4(global1[_wgslsmith_index_u32(u_input.d.x, 20u)], _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(var_3.a), reverseBits(100689u)), 18u)]).a, 20u)], _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * -1163f))), vec2<bool>(false, select(func_2(func_1(0u, vec4<u32>(var_3.a, var_3.a, u_input.d.x, var_3.a), vec4<u32>(14267u, var_3.a, 2949u, 76837u)).c.b, func_1(0u, vec4<u32>(var_3.a, var_3.a, 15765u, var_3.a), vec4<u32>(1u, var_3.a, var_3.a, u_input.d.x)).c, reverseBits(78061u), all(vec4<bool>(true, false, false, true))).b, _wgslsmith_mult_u32(u_input.e.x, var_3.a) <= func_4(Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 20u)], 1u, Struct_1(false, false), var_2.xwz), 1379f, vec2<bool>(false, false), global0[_wgslsmith_index_u32(0u, 18u)]).a, !all(vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(select(31572u, 4294967295u, true || all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)))), 18u)]).b.x;
    var var_5 = func_1(max(_wgslsmith_add_u32(func_4(Struct_3(global2[_wgslsmith_index_u32(39493u, 20u)], u_input.d.x, Struct_1(false, true), var_2.wyx), -1591f, vec2<bool>(true, true), firstTrailingBit(vec3<u32>(u_input.d.x, u_input.e.x, u_input.d.x))).a, firstLeadingBit(var_3.a)), 4294967295u), countOneBits(~vec4<u32>(u_input.e.x, 19709u, func_4(Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 20u)], var_3.a, Struct_1(false, true), var_2.wyy), -1281f, vec2<bool>(true, true), vec3<u32>(0u, u_input.d.x, var_3.a)).a, 0u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(60977u, var_3.a, u_input.d.x, u_input.e.x), vec4<u32>(var_3.a, u_input.d.x, 0u, u_input.e.x)), u_input.d.x, ~3609u & var_3.a, ~var_3.a)).a;
    var var_6 = Struct_1(func_1(_wgslsmith_div_u32(var_5.a, var_5.a), _wgslsmith_add_vec4_u32(~vec4<u32>(var_3.a, var_3.a, var_3.a, 29270u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.e.x, 0u, 1u), vec4<u32>(4294967295u, 3992u, u_input.e.x, 26542u))), ~vec4<u32>(4294967295u, var_3.a, u_input.e.x, var_5.a)).c.b && (false || !all(vec3<bool>(false, true, true))), true);
    var var_7 = vec4<i32>(0i, -func_1(func_4(Struct_3(global2[_wgslsmith_index_u32(var_3.a, 20u)], u_input.e.x, Struct_1(true, var_6.b), vec3<f32>(var_2.x, var_2.x, var_2.x)), 1364f, select(vec2<bool>(var_6.a, true), vec2<bool>(false, false), var_6.a), _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(var_3.a, 18u)], vec3<u32>(var_3.a, var_3.a, 0u), global0[_wgslsmith_index_u32(var_3.a, 18u)])).a, countOneBits(~vec4<u32>(var_5.a, u_input.d.x, 9744u, var_5.a)), vec4<u32>(func_3(), firstLeadingBit(var_5.a), 112u, _wgslsmith_add_u32(var_3.a, u_input.d.x))).a.b.x, i32(-1i) * -13531i, select(~u_input.a, _wgslsmith_dot_vec4_i32(u_input.b << (vec4<u32>(var_5.a, 136661u, var_3.a, 102148u) % vec4<u32>(32u)), -u_input.b), true) | ~(2147483647i ^ _wgslsmith_dot_vec3_i32(var_3.b, var_5.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(var_5.a, var_5.a, var_5.a), vec3<u32>(u_input.e.x, 4294967295u, 4294967295u), vec3<bool>(var_6.a, false, var_6.a))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(var_3.a, 46509u, 14017u)), global0[_wgslsmith_index_u32(57852u, 18u)])), vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, var_5.a), var_3.a, abs(u_input.e.x) | (var_5.a >> ((u_input.e.x | 4294967295u) % 32u))), vec3<f32>(var_2.x, 2276f, _wgslsmith_f_op_f32(1742f + func_1(var_5.a, ~vec4<u32>(var_3.a, 2446u, 16613u, 0u), countOneBits(vec4<u32>(26957u, 12219u, 4294967295u, u_input.d.x))).d.x)));
}

