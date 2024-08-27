struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, 1802f, 799f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -501f)))), 882f), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), vec3<bool>(_wgslsmith_div_i32(u_input.a.x, u_input.c) >= _wgslsmith_div_i32(u_input.c, u_input.a.x), all(vec2<bool>(false, true)), true), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))));
    var_0 = Struct_2(var_0.a, var_0.b);
    var_0 = Struct_2(var_0.a, !vec3<bool>(false, var_0.b.x, !var_0.b.x));
    let var_1 = reverseBits(~(i32(-1i) * -5562i));
    var var_2 = u_input.b;
    return true;
}

fn func_4(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1383f, 311f, 415f, -479f)) + vec4<f32>(1f, _wgslsmith_div_f32(-952f, -1107f), 510f, _wgslsmith_f_op_f32(-1000f * 809f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1247f, _wgslsmith_f_op_f32(-722f + -873f)))), 448f), select(select(arg_0, !select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false)), select(arg_0, select(arg_0, arg_0, vec3<bool>(true, arg_0.x, true)), vec3<bool>(true, arg_0.x, arg_0.x))), !(!select(arg_0, arg_0, vec3<bool>(arg_0.x, arg_0.x, true))), false));
    var_0 = Struct_2(var_0.a, arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.a.zxz));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_div_f32(-949f, 2234f))), _wgslsmith_f_op_f32(var_0.a.c - 345f), _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-591f, _wgslsmith_f_op_f32(-1264f * var_1.x))), -1000f, arg_0.x))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a + var_0.a.a));
    return var_0.b.x;
}

fn func_2() -> u32 {
    let var_0 = vec2<bool>(func_4(select(vec3<bool>(true, true, true), vec3<bool>(u_input.c == -4890i, func_3(), true), false)), true);
    let var_1 = !vec3<bool>(false, true, var_0.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1313f, 895f, -2264f, 587f) + vec4<f32>(596f, 1357f, -432f, -168f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, -728f, 563f, 451f))), !vec4<bool>(true, var_0.x, var_1.x, var_1.x))), 113f, -1702f), vec3<bool>(true | select(true, true, !var_1.x), true, any(!(!var_1.zy))));
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(var_2.a.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, -240f, 654f, 166f) * var_2.a.a), vec4<f32>(-349f, -1342f, var_2.a.c, -1940f))))), _wgslsmith_div_f32(var_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.a.x, -427f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(var_2.a.b + var_2.a.c))))), var_2.b);
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~(~u_input.b.x), u_input.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.d) ^ _wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(u_input.d, u_input.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), ~u_input.b.xx), vec2<u32>(~u_input.b.x, u_input.b.x << (u_input.d % 32u)))), ~(~_wgslsmith_add_vec2_u32(~u_input.b.yy, ~u_input.b.zz)));
    return ~471u;
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(357f))), _wgslsmith_f_op_f32(-1480f + _wgslsmith_f_op_f32(min(-815f, 216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(105f, 304f))), -703f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_div_f32(1470f, 484f), _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(693f + -1622f))), vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), true, all(vec3<bool>(true, true, true)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2254f)))) + -1146f), _wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -112f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f + var_0.a.x) - _wgslsmith_f_op_f32(-var_0.c))))));
    var var_2 = vec2<bool>(!any(vec2<bool>(true, true)), false);
    var var_3 = Struct_3(select(!vec2<bool>(var_2.x, var_2.x), !select(vec2<bool>(false, true), vec2<bool>(var_2.x, var_2.x), true), 90917i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(u_input.c, u_input.a.x, u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, 813f, -1000f, -186f) + var_0.a))), var_1, var_1), vec3<bool>(var_2.x, _wgslsmith_mult_i32(u_input.a.x, u_input.c) < ~(-53411i), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wwy)) - var_0.a.xwz));
    let var_4 = var_0.a.yw;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_3.b.a.a, vec4<f32>(-297f, -1000f, var_3.c.x, 603f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.a.a.x, -105f, -1000f, -1000f))))), var_3.c.x, -473f), vec3<bool>((_wgslsmith_f_op_f32(-var_1) >= -428f) != !(var_3.c.x <= 274f), !(_wgslsmith_f_op_f32(trunc(-207f)) <= _wgslsmith_div_f32(159f, var_4.x)), ~select(6721u, arg_0, var_2.x) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.b.x), vec3<u32>(4294967295u, arg_0, arg_0))));
}

