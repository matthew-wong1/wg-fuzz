struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_2(all(select(vec4<bool>(u_input.a >= 60453u, any(vec2<bool>(arg_0.a, false)), any(vec4<bool>(true, true, arg_0.a, false)), arg_0.a && arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, false, false), select(vec4<bool>(arg_0.a, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_0.a, false, arg_0.a)), false), false)), firstLeadingBit(vec4<i32>(-u_input.b.x, 0i, _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(u_input.c.x, arg_0.b.x, arg_0.b.x, 1i)), ~u_input.c.x)) ^ abs(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.e, 0i, 1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)) + arg_2))), 22501i);
    let var_1 = select(-2147483647i, firstLeadingBit(~((var_0.d | u_input.b.x) & u_input.d)), arg_0.a);
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(-var_0.d & firstLeadingBit(-2147483647i), -34691i), _wgslsmith_add_vec2_i32(var_0.b.yw, vec2<i32>(-41790i, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(arg_1.xxw))))));
    var var_3 = abs(-_wgslsmith_add_i32(-var_2.a.x, var_1 | firstLeadingBit(24462i)));
    var_3 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_0.d, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, var_0.b.x), arg_0.b.yx)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-(~arg_0.b.zyy), select(-var_0.b.zzy, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_1, var_0.b.x), u_input.c, var_0.b.xxy), vec3<bool>(arg_0.a, true, false))), vec3<i32>(var_2.a.x, var_0.d, -var_1)));
    return vec2<u32>(countOneBits(firstTrailingBit(u_input.a)), ~_wgslsmith_clamp_u32(u_input.a, countOneBits(~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 29140u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 56207u))));
}

fn func_2() -> vec2<i32> {
    return _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), func_3(Struct_2(false, vec4<i32>(u_input.c.x, -1i, 35853i, -1i), -2220f, -1897i), vec4<f32>(-1937f, 223f, -337f, -571f), 345f)) % 32u), u_input.e), u_input.c.yx);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    return -abs(-u_input.e);
}

