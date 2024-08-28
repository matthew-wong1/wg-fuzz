struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.a.c.a - arg_1.c.b.a), ~_wgslsmith_div_u32(global0.x, u_input.c) < _wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.x, u_input.c, 4294967295u, 1u) & u_input.a), abs(u_input.a)));
    var var_2 = Struct_3(Struct_2(!arg_1.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2189f, -788f, arg_0.x, 1489f) + vec4<f32>(arg_0.x, 753f, arg_1.c.b.a.x, arg_0.x))), true), arg_1.a.b, vec2<i32>(_wgslsmith_mult_i32(-10936i, arg_1.e.x), _wgslsmith_dot_vec2_i32(var_0, arg_1.c.d)) | -vec2<i32>(arg_2, 13311i), true), arg_1.c.a, arg_1.a, select(!arg_1.d, vec3<bool>(~u_input.a.x > ~global0.x, true, !arg_1.d.x), var_1.b), ~(_wgslsmith_mult_vec4_i32(arg_1.e, ~arg_1.e) >> (vec4<u32>(4294967295u, ~30942u, ~global0.x, 1u) % vec4<u32>(32u))));
    return _wgslsmith_clamp_i32(var_0.x, _wgslsmith_mod_i32(-1i, abs(firstLeadingBit(2147483647i & arg_1.c.d.x))), 39626i);
}

fn func_2() -> bool {
    let var_0 = !(_wgslsmith_sub_i32(countOneBits(1i), ~func_3(vec2<f32>(769f, 981f), Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<f32>(410f, 1789f, -402f, 1000f), false), Struct_1(vec4<f32>(621f, -812f, -768f, -622f), false), u_input.b, true), vec2<bool>(false, true), Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(959f, -1363f, 2417f, -1612f), false), Struct_1(vec4<f32>(341f, 482f, 1744f, 1087f), true), u_input.b, true), vec3<bool>(true, false, false), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x)), 14055i)) <= -22888i);
    let var_1 = Struct_3(Struct_2(vec2<bool>((-1i <= u_input.b.x) | (global0.x <= 18904u), any(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, false, true)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1056f), 1f, _wgslsmith_f_op_f32(-344f * -699f), _wgslsmith_f_op_f32(245f + 1000f)), true), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1056f, 557f, 1331f, -923f)))), !all(vec2<bool>(var_0, true))), min(abs(abs(u_input.b)), vec2<i32>(u_input.b.x ^ -2147483647i, 1i)), !var_0), vec2<bool>(false, !var_0), Struct_2(vec2<bool>(true, var_0), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), 295f, _wgslsmith_f_op_f32(712f * 190f), -287f), !all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-182f, 769f, 571f, 2172f), vec4<f32>(-1186f, -1000f, 1057f, 1786f)), vec4<f32>(-885f, 133f, 2047f, 294f))), true), u_input.b, var_0), vec3<bool>(var_0, any(select(vec3<bool>(true, var_0, true), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, true), var_0), vec3<bool>(false, var_0, true))), firstTrailingBit(u_input.b.x & -1i) >= -62126i), firstTrailingBit(vec4<i32>(i32(-1i) * -2147483647i, -41440i ^ _wgslsmith_mult_i32(-1i, u_input.b.x), ~(-1i) | firstTrailingBit(u_input.b.x), -2147483647i)));
    global0 = ~vec3<u32>(6782u, u_input.a.x << (~(~global0.x) % 32u), global0.x);
    global1 = ~(~(var_1.a.d.x | -14816i));
    return all(!(!vec3<bool>(true, any(vec3<bool>(var_1.a.a.x, true, true)), 15271u < global0.x)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = var_0.a.c.a.x;
    let var_2 = Struct_5(~(~u_input.a.wy), !all(!var_0.a.a), select(vec2<bool>(arg_0, true), select(select(vec2<bool>(arg_2.c.c.b, true), arg_2.a.a, all(var_0.c.a)), arg_2.c.a, vec2<bool>(arg_2.d.x, 10429i <= var_0.a.d.x)), !vec2<bool>(var_0.d.x, any(vec4<bool>(true, true, var_0.d.x, arg_2.b.x)))), arg_2.c);
    var var_3 = var_2;
    global0 = vec3<u32>(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(global0.x, 1u), var_2.a.x) ^ 1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(72470u, global0.x, var_3.a.x, 4294967295u), u_input.a)), ~max(var_2.a.x, var_2.a.x)), ~1u), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, u_input.a.x) >> (1u % 32u), 4294967295u));
    return var_0;
}

