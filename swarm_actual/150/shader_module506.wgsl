struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_4,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec2<i32>(2147483647i, -15389i), 1i, vec2<bool>(true, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(vec2<i32>(-1i, -7450i), 1i, vec2<bool>(false, true), vec2<i32>(-16491i, 2147483647i)), Struct_4(vec2<i32>(-1i, 16597i), 2147483647i, vec2<bool>(true, false), vec2<i32>(-19665i, -12623i)), Struct_4(vec2<i32>(1038i, i32(-2147483648)), 15431i, vec2<bool>(false, true), vec2<i32>(74446i, -182i)), Struct_4(vec2<i32>(-1i, -60871i), 10645i, vec2<bool>(false, false), vec2<i32>(9985i, 13771i)), Struct_4(vec2<i32>(-1i, 0i), -29873i, vec2<bool>(true, false), vec2<i32>(28533i, -53556i)), Struct_4(vec2<i32>(2147483647i, 23306i), -69538i, vec2<bool>(false, false), vec2<i32>(2147483647i, 2147483647i)), Struct_4(vec2<i32>(2147483647i, 0i), -16762i, vec2<bool>(true, false), vec2<i32>(2147483647i, 2147483647i)), Struct_4(vec2<i32>(0i, i32(-2147483648)), 0i, vec2<bool>(true, true), vec2<i32>(1i, 0i)), Struct_4(vec2<i32>(9527i, i32(-2147483648)), -4132i, vec2<bool>(false, false), vec2<i32>(-1i, 2147483647i)), Struct_4(vec2<i32>(-14799i, 0i), 1i, vec2<bool>(false, false), vec2<i32>(24331i, 2147483647i)), Struct_4(vec2<i32>(6599i, -64444i), 9515i, vec2<bool>(true, false), vec2<i32>(0i, 0i)), Struct_4(vec2<i32>(-81001i, 1958i), 46952i, vec2<bool>(false, false), vec2<i32>(-1i, 1i)), Struct_4(vec2<i32>(53480i, i32(-2147483648)), i32(-2147483648), vec2<bool>(true, false), vec2<i32>(0i, 2416i)), Struct_4(vec2<i32>(-1i, 19005i), -9086i, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 7045i)), Struct_4(vec2<i32>(-22944i, -1i), 0i, vec2<bool>(false, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(vec2<i32>(-34683i, 0i), 0i, vec2<bool>(true, false), vec2<i32>(46156i, -1650i)), Struct_4(vec2<i32>(2147483647i, i32(-2147483648)), 7801i, vec2<bool>(true, false), vec2<i32>(60125i, 1i)), Struct_4(vec2<i32>(2147483647i, i32(-2147483648)), 0i, vec2<bool>(true, false), vec2<i32>(9343i, i32(-2147483648))), Struct_4(vec2<i32>(43976i, i32(-2147483648)), i32(-2147483648), vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 695i)), Struct_4(vec2<i32>(-1i, 5398i), 1i, vec2<bool>(true, false), vec2<i32>(-25850i, -23144i)), Struct_4(vec2<i32>(1i, -609i), 10914i, vec2<bool>(true, false), vec2<i32>(1i, 2147483647i)), Struct_4(vec2<i32>(10880i, 17701i), -23206i, vec2<bool>(false, false), vec2<i32>(-6222i, -3263i)), Struct_4(vec2<i32>(82851i, -29198i), -99475i, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -36285i)), Struct_4(vec2<i32>(-1i, 2147483647i), 1i, vec2<bool>(true, true), vec2<i32>(1i, 1i)), Struct_4(vec2<i32>(1i, 1i), 75330i, vec2<bool>(false, false), vec2<i32>(-162i, 2147483647i)), Struct_4(vec2<i32>(1i, 11395i), i32(-2147483648), vec2<bool>(true, true), vec2<i32>(0i, 0i)), Struct_4(vec2<i32>(259i, -22709i), -1i, vec2<bool>(false, true), vec2<i32>(-8776i, 42961i)), Struct_4(vec2<i32>(-30813i, -4422i), 0i, vec2<bool>(true, false), vec2<i32>(1i, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global0 = array<Struct_4, 29>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.e, 29u)];
    var var_1 = vec2<bool>(var_0.c.x, true);
    let var_2 = all(select(select(select(select(vec3<bool>(var_0.c.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_0.c.x)), !vec3<bool>(var_0.c.x, var_1.x, true), !vec3<bool>(var_0.c.x, true, false)), !vec3<bool>(var_1.x, true, var_0.c.x), _wgslsmith_f_op_f32(round(-683f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1251f)), !vec3<bool>(true, any(vec2<bool>(false, var_0.c.x)), true), !var_0.c.x));
    var var_3 = Struct_5(Struct_2(countOneBits(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.c, u_input.e, u_input.e), vec4<u32>(89393u, u_input.e, 1077u, 4294967295u)))), Struct_1(9296u, vec3<bool>(var_1.x || true, true, var_0.c.x), vec2<bool>(!var_1.x, false), u_input.e)), Struct_4(vec2<i32>(0i, _wgslsmith_mod_i32(var_0.b, select(var_0.a.x, var_0.d.x, false))), reverseBits(28643i), var_0.c, ~vec2<i32>(1i, 6510i)), global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(4294967295u, ~4621u)), 29u)], vec3<i32>(-9588i, ~(-1i), i32(-1i) * -1216i), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, abs(63339u), _wgslsmith_mod_u32(4294967295u, 36147u), countOneBits(u_input.c)), vec4<u32>(u_input.e, u_input.e, u_input.e | 44846u, 4294967295u)), Struct_1(_wgslsmith_mult_u32(8969u, _wgslsmith_mult_u32(u_input.c, u_input.c)), select(!vec3<bool>(true, var_0.c.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_0.c.x), select(vec3<bool>(false, var_0.c.x, true), vec3<bool>(false, var_2, var_1.x), vec3<bool>(true, true, true))), !select(var_0.c, vec2<bool>(true, false), var_0.c), ~(~17334u))));
    return var_3.c.c.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    global0 = array<Struct_4, 29>();
    let var_0 = !select(!(!vec4<bool>(arg_2.b.x, true, arg_2.c.x, arg_1)), vec4<bool>(!any(vec3<bool>(arg_2.c.x, arg_1, false)), !func_3(), any(!vec4<bool>(arg_1, false, true, true)), true), all(vec4<bool>(arg_1 && false, arg_2.d <= arg_0, !arg_2.c.x, true)));
    let var_1 = global0[_wgslsmith_index_u32(max(arg_0, 4294967295u), 29u)];
    global0 = array<Struct_4, 29>();
    let var_2 = arg_3;
    return vec4<u32>(~arg_2.d, firstLeadingBit(~0u), _wgslsmith_add_u32(firstTrailingBit(1u), ~firstTrailingBit(u_input.e) >> (arg_0 % 32u)), 1u);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_2(arg_1.a, Struct_1(~10284u, !vec3<bool>(arg_3.x, false, false), vec2<bool>(any(select(vec3<bool>(arg_1.b.c.x, true, true), vec3<bool>(arg_1.b.b.x, false, false), arg_3.x)), 1507f == arg_0), select(~firstLeadingBit(u_input.c), 56073u, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(min(-1661f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(arg_0))) + -689f))), arg_0, 1660f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(var_1.x, -1123f)), var_1.x, _wgslsmith_f_op_f32(select(-488f, -1112f, true))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(arg_0 + var_1.x), -993f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -793f), -270f, 408f))))));
    let var_3 = Struct_5(arg_1, Struct_4(-abs(~vec2<i32>(u_input.a.x, u_input.d.x)), -arg_2.x, arg_3.xz, firstLeadingBit(~u_input.a) & -u_input.d.xw), Struct_4(vec2<i32>(1815i, -_wgslsmith_add_i32(arg_2.x, -8163i)), _wgslsmith_add_i32(~u_input.d.x, select(u_input.d.x, u_input.a.x, var_0.b.c.x)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), var_0.b.c, var_0.b.b.yy), ~(arg_2.zz >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)))), abs(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a.x, u_input.d.x, 0i, -2147483647i))), _wgslsmith_mod_i32(-arg_2.x, u_input.b.x), min(firstTrailingBit(u_input.d.x), min(arg_2.x, -4468i)))), arg_1);
    var var_4 = !select(select(select(select(vec4<bool>(var_3.e.b.c.x, false, true, var_0.b.b.x), arg_3, true), vec4<bool>(false, arg_3.x, arg_3.x, false), all(vec4<bool>(arg_1.b.b.x, var_0.b.b.x, false, var_0.b.c.x))), arg_3, select(!arg_3, vec4<bool>(arg_3.x, false, arg_3.x, arg_1.b.c.x), select(vec4<bool>(false, var_0.b.c.x, true, true), vec4<bool>(arg_1.b.b.x, false, false, false), var_0.b.b.x))), !(!select(vec4<bool>(var_3.a.b.b.x, var_3.e.b.c.x, var_0.b.c.x, var_0.b.b.x), vec4<bool>(false, var_0.b.b.x, arg_3.x, false), arg_3)), !arg_3.x);
    return u_input.e;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = arg_0.b.c.x;
    let var_1 = _wgslsmith_clamp_i32(min(arg_2.x, -2147483647i), (41411i << (_wgslsmith_clamp_u32(26934u, abs(u_input.e), 0u) % 32u)) & _wgslsmith_add_i32(_wgslsmith_add_i32(firstTrailingBit(u_input.d.x), u_input.d.x), countOneBits(669i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(-arg_2, -(~arg_2))));
    let var_2 = global0[_wgslsmith_index_u32(func_4(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-arg_1)), Struct_2(~_wgslsmith_add_vec4_u32(func_2(538u, true, arg_0.b, arg_0.a.ww), ~arg_0.a), Struct_1(arg_0.a.x, vec3<bool>(arg_0.b.b.x, select(arg_0.b.b.x, arg_0.b.b.x, false), arg_0.b.c.x), !vec2<bool>(arg_0.b.b.x, false), 30810u)), vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -2147483647i), ~(~var_1) & (36085i >> (arg_0.a.x % 32u)), ~(~_wgslsmith_clamp_i32(5973i, arg_2.x, 0i)), arg_2.x << (reverseBits(select(21887u, 7295u, arg_0.b.c.x)) % 32u)), select(select(!(!vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.c.x, false)), !(!vec4<bool>(false, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.c.x)), select(vec4<bool>(false, arg_0.b.c.x, arg_0.b.c.x, arg_0.b.b.x), vec4<bool>(true, true, false, true), !vec4<bool>(false, true, arg_0.b.c.x, false))), select(select(select(vec4<bool>(arg_0.b.b.x, false, true, true), vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, false, true), vec4<bool>(true, true, arg_0.b.c.x, false)), !vec4<bool>(arg_0.b.b.x, false, arg_0.b.b.x, false), !vec4<bool>(false, false, arg_0.b.c.x, true)), !(!vec4<bool>(false, false, arg_0.b.c.x, true)), vec4<bool>(true == arg_0.b.b.x, true, all(vec4<bool>(true, true, true, arg_0.b.b.x)), arg_0.b.c.x)), vec4<bool>(arg_0.b.c.x, _wgslsmith_f_op_f32(sign(-171f)) < -220f, -206f != arg_1, !arg_0.b.c.x))), 29u)];
    var var_3 = vec4<f32>(-2111f, 1323f, arg_1, arg_1);
    var_0 = var_2.c.x;
    return arg_0.a.wx;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_4, 29>();
    let var_0 = select(~(~(~abs(vec3<u32>(arg_0, u_input.c, 1u)))), ~_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, arg_0, u_input.e)), ~(~vec3<u32>(arg_0, 4294967295u, 1u))), true);
    let var_1 = Struct_1(~var_0.x, select(select(arg_2.b, select(vec3<bool>(arg_2.c.x, false, arg_2.b.x), select(vec3<bool>(arg_2.c.x, true, true), arg_2.b, arg_2.b.x), !arg_2.b), any(select(vec2<bool>(false, arg_2.b.x), vec2<bool>(arg_2.c.x, false), vec2<bool>(false, arg_2.c.x)))), !vec3<bool>(select(arg_2.c.x, false, true), true, any(vec3<bool>(arg_2.c.x, true, arg_2.b.x))), !arg_2.b.x), select(select(!arg_2.c, !arg_2.c, any(!vec4<bool>(true, arg_2.b.x, arg_2.b.x, true))), select(!arg_2.c, select(select(arg_2.b.zy, arg_2.c, true), select(arg_2.b.yy, vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.b.x), true), arg_2.b.yx), all(arg_2.b) != false), arg_0);
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    return Struct_3(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * arg_3)), 2285f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(918f))))))), arg_2.c.x, vec4<u32>(abs(1u), max(func_1(Struct_2(vec4<u32>(17295u, 1u, 0u, u_input.e), var_1), 1000f, ~vec3<i32>(arg_1.x, 29015i, arg_1.x)).x, 35827u), 0u, ~var_0.x), Struct_1(1u, vec3<bool>(func_3(), true, any(vec4<bool>(arg_2.b.x, arg_2.b.x, var_1.c.x, var_1.b.x))), var_1.c, firstTrailingBit(firstTrailingBit(20871u) ^ var_1.d)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~(~4294967295u), ~_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(arg_2.d, arg_2.d, 0u))), vec3<u32>(~_wgslsmith_mod_u32(arg_0, 1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, var_1.a), ~26908u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 29>();
    let var_0 = func_5(~_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(65956u, u_input.c), vec2<u32>(u_input.e, 0u)), func_1(Struct_2(vec4<u32>(0u, 24787u, 1u, 1u), Struct_1(4294967295u, vec3<bool>(true, true, true), vec2<bool>(true, true), u_input.c)), 249f, vec3<i32>(-29269i, u_input.b.x, u_input.d.x)))), _wgslsmith_mult_vec4_i32(vec4<i32>(-(~57112i), u_input.a.x, 0i, -abs(-5016i)), _wgslsmith_mult_vec4_i32(-u_input.d, u_input.d)), Struct_1(firstLeadingBit(~30866u) & u_input.c, vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, true), vec2<bool>(u_input.a.x == ~u_input.b.x, select(true, true, true)), ~(u_input.c << (1u % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)))));
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_1 = -30381i;
    global0 = array<Struct_4, 29>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -144f))) * _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~1u | var_0.d.a, var_0.d.b.x, var_0.d, ~vec2<u32>(func_5(4294967295u, u_input.d, var_0.d, var_2).c.x, firstLeadingBit(4258u))).zy, ~vec2<u32>(1u, var_0.c.x));
}

