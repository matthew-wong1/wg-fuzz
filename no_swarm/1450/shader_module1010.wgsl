struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-1i, -57795i, 19918i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -6795i), vec4<i32>(0i, -32018i, 2147483647i, 37684i), vec4<i32>(1i, 1434i, 0i, i32(-2147483648)), vec4<i32>(-49874i, -7534i, -28104i, 77366i), vec4<i32>(0i, 38882i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 961i, 2147483647i, i32(-2147483648)), vec4<i32>(44069i, -1i, -1i, -13337i), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 36020i), vec4<i32>(74408i, 2147483647i, i32(-2147483648), -6999i), vec4<i32>(20663i, -36021i, 1i, -62233i), vec4<i32>(18429i, -1i, -1i, 54337i), vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec4<i32>(1i, -62679i, -27384i, 27379i), vec4<i32>(14731i, 0i, 29476i, i32(-2147483648)), vec4<i32>(-1i, -85310i, -13808i, 35686i), vec4<i32>(i32(-2147483648), i32(-2147483648), -50819i, 1i), vec4<i32>(35050i, 0i, i32(-2147483648), 1i), vec4<i32>(0i, 22710i, 0i, 2147483647i), vec4<i32>(-12575i, 5163i, -3784i, -10651i), vec4<i32>(2147483647i, 2147483647i, 4421i, -8541i), vec4<i32>(-1i, -6448i, -33524i, 31290i), vec4<i32>(6399i, 56361i, 7663i, 6901i), vec4<i32>(5195i, -37305i, 3586i, 2147483647i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(i32(-2147483648), -25047i, 551i, -492i), vec4<i32>(2147483647i, i32(-2147483648), 21555i, i32(-2147483648)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = vec3<i32>(arg_1, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(2147483647i << (u_input.a % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 27461i), -u_input.c.zy)), -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(u_input.c.x, -2147483647i)), ~17283i)), ~arg_1);
    let var_1 = vec4<i32>(~_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_0.x, -32894i)), vec2<i32>(-109435i, ~arg_1)), ~(arg_1 << ((~u_input.a >> (_wgslsmith_dot_vec2_u32(arg_0.d.a.zz, u_input.b) % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(-vec2<i32>(var_0.x, 28676i))), vec2<i32>(firstLeadingBit(56243i), var_0.x)), -1i);
    let var_2 = 0u;
    var var_3 = _wgslsmith_dot_vec4_i32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 27u)]), abs(_wgslsmith_mult_vec4_i32(var_1, vec4<i32>(var_0.x, u_input.c.x, arg_1, 57266i)))) >> (arg_0.e.a.x % 32u);
    var var_4 = vec4<bool>(arg_3 | any(vec4<bool>(!arg_3, true, arg_0.c.x, arg_3)), arg_0.c.x, arg_3, all(!vec4<bool>(!arg_0.c.x, arg_0.c.x, arg_0.c.x & false, true)));
    return Struct_2(489f, 35061u, !arg_0.c, Struct_1(~(~vec4<u32>(arg_0.e.a.x, u_input.a, 69638u, 69655u) << (max(vec4<u32>(var_2, u_input.b.x, 28790u, 105942u), arg_0.e.a) % vec4<u32>(32u)))), Struct_1(arg_0.e.a));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, -1072f) * vec2<f32>(arg_2.a, arg_2.a)))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(971f)) * arg_2.a)))));
    global0 = array<vec4<i32>, 27>();
    return func_2(arg_2, -1332i, var_0, true);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    let var_0 = Struct_1(abs(~_wgslsmith_div_vec4_u32(arg_0.e.a, ~arg_0.d.a)));
    global0 = array<vec4<i32>, 27>();
    global0 = array<vec4<i32>, 27>();
    return _wgslsmith_div_u32(abs(~(arg_0.e.a.x << (var_0.a.x % 32u))), _wgslsmith_add_u32(u_input.d, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-363f))))) * 465f), ~abs(131665u & ~u_input.a), select(!vec4<bool>(u_input.c.x >= u_input.c.x, true, true, all(vec3<bool>(true, false, false))), func_1(u_input.c.x, -49077i, Struct_2(-1422f, 75438u, select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), func_1(u_input.c.x, -2147483647i, Struct_2(120f, 8399u, vec4<bool>(true, true, false, false), arg_1, arg_1), arg_0).d, Struct_1(vec4<u32>(26061u, 0u, 60562u, 40513u))), arg_1).c, false), func_1(u_input.c.x & ~u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-24170i, -26287i, u_input.c.x), -vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)), u_input.c.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1064f), 0u, vec4<bool>(true, true, true, true), func_1(18088i, -47933i, func_1(2147483647i, 1i, Struct_2(1295f, u_input.a, vec4<bool>(true, false, true, true), arg_1, Struct_1(arg_0.a)), Struct_1(arg_0.a)), Struct_1(arg_1.a)).d, func_1(~u_input.c.x, u_input.c.x, Struct_2(2621f, arg_1.a.x, vec4<bool>(false, true, true, false), arg_0, Struct_1(arg_0.a)), Struct_1(vec4<u32>(51256u, 71607u, 34462u, arg_0.a.x))).d), arg_1).e, func_1(-abs(17333i), u_input.c.x, Struct_2(_wgslsmith_f_op_f32(sign(-1000f)), u_input.b.x, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), func_1(-26074i, u_input.c.x, Struct_2(340f, 32136u, vec4<bool>(false, false, true, true), Struct_1(arg_1.a), arg_0), arg_1).c), func_1(21435i, -u_input.c.x, Struct_2(-270f, arg_1.a.x, vec4<bool>(false, false, true, false), Struct_1(arg_0.a), arg_1), Struct_1(arg_1.a)).e, Struct_1(func_2(Struct_2(-623f, 4294967295u, vec4<bool>(false, false, true, false), Struct_1(vec4<u32>(u_input.d, 1u, u_input.a, arg_0.a.x)), Struct_1(arg_1.a)), u_input.c.x, vec2<f32>(-2041f, 1000f), true).e.a)), arg_1).e);
    let var_1 = vec3<bool>(func_1(~1439i, _wgslsmith_clamp_i32(firstLeadingBit(-u_input.c.x), countOneBits(0i), _wgslsmith_dot_vec4_i32(min(global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -16039i)), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(1u, 27u)], vec4<i32>(2147483647i, -1i, 38842i, u_input.c.x)))), Struct_2(1224f, arg_0.a.x, select(select(var_0.c, var_0.c, false), !vec4<bool>(true, false, var_0.c.x, false), vec4<bool>(var_0.c.x, true, false, var_0.c.x)), func_2(Struct_2(576f, u_input.a, vec4<bool>(false, true, false, true), arg_1, Struct_1(arg_0.a)), u_input.c.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-686f, -218f), vec2<f32>(-298f, -691f))), false).d, arg_0), Struct_1(abs(vec4<u32>(var_0.e.a.x, 1u, 33030u, 88452u)))).c.x, false, u_input.c.x != ~(-u_input.c.x));
    var var_2 = arg_1.a.x;
    var_2 = u_input.b.x;
    let var_3 = var_0;
    return var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(abs(firstTrailingBit(countOneBits(vec4<u32>(u_input.d, 0u, u_input.a, u_input.b.x))))), Struct_1(vec4<u32>(func_3(func_1(u_input.c.x, -11739i, Struct_2(391f, 0u, vec4<bool>(true, true, false, true), Struct_1(vec4<u32>(1u, u_input.d, u_input.b.x, u_input.d)), Struct_1(vec4<u32>(4294967295u, 73744u, 43187u, u_input.a))), Struct_1(vec4<u32>(0u, 0u, u_input.d, 5292u)))), ~60597u, u_input.d, 1349u)));
    global0 = array<vec4<i32>, 27>();
    var var_1 = Struct_1(~vec4<u32>(var_0.a.x, ~func_1(1i, u_input.c.x, Struct_2(393f, 41383u, vec4<bool>(true, false, false, true), var_0, var_0), var_0).e.a.x, var_0.a.x << (~4294967295u % 32u), 0u));
    let var_2 = !vec2<bool>(func_1(~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), u_input.c.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -700f), u_input.d << (var_0.a.x % 32u), func_2(Struct_2(697f, 48850u, vec4<bool>(false, true, true, true), Struct_1(vec4<u32>(5969u, 4684u, u_input.b.x, var_1.a.x)), var_0), u_input.c.x, vec2<f32>(-196f, -803f), false).c, var_0, func_4(var_0, Struct_1(vec4<u32>(var_0.a.x, u_input.a, 1592u, 56855u)))), var_0).c.x, any(select(func_2(Struct_2(748f, 4294967295u, vec4<bool>(false, false, false, true), Struct_1(var_0.a), var_0), 2147483647i, vec2<f32>(524f, -626f), false).c.xy, vec2<bool>(false, false), true)));
    var_1 = var_0;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f - -1318f) + 679f))), -209f);
    var var_4 = any(vec4<bool>(!var_2.x, false, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-267f)))), func_4(var_0, Struct_1(~var_1.a)).a.x, var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), -582f)));
}

