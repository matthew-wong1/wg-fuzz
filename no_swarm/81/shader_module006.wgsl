struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    global0 = array<Struct_2, 30>();
    let var_0 = arg_2.d;
    let var_1 = u_input.c;
    var var_2 = u_input.a.zw;
    let var_3 = Struct_4(var_0, _wgslsmith_div_u32(u_input.c, ~(~var_1)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, var_0.b)), vec2<i32>(-38059i, 9101i)), vec2<i32>(44515i, -var_0.b)), Struct_3(arg_2.a, select(vec3<bool>(arg_2.b.x, true, all(vec4<bool>(arg_3.x, arg_3.x, false, false))), arg_1.d.b, all(select(vec4<bool>(arg_3.x, arg_3.x, true, arg_2.c.x), vec4<bool>(arg_1.d.c.x, arg_2.b.x, false, false), vec4<bool>(true, arg_2.c.x, arg_2.c.x, false)))), select(select(select(vec3<bool>(false, arg_2.b.x, false), arg_2.b, false), arg_1.d.c, vec3<bool>(arg_3.x, false, arg_1.d.b.x)), arg_1.d.b, true & (2147483647i > arg_2.d.b)), arg_1.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.a.x)) * _wgslsmith_f_op_f32(arg_1.d.a.a.x * var_3.a.c)), 2516f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-699f)) * -1432f));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-arg_0)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0))));
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_1 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f + 1000f) + arg_0), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), Struct_4(var_0.a, u_input.d.x, 2147483647i, Struct_3(var_0.a, vec3<bool>(true, false, var_1.x), vec3<bool>(false, false, var_1.x), var_0.a)), Struct_3(var_0.a, vec3<bool>(false, var_1.x, false), vec3<bool>(false, true, var_1.x), Struct_1(vec2<f32>(1179f, arg_0), 1i, var_0.a.a.x)), !vec3<bool>(var_1.x, var_1.x, false)))), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, Struct_4(Struct_1(var_0.a.a, u_input.e.x, arg_0), u_input.d.x, var_0.a.b, Struct_3(var_0.a, vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, true, false), var_0.a)), Struct_3(var_0.a, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), var_0.a), vec3<bool>(true, var_1.x, var_1.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.c * arg_0))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = arg_1.a.a.x;
    let var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -569f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.c, arg_1.a.a.x)) + _wgslsmith_f_op_f32(ceil(arg_1.a.c))))).a, vec3<bool>(all(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, true, true, false))), false, all(arg_0)), select(select(select(vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(arg_0.x, true, arg_0.x), any(vec3<bool>(arg_0.x, true, arg_0.x))), !vec3<bool>(arg_0.x, false, false), vec3<bool>(all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), false, true)), select(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec3<bool>(any(vec2<bool>(true, false)), false, true), !vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(false, false, all(vec4<bool>(arg_0.x, false, arg_0.x, false)) | false)), Struct_1(arg_1.a.a, _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.a.x), _wgslsmith_add_i32(abs(23097i), arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-442f, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) * _wgslsmith_f_op_f32(abs(arg_1.a.a.x))))));
    global0 = array<Struct_2, 30>();
    var var_2 = Struct_2(var_1.a);
    global0 = array<Struct_2, 30>();
    return abs(~_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.b.xxw));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = func_4(vec2<bool>(all(arg_0.yy), arg_0.x), func_2(248f), 46092i);
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c)) * _wgslsmith_f_op_f32(round(arg_1.c)))), -59003i, arg_1.c), arg_0.xxz, vec3<bool>(true, false, arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-311f, arg_1.c) + vec2<f32>(arg_1.c, 674f))), _wgslsmith_sub_i32(func_2(-543f).a.b, u_input.e.x), -552f));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_4(arg_2.a, 1u, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, u_input.a) << (~u_input.b % vec4<u32>(32u))), arg_2.a.b), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_2.a.a - arg_0.a.a))), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2.c, -6105i, u_input.a.x)), u_input.a.zwx & u_input.a.zyx), arg_0.a.c), select(!(!arg_0.c), vec3<bool>(true, any(vec4<bool>(arg_3, true, false, true)), all(vec3<bool>(arg_2.d.c.x, true, true))), !(!arg_2.d.c)), vec3<bool>(!(!arg_0.b.x), arg_3, true), arg_2.d.d));
    let var_1 = countOneBits(~var_0.b);
    var var_2 = -_wgslsmith_mult_vec3_i32(abs(u_input.a.yxw) ^ -(u_input.a.wzy | vec3<i32>(var_0.a.b, arg_0.a.b, arg_0.a.b)), countOneBits(vec3<i32>(arg_0.a.b, u_input.a.x, -93142i) ^ (u_input.a.yyz << (u_input.d % vec3<u32>(32u)))));
    var_2 = -(~_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 2147483647i, 2147483647i) | u_input.a.zzx), firstLeadingBit(vec3<i32>(-43576i, -1i, -6826i))));
    let var_3 = !any(select(!arg_0.b.xz, select(select(var_0.d.c.zx, arg_0.b.yy, false), arg_2.d.c.zy, all(vec2<bool>(true, var_0.d.c.x))), func_1(vec4<bool>(arg_0.b.x, true, false, arg_3), var_0.d.d).c.zy));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-641f)), _wgslsmith_f_op_f32(-func_1(vec4<bool>(arg_0.b.x, true, true, false), Struct_1(var_0.d.a.a, -1i, arg_2.a.a.x)).a.c)))).a;
}

