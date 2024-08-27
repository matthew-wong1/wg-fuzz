struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), -2172i, vec3<i32>(1i, 2147483647i, i32(-2147483648)), 63877u);

var<private> global1: i32 = 3831i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    let var_0 = min(~vec3<u32>(~48057u, ~u_input.d, ~global0.e), ~u_input.a.www) >> ((u_input.a.wxw >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(882f, -1313f)) * _wgslsmith_div_f32(-1114f, 1000f))) + -499f), _wgslsmith_f_op_f32(1541f + 1031f));
    let var_2 = reverseBits(abs(vec2<u32>(4294967295u << (_wgslsmith_dot_vec3_u32(u_input.a.yyz, var_0) % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.b.x) >> (23606u % 32u))));
    let var_3 = Struct_1(select(select(global0.a, select(!global0.a, !vec3<bool>(global0.b.x, true, true), all(vec3<bool>(global0.a.x, global0.b.x, global0.a.x))), vec3<bool>(true, true, true)), global0.a, vec3<bool>(all(select(vec4<bool>(global0.b.x, true, false, false), vec4<bool>(true, false, true, global0.b.x), vec4<bool>(global0.a.x, true, global0.a.x, true))), true, true)), global0.a.zx, select(2147483647i, _wgslsmith_sub_i32(1i, u_input.e.x), true), global0.d, var_2.x);
    var var_4 = ~vec2<i32>(var_3.d.x << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(20760u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, var_0.x, var_0.x, global0.e)), u_input.a) % 32u), -1i);
    return var_3.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    global1 = -1i;
    var var_0 = global0.b.x;
    var var_1 = 236f;
    let var_2 = Struct_1(vec3<bool>(false, true, select(true, false, ~arg_2.d.x == _wgslsmith_clamp_i32(u_input.e.x, -2147483647i, arg_2.c))), vec2<bool>(true, (global0.d.x > ~arg_2.c) & !(!arg_2.b.x)), _wgslsmith_dot_vec2_i32(max(u_input.e, arg_2.d.xx), vec2<i32>(_wgslsmith_sub_i32(arg_1.c, -12347i), -_wgslsmith_clamp_i32(2147483647i, -12033i, 0i))), ~(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 1i), arg_1.d))), arg_1.e);
    global0 = Struct_1(select(!arg_0, select(!select(vec3<bool>(arg_2.a.x, true, arg_3.b.x), vec3<bool>(false, arg_3.b.x, false), arg_2.a.x), vec3<bool>(any(vec4<bool>(true, var_2.b.x, arg_3.b.x, global0.b.x)), any(vec4<bool>(arg_3.b.x, false, false, true)), arg_1.a.x), arg_1.a), !arg_0.x), global0.a.yx, -10753i, arg_3.d, ~abs(u_input.a.x) ^ 1u);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) + -823f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2318f, -431f, false)) * 1f)), -1135f, 1652f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 391f), -2261f) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1390f), -1000f)), 1463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f * -222f)))), false));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(-14000i, ~16278i), max(arg_3.d.yz, ~max(global0.d.zz, global0.d.xx)), arg_3.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(22352i, -18494i) << ((u_input.b.yy ^ u_input.b.xx) % vec2<u32>(32u)), vec2<i32>(~arg_3.d.x, 14149i)), -vec2<i32>(-53372i, global0.d.x)));
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32((vec2<u32>(17552u, arg_3.e) | vec2<u32>(u_input.d, global0.e)) | (u_input.b.xz | vec2<u32>(0u, 1u)), ~vec2<u32>(4294967295u, 0u)), ~vec2<u32>(~51634u, _wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.a.xz))));
    var var_1 = arg_3;
    var_0 = firstTrailingBit(1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1579f, -2124f, -1345f, -992f));
    return global0.c;
}

