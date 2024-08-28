struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = 0u;
    var_0 = ~_wgslsmith_dot_vec4_u32(~max(~vec4<u32>(9153u, 26194u, u_input.a, arg_2.c), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), abs(vec4<u32>(5033u, _wgslsmith_mod_u32(71358u, u_input.a), u_input.a, 66001u)));
    var_0 = arg_2.b;
    var_0 = 51917u;
    var_0 = ~u_input.a;
    return vec4<u32>(arg_2.b, 4294967295u, arg_2.b, _wgslsmith_sub_u32(0u, ~abs(4294967295u)) ^ ~u_input.a);
}

fn func_2() -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-16973i, 32109i, 80781i), ~vec3<i32>(-17016i, 53232i, -24611i)), _wgslsmith_f_op_f32(194f - _wgslsmith_div_f32(167f, 294f)), Struct_3(firstLeadingBit(vec2<i32>(2147483647i, -22076i)), 1u, _wgslsmith_add_u32(u_input.a, u_input.a)), Struct_1(vec2<bool>(true, true), reverseBits(vec4<i32>(1i, 2147483647i, -13881i, -7194i)), true)), vec4<u32>(abs(u_input.a), _wgslsmith_add_u32(select(u_input.a, u_input.a, true), u_input.a), firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 61345u), countOneBits(vec4<u32>(u_input.a, u_input.a, 13317u, u_input.a)))));
    let var_1 = false;
    var var_2 = vec3<i32>(12792i, -2147483647i, -1236i);
    let var_3 = false;
    let var_4 = firstLeadingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, 0i) << (vec3<u32>(2518u, 0u, 65679u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(var_2.x, var_2.x, 1i)), abs(vec3<i32>(-1i, var_2.x, var_2.x))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 42869i, var_2.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-73214i, 14086i, -18776i), vec3<i32>(var_2.x, var_2.x, 1i))), true)) & vec3<i32>(abs(var_2.x), 0i, -1i);
    return Struct_3(var_4.xz, _wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(~(~12315u), firstLeadingBit(31204u))), _wgslsmith_mult_u32(3594u, _wgslsmith_add_u32(12338u, ~u_input.a)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = all(select(vec4<bool>(any(vec4<bool>(true, arg_0, true, false)) || any(vec3<bool>(arg_0, arg_0, true)), true, true && arg_0, arg_0), select(vec4<bool>(arg_0, true, true, any(vec4<bool>(arg_0, arg_0, arg_0, false))), !select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, arg_0, false, arg_0), false), arg_0), true));
    let var_2 = any(!vec3<bool>(!(var_1 | arg_0), arg_0 | false, any(vec3<bool>(false, arg_0, arg_0))));
    var var_3 = Struct_2(true);
    let var_4 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.a.x, _wgslsmith_mult_i32(0i, var_0.a.x), -16467i), (vec3<i32>(var_0.a.x, 2147483647i, 1i) | vec3<i32>(var_0.a.x, -45154i, 37079i)) & -vec3<i32>(7983i, 0i, -4263i)), firstLeadingBit(var_0.a.x), _wgslsmith_clamp_i32(~0i, max(26356i, -2147483647i), var_0.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -2147483647i, 2147483647i, 0i), ~vec4<i32>(var_0.a.x, var_0.a.x, 0i, 2147483647i) | -vec4<i32>(-24671i, var_0.a.x, var_0.a.x, 54810i))) >> (abs(~(~vec4<u32>(1u, var_0.c, u_input.a, 94195u))) % vec4<u32>(32u));
    return Struct_2(true);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = arg_3;
    var var_1 = Struct_1(!(!(!(!vec2<bool>(var_0.a, arg_3.a)))), -vec4<i32>(arg_2.x, arg_2.x, -(i32(-1i) * -2147483647i), (arg_2.x | arg_2.x) | _wgslsmith_add_i32(2147483647i, arg_2.x)), all(select(!vec3<bool>(var_0.a, false, true), select(!vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(arg_3.a, true, false), vec3<bool>(var_0.a, false, false)), true)));
    var_0 = func_1(all(!(!select(vec4<bool>(true, false, arg_3.a, var_0.a), vec4<bool>(true, var_0.a, var_1.a.x, false), vec4<bool>(var_0.a, false, true, false)))));
    var var_2 = min(max((abs(vec2<u32>(7567u, u_input.a)) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 1u) % vec2<u32>(32u)), min(vec2<u32>(4294967295u, ~0u), vec2<u32>(~8241u, 11319u))), max(vec2<u32>(u_input.a, 0u), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 45830u), vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), u_input.a))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_1), 2120f))));
    return countOneBits(vec2<i32>(arg_2.x, arg_2.x));
}

