struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(77028i, vec2<bool>(false, false), vec4<f32>(995f, 1271f, 1312f, 143f), vec2<i32>(23788i, 42956i), vec2<f32>(-1000f, -1033f)), vec2<f32>(140f, 179f), vec2<u32>(4294967295u, 5204u), Struct_1(i32(-2147483648), vec2<bool>(false, true), vec4<f32>(332f, -892f, -1630f, 1866f), vec2<i32>(-7398i, 2147483647i), vec2<f32>(-374f, 1386f))), Struct_2(Struct_1(-720i, vec2<bool>(true, false), vec4<f32>(-255f, -1393f, 908f, -1213f), vec2<i32>(-15055i, -21549i), vec2<f32>(-604f, 1462f)), vec2<f32>(1000f, 182f), vec2<u32>(20464u, 4294967295u), Struct_1(1i, vec2<bool>(false, false), vec4<f32>(-588f, 1560f, -364f, 294f), vec2<i32>(2147483647i, i32(-2147483648)), vec2<f32>(-181f, -599f))), Struct_2(Struct_1(46538i, vec2<bool>(false, true), vec4<f32>(-517f, -723f, 405f, -325f), vec2<i32>(-40724i, 0i), vec2<f32>(-188f, 1015f)), vec2<f32>(1000f, -835f), vec2<u32>(0u, 92487u), Struct_1(17621i, vec2<bool>(false, true), vec4<f32>(-508f, 619f, -1000f, 130f), vec2<i32>(-8635i, 0i), vec2<f32>(215f, 789f))), Struct_2(Struct_1(-24309i, vec2<bool>(false, false), vec4<f32>(-185f, 876f, -1275f, -1000f), vec2<i32>(-10865i, 2147483647i), vec2<f32>(-1772f, 1000f)), vec2<f32>(759f, -1954f), vec2<u32>(1u, 21514u), Struct_1(-70682i, vec2<bool>(false, true), vec4<f32>(496f, -569f, -773f, -378f), vec2<i32>(0i, 2435i), vec2<f32>(174f, -655f))), Struct_2(Struct_1(6282i, vec2<bool>(false, false), vec4<f32>(-1895f, -1455f, 313f, 761f), vec2<i32>(-18608i, 27266i), vec2<f32>(-1216f, 1164f)), vec2<f32>(-559f, -1886f), vec2<u32>(0u, 0u), Struct_1(1i, vec2<bool>(false, true), vec4<f32>(-1653f, 1269f, -1113f, 996f), vec2<i32>(-39763i, 12160i), vec2<f32>(-411f, -536f))));