fn func_1() -> Struct_3 {
    global1 = u_input.b.x;
    global0 = vec3<u32>(u_input.c, 19881u, 0u);
    return func_4(func_2(), min(firstLeadingBit(vec3<u32>(global0.x, _wgslsmith_mult_u32(66511u, 50146u), 1u)), u_input.a.yyy), Struct_3(Struct_2(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)), Struct_1(vec4<f32>(2291f, 2387f, 1235f, 333f), true), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(350f, 1000f, 326f, 930f), vec4<f32>(103f, 481f, 1621f, 1000f)), all(vec2<bool>(true, false))), ~(vec2<i32>(u_input.b.x, 1i) << (global0.zz % vec2<u32>(32u))), true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true)))), Struct_2(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-357f, -417f, -162f, 359f))), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, 169f, -534f, 1395f)), u_input.b.x <= 8509i), max(u_input.b, vec2<i32>(-2147483647i, 10163i) & u_input.b), (u_input.b.x != -19293i) && any(vec4<bool>(true, false, false, true))), vec3<bool>(false, true, false), vec4<i32>(-24176i, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(849f, 122f)), Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(vec4<f32>(-636f, 742f, -970f, 549f), true), Struct_1(vec4<f32>(-1254f, -1428f, 1852f, -1797f), true), u_input.b, false), vec2<bool>(true, true), Struct_2(vec2<bool>(false, true), Struct_1(vec4<f32>(-273f, -1149f, -1940f, -1073f), false), Struct_1(vec4<f32>(-727f, 536f, -707f, -618f), true), u_input.b, true), vec3<bool>(true, false, true), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, -1i)), u_input.b.x), ~_wgslsmith_mult_i32(-1i, u_input.b.x), u_input.b.x)), ~((40440u >> (max(65u, global0.x) % 32u)) << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 1u, u_input.c)), firstLeadingBit(u_input.a)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(108056u, u_input.c, u_input.c);
    let var_0 = 56905u;
    var var_1 = func_1();
    var var_2 = u_input.a;
    var_1 = Struct_3(func_4(false, u_input.a.xxx, Struct_3(var_1.c, var_1.a.a, Struct_2(vec2<bool>(var_1.a.a.x, var_1.d.x), Struct_1(var_1.a.c.a, var_1.c.b.b), func_1().a.b, vec2<i32>(2147483647i, u_input.b.x), var_1.d.x), !select(var_1.d, var_1.d, false), vec4<i32>(var_1.c.d.x, -13777i, u_input.b.x, -1i) & -vec4<i32>(28277i, 45047i, var_1.a.d.x, var_1.c.d.x)), global0.x).a, vec2<bool>(func_1().a.c.b | any(!var_1.d), select(true, var_1.d.x, var_1.d.x)), Struct_2(!var_1.b, var_1.c.b, func_4(func_1().a.e, vec3<u32>(1u, var_2.x, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 0u)), Struct_3(Struct_2(vec2<bool>(var_1.a.c.b, true), var_1.a.c, Struct_1(vec4<f32>(var_1.c.c.a.x, -606f, -795f, var_1.c.b.a.x), var_1.b.x), vec2<i32>(var_1.a.d.x, 24895i), false), var_1.a.a, func_1().a, func_1().d, -var_1.e), 1u).c.b, vec2<i32>(u_input.b.x, 2147483647i ^ var_1.a.d.x), var_1.d.x), vec3<bool>(!(1300f <= _wgslsmith_f_op_f32(-var_1.a.c.a.x)), ((u_input.b.x >= u_input.b.x) || !var_1.b.x) && false, !var_1.b.x), vec4<i32>(var_1.a.d.x, ~_wgslsmith_mod_i32(var_1.e.x, ~(-2147483647i)), ~(-abs(-1i)), u_input.b.x));
    var var_3 = func_4(true, _wgslsmith_clamp_vec3_u32(u_input.a.xzw, u_input.a.xyz, var_2.wzw) | vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(var_2.yx, var_2.zw & global0.xx), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_0), ~var_2.xx)), func_4(var_1.a.d.x == 0i, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_0, 32555u, 52028u)), ~var_2.wxx, select(u_input.a.yxw, vec3<u32>(u_input.c, var_0, var_2.x), !var_1.d)), func_4(true, _wgslsmith_sub_vec3_u32(vec3<u32>(71813u, var_2.x, 1u), vec3<u32>(1u, 4294967295u, var_2.x)), Struct_3(var_1.a, select(vec2<bool>(var_1.d.x, false), var_1.a.a, vec2<bool>(false, var_1.b.x)), func_4(true, vec3<u32>(var_2.x, 4294967295u, 35024u), Struct_3(Struct_2(vec2<bool>(var_1.d.x, true), var_1.a.b, Struct_1(var_1.a.c.a, var_1.b.x), vec2<i32>(-5978i, 0i), var_1.b.x), var_1.a.a, Struct_2(vec2<bool>(true, var_1.a.c.b), var_1.a.c, Struct_1(var_1.a.b.a, var_1.b.x), vec2<i32>(-39420i, -2147483647i), true), vec3<bool>(true, true, var_1.d.x), vec4<i32>(var_1.e.x, -46361i, var_1.a.d.x, u_input.b.x)), var_2.x).a, vec3<bool>(var_1.b.x, var_1.d.x, true), vec4<i32>(17296i, var_1.e.x, var_1.a.d.x, var_1.c.d.x) >> (vec4<u32>(var_0, u_input.a.x, 4294967295u, var_2.x) % vec4<u32>(32u))), var_0 & _wgslsmith_add_u32(var_2.x, var_2.x)), 4294967295u), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.c.b.a.x)), _wgslsmith_f_op_f32(-var_1.a.c.a.x))), _wgslsmith_f_op_f32(select(-137f, -3147f, false)), var_1.a.b.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.a.x) * _wgslsmith_f_op_f32(floor(-132f)))))), var_3.c.b.a.x, u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, -12586i), _wgslsmith_sub_i32(var_3.e.x, var_1.c.d.x << (~u_input.c % 32u))));
}

