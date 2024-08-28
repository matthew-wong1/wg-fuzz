struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global0 = arg_1.x;
    var var_0 = Struct_3(Struct_2(arg_1.x << (firstTrailingBit(_wgslsmith_div_u32(arg_1.x, arg_0)) % 32u), arg_3, arg_3, -(~vec4<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, 0i)), !(!vec3<bool>(false, false, global1.a.x))), vec4<u32>(arg_1.x, ~(~110290u), _wgslsmith_clamp_u32(0u, arg_0 >> (0u % 32u), 1u), ~(~arg_1.x)) & (abs(~vec4<u32>(11755u, arg_0, 0u, 4294967295u)) >> (~min(vec4<u32>(0u, arg_0, 0u, arg_0), vec4<u32>(0u, arg_0, 1u, 47846u)) % vec4<u32>(32u))));
    var var_1 = vec4<f32>(-1179f, _wgslsmith_f_op_f32(step(-1262f, 1435f)), _wgslsmith_f_op_f32(floor(arg_3.a)), _wgslsmith_f_op_f32(select(2039f, -1387f, global1.a.x)));
    let var_2 = -abs(var_0.a.d);
    let var_3 = Struct_4(select(global1.b, select(!global1.a, vec2<bool>(true, global1.a.x), !global1.a), !(!(!var_0.a.e.yy))), global1.b, _wgslsmith_f_op_vec2_f32(arg_2.yy + _wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.c.x, var_1.x)))))));
    return 4294967295u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(reverseBits(37655u), _wgslsmith_add_u32(28553u, 1u), func_3(~68886u, vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.c.x, global1.c.x, global1.c.x), vec3<f32>(-1002f, -885f, global1.c.x), vec3<bool>(arg_0, arg_0, true))), Struct_1(492f, vec3<i32>(1i, u_input.a, -5807i))) | 54732u), Struct_1(_wgslsmith_f_op_f32(-global1.c.x), vec3<i32>(~(-u_input.a), -10494i, select(~37659i, u_input.a << (4294967295u % 32u), true))), Struct_1(global1.c.x, abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, -23233i)), ~vec3<i32>(u_input.a, -1i, -1i)))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -16645i, -17482i, _wgslsmith_mult_i32(-2147483647i, u_input.a)), vec4<i32>(-u_input.a, 38582i, _wgslsmith_mult_i32(1i, u_input.a), -u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, -16848i, 2147483647i, -1i) >> (min(vec4<u32>(19963u, 9751u, 1u, 1u), vec4<u32>(46079u, 20886u, 0u, 4294967295u)) % vec4<u32>(32u)))), vec3<bool>(arg_0, global1.a.x, !arg_0));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(select(var_0.b.a, var_0.b.a, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) - _wgslsmith_f_op_f32(select(global1.c.x, -513f, var_0.e.x))) - -1829f)), ~vec3<i32>(-1i, abs(~(-11974i)), _wgslsmith_sub_i32(u_input.a, -14150i ^ var_0.c.b.x)));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(false).a + global1.c.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.a)), vec3<i32>(2147483647i, -u_input.a, -(~2147483647i)));
    global1 = Struct_4(global1.b, select(!vec2<bool>(global1.b.x && arg_0.a.e.x, true), global1.a, arg_0.a.e.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -2139f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.a, var_1.a)))), vec2<bool>(true, any(!vec2<bool>(global1.b.x, arg_0.a.e.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.a, var_0, -591f, 2302f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1278f, var_1.a, arg_0.a.b.a, arg_0.a.c.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.c.a, global1.c.x, var_1.a, 311f))))), true)))));
    let var_3 = arg_0.a.c.a;
    return Struct_2(_wgslsmith_sub_u32(arg_0.a.a, firstLeadingBit(_wgslsmith_div_u32(arg_0.b.x, 4294967295u) & 1u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global1.c.x, var_2.x, arg_0.a.e.x))))), var_1.b & arg_0.a.c.b), Struct_1(_wgslsmith_f_op_f32(round(528f)), var_1.b), vec4<i32>(-firstTrailingBit(arg_0.a.c.b.x), var_1.b.x, arg_0.a.b.b.x & -77977i, -1i) | ~(-min(arg_0.a.d, arg_0.a.d)), select(vec3<bool>(true, !(var_0 != arg_0.a.c.a), true), vec3<bool>(all(vec2<bool>(false, false)) && (arg_0.a.e.x && false), any(vec2<bool>(arg_0.a.e.x, true)), true), select(arg_0.a.e, arg_0.a.e, !global1.b.x)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_3(func_4(Struct_3(Struct_2(1u, func_2(true), func_2(false), vec4<i32>(0i, -40920i, u_input.a, 4249i) & vec4<i32>(u_input.a, u_input.a, -73397i, 19903i), vec3<bool>(true, false, false)), select(reverseBits(vec4<u32>(64985u, 31563u, 4294967295u, 54172u)), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(true, true, arg_0, global1.a.x)))), ~(vec4<u32>(~51139u, 1u, 1u, 23015u) ^ vec4<u32>(_wgslsmith_div_u32(0u, 103847u), func_4(Struct_3(Struct_2(52552u, Struct_1(global1.c.x, vec3<i32>(-1i, -24189i, u_input.a)), Struct_1(global1.c.x, vec3<i32>(-1i, u_input.a, 0i)), vec4<i32>(u_input.a, -2147483647i, 58440i, u_input.a), vec3<bool>(arg_0, arg_0, arg_0)), vec4<u32>(0u, 12085u, 120925u, 4294967295u))).a, ~1u, 1u)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), ~var_0.a.d.zy);
    var_0 = Struct_3(var_0.a, _wgslsmith_div_vec4_u32(firstTrailingBit(var_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(2449u), var_0.b.x, var_0.a.a, _wgslsmith_add_u32(8068u, 1u)), max(vec4<u32>(4294967295u, var_0.a.a, var_0.b.x, var_0.b.x), var_0.b) ^ vec4<u32>(4294967295u, 0u, 1u, 0u))));
    var var_2 = !(all(!(!vec3<bool>(global1.a.x, global1.b.x, var_0.a.e.x))) || true);
    var var_3 = vec4<bool>(_wgslsmith_sub_u32(abs(var_0.b.x) ^ ~16347u, _wgslsmith_mod_u32(69662u, var_0.a.a)) <= func_3(max(~9981u, var_0.b.x), ~select(var_0.b.zww, var_0.b.wyw, global1.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 297f, -2316f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(507f, 1412f, var_0.a.b.a)))), var_0.a.b), all(var_0.a.e.zz), any(vec4<bool>(true, global1.b.x, false, false)), global1.a.x);
    return func_2(any(var_0.a.e));
}