fn func_2() -> Struct_1 {
    global1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1231f, 1224f, -1389f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(602f, -1000f, -920f))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-3215f, 1556f, 1459f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-770f, -1545f, 432f)), select(global0.a, vec3<bool>(true, global0.b.x, true), vec3<bool>(false, global0.b.x, false))))) + _wgslsmith_f_op_vec3_f32(func_4(!vec3<bool>(true, global0.b.x, true), Struct_1(vec3<bool>(false, false, true), select(vec2<bool>(true, false), vec2<bool>(global0.b.x, true), global0.a.x), global0.c, -vec3<i32>(-1i, -1i, -1i), global0.e), Struct_1(global0.a, global0.a.xy, _wgslsmith_add_i32(global0.c, global0.c), vec3<i32>(global0.c, u_input.e.x, u_input.e.x), ~11814u), Struct_1(vec3<bool>(global0.a.x, global0.a.x, true), func_3(), ~global0.c, global0.d << (vec3<u32>(u_input.a.x, global0.e, 41032u) % vec3<u32>(32u)), _wgslsmith_mult_u32(0u, global0.e))))), true | global0.b.x, true, Struct_1(global0.a, vec2<bool>(true && (1i > u_input.e.x), all(select(vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(global0.b.x, global0.a.x, false, true), false))), -69986i | countOneBits(-20118i >> (global0.e % 32u)), global0.d, global0.e));
    global0 = Struct_1(select(vec3<bool>(global0.b.x, false, true), select(global0.a, !global0.a, select(global0.a, vec3<bool>(true, true, true), global0.a)), select(vec3<bool>(!global0.a.x, any(vec2<bool>(false, global0.b.x)), true), vec3<bool>(true, 25474i <= global0.c, true), vec3<bool>(true, !global0.b.x, global0.a.x || global0.a.x))), select(global0.a.zy, select(vec2<bool>(true, true), !vec2<bool>(global0.b.x, global0.b.x), func_3().x), global0.b), u_input.e.x, -vec3<i32>(reverseBits(-746i), global0.c, ~global0.c | 1i), ~u_input.a.x);
    global1 = u_input.e.x;
    global1 = _wgslsmith_add_i32(~(-1i), 0i);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-556f)))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(2311f + -912f), -288f)), -2871f, all(!select(global0.a, global0.a, vec3<bool>(global0.b.x, global0.a.x, false))))));
    return Struct_1(select(vec3<bool>(func_3().x, 0u > u_input.b.x, ~u_input.c > ~u_input.c), vec3<bool>(global0.a.x, true, global0.a.x), true), select(vec2<bool>(all(select(vec4<bool>(global0.b.x, true, global0.a.x, global0.b.x), vec4<bool>(false, false, global0.b.x, true), vec4<bool>(true, true, global0.a.x, global0.b.x))), func_3().x), global0.b, vec2<bool>(any(!vec4<bool>(true, global0.b.x, global0.b.x, global0.a.x)), false)), u_input.e.x, vec3<i32>(~(u_input.e.x | 1i), _wgslsmith_mult_i32(~global0.d.x, -8915i) ^ ((i32(-1i) * -38347i) ^ -u_input.e.x), ~_wgslsmith_add_i32(~global0.c, _wgslsmith_add_i32(u_input.e.x, global0.d.x))), 1u);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3;
    global0 = arg_3;
    global0 = func_2();
    global1 = ~39123i;
    var var_0 = _wgslsmith_clamp_vec3_u32(abs(~(~_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(1u, 12716u, 57705u), vec3<u32>(arg_3.e, 108831u, global0.e)))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_0, u_input.a) & func_2().e, 4294967295u, arg_1.e), func_2().e, _wgslsmith_clamp_u32(1u, u_input.c, firstLeadingBit(arg_0.x))), u_input.b);
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1092f, -1000f), vec2<f32>(-157f, -1771f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(807f, -1453f) + vec2<f32>(712f, -1699f)), vec2<bool>(arg_1.x, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, -999f)), vec2<f32>(1000f, 1037f))))));
    global1 = i32(-1i) * -1i;
    let var_1 = func_2();
    let var_2 = arg_0;
    global0 = arg_0;
    return -557f;
}

