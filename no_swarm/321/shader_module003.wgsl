struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(0u, 1u, 36447u, 0u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(3093u, 0u, 29056u, 1u), vec4<u32>(4294967295u, 4294967295u, 38268u, 53171u), vec4<u32>(18047u, 12317u, 27104u, 0u), vec4<u32>(56407u, 0u, 19464u, 1u), vec4<u32>(4294967295u, 0u, 48598u, 64107u), vec4<u32>(12817u, 43767u, 91525u, 0u), vec4<u32>(4294967295u, 4294967295u, 106516u, 0u), vec4<u32>(56347u, 1u, 1u, 64704u), vec4<u32>(44189u, 24881u, 4294967295u, 28953u));

var<private> global1: bool;

var<private> global2: u32 = 0u;

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> vec4<bool> {
    global2 = 4294967295u;
    global3 = ((~1u & abs(_wgslsmith_clamp_u32(57575u, 48249u, 1u))) << (0u % 32u)) == _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(65509u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9132u, 0u), vec3<u32>(0u, 0u, 0u))), min(~0u, 1u)), 4294967295u);
    var var_0 = ~max(select(vec3<i32>(35229i, ~(-9260i), -2147483647i & u_input.a), -firstTrailingBit(vec3<i32>(0i, 0i, u_input.a)), any(vec2<bool>(true, false))), select(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a), vec3<i32>(u_input.a, u_input.a, 3474i)), reverseBits(vec3<i32>(u_input.a, -1i, arg_1) | vec3<i32>(u_input.a, -29036i, -22391i)), vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_mod_u32(min(4294967295u, ~1u), 67220u);
    global3 = true;
    return !(!vec4<bool>(true, false, false, any(vec4<bool>(true, false, false, false))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(~(~countOneBits(~u_input.a)), vec2<i32>(~0i, abs(-12748i)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -1060f);
    global3 = any(select(vec4<bool>(false, true, 1530f <= _wgslsmith_f_op_f32(step(var_0.c, 1612f)), select(true, var_0.a >= var_0.b.x, any(vec2<bool>(true, false)))), select(func_3(_wgslsmith_f_op_f32(trunc(var_0.c)), 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -285f, 1200f) - vec3<f32>(var_0.c, var_0.c, 1158f))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), true), select(vec4<bool>(true, true, true, true), func_3(_wgslsmith_f_op_f32(round(-1062f)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-2147483647i, 60615i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -930f, -692f) - vec3<f32>(-1112f, var_0.c, var_0.c))), true)));
    let var_1 = _wgslsmith_f_op_f32(var_0.c - 670f);
    let var_2 = Struct_1(i32(-1i) * -1i, -_wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(var_0.b, var_0.b), vec2<i32>(-1i, var_0.a)), 559f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_1, var_0.c, 2201f) - vec4<f32>(-1000f, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_2.c, -518f, -1555f) + vec4<f32>(1399f, var_0.c, var_2.c, 750f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, 879f, var_2.c, -172f)))))));
    return !(!all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = select(vec4<bool>(!func_2(), arg_0.x, true, !(true | arg_0.x)), arg_0, arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a.c, _wgslsmith_f_op_f32(sign(-1567f)), arg_2.a.c))));
    var var_2 = arg_2.a.b.x;
    var_0 = !vec4<bool>(func_2(), true, _wgslsmith_f_op_f32(abs(arg_2.a.c)) > -1335f, !func_3(_wgslsmith_f_op_f32(floor(-568f)), 0i, _wgslsmith_div_vec3_f32(vec3<f32>(-1059f, arg_2.a.c, -1598f), vec3<f32>(var_1.x, -302f, -969f))).x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2.a.c)))), -309f, 639f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1425f, 523f, 498f), vec3<f32>(-731f, arg_2.a.c, -1482f)))))));
    return arg_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~vec3<u32>(abs(countOneBits(~71470u)), 1u, ~(~firstLeadingBit(83223u)));
    var var_1 = arg_0;
    var_1 = arg_0;
    global1 = false;
    var var_2 = func_2();
    return func_1(!func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, var_1.a.c)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a, -26975i, var_1.a.b.x, 28413i), vec4<i32>(arg_0.a.b.x, var_1.a.b.x, u_input.a, 0i)), vec3<f32>(var_1.a.c, _wgslsmith_f_op_f32(934f + 248f), arg_0.a.c)), ~(~0u) << (_wgslsmith_mult_u32(~1u, var_0.x) % 32u), Struct_2(func_1(vec4<bool>(true, arg_0.a.c >= var_1.a.c, func_2(), false), select(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)), any(vec2<bool>(false, false))), func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), abs(1u), arg_0, 1u), 1u).a), _wgslsmith_add_u32(43994u, _wgslsmith_sub_u32(37240u, 34767u))).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    var var_0 = func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, func_3(-1516f, arg_1.a, vec3<f32>(-516f, arg_0.a.c, -890f)).x, true, true)), min(~4294967295u, 1u), arg_0, firstTrailingBit(36682u));
    global0 = array<vec4<u32>, 11>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f));
}

