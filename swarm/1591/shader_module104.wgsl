struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_5(-arg_2.a >> (1u % 32u), 382f, _wgslsmith_f_op_f32(abs(-893f)));
    var var_2 = !select(select(vec3<bool>(!arg_3.x, arg_3.x && arg_3.x, !arg_3.x), select(!vec3<bool>(true, arg_3.x, false), select(arg_3, vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(true, arg_3.x, arg_3.x)), arg_3.x), select(select(vec3<bool>(true, arg_3.x, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), arg_3.x), select(vec3<bool>(arg_3.x, true, arg_3.x), arg_3, vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), select(arg_3, arg_3, true))), select(vec3<bool>(arg_3.x, false, !arg_3.x), !arg_3, arg_3.x), select(!select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), false), vec3<bool>(-1i <= var_1.a, true, !arg_3.x), arg_3.x));
    var var_3 = vec3<i32>(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_1.a, ~19243i), 1i), ~abs(~vec2<i32>(arg_1, var_1.a))), 0i);
    var_2 = vec3<bool>(false, arg_3.x || any(vec4<bool>(all(arg_3), true, !var_2.x, true)), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(855f, arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(1303f + arg_0.b))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.c)), _wgslsmith_f_op_f32(round(256f)), arg_2.b))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_5(arg_0.x, 182f, _wgslsmith_f_op_f32(f32(-1f) * -2090f)), 1i, Struct_5(arg_0.x >> (arg_1 % 32u), -156f, -878f), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))), vec3<f32>(1f, 1f, 1f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_div_vec2_f32(var_0.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), true))));
    var var_2 = max(~select(~(vec3<u32>(arg_1, 14026u, 38355u) >> (vec3<u32>(1u, arg_1, 35730u) % vec3<u32>(32u))), vec3<u32>(0u, 4294967295u, 41344u), !any(vec3<bool>(true, true, false))), select(select(~vec3<u32>(arg_1, 4294967295u, 0u), ~(~vec3<u32>(34070u, 0u, 59720u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, arg_1, 4294967295u) << ((vec3<u32>(arg_1, arg_1, 1u) << (vec3<u32>(32697u, arg_1, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(54223u, arg_1), 4294967295u, 28383u)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false))));
    var_2 = vec3<u32>(firstTrailingBit(arg_1), select(_wgslsmith_clamp_u32(~var_2.x, _wgslsmith_add_u32(var_2.x, arg_1), 1u) >> (arg_1 % 32u), ~_wgslsmith_div_u32(arg_1 << (var_2.x % 32u), 4294967295u), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), ~var_2.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_0.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_5(arg_2, var_1.x, -498f), firstTrailingBit(_wgslsmith_dot_vec2_i32(arg_0, u_input.a)), Struct_5(0i, -1540f, _wgslsmith_f_op_f32(304f - var_1.x)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))).x));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = Struct_4(arg_3.x);
    var var_1 = var_0;
    let var_2 = true;
    let var_3 = true & (0u >= arg_2.x);
    var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -531f));
    return !(!vec4<bool>(any(!vec2<bool>(false, var_2)), all(vec2<bool>(var_2, var_2)) | select(false, false, true), var_3, true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = min(vec3<i32>(max(_wgslsmith_mod_i32(24719i, arg_0.a.a.d), u_input.a.x >> (29669u % 32u)) | 2147483647i, u_input.a.x | -1i, -2147483647i), vec3<i32>(arg_0.b.d, _wgslsmith_mult_i32(min(-u_input.a.x, arg_0.a.a.d), firstTrailingBit(~arg_0.b.d)), firstTrailingBit(max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.d, u_input.a.x, u_input.a.x), vec3<i32>(-4290i, 2147483647i, 32716i)), _wgslsmith_clamp_i32(-1i, u_input.a.x, -2147483647i)))));
    var_0 = countOneBits(vec3<i32>(28510i, _wgslsmith_mult_i32(var_0.x & 846i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -16990i, 0i, arg_0.a.a.d), vec4<i32>(arg_0.d.d, 1i, u_input.a.x, 1i))), arg_0.a.a.d));
    var var_1 = select(arg_0.a.b, select(select(select(arg_0.a.b, select(arg_0.a.b, vec4<bool>(false, false, true, arg_0.a.a.e), false), true), vec4<bool>(arg_0.a.a.c, true, true, any(arg_0.a.b)), !(!arg_0.a.b)), func_4(-var_0.x, Struct_5(~0i, -740f, _wgslsmith_f_op_f32(-arg_0.d.b.x)), reverseBits(arg_0.a.a.a.xx), vec4<f32>(_wgslsmith_f_op_f32(func_2(var_0.yy, arg_0.b.a.x, -2147483647i)), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_0.a.a.b.x), _wgslsmith_f_op_f32(-1000f + -1003f))), arg_0.a.b.x), arg_0.a.b.x);
    var_0 = (abs(~(vec3<i32>(arg_0.b.d, var_0.x, arg_0.d.d) << (vec3<u32>(arg_0.b.a.x, 1u, 0u) % vec3<u32>(32u)))) | firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.d, arg_0.b.d, -1i), vec3<i32>(1i, u_input.a.x, var_0.x))))) & vec3<i32>(firstTrailingBit(select(firstTrailingBit(arg_0.a.a.d), arg_0.d.d, true)), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(-6621i)), -vec2<i32>(arg_0.a.a.d, 30973i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(52137u, arg_0.c.x), vec2<u32>(1u, 0u), arg_0.b.a.xx) % vec2<u32>(32u))));
    var_0 = min(max(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, -140215i), vec3<i32>(u_input.a.x, u_input.a.x, -3222i)), select(vec3<i32>(~var_0.x, 16348i, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.d.d, var_0.x, u_input.a.x) | vec3<i32>(-41157i, 0i, var_0.x), countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -34410i))), arg_0.a.b.wzy)), max(_wgslsmith_div_vec3_i32(-(~vec3<i32>(u_input.a.x, 2147483647i, 15623i)), _wgslsmith_div_vec3_i32(-vec3<i32>(10380i, 0i, arg_0.b.d), _wgslsmith_mod_vec3_i32(vec3<i32>(-2470i, 32726i, 0i), vec3<i32>(u_input.a.x, var_0.x, 23723i)))), -(~vec3<i32>(-1i, 0i, u_input.a.x)) ^ countOneBits(-vec3<i32>(-2147483647i, var_0.x, arg_0.a.a.d))));
    return var_1.wxy;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 70255i, 57591i), vec4<i32>(-2147483647i, u_input.a.x, -10159i, 0i))), 0i) ^ u_input.a.x, u_input.a.x);
    var var_1 = _wgslsmith_add_u32(arg_2.x, reverseBits(arg_2.x));
    let var_2 = -u_input.a.x;
    var_0 = -(select(vec3<i32>(20600i, 2147483647i, 10514i), vec3<i32>(-10878i, u_input.a.x, -32570i), all(vec3<bool>(false, arg_0.x, true))) | vec3<i32>(_wgslsmith_clamp_i32(27778i, u_input.a.x, var_2), abs(2147483647i), 1i)) ^ ~(-(~vec3<i32>(var_2, var_0.x, -2147483647i)) << (vec3<u32>(~arg_2.x, ~arg_2.x, arg_2.x) % vec3<u32>(32u)));
    let var_3 = Struct_3(Struct_2(Struct_1(select(~vec3<u32>(0u, arg_2.x, arg_2.x), countOneBits(vec3<u32>(arg_2.x, arg_2.x, 99322u)), func_4(1i, Struct_5(u_input.a.x, 701f, 259f), arg_2.yy, vec4<f32>(-1814f, -592f, -441f, 1489f)).x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(1418f, -1393f), vec2<f32>(841f, 738f)))), false, -select(u_input.a.x, u_input.a.x, arg_0.x), min(2147483647i, 31250i) == var_0.x), func_4(_wgslsmith_add_i32(u_input.a.x, var_0.x) << (1u % 32u), Struct_5(~var_2, _wgslsmith_f_op_f32(-923f + 373f), -418f), vec2<u32>(28087u, arg_2.x) | firstTrailingBit(arg_2.yx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2135f, 1933f, 1000f, -1000f) - vec4<f32>(-1239f, 2303f, 138f, -1657f)))), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), arg_2), countOneBits(arg_2) | _wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(14602u, arg_2.x, 77719u)))), Struct_1(vec3<u32>(41922u, ~_wgslsmith_div_u32(70997u, 42530u), reverseBits(arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 338f), vec2<f32>(1573f, 223f))))) * vec2<f32>(_wgslsmith_f_op_f32(-846f - -2275f), -2007f)), true, var_0.x, -39523i > (u_input.a.x ^ -u_input.a.x)), (arg_2.xz | ~(~arg_2.xy)) & arg_2.zx, Struct_1(~arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(413f, -3027f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(-380f, -286f, true)))), (true || !arg_1) || (44016u == arg_2.x), var_2, any(func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(23749u, 14234u, 1534u), vec2<f32>(745f, 603f), arg_1, var_2, true), vec4<bool>(true, arg_1, arg_0.x, false), arg_2.x), Struct_1(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), vec2<f32>(-257f, 393f), true, u_input.a.x, true), arg_2.zx, Struct_1(arg_2, vec2<f32>(1659f, -1000f), arg_0.x, 36790i, true)), Struct_4(-903f)))));
    return var_3.a.b.wy;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_3.a, arg_3.a), _wgslsmith_clamp_vec3_u32(arg_3.a, vec3<u32>(arg_3.a.x, arg_3.a.x, 4294967295u), vec3<u32>(35537u, 4294967295u, arg_3.a.x))), arg_0.zz, func_4(arg_1.x, Struct_5(u_input.a.x, -703f, 257f), countOneBits(vec2<u32>(arg_3.a.x, arg_3.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, -405f, -1038f, 1686f))).x, 2147483647i, true), select(select(vec4<bool>(true, arg_3.e, true, arg_3.c), !vec4<bool>(arg_3.c, arg_3.e, arg_3.e, arg_3.c), true), vec4<bool>(false, false & arg_3.e, true || arg_2.x, !arg_2.x), func_4(-arg_1.x, Struct_5(arg_1.x, arg_0.x, arg_3.b.x), ~arg_3.a.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 594f, 520f, 774f)))), arg_3.a.x), Struct_1(vec3<u32>(~1u, ~_wgslsmith_mod_u32(4044u, arg_3.a.x), _wgslsmith_sub_u32(arg_3.a.x ^ arg_3.a.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-arg_0.zy), !arg_2.x, -1i, all(func_4(arg_1.x, Struct_5(20776i, arg_0.x, arg_0.x), vec2<u32>(0u, arg_3.a.x), vec4<f32>(arg_0.x, -159f, -828f, arg_0.x)).ww)), vec2<u32>(arg_3.a.x, arg_3.a.x) << (firstLeadingBit(~max(vec2<u32>(0u, arg_3.a.x), vec2<u32>(arg_3.a.x, arg_3.a.x))) % vec2<u32>(32u)), arg_3);
    var_0 = Struct_3(var_0.a, arg_3, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~firstLeadingBit(var_0.d.a.x)), arg_3.a.yz), var_0.d);
    var_0 = Struct_3(Struct_2(Struct_1(var_0.a.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), false, var_0.b.d, (arg_3.d == -1i) && arg_2.x), vec4<bool>(all(func_4(2147483647i, Struct_5(50748i, arg_3.b.x, 125f), vec2<u32>(arg_3.a.x, 61416u), vec4<f32>(-1000f, 411f, var_0.a.a.b.x, -220f))), !var_0.b.c, !all(var_0.a.b.yx), var_0.a.a.e), 67087u), arg_3, ~(~abs(vec2<u32>(arg_3.a.x, 44040u))) << (vec2<u32>(49220u, 41298u) % vec2<u32>(32u)), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.x, var_0.a.a.b.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(559f, -194f), arg_0.yz), arg_0.zy)), false && (arg_3.c & true), u_input.a.x, false));
    var var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(~arg_3.a, arg_0.zy, false, arg_3.d, any(vec2<bool>(var_0.a.b.x != false, true))), var_0.a.b, _wgslsmith_clamp_u32(arg_3.a.x, var_0.d.a.x, arg_3.a.x));
    return Struct_1(arg_3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(firstTrailingBit(var_0.a.a.d), _wgslsmith_f_op_f32(-arg_3.b.x), -249f), 1i, Struct_5(arg_1.x, var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x)), !vec3<bool>(arg_3.c, var_2.b.x, true))).xy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(755f, _wgslsmith_f_op_f32(957f - var_0.b.b.x)))), !all(!(!vec2<bool>(true, arg_2.x))), u_input.a.x, (~abs(var_0.b.a.x) > var_0.b.a.x) && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-661f, -1009f), _wgslsmith_f_op_f32(f32(-1f) * -1826f)))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(129f))), _wgslsmith_f_op_f32(-1020f + _wgslsmith_div_f32(-129f, -160f))))), vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, -96024i, u_input.a.x)), -1i, -2147483647i), func_5(vec3<bool>(all(func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 7829u), vec2<f32>(-146f, -261f), false, u_input.a.x, true), vec4<bool>(true, false, false, false), 10043u), Struct_1(vec3<u32>(0u, 18798u, 7003u), vec2<f32>(-1000f, -1021f), false, u_input.a.x, false), vec2<u32>(47323u, 50231u), Struct_1(vec3<u32>(50736u, 4294967295u, 1u), vec2<f32>(-1429f, -217f), true, -1i, false)), Struct_4(-778f))), any(func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<f32>(347f, 1535f), true, u_input.a.x, true), vec4<bool>(false, true, true, true), 4294967295u), Struct_1(vec3<u32>(1u, 1u, 27692u), vec2<f32>(155f, 966f), false, -15498i, false), vec2<u32>(0u, 1u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 22967u), vec2<f32>(-343f, -200f), false, u_input.a.x, true)), Struct_4(-1126f)).yx), false), false, select(max(min(vec3<u32>(6738u, 19457u, 4294967295u), vec3<u32>(36991u, 71157u, 30406u)), vec3<u32>(0u, 1u, 0u)), ~vec3<u32>(2428u, 1u, 1u), vec3<bool>(false, true, true))), Struct_1(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3551u, 95801u, 17681u, 7603u), vec4<u32>(4324u, 15381u, 4294967295u, 2192u)), ~78129u), min(77729u, _wgslsmith_sub_u32(4294967295u, 63403u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, 1000f))))), true, 9761i, func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(93549u, 4294967295u, 1u), vec2<f32>(1728f, 220f), false, -2147483647i, true), vec4<bool>(true, true, true, false), 1101u), Struct_1(vec3<u32>(42778u, 11931u, 1u), vec2<f32>(769f, -1255f), false, u_input.a.x, true), min(vec2<u32>(4294967295u, 11173u), vec2<u32>(55482u, 31987u)), Struct_1(vec3<u32>(15785u, 4294967295u, 12192u), vec2<f32>(524f, -204f), false, u_input.a.x, false)), Struct_4(-1000f)).x));
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.a.x | 13827u, 1u, 30843u), var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-693f, var_0.b.x), var_0.b, true)))))), func_6(vec3<f32>(-1237f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))), 305f), -firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 6678i, u_input.a.x), vec3<i32>(1i, 1i, u_input.a.x))), !func_4(var_0.d & u_input.a.x, Struct_5(var_0.d, -1321f, var_0.b.x), firstLeadingBit(var_0.a.xz), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -463f)))).zz, func_6(vec3<f32>(-974f, func_6(vec3<f32>(194f, var_0.b.x, var_0.b.x), vec3<i32>(-1i, -1i, u_input.a.x), vec2<bool>(false, var_0.c), Struct_1(var_0.a, vec2<f32>(1000f, -157f), false, var_0.d, var_0.c)).b.x, _wgslsmith_f_op_f32(251f + var_0.b.x)), firstTrailingBit(vec3<i32>(var_0.d, var_0.d, -18406i)), !select(vec2<bool>(true, var_0.c), vec2<bool>(true, true), var_0.c), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 725f)), true, -37060i, var_0.e))).c, 13330i, true);
    var_0 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(-3504i, _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), var_0.b.x), -2147483647i, Struct_5(abs(-2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1093f), -1838f), !(!vec3<bool>(true, false, var_0.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_5(u_input.a.x, -1000f, -129f), -32336i, Struct_5(-51979i, 966f, 266f), vec3<bool>(var_0.c, var_0.e, var_0.c)))))), vec3<i32>(2147483647i, _wgslsmith_add_i32(abs(_wgslsmith_mod_i32(-45426i, var_0.d)), u_input.a.x), abs(-32903i)), vec2<bool>(!func_4(reverseBits(2147483647i), Struct_5(28696i, 912f, 1654f), min(var_0.a.zx, vec2<u32>(35333u, var_0.a.x)), vec4<f32>(-381f, 118f, var_0.b.x, var_0.b.x)).x, func_4(var_0.d, Struct_5(0i, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x), var_0.a.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 432f, var_0.b.x, var_0.b.x)))).x), func_6(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, var_0.b.x))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-8051i, u_input.a.x, 1i), vec3<i32>(var_0.d, 1i, 1i)), ~(~vec3<i32>(var_0.d, u_input.a.x, var_0.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_0.d, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_5(vec3<bool>(any(vec3<bool>(var_0.c, false, true)), false, true), all(func_4(var_0.d, Struct_5(28080i, 253f, var_0.b.x), var_0.a.yx, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1000f))), vec3<u32>(_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, 23843u), reverseBits(1u), 4294967295u)), Struct_1(vec3<u32>(var_0.a.x, _wgslsmith_div_u32(1u, 1u), _wgslsmith_div_u32(var_0.a.x, 37936u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.b, vec2<f32>(333f, var_0.b.x))) * var_0.b), true, 2147483647i, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, var_0.b.x)) * 1168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(var_0.d, -556f, var_0.b.x), u_input.a.x, Struct_5(var_0.d, -1753f, 1000f), vec3<bool>(var_0.c, var_0.e, var_0.e))).x + func_6(vec3<f32>(-2577f, var_0.b.x, -808f), vec3<i32>(var_0.d, -6229i, -1i), vec2<bool>(false, var_0.c), Struct_1(var_0.a, vec2<f32>(-1070f, 1000f), var_0.c, u_input.a.x, var_0.e)).b.x)))), var_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(abs(var_0.b.x)), var_0.b.x), ~vec2<u32>(42468u, var_0.a.x));
}