var<private> global2: bool = true;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global0 = 1000f;
    let var_0 = global1.b.a;
    global0 = -411f;
    global0 = -520f;
    var var_1 = Struct_4(global1.a, u_input.a);
    return var_1.a.d;
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x);
    global1 = Struct_3(Struct_2(func_2(func_2(false, _wgslsmith_f_op_vec2_f32(arg_0.c.wy + global1.a.d.e), i32(-1i) * -54186i).b.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(global1.a.a.c.xy)))), 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.xw) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.e.x, -950f)))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(0u, 41736u)), vec2<u32>(55580u, 0u)), vec2<u32>(arg_1, 12761u)), func_2(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.e.x, arg_0.c.x)))), _wgslsmith_mod_i32(global1.d.d.a ^ arg_0.d.x, global1.b.a.d.x | 2147483647i))), Struct_2(Struct_1(arg_0.a, global1.e.d.b, vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(global1.d.a.c.x + arg_0.c.x), 1000f, 937f), vec2<i32>(-global1.b.a.d.x, 3068i), global1.b.a.c.wy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.d.b * vec2<f32>(149f, global1.b.a.e.x)))), global1.e.b), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1), ~global1.b.c), 18606u), global1.a.a), Struct_2(Struct_1(_wgslsmith_sub_i32(-1i, select(2147483647i, 30950i, false)), vec2<bool>(false, arg_0.b.x), vec4<f32>(-259f, _wgslsmith_f_op_f32(-686f * arg_0.c.x), global1.c.a.c.x, 121f), global1.e.d.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, 1260f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-970f - global1.d.a.e.x), -375f) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b.d.c.x, global1.b.a.c.x), arg_0.e)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.d), ~u_input.d), ~global1.c.c << (~u_input.d % vec2<u32>(32u))), Struct_1(select(61810i, ~arg_0.d.x, any(vec3<bool>(var_0.x, false, arg_0.b.x))), select(vec2<bool>(false, false), global1.d.a.b, !vec2<bool>(arg_0.b.x, false)), _wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(arg_0.c.x, 923f, -693f, global1.b.d.e.x)), u_input.c, func_2(any(vec2<bool>(global1.c.a.b.x, global1.b.a.b.x)), vec2<f32>(global1.c.b.x, arg_0.e.x), arg_0.a).e)), Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -281f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-586f, global1.a.b.x) - global1.a.a.e)) - global1.d.b), vec2<u32>(_wgslsmith_sub_u32(17814u, ~global1.c.c.x), ~_wgslsmith_mult_u32(global1.e.c.x, 9357u)), Struct_1(-(u_input.c.x ^ u_input.b.x), var_0.zz, arg_0.c, u_input.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global1.c.b, arg_0.e))))), Struct_2(func_2(any(arg_0.b), vec2<f32>(790f, _wgslsmith_div_f32(-742f, -289f)), _wgslsmith_mod_i32(global1.d.a.a, _wgslsmith_add_i32(arg_0.a, -16735i))), global1.e.a.e, _wgslsmith_sub_vec2_u32(global1.c.c, vec2<u32>(abs(global1.a.c.x), ~global1.d.c.x)), global1.d.d));
    global1 = Struct_3(global1.e, global1.c, Struct_2(Struct_1(select(firstLeadingBit(-20879i), countOneBits(-58913i), func_2(global1.b.d.b.x, global1.c.d.e, global1.e.d.d.x).b.x), select(!global1.c.d.b, !vec2<bool>(arg_0.b.x, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1620f, -404f, -1931f, 2414f), vec4<f32>(-139f, arg_0.c.x, global1.e.d.c.x, arg_0.c.x), vec4<bool>(true, var_0.x, global1.e.a.b.x, true)))), arg_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.d.e.x, global1.e.b.x), arg_0.c.yz, arg_0.b.x)))), global1.d.d.e, ~abs(u_input.a), arg_0), global1.d, Struct_2(func_2(global1.c.d.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1258f, arg_0.c.x), arg_0.c.yx))), arg_0.a << (~u_input.e % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.a.b)) * vec2<f32>(arg_0.e.x, -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e) * arg_0.e)), global1.b.c, Struct_1(global1.d.d.d.x, var_0.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.d.c * vec4<f32>(-1000f, -1800f, arg_0.e.x, -993f))), vec2<i32>(u_input.c.x, arg_0.a), arg_0.c.wx)));
    let var_1 = Struct_2(func_2(abs(arg_0.a | u_input.c.x) > firstTrailingBit(~arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, global1.a.d.c.x) * vec2<f32>(1551f, arg_0.c.x)))), countOneBits(global1.a.a.d.x)), _wgslsmith_f_op_vec2_f32(max(global1.a.d.c.wy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(1000f * global1.b.a.e.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-970f, global1.e.d.c.x)))))), ~select(_wgslsmith_div_vec2_u32(u_input.d, u_input.d), global1.d.c, vec2<bool>(false, false)) >> (_wgslsmith_add_vec2_u32(~(~u_input.d), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), global1.a.d);
    let var_2 = vec2<u32>(max(firstLeadingBit(1u), arg_1), 0u);
    return func_2(true, global1.c.b, firstLeadingBit(-2147483647i));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(func_3(arg_2.d, _wgslsmith_div_u32(u_input.a.x, (u_input.a.x | arg_1) & arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1408f), 305f) - _wgslsmith_f_op_vec2_f32(max(func_3(Struct_1(global1.b.a.d.x, vec2<bool>(true, true), vec4<f32>(796f, arg_0, arg_0, arg_2.d.e.x), vec2<i32>(global1.e.a.d.x, 0i), vec2<f32>(arg_0, arg_2.a.c.x)), ~u_input.e).c.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.c.b)) + vec2<f32>(471f, global1.d.b.x))))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(arg_2.c.x, 4294967295u)), ~19637u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d, u_input.a), ~global1.a.c), ~(~vec2<u32>(arg_1, global1.a.c.x)), vec2<u32>(51608u, arg_2.c.x))), Struct_1(~firstLeadingBit(_wgslsmith_mult_i32(global1.d.a.a, arg_2.a.d.x)), vec2<bool>(true | global1.c.a.b.x, all(vec4<bool>(arg_2.d.b.x, global1.b.a.b.x, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(373f, -1000f, arg_2.a.c.x, global1.c.b.x))) - _wgslsmith_f_op_vec4_f32(func_2(true, vec2<f32>(global1.d.b.x, global1.a.b.x), 1i).c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, arg_2.d.e.x, arg_0, arg_0)))), ~vec2<i32>(arg_2.d.a, global1.d.a.a) << (vec2<u32>(_wgslsmith_div_u32(u_input.a.x, arg_2.c.x), u_input.d.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global1.a.a.c.zz)));
    global1 = Struct_3(Struct_2(func_2(all(!vec4<bool>(false, false, true, arg_2.a.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global1.e.d.e, vec2<f32>(-628f, 1322f), var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-985f, -1067f) + arg_2.d.c.zy), true)), u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.d.c.zz + arg_2.b) - vec2<f32>(1642f, arg_0)) + vec2<f32>(arg_2.a.c.x, _wgslsmith_div_f32(-611f, arg_2.b.x))), select(countOneBits(u_input.d << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), max(global1.d.c, u_input.d) & var_0.c, !global1.a.a.b), Struct_1(-global1.e.d.d.x >> (~var_0.c.x % 32u), select(arg_2.a.b, func_2(var_0.d.b.x, var_0.a.e, u_input.b.x).b, var_0.d.b.x), _wgslsmith_f_op_vec4_f32(step(global1.c.a.c, func_2(global1.c.a.b.x, vec2<f32>(-2180f, 1000f), -2147483647i).c)), (vec2<i32>(var_0.a.d.x, var_0.d.a) | arg_2.a.d) << (abs(vec2<u32>(1u, arg_1)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.c.x), _wgslsmith_f_op_f32(select(-959f, arg_0, arg_2.d.b.x))))), global1.a, arg_2, Struct_2(Struct_1(firstTrailingBit(var_0.a.d.x), global1.d.d.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-719f, 1069f, arg_2.d.c.x, var_0.b.x), global1.a.a.c, arg_2.d.b.x)), _wgslsmith_f_op_vec4_f32(global1.e.d.c * arg_2.a.c)), vec2<i32>(var_0.d.a, 1i ^ arg_2.d.d.x), _wgslsmith_f_op_vec2_f32(ceil(global1.c.a.c.yy))), vec2<f32>(-1233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a.e.x)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 0u, arg_2.c.x), ~vec3<u32>(u_input.a.x, 55382u, u_input.a.x)), 0u & arg_2.c.x), func_2(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, var_0.b.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.e.x, global1.d.a.c.x), global1.c.b)), u_input.b.x)), Struct_2(func_2(true, vec2<f32>(_wgslsmith_f_op_f32(abs(626f)), global1.c.a.e.x), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.d.c.zw)), _wgslsmith_f_op_vec2_f32(max(arg_2.a.c.zx, arg_2.d.e)))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, ~55412u), select(_wgslsmith_div_vec2_u32(var_0.c, vec2<u32>(arg_2.c.x, 38983u)), abs(arg_2.c), func_3(Struct_1(arg_2.d.a, vec2<bool>(arg_2.d.b.x, false), arg_2.d.c, global1.a.d.d, arg_2.b), 4294967295u).b)), var_0.a));
    global2 = all(vec4<bool>(true, func_2(func_3(Struct_1(-43498i, var_0.a.b, vec4<f32>(-1401f, 492f, arg_2.a.c.x, arg_0), vec2<i32>(-3405i, 34032i), var_0.a.e), 44453u).b.x, arg_2.d.e, select(global1.e.d.a, global1.b.a.a, global1.d.d.b.x)).b.x & global1.b.d.b.x, arg_2.d.b.x, false));
    let var_1 = Struct_4(global1.a, global1.c.c);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(11694u), _wgslsmith_sub_u32(16331u << (var_1.a.c.x % 32u), select(4104u, 0u, global1.e.a.b.x))), vec2<u32>(35385u, _wgslsmith_div_u32(24865u, 1u))));
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(1570f * -190f);
    var var_1 = (~(global1.c.d.a >> (min(global1.b.c.x, 31342u) % 32u)) ^ 9114i) >> (_wgslsmith_div_u32(~(~1u), 59797u) % 32u);
    let var_2 = _wgslsmith_clamp_i32(reverseBits(11083i & global1.a.d.a), -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-16123i, 8005i, u_input.b.x, 27114i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 29018i, 0i, arg_0.x), vec4<i32>(12141i, 2147483647i, global1.d.d.a, 1i))), _wgslsmith_clamp_i32(min(14332i, 0i), arg_0.x, arg_0.x)), arg_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global1.d.d.a, arg_0.x), min(vec3<i32>(u_input.c.x, 17428i, -2657i), vec3<i32>(u_input.b.x, 1i, u_input.c.x))), 7488i)));
    global2 = func_4(1134f, ~max(global1.a.c.x, global1.e.c.x), Struct_2(func_3(func_2(global1.c.a.b.x, global1.a.d.c.yw, -global1.b.a.a), firstLeadingBit(global1.a.c.x | 51207u)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - arg_1)))), firstLeadingBit(~vec2<u32>(4294967295u, u_input.a.x)), global1.c.a));
    let var_3 = global1.e.d.b.x;
    return global1.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(global1.e, func_1(global1.a.a.d, _wgslsmith_f_op_f32(f32(-1f) * -228f)), func_1(abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-10983i, global1.a.a.d.x), abs(u_input.c))), -1284f), Struct_2(global1.b.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a.e.x, -2044f))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_add_u32(33722u, u_input.e)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1.e.c.x), global1.e.c), _wgslsmith_add_vec2_u32(global1.d.c, global1.d.c))), Struct_1(-abs(-2147483647i), global1.e.a.b, global1.c.a.c, countOneBits(~global1.c.d.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-710f, global1.a.b.x)))), global1.c);
    var var_0 = Struct_3(Struct_2(func_3(Struct_1(global1.e.d.a, func_1(vec2<i32>(62084i, 27320i), 355f).d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.b.x, global1.d.b.x, global1.a.a.e.x, -1519f)), vec2<i32>(global1.b.d.a, -282i), vec2<f32>(global1.b.d.e.x, -1704f)), 1079u), global1.b.a.c.yy, global1.a.c, Struct_1(53127i, func_1(vec2<i32>(u_input.c.x, u_input.b.x), -1224f).d.b, global1.d.d.c, vec2<i32>(~global1.c.a.a, u_input.b.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.e.a.c.x, 588f))))))), Struct_2(global1.b.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(vec2<i32>(global1.c.d.d.x, -33551i), global1.d.a.c.x).a.e.x, _wgslsmith_f_op_f32(min(-724f, 1763f))) * global1.b.b), vec2<u32>(global1.d.c.x, _wgslsmith_mult_u32(min(u_input.e, u_input.a.x), 13291u)), global1.c.a), Struct_2(Struct_1(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.d.d.d.x, 0i), global1.e.d.d), 1000f).a.d.x, !(!vec2<bool>(false, global1.d.a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.c.x, -258f, 537f, -1247f), vec4<f32>(1468f, 170f, global1.a.d.e.x, -1034f)) + global1.b.a.c), max(global1.c.d.d, vec2<i32>(u_input.c.x, global1.d.a.d.x)), global1.d.d.e), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -112f), -1038f), vec2<f32>(global1.c.a.c.x, _wgslsmith_f_op_f32(global1.b.d.c.x * global1.a.a.e.x))), u_input.d, Struct_1(2147483647i, vec2<bool>(true, !global1.c.d.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 510f, global1.c.b.x, -116f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-169f, global1.d.a.e.x, -452f, -379f))), global1.e.d.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1136f, global1.b.d.c.x) + vec2<f32>(global1.a.b.x, global1.b.a.e.x))))), Struct_2(global1.a.d, global1.e.b, ~vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 8087u), 42087u), func_3(global1.b.a, u_input.d.x ^ 25863u)), Struct_2(Struct_1(global1.e.d.a, !vec2<bool>(global1.e.d.b.x, global1.a.a.b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b.x, global1.e.b.x, -274f, -417f) - global1.b.a.c))), vec2<i32>(_wgslsmith_dot_vec2_i32(global1.d.a.d, u_input.b), ~u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.a.a.e, vec2<f32>(global1.e.d.c.x, 1116f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.d.e.x, global1.e.d.c.x))))), vec2<f32>(-1069f, _wgslsmith_f_op_f32(func_2(true, vec2<f32>(global1.d.b.x, 998f), u_input.c.x).e.x + -732f)), ~vec2<u32>(~global1.a.c.x, _wgslsmith_div_u32(u_input.d.x, u_input.a.x)), global1.e.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(var_0.a.a.c));
    global2 = var_0.d.a.b.x;
    let var_2 = Struct_4(var_0.e, vec2<u32>(~(~(30431u ^ var_0.c.c.x)), u_input.e));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.c.a.c.x), 348f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1637f) * _wgslsmith_f_op_f32(func_3(Struct_1(25857i, var_0.a.a.b, var_2.a.d.c, global1.e.a.d, var_2.a.d.c.xw), 1u).e.x + var_0.b.a.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -359f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.d, _wgslsmith_f_op_f32(-213f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.e.x))));
}

