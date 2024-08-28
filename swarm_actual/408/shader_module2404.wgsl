struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

var<private> global2: array<vec3<f32>, 18>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -1423i, -3048i) | -vec4<i32>(u_input.d, u_input.d, 64079i, global0.x), ~(~vec4<i32>(u_input.d, u_input.a, global0.x, global0.x)));
    var var_0 = Struct_2(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), vec4<bool>(select(true, false, true) | all(vec3<bool>(true, true, true)), false, !all(vec4<bool>(false, true, false, false)), false), vec4<bool>(true, true, true, true)));
    global2 = array<vec3<f32>, 18>();
    global0 = ~firstLeadingBit(-vec4<i32>(global0.x, 38047i, -68951i, 11950i)) ^ -_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(3622i, 0i, u_input.d, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.d, global0.x, -2147483647i), vec4<i32>(global0.x, global0.x, -11974i, u_input.a))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d, -5065i, global0.x, -10327i), vec4<i32>(global0.x, u_input.d, global0.x, u_input.a), -vec4<i32>(global0.x, 4784i, u_input.d, 8663i)));
    global2 = array<vec3<f32>, 18>();
    return select(select(select(vec4<bool>(true, true, true, all(var_0.a.xxx)), var_0.a, var_0.a), !vec4<bool>(true, all(var_0.a.zw), !var_0.a.x, true), var_0.a), vec4<bool>(all(vec4<bool>(!var_0.a.x, false, false, arg_0.x < u_input.c)), var_0.a.x, !var_0.a.x, !(any(var_0.a.xzw) | true)), select(!var_0.a, !(!select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_0.a, true)), (~20747u >> (arg_0.x % 32u)) >= abs(_wgslsmith_clamp_u32(arg_0.x, u_input.b, u_input.b))));
}

fn func_2() -> i32 {
    let var_0 = vec3<u32>(u_input.c, u_input.c, _wgslsmith_mod_u32(~u_input.b, u_input.c));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-60028i, ~u_input.d, u_input.a), global0.yyx), select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-127f + 1000f), 1919f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -884f))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-572f)) * 1453f) >= _wgslsmith_f_op_f32(step(-904f, _wgslsmith_f_op_f32(-1170f - 1103f)))), vec4<f32>(-102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-121f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(158f * 170f), _wgslsmith_f_op_f32(-771f - 1239f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -928f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(628f * 1483f)))))), -2147483647i);
    var var_2 = select(select(select(!select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(true, var_1.b, false, var_1.b), var_1.b), vec4<bool>(true, 0i < var_1.d, var_1.b, !var_1.b), vec4<bool>(true, !var_1.b, !var_1.b, var_1.c.x < var_1.c.x)), vec4<bool>(true, _wgslsmith_f_op_f32(-var_1.c.x) <= _wgslsmith_f_op_f32(var_1.c.x * -1315f), var_1.b, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, u_input.b, 1u)) >= var_0.x), var_1.b), func_3(_wgslsmith_mult_vec3_u32(var_0 ^ abs(var_0), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, u_input.c, 20581u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, var_0.x), vec3<u32>(u_input.b, 0u, var_0.x))))), !vec4<bool>(true, false, true, select(true, var_1.b, any(vec3<bool>(true, var_1.b, true)))));
    var_2 = select(vec4<bool>(false, select(var_2.x, -18964i == -global0.x, var_2.x), true, var_1.b), vec4<bool>(var_1.b, ~(~var_0.x) == max(max(1u, 0u), var_0.x ^ 4294967295u), !select(!var_1.b, var_2.x, !var_1.b), func_3(countOneBits(vec3<u32>(u_input.c, u_input.b, 33459u))).x & true), !var_1.b);
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, abs(_wgslsmith_clamp_i32(var_1.a.x, u_input.a, global0.x)), -abs(u_input.d)), _wgslsmith_sub_vec3_i32(-vec3<i32>(global0.x, global0.x, u_input.a), vec3<i32>(var_1.a.x, _wgslsmith_add_i32(48934i, u_input.d), ~u_input.a))), any(vec4<bool>(true, true, true, true)), vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1493f + _wgslsmith_div_f32(3110f, -1456f)), _wgslsmith_f_op_f32(sign(-512f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x))), -3056f), _wgslsmith_add_i32(-2147483647i, global0.x & select(6298i, var_1.a.x, func_3(vec3<u32>(var_0.x, 109003u, 4294967295u)).x)));
    return abs(var_1.d);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    var var_0 = select(select(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.x, 0i, 0i, arg_1.a)), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.d, arg_1.a, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.x, u_input.a, arg_3.x), vec4<i32>(2147483647i, -1i, arg_3.x, -2334i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global0.x, global0.x, 0i), vec4<i32>(14277i, arg_3.x, 1i, arg_2.a)) | reverseBits(vec4<i32>(arg_1.a, -1i, arg_2.a, -1i)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a, -19288i, -2147483647i, global0.x), vec4<i32>(22405i, arg_3.x, arg_2.a, arg_3.x), vec4<i32>(global0.x, arg_3.x, u_input.d, arg_2.a)), -vec4<i32>(48303i, arg_3.x, u_input.a, global0.x), true)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(exp2(arg_1.b.x)) != -782f)), select(-(~min(vec4<i32>(arg_0, arg_2.a, 303i, arg_1.a), vec4<i32>(u_input.d, arg_1.a, 2147483647i, global0.x))), abs(-vec4<i32>(global0.x, u_input.d, -45914i, -1i)), !vec4<bool>(all(vec4<bool>(true, true, false, true)), true, u_input.c < 1u, true)), func_3(_wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.c, 105997u))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 58229u, u_input.c) & vec3<u32>(u_input.b, u_input.b, u_input.b)), abs(vec3<u32>(31067u, 4260u, u_input.b) << (vec3<u32>(0u, u_input.b, u_input.c) % vec3<u32>(32u))))).x);
    global2 = array<vec3<f32>, 18>();
    var var_1 = true;
    global0 = vec4<i32>(6094i, -2147483647i, -70285i, 36065i);
    var var_2 = Struct_1(-var_0.zyy, max(4294967295u, ~u_input.c) != _wgslsmith_mod_u32(firstTrailingBit(~u_input.c), 45456u), _wgslsmith_f_op_vec4_f32(vec4<f32>(341f, arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-275f, arg_1.c.x)) * _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(step(-1400f, _wgslsmith_f_op_f32(max(-1374f, 147f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_2.b.x, arg_2.c.x, arg_2.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, 997f, arg_2.b.x, 2041f)))))), 34885i);
    return _wgslsmith_div_i32(arg_3.x, ~u_input.d);
}

