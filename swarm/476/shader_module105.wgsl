struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec4<i32>(33507i, 15474i, i32(-2147483648), -19893i), vec3<u32>(23444u, 7293u, 16020u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<i32>(0i, 2147483647i, 1698i)), false, 179f, Struct_1(vec4<i32>(2147483647i, 0i, 0i, -34193i), vec3<u32>(49492u, 1u, 1u), vec3<u32>(38936u, 1u, 4294967295u), vec3<i32>(i32(-2147483648), -230i, -1i))), Struct_3(Struct_1(vec4<i32>(1i, 1i, -25391i, i32(-2147483648)), vec3<u32>(84505u, 4294967295u, 37533u), vec3<u32>(0u, 22607u, 0u), vec3<i32>(-1468i, 4091i, 59924i)), true, -1773f, Struct_1(vec4<i32>(-1i, -13705i, -32835i, -1337i), vec3<u32>(11094u, 4294967295u, 0u), vec3<u32>(33716u, 16740u, 4294967295u), vec3<i32>(0i, -52993i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(-4577i, -28702i, -25010i, 6707i), vec3<u32>(8665u, 4294967295u, 18657u), vec3<u32>(4294967295u, 4294967295u, 49356u), vec3<i32>(2147483647i, -41224i, 47364i)), true, 616f, Struct_1(vec4<i32>(20285i, -23506i, 2147483647i, 56896i), vec3<u32>(2606u, 56230u, 3502u), vec3<u32>(56490u, 4294967295u, 12301u), vec3<i32>(-1i, -2502i, -28504i))), Struct_3(Struct_1(vec4<i32>(1i, 0i, 1i, 0i), vec3<u32>(4294967295u, 44964u, 4294967295u), vec3<u32>(4294967295u, 62063u, 1u), vec3<i32>(-1565i, 33060i, -4661i)), true, 669f, Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -23093i), vec3<u32>(1873u, 61487u, 0u), vec3<u32>(76132u, 1u, 68990u), vec3<i32>(27857i, 0i, 22510i))), Struct_3(Struct_1(vec4<i32>(-1i, -77517i, -42724i, 1i), vec3<u32>(37115u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 13300u), vec3<i32>(3077i, 2147483647i, 20471i)), false, -755f, Struct_1(vec4<i32>(1i, -4331i, i32(-2147483648), 2147483647i), vec3<u32>(15468u, 0u, 19936u), vec3<u32>(28105u, 56234u, 50688u), vec3<i32>(-6663i, -12928i, -20746i))), Struct_3(Struct_1(vec4<i32>(1i, -1i, 5020i, -67488i), vec3<u32>(0u, 40103u, 16038u), vec3<u32>(9797u, 4294967295u, 1u), vec3<i32>(0i, 20577i, -68886i)), false, -1619f, Struct_1(vec4<i32>(1i, 2147483647i, -1i, 0i), vec3<u32>(39192u, 11302u, 1u), vec3<u32>(46428u, 0u, 4294967295u), vec3<i32>(-19299i, 5137i, 2147483647i))), Struct_3(Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), -1i), vec3<u32>(1u, 0u, 23061u), vec3<u32>(706u, 15551u, 37230u), vec3<i32>(i32(-2147483648), 2147483647i, -576i)), false, -766f, Struct_1(vec4<i32>(9975i, 16827i, -58023i, i32(-2147483648)), vec3<u32>(18645u, 884u, 1u), vec3<u32>(0u, 1u, 19432u), vec3<i32>(-5547i, 1i, -47109i))), Struct_3(Struct_1(vec4<i32>(2147483647i, -4467i, -1185i, 1202i), vec3<u32>(53655u, 0u, 0u), vec3<u32>(55046u, 57691u, 54346u), vec3<i32>(11108i, 0i, -1i)), true, 426f, Struct_1(vec4<i32>(1i, -1i, 0i, -52946i), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(40372u, 45405u, 33156u), vec3<i32>(1i, -66563i, 45384i))), Struct_3(Struct_1(vec4<i32>(2147483647i, 1i, -36690i, 34010i), vec3<u32>(40291u, 12699u, 4294967295u), vec3<u32>(7776u, 43632u, 66560u), vec3<i32>(-69081i, i32(-2147483648), 1349i)), false, 1965f, Struct_1(vec4<i32>(20601i, 46790i, 2147483647i, i32(-2147483648)), vec3<u32>(78006u, 73820u, 1u), vec3<u32>(1u, 5055u, 2303u), vec3<i32>(1i, 61056i, 7310i))), Struct_3(Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -1i), vec3<u32>(53278u, 4294967295u, 0u), vec3<u32>(78767u, 19691u, 39197u), vec3<i32>(-19398i, 26876i, -18178i)), false, -859f, Struct_1(vec4<i32>(0i, i32(-2147483648), -29242i, -3412i), vec3<u32>(4294967295u, 1u, 36833u), vec3<u32>(4294967295u, 1u, 54699u), vec3<i32>(-1i, i32(-2147483648), 18786i))));

