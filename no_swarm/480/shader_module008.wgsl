struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(-65235i, -3459i, 0i)), 0u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(0i, i32(-2147483648), 12754i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648))), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(9293i, -7203i, -1i)), 0u, Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(0i, -34017i, -40076i)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(2147483647i, -65684i, 0i)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(48029i, -1i, 3027i)), 43757u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(1i, 3087i, -1i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-9773i, 2147483647i, 14217i)), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(30887i, i32(-2147483648), 0i)), 62134u, Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(10514i, -20405i, i32(-2147483648))), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(1i, -9618i, -1i)), 4294967295u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(i32(-2147483648), 4645i, -1i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-47542i, 48653i, -11793i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(13927i, 0i, -21632i)), 59405u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-50479i, -12130i, 0i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-1i, 0i, i32(-2147483648))), 70330u, Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(-21366i, 2147483647i, 31749i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-15076i, 44978i, 49736i)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(1i, 2147483647i, 0i)), 39632u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(1i, 2147483647i, -1i)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(33522i, -18608i, 0i)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(0i, -31696i, 0i)), 63342u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-89465i, 7164i, i32(-2147483648))), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-3392i, 0i, i32(-2147483648))), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(2147483647i, 2147483647i, 2410i)), 1u, Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(38849i, -50916i, 2147483647i)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(-1i, i32(-2147483648), -14755i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(2360i, -19444i, -32998i)), 0u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-235i, 42836i, -30293i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-1736i, -7174i, 41744i)), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(0i, i32(-2147483648), 0i)), 0u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(27502i, i32(-2147483648), -6843i)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(1i, -15844i, 23893i)), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(47148i, 21932i, 1i)), 0u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(i32(-2147483648), 2147483647i, 14594i)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(16044i, 2147483647i, -7905i)), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-1i, 2147483647i, 3054i)), 33425u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(34050i, 2147483647i, 1i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(1i, -1i, -2224i)), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-7480i, 2147483647i, 0i)), 0u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(2147483647i, -30550i, -322i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(1535i, 2147483647i, -68258i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-52631i, -58933i, i32(-2147483648))), 1u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-28158i, 2147483647i, 0i)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(25638i, 1i, 0i)), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(2147483647i, 1i, -12163i)), 27237u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(26376i, 0i, 2147483647i)), Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(1i, -63686i, 32726i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(0i, 0i, -22597i)), 4294967295u, Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(1i, 10828i, 1i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(2147483647i, 2147483647i, 0i)), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(i32(-2147483648), -43083i, 41334i)), 24750u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(2147483647i, 0i, -49538i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-41662i, 1i, -18302i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(22063i, -10496i, -34736i)), 1u, Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(0i, 33840i, -34833i)), Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(13535i, -1i, -1i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(1i, 32090i, i32(-2147483648))), 5427u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(9265i, -2525i, 18348i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(1i, -8881i, 2147483647i)), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(24701i, 1i, 12933i)), 4294967295u, Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-49784i, -107870i, -1849i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(0i, -1i, 0i)), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(false), Struct_1(true), vec3<i32>(-38176i, 1i, -1i)), 4250u, Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(-48686i, -1i, -39839i)), Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-62095i, 9338i, -15223i)), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(true), Struct_1(false), vec3<i32>(-20087i, -1i, -1i)), 38265u, Struct_2(Struct_1(true), Struct_1(true), vec3<i32>(-1i, 0i, 0i)), Struct_2(Struct_1(false), Struct_1(false), vec3<i32>(13074i, 48223i, 1i)), vec2<bool>(true, true)));

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>) -> bool {
    global2 = 1356f;
    var var_0 = Struct_2(Struct_1(!arg_0.x), Struct_1(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) > (firstTrailingBit(-37435i) ^ _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.a.x))), _wgslsmith_add_vec3_i32(u_input.a, select(select(u_input.a, reverseBits(u_input.a), vec3<bool>(arg_0.x, arg_0.x, false)), -_wgslsmith_div_vec3_i32(vec3<i32>(-16964i, -26339i, u_input.a.x), vec3<i32>(34783i, 0i, -1i)), false)));
    var_0 = Struct_2(Struct_1(true), var_0.a, ~(vec3<i32>(_wgslsmith_mod_i32(var_0.c.x, u_input.b), -1i, u_input.b) & ~u_input.a));
    var_0 = Struct_2(Struct_1(false), var_0.a, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, -1i) & vec4<i32>(1i, 7258i, u_input.b, -6056i), vec4<i32>(-7312i, 1i, u_input.a.x, var_0.c.x)), -2147483647i, -17051i));
    var_0 = Struct_2(var_0.a, Struct_1(var_0.b.a), var_0.c);
    return all(vec4<bool>(all(arg_0.xy), all(arg_0), any(select(select(vec4<bool>(arg_0.x, true, arg_0.x, var_0.a.a), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(var_0.a.a, false, var_0.b.a, arg_0.x), true))), ~_wgslsmith_add_u32(u_input.c, 601u) <= _wgslsmith_mult_u32(~u_input.c, u_input.c)));
}

