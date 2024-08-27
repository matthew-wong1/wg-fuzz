struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(685f))), abs(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 4725i, 1i), vec4<i32>(u_input.b.x, 60746i, u_input.e.x, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-4982i, 32206i, u_input.b.x), u_input.e))));
    var var_0 = ~abs(countOneBits(u_input.c));
    return -(~reverseBits(-vec2<i32>(u_input.b.x, u_input.b.x) | vec2<i32>(global0.b.x, -14816i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a))) * global0.a) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1709f, _wgslsmith_f_op_f32(-global0.a)) * 1f)), func_3(vec3<f32>(-657f, -349f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_div_f32(global0.a, -253f)))));
    global0 = Struct_2(global0.a, global0.b);
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), all(arg_1.xz))), ~(~(~abs(4294967295u))), Struct_1(firstLeadingBit(u_input.a)), ~(-19987i) & ~((arg_0.x & 2147483647i) << (_wgslsmith_mult_u32(86874u, 18484u) % 32u)), max(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.a.x, _wgslsmith_div_u32(4294967295u, 62983u), 33059u)), u_input.c | ~vec4<u32>(22479u, u_input.d.x, 0u, u_input.c.x)));
    var_0 = Struct_3(global0.a, ~1u, var_0.c, global0.b.x, _wgslsmith_mult_vec4_u32(~u_input.c, firstTrailingBit(~var_0.e)));
    return var_0.c;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + global0.a))), ~_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.e.x, -2147483647i), u_input.b) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, arg_0), vec2<i32>(arg_0, u_input.e.x), u_input.e.zx), u_input.e.zz));
    global0 = Struct_2(-365f, global0.b);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))), arg_1, arg_2, abs(0i), u_input.d);
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(1194f)), vec2<i32>(_wgslsmith_mod_i32(var_0.d, -(2147483647i >> (u_input.c.x % 32u))), var_0.d));
    var var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(max(max(vec4<i32>(global0.b.x, -4896i, -18921i, arg_0), vec4<i32>(-14606i, 2147483647i, -68008i, 18i)), vec4<i32>(var_0.d, -5757i, -1i, global0.b.x)) | vec4<i32>(max(-32530i, 10874i), _wgslsmith_div_i32(u_input.e.x, 2186i), -2147483647i, arg_0)), vec4<i32>(~(-select(30735i, global0.b.x, true)), (func_3(vec3<f32>(-997f, var_0.a, -630f)).x >> (max(var_0.c.a.x, var_0.e.x) % 32u)) >> (~(27456u << (0u % 32u)) % 32u), var_0.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-4646i, arg_0), u_input.e.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(45550i, arg_0, -2147483647i, u_input.e.x), vec4<i32>(9809i, u_input.e.x, -4032i, -3067i)), -vec4<i32>(-30742i, 31295i, global0.b.x, global0.b.x)))));
    return Struct_2(700f, _wgslsmith_sub_vec2_i32(-(~vec2<i32>(var_0.d, 18911i)), global0.b));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = Struct_1(u_input.c);
    global0 = Struct_2(633f, u_input.b);
    global0 = func_4(-(~u_input.b.x), ~(var_0.a.x >> (min(~39297u, 26509u) % 32u)), func_2(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(2147483647i, 54616i, u_input.b.x, u_input.e.x)), vec4<i32>(global0.b.x, countOneBits(-79318i), u_input.b.x, u_input.e.x & u_input.e.x), abs(-vec4<i32>(global0.b.x, global0.b.x, 0i, global0.b.x))), vec3<bool>(true, all(vec2<bool>(true, true)), !(u_input.d.x >= 11612u))));
    global0 = func_4(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(u_input.b.x), -2147483647i) | 1i, u_input.e.x), 1u, func_2(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(global0.b.x, 0i, 22774i, 0i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 7855u, 1u) % vec4<u32>(32u))), ~(vec4<i32>(u_input.b.x, 0i, u_input.e.x, global0.b.x) | vec4<i32>(u_input.b.x, -2147483647i, -2147483647i, u_input.b.x)), ~vec4<i32>(global0.b.x, global0.b.x, u_input.b.x, global0.b.x)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))));
    global0 = func_4(-max(func_3(vec3<f32>(global0.a, global0.a, 215f)).x, u_input.e.x), ~13966u, func_2(vec4<i32>(-7377i, func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -836f, 662f), vec3<f32>(global0.a, arg_0, 253f)))).x, global0.b.x, _wgslsmith_dot_vec3_i32(u_input.e, ~vec3<i32>(global0.b.x, -38273i, 1i))), select(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true), any(vec4<bool>(true, true, true, true)))));
    return 0u;
}