var<private> global1: vec2<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4) -> vec4<f32> {
    global2 = select(select(!(!select(vec3<bool>(arg_1.b, global1.x, global1.x), vec3<bool>(global2.x, arg_1.b, false), global1.x)), vec3<bool>(true, true, true), true), vec3<bool>(firstLeadingBit(u_input.a) < ~(~arg_0.x), false, true), select(!vec3<bool>(1000f == arg_1.a, true, true | global1.x), vec3<bool>(true, true, true), !global2.x));
    global2 = !vec3<bool>(true, !(!global2.x), true);
    var var_0 = u_input.a;
    let var_1 = max(_wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 63346i, 0i), vec4<i32>(-1i, -36073i, 1i, -74629i)), min(15297i, -1i), 1i, 59625i), _wgslsmith_mod_vec4_i32((vec4<i32>(-2147483647i, -3106i, 35046i, 20811i) << (vec4<u32>(u_input.b, 0u, arg_0.x, arg_0.x) % vec4<u32>(32u))) | vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), -vec4<i32>(1i, 1i, _wgslsmith_mult_i32(-4350i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(-37134i, 887i, -1i))), abs(_wgslsmith_mult_i32(2147483647i, -1i))));
    let var_2 = ~firstTrailingBit(abs(vec4<i32>(~var_1.x, -58701i << (u_input.b % 32u), -22110i, ~(-2147483647i))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, -1265f))), _wgslsmith_f_op_f32(abs(-1599f)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -133f));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: u32) -> u32 {
    let var_0 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(354f - -1043f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1619f))), any(vec2<bool>(true, global1.x)))) == 1176f, !global2.x, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(max(~u_input.a, u_input.b), 1u, 1u), Struct_4(_wgslsmith_f_op_f32(select(-477f, 897f, any(vec3<bool>(false, var_0.x, true)))), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(sign(-1270f)), _wgslsmith_f_op_f32(step(-658f, -1000f)), -743f))));
    let var_2 = ~(~vec2<u32>(25418u, ~1u));
    global1 = global2.zy;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f + var_1.x) * 937f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f - var_1.x) * 444f)))));
    return max(arg_2, arg_2);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    var var_0 = select(select(select(vec3<bool>(true, all(vec2<bool>(false, false)), arg_1.b), !select(vec3<bool>(global2.x, true, true), vec3<bool>(global1.x, true, global2.x), true), arg_1.b), vec3<bool>(true, any(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(arg_1.b, arg_1.b, global1.x, true), true)), -1i <= firstLeadingBit(arg_1.a.d.x)), select(select(!vec3<bool>(arg_1.b, global1.x, false), select(vec3<bool>(true, true, global1.x), vec3<bool>(false, true, false), arg_1.b), any(vec3<bool>(false, arg_1.b, true))), vec3<bool>(true, !global2.x, true), false)), select(vec3<bool>(arg_1.b, !all(global2.xy), any(vec4<bool>(true, false, global2.x, global2.x))), vec3<bool>(!any(vec2<bool>(false, true)), global2.x, any(global2.xy)), global2.x), global1.x);
    var var_1 = arg_1.d;
    let var_2 = Struct_2(vec2<i32>(var_1.d.x, -2147483647i) & ~(~abs(arg_1.d.d.yz)), _wgslsmith_f_op_f32(f32(-1f) * -498f), false, _wgslsmith_div_vec4_u32(vec4<u32>(~func_2(var_1.a, 9902i, u_input.b), ~max(1u, 17853u), ~(~474u), arg_1.d.c.x), firstTrailingBit(vec4<u32>(var_1.c.x, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(51506u, arg_2), vec2<u32>(u_input.a, u_input.b)), ~0u))));
    let var_3 = ~vec4<u32>(u_input.b, min(_wgslsmith_mod_u32(8469u, ~25590u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2, arg_0, arg_1.d.c.x), abs(35184u))), 26316u, firstLeadingBit(func_2(vec4<i32>(var_2.a.x, -481i, arg_1.a.d.x, -1i), arg_1.d.d.x, arg_2) << ((4294967295u >> (arg_0 % 32u)) % 32u)));
    global2 = vec3<bool>(any(vec4<bool>(global1.x, false, true | (true | global1.x), !(var_2.d.x < u_input.b))), var_0.x, true);
    return Struct_4(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * -516f), 107f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-148f)))))), any(select(select(!vec4<bool>(false, true, global1.x, false), vec4<bool>(global2.x, arg_1.b, true, false), select(vec4<bool>(global1.x, var_0.x, true, global1.x), vec4<bool>(global2.x, false, var_2.c, true), vec4<bool>(false, false, true, false))), select(vec4<bool>(var_0.x, true, arg_1.b, var_2.c), select(vec4<bool>(false, var_2.c, arg_1.b, true), vec4<bool>(arg_1.b, true, global2.x, true), false), vec4<bool>(true, false, var_0.x, false)), true)));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_4(func_2(vec4<i32>(_wgslsmith_mult_i32(arg_0, firstTrailingBit(43120i)), arg_0, arg_0, -2147483647i), -1i, u_input.a), Struct_3(Struct_1(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_0, 40981i, 0i, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(1i, arg_0, arg_0, -2147483647i))), ~vec3<u32>(18911u, 4294967295u, u_input.b) ^ (vec3<u32>(1u, u_input.a, 106921u) ^ vec3<u32>(1u, 44631u, 13480u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 0u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 82u, 4617u), vec3<u32>(u_input.a, u_input.a, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(1u, 1u, 1u), vec3<u32>(45453u, 1u, 72372u))), vec3<i32>(-8382i, ~0i, ~arg_0)), global2.x && global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f) - 703f), Struct_1(min(vec4<i32>(40445i, arg_0, -2147483647i, arg_0), -vec4<i32>(-15199i, arg_0, arg_0, arg_0)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(select(u_input.a, u_input.b, global1.x), select(11337u, u_input.b, global2.x), ~4294967295u), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, -2147483647i, 25277i))))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<u32>(u_input.b, 29493u, 42766u)), vec3<u32>(u_input.a, u_input.a, u_input.a)), ~(~vec3<u32>(20246u, 22199u, 63636u))));
    var var_1 = vec3<i32>(20787i, min(2147483647i, arg_0), arg_0);
    var var_2 = Struct_2(max(var_1.xx, -select(var_1.yz << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), firstLeadingBit(var_1.zx), true)), _wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(-var_0.a)), !func_4(~(u_input.a >> (1u % 32u)), Struct_3(Struct_1(vec4<i32>(var_1.x, var_1.x, -22704i, arg_0), vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.a, 47411u), vec3<i32>(arg_0, var_1.x, -2147483647i)), any(vec4<bool>(global1.x, false, true, false)), _wgslsmith_f_op_f32(-2025f - var_0.a), Struct_1(vec4<i32>(arg_0, 14119i, -1i, 2147483647i), vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(u_input.b, u_input.a, 64107u), vec3<i32>(1i, var_1.x, 2147483647i))), (0u & u_input.b) << (1u % 32u)).b, min(~(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b) >> (abs(vec4<u32>(u_input.b, 64171u, 35233u, u_input.b)) % vec4<u32>(32u))), vec4<u32>(u_input.b & 1u, ~(~u_input.a), u_input.a, u_input.b)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-116f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    let var_4 = 4937i;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(-1204f, _wgslsmith_f_op_f32(f32(-1f) * -327f), global1.x));
    let var_1 = vec4<u32>(u_input.a, u_input.b, u_input.b, ~(_wgslsmith_div_u32(~u_input.b, _wgslsmith_div_u32(u_input.b, u_input.a)) & 32449u));
    global1 = !global2.yy;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1680f, -205f, var_2.c)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1637f, 571f, 1000f, var_2.c) + vec4<f32>(-1978f, var_0, var_2.c, -641f))))))));
    let var_4 = ~(~var_2.a.d);
    global1 = vec2<bool>(!(!global1.x), var_2.b);
    var_3 = vec4<f32>(-713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -2007f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-var_2.d.d.x >> (~1u % 32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(204f)))))));
    let var_5 = func_4(select(var_2.a.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.a.c.x, 0u), firstLeadingBit(vec2<u32>(0u, 0u))), abs(~var_1.yz)), ~(~1u) != max(_wgslsmith_add_u32(var_1.x, var_2.d.c.x), u_input.b)), global0[_wgslsmith_index_u32(~(~func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(23136i, var_2.d.d.x, 1i, -1i), vec4<i32>(52526i, 1i, 2147483647i, var_4.x)), var_4.x, u_input.a)), 10u)], ~11605u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -746f))));
}

