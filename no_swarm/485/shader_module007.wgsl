struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(23119u, 4294967295u, 1u, 0u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: bool) -> vec3<i32> {
    global0 = vec4<u32>(~1u, ~68055u | ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, arg_0.x, global0.x, 34401u), vec4<u32>(16199u, 1u, global0.x, 14783u))), ~14092u, abs(arg_0.x));
    var var_0 = 2147483647i;
    var var_1 = -57379i;
    var var_2 = ~vec3<i32>(-2147483647i, 22814i, 66693i);
    var_0 = -(u_input.c.x & _wgslsmith_div_i32(u_input.d.x, min(var_2.x, u_input.c.x)));
    return vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(var_2.x, u_input.c.x, -2147483647i, -1i)), u_input.d), 35087i, i32(-1i) * -var_2.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = -1868f;
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = select(select(u_input.d.wxy, _wgslsmith_sub_vec3_i32(arg_2.c << (vec3<u32>(global0.x, arg_1, arg_1) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(21008i, 1i, u_input.c.x))), arg_2.a.a.x), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(arg_2.c, -vec3<i32>(var_1.a, -7280i, u_input.a))), func_3(global0.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1104f, var_0)), true)), ~global0.x <= (global0.x & 8840u));
    var var_3 = abs(~abs(firstTrailingBit(vec4<u32>(arg_1, 0u, 27029u, 0u)))) & min(max(max(~vec4<u32>(arg_1, 13202u, u_input.b, global0.x), vec4<u32>(4294967295u, 1u, 4294967295u, arg_1) << (vec4<u32>(19083u, 55115u, 4294967295u, 1u) % vec4<u32>(32u))), vec4<u32>(~0u, arg_1, u_input.e >> (global0.x % 32u), countOneBits(1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 35492u, arg_1, arg_1) | ~vec4<u32>(10689u, 54906u, 42797u, global0.x), select(~vec4<u32>(u_input.b, 46612u, 20550u, u_input.b), abs(vec4<u32>(0u, arg_1, u_input.e, 399u)), !vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, true, arg_2.e.a.x))));
    return !vec4<bool>(arg_2.e.a.x, true, arg_2.e.a.x, true);
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(global0.x, 1u, abs(~_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b ^ u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1451f))));
    var var_2 = 0u;
    let var_3 = select(!func_4(vec2<i32>(u_input.c.x ^ u_input.c.x, reverseBits(u_input.c.x)), ~_wgslsmith_div_u32(0u, 1u), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), _wgslsmith_div_vec2_f32(vec2<f32>(var_1, -1349f), vec2<f32>(var_1, var_1)), func_3(vec2<u32>(var_0.x, 4294967295u), vec2<f32>(var_1, -1599f), false), 1i, Struct_1(vec4<bool>(true, true, false, false))), Struct_3(_wgslsmith_sub_i32(u_input.d.x, -42031i))), vec4<bool>(true, true, true, true), func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x)), select(abs(vec2<i32>(u_input.a, u_input.d.x)), u_input.c.yz, func_4(u_input.d.zz, global0.x, Struct_2(Struct_1(vec4<bool>(true, false, false, false)), vec2<f32>(-1268f, 642f), vec3<i32>(41469i, u_input.d.x, u_input.c.x), 42781i, Struct_1(vec4<bool>(false, false, false, true))), Struct_3(u_input.c.x)).zz)), select(u_input.b, global0.x, true), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(190f, var_1) - vec2<f32>(-779f, -768f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1765f, var_1), vec2<f32>(-1035f, -1487f), true))), -u_input.c, ~func_3(vec2<u32>(global0.x, 1u), vec2<f32>(var_1, -380f), false).x, Struct_1(vec4<bool>(false, false, false, false))), Struct_3(u_input.a)));
    let var_4 = _wgslsmith_mult_u32(abs(9539u), abs(~u_input.b));
    return Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a >> (global0.x % 32u), u_input.a << (u_input.e % 32u)), select(-u_input.d.yw, u_input.d.wz, var_3.xw)), 1i, 2147483647i));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global0 = vec4<u32>(1u, abs(24793u), 0u, global0.x);
    global0 = ~vec4<u32>(reverseBits(global0.x), u_input.b, global0.x, ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(global0.x, u_input.b, u_input.e), global0.wxy), ~vec3<u32>(u_input.b, u_input.e, global0.x)));
    global0 = _wgslsmith_mod_vec4_u32(~max(vec4<u32>(0u, u_input.b, global0.x, u_input.e) & ~vec4<u32>(44055u, u_input.e, 4294967295u, 1u), max(vec4<u32>(49062u, 60279u, 927u, 1u) >> (vec4<u32>(global0.x, 87480u, 21746u, global0.x) % vec4<u32>(32u)), select(vec4<u32>(u_input.e, 1u, global0.x, global0.x), vec4<u32>(4294967295u, 27350u, u_input.b, u_input.b), vec4<bool>(arg_1.e.a.x, false, arg_2.a.x, false)))), vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(global0.x, u_input.b, u_input.e, global0.x))), ~vec4<u32>(global0.x, u_input.b, global0.x, 10547u)), ~firstLeadingBit(_wgslsmith_mod_u32(41329u, 17928u)), countOneBits(abs(global0.x)) & 47628u, ~19713u));
    return max(_wgslsmith_div_vec4_u32((~vec4<u32>(u_input.b, 1u, 4323u, global0.x) >> (firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, global0.x)) % vec4<u32>(32u))) ^ vec4<u32>(21342u & global0.x, global0.x, 1u, global0.x), vec4<u32>(35538u, global0.x & global0.x, 16248u, ~(~global0.x))), vec4<u32>(_wgslsmith_add_u32(reverseBits(global0.x) ^ select(4294967295u, u_input.e, true), 35928u), ~4294967295u, 1u, u_input.b));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1045f)))) + -1273f);
    var_0 = -1796f;
    var var_1 = ~vec4<u32>(~(~_wgslsmith_add_u32(87037u, 0u)), 1u, ~arg_2.x, ~arg_2.x);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(arg_1.a, 2147483647i, -u_input.d.x)), _wgslsmith_sub_i32(-(~(~arg_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-47255i, arg_0.x, -2147483647i, -2147483647i), select(u_input.d, u_input.d, vec4<bool>(false, false, true, false))), firstTrailingBit(vec4<i32>(0i, u_input.d.x, 19010i, arg_0.x)))));
    var var_3 = -1i >> (firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 63627u), arg_2.yw) >> (global0.x % 32u)) % 32u);
    return ~0u;
}