fn func_5(arg_0: u32) -> u32 {
    global0 = func_4(u_input.e.x, 0u, Struct_1(~(~vec4<u32>(arg_0, 17004u, 4294967295u, arg_0))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-406f - global0.a), -668f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2017f - -1963f), _wgslsmith_f_op_f32(abs(-1165f)))) - _wgslsmith_f_op_f32(f32(-1f) * -476f))), _wgslsmith_clamp_u32(countOneBits(~arg_0), u_input.d.x, abs(arg_0 >> ((u_input.c.x | 4294967295u) % 32u))), func_2(vec4<i32>(_wgslsmith_mod_i32(318i, 1i), i32(-1i) * -1i, ~global0.b.x, select(global0.b.x, u_input.e.x, false)) ^ vec4<i32>(_wgslsmith_sub_i32(0i, 14184i), _wgslsmith_add_i32(global0.b.x, u_input.e.x), -55842i, 1i), vec3<bool>(false, any(vec2<bool>(true, true)) && (global0.a <= global0.a), true && select(false, false, false))), ~min(9654i << ((34799u << (arg_0 % 32u)) % 32u), 547i), ~(~abs(u_input.d)));
    var var_1 = max(global0.b.x, abs(u_input.b.x));
    var_0 = Struct_3(global0.a, var_0.b, func_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 38235i, 2147483647i, global0.b.x), select(vec4<i32>(2147483647i, global0.b.x, -2147483647i, -3727i), vec4<i32>(1i, -1i, 14487i, 1i), true)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 727f, global0.a))).x, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.b.x, global0.b.x, -1i)), 2147483647i), !vec3<bool>(all(vec4<bool>(false, false, false, false)), all(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, false, true)))), select(u_input.e.x, 2147483647i, !all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))), vec4<u32>(max(_wgslsmith_mult_u32(~arg_0, _wgslsmith_dot_vec3_u32(u_input.a.ywx, var_0.e.wxz)), _wgslsmith_mult_u32(var_0.e.x, 21217u)), abs(u_input.d.x), ~(~63896u), 37666u));
    let var_2 = ~91017u;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(u_input.c.x, func_5(_wgslsmith_clamp_u32(1u, func_1(-1807f), ~15987u)), func_2(vec4<i32>(-1i, 1i, global0.b.x, global0.b.x), vec3<bool>(true, true, false)).a.x ^ 0u, ~45836u);
    var var_1 = Struct_3(global0.a, _wgslsmith_div_u32(1u, 1u), Struct_1(u_input.d), 2147483647i, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, ~_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(0u, 16445u, u_input.a.x, u_input.c.x))), ~u_input.a | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, var_0.x) & u_input.d, _wgslsmith_div_vec4_u32(u_input.c, u_input.c), u_input.c), u_input.a));
    let var_2 = vec4<i32>(var_1.d, firstLeadingBit(_wgslsmith_sub_i32(-var_1.d, _wgslsmith_dot_vec3_i32(abs(u_input.e), vec3<i32>(49334i, 1091i, global0.b.x)))), ~11682i, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_1.a, -1162f) * vec3<f32>(605f, var_1.a, -1417f)))).x);
    var var_3 = var_1.c;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), u_input.b);
    var var_5 = vec3<i32>(-44336i, max(firstTrailingBit(-u_input.b.x), firstLeadingBit(abs(global0.b.x))), -39804i);
    let var_6 = vec4<bool>(!(func_5(_wgslsmith_div_u32(23500u, var_3.a.x)) <= 4294967295u), (global0.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a * global0.a))) | true, true, !all(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, false)));
    let var_7 = 464f;
    var var_8 = firstTrailingBit(u_input.a.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(580f, var_1.a, var_6.x)), func_4(1i, var_0.x, var_1.c).a)), _wgslsmith_f_op_f32(round(var_1.a)))), ~(-26421i), 1577f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-287f, -1000f) - vec2<f32>(-1000f, var_7)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, global0.a, 265f) - vec3<f32>(global0.a, 1823f, -3251f)))))));
}

