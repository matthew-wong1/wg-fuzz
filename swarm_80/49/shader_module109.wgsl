struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    let var_0 = Struct_1(!any(arg_1.b.zzz), ~(~1u), vec2<i32>(u_input.a, u_input.a));
    let var_1 = select(~(~(-(vec3<i32>(-1i, arg_2, var_0.c.x) << (vec3<u32>(24114u, 4294967295u, 1u) % vec3<u32>(32u))))), -vec3<i32>(0i, _wgslsmith_sub_i32(32431i, arg_1.a.c.x) & (u_input.a ^ u_input.a), arg_2), vec3<bool>(_wgslsmith_sub_i32(arg_2, max(-25872i, u_input.a)) <= arg_2, true, !(u_input.a > max(u_input.a, arg_2))));
    var var_2 = _wgslsmith_div_vec2_i32(abs(abs(~vec2<i32>(arg_2, u_input.a))), -vec2<i32>(max(var_1.x, var_1.x) ^ ~var_0.c.x, 46529i));
    var var_3 = var_1.xz;
    var_2 = ~(~arg_1.a.c);
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(true, 0u, firstTrailingBit(vec2<i32>(~_wgslsmith_add_i32(arg_2.c.x, arg_2.c.x), ~(~arg_2.c.x))));
    let var_1 = !vec3<bool>(all(select(vec4<bool>(false, arg_2.a, var_0.a, false), vec4<bool>(false, false, arg_1.x, var_0.a), false)), false, any(arg_1));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, arg_0, -1000f, arg_0) + vec4<f32>(arg_0, 695f, -662f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1659f))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, 1753f), vec4<f32>(859f, arg_0, arg_0, 2211f), vec4<bool>(var_0.a, true, false, var_0.a))), Struct_2(Struct_1(false, 39294u, vec2<i32>(-1i, var_0.c.x)), vec4<bool>(false, arg_2.a, false, arg_2.a)), 2147483647i))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 542f, arg_0, arg_0) - vec4<f32>(arg_0, -1000f, arg_0, -861f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(arg_0, arg_0, arg_0, arg_0), Struct_2(arg_2, vec4<bool>(false, true, arg_1.x, var_1.x)), var_0.c.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-760f, _wgslsmith_f_op_f32(select(arg_0, -1000f, true)), _wgslsmith_f_op_f32(select(-1000f, arg_0, arg_1.x)), -1353f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-338f, arg_0, arg_0, arg_0), vec4<f32>(1788f, arg_0, 164f, -734f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-308f, -1349f, arg_0, arg_0), vec4<f32>(1541f, 860f, arg_0, arg_0))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(175f, 316f, 230f, -1117f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 1279f, arg_0))))));
    var var_4 = var_3.zw;
    return !select(vec4<bool>(u_input.a >= (i32(-1i) * -9784i), all(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true), var_1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 55020u), u_input.b) == arg_2.b, var_0.a), select(!vec4<bool>(false, arg_2.a, var_1.x, arg_2.a), !(!vec4<bool>(arg_1.x, true, var_0.a, true)), select(select(vec4<bool>(arg_1.x, var_1.x, var_1.x, arg_1.x), vec4<bool>(false, false, false, var_0.a), true), select(vec4<bool>(arg_2.a, arg_2.a, var_1.x, true), vec4<bool>(arg_2.a, false, true, false), vec4<bool>(true, true, var_1.x, false)), var_0.c.x != arg_2.c.x)), !arg_1.x);
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<u32>(select(u_input.c, ~51036u, true & !(1u >= u_input.c)), reverseBits(max(~(1u ^ u_input.c), _wgslsmith_mod_u32(~23722u, ~7437u))));
    var_0 = vec2<u32>(_wgslsmith_sub_u32((55143u >> (_wgslsmith_mult_u32(2736u, var_0.x) % 32u)) >> (var_0.x % 32u), firstLeadingBit(4294967295u)), u_input.b.x);
    var_0 = ~u_input.b;
    var var_1 = countOneBits(vec3<i32>(select(u_input.a, u_input.a, any(func_2(-700f, vec2<bool>(true, true), Struct_1(false, var_0.x, vec2<i32>(-33142i, 0i))))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(12146i, u_input.a, u_input.a), vec3<i32>(-24873i, u_input.a, u_input.a))), u_input.a), u_input.a));
    var_1 = min(vec3<i32>(var_1.x, _wgslsmith_mult_i32(-13168i, -1i), ~(~u_input.a)), vec3<i32>(_wgslsmith_div_i32(-min(var_1.x, 9542i), var_1.x), u_input.a, i32(-1i) * -42723i));
    return Struct_2(Struct_1(false, ~u_input.c, vec2<i32>(u_input.a, 25226i)), vec4<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_0.x, 4294967295u), vec3<u32>(var_0.x, u_input.c, 0u)) <= firstTrailingBit(47351u)), firstTrailingBit(u_input.a >> (var_0.x % 32u)) <= ~abs(11200i), true, !(true | (u_input.c <= 0u))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<u32>(~u_input.b.x, _wgslsmith_add_u32(~(arg_3.x & min(24076u, 14227u)), arg_1.b), ~abs(_wgslsmith_mult_u32(arg_2.a.b, 43039u)) & select(33315u, ~1u, min(arg_1.b, 4294967295u) >= ~4294967295u), max(_wgslsmith_clamp_u32(arg_1.b, select(~57139u, 11103u, true), 23301u), 0u));
    var var_1 = arg_3.xy;
    var var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(426f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-148f, 1504f)), _wgslsmith_f_op_f32(select(543f, 1285f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1030f * _wgslsmith_f_op_f32(f32(-1f) * -1024f)) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-675f, -243f, 373f, 1950f), vec4<f32>(777f, 1577f, 2087f, 1407f)), arg_2, 67434i)).x), _wgslsmith_f_op_f32(max(845f, _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(min(-424f, 526f)))))));
    var_1 = var_0.yx;
    return Struct_1(arg_0.a.a, 0u, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -36533i), func_1().a.c), _wgslsmith_div_vec2_i32(arg_1.c, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, 44282i), var_2.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), vec3<bool>(false, false, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))) && true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, !(u_input.c != u_input.c)), 21877u < reverseBits(~u_input.b.x)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), all(vec4<bool>(true, false, false, true)))));
    var var_1 = func_4(func_1(), Struct_1(select(!var_0.x, var_0.x, var_0.x) | all(var_0.xy), _wgslsmith_mult_u32(~u_input.c, u_input.b.x), vec2<i32>(min(min(-13179i, u_input.a), _wgslsmith_add_i32(u_input.a, 2147483647i)), u_input.a)), func_1(), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 22634u, 4884u, u_input.b.x)), vec4<u32>(37964u, u_input.c, 0u, 24877u) & vec4<u32>(u_input.b.x, 129062u, u_input.c, u_input.b.x)), ~max(vec4<u32>(0u, 57062u, 71654u, 57703u), vec4<u32>(u_input.b.x, u_input.c, 1u, 11410u))) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 19031u) & ~vec4<u32>(1u, 0u, 18027u, u_input.c), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 2175u, 22439u), vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u) % vec4<u32>(32u))), countOneBits(vec4<u32>(90949u, u_input.c, u_input.b.x, u_input.b.x) & vec4<u32>(4294967295u, u_input.b.x, 47927u, 0u))));
    var_1 = Struct_1(!var_0.x, ~74572u, vec2<i32>(1i, var_1.c.x ^ _wgslsmith_sub_i32(0i, -14070i)) & var_1.c);
    var_1 = func_4(func_1(), Struct_1(true, var_1.b, _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_1.c.x, var_1.c.x), _wgslsmith_div_i32(-47396i, var_1.c.x)), vec2<i32>(-1i ^ u_input.a, u_input.a))), func_1(), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(3449u, u_input.b.x, 0u, 4294967295u) << (vec4<u32>(u_input.b.x, 4294967295u, 41182u, 1u) % vec4<u32>(32u)), vec4<u32>(0u, 14237u, var_1.b, 34255u)) << (vec4<u32>(_wgslsmith_mult_u32(var_1.b, 73461u), 1u, var_1.b, firstTrailingBit(var_1.b)) % vec4<u32>(32u))));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1968f, 105f), 1272f, u_input.b >> (~u_input.b % vec2<u32>(32u)));
}