fn func_7(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = reverseBits(select(vec4<u32>(19554u, global0.x, 4736u, 1u) << ((vec4<u32>(57606u, 4294967295u, u_input.b, 30041u) >> (vec4<u32>(u_input.b, global0.x, global0.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~vec4<u32>(4294967295u, 11257u, 4294967295u, 1u)), true) >> (firstTrailingBit(abs(vec4<u32>(global0.x, 0u, 50408u, u_input.e)) & (vec4<u32>(4294967295u, arg_0, global0.x, arg_0) ^ vec4<u32>(58142u, u_input.e, 6810u, 30741u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_add_u32(1681u, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0, 0u, ~u_input.b & ~4294967295u, _wgslsmith_mod_u32(~1u, var_0.x)), var_0));
    global0 = vec4<u32>(~(~arg_0), func_5(func_2(), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(min(-676f, -1021f)), _wgslsmith_f_op_f32(-1111f - 1216f)), firstLeadingBit(u_input.d.zxw), u_input.a & -1i, Struct_1(func_4(vec2<i32>(arg_1, u_input.a), 0u, Struct_2(Struct_1(vec4<bool>(false, false, false, true)), vec2<f32>(-223f, 1319f), u_input.c, arg_1, Struct_1(vec4<bool>(true, true, true, false))), Struct_3(arg_1)))), Struct_1(vec4<bool>(true, -19682i == arg_1, false, true))).x, var_1, global0.x);
    var var_2 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1, arg_1, 0i, u_input.d.x), countOneBits(vec4<i32>(arg_1, _wgslsmith_mult_i32(u_input.d.x, 2147483647i), ~(-2147483647i), 0i))), u_input.d);
    global0 = var_0;
    return Struct_1(!vec4<bool>(any(vec3<bool>(true, true, true)), ~24588u < func_6(u_input.d.wzw, Struct_3(var_2.x), var_0, Struct_3(arg_1)), true, 1u >= select(0u, u_input.e, false)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = ~abs(~abs(vec2<u32>(u_input.e, u_input.e)));
    var var_1 = func_7(func_6(~vec3<i32>(-2147483647i, _wgslsmith_add_i32(u_input.a, u_input.c.x), 0i), Struct_3(min(abs(u_input.c.x), -1i << (0u % 32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, ~u_input.e, u_input.e & global0.x, _wgslsmith_mult_u32(26327u, global0.x)), abs(vec4<u32>(global0.x, u_input.e, var_0.x, u_input.b)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(91089u, 21936u, 27730u, global0.x), vec4<u32>(1u, global0.x, 0u, 7025u)), func_5(func_2(), Struct_2(Struct_1(vec4<bool>(arg_2.x, true, true, true)), vec2<f32>(604f, arg_0.x), u_input.c, u_input.a, Struct_1(vec4<bool>(true, arg_3, arg_2.x, arg_1))), Struct_1(vec4<bool>(true, true, arg_2.x, false)))), func_2()), u_input.d.x);
    return vec4<u32>(~(~46750u), ~(~_wgslsmith_div_u32(global0.x, 1u)) >> (((15552u << (_wgslsmith_sub_u32(41851u, var_0.x) % 32u)) & min(global0.x, 45230u)) % 32u), 21550u, ~firstLeadingBit(~firstTrailingBit(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, -256f)))))), false, !vec3<bool>(true, true, all(vec4<bool>(false, false, true, true))), true || all(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    let var_0 = u_input.c.x;
    var var_1 = Struct_3(~u_input.c.x);
    var_1 = Struct_3(~(-11539i));
    global0 = func_5(func_2(), Struct_2(Struct_1(func_7(~global0.x, _wgslsmith_clamp_i32(71721i, var_0, -44796i)).a), vec2<f32>(-685f, _wgslsmith_f_op_f32(423f * _wgslsmith_f_op_f32(f32(-1f) * -1026f))), _wgslsmith_mult_vec3_i32(-vec3<i32>(0i, u_input.c.x, -18507i), vec3<i32>(-u_input.d.x, ~0i, ~27121i)), min(var_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0, u_input.a, 2147483647i, -43734i)), select(u_input.d, vec4<i32>(0i, var_1.a, 1i, 0i), vec4<bool>(true, true, true, false)))), Struct_1(vec4<bool>(true, true, true, true))), Struct_1(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), func_4(u_input.c.yy, 0u, Struct_2(Struct_1(vec4<bool>(false, false, true, true)), vec2<f32>(-527f, 1772f), u_input.d.zzw, -1i, Struct_1(vec4<bool>(true, false, true, true))), Struct_3(var_0)), vec4<bool>(true, true, true, true))));
    var var_2 = u_input.d;
    var var_3 = Struct_3(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2221f + 717f), _wgslsmith_f_op_f32(abs(-179f))))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_0, var_3.a, var_2.x) & u_input.d, countOneBits(u_input.d)), 0i), select(u_input.d ^ _wgslsmith_div_vec4_i32(u_input.d, u_input.d), vec4<i32>(var_2.x, -40445i, 32684i, -var_2.x), select(all(vec2<bool>(true, false)), true, var_0 >= 1i))), ~_wgslsmith_div_i32(u_input.c.x, min(-var_0, 1753i)));
}