fn func_1() -> Struct_2 {
    var var_0 = max(_wgslsmith_add_vec2_u32(u_input.b.xy, _wgslsmith_sub_vec2_u32(select(u_input.b.xy, firstTrailingBit(u_input.b.yz), false), u_input.b.xy ^ max(vec2<u32>(u_input.b.x, u_input.d), vec2<u32>(23525u, u_input.b.x)))), abs(vec2<u32>(~33997u, ~1u)) & u_input.b.zx);
    var_0 = abs((~(vec2<u32>(u_input.b.x, 36379u) << (vec2<u32>(u_input.b.x, u_input.d) % vec2<u32>(32u))) | vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, var_0.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.d, u_input.b.x, 4294967295u, 12817u)))) >> (~u_input.b.xy % vec2<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -270f)))));
    var var_2 = any(vec2<bool>(!all(vec2<bool>(false, true)), true)) & true;
    let var_3 = vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))) || ((true & all(vec2<bool>(true, false))) || true), !any(vec2<bool>(true, true)));
    return func_5(func_2());
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = arg_1.a.a.wy;
    let var_1 = Struct_2(func_5(u_input.d).a, !select(vec3<bool>(all(vec4<bool>(true, arg_1.b.x, arg_1.b.x, true)), false, !arg_1.b.x), select(vec3<bool>(false, true, arg_1.b.x), func_1().b, false), any(!vec2<bool>(arg_1.b.x, arg_1.b.x))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(2548f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f * arg_1.a.b)))), 593f);
    let var_2 = vec4<bool>(!arg_1.b.x, all(arg_1.b.yz), false, !arg_1.b.x);
    let var_3 = var_1.a;
    return reverseBits(reverseBits(u_input.b) & _wgslsmith_div_vec3_u32(u_input.b, reverseBits(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_6(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-5570i, 48186i) ^ u_input.a), vec2<i32>(-6232i, -2147483647i)), func_1());
    var var_1 = Struct_2(func_5(~u_input.b.x).a, select(vec3<bool>(true, true, any(vec4<bool>(false, true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), -44417i >= u_input.c), (_wgslsmith_div_u32(var_0.x, 0u) ^ u_input.b.x) < ~_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(u_input.b.x, u_input.d))));
    var_1 = Struct_2(func_5(40084u).a, select(select(func_5(10518u).b, select(var_1.b, var_1.b, var_1.b.x == false), func_4(vec3<bool>(true, var_1.b.x, var_1.b.x)) == !var_1.b.x), !func_5(firstLeadingBit(18020u)).b, true));
    let var_2 = var_1.a.a;
    let var_3 = select(select(vec4<bool>(false, (u_input.c | u_input.c) == ~u_input.c, (var_1.b.x | true) & !var_1.b.x, var_1.b.x), !vec4<bool>(true, func_1().b.x, true, var_1.b.x && true), select(select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, false), select(vec4<bool>(false, var_1.b.x, false, var_1.b.x), vec4<bool>(false, var_1.b.x, true, var_1.b.x), false)), select(vec4<bool>(true, false, var_1.b.x, false), !vec4<bool>(false, false, false, var_1.b.x), select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(true, var_1.b.x, var_1.b.x, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false))), true)), vec4<bool>(var_1.b.x && !var_1.b.x, abs(i32(-1i) * -2147483647i) > -u_input.c, var_1.b.x, (!var_1.b.x | all(vec3<bool>(false, var_1.b.x, var_1.b.x))) && (false && (true & var_1.b.x))), !(!select(select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, true, false, true), var_1.b.x), !vec4<bool>(false, false, var_1.b.x, var_1.b.x), !vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x))));
    var var_4 = Struct_2(Struct_1(vec4<f32>(-770f, func_5(func_2()).a.b, var_2.x, var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * var_1.a.c) + _wgslsmith_f_op_f32(min(-1173f, var_1.a.b)))), vec3<bool>(!(firstTrailingBit(-24649i) >= _wgslsmith_clamp_i32(u_input.c, u_input.a.x, u_input.a.x)), !all(var_3.wx), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, u_input.c, 5045i, -1i)), var_1.a.b);
}

