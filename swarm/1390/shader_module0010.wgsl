struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -44559i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = 11337i;
    global0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-2147483647i), 1i, ~0i), ~reverseBits(vec3<i32>(-1i, arg_0.e, -1i))), _wgslsmith_mult_i32(~1i, _wgslsmith_div_i32(arg_0.e, abs(2147483647i))));
    global0 = u_input.b | arg_0.e;
    let var_0 = countOneBits(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(~33298u, arg_0.c.x), ~arg_0.c.yz)));
    var var_1 = ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, arg_0.e, 0i, 2147483647i), vec4<i32>(arg_0.e, 0i, u_input.b, u_input.b)), -u_input.a, 2511i)), _wgslsmith_sub_vec3_i32(select(firstTrailingBit(vec3<i32>(arg_0.e, -1i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.e, 1i, 1i), vec3<i32>(arg_0.e, arg_0.e, -38176i)), select(arg_0.a, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.e.x, 19966i), vec3<i32>(u_input.e.x, 12680i, -1i) | vec3<i32>(arg_0.e, u_input.a, arg_0.e))));
    return arg_0.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> vec4<u32> {
    global0 = i32(-1i) * -9341i;
    var var_0 = 106f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -227f)));
    var var_1 = reverseBits(~((vec4<i32>(u_input.a, arg_1, u_input.e.x, u_input.e.x) & vec4<i32>(-52526i, u_input.b, 1i, arg_1)) >> (~vec4<u32>(15772u, 1u, 1u, u_input.c.x) % vec4<u32>(32u))) | -vec4<i32>(-9249i, reverseBits(2147483647i), min(-2147483647i, -1i), _wgslsmith_sub_i32(u_input.a, -1i)));
    var var_2 = Struct_1(select(vec3<bool>(false, true, true || (arg_0.x | arg_0.x)), select(arg_0.xxx, vec3<bool>(all(vec2<bool>(false, arg_0.x)), true, true), func_3(Struct_1(arg_0.zxx, -478f, vec4<u32>(u_input.c.x, arg_2.x, arg_2.x, 4294967295u), 857f, arg_1))), !func_3(Struct_1(arg_0.yzy, -1435f, vec4<u32>(arg_2.x, u_input.c.x, 4294967295u, 58133u), -308f, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -476f), abs(~_wgslsmith_sub_vec4_u32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(-1832f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(566f)) + _wgslsmith_f_op_f32(-1676f + -258f))))), select(firstLeadingBit(_wgslsmith_sub_i32(arg_3, var_1.x)), u_input.a, true) | -1i);
    return vec4<u32>(var_2.c.x >> (717u % 32u), 17680u, select(abs(_wgslsmith_mod_u32(~var_2.c.x, 1181u)), ~_wgslsmith_div_u32(u_input.d.x, 12229u) & 1u, arg_2.x != firstTrailingBit(_wgslsmith_sub_u32(var_2.c.x, var_2.c.x))), _wgslsmith_clamp_u32(min(max(~1u, _wgslsmith_clamp_u32(4294967295u, u_input.d.x, arg_2.x)), var_2.c.x), var_2.c.x ^ _wgslsmith_dot_vec2_u32(u_input.d.xy, firstLeadingBit(u_input.d.ww)), 26458u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = arg_1;
    var_0 = Struct_1(!select(arg_2.a, select(arg_1.a, func_3(arg_1), func_3(arg_0).x), true), _wgslsmith_f_op_f32(f32(-1f) * -2073f), _wgslsmith_clamp_vec4_u32(arg_0.c, vec4<u32>(~(~4294967295u), min(arg_2.c.x, ~81427u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, 0u), arg_2.c.ww) ^ 59359u, _wgslsmith_mod_u32(arg_0.c.x, 0u) ^ 1u), ~(abs(vec4<u32>(24595u, arg_1.c.x, arg_1.c.x, 4294967295u)) ^ vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.c.x))), 646f, -1i);
    var var_1 = Struct_1(vec3<bool>(false, false, arg_0.d > arg_0.b), var_0.b, vec4<u32>(_wgslsmith_div_u32(~27690u, 4294967295u | arg_2.c.x) ^ ~1u, ~(~1u), max(9321u, 64733u) << (u_input.c.x % 32u), 4294967295u), arg_1.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.e, 1i), abs(-53663i)));
    var var_2 = !select(all(arg_1.a.zz), false, func_3(Struct_1(vec3<bool>(false, true, false), -645f, vec4<u32>(u_input.c.x, 6365u, 31994u, 4294967295u), 613f, arg_2.e)).x) | (~var_0.c.x == func_2(vec4<bool>(all(var_0.a), true & var_1.a.x, true & arg_2.a.x, false), -20539i, arg_1.c, 1i >> (0u % 32u)).x);
    var var_3 = any(!vec3<bool>(arg_2.a.x, !(27869u < arg_2.c.x), all(!vec4<bool>(false, arg_0.a.x, arg_2.a.x, true))));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<bool>) -> bool {
    global0 = ~arg_0.e;
    let var_0 = select(!vec4<bool>(true, arg_1, !arg_3.x, true), select(vec4<bool>(false, arg_0.a.x, _wgslsmith_add_u32(u_input.d.x, u_input.c.x) != u_input.c.x, any(arg_0.a) != (u_input.b < 34754i)), vec4<bool>(true, true, true, true), false), !(!any(select(arg_3, arg_3, vec3<bool>(false, false, arg_1)))));
    var var_1 = firstTrailingBit(-vec4<i32>(~u_input.e.x, 0i, _wgslsmith_clamp_i32(abs(arg_0.e), arg_0.e & u_input.e.x, _wgslsmith_sub_i32(arg_0.e, u_input.e.x)), -8914i));
    let var_2 = -732f;
    global0 = _wgslsmith_mult_i32(5469i, 60588i);
    return !func_4(arg_0, Struct_1(var_0.yxy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1492f, arg_0.d)), vec4<u32>(1u, u_input.c.x, 5455u, u_input.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-643f + 417f), _wgslsmith_f_op_f32(ceil(-705f)))), arg_0.e), Struct_1(vec3<bool>(all(var_0.yx), true, true), _wgslsmith_f_op_f32(sign(arg_2.x)), countOneBits(func_2(vec4<bool>(false, false, arg_0.a.x, arg_1), arg_0.e, vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 79214u), 28232i)), _wgslsmith_f_op_f32(round(692f)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e.x, arg_0.e, -4303i, var_1.x), vec4<i32>(5i, -2147483647i, -7147i, 12487i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = Struct_1(!vec3<bool>(true, !func_1(Struct_1(vec3<bool>(true, false, false), -684f, vec4<u32>(4294967295u, 4294967295u, var_0.x, 108u), 1000f, 31651i), true, vec3<f32>(-555f, -641f, 346f), vec3<bool>(false, false, false)), false), _wgslsmith_f_op_f32(select(-125f, _wgslsmith_f_op_f32(1269f * -379f), false)), (abs(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.c.x), u_input.d)) ^ firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 41349u, var_0.x)))) >> (max(vec4<u32>(var_0.x, u_input.d.x, _wgslsmith_mod_u32(var_0.x, var_0.x), _wgslsmith_dot_vec3_u32(u_input.d.xxx, var_0.xzx)), u_input.d) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1617f)) * -1266f)))), abs(~(i32(-1i) * -12575i)) << (var_0.x % 32u));
    var var_2 = Struct_1(!vec3<bool>(!var_1.a.x, true, var_1.a.x), 307f, func_2(select(vec4<bool>(true, var_1.a.x, false || var_1.a.x, true == var_1.a.x), !vec4<bool>(false, false, var_1.a.x, var_1.a.x), !select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, true, false), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x))), _wgslsmith_mod_i32(u_input.a << (var_0.x % 32u), i32(-1i) * -18701i) >> (66327u % 32u), vec4<u32>(19456u, func_2(select(vec4<bool>(true, false, true, var_1.a.x), vec4<bool>(false, var_1.a.x, false, var_1.a.x), false), ~var_1.e, ~u_input.d, max(u_input.a, var_1.e)).x, ~0u, 4294967295u), u_input.a), var_1.b, _wgslsmith_mult_i32(~(~u_input.b), 2147483647i));
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f * -1067f) * var_2.d), vec4<u32>(~_wgslsmith_div_u32(28574u, var_0.x), reverseBits(49217u) | var_1.c.x, _wgslsmith_sub_u32(62936u, var_2.c.x) & 3599u, u_input.c.x) & vec4<u32>(var_1.c.x, abs(u_input.c.x), ~var_0.x, 55152u), _wgslsmith_f_op_f32(sign(var_1.d)), var_1.e);
    var_3 = Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -583f))), var_2.d))), _wgslsmith_clamp_vec4_u32(var_3.c, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 10637u, var_1.c.x, u_input.d.x), var_1.c), min(vec4<u32>(var_0.x, _wgslsmith_mod_u32(var_2.c.x, 13555u), var_1.c.x, 1u), vec4<u32>(min(var_3.c.x, 4294967295u), min(0u, 0u), var_3.c.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(343f, _wgslsmith_f_op_f32(f32(-1f) * -122f)) - var_1.b)), -abs(~(~(-9014i))));
    let var_4 = _wgslsmith_div_f32(-443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, -1221f)) * 1f)) - var_1.d));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-613f - -412f) - var_1.b);
    let var_6 = Struct_1(vec3<bool>(true, func_4(Struct_1(var_3.a, _wgslsmith_div_f32(-355f, 1451f), u_input.d << (var_3.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(var_1.d + -489f), -1i), Struct_1(func_3(Struct_1(var_3.a, var_3.d, u_input.d, var_1.d, 0i)), _wgslsmith_f_op_f32(trunc(var_2.b)), ~var_2.c, _wgslsmith_f_op_f32(round(-134f)), select(-1i, u_input.b, false)), Struct_1(var_3.a, _wgslsmith_f_op_f32(max(-1537f, -1027f)), select(vec4<u32>(var_3.c.x, var_2.c.x, var_0.x, 44098u), var_3.c, vec4<bool>(false, var_1.a.x, var_1.a.x, var_3.a.x)), var_4, ~(-5118i))), all(select(!vec4<bool>(true, var_1.a.x, true, true), !vec4<bool>(var_2.a.x, true, true, false), vec4<bool>(true, true, var_3.a.x, false)))), _wgslsmith_f_op_f32(-1771f - var_3.d), abs(countOneBits(var_0)) >> (max(~(u_input.d << (vec4<u32>(var_0.x, var_3.c.x, 1u, var_1.c.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(4294967295u, 14625u), ~4294967295u, u_input.d.x, var_0.x)) % vec4<u32>(32u)), -2200f, abs(_wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(var_1.e, 0i, var_1.e)), 0i)));
    global0 = -_wgslsmith_clamp_i32(var_1.e, min(18811i, var_2.e) >> ((~4294967295u & var_2.c.x) % 32u), -29910i);
    let x = u_input.a;
    s_output = StorageBuffer(1512f, max(var_6.c.x, _wgslsmith_mult_u32(var_3.c.x, max(_wgslsmith_mod_u32(30226u, u_input.c.x), reverseBits(19405u)))));
}

