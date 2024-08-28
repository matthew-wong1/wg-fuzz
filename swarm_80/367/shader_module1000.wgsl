struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: Struct_1 = Struct_1(-321f, vec3<i32>(-90724i, -13968i, -36003i), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 67469u));

var<private> global1: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1149f, arg_2.e.b.a, 1655f, -648f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, arg_2.e.b.a, 132f, -1112f) * vec4<f32>(-490f, arg_2.b.x, 963f, -565f))))), u_input.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), 267f), arg_3.a.b.a), arg_3.a.b.b, vec3<bool>(!(!global0.c.x), true, arg_0.x), countOneBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.e.b.d.x, 35203u), arg_2.e.b.d))));
    var var_1 = Struct_5(arg_2.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.b.a + arg_2.e.b.a))), -2418f, -152f), vec3<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 1u, 32992u)), arg_2.c), _wgslsmith_clamp_u32(30443u, ~arg_3.a.b.d.x, 93642u), firstTrailingBit(u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.b.yx - vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(arg_2.d.x + var_0.a.x)))), Struct_2(all(!(!vec4<bool>(global0.c.x, false, true, var_0.c.c.x))), arg_3.a.b));
    let var_2 = abs(global0.d);
    var var_3 = _wgslsmith_sub_u32(23631u, ~4294967295u);
    let var_4 = -1i;
    return _wgslsmith_f_op_vec4_f32(-var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_4(arg_1.a, ~arg_1.b & ~arg_1.c.d.x, Struct_1(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(max(1f, global0.a))), _wgslsmith_add_vec3_i32(countOneBits(global0.b) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global0.d.x, u_input.c, arg_1.b), vec3<u32>(global0.d.x, 2647u, 0u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(-56407i, 60536i, arg_1.c.b.x), ~arg_1.c.b.x, -33506i)), select(select(vec3<bool>(true, arg_2.x, arg_2.x), vec3<bool>(arg_1.c.c.x, arg_0, true), true), arg_1.c.c, !(!vec3<bool>(arg_0, arg_0, true))), ~vec2<u32>(global0.d.x, _wgslsmith_mult_u32(0u, 4419u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c.a))), ~var_0.c.b, select(var_0.c.c, arg_2, true), firstLeadingBit(global0.d));
    global1 = arg_1.b;
    let var_1 = Struct_5(vec2<u32>(abs(_wgslsmith_mod_u32(~global0.d.x, u_input.a << (arg_1.b % 32u))), ~(~(~4294967295u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1476f, global0.a, -1099f), vec3<f32>(421f, arg_1.a.x, -1727f))))), ~vec3<u32>(~40724u, ~u_input.c, arg_1.b ^ 63863u) & vec3<u32>(~abs(u_input.c), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(14502u, 1u, 66253u), firstTrailingBit(vec3<u32>(4294967295u, u_input.c, var_0.c.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zy))), Struct_2(all(select(arg_1.c.c.zx, !vec2<bool>(arg_1.c.c.x, arg_1.c.c.x), arg_1.c.c.xy)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, arg_1.c.c.x, arg_2.x), global0.c.x, Struct_5(global0.d, vec3<f32>(-577f, -1879f, var_0.c.a), vec3<u32>(var_0.b, 29167u, 0u), var_0.a.zz, Struct_2(false, Struct_1(-574f, arg_1.c.b, vec3<bool>(false, false, global0.c.x), vec2<u32>(var_0.b, 42948u)))), Struct_3(Struct_2(var_0.c.c.x, arg_1.c), global0.c.xx))).x)), ~vec3<i32>(arg_1.c.b.x, global0.b.x, 8501i), var_0.c.c, abs(arg_1.c.d) ^ ~vec2<u32>(4294967295u, global0.d.x))));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_1.e.b.a)) - _wgslsmith_f_op_f32(max(-691f, var_1.b.x))), _wgslsmith_f_op_f32(min(-1545f, -1216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1690f - arg_1.c.a) * _wgslsmith_f_op_f32(abs(var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.a), vec4<f32>(-612f, 490f, 484f, 200f), vec4<bool>(false, true, false, global0.c.x))))), 1u, arg_1.c);
    return ~0u;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: f32) -> Struct_2 {
    let var_0 = ~func_4(!(global0.c.x | false) | all(select(vec2<bool>(false, global0.c.x), vec2<bool>(global0.c.x, true), vec2<bool>(arg_2.c.c.x, global0.c.x))), Struct_4(_wgslsmith_f_op_vec4_f32(func_3(select(arg_2.c.c, global0.c, global0.c), any(vec4<bool>(global0.c.x, false, true, global0.c.x)), Struct_5(vec2<u32>(global0.d.x, 1u), vec3<f32>(arg_3, 1852f, 978f), vec3<u32>(4294967295u, 0u, 0u), vec2<f32>(438f, global0.a), Struct_2(false, Struct_1(arg_3, vec3<i32>(2147483647i, arg_2.c.b.x, u_input.b.x), vec3<bool>(global0.c.x, true, global0.c.x), arg_2.c.d))), Struct_3(Struct_2(true, arg_2.c), global0.c.yx))), arg_2.b, arg_2.c), arg_2.c.c);
    global1 = reverseBits(~global0.d.x);
    var var_1 = arg_0;
    var var_2 = ~select(-2147483647i, 2147483647i, any(!vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true)) || any(!global0.c));
    let var_3 = Struct_5(arg_2.c.d, _wgslsmith_f_op_vec3_f32(-arg_2.a.wwy), _wgslsmith_mod_vec3_u32(~vec3<u32>(global0.d.x, _wgslsmith_div_u32(4294967295u, u_input.c), u_input.c ^ u_input.a), ~abs(vec3<u32>(19832u, u_input.c, 38349u) << (vec3<u32>(u_input.a, var_0, 37768u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(485f, _wgslsmith_f_op_f32(floor(arg_2.c.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.a, -502f), _wgslsmith_f_op_f32(300f - 537f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1091f, -921f))))), Struct_2(true, arg_2.c));
    return Struct_2(false, Struct_1(_wgslsmith_div_f32(global0.a, arg_0), min(firstLeadingBit(u_input.b), vec3<i32>(-3234i, select(0i, var_3.e.b.b.x, global0.c.x), ~u_input.b.x)), !vec3<bool>(false, true, arg_2.c.c.x), firstTrailingBit((vec2<u32>(1917u, u_input.c) & vec2<u32>(1u, arg_2.c.d.x)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0), arg_2.c.d) % vec2<u32>(32u)))));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<u32>(4294967295u, u_input.a);
    var var_1 = global0.b.x;
    var_1 = -2147483647i;
    global0 = arg_3.b;
    global1 = 0u;
    return 38646u;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.b.d.x;
    var_0 = arg_0;
    var var_1 = ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(39809u, global0.d.x) & countOneBits(arg_1.b.d), global0.d), vec2<u32>(~arg_1.b.d.x, u_input.c), countOneBits(global0.d));
    let var_2 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, ~arg_1.b.d.x & _wgslsmith_dot_vec2_u32(global0.d, arg_1.b.d)), vec2<u32>(1u, arg_1.b.d.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.a)), 520f, 215f)))), vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(global0.d.x, 50427u)) >> (firstLeadingBit(_wgslsmith_add_u32(arg_0, arg_0)) % 32u), _wgslsmith_mult_u32(var_1.x, arg_1.b.d.x) ^ func_5(global0.c.x, -u_input.b.zz, select(vec2<u32>(23976u, 0u), arg_1.b.d, global0.c.zz), func_2(global0.a, vec3<i32>(global0.b.x, 0i, arg_1.b.b.x), Struct_4(vec4<f32>(global0.a, 1000f, -1185f, arg_1.b.a), 41792u, Struct_1(3066f, vec3<i32>(53072i, -2147483647i, -49827i), vec3<bool>(arg_1.b.c.x, arg_1.a, false), global0.d)), global0.a)), ~(~abs(arg_1.b.d.x))), _wgslsmith_f_op_vec4_f32(func_3(global0.c, any(select(select(vec4<bool>(global0.c.x, global0.c.x, false, false), vec4<bool>(global0.c.x, true, false, false), vec4<bool>(global0.c.x, arg_1.a, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.c.x, global0.c.x, arg_1.b.c.x, arg_1.a), vec4<bool>(global0.c.x, false, true, arg_1.b.c.x), vec4<bool>(global0.c.x, arg_1.a, global0.c.x, arg_1.b.c.x)))), Struct_5((vec2<u32>(arg_1.b.d.x, arg_0) >> (arg_1.b.d % vec2<u32>(32u))) << (global0.d % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, global0.a, 505f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, 151f), vec3<f32>(1118f, global0.a, -1179f))), vec3<u32>(firstTrailingBit(0u), 0u, ~arg_0), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -865f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, 285f), vec2<f32>(global0.a, 232f))))), func_2(_wgslsmith_f_op_f32(1249f - global0.a), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(arg_1.b.b.x, 24883i, -26018i)), Struct_4(vec4<f32>(1000f, -500f, 309f, arg_1.b.a), 1u, arg_1.b), 287f)), Struct_3(func_2(_wgslsmith_div_f32(875f, 1563f), vec3<i32>(-62643i, u_input.b.x, -2147483647i) << (vec3<u32>(global0.d.x, 25184u, 4294967295u) % vec3<u32>(32u)), Struct_4(vec4<f32>(744f, global0.a, global0.a, -1654f), 0u, arg_1.b), arg_1.b.a), arg_1.b.c.xz))).wx, arg_1);
    var_1 = var_2.e.b.d;
    return func_2(arg_1.b.a, global0.b, Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.d.x, -420f, -484f, arg_1.b.a))))), arg_0, func_2(-1000f, ~vec3<i32>(17561i, arg_1.b.b.x, 0i), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2505f, global0.a, 363f, -273f) + vec4<f32>(var_2.d.x, global0.a, 668f, global0.a)), ~global0.d.x, Struct_1(218f, vec3<i32>(2147483647i, -1i, global0.b.x), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 17780u))), -845f).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, arg_1.b.a))))).b;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool, arg_3: Struct_3) -> StorageBuffer {
    global0 = arg_1.e.b;
    let var_0 = ~_wgslsmith_div_vec2_i32(firstLeadingBit(arg_1.e.b.b.zx), -min(arg_3.a.b.b.xy, vec2<i32>(74222i, global0.b.x)));
    var var_1 = arg_1.b;
    var var_2 = arg_1.e;
    var var_3 = var_2.b.c.x;
    return StorageBuffer(max(arg_0.c, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-29468i, reverseBits(-1i)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xy, vec2<i32>(global0.b.x, global0.b.x ^ u_input.b.x)), ~vec2<i32>(firstLeadingBit(32854i), global0.b.x)), vec2<i32>(1i, 1i));
    let var_1 = vec4<u32>(u_input.a, 1u, ~_wgslsmith_clamp_u32(4294967295u, ~global0.d.x, firstTrailingBit(_wgslsmith_mult_u32(47734u, u_input.c))), firstTrailingBit(global0.d.x));
    global1 = firstTrailingBit(_wgslsmith_mod_u32(~_wgslsmith_div_u32(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1.x), var_1.yw)), ~var_1.x | ~_wgslsmith_add_u32(4294967295u, var_1.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))))));
    var var_3 = var_2.x;
    global1 = 45173u;
    var var_4 = !((abs(firstLeadingBit(var_1.x)) > ~_wgslsmith_mod_u32(0u, 26466u)) || true);
    var_3 = _wgslsmith_f_op_f32(-var_2.x);
    global1 = ~(var_1.x | var_1.x);
    let x = u_input.a;
    s_output = func_6(Struct_5(var_1.xy, var_2, ~abs(var_1.yyw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1086f, var_2.x), _wgslsmith_f_op_vec2_f32(var_2.zy * var_2.xz)))), Struct_2(!global0.c.x, func_1(~var_1.x, Struct_2(global0.c.x, Struct_1(-2484f, u_input.b, global0.c, global0.d))))), Struct_5(~(~var_1.xw >> (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), var_1.yz) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.c, true, Struct_5(vec2<u32>(296u, u_input.a), vec3<f32>(-307f, 1189f, var_2.x), vec3<u32>(global0.d.x, u_input.a, 53128u), var_2.yy, Struct_2(global0.c.x, Struct_1(-1270f, u_input.b, global0.c, vec2<u32>(163508u, global0.d.x)))), Struct_3(Struct_2(true, Struct_1(2290f, global0.b, global0.c, global0.d)), global0.c.zx))).xyz), max(~(~vec3<u32>(u_input.c, global0.d.x, 19903u)), min(vec3<u32>(1u, u_input.c, var_1.x), vec3<u32>(0u, 19332u, global0.d.x))), var_2.xz, Struct_2(global0.c.x, Struct_1(305f, vec3<i32>(-26072i, u_input.b.x, var_0.x), select(vec3<bool>(global0.c.x, false, global0.c.x), vec3<bool>(true, global0.c.x, false), global0.c), _wgslsmith_mod_vec2_u32(vec2<u32>(36308u, u_input.c), vec2<u32>(4294967295u, global0.d.x))))), global0.c.x, Struct_3(Struct_2(!(var_1.x > u_input.c), Struct_1(-512f, -u_input.b, global0.c, var_1.yw)), func_1(~(~4398u), Struct_2(true, Struct_1(var_2.x, vec3<i32>(2147483647i, -12644i, 3450i), global0.c, global0.d))).c.xx));
}