fn func_2() -> bool {
    global3 = _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, u_input.a.x ^ -17768i), u_input.a.x & abs(abs(-1i)));
    global0 = array<vec3<f32>, 15>();
    let var_0 = Struct_2(Struct_1(!any(vec4<bool>(true, true, true, true))), Struct_1(false), u_input.a);
    global0 = array<vec3<f32>, 15>();
    let var_1 = vec4<i32>(u_input.a.x | ~max(7421i << (u_input.c % 32u), 0i), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, firstLeadingBit(u_input.a.x)), firstLeadingBit(u_input.a.yx)), -_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.c.zx | var_0.c.zx), select(vec2<i32>(var_0.c.x, var_0.c.x) | vec2<i32>(var_0.c.x, var_0.c.x), u_input.a.zy, vec2<bool>(true, true))));
    return all(vec4<bool>(var_0.a.a, func_3(select(vec3<bool>(true, var_0.b.a, var_0.b.a), !vec3<bool>(var_0.a.a, true, var_0.b.a), vec3<bool>(true, false, var_0.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1413f, -705f)))), var_0.a.a, select(func_3(select(vec3<bool>(false, false, var_0.a.a), vec3<bool>(true, false, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1321f, 1271f))), !any(vec2<bool>(var_0.b.a, var_0.b.a)), any(select(vec3<bool>(var_0.b.a, var_0.a.a, var_0.a.a), vec3<bool>(true, true, true), vec3<bool>(var_0.b.a, var_0.b.a, false))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_1(arg_1);
    var var_1 = ~u_input.c;
    var_1 = 42688u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2773f)) + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_3, -621f)), _wgslsmith_f_op_f32(abs(arg_3))))));
    var_1 = 78359u;
    return vec4<u32>(abs(abs(max(~u_input.c, ~u_input.c))), _wgslsmith_add_u32(u_input.c, 6050u), select(u_input.c, ~u_input.c, false), ~0u);
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global3 = -firstLeadingBit(u_input.b);
    global0 = array<vec3<f32>, 15>();
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(func_4(-vec4<i32>(u_input.a.x, 0i, -2147483647i, u_input.a.x), func_2(), 1508f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-218f, 140f))), ~(~vec4<u32>(30757u, 4294967295u, 4294967295u, u_input.c))), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(65622u, 0u, u_input.c)), min(vec3<u32>(1855u, 31993u, 4294967295u), vec3<u32>(20497u, 44646u, 45198u)))), ~u_input.c, u_input.c, _wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c)));
    let var_1 = Struct_2(Struct_1(arg_0.a.a.a), Struct_1(select(arg_0.a.a.a, true, false) || arg_0.a.a.a), firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(51975i, arg_0.a.c.x), arg_0.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, arg_0.a.c.x, arg_0.a.c.x), vec4<i32>(u_input.b, arg_0.a.c.x, u_input.a.x, u_input.a.x)))) ^ vec3<i32>(47883i, 31289i ^ (-36998i >> (u_input.c % 32u)), _wgslsmith_dot_vec3_i32(u_input.a, firstLeadingBit(vec3<i32>(arg_0.a.c.x, -23786i, arg_0.a.c.x)))));
    let var_2 = !(!select(vec2<bool>(true, select(var_1.a.a, true, arg_0.a.a.a)), !vec2<bool>(arg_0.a.a.a, arg_0.a.b.a), select(select(vec2<bool>(false, var_1.a.a), vec2<bool>(false, false), true), vec2<bool>(true, true), true)));
    return Struct_3(Struct_2(Struct_1(false), Struct_1(true), (arg_0.a.c << (var_0.xxz % vec3<u32>(32u))) ^ vec3<i32>(arg_0.a.c.x, u_input.a.x, 57795i)), 1u, arg_0.a, var_1, select(select(!select(vec2<bool>(var_1.a.a, arg_0.a.a.a), var_2, var_1.a.a), var_2, !select(vec2<bool>(false, true), var_2, var_2)), vec2<bool>(false, arg_0.a.b.a), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(Struct_2(Struct_1(true), Struct_1(true), (u_input.a | u_input.a) | u_input.a)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-808f, _wgslsmith_f_op_f32(min(-237f, 2527f)))), 1f)), _wgslsmith_f_op_f32(step(-167f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1566f)))))) * 2029f);
    var var_1 = Struct_2(Struct_1(all(select(vec4<bool>(true, false, var_0.a.b.a, var_0.d.b.a), vec4<bool>(false, var_0.c.a.a, false, var_0.a.b.a), vec4<bool>(var_0.d.b.a, var_0.c.a.a, false, false))) != false), var_0.d.b, ~vec3<i32>(_wgslsmith_dot_vec3_i32(~var_0.d.c, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, 1i), u_input.a)), -(u_input.b | -24296i), abs(abs(-1i))));
    var_1 = func_1(Struct_4(var_0.a)).a;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(332f + _wgslsmith_f_op_f32(430f + _wgslsmith_f_op_f32(f32(-1f) * -1650f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(311f)) - _wgslsmith_f_op_f32(min(-105f, -245f)))))));
    var var_3 = Struct_4(var_0.a);
    let var_4 = Struct_4(Struct_2(var_1.b, var_0.c.b, var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(5518u, 76323u, u_input.c, var_0.b), vec4<u32>(13128u, u_input.c, u_input.c, var_0.b))), _wgslsmith_f_op_f32(select(945f, _wgslsmith_f_op_f32(select(731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), var_1.a.a)), _wgslsmith_div_i32(var_0.c.c.x, 12211i) >= reverseBits(~var_4.a.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), 1455f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-779f - var_2.x))), ~(~(~_wgslsmith_sub_u32(var_0.b, var_0.b))), countOneBits(vec3<u32>(_wgslsmith_div_u32(6719u, 39202u) & (var_0.b << (u_input.c % 32u)), 0u, _wgslsmith_mult_u32(var_0.b, u_input.c))));
}