fn func_1() -> StorageBuffer {
    global0 = vec4<i32>(1i, func_4(-7977i, Struct_3(func_2(), vec2<f32>(1f, 1f), vec3<f32>(197f, -685f, 864f)), Struct_3(global0.x, vec2<f32>(-1318f, -2522f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1111f, -2137f, -775f) - vec3<f32>(-271f, -489f, 144f))), -_wgslsmith_clamp_vec2_i32(global0.yw, global0.yy, global0.zy)), _wgslsmith_dot_vec3_i32(global0.xzx ^ _wgslsmith_div_vec3_i32(global0.yzw, vec3<i32>(global0.x, global0.x, 36346i)), -vec3<i32>(u_input.d, 0i, 1i)), u_input.a) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 52007u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.b, 30852u), vec4<u32>(u_input.b, 91315u, u_input.b, u_input.b)), ~vec4<u32>(70016u, u_input.b, 15305u, u_input.c)), abs(~u_input.b), 0u), _wgslsmith_clamp_vec4_u32((vec4<u32>(104662u, 0u, u_input.c, u_input.b) & vec4<u32>(0u, 0u, 50930u, u_input.c)) >> ((vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) ^ vec4<u32>(u_input.c, u_input.b, u_input.b, 4294967295u)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.c, 45599u, u_input.c) ^ (vec4<u32>(u_input.c, 8960u, u_input.b, 77652u) ^ vec4<u32>(0u, u_input.b, u_input.c, 0u)), vec4<u32>(1u, 51151u, ~0u, 39292u))) % vec4<u32>(32u));
    var var_0 = ~(~(~(~vec3<u32>(30041u, u_input.b, u_input.c))));
    let var_1 = select(vec2<bool>(false, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)) && true), !(!vec2<bool>(true, any(vec3<bool>(false, true, false)))), select(vec2<bool>(true, true), vec2<bool>(false, true), true));
    global1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-147f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-650f))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-872f, _wgslsmith_f_op_f32(trunc(-2357f))))))));
    return StorageBuffer(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<i32>(-u_input.d, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(min(-1i, u_input.d), i32(-1i) * -8001i)), false, vec4<f32>(1000f, -344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1429f))))), 1614f), abs(reverseBits(24710i)) ^ -firstTrailingBit(reverseBits(u_input.d)));
    global1 = global0.x;
    let var_1 = Struct_2(select(!(!vec4<bool>(false, true, false, var_0.b)), vec4<bool>(!var_0.b, var_0.b, true, true), var_0.b));
    let var_2 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.d, 17390i), i32(-1i) * -1i, countOneBits(var_0.d), ~0i), ~vec4<i32>(global0.x, 1i, var_0.a.x, -36069i) & (vec4<i32>(0i, -10801i, 1i, -1i) | vec4<i32>(var_0.a.x, global0.x, -6876i, 0i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, ~global0.x, u_input.d, -global0.x), ~(-vec4<i32>(-14124i, global0.x, var_0.a.x, 63660i))), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, min(global0.x, firstTrailingBit(-63346i)), _wgslsmith_mult_i32(~2147483647i, var_0.a.x))));
    var var_3 = Struct_1(reverseBits(global0.xyz), !var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 491f)), 1000f, 597f, _wgslsmith_f_op_f32(f32(-1f) * -1814f))), -12479i);
    let x = u_input.a;
    s_output = func_1();
}

