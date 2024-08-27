struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(88626u, 2147483647i, i32(-2147483648)), Struct_1(0u, 108841i, i32(-2147483648)), vec3<bool>(true, true, true), vec3<i32>(4926i, 31480i, 79753i)), Struct_2(Struct_1(88972u, i32(-2147483648), 1i), Struct_1(0u, -14853i, -20797i), vec3<bool>(true, false, true), vec3<i32>(2147483647i, i32(-2147483648), -3539i)), Struct_2(Struct_1(1u, 24104i, i32(-2147483648)), Struct_1(0u, -5465i, 26509i), vec3<bool>(true, false, false), vec3<i32>(-83771i, 1i, -55012i)), Struct_2(Struct_1(2993u, -861i, -16937i), Struct_1(19030u, 1i, i32(-2147483648)), vec3<bool>(false, false, true), vec3<i32>(-39748i, 47599i, -17240i)), Struct_2(Struct_1(1u, 0i, 0i), Struct_1(4294967295u, i32(-2147483648), 16183i), vec3<bool>(true, false, true), vec3<i32>(-59328i, -10485i, 2147483647i)), Struct_2(Struct_1(0u, 2147483647i, i32(-2147483648)), Struct_1(26290u, 23928i, 1i), vec3<bool>(true, true, true), vec3<i32>(-1i, 40990i, -1i)), Struct_2(Struct_1(0u, 0i, 1i), Struct_1(0u, -18833i, -2433i), vec3<bool>(true, false, false), vec3<i32>(66789i, 0i, -1i)), Struct_2(Struct_1(44307u, -2920i, 0i), Struct_1(1u, -1920i, -1i), vec3<bool>(true, true, true), vec3<i32>(0i, 58259i, 1i)), Struct_2(Struct_1(0u, -1i, 2147483647i), Struct_1(31782u, -44226i, 1i), vec3<bool>(true, false, false), vec3<i32>(-16347i, -29772i, 0i)), Struct_2(Struct_1(1u, 41249i, 0i), Struct_1(4294967295u, 1i, -22927i), vec3<bool>(false, true, false), vec3<i32>(0i, 31770i, 1i)), Struct_2(Struct_1(1168u, 2147483647i, -30068i), Struct_1(1u, 41365i, i32(-2147483648)), vec3<bool>(true, true, true), vec3<i32>(55750i, 1i, 2147483647i)), Struct_2(Struct_1(13497u, -1i, i32(-2147483648)), Struct_1(60656u, -41724i, -1i), vec3<bool>(false, true, true), vec3<i32>(-1i, -45870i, 2147483647i)), Struct_2(Struct_1(4294967295u, 0i, 0i), Struct_1(8442u, -1i, 1i), vec3<bool>(true, false, true), vec3<i32>(-77110i, 0i, 1i)), Struct_2(Struct_1(1u, 39616i, 1i), Struct_1(1u, 0i, -1i), vec3<bool>(false, true, true), vec3<i32>(2147483647i, 1i, 37495i)), Struct_2(Struct_1(43438u, 18293i, i32(-2147483648)), Struct_1(4294967295u, 2147483647i, 1254i), vec3<bool>(false, false, false), vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(15431u, -1i, -1i), Struct_1(5691u, 1i, i32(-2147483648)), vec3<bool>(true, false, true), vec3<i32>(2147483647i, 2147483647i, 43284i)), Struct_2(Struct_1(4294967295u, -6128i, 2147483647i), Struct_1(4294967295u, -23023i, -33267i), vec3<bool>(true, false, false), vec3<i32>(-1i, -3258i, 1i)), Struct_2(Struct_1(44970u, 0i, -14615i), Struct_1(14038u, 2147483647i, -32233i), vec3<bool>(false, true, true), vec3<i32>(0i, 24753i, 42413i)));

