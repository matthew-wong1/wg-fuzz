struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: u32) -> u32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1157f - 1000f))) * 1f), 0u, reverseBits(firstTrailingBit(arg_1) | select(arg_1, -4642i, arg_0.x)), arg_2), arg_1, Struct_2(Struct_1(_wgslsmith_div_f32(156f, _wgslsmith_f_op_f32(step(1245f, -1164f))), (13341u ^ arg_2) << (~arg_2 % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, 13645i, 1i), min(vec3<i32>(7977i, 0i, arg_1), vec3<i32>(-1i, arg_1, 0i))), 98854u), firstTrailingBit(5927u), vec2<bool>(true, !(arg_0.x || arg_0.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), arg_2 & arg_2, arg_1 | -u_input.a.x, 1u)));
    var var_1 = max(~38997i, u_input.a.x);
    let var_2 = Struct_2(var_0.c.d, ~4294967295u, vec2<bool>(!(!arg_0.x), !var_0.c.c.x), var_0.c.d);
    var var_3 = 0i;
    var var_4 = firstLeadingBit(-28163i);
    return 12866u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(u_input.a.zz, ~(~min(arg_2.b.zz, u_input.a.xy)) >> (_wgslsmith_mod_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(arg_0.d, 4294967295u))), abs(~vec2<u32>(arg_1, 17499u))) % vec2<u32>(32u)));
    var var_1 = 0u > ~(~(~(~arg_0.b)));
    var var_2 = Struct_3(arg_0, -arg_0.c, Struct_2(arg_0, arg_0.b, vec2<bool>(all(select(vec4<bool>(arg_3.x, true, false, arg_2.a), vec4<bool>(arg_3.x, false, arg_2.a, true), vec4<bool>(false, arg_2.a, arg_2.a, arg_3.x))), true), arg_0));
    let var_3 = Struct_2(var_2.c.d, 1u, select(!arg_3, arg_3, select(select(var_2.c.c, !vec2<bool>(arg_3.x, false), true), vec2<bool>(arg_3.x, any(vec2<bool>(var_2.c.c.x, false))), !(arg_2.a || false))), var_2.a);
    let var_4 = Struct_2(arg_0, 4294967295u, select(var_2.c.c, var_2.c.c, var_2.c.c.x), var_3.d);
    return var_4.d.d >> (8836u % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = 4294967295u;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-180f - arg_1.x), 0u, u_input.a.x, func_4(Struct_1(arg_1.x, func_3(vec3<bool>(false, false, true), 1i, 25323u), u_input.a.x, ~45810u), firstTrailingBit(34348u), Struct_4(true, -u_input.a, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_vec3_f32(-arg_1)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec2<bool>(false, true))))), ~(~firstLeadingBit(0u) >> (select(_wgslsmith_mult_u32(1u, 0u), 1u, true) % 32u)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), -1195i < -_wgslsmith_add_i32(arg_0.x, -1i)), Struct_1(arg_1.x, min(func_4(Struct_1(1000f, 1u, -2147483647i, 126884u), ~4294967295u, Struct_4(true, u_input.a, arg_1.x, arg_1), vec2<bool>(false, false)), 4294967295u), 2147483647i, _wgslsmith_mult_u32(func_3(vec3<bool>(true, false, false), ~arg_0.x, 0u), ~23517u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(select(_wgslsmith_mod_i32(-u_input.a.x, firstTrailingBit(arg_0.a.c)), u_input.a.x, arg_0.c.x), i32(-1i) * -(u_input.a.x << (1u % 32u))), -1i);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2, 32054u), arg_0.a.b) << (20352u % 32u), arg_0.d.b) << (3088u % 32u);
    var var_2 = false | !func_2(vec2<i32>(arg_0.d.c | 2147483647i, func_2(u_input.a.yy, arg_1).d.c), arg_1).c.x;
    var var_3 = ~(~arg_0.d.b & 101428u);
    var_3 = 4294967295u;
    return Struct_3(arg_0.a, 8541i, Struct_2(Struct_1(arg_1.x, firstLeadingBit(~arg_0.b), -arg_0.a.c, 25009u ^ firstTrailingBit(arg_2)), 1u, select(arg_0.c, vec2<bool>(any(vec3<bool>(true, false, true)), !arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.d.a) >= arg_0.a.a), Struct_1(arg_1.x, var_1, ~arg_0.d.c & var_0, ~15944u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = func_5(func_2(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz, u_input.a.yx ^ vec2<i32>(arg_0.a.c, -18645i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 2147483647i), u_input.a), -48i)), vec3<f32>(288f, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.d.a, arg_0.d.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.a, arg_0.a.a, arg_0.d.a) * vec3<f32>(-1250f, arg_0.a.a, arg_0.a.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.a), _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(183f * arg_0.a.a))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.a, arg_0.a.a, 796f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1016f, arg_0.a.a, arg_0.d.a) * vec3<f32>(-840f, -815f, 1227f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(984f, arg_0.a.a, arg_0.d.a))))))), arg_0.d.b);
    var var_1 = -15893i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, var_0.c.a.a, arg_0.d.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, var_0.c.d.a, -1059f))), vec3<f32>(_wgslsmith_f_op_f32(1200f * var_0.a.a), func_2(vec2<i32>(var_0.b, u_input.a.x), vec3<f32>(arg_0.d.a, 1195f, -420f)).d.a, _wgslsmith_f_op_f32(arg_0.a.a - -273f)))) - vec3<f32>(arg_0.d.a, 1759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-350f)) * _wgslsmith_f_op_f32(877f - var_0.a.a)))));
    var_1 = u_input.a.x;
    let var_3 = 65796u;
    return ~u_input.a;
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    var var_0 = !arg_0.x;
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~68060u, _wgslsmith_clamp_u32(~1u, ~59509u, ~0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~(~vec2<u32>(16589u, 1400u)))), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_clamp_u32(abs(4294967295u), ~0u, _wgslsmith_mod_u32(4294967295u, 51121u))), ~(~firstTrailingBit(9982u))));
    var_0 = arg_2.a;
    let var_2 = arg_2;
    return Struct_2(Struct_1(1223f, ~firstTrailingBit(abs(764u)), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.b.x, 31855i, arg_2.b.x, u_input.a.x), vec4<i32>(u_input.a.x, 23108i, -20463i, arg_2.b.x)), arg_2.b.x ^ ~(-1i)), var_1.x), 4294967295u, !arg_0.yx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1010f + var_2.d.x) + 951f) - arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 369u), ~vec2<u32>(10076u, var_1.x) & countOneBits(vec2<u32>(22006u, 0u))), _wgslsmith_add_i32(min(1i, 23180i) & max(-2147483647i, arg_2.b.x), _wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(26894i, 51596i, -3373i))), 1u << (var_1.x % 32u)));
}