fn func_5(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(abs(u_input.a), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a | 13027u, u_input.a)));
    var var_1 = vec4<i32>(arg_0.x, arg_0.x, func_4(1f, _wgslsmith_f_op_f32(830f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(904f, -129f), -316f))), vec3<i32>(_wgslsmith_sub_i32(~arg_0.x, ~0i), ~arg_0.x, arg_0.x), Struct_2(true)).x, -2147483647i);
    var var_2 = func_2();
    var_0 = ~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(u_input.a, 3002u, 1u)), vec3<u32>(~_wgslsmith_add_u32(var_2.b, 1u), ~(u_input.a << (1u % 32u)), 6738u));
    var_1 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_2.a.x, 0i, var_2.a.x, 3203i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 31652i, var_2.a.x, 33212i), vec4<i32>(var_1.x, 0i, -1i, var_1.x))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, arg_0.x, -1i), vec4<i32>(-1i, arg_0.x, 14308i, arg_0.x), vec4<i32>(2147483647i, arg_0.x, 2147483647i, var_2.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.x, -2147483647i, -1i), vec4<i32>(20959i, var_2.a.x, var_2.a.x, arg_0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, -1i, arg_0.x & arg_0.x), firstLeadingBit(select(vec4<i32>(1i, var_1.x, -1i, -41580i), vec4<i32>(-1i, var_2.a.x, 10677i, 14475i), false)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, var_2.a.x, arg_0.x), vec4<i32>(-43123i, -53088i, var_1.x, var_2.a.x)))) | ~(vec4<i32>(-1i) * -vec4<i32>(-19745i, -2147483647i, 0i, -66265i));
    return Struct_1(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), -vec4<i32>(1i, 10820i, arg_0.x, 16276i), true);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = false;
    var var_1 = func_2();
    let var_2 = arg_0.b.x == 16703i;
    var_1 = func_2();
    var var_3 = i32(-1i) * -1i;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, true), func_6(func_5(func_4(-1458f, _wgslsmith_f_op_f32(574f + 623f), _wgslsmith_sub_vec3_i32(vec3<i32>(19206i, 1i, 2147483647i), vec3<i32>(1i, 0i, 0i)), func_1(true))), ~(vec3<u32>(u_input.a, u_input.a, 0u) << (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 15394u, 1207u)) == ~u_input.a), all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, false), true)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1343f)), _wgslsmith_f_op_f32(f32(-1f) * -740f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1351f, -133f, var_1, -1253f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(min(741f, _wgslsmith_f_op_f32(floor(var_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 - var_1), -1128f)), var_1)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1, 161f, -261f) * vec4<f32>(var_1, 407f, -151f, -281f)), vec4<f32>(var_2.x, 412f, -714f, -265f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, 359f, -479f, var_1)))), vec4<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(sign(-443f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_1))));
    let var_3 = all(vec2<bool>(any(select(var_0.a, vec2<bool>(true, true), var_0.a)) | true, func_5(_wgslsmith_add_vec2_i32(vec2<i32>(-22527i, var_0.b.x), vec2<i32>(10429i, -1i))).c & (true | (false & var_0.c))));
    var_0 = func_5(-vec2<i32>(i32(-1i) * -var_0.b.x, ~var_0.b.x));
    var var_4 = func_1(var_0.c && var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.wyw);
}

