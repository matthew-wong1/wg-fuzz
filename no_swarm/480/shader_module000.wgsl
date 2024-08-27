struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> i32 {
    return -34476i;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec2<bool> {
    let var_0 = vec2<u32>((u_input.c << ((1u | u_input.a) % 32u)) & firstTrailingBit(~_wgslsmith_sub_u32(45887u, u_input.a)), _wgslsmith_mult_u32(~4294967295u, u_input.c));
    let var_1 = Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_1 > 0i, !(!arg_0.x)), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.a, u_input.b), vec4<u32>(1u, var_0.x, var_0.x, 27627u))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, var_0.x, var_0.x)), ~vec4<u32>(u_input.b, u_input.a, 1u, 42668u))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 35816u)), abs(~vec3<u32>(u_input.c, 105335u, u_input.a))), func_3(u_input.d.wwz, Struct_2(Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec3<u32>(var_0.x, 10865u, 1u), u_input.d.x), Struct_1(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<u32>(20093u, u_input.b, 1u, var_0.x), vec3<u32>(1u, var_0.x, 4294967295u), -13804i), firstTrailingBit(vec3<u32>(26244u, 0u, u_input.a))))), Struct_1(vec4<bool>(true, true, arg_0.x, !(!arg_0.x)), max(~(~vec4<u32>(u_input.b, 15283u, 53373u, 1u)), vec4<u32>(var_0.x, 46716u, 66409u, 25432u) >> (countOneBits(vec4<u32>(90629u, var_0.x, u_input.c, 4294967295u)) % vec4<u32>(32u))), select(~_wgslsmith_mod_vec3_u32(vec3<u32>(44357u, 1u, 1864u), vec3<u32>(var_0.x, 4294967295u, 22934u)), select(~vec3<u32>(u_input.b, 0u, 16646u), vec3<u32>(var_0.x, 26785u, u_input.c), vec3<bool>(true, true, false)), true), arg_1), _wgslsmith_mult_vec3_u32(select(~_wgslsmith_sub_vec3_u32(vec3<u32>(7582u, u_input.a, 1794u), vec3<u32>(var_0.x, 61188u, 16808u)), max(~vec3<u32>(u_input.c, 0u, 0u), ~vec3<u32>(0u, 4294967295u, 0u)), all(vec2<bool>(true, arg_0.x))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 54714u, var_0.x), abs(vec3<u32>(7321u, u_input.b, 1u))))));
    let var_2 = reverseBits(_wgslsmith_clamp_u32(~firstTrailingBit(u_input.c) & 8685u, 0u, _wgslsmith_dot_vec4_u32(var_1.a.b, countOneBits(~var_1.a.b))));
    return vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(114865u > var_0.x, var_1.a.a.x), var_1.a.a.wy)), true);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = ~select(~_wgslsmith_div_u32(u_input.c | 0u, 0u), 36898u, ~arg_2.b.d != ~(-2147483647i << (u_input.c % 32u)));
    var_0 = max(_wgslsmith_sub_u32(arg_2.a.c.x, u_input.b), abs(4294967295u)) | arg_1.a.x;
    var_0 = ~0u;
    var_0 = _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_2.b.b.x & 0u, max(_wgslsmith_mult_u32(u_input.a, 73239u), _wgslsmith_clamp_u32(u_input.b, arg_1.b, arg_1.b))), 1u);
    let var_1 = arg_2.b.b;
    return Struct_2(Struct_1(arg_1.c, var_1, var_1.xwx, _wgslsmith_dot_vec3_i32(firstTrailingBit(select(u_input.d.xwy, u_input.d.zww, false)), u_input.d.xzz)), Struct_1(select(vec4<bool>(true, arg_3.x, true, true), !(!arg_1.c), !arg_3.x), arg_2.a.b, abs(arg_1.a), ~1i), vec3<u32>(1u, 50474u, _wgslsmith_sub_u32(1u, var_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 35870u, arg_3.b, var_0.b.x), var_0.b), (vec4<u32>(u_input.c, 4294967295u, arg_3.b, 99123u) >> (vec4<u32>(33721u, arg_2, 1u, 50799u) % vec4<u32>(32u))) >> (vec4<u32>(0u, u_input.c, 0u, 3926u) % vec4<u32>(32u))) ^ arg_2;
    var var_2 = func_4(-785f, Struct_3(arg_3.a, _wgslsmith_mult_u32(arg_3.a.x, ~59220u), !select(select(arg_0.b.a, arg_3.c, arg_3.c.x), arg_3.c, !arg_0.b.a)), func_4(498f, Struct_3(vec3<u32>(~arg_3.b, reverseBits(39912u), var_0.b.x | var_0.c.x), _wgslsmith_add_u32(func_4(1000f, arg_3, Struct_2(arg_0.b, arg_0.b, arg_3.a), var_0.a.xx).a.c.x, select(4294967295u, 105550u, false)), arg_3.c), arg_0, vec2<bool>(select(!arg_3.c.x, true, false), true)), !func_2(select(arg_0.a.a.zww, arg_3.c.zxz, func_2(vec3<bool>(true, arg_0.a.a.x, false), -2147483647i).x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.d, 53038i, 0i, arg_0.a.d), -u_input.d))).a;
    let var_3 = select(!var_0.a.x, !arg_3.c.x, false);
    var_1 = arg_0.b.c.x;
    return 488f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(ceil(385f)), Struct_3(vec3<u32>(6466u, 4294967295u, u_input.a), u_input.a, vec4<bool>(false, false, true, false)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(44089u, u_input.a, 15252u, 66472u), vec3<u32>(4294967295u, u_input.b, u_input.a), u_input.d.x), Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(1u, 4294967295u, u_input.a, u_input.b), vec3<u32>(1u, 6590u, 3978u), u_input.d.x), vec3<u32>(9268u, u_input.c, u_input.b)), func_2(vec3<bool>(true, true, false), u_input.d.x)), u_input.d.x, _wgslsmith_mult_u32(~u_input.c, 1u), Struct_3(firstLeadingBit(vec3<u32>(39904u, u_input.b, u_input.a)), ~29470u, func_4(389f, Struct_3(vec3<u32>(50820u, 0u, u_input.a), 44953u, vec4<bool>(false, true, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(12911u, 4294967295u, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.b, 10749u), -1i), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(18060u, 76485u, u_input.a, 1u), vec3<u32>(0u, 0u, 34067u), 28771i), vec3<u32>(37572u, 26304u, 6014u)), vec2<bool>(true, true)).a.a)))) + 2493f);
    let var_1 = func_4(_wgslsmith_f_op_f32(func_5(func_4(var_0, Struct_3(reverseBits(vec3<u32>(73163u, u_input.c, u_input.c)), u_input.c, vec4<bool>(false, false, true, false)), Struct_2(func_4(var_0, Struct_3(vec3<u32>(65270u, 19773u, 1u), 15713u, vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec4<u32>(u_input.a, u_input.c, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.c, 4294967295u), u_input.d.x), Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(0u, u_input.c, 4294967295u, 9342u), vec3<u32>(47819u, 4294967295u, 55336u), u_input.d.x), vec3<u32>(u_input.b, 0u, u_input.c)), vec2<bool>(false, true)).b, Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(50586u, u_input.c, 32892u, 1u), vec3<u32>(u_input.a, 1u, u_input.b), 1i), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec2<bool>(true, any(vec3<bool>(false, true, true)))), _wgslsmith_add_i32(~(-3737i), 1i) & u_input.d.x, 4294967295u, Struct_3(vec3<u32>(1u, u_input.c, _wgslsmith_div_u32(1u, 4294967295u)), ~(u_input.b & u_input.a), select(vec4<bool>(false, true, true, true), func_4(var_0, Struct_3(vec3<u32>(u_input.c, u_input.c, u_input.b), u_input.b, vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, u_input.c, u_input.c, 1u), vec3<u32>(u_input.a, 12642u, 41800u), u_input.d.x), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(1u, 0u, 778u, u_input.b), vec3<u32>(u_input.c, u_input.c, 45987u), u_input.d.x), vec3<u32>(u_input.c, u_input.c, 18750u)), vec2<bool>(true, true)).a.a, func_4(var_0, Struct_3(vec3<u32>(88434u, u_input.c, u_input.c), 0u, vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(u_input.a, 4230u, 0u, u_input.a), vec3<u32>(u_input.c, u_input.b, 0u), u_input.d.x), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(u_input.a, u_input.c, 16139u, 73507u), vec3<u32>(41450u, 4294967295u, u_input.c), 1i), vec3<u32>(u_input.b, 59433u, u_input.a)), vec2<bool>(true, true)).b.a.x)))), Struct_3(vec3<u32>(0u, _wgslsmith_add_u32(u_input.a, 4294967295u), 1u), ~u_input.b, vec4<bool>(true, true, true, true)), Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(24607u, u_input.b, u_input.c), vec3<u32>(2563u, 6825u, u_input.c)), firstLeadingBit(u_input.c), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(15852u, u_input.a, 0u, u_input.c), vec3<u32>(4294967295u, 57066u, u_input.b), u_input.d.x), func_4(-922f, Struct_3(vec3<u32>(78346u, 41184u, 20270u), u_input.b, vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(1u, 4294967295u, 3264u, u_input.c), vec3<u32>(0u, 9131u, u_input.b), u_input.d.x), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(u_input.a, u_input.a, 62890u, u_input.b), vec3<u32>(24440u, 1u, u_input.c), u_input.d.x), vec3<u32>(u_input.c, u_input.a, u_input.b)), vec2<bool>(true, true)).b, vec3<u32>(u_input.b, 0u, u_input.b)), vec2<bool>(true, true)).a, Struct_1(vec4<bool>(true, true, true, true), reverseBits(vec4<u32>(u_input.b, 0u, 16988u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 44353u, u_input.c), vec3<u32>(u_input.c, u_input.c, 4294967295u)) << ((vec3<u32>(1u, 8102u, u_input.b) >> (vec3<u32>(u_input.a, 35497u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.d.x), _wgslsmith_mod_vec3_u32(select(vec3<u32>(4294967295u, u_input.b, 33247u), vec3<u32>(u_input.b, u_input.b, u_input.c), true), vec3<u32>(u_input.b, 39997u, 42879u) << (vec3<u32>(u_input.a, u_input.b, 1775u) % vec3<u32>(32u))) << (select(~vec3<u32>(u_input.a, u_input.b, 4294967295u), ~vec3<u32>(u_input.c, u_input.c, 1u), true) % vec3<u32>(32u))), !func_4(-1984f, Struct_3(vec3<u32>(u_input.c, 27074u, 26653u), 72241u, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), func_4(var_0, Struct_3(vec3<u32>(27788u, u_input.b, 4294967295u), u_input.a, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(23085u, 0u, u_input.c, 1u), vec3<u32>(u_input.c, 52343u, 0u), -2147483647i), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.c), vec3<u32>(u_input.a, 64475u, 39123u), 0i), vec3<u32>(4294967295u, u_input.a, u_input.a)), vec2<bool>(true, true)), vec2<bool>(true, false)).a.a.wx);
    let var_2 = u_input.d.x;
    let var_3 = var_1.b;
    return Struct_1(func_4(var_0, Struct_3(firstTrailingBit(func_4(var_0, Struct_3(var_3.c, var_1.c.x, var_1.b.a), var_1, var_3.a.wx).c), ~_wgslsmith_sub_u32(14314u, var_1.a.c.x), vec4<bool>(any(var_1.b.a.xzx), !var_1.b.a.x, true, true)), Struct_2(Struct_1(var_1.b.a, ~var_3.b, var_1.a.c, min(var_2, 2147483647i)), Struct_1(!vec4<bool>(false, var_1.b.a.x, var_3.a.x, true), ~var_3.b, abs(vec3<u32>(1u, 1u, 0u)), u_input.d.x), abs(_wgslsmith_clamp_vec3_u32(var_1.a.c, vec3<u32>(var_1.b.b.x, 4294967295u, 80379u), var_1.a.c))), !var_1.b.a.yy).a.a, max(var_1.a.b, vec4<u32>(var_1.c.x, select(_wgslsmith_dot_vec3_u32(var_3.b.xyz, var_1.a.b.www), _wgslsmith_mod_u32(var_1.b.b.x, var_3.b.x), var_1.b.a.x == true), _wgslsmith_sub_u32(12173u, firstLeadingBit(4294967295u)), var_3.c.x)), _wgslsmith_add_vec3_u32(~var_3.b.wwx, ~firstTrailingBit(select(vec3<u32>(1u, u_input.b, var_1.b.c.x), vec3<u32>(0u, 0u, var_1.a.b.x), var_3.a.x))), var_3.d);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(~abs(max(countOneBits(vec3<u32>(1u, 0u, 4294967295u)), ~vec3<u32>(arg_1.b.x, u_input.a, 37175u))), func_1().c.x, arg_1.a);
    let var_1 = _wgslsmith_mod_i32(u_input.d.x, -4521i) | -reverseBits(30342i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-534f, 1306f, -656f), vec3<f32>(1051f, 1000f, -320f), true)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, -854f))), vec3<f32>(-690f, 1000f, var_2.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-569f, var_2.x)), -717f, _wgslsmith_f_op_f32(var_2.x - 1430f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, 147f), vec3<f32>(1000f, var_2.x, var_2.x)), vec3<f32>(var_2.x, 773f, var_2.x)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1094f, var_2.x, var_2.x), vec3<f32>(var_2.x, var_2.x, var_2.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -1450f, 1000f), vec3<f32>(var_2.x, var_2.x, -326f), true)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(427f, var_2.x, var_2.x), vec3<f32>(-1738f, 892f, var_2.x)))))));
    return func_4(-621f, var_0, func_4(_wgslsmith_f_op_f32(-2357f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, var_2.x)))), Struct_3(func_4(_wgslsmith_f_op_f32(var_2.x * var_2.x), var_0, func_4(-819f, Struct_3(var_0.a, 4294967295u, var_0.c), Struct_2(arg_1, Struct_1(vec4<bool>(arg_1.a.x, arg_0.x, true, arg_0.x), arg_1.b, vec3<u32>(28142u, 4294967295u, arg_1.b.x), var_1), var_0.a), vec2<bool>(true, false)), func_2(arg_1.a.wzz, 0i)).c, min(var_0.a.x, 0u), vec4<bool>(33753u != u_input.b, true, true, func_1().a.x)), Struct_2(func_1(), Struct_1(arg_1.a, vec4<u32>(var_0.a.x, 38714u, 59148u, 4294967295u) >> (arg_1.b % vec4<u32>(32u)), ~var_0.a, -2147483647i), ~_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, u_input.c, 6757u))), func_2(var_0.c.zzz, ~(~arg_1.d))), arg_1.a.xy);
}

