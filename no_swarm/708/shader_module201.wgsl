struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))))), 126f, 1i, Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1176f))), 1953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f * -388f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f + 1504f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f * -728f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2112f)) - -1187f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(157f + -124f), _wgslsmith_f_op_f32(659f * 540f))), vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_0.a), false)), select(arg_0.a, !arg_0.a, true)), _wgslsmith_sub_u32(u_input.a.x, abs(select(u_input.a.x, 22013u, false)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, _wgslsmith_f_op_f32(f32(-1f) * -551f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1207f, 548f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(1f, 1f), arg_0.a)))));
    var var_1 = !select(select(vec4<bool>(all(vec4<bool>(var_0.d.d.x, false, var_0.d.d.x, var_0.d.d.x)), select(false, true, false), !arg_0.a, all(vec4<bool>(false, false, var_0.d.d.x, true))), vec4<bool>(select(false, var_0.d.d.x, var_0.d.d.x), true, any(vec4<bool>(false, true, var_0.d.d.x, arg_0.a)), true), arg_0.a), !(!select(vec4<bool>(var_0.d.d.x, arg_0.a, true, true), vec4<bool>(arg_0.a, true, false, false), vec4<bool>(true, var_0.d.d.x, false, true))), vec4<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), false)), _wgslsmith_mult_i32(52022i, arg_1.b) == (var_0.c & arg_1.a), true));
    var_1 = !select(vec4<bool>(!(!var_0.d.d.x), _wgslsmith_add_i32(arg_1.a, -1i) <= -arg_1.b, arg_0.a, true), vec4<bool>(any(!vec4<bool>(true, true, true, arg_0.a)), all(var_0.d.d), any(var_1.xyy), all(vec4<bool>(true, false, var_0.d.d.x, var_0.d.d.x))), 13303u < abs(firstLeadingBit(var_0.d.e)));
    var_1 = vec4<bool>(!(!all(!vec3<bool>(var_0.d.d.x, var_1.x, arg_0.a))), !var_1.x, !all(!(!vec3<bool>(var_0.d.d.x, true, true))), any(var_0.d.d));
    let var_2 = _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(arg_1.a, -2147483647i, -2147483647i)), ~vec3<i32>(arg_1.a, var_0.c, -1i))), 2147483647i);
    return any(vec2<bool>(-1637f != _wgslsmith_f_op_f32(1387f + _wgslsmith_div_f32(-412f, var_0.a)), true));
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = !func_3(Struct_5(true), Struct_3(1i, -1i << (arg_0 % 32u))) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 610f)) + _wgslsmith_div_f32(124f, -489f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f))))) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_5(false);
    var_0 = any(vec4<bool>(1i >= (_wgslsmith_mod_i32(0i, 58523i) << ((arg_0 & arg_0) % 32u)), true, true, 4294967295u == countOneBits(arg_0)));
    var_1 = Struct_5(false);
    var var_2 = u_input.b.x;
    return Struct_4(1052f, abs(abs(~(-vec2<i32>(-47842i, 1i)))), Struct_2(328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1055f))), i32(-1i) * -22617i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, -1505f, 816f, -1123f) + vec4<f32>(1000f, 324f, -1154f, -1000f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(356f, 1798f, -1000f, -621f)))), vec4<f32>(-1587f, _wgslsmith_f_op_f32(min(-475f, 766f)), _wgslsmith_f_op_f32(floor(1075f)), _wgslsmith_f_op_f32(f32(-1f) * -990f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, 1268f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-756f, 1558f) - vec2<f32>(1000f, -1000f))), vec2<bool>(!var_1.a, false), u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1082f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-140f, 202f))) + vec2<f32>(1f, 1f)))), _wgslsmith_clamp_u32(abs(u_input.b.x), ~(~(~arg_0)), ~abs(arg_0 & 56982u)), Struct_3(-min(~2147483647i, 0i), _wgslsmith_mod_i32(0i, -abs(2147483647i))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(arg_0.a)), ~(arg_0.b & select(~vec2<i32>(-2147483647i, 1i), func_2(arg_0.d).b, arg_0.c.d.d.x)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-140f, arg_0.a)) * _wgslsmith_f_op_f32(trunc(arg_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a))), reverseBits(reverseBits(2147483647i)), arg_0.c.d, arg_0.c.d.b.yx), _wgslsmith_dot_vec3_u32(vec3<u32>(76569u, ~_wgslsmith_sub_u32(u_input.a.x, arg_0.c.d.e), 1u), _wgslsmith_sub_vec3_u32(u_input.b.xwy, ~u_input.a.zzz ^ ~vec3<u32>(4294967295u, u_input.b.x, 4294967295u))), Struct_3(max(firstTrailingBit(12680i), arg_0.c.c), -arg_0.e.a));
    let var_1 = Struct_3(-1i, 0i);
    let var_2 = func_2(u_input.b.x).e;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_add_vec2_i32(~arg_0.b, arg_0.b), Struct_2(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_clamp_i32(var_2.a, -(var_2.b ^ var_1.a), var_1.b), func_2(u_input.b.x).c.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.c.e.x, -1000f), arg_0.a))), _wgslsmith_clamp_u32(firstLeadingBit(arg_0.c.d.e), u_input.b.x, _wgslsmith_mod_u32(~14359u, ~arg_0.c.d.e)), arg_0.e);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.b + -273f) * _wgslsmith_f_op_f32(arg_0.a * -1273f))), arg_0.c.b), -1035f);
    return Struct_3(arg_0.e.b, _wgslsmith_sub_i32(26609i, select(12289i, _wgslsmith_sub_i32(firstLeadingBit(var_2.b), 7379i), var_0.c.d.d.x)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f))));
    var var_1 = 0i;
    let var_2 = func_4(func_2(1u));
    return _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-var_0), all(vec4<bool>(false, false, false, false))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(-_wgslsmith_sub_i32(countOneBits(0i), reverseBits(~(-30907i))), -2147483647i);
    let var_1 = Struct_5(arg_0);
    let var_2 = Struct_1(vec4<f32>(arg_1.c.x, arg_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-132f - _wgslsmith_f_op_f32(ceil(arg_1.b.x))))), arg_1.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.b.x, arg_1.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.b)))))), _wgslsmith_f_op_vec2_f32(ceil(arg_1.b.zw)), select(vec2<bool>(true, true), vec2<bool>(arg_1.d.x, false), func_2(_wgslsmith_dot_vec2_u32(u_input.b.wz | u_input.b.xz, _wgslsmith_clamp_vec2_u32(u_input.b.yx, vec2<u32>(arg_1.e, 1u), vec2<u32>(u_input.b.x, u_input.a.x)))).c.d.d), abs(arg_1.e));
    var var_3 = func_2(31846u).c.d;
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_3.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2104f, var_2.a.x, 2059f, var_3.a.x), var_3.b, vec4<bool>(false, arg_0, arg_0, arg_1.d.x))), var_2.a), !vec4<bool>(arg_1.d.x, var_3.d.x, var_2.d.x, false))))), _wgslsmith_f_op_vec4_f32(-var_2.a), var_2.b.zw, var_3.d, 1u >> (_wgslsmith_sub_u32(3024u, firstTrailingBit(select(1u, var_2.e, arg_0))) % 32u));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec3<bool>) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(arg_1.c & -arg_1.c, -2147483647i));
    var var_1 = func_2(u_input.a.x).e;
    var var_2 = !vec4<bool>(true, !func_3(arg_2, Struct_3(var_1.b, arg_1.c)) && !arg_2.a, ~arg_1.d.e < 1u, !arg_3.x);
    var_1 = Struct_3(_wgslsmith_clamp_i32(arg_1.c, 2147483647i, select(1i, var_0, !arg_1.d.d.x) | 10888i), 0i);
    let var_3 = 0i;
    return !var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(false, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1()), -197f, 1698f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -1000f, 844f) - vec4<f32>(112f, -2079f, 1188f, 168f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2239f, -585f))), select(func_2(u_input.b.x).c.d.d, vec2<bool>(false, true), all(vec3<bool>(false, false, false))), 30480u)), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(f32(-1f) * -270f), _wgslsmith_clamp_i32(1i, firstTrailingBit(-87433i), 3694i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(430f + 311f), _wgslsmith_f_op_f32(floor(-1209f)), func_5(false, Struct_1(vec4<f32>(-393f, 727f, 1299f, -156f), vec4<f32>(1000f, -1434f, 512f, -233f), vec2<f32>(592f, 933f), vec2<bool>(false, true), 0u)).a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, 257f, 182f, 560f)), vec2<f32>(1f, 1f), vec2<bool>(true, true), _wgslsmith_clamp_u32(9891u, ~17040u, u_input.b.x ^ 1u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, 660f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-327f, 1299f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(140f, -1289f))))))), Struct_5(false), vec3<bool>(true, true, true));
    var var_1 = firstTrailingBit(~u_input.b.yxx);
    let var_2 = func_2(~var_1.x);
    var_1 = ~vec3<u32>(reverseBits(u_input.a.x), ~_wgslsmith_div_u32(~1u, ~var_2.d), var_1.x);
    var_1 = vec3<u32>(30342u, 9371u, _wgslsmith_div_u32(var_1.x, ~(~0u) << (var_2.c.d.e % 32u)));
    var_1 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_2.c.d.e, 1u >> (u_input.a.x % 32u)), vec3<u32>(_wgslsmith_add_u32(~var_1.x, min(u_input.a.x, var_2.c.d.e)), _wgslsmith_clamp_u32(var_1.x, ~u_input.a.x, ~u_input.b.x), ~30692u));
    let var_3 = var_2.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.e.a, _wgslsmith_add_i32(2147483647i, -2147483647i), -2147483647i) & vec3<i32>(firstLeadingBit(0i), var_2.e.b & 0i, min(0i, var_2.c.c)), vec3<i32>(var_2.c.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_2.e.b, var_2.c.c, var_2.c.c), vec4<i32>(var_2.c.c, 4491i, var_2.b.x, var_2.b.x)), max(var_2.c.c, _wgslsmith_mult_i32(-68309i, var_2.c.c)))), ~var_1.x, _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_sub_u32(82766u, 1u), u_input.b.x, 48324u, u_input.a.x)), ~(select(u_input.b, u_input.b, vec4<bool>(false, var_0, true, false)) & ~u_input.a)), ~(-2147483647i));
}

