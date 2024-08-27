struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    return _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, firstLeadingBit(1u) ^ arg_1.x, ~_wgslsmith_add_u32(4294967295u, u_input.b.x), 17519u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, 1u), 69894u, ~(~48056u), ~(~u_input.b.x)), vec4<u32>(arg_1.x, u_input.b.x, arg_1.x, ~u_input.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> f32 {
    global0 = false;
    let var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.b.d, firstTrailingBit(-2147483647i), (-8001i ^ u_input.c.x) << (firstLeadingBit(arg_2.b.b.x) % 32u), ~(-1i)), select(vec4<i32>(arg_2.b.d ^ (i32(-1i) * -45661i), 2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(30358i, arg_2.c.d, arg_2.c.d, -1i), countOneBits(vec4<i32>(arg_2.b.d, -2147483647i, 30346i, u_input.c.x)))), -vec4<i32>(~(-861i), 1i, _wgslsmith_div_i32(u_input.d, u_input.c.x), ~u_input.d), vec4<bool>(!(arg_2.c.a < arg_2.c.c), all(!vec3<bool>(true, arg_2.a, true)), true, any(arg_0.zy))));
    var var_1 = u_input.b.x;
    var_1 = min(func_3(arg_3, arg_2.b.b), u_input.b.x);
    let var_2 = vec2<i32>(arg_2.c.d, ~_wgslsmith_sub_i32(1i, arg_2.b.d)) & var_0.xz;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1781f * _wgslsmith_f_op_f32(1981f - _wgslsmith_f_op_f32(f32(-1f) * -423f)))), -583f));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = u_input.c.x;
    var var_1 = vec2<i32>(-_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.d, arg_0.d, 8383i), vec4<i32>(arg_3.b.d, -2146i, 0i, 1i))), ~max(vec4<i32>(u_input.d, u_input.c.x, arg_3.b.d, 0i), vec4<i32>(arg_0.d, 0i, -9108i, arg_2.x))), select(arg_3.b.d, 0i, arg_3.a));
    let var_2 = arg_3.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), arg_3.b.b.x, arg_3, arg_3.b.c)))))));
    let var_4 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.b, ~vec3<u32>(arg_3.b.e.x, abs(u_input.b.x), ~47096u)), _wgslsmith_clamp_vec3_u32(select(arg_0.b, ~vec3<u32>(arg_3.b.e.x, 0u, 4294967295u), 1u > arg_3.b.e.x) & arg_0.b, ~vec3<u32>(firstTrailingBit(17645u), arg_3.b.b.x, firstTrailingBit(4294967295u)), vec3<u32>(arg_3.b.b.x, firstTrailingBit(48847u), _wgslsmith_mult_u32(firstTrailingBit(arg_3.c.e.x), abs(arg_3.b.b.x)))));
    return max(var_4.yx, arg_0.b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-377f, -985f) + _wgslsmith_f_op_f32(f32(-1f) * -965f)));
    var_1 = _wgslsmith_f_op_f32(1143f * -680f);
    var var_2 = _wgslsmith_dot_vec2_u32(max(u_input.b, ~countOneBits(func_1(Struct_1(-939f, vec3<u32>(u_input.b.x, 1u, u_input.b.x), 1038f, u_input.d, u_input.b), -123f, vec3<i32>(-35091i, 2147483647i, u_input.a), Struct_2(true, Struct_1(-834f, vec3<u32>(u_input.b.x, 75507u, 45149u), -693f, u_input.c.x, u_input.b), Struct_1(-106f, vec3<u32>(67691u, 0u, u_input.b.x), -1000f, u_input.c.x, u_input.b))))), ~((~u_input.b | vec2<u32>(0u, 1020u)) | select(vec2<u32>(0u, 0u), func_1(Struct_1(-830f, vec3<u32>(61259u, 1u, 1u), 523f, u_input.a, u_input.b), 1000f, vec3<i32>(-1i, u_input.c.x, u_input.a), Struct_2(false, Struct_1(1249f, vec3<u32>(u_input.b.x, 40847u, u_input.b.x), -1000f, -12561i, vec2<u32>(31174u, u_input.b.x)), Struct_1(1235f, vec3<u32>(u_input.b.x, 65670u, u_input.b.x), 498f, 53184i, u_input.b))), true)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -586f), vec3<u32>(firstLeadingBit(~4294967295u), ~1u | u_input.b.x, _wgslsmith_add_u32(4294967295u, min(u_input.b.x, u_input.b.x))) << (vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 98226u, u_input.b.x, u_input.b.x), vec4<u32>(5139u, 0u, 1u, 54416u)), ~52839u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) >> (~u_input.b.x % 32u)) % vec3<u32>(32u)), 1856f, u_input.a, abs(~abs(u_input.b << (u_input.b % vec2<u32>(32u)))));
    let var_4 = ~firstLeadingBit(min(vec3<i32>(35054i, max(2147483647i, u_input.d), u_input.a), vec3<i32>(~7221i, -1i, var_3.d)));
    var var_5 = -max(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 2147483647i, 0i, var_4.x), firstTrailingBit(vec4<i32>(u_input.d, u_input.a, var_3.d, 4716i))), firstLeadingBit(vec4<i32>(~var_4.x, var_4.x | u_input.c.x, u_input.c.x >> (u_input.b.x % 32u), _wgslsmith_add_i32(0i, var_4.x))));
    let var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(357f + _wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.c + -495f))), _wgslsmith_f_op_f32(-465f + var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a)) * _wgslsmith_div_f32(1190f, var_3.a))), -505f), _wgslsmith_div_vec2_u32(~select(vec2<u32>(u_input.b.x, 29301u), vec2<u32>(4294967295u, u_input.b.x), true) & countOneBits(u_input.b), ~countOneBits(vec2<u32>(34186u, 60146u)) | (~u_input.b | abs(vec2<u32>(var_3.e.x, u_input.b.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), ~u_input.b.x, Struct_2(false, var_3, Struct_1(var_6, var_3.b, var_3.c, var_4.x, vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_f32(-var_6))), 1491f), var_3.c, _wgslsmith_f_op_f32(-var_6)), _wgslsmith_mod_u32(0u, 1u), _wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), -1750f)))));
}