fn func_7(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0.b.a.x;
    var var_1 = vec4<u32>(func_1().c.x, _wgslsmith_mult_u32(36834u, 66983u), countOneBits(~min(firstTrailingBit(84643u), 1u)), firstTrailingBit(22806u) >> (~u_input.b % 32u));
    var_1 = ~vec4<u32>(u_input.b, arg_0.a.c.x, 19910u, _wgslsmith_add_u32(11589u, var_1.x << (arg_0.c.x % 32u))) >> ((func_6(!func_4(-798f, Struct_3(vec3<u32>(31579u, 4294967295u, arg_0.c.x), 95234u, vec4<bool>(var_0, true, false, true)), arg_0, vec2<bool>(arg_0.a.a.x, false)).b.a.yw, Struct_1(!arg_0.b.a, vec4<u32>(64027u, u_input.c, arg_0.a.b.x, var_1.x) << (vec4<u32>(var_1.x, 50272u, 4294967295u, 56091u) % vec4<u32>(32u)), var_1.xyy, firstTrailingBit(-2866i))).b.b & ~(~(~vec4<u32>(u_input.b, 73771u, 16060u, 4294967295u)))) % vec4<u32>(32u));
    let var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(var_2.b.b.x, var_2.c.x), 49402u, _wgslsmith_sub_u32(func_6(!var_2.a.a.wy, func_4(-691f, Struct_3(vec3<u32>(var_1.x, 38697u, u_input.c), arg_0.a.c.x, vec4<bool>(var_2.b.a.x, true, false, false)), Struct_2(arg_0.a, arg_0.a, vec3<u32>(14550u, arg_0.c.x, var_1.x)), arg_0.b.a.zw).a).c.x, arg_0.b.c.x)), ~(~(vec4<u32>(u_input.a, arg_0.a.c.x, 103354u, arg_0.a.c.x) >> (var_2.b.b % vec4<u32>(32u)))) & vec4<u32>(select(arg_0.c.x, var_2.b.c.x & var_2.c.x, func_6(var_2.a.a.wz, arg_0.a).a.a.x), 0u, arg_0.a.b.x, func_4(_wgslsmith_f_op_f32(func_5(var_2, -13720i, 4294967295u, Struct_3(arg_0.a.b.ywz, 14619u, var_2.b.a))), Struct_3(vec3<u32>(arg_0.a.b.x, var_2.b.c.x, u_input.b), arg_0.c.x, vec4<bool>(true, var_2.a.a.x, arg_0.b.a.x, true)), var_2, func_6(arg_0.a.a.zw, arg_0.b).a.a.zz).a.b.x));
    return reverseBits(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(vec2<u32>(u_input.a, firstTrailingBit(1u)) >> (_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, u_input.a), true), firstLeadingBit(vec2<u32>(1u, u_input.c))) % vec2<u32>(32u)));
    var_0 = reverseBits(vec2<u32>(func_7(func_6(vec2<bool>(false, true), func_1())), 4294967295u));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(762f, 429f))))))), -503f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)))), -1450f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -568f);
    var_0 = min(reverseBits(~(vec2<u32>(44674u, u_input.a) & vec2<u32>(1u, u_input.b))), firstTrailingBit(vec2<u32>(~var_0.x, u_input.b))) ^ (~vec2<u32>(~39895u, func_1().b.x) << (~(min(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(19949u, 4294967295u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(2350u, var_0.x), vec2<u32>(u_input.a, 34058u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_0 = firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(8966u, var_0.x), vec2<u32>(30576u, 1u))) | firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(79051u, u_input.c), vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.c, u_input.c))));
    var_0 = vec2<u32>(10162u, firstLeadingBit(1u));
    var_0 = func_6(select(vec2<bool>(true, true), func_4(-132f, Struct_3(min(vec3<u32>(var_0.x, 0u, 4294967295u), vec3<u32>(var_0.x, 43549u, u_input.c)), ~101340u, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)), Struct_2(func_4(438f, Struct_3(vec3<u32>(1u, 0u, var_0.x), 81687u, vec4<bool>(false, true, true, true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(33073u, u_input.c, 3353u, 43042u), vec3<u32>(22543u, u_input.a, var_0.x), u_input.d.x), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(0u, u_input.c, 77114u, 0u), vec3<u32>(var_0.x, var_0.x, 105286u), u_input.d.x), vec3<u32>(29294u, var_0.x, 1u)), vec2<bool>(false, false)).a, Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(21887u, u_input.a, 0u, 12212u), vec3<u32>(var_0.x, 1380u, var_0.x), u_input.d.x), vec3<u32>(41761u, 29924u, 11752u)), vec2<bool>(any(vec3<bool>(true, false, true)), var_0.x != u_input.a)).b.a.yz, true), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, true)), false, true, false), vec4<bool>(true, true, false, 63385u != u_input.a)), ~(vec4<u32>(81290u, u_input.c, var_0.x, var_0.x) & vec4<u32>(var_0.x, 6382u, 1u, 23917u)) | vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.c, 0u), vec3<u32>(26538u, u_input.c, 0u)), var_0.x >> (4294967295u % 32u), var_0.x), ~(~vec3<u32>(1u, 0u, 37868u)), u_input.d.x)).b.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 546f, 1f, _wgslsmith_f_op_f32(func_5(func_6(vec2<bool>(false, true), Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(0u, u_input.a, 12939u, 4294967295u), vec3<u32>(0u, 74827u, 7098u), 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1536i, u_input.d.x, u_input.d.x), u_input.d.wwy), u_input.a, Struct_3(vec3<u32>(1u, 12876u, 1u), var_0.x, vec4<bool>(false, true, false, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x))), max(4294967295u, func_7(Struct_2(func_6(vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, true, true), vec4<u32>(var_0.x, u_input.a, u_input.c, u_input.c), vec3<u32>(var_0.x, var_0.x, 4294967295u), 2147483647i)).b, func_1(), vec3<u32>(u_input.b, 1u, 67295u)))), 0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1696f + -389f))), 1901f));
}

