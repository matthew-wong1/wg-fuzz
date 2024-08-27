struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = 1i ^ arg_0.d.b;
    let var_1 = Struct_4(_wgslsmith_div_vec4_i32(-abs(vec4<i32>(var_0, var_0, u_input.b.x, -54108i)) << (select(vec4<u32>(100864u, arg_0.b, u_input.d.x, 4294967295u) & vec4<u32>(0u, u_input.d.x, arg_0.d.d, arg_0.d.e), min(vec4<u32>(arg_0.d.d, u_input.d.x, arg_0.a, 0u), vec4<u32>(14390u, 4294967295u, 41849u, arg_0.a)), false) % vec4<u32>(32u)), ~vec4<i32>(19345i, ~1i, _wgslsmith_div_i32(u_input.c.x, arg_0.c.x), var_0)), arg_1, vec2<bool>(true, arg_1.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-417f, arg_0.d.a.x, 1000f, _wgslsmith_f_op_f32(abs(arg_0.d.a.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.d.a.x, arg_0.d.a.x, -1933f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.c, -1723f, arg_0.d.c, 876f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, arg_0.d.a.x, 879f, arg_0.d.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.d.c)), _wgslsmith_f_op_f32(ceil(-147f)), arg_0.d.a.x, arg_0.d.a.x))), select(vec4<bool>(false & any(arg_1.a), arg_1.a.x && arg_1.a.x, var_1.b.d, false), arg_1.a, select(select(!arg_1.a, var_1.b.a, false), select(var_1.b.a, vec4<bool>(var_1.c.x, false, arg_1.d, true), vec4<bool>(arg_1.d, arg_1.d, true, true)), ~u_input.d.x >= ~1u))));
    return select(!vec3<bool>(var_1.c.x, arg_1.a.x, all(select(vec2<bool>(var_1.c.x, true), vec2<bool>(arg_1.a.x, arg_1.d), true))), var_1.b.a.xzx, !(!vec3<bool>(true, all(arg_1.a.zwx), var_1.b.d)));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_2(!(!vec4<bool>(false, true, u_input.d.x >= u_input.d.x, true)), arg_0.xx, !arg_0.x, -2147483647i < -u_input.c.x);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1516f, -1728f)), _wgslsmith_f_op_f32(f32(-1f) * -133f), var_0.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -253f)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1705f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + -741f))), 63311u, _wgslsmith_mult_u32(u_input.d.x, ~_wgslsmith_add_u32(~22564u, 1u ^ u_input.d.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(var_1.c - var_1.a.x)) - var_1.c)));
    var var_3 = !select(func_3(Struct_3(var_1.e, firstTrailingBit(4294967295u), u_input.b, Struct_1(var_1.a, 1i, var_1.c, u_input.d.x, var_1.e)), Struct_2(!var_0.a, var_0.b, true, var_1.a.x <= var_1.a.x)), vec3<bool>(true, var_0.c, all(vec2<bool>(arg_0.x, arg_0.x))), all(var_0.a));
    var_1 = Struct_1(var_1.a, 33680i, var_1.c, 1u, 4294967295u);
    return select(select(vec4<bool>(true, all(vec4<bool>(false, true, false, var_0.d)), select(false, true, true), var_0.a.x), vec4<bool>(arg_0.x, !all(vec4<bool>(false, true, true, var_0.a.x)), false, true), !vec4<bool>(arg_0.x, arg_0.x, var_3.x, !var_3.x)), select(var_0.a, select(select(var_0.a, !vec4<bool>(true, false, arg_0.x, arg_0.x), var_3.x), !vec4<bool>(true, true, var_3.x, var_0.d), vec4<bool>(all(var_0.a), true, true, select(var_3.x, var_0.a.x, false))), var_0.a), !var_3.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = 2147483647i;
    var_0 = u_input.b.x ^ -(~u_input.c.x);
    let var_1 = Struct_3(select(4294967295u, ~u_input.d.x, !func_2(!arg_0.wxy).x), 4294967295u, _wgslsmith_mult_vec3_i32(min(vec3<i32>(~7406i, 22848i, _wgslsmith_mod_i32(43475i, u_input.c.x)), vec3<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-2147483647i, arg_2.x, u_input.b.x)), u_input.b.x)), reverseBits(vec3<i32>(countOneBits(u_input.a.x), -7168i, 1i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1672f, 802f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 515f), vec2<f32>(-899f, -873f)) - vec2<f32>(-1399f, 1012f))), u_input.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(185f)), _wgslsmith_f_op_f32(sign(118f)))))), ~1u, ~(max(62257u, 1u) ^ ~u_input.d.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.a - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.c, var_1.d.c) * vec2<f32>(-390f, var_1.d.a.x))), var_1.d.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.a - var_1.d.a) * var_1.d.a) * _wgslsmith_f_op_vec2_f32(-var_1.d.a))), 1i, var_1.d.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.e, 50023u, 48582u ^ var_1.a) & vec3<u32>(0u, 44137u, countOneBits(var_1.a)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 9536u, 3539u), vec3<u32>(51263u, var_1.d.d, 4294967295u)))), ~(~abs(27312u)));
    var_2 = var_1.d;
    return abs(~var_1.b);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = ~func_4(func_2(vec3<bool>(false, u_input.a.x < 68990i, true)), any(vec3<bool>(true, true, true)), countOneBits(arg_3.xz), Struct_2(vec4<bool>(true, true, true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), u_input.d.x >= arg_2.x), all(vec4<bool>(false, true, false, true)), select(any(vec2<bool>(true, false)), true, true)));
    var var_1 = true;
    var_0 = ~u_input.d.x;
    let var_2 = Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 44081u, arg_2.x, arg_2.x), vec4<u32>(4572u, 4294967295u, 4294967295u, 6792u)), vec4<u32>(65971u, 4294967295u, 1u, 108268u) << (vec4<u32>(arg_2.x, 1u, arg_2.x, 0u) % vec4<u32>(32u))), ~vec4<u32>(u_input.d.x, arg_2.x, 19290u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x & 4294967295u, _wgslsmith_mod_u32(441u, 1u), u_input.d.x), ~min(vec4<u32>(59364u, arg_2.x, u_input.d.x, arg_2.x), vec4<u32>(1u, arg_2.x, arg_2.x, arg_2.x)), vec4<u32>(arg_2.x, _wgslsmith_mod_u32(4294967295u, arg_2.x), ~0u, 0u))), ~1u, _wgslsmith_mod_vec3_i32(vec3<i32>(-22012i, u_input.a.x, _wgslsmith_sub_i32(u_input.b.x, 59674i)), _wgslsmith_sub_vec3_i32(u_input.a, abs(min(vec3<i32>(arg_1, -42216i, u_input.a.x), arg_3.wxx)))), Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(768f)), -753f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(853f + 1103f)))), -26698i, _wgslsmith_f_op_f32(sign(1f)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(90271u, arg_2.x), vec2<u32>(31011u, 14271u)), _wgslsmith_mod_vec2_u32(u_input.d, u_input.d)), ~abs(arg_2.x)));
    var_1 = !all(vec3<bool>(select(true, false, false) && true, false, any(vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a.x, -286f)))), 26409i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1225f)) + _wgslsmith_div_f32(576f, var_2.d.c)))), -1358f), u_input.d.x, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(u_input.a.x, u_input.a.x, -20133i), vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x)), ~vec3<i32>(u_input.a.x, 0i, u_input.a.x)), -6683i & ~u_input.c.x), countOneBits(abs(u_input.b.x)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.d.x, u_input.d.x, 27219u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), abs(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)) % vec3<u32>(32u)), vec3<u32>(30613u, _wgslsmith_div_u32(~u_input.d.x, 4294967295u << (u_input.d.x % 32u)), u_input.d.x)), ~vec4<i32>(min(0i, ~(-2147483647i)), abs(min(u_input.a.x, 14459i)), 2147483647i, u_input.a.x));
    var_0 = func_1(1i, 14622i, vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d), u_input.d | u_input.d), ~var_0.e, 0u) >> (_wgslsmith_add_vec3_u32(~max(vec3<u32>(var_0.e, u_input.d.x, var_0.d), vec3<u32>(33733u, var_0.d, 59182u)), vec3<u32>(4294967295u, reverseBits(var_0.d), ~6893u)) % vec3<u32>(32u)), vec4<i32>(var_0.b, _wgslsmith_mult_i32(-32945i, -4516i), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(0i, var_0.b), u_input.c.x), -_wgslsmith_mult_i32(u_input.c.x, var_0.b)), abs(var_0.b)));
    var_0 = func_1(_wgslsmith_div_i32(~1i, ~var_0.b) >> (~_wgslsmith_sub_u32(var_0.e, firstLeadingBit(u_input.d.x)) % 32u), _wgslsmith_dot_vec2_i32(u_input.b.zz, ~min(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-1i, -2147483647i))), max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 0u), ~(vec3<u32>(var_0.e, 36978u, u_input.d.x) >> (vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(61455u, var_0.d, 78541u), vec3<u32>(0u, 4294967295u, 1u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(19964u, 47057u, 1u), vec3<u32>(u_input.d.x, 30499u, u_input.d.x), false), ~vec3<u32>(0u, 51395u, 4294967295u)), ~(vec3<u32>(u_input.d.x, 0u, var_0.d) << (vec3<u32>(1u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~var_0.b, ~u_input.b.x, -u_input.c.x, _wgslsmith_mult_i32(var_0.b, var_0.b)), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.b.x, var_0.b, u_input.c.x)) ^ (vec4<i32>(u_input.c.x, 2147483647i, var_0.b, var_0.b) & vec4<i32>(u_input.c.x, var_0.b, -54029i, 1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-79233i, var_0.b, u_input.a.x, var_0.b), ~(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, 17013i)), vec4<i32>(i32(-1i) * -2147483647i, var_0.b, max(var_0.b, u_input.b.x), 2147483647i))));
    let var_1 = Struct_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, var_0.d << (0u % 32u)), 1u) & 33317u, u_input.d.x, ~(-(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, var_0.b, 2147483647i), u_input.b) | u_input.c)), Struct_1(var_0.a, -81583i, -384f, 111997u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 9103u, 6165u, 0u), vec4<u32>(36621u, u_input.d.x, 7755u, var_0.e)) % 32u), u_input.d.x));
    let var_2 = vec2<bool>(!func_2(vec3<bool>(false, true, true)).x | select(any(vec3<bool>(false, false, true)), !(var_1.d.a.x <= 812f), all(func_3(var_1, Struct_2(vec4<bool>(false, false, false, true), vec2<bool>(true, false), false, false)))), true);
    let var_3 = func_2(func_3(var_1, Struct_2(!(!vec4<bool>(false, true, false, var_2.x)), !func_3(var_1, Struct_2(vec4<bool>(var_2.x, var_2.x, false, true), var_2, true, true)).yy, true, select(var_2.x, any(vec2<bool>(var_2.x, false)), true)))).x;
    var var_4 = vec2<bool>(var_2.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))) > 606f));
    let var_5 = min(abs(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u) << (vec3<u32>(0u, 0u, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(var_1.b, 57874u, 7533u)), abs(vec3<u32>(u_input.d.x, var_0.e, u_input.d.x)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.d, 1u), ~vec3<u32>(1u, 1u, u_input.d.x)) << (~vec3<u32>(29795u >> (1u % 32u), var_0.e, var_1.d.e) % vec3<u32>(32u)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-579f, var_1.d.a.x, 874f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -1265f, var_1.d.c) - vec3<f32>(1753f, 133f, -1889f)), !vec3<bool>(true, false, var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(min(max(vec2<u32>(4294967295u, var_1.a), _wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(1u, var_1.d.e))), select(max(vec2<u32>(1u, 56805u), var_5.xy), ~vec2<u32>(63303u, u_input.d.x), select(vec2<bool>(true, false), vec2<bool>(true, var_3), var_2))), u_input.d), ~(~(~vec3<u32>(32968u, var_5.x, 4294967295u))), countOneBits(vec4<i32>(0i, -65978i, firstTrailingBit(31232i) ^ var_0.b, _wgslsmith_mult_i32(var_1.d.b << (0u % 32u), -var_1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(954f, -649f, var_0.c), vec3<f32>(2894f, 541f, 836f), true))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.x, var_6.x, var_0.c) * vec3<f32>(var_0.c, var_1.d.a.x, -2361f))))));
}

