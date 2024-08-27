struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(true, 1706f, true), Struct_1(true, -657f, true)), Struct_2(Struct_1(true, -1000f, true), Struct_1(true, 1158f, true)), Struct_2(Struct_1(true, -1304f, true), Struct_1(true, -2131f, false)), Struct_2(Struct_1(false, -438f, false), Struct_1(true, 342f, true)), Struct_2(Struct_1(false, -1502f, false), Struct_1(true, -1707f, true)), Struct_2(Struct_1(true, -690f, true), Struct_1(false, -1572f, true)), Struct_2(Struct_1(true, -1988f, false), Struct_1(false, -1463f, false)), Struct_2(Struct_1(true, 1437f, true), Struct_1(true, 1264f, false)), Struct_2(Struct_1(false, -653f, false), Struct_1(false, -1892f, false)), Struct_2(Struct_1(false, -103f, false), Struct_1(true, 603f, false)), Struct_2(Struct_1(true, -189f, false), Struct_1(true, -928f, true)), Struct_2(Struct_1(true, -349f, true), Struct_1(false, -414f, false)), Struct_2(Struct_1(false, -806f, true), Struct_1(true, -2272f, false)), Struct_2(Struct_1(false, -1000f, false), Struct_1(false, 438f, false)), Struct_2(Struct_1(true, 692f, true), Struct_1(true, -552f, false)), Struct_2(Struct_1(true, 278f, false), Struct_1(true, 424f, true)), Struct_2(Struct_1(false, 2660f, true), Struct_1(false, -391f, false)), Struct_2(Struct_1(false, 1110f, true), Struct_1(true, 1022f, false)), Struct_2(Struct_1(false, 765f, true), Struct_1(true, -1000f, true)), Struct_2(Struct_1(false, -899f, true), Struct_1(false, -1000f, true)), Struct_2(Struct_1(true, 1000f, false), Struct_1(false, 1156f, true)), Struct_2(Struct_1(true, 1251f, true), Struct_1(true, 1629f, true)), Struct_2(Struct_1(false, 259f, false), Struct_1(false, -264f, false)));

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2634f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-338f, -2145f, 487f, -743f))))))), vec4<f32>(1636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1353f)), _wgslsmith_f_op_f32(-383f + 274f), select(true, false, true)))))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, any(vec3<bool>(true, true, true)), true), vec4<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), false, ~u_input.c.x < ~arg_0), !vec4<bool>(true, select(false, true, true), any(vec2<bool>(true, false)), true)));
    var_0 = Struct_3(1532f, _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + 2210f) + _wgslsmith_f_op_f32(1417f + -1307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-265f * var_0.a) * -378f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * var_0.a), _wgslsmith_f_op_f32(ceil(-1260f)))))), select(select(var_0.d, var_0.c, all(vec3<bool>(var_0.c.x, var_0.d.x, false))), !select(!var_0.c, vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), true), vec4<bool>(var_0.c.x, !all(vec4<bool>(var_0.c.x, true, true, true)), true, var_0.d.x)), var_0.c);
    global0 = array<Struct_2, 23>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, var_0.a, var_0.b.x, _wgslsmith_f_op_f32(-1000f - var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 1000f, 989f, var_0.b.x), var_0.b)))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    global1 = array<Struct_2, 32>();
    let var_0 = ~(~max(~(~vec2<u32>(u_input.a, arg_0)), ~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, arg_0))));
    let var_1 = 59282u >> ((1u << (_wgslsmith_sub_u32(u_input.a, ~67878u) % 32u)) % 32u);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(min(738f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -284f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~2147483647i)) + vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 1254f), arg_1.x))), select(vec4<bool>(~var_0.x == select(4294967295u, var_1, true), true, 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, 1u, u_input.a), vec4<u32>(4294967295u, 36u, 11586u, u_input.a)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true)), all(vec3<bool>(false, -2147483647i >= u_input.d, true))), !vec4<bool>(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x)).x != _wgslsmith_div_f32(arg_1.x, arg_1.x), true, true, true));
    let var_3 = u_input.c;
    return -1i;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_2, 32>();
    let var_0 = true;
    let var_1 = !vec3<bool>(var_0, false, arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_1.b)) - arg_1.b)) * -1075f);
    let var_3 = !any(!(!vec3<bool>(arg_1.c, var_1.x, arg_1.a)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(109f, -431f, arg_1.x, arg_1.x), arg_1, true)) + vec4<f32>(arg_2.b, arg_2.b, 206f, -1658f))))));
    global0 = array<Struct_2, 23>();
    let var_1 = select(vec3<bool>(all(vec4<bool>(false, arg_0.a, arg_0.c, arg_0.a)) & true, !all(vec3<bool>(false, true, false)), false), vec3<bool>(arg_0.a, arg_2.a, arg_0.a), !func_4(!(!vec4<bool>(false, arg_2.a, false, false)), Struct_1(u_input.c.x == u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1806f), all(vec2<bool>(arg_0.a, arg_2.a))), vec3<i32>(i32(-1i) * -2147483647i, 32401i, -u_input.c.x)).a);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_1.x, var_0.x)), 1874f));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_4 {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-226f, arg_3.x, false)))) < -868f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-757f + -2064f))), true), arg_3, func_4(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(abs(-1000f)) <= _wgslsmith_f_op_f32(-arg_3.x)), Struct_1(_wgslsmith_f_op_f32(trunc(-1586f)) > _wgslsmith_f_op_f32(f32(-1f) * -113f), 1042f, false), vec3<i32>(func_2(arg_1, vec3<f32>(arg_3.x, arg_3.x, arg_3.x)), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, 13663i, arg_0.x), vec4<i32>(0i, arg_2.x, arg_0.x, arg_2.x))) & ~(arg_2 | arg_0))));
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(floor(var_0));
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1924f - var_2) * -603f), _wgslsmith_div_vec4_f32(arg_3, arg_3), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    var var_0 = func_1(u_input.b, 46121u ^ (~u_input.a << (u_input.a % 32u)), vec3<i32>(24008i, -u_input.b.x, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var var_1 = vec2<u32>(22164u, ~8241u);
    var_0 = Struct_4(func_1(vec3<i32>(-1i) * -abs(vec3<i32>(u_input.b.x, 44186i, u_input.c.x)), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(26908u, u_input.a), ~44091u, ~1u << (~var_1.x % 32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -19751i, 13882i), vec3<i32>(u_input.d, u_input.b.x, -1i), u_input.b) & (_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.d), vec3<i32>(u_input.b.x, -45294i, u_input.b.x)) | (u_input.b >> (vec3<u32>(22101u, 4533u, 26312u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(var_0.a.b * vec4<f32>(_wgslsmith_f_op_f32(var_0.a.a * 1262f), -621f, _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(var_0.a.a * -269f)))).a);
    var var_2 = vec3<u32>(~48751u, ~4294967295u, ~max(min(_wgslsmith_div_u32(31017u, 4294967295u), 1u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, -38100i), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), ~(-2147483647i)), min(~(~vec2<i32>(u_input.b.x, -8390i)), u_input.c), var_0.a.d.x));
}