fn func_6(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    var var_0 = countOneBits(firstLeadingBit(arg_0.b));
    let var_1 = func_5(func_1(vec4<bool>(true, all(!arg_0.d.b.yx), arg_0.d.b.x, _wgslsmith_f_op_f32(-arg_0.d.a.c) >= _wgslsmith_f_op_f32(select(arg_0.d.a.c, arg_1, arg_0.d.b.x))), arg_0.d.d), arg_0.d.b.x, arg_0, true);
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, arg_0.d.a.a.x), func_5(Struct_3(Struct_1(arg_0.d.a.a, 20005i, 430f), vec3<bool>(true, true, false), arg_0.d.c, Struct_1(vec2<f32>(1037f, 275f), 5868i, 611f)), false, arg_0, false).a)), 12414i, _wgslsmith_f_op_f32(round(1460f))), 8843u, max(2147483647i, reverseBits(firstTrailingBit(_wgslsmith_mod_i32(-1i, var_1.b)))), func_1(!(!select(vec4<bool>(false, false, arg_0.d.c.x, true), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.d.b.x, arg_0.d.c.x, arg_0.d.c.x, arg_0.d.b.x))), var_1));
    var_2 = Struct_4(func_5(func_1(select(select(vec4<bool>(var_2.d.c.x, arg_0.d.c.x, arg_0.d.b.x, false), vec4<bool>(arg_0.d.b.x, var_2.d.b.x, false, true), vec4<bool>(arg_0.d.b.x, false, var_2.d.c.x, arg_0.d.c.x)), vec4<bool>(var_2.d.c.x, var_2.d.b.x, var_2.d.b.x, true), 4294967295u != arg_0.b), func_2(-1773f).a), false, arg_0, any(vec4<bool>(true, var_2.d.b.x, var_2.d.c.x, any(vec4<bool>(true, false, var_2.d.c.x, false))))), ~(~(~(~4294967295u))), select(abs(0i), ~2147483647i, true), Struct_3(func_1(vec4<bool>(arg_0.d.a.c < arg_1, var_2.d.c.x, false, !arg_0.d.c.x), var_1).d, !(!arg_0.d.c), vec3<bool>(true, !(!var_2.d.c.x), !var_2.d.b.x), func_5(func_1(vec4<bool>(arg_0.d.b.x, var_2.d.c.x, false, true), func_2(var_1.a.x).a), false && (arg_0.a.b > var_1.b), Struct_4(func_1(vec4<bool>(false, false, false, false), Struct_1(arg_0.a.a, u_input.a.x, arg_0.a.a.x)).d, _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.xw), -1i, Struct_3(Struct_1(vec2<f32>(arg_0.a.c, -296f), 1i, arg_0.a.a.x), vec3<bool>(arg_0.d.b.x, var_2.d.b.x, arg_0.d.c.x), vec3<bool>(false, false, var_2.d.b.x), Struct_1(var_1.a, var_2.c, 2340f))), true | var_2.d.c.x)));
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_0.d.d.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a.a.x, _wgslsmith_f_op_f32(-548f + 1036f)))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1(!vec4<bool>(var_2.d.b.x, var_2.d.c.x, arg_0.d.c.x, var_2.d.b.x), Struct_1(var_2.a.a, u_input.a.x, 820f)).d.b, arg_0.c), var_2.d.d.b), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(1i, ~1i, _wgslsmith_div_i32(~arg_0.c, ~(-2248i))), Struct_4(arg_0.d.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, arg_0.b, 81705u, u_input.b.x), ~u_input.b), 2147483647i, func_1(!vec4<bool>(false, true, var_2.d.c.x, arg_0.d.b.x), arg_0.d.a)), func_1(!select(vec4<bool>(var_2.d.b.x, true, var_2.d.b.x, arg_0.d.c.x), vec4<bool>(false, false, false, var_2.d.c.x), true), arg_0.a), !select(vec3<bool>(var_2.d.b.x, var_2.d.b.x, false), select(vec3<bool>(false, arg_0.d.b.x, true), arg_0.d.b, arg_0.d.c.x), select(arg_0.d.b, arg_0.d.b, vec3<bool>(var_2.d.b.x, var_2.d.b.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_div_f32(-316f, -1185f)), !vec3<bool>(true || (u_input.a.x > u_input.e.x), true, true), vec3<bool>(true, true, true), func_6(Struct_4(func_5(func_1(vec4<bool>(true, false, true, false), Struct_1(vec2<f32>(-2402f, 1436f), 16771i, 1292f)), false, Struct_4(Struct_1(vec2<f32>(-1025f, -1000f), 60507i, 986f), 58172u, u_input.a.x, Struct_3(Struct_1(vec2<f32>(-937f, -290f), u_input.a.x, 826f), vec3<bool>(false, false, true), vec3<bool>(false, true, true), Struct_1(vec2<f32>(1163f, -2020f), u_input.e.x, -591f))), false), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(19464u, 1u, 1u), 29182u, 1u), u_input.a.x, func_1(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), func_5(Struct_3(Struct_1(vec2<f32>(-482f, -324f), 0i, -236f), vec3<bool>(true, false, false), vec3<bool>(true, false, false), Struct_1(vec2<f32>(951f, -1023f), u_input.e.x, 2378f)), false, Struct_4(Struct_1(vec2<f32>(369f, 876f), u_input.a.x, -994f), 4294967295u, -223i, Struct_3(Struct_1(vec2<f32>(556f, 598f), u_input.e.x, 309f), vec3<bool>(false, true, false), vec3<bool>(true, false, false), Struct_1(vec2<f32>(1811f, -1134f), u_input.a.x, -518f))), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -230f) + _wgslsmith_f_op_f32(-1425f - -379f)) * -1586f)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(var_0.a.a)), reverseBits(-reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f - -541f))), select(~1u, u_input.b.x, var_0.c.x), ~38500i, func_1(vec4<bool>(!var_0.b.x, !var_0.c.x || any(var_0.c), false, true), Struct_1(_wgslsmith_f_op_vec2_f32(sign(func_2(var_0.a.a.x).a.a)), u_input.e.x, -798f)));
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(1333f).a.a, select(-u_input.a.yxy | ~u_input.a.zzz, select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.xww, vec3<i32>(1i, 23851i, -2147483647i)), -u_input.a.wyx), ~(-vec3<i32>(2275i, u_input.e.x, u_input.e.x)), !var_1.d.c), true), ~_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, u_input.b)), ~vec3<i32>(func_5(func_1(vec4<bool>(true, false, var_1.d.c.x, true), var_1.a), var_1.d.b.x, Struct_4(var_1.a, 1u, -3428i, Struct_3(var_0.d, var_1.d.c, var_0.c, var_0.d)), !var_1.d.c.x).b, -firstTrailingBit(52342i), var_0.a.b));
}