fn func_1() -> vec2<u32> {
    let var_0 = ~(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.e, u_input.b.x), vec4<i32>(u_input.d, 47404i, u_input.d, u_input.b.x)) >> (u_input.a % 32u), select(true, true, false), -func_2()) >> ((1u >> (abs(min(u_input.a, u_input.a)) % 32u)) % 32u));
    let var_1 = true;
    var var_2 = all(vec3<bool>((_wgslsmith_add_i32(-1i, var_0) << (~u_input.a % 32u)) != -37049i, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1866f - 1823f)) != _wgslsmith_f_op_f32(max(-293f, _wgslsmith_f_op_f32(floor(-502f)))), all(!select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, true), vec3<bool>(var_1, false, var_1)))));
    let var_3 = Struct_2(true, _wgslsmith_clamp_vec4_i32(-countOneBits(vec4<i32>(74417i, 0i, -2147483647i, -26942i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, 1i, u_input.b.x, 1i), ~vec4<i32>(1i, -37151i, 1i, 41879i), vec4<i32>(u_input.b.x, u_input.b.x, -3079i, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.b.x & -30247i, _wgslsmith_sub_i32(1i, u_input.b.x)), -1i, -15349i, _wgslsmith_div_i32(~37118i, u_input.c.x >> (48126u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - _wgslsmith_f_op_f32(-148f * _wgslsmith_div_f32(-1145f, 935f)))), max(1i, _wgslsmith_sub_i32(-u_input.c.x, i32(-1i) * -1i)));
    var_2 = ~(~_wgslsmith_mult_u32(12695u, u_input.a) ^ u_input.a) != ~(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 12960u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    return _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, firstLeadingBit(u_input.a) | u_input.a)), vec2<u32>(1u, u_input.a), vec2<u32>(countOneBits(~u_input.a) | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 59582u), vec3<u32>(u_input.a, u_input.a, u_input.a)), max(~func_3(var_3, vec4<f32>(-938f, -123f, -636f, -1000f), 1054f).x, ~u_input.a | 84662u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~select(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~firstLeadingBit(vec2<u32>(88804u, 10779u)), vec2<bool>(any(vec3<bool>(false, false, false)), true)));
    var_0 = vec2<u32>(0u, u_input.a) & ~(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 43765u), func_1()) & ~func_3(Struct_2(false, vec4<i32>(0i, 0i, 1i, u_input.d), 940f, u_input.b.x), vec4<f32>(-1568f, -619f, 785f, -2407f), 727f));
    let var_1 = Struct_2(select(true != all(vec4<bool>(true, true, true, true)), false, true), vec4<i32>(u_input.d, ~u_input.d, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d, 0i), 1i), u_input.c.x) & (vec4<i32>(-1i) * -vec4<i32>(6461i, u_input.e, u_input.b.x, u_input.c.x)), _wgslsmith_f_op_f32(528f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) - _wgslsmith_f_op_f32(-1400f - 1782f)))), -(~(-2147483647i)));
    var var_2 = Struct_1(var_1.b.zw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-818f - 1970f), _wgslsmith_f_op_f32(floor(697f)), _wgslsmith_f_op_f32(trunc(-1567f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -506f, -474f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(615f, var_1.c, var_1.c), vec3<f32>(var_1.c, var_1.c, var_1.c))))));
    var var_3 = Struct_2(true, -select(-var_1.b, firstLeadingBit(vec4<i32>(-1i, u_input.d, 2147483647i, var_2.a.x)), !vec4<bool>(false, true, var_1.a, var_1.a)) >> (reverseBits(~vec4<u32>(9411u, 1u, 56891u, var_0.x) << ((vec4<u32>(4294967295u, 71913u, 67017u, 0u) ^ vec4<u32>(var_0.x, 1u, 9933u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1289f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2008f))))), -2147483647i);
    var var_4 = true;
    var_4 = var_1.a;
    var_2 = Struct_1(reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.b.zxz | u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.x, var_2.a.x, 2147483647i), vec3<i32>(u_input.c.x, var_1.d, 0i))), abs(max(var_3.d, 15487i)))), var_2.b);
    var var_5 = select(!vec2<bool>(all(select(vec4<bool>(false, false, false, var_3.a), vec4<bool>(true, var_3.a, false, var_1.a), vec4<bool>(false, true, true, true))), false), select(vec2<bool>(true, true), vec2<bool>(var_3.a, var_1.a), -_wgslsmith_sub_i32(2147483647i, var_3.b.x) <= _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -26642i, u_input.c.x, -1i), _wgslsmith_clamp_vec4_i32(var_3.b, vec4<i32>(0i, 18535i, 2147483647i, 11753i), var_3.b))), select(!vec2<bool>(var_1.c <= 325f, !var_1.a), select(vec2<bool>(true, true), !(!vec2<bool>(var_1.a, true)), select(!vec2<bool>(var_3.a, var_3.a), vec2<bool>(false, false), select(vec2<bool>(var_3.a, false), vec2<bool>(var_3.a, false), var_1.a))), select(!vec2<bool>(false, var_3.a), !(!vec2<bool>(var_1.a, true)), select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_3.a, false), false), vec2<bool>(var_1.a, var_1.a), var_3.d < -70172i))));
    let x = u_input.a;
    s_output = StorageBuffer(-((u_input.c.x ^ (2147483647i >> (1u % 32u))) & (_wgslsmith_add_i32(var_1.d, var_2.a.x) & 5672i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, var_2.b.x, -1776f))))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, 56733u, u_input.a, 1u)) ^ _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, 57757u, u_input.a, 1u)), ~vec4<u32>(4294967295u, 1u, 3249u, 54382u)), ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, 23955u)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.c)), 277f, _wgslsmith_f_op_f32(var_3.c - var_3.c), -1095f)))));
}