fn func_7(arg_0: Struct_3) -> Struct_3 {
    return Struct_3(Struct_1(1417f, ~(~arg_0.c.a.d), -56260i, ~arg_0.c.d.d), ~2147483647i, Struct_2(arg_0.c.d, firstLeadingBit(~1u), arg_0.c.c, func_5(arg_0.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.a.a, 1000f, -574f))), ~(~arg_0.c.b)).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(651f - -1057f))), select(1u, 60314u, true) << (1u % 32u), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 10129u), ~vec2<u32>(6918u, 9468u))), u_input.a.x, func_6(vec3<bool>(false, true, true), vec3<f32>(_wgslsmith_f_op_f32(589f + 456f), -530f, _wgslsmith_f_op_f32(step(-762f, 1504f))), Struct_4(false, func_1(Struct_2(Struct_1(1255f, 0u, 23274i, 78381u), 4294967295u, vec2<bool>(true, true), Struct_1(-1886f, 3349u, u_input.a.x, 1u)), vec3<bool>(true, true, true), vec4<u32>(4294967295u, 48177u, 1u, 116973u)), 1f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2358f, -1000f, -764f), vec3<f32>(-340f, 879f, -489f), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(-1269f + _wgslsmith_f_op_f32(min(586f, -1094f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(146f - 680f), 21575u | (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(7951u, 124639u, var_0.c.a.b, 81610u)), ~vec4<u32>(13346u, var_0.c.b, 4294967295u, var_0.c.a.d)) & 4294967295u), ~(~_wgslsmith_add_i32(var_0.c.d.c, -1i)) | var_0.c.d.c, min(countOneBits(firstTrailingBit(var_0.c.b)), var_0.c.d.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-620f)));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_7(func_5(func_2(vec2<i32>(u_input.a.x, -36504i), vec3<f32>(172f, var_1.a, 2050f)), vec3<f32>(146f, 1551f, 223f), var_1.b)).c.d.a)));
    let var_4 = var_0.c.c.x;
    var_2 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec3<u32>(var_1.b, var_1.d, 27536u), _wgslsmith_clamp_vec3_u32(vec3<u32>(69085u, var_0.c.d.d, 0u), vec3<u32>(var_0.a.d, var_1.b, 4294967295u), vec3<u32>(var_0.a.b, var_0.c.b, 109161u)), true) << (_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(1u, var_1.d, 0u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 36195u, 0u), vec3<u32>(var_1.b, 0u, var_1.d))) % vec3<u32>(32u)));
}