var<private> global1: array<vec2<u32>, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<u32>, 16>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(~max(14863u, 107433u), 0u), (-1i << (_wgslsmith_clamp_u32(58828u, 6857u, u_input.d.x) % 32u)) ^ min(2147483647i, -38139i), u_input.a ^ 21812i), Struct_1(u_input.e, _wgslsmith_mod_i32(-u_input.c.x | 4056i, 1i), u_input.a), !vec3<bool>(-u_input.a == 32984i, false, false), reverseBits(vec3<i32>(1i, u_input.b, u_input.c.x)));
    var var_1 = vec3<i32>(var_0.d.x, u_input.c.x, var_0.b.b);
    global0 = array<Struct_2, 18>();
    var var_2 = global0[_wgslsmith_index_u32(var_0.b.a, 18u)];
    return reverseBits(_wgslsmith_mult_vec4_i32(abs(-vec4<i32>(0i, var_2.d.x, u_input.a, var_1.x)), u_input.c >> (min(_wgslsmith_sub_vec4_u32(vec4<u32>(3126u, 27231u, u_input.d.x, 57499u), vec4<u32>(var_2.b.a, 0u, 42885u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 50265u, 4187u, u_input.d.x), vec4<u32>(u_input.e, 1u, var_2.a.a, var_2.a.a))) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(~23662u, -_wgslsmith_mod_i32(arg_0.x, -4137i), -19574i), Struct_1(1u, u_input.a >> ((u_input.e & 1u) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(0i, 40714i, u_input.b, u_input.c.x)), max(vec4<i32>(2147483647i, arg_0.x, u_input.a, -16932i), vec4<i32>(arg_0.x, 1i, -17453i, arg_0.x)))), vec3<bool>(true, !all(vec2<bool>(true, false)), false), ~vec3<i32>(-arg_0.x, u_input.b, 33951i)), Struct_1(~(~u_input.e), countOneBits(_wgslsmith_sub_i32(arg_0.x, 1i)), -_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.x, -55861i), u_input.a)), func_3(), Struct_1(41909u, _wgslsmith_mult_i32(30519i, -20028i), 0i), abs(global1[_wgslsmith_index_u32(firstTrailingBit(1u) & u_input.d.x, 16u)]));
    return max(var_0.d.a, u_input.d.x);
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(~62181u, _wgslsmith_sub_i32(~2147483647i, min(reverseBits(~47534i), u_input.b)), ~(u_input.b & u_input.a));
    let var_1 = Struct_3(Struct_2(Struct_1(~(~arg_0), ~(-35765i), 46876i), Struct_1(~57008u, abs(var_0.b), -1i), vec3<bool>(true, true, all(vec4<bool>(false, false, true, true)) || true), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 1687i), u_input.c.xyz))), Struct_1(arg_0, -2147483647i, 25050i), vec4<i32>(reverseBits(-(var_0.b << (0u % 32u))), 0i, _wgslsmith_mult_i32((var_0.c >> (6733u % 32u)) & (var_0.b & u_input.a), var_0.c), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), u_input.c)), Struct_1(abs(firstTrailingBit(var_0.a)), u_input.a, var_0.c), countOneBits(_wgslsmith_div_vec2_u32(max(abs(vec2<u32>(0u, var_0.a)), u_input.d), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(u_input.e, arg_0)), global1[_wgslsmith_index_u32(arg_0, 16u)]))));
    let var_2 = Struct_2(Struct_1(abs(_wgslsmith_mod_u32(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, var_0.a, 1u), vec4<u32>(3358u, 69435u, 0u, var_0.a)))), abs(43896i), -1i), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0 | 1u), _wgslsmith_div_vec2_u32(abs(vec2<u32>(24556u, var_0.a)), vec2<u32>(16826u, var_0.a))), -3528i, _wgslsmith_div_i32(u_input.a, -1i)), select(vec3<bool>(any(vec4<bool>(var_1.a.c.x, false, false, var_1.a.c.x)), false, _wgslsmith_sub_u32(46644u, var_0.a) >= (u_input.e | 17548u)), var_1.a.c, var_1.a.c), -u_input.c.zyz);
    var var_3 = var_1;
    var var_4 = vec2<bool>(true, !any(!select(vec2<bool>(false, var_3.a.c.x), vec2<bool>(var_2.c.x, var_2.c.x), var_2.c.yz)));
    return Struct_1(~(~11983u), ~(-2147483647i << (~_wgslsmith_clamp_u32(154475u, arg_0, var_0.a) % 32u)), ~var_1.b.c);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    var var_0 = Struct_3(Struct_2(arg_1.b, arg_1.b, arg_1.a.c, abs(u_input.c.wzz >> (~vec3<u32>(6608u, u_input.e, u_input.e) % vec3<u32>(32u)))), func_4(_wgslsmith_mult_u32(_wgslsmith_mult_u32(func_2(arg_1.a.d), u_input.e), 56099u & arg_1.e.x)), u_input.c, func_4(arg_1.a.b.a), ~_wgslsmith_add_vec2_u32(abs(u_input.d), arg_1.e));
    let var_1 = ~vec3<i32>(min(1i, _wgslsmith_sub_i32(var_0.b.c, var_0.b.b)), firstTrailingBit(arg_1.c.x), _wgslsmith_mult_i32(abs(var_0.d.b), var_0.c.x)) | var_0.a.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1443f, arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)));
    let var_3 = !(var_2 && all(arg_2.wyw));
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.e;
    global0 = array<Struct_2, 18>();
    var var_1 = func_1(arg_3.wz, Struct_3(Struct_2(Struct_1(77799u, func_1(arg_3.wx, Struct_3(Struct_2(Struct_1(u_input.d.x, -16752i, 2147483647i), arg_2.b, arg_2.c, vec3<i32>(u_input.a, arg_1.x, u_input.a)), arg_2.b, vec4<i32>(0i, arg_2.a.b, 18558i, arg_1.x), arg_2.b, u_input.d), vec4<bool>(arg_2.c.x, true, arg_2.c.x, arg_2.c.x)).b.c, arg_1.x), Struct_1(~34810u, 4639i, -13338i), vec3<bool>(false, any(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, false)), !arg_2.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.b, arg_1.x, 2886i), select(arg_2.d, vec3<i32>(arg_1.x, u_input.c.x, u_input.c.x), true))), Struct_1(func_1(arg_3.xy, Struct_3(Struct_2(Struct_1(arg_2.b.a, u_input.c.x, arg_2.b.c), Struct_1(u_input.d.x, 1997i, 22564i), vec3<bool>(arg_2.c.x, false, arg_2.c.x), arg_2.d), Struct_1(20906u, arg_1.x, arg_1.x), vec4<i32>(-2147483647i, arg_1.x, 0i, u_input.c.x), Struct_1(arg_2.b.a, u_input.b, arg_1.x), u_input.d), select(vec4<bool>(true, arg_2.c.x, arg_2.c.x, true), vec4<bool>(false, arg_2.c.x, arg_2.c.x, false), arg_2.c.x)).a.a, -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_2.d.x, arg_1.x, 1i, arg_2.b.c)), select(1i, arg_2.d.x << (arg_2.b.a % 32u), !arg_2.c.x)), -u_input.c, arg_2.a, vec2<u32>(u_input.e, _wgslsmith_mod_u32(u_input.e, 1u >> (arg_2.a.a % 32u)))), select(!select(vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x), select(vec4<bool>(arg_2.c.x, true, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, true, false), vec4<bool>(false, arg_2.c.x, arg_2.c.x, false)), true), !(!select(vec4<bool>(arg_2.c.x, arg_2.c.x, true, false), vec4<bool>(arg_2.c.x, arg_2.c.x, false, false), arg_2.c.x)), !select(u_input.b == 1i, arg_2.a.a > u_input.d.x, all(arg_2.c))));
    let var_2 = select(~(abs(vec3<u32>(1u, var_1.b.a, 4294967295u)) << (~vec3<u32>(u_input.d.x, u_input.e, 0u) % vec3<u32>(32u))) | ~(~vec3<u32>(arg_2.b.a, 4294967295u, arg_2.b.a) | ~vec3<u32>(u_input.d.x, var_1.a.a, 4294967295u)), min(abs(~vec3<u32>(var_1.a.a, 0u, var_1.a.a) & ~vec3<u32>(45388u, u_input.d.x, var_1.a.a)), firstLeadingBit(vec3<u32>(var_1.a.a & u_input.d.x, ~0u, arg_2.b.a))), all(select(vec2<bool>(true || var_1.c.x, true), func_1(vec2<f32>(arg_0, 665f), Struct_3(Struct_2(var_1.a, var_1.b, vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<i32>(4460i, 0i, 1i)), var_1.a, vec4<i32>(var_1.a.b, 53240i, -25687i, var_1.a.c), arg_2.b, vec2<u32>(14322u, u_input.e)), vec4<bool>(arg_2.c.x, true, arg_2.c.x, var_1.c.x)).c.xz, vec2<bool>(true, true))));
    var var_3 = ~u_input.e;
    return Struct_1(func_4(~(var_2.x >> (firstLeadingBit(4294967295u) % 32u))).a, var_1.b.b, arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_5(_wgslsmith_div_f32(212f, _wgslsmith_f_op_f32(round(-660f))), firstTrailingBit(-vec2<i32>(-2147483647i, u_input.a)), func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(439f, -320f))), Struct_3(global0[_wgslsmith_index_u32(24149u, 18u)], Struct_1(1u, 0i, u_input.a), vec4<i32>(u_input.c.x, u_input.a, 2147483647i, -2147483647i), Struct_1(u_input.e, 2147483647i, -24151i), global1[_wgslsmith_index_u32(u_input.d.x, 16u)]), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1486f, 504f, 389f, 101f) * vec4<f32>(-978f, -1389f, 1000f, 801f))), Struct_1(u_input.e << (~55903u % 32u), -1i, 4352i), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(165f, -2170f))), Struct_3(global0[_wgslsmith_index_u32(33127u, 18u)], Struct_1(4294967295u, u_input.a, u_input.b), u_input.c, Struct_1(21661u, u_input.b, -29604i), vec2<u32>(u_input.e, u_input.d.x)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false)).c, vec3<bool>(true, true, true)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, -2147483647i, u_input.a)), Struct_1(u_input.e, -1i, -1i), -vec4<i32>(i32(-1i) * -11840i, 13933i, _wgslsmith_dot_vec2_i32(u_input.c.wy, u_input.c.yw), -1i) | func_3(), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.e), select(~vec3<u32>(u_input.d.x, u_input.e, 4294967295u), vec3<u32>(u_input.e, 69628u, 0u), true)), abs(i32(-1i) * -u_input.b), func_3().x), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(17179u, 1u), u_input.e >> (u_input.d.x % 32u))) ^ _wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(17061u, u_input.e)), vec2<u32>(u_input.e, u_input.d.x) ^ vec2<u32>(0u, 1u), true), vec2<u32>(~u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.e), vec3<u32>(4294967295u, u_input.e, u_input.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(0i, -46696i))), vec2<i32>((var_0.a.a.b >> (var_0.e.x % 32u)) | ~14405i, 1i)), ~func_4(_wgslsmith_clamp_u32(u_input.e, var_0.a.a.a, var_0.a.b.a) ^ _wgslsmith_div_u32(var_0.a.a.a, u_input.d.x)).a);
}