fn func_8(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    global1 = 19661i;
    global1 = ~func_6(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, global0.e, 120670u, 1u)), 7688u, 19831u, reverseBits(63510u)), Struct_1(!global0.a, vec2<bool>(false, arg_0.x != arg_0.x), -2147483647i, global0.d, abs(_wgslsmith_sub_u32(0u, global0.e))), !(_wgslsmith_add_u32(u_input.b.x, 88u) == global0.e), func_2()).c;
    var var_0 = vec3<i32>(_wgslsmith_add_i32(func_6(vec4<u32>(func_2().e, 11896u, 116625u, u_input.b.x), func_6(u_input.a, func_6(vec4<u32>(28035u, 0u, 4294967295u, 3142u), Struct_1(global0.a, global0.b, arg_2, vec3<i32>(arg_2, arg_2, 32174i), 2420u), global0.a.x, Struct_1(vec3<bool>(true, true, arg_1), global0.a.zz, 2147483647i, global0.d, 21645u)), global0.e == 12643u, Struct_1(vec3<bool>(global0.a.x, true, true), vec2<bool>(arg_1, true), 10482i, global0.d, u_input.c)), !arg_1, func_2()).c, -(u_input.e.x | _wgslsmith_sub_i32(-27469i, 1i))), -(-13760i | _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(arg_2, 0i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, 46466i)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_2, arg_2, 0i, u_input.e.x), vec4<i32>(1i, -4494i, global0.c, 17981i), arg_1), vec4<i32>(arg_2, 2147483647i, global0.c, 0i) >> (vec4<u32>(0u, 4294967295u, 0u, 20489u) % vec4<u32>(32u)))), global0.d.x));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)) * _wgslsmith_f_op_f32(ceil(arg_0.x))))));
    let var_2 = select(vec4<bool>(~_wgslsmith_add_u32(37911u, u_input.b.x) != 4294967295u, true, true, !any(select(vec4<bool>(global0.b.x, global0.a.x, global0.a.x, arg_1), vec4<bool>(arg_1, false, arg_1, global0.b.x), true))), select(!(!select(vec4<bool>(false, true, true, global0.a.x), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(arg_1, false, global0.a.x, global0.b.x))), vec4<bool>(all(global0.a), false, true, select(true, true, any(vec2<bool>(true, global0.a.x)))), 368f == _wgslsmith_f_op_f32(-630f - _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), vec4<bool>(all(!vec4<bool>(true, true, arg_1, false)), global0.a.x, true, false));
    return func_6(u_input.a, Struct_1(func_2().a, select(var_2.zz, var_2.ww, select(var_2.wx, global0.a.xz, any(vec4<bool>(false, false, false, global0.a.x)))), 2147483647i & _wgslsmith_clamp_i32(abs(-1i), -global0.d.x, _wgslsmith_mod_i32(-25570i, -9113i)), vec3<i32>(2147483647i, -4270i, -(~var_0.x)), reverseBits(_wgslsmith_mod_u32(global0.e, 0u))), all(select(vec2<bool>(arg_1, var_2.x), !vec2<bool>(var_2.x, var_2.x), false)) || true, Struct_1(global0.a, vec2<bool>(true, !(!var_2.x)), arg_2, abs(vec3<i32>(global0.d.x, 1i, min(2147483647i, 0i))), global0.e));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = reverseBits(~_wgslsmith_add_u32(0u, global0.e << (1u % 32u)) | firstTrailingBit(~0u));
    global0 = func_8(vec3<f32>(_wgslsmith_f_op_f32(func_7(func_6(vec4<u32>(0u, u_input.d, 0u, 0u) ^ u_input.a, Struct_1(global0.a, global0.a.xz, -2147483647i, vec3<i32>(-26147i, u_input.e.x, 2127i), 1u), global0.a.x & global0.b.x, func_2()), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-678f))), _wgslsmith_f_op_f32(f32(-1f) * -1653f)), any(select(!(!vec4<bool>(false, true, true, global0.a.x)), vec4<bool>(false, true, true, true), any(func_2().a))), func_6(firstLeadingBit(u_input.a), func_2(), global0.a.x, func_6(u_input.a & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, global0.e), vec4<u32>(global0.e, u_input.c, u_input.b.x, 16660u)), func_6(vec4<u32>(0u, 0u, 0u, global0.e), Struct_1(global0.a, global0.a.xx, 7282i, vec3<i32>(-11245i, u_input.e.x, global0.d.x), 15636u), global0.b.x | true, Struct_1(global0.a, global0.b, 0i, global0.d, global0.e)), any(!vec4<bool>(global0.b.x, false, true, false)), Struct_1(select(global0.a, vec3<bool>(global0.b.x, false, global0.a.x), global0.a), func_3(), 10108i, vec3<i32>(global0.c, global0.d.x, global0.d.x), min(global0.e, u_input.c)))).c);
    var_0 = reverseBits(1u);
    let var_1 = ~(~firstTrailingBit(vec2<u32>(4294967295u, max(4294967295u, 4294967295u))));
    var_0 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, ~61078u, 1u, global0.e) >> (u_input.a % vec4<u32>(32u))), u_input.a);
    return _wgslsmith_mod_u32(firstLeadingBit(global0.e), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global0.b.x, ~func_1(844f) <= ~_wgslsmith_sub_u32(u_input.b.x, global0.e), any(!(!vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x))), true), !(!vec4<bool>(global0.a.x, false, all(vec2<bool>(global0.a.x, global0.b.x)), select(false, global0.b.x, true))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f - 575f) * 651f), _wgslsmith_f_op_f32(trunc(-320f)), _wgslsmith_f_op_f32(step(-1328f, _wgslsmith_f_op_f32(f32(-1f) * -1021f))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(global0.a, Struct_1(vec3<bool>(true, true, var_0.x), vec2<bool>(global0.a.x, global0.a.x), u_input.e.x, vec3<i32>(2147483647i, global0.d.x, 1i), global0.e), Struct_1(var_0.yxw, vec2<bool>(var_0.x, false), u_input.e.x, vec3<i32>(global0.c, global0.d.x, u_input.e.x), u_input.a.x), Struct_1(global0.a, vec2<bool>(false, global0.b.x), global0.c, vec3<i32>(31792i, 27895i, 2147483647i), 48825u))).x, 1f), 230f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(2890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f * -409f)), _wgslsmith_f_op_f32(f32(-1f) * -1366f))), vec4<f32>(var_1.x, -329f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f))), _wgslsmith_f_op_f32(f32(-1f) * -779f)));
    let var_2 = func_6(~vec4<u32>(~(1u ^ u_input.b.x), func_2().e, ~0u, firstLeadingBit(0u)), Struct_1(global0.a, func_2().a.zy, _wgslsmith_clamp_i32(u_input.e.x << (~u_input.a.x % 32u), u_input.e.x, _wgslsmith_div_i32(-2147483647i, -global0.c)), vec3<i32>(-1i) * -global0.d, global0.e), global0.c <= 1797i, func_8(_wgslsmith_f_op_vec3_f32(-vec3<f32>(823f, _wgslsmith_f_op_f32(-1023f - 381f), _wgslsmith_div_f32(var_1.x, -881f))), true, _wgslsmith_div_i32(~(-u_input.e.x), ~(~u_input.e.x))));
    global1 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(global0.c & -2147483647i) & ((i32(-1i) * -24069i) << (~var_2.e % 32u)), global0.c), ~_wgslsmith_div_i32(~(-2147483647i), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, -1364f, 324f) * vec3<f32>(1000f, var_1.x, -640f)), var_2.a.x, !var_0.x, func_8(var_1.yzw, global0.a.x, var_2.d.x))), var_1.x, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, -10328i), vec2<i32>(2147483647i, 1i)), vec2<i32>(global0.c, u_input.e.x)), -u_input.e.x), ~(_wgslsmith_add_vec2_i32(var_2.d.zy, var_2.d.xy) >> (~u_input.b.xx % vec2<u32>(32u)))));
}