fn func_6(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = func_1(vec4<bool>(func_3(_wgslsmith_f_op_f32(max(398f, -2089f)), _wgslsmith_mult_i32(u_input.a, abs(u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, arg_1, 928f))).x, any(func_3(_wgslsmith_f_op_f32(-arg_1), -1i, vec3<f32>(-1625f, arg_1, 808f)).xy), 4294967295u <= arg_0.x, 54667u == ~abs(arg_0.x)), ~(_wgslsmith_mult_u32(min(arg_0.x, arg_0.x), ~arg_0.x) << (73569u % 32u)), func_1(vec4<bool>(_wgslsmith_f_op_f32(max(arg_1, -804f)) <= -292f, !all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)), func_2()), 33882u, func_1(vec4<bool>(true, true, true, true), ~1u, Struct_2(Struct_1(1i, vec2<i32>(-7298i, u_input.a), arg_1)), 4294967295u), ~(~1u | reverseBits(arg_0.x))), ~arg_0.x | firstLeadingBit(_wgslsmith_mod_u32(~arg_0.x, select(arg_0.x, 40134u, false))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    var var_1 = var_0;
    return Struct_1(0i, ~(~vec2<i32>(1i, firstLeadingBit(var_1.a.b.x))), -217f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), true));
    var var_1 = Struct_2(func_6(~select(abs(vec4<u32>(1u, 0u, 43855u, 7487u)), ~vec4<u32>(4294967295u, 40140u, 64638u, 113444u), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x)), _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(-26677i, vec2<i32>(1i, u_input.a), -1000f)), func_4(func_1(vec4<bool>(true, true, var_0.x, false), 27423u, Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, 36939i), 223f)), 1u))))));
    let var_2 = Struct_1(var_1.a.a, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, 1i), u_input.a), -vec2<i32>(1i, -2147483647i)) >> (~vec2<u32>(~58902u, 14920u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1152f, func_4(Struct_2(Struct_1(u_input.a, vec2<i32>(2147483647i, u_input.a), -303f))).c) * var_1.a.c) * var_1.a.c));
    global2 = ~48950u;
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -52632i), vec3<i32>(var_1.a.b.x, var_1.a.b.x, 0i)), vec3<i32>(0i, 39650i, ~u_input.a) ^ vec3<i32>(~54185i, min(u_input.a, -8205i), u_input.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(var_2.c, -1096f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(var_1.a.c * 957f))), var_2.c, _wgslsmith_f_op_f32(-1525f * -413f)))), 0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(62885u, 0u, 29909u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 59156u), vec2<u32>(61084u, 1u)), vec2<u32>(1u, 1u)), ~21983u), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 5939u)), 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, -109f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.c, 917f), vec2<f32>(var_1.a.c, var_1.a.c))))))));
}