fn func_5(arg_0: Struct_2) -> vec2<f32> {
    global0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(arg_0.a ^ 3033u), 4294967295u), countOneBits(~4294967295u));
    var var_0 = Struct_4(vec2<bool>(all(select(select(vec4<bool>(false, arg_0.e.x, global1.a.x, false), vec4<bool>(false, global1.a.x, false, global1.a.x), global1.a.x), select(vec4<bool>(true, global1.a.x, arg_0.e.x, true), vec4<bool>(arg_0.e.x, global1.b.x, arg_0.e.x, global1.a.x), vec4<bool>(true, false, false, false)), vec4<bool>(false, global1.a.x, true, true))), select(any(vec3<bool>(arg_0.e.x, true, false)), true, !arg_0.e.x)), select(vec2<bool>(true, arg_0.a < ~arg_0.a), vec2<bool>(select(any(arg_0.e), true, !arg_0.e.x), 1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), arg_0.b.b.yx)), -316f == arg_0.c.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-231f, 502f) - vec2<f32>(370f, arg_0.c.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, global1.c.x))), _wgslsmith_f_op_f32(min(-423f, -1081f)) < _wgslsmith_f_op_f32(trunc(-455f)))))));
    global0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 120844u), 1u);
    global1 = Struct_4(var_0.b, global1.a, vec2<f32>(global1.c.x, global1.c.x));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1826f, _wgslsmith_f_op_f32(f32(-1f) * -324f)))), u_input.a, arg_0);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-921f - global1.c.x) + 1685f)) * _wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_div_vec2_f32(var_0.c, var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8167u;
    global0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * -1126f), -1778f)) - _wgslsmith_f_op_vec2_f32(func_5(Struct_2(~max(45306u, 27075u), func_1(false), Struct_1(_wgslsmith_f_op_f32(global1.c.x * global1.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, -19736i))), min(vec4<i32>(u_input.a, 0i, u_input.a, 30002i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -11431i, -1i))), !vec3<bool>(global1.b.x, global1.a.x, global1.b.x)))));
    var var_2 = select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, ~20695u), func_3(firstTrailingBit(1u), ~vec3<u32>(6794u, 0u, 68588u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -977f, var_1.x) + vec3<f32>(var_1.x, 414f, -721f)), func_4(Struct_3(Struct_2(33927u, Struct_1(var_1.x, vec3<i32>(-2147483647i, u_input.a, -2147483647i)), Struct_1(var_1.x, vec3<i32>(u_input.a, 1i, -2147483647i)), vec4<i32>(u_input.a, 34452i, 1i, u_input.a), vec3<bool>(global1.a.x, global1.a.x, true)), vec4<u32>(0u, 7287u, 0u, 1u))).b)), _wgslsmith_mult_u32(~(~1u), 33547u)), true || global1.b.x);
    global0 = func_4(Struct_3(func_4(Struct_3(Struct_2(1u, Struct_1(var_1.x, vec3<i32>(u_input.a, u_input.a, 53550i)), Struct_1(global1.c.x, vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<bool>(global1.b.x, false, global1.a.x)), vec4<u32>(var_2.x, var_2.x, 0u, var_2.x))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(var_2.x, var_2.x, 4294967295u, 18917u)), ~vec4<u32>(var_2.x, 16538u, var_2.x, 16270u)))).a;
    global1 = Struct_4(global1.b, global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(var_2.x, Struct_1(var_1.x, vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_1(856f, vec3<i32>(u_input.a, 0i, u_input.a)), vec4<i32>(u_input.a, -2147483647i, 7038i, u_input.a), vec3<bool>(global1.a.x, global1.b.x, true)))).x, 559f))));
    var var_3 = _wgslsmith_f_op_f32(exp2(func_4(Struct_3(func_4(Struct_3(Struct_2(var_2.x, Struct_1(global1.c.x, vec3<i32>(-2147483647i, 0i, 2147483647i)), Struct_1(var_1.x, vec3<i32>(-2147483647i, 11928i, u_input.a)), vec4<i32>(u_input.a, -1i, -1i, -2147483647i), vec3<bool>(false, global1.b.x, global1.b.x)), vec4<u32>(72036u, var_2.x, 72365u, var_2.x))), ~(~vec4<u32>(62611u, 0u, var_2.x, 45203u)))).b.a));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_2(_wgslsmith_mod_u32(var_2.x, firstLeadingBit(var_2.x)), func_2(true), func_1(!global1.a.x), _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), abs(vec4<i32>(-57096i, u_input.a, -6533i, -23024i))), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, -775f) * global1.c))), vec2<f32>(_wgslsmith_f_op_f32(-1218f * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(346f)) * _wgslsmith_f_op_f32(select(var_1.x, -1000f, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(0i, ~(~func_2(false).b.x)), u_input.a, _wgslsmith_f_op_vec2_f32(func_5(Struct_2(countOneBits(firstLeadingBit(var_2.x)), func_1(true | global1.b.x), func_4(Struct_3(Struct_2(19706u, Struct_1(var_1.x, vec3<i32>(-10808i, -48891i, -3792i)), Struct_1(-1867f, vec3<i32>(58585i, 1i, u_input.a)), vec4<i32>(-51778i, u_input.a, -1i, u_input.a), vec3<bool>(false, global1.b.x, global1.b.x)), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))).c, min(~vec4<i32>(-10110i, 2147483647i, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(837i, u_input.a, -2147483647i, 5879i))), !(!vec3<bool>(global1.a.x, global1.b.x, true))))).x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-336f)), -561f, func_4(Struct_3(Struct_2(106475u, Struct_1(1228f, vec3<i32>(1i, u_input.a, u_input.a)), Struct_1(var_1.x, vec3<i32>(-1i, 2147483647i, u_input.a)), vec4<i32>(0i, u_input.a, u_input.a, -2285i), vec3<bool>(global1.a.x, global1.b.x, true)), vec4<u32>(var_2.x, 47419u, 32380u, var_2.x))).c.a)));
}

