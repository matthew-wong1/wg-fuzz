struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<f32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(countOneBits(i32(-1i) * -3882i), arg_3.x));
    var var_1 = !(var_0.a.b != countOneBits(84325u));
    var var_2 = -23365i;
    var var_3 = -1550f;
    let var_4 = true;
    return vec4<f32>(-470f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * global1.x))), arg_1.a.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_5 {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(600f, arg_1.x, _wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x)))) + vec4<f32>(-407f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(arg_1.x - global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x * 113f))))), !any(vec4<bool>(arg_2, true, true, arg_0.a.x))));
    return Struct_5(arg_0.a, arg_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * arg_1.x), _wgslsmith_f_op_f32(-678f * arg_0.c.x)), Struct_4(global1.yz, arg_3.x), -(-1i | global0.x), ~(~vec4<u32>(arg_0.b.a.b, arg_0.b.a.b, 114649u, arg_0.b.a.b))))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    global0 = countOneBits(abs(-select(vec4<i32>(arg_0.b.a.a, arg_0.b.a.a, 2147483647i, -2147483647i), vec4<i32>(12088i, arg_0.b.a.a, -2147483647i, u_input.a.x) | vec4<i32>(global0.x, 34140i, -51629i, arg_3.b), arg_0.a)));
    return func_2(func_2(arg_0, arg_0.c, arg_0.a.x, vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(arg_0.b.a.a, arg_3.b)), _wgslsmith_clamp_i32(-2147483647i, -global0.x, _wgslsmith_mod_i32(arg_0.b.a.a, -11061i)))), vec4<f32>(_wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f * arg_2.x) * -943f)), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(step(235f, 270f)), true)), _wgslsmith_f_op_f32(func_2(Struct_5(arg_0.a, arg_0.b, arg_0.c), arg_0.c, false, vec2<i32>(6362i, arg_3.b)).c.x - -409f)), -604f), arg_0.a.x, vec2<i32>(firstLeadingBit(-u_input.b) & func_2(arg_0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1536f, arg_3.a.x, global1.x, -291f))), true, vec2<i32>(arg_0.b.a.a, 24396i)).b.a.a, _wgslsmith_mod_i32(arg_3.b, _wgslsmith_mod_i32(global0.x, -2147483647i) | -1i))).b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 858f)), global1.x, 233f))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = func_2(Struct_5(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), Struct_2(arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -283f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1569f, var_0.x, -408f, -266f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1130f, global1.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(1882f)), _wgslsmith_f_op_f32(-global1.x), -245f, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(max(357f, var_0.x)), 1662f))), select(true, true, firstTrailingBit(arg_1.x) >= abs(arg_0.b)) || true, vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_add_i32(14498i, -1i), global0.x), _wgslsmith_sub_i32(func_2(Struct_5(vec4<bool>(false, false, false, false), Struct_2(arg_0), vec4<f32>(global1.x, 218f, var_0.x, 1000f)), vec4<f32>(-1883f, var_0.x, var_0.x, -936f), select(false, false, false), global0.yz).b.a.a, u_input.b))).b;
    var var_2 = 4294967295u;
    let var_3 = func_4(Struct_5(vec4<bool>(false, true, !select(true, true, false), true), Struct_2(var_1.a), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.x)))), var_0.x, var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1960f, var_0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1028f))))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 76812u), vec4<u32>(1757u, 79209u, 59814u, arg_1.x), false), select(vec4<u32>(67944u, arg_0.b, arg_0.b, arg_1.x), vec4<u32>(arg_0.b, 8677u, 2778u, 8862u), vec4<bool>(false, true, false, false))), countOneBits(select(24103u, var_1.a.b, false))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.b, arg_1.x, var_1.a.b), vec3<u32>(arg_1.x, arg_1.x, 0u)) << (arg_1 % vec3<u32>(32u)), reverseBits(~arg_1))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 574f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy - global1.xz))))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, 1000f)), 1230f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xw - vec2<f32>(1000f, global1.x)) * vec2<f32>(1407f, var_0.x))), u_input.b));
    return _wgslsmith_f_op_f32(1861f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1940f))) - _wgslsmith_f_op_f32(func_2(Struct_5(vec4<bool>(true, false, false, false), Struct_2(Struct_1(-32130i, var_3.b)), vec4<f32>(816f, 1364f, -479f, var_0.x)), vec4<f32>(var_0.x, 312f, var_0.x, var_0.x), false, vec2<i32>(var_1.a.a, u_input.b)).c.x + global1.x)) - 276f));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = global0.x & -global0.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-570f))))) * _wgslsmith_f_op_f32(func_5(func_4(func_2(Struct_5(vec4<bool>(arg_0.x, false, true, arg_0.x), Struct_2(Struct_1(global0.x, 0u)), vec4<f32>(global1.x, -656f, 532f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, global1.x, global1.x, global1.x)), true, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global0.x), u_input.a.xz)), arg_1.x, vec2<f32>(global1.x, _wgslsmith_f_op_f32(282f + global1.x)), Struct_4(_wgslsmith_f_op_vec2_f32(sign(global1.wy)), u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(49139u, 0u, arg_1.x), ~arg_1, arg_1) | arg_1)));
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 4412u), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 63046u), arg_1.xz) & reverseBits(17068u), 27458u)), ~vec3<u32>(39966u, 99705u, arg_1.x << (arg_1.x % 32u)) ^ ((vec3<u32>(1u, 1u, arg_1.x) ^ arg_1) & ~arg_1));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zy) - _wgslsmith_f_op_vec2_f32(global1.zx - global1.ww)), global0.x);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1818f)), -770f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1.x, Struct_4(vec2<f32>(var_3.a.x, -1000f), global0.x), u_input.a.x, vec4<u32>(14738u, 19532u, var_2.x, 17042u))).x))), 800f);
    return vec4<bool>(arg_0.x, any(!select(func_2(Struct_5(vec4<bool>(true, arg_0.x, false, false), Struct_2(Struct_1(u_input.b, 4294967295u)), vec4<f32>(-1231f, var_1, var_3.a.x, global1.x)), vec4<f32>(var_3.a.x, -959f, var_1, 1551f), false, u_input.a.yy).a, vec4<bool>(arg_0.x, arg_0.x, true, false), arg_0.x)), false || !all(vec4<bool>(true, arg_0.x, false, true)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(abs(var_1)), Struct_4(var_3.a, var_3.b), 1i | var_3.b, ~(~vec4<u32>(arg_1.x, 0u, 0u, 34047u)))).x >= _wgslsmith_f_op_f32(f32(-1f) * -926f));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = vec4<i32>(~(~(~arg_1.a)), ~(i32(-1i) * -3420i), ~arg_1.a, arg_1.a);
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(arg_2.xz + func_2(func_2(Struct_5(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), Struct_2(arg_1), vec4<f32>(-701f, -1604f, -2525f, -1109f)), arg_2, true, vec2<i32>(global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_2))), arg_0.x, u_input.a.xz).c.zx), _wgslsmith_mod_i32(-2147483647i, reverseBits(1i)));
    let var_1 = Struct_3(arg_1, any(select(!select(arg_0, vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), 24025u);
    var var_2 = vec2<u32>(~1u, 1u);
    let var_3 = vec3<bool>(arg_0.x, var_1.b, !(var_1.b == ((var_0.a.x < 1072f) != any(vec3<bool>(true, false, false)))));
    return func_4(Struct_5(select(func_1(!arg_0.yy, reverseBits(vec3<u32>(4294967295u, 1u, 4294967295u))), func_2(func_2(Struct_5(arg_0, Struct_2(Struct_1(var_0.b, var_2.x)), arg_2), vec4<f32>(global1.x, -129f, 1018f, var_0.a.x), true, global0.xw), arg_2, false, vec2<i32>(arg_1.a, var_1.a.a)).a, func_2(func_2(Struct_5(arg_0, Struct_2(Struct_1(-2147483647i, 32902u)), vec4<f32>(global1.x, -278f, global1.x, 1236f)), arg_2, arg_0.x, vec2<i32>(55249i, var_0.b)), _wgslsmith_f_op_vec4_f32(-arg_2), false, vec2<i32>(u_input.a.x, -1i)).a), func_2(Struct_5(!vec4<bool>(var_3.x, false, var_1.b, true), Struct_2(arg_1), _wgslsmith_f_op_vec4_f32(arg_2 + vec4<f32>(-1000f, global1.x, global1.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(-arg_2), false || func_1(vec2<bool>(false, var_3.x), vec3<u32>(4294967295u, var_1.a.b, var_1.a.b)).x, vec2<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_1.a.a, 1i, 11654i), vec4<i32>(55298i, arg_1.a, arg_1.a, u_input.b)))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * var_0.a.x), _wgslsmith_f_op_f32(-global1.x), -862f, _wgslsmith_f_op_f32(-var_0.a.x)))), arg_1.b, _wgslsmith_f_op_vec2_f32(ceil(arg_2.zw)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xw - _wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, 552f) + var_0.a))), 1821i));
}

fn func_7(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = func_2(func_2(Struct_5(vec4<bool>(true, true, true, true), func_2(Struct_5(vec4<bool>(true, true, true, false), Struct_2(Struct_1(u_input.a.x, arg_0.b)), vec4<f32>(1068f, global1.x, arg_1, 757f)), vec4<f32>(arg_1, -613f, -1091f, -102f), all(vec3<bool>(false, false, true)), vec2<i32>(-5330i, -52008i)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, 971f, global1.x, -219f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global1.x)))), 1456f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + -809f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), false != all(vec2<bool>(false, false)), global0.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(136f, 172f)) * _wgslsmith_f_op_f32(min(-615f, global1.x))), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-439f * global1.x))), _wgslsmith_f_op_f32(-1000f * arg_1)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, _wgslsmith_f_op_vec4_f32(func_3(global1.x, Struct_4(global1.zw, u_input.b), arg_0.a, vec4<u32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))).x, 189f, 1636f)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<i32>(-func_6(vec4<bool>(true, true, true, true), func_2(Struct_5(vec4<bool>(true, false, true, true), Struct_2(arg_0), vec4<f32>(global1.x, -1000f, 926f, 139f)), vec4<f32>(-1076f, 1000f, arg_1, -605f), true, vec2<i32>(u_input.a.x, global0.x)).b.a, vec4<f32>(-1791f, 119f, -529f, global1.x)).a, 1i)).b;
    let var_1 = Struct_3(func_6(vec4<bool>(true, true, true, true), Struct_1(67743i, _wgslsmith_sub_u32(18774u, var_0.a.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1005f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1260f, 571f, global1.x, arg_1)))))), false, var_0.a.b);
    let var_2 = countOneBits(select(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i, var_1.a.a, -4025i, -1i) >> (vec4<u32>(1u, 1u, var_1.a.b, arg_0.b) % vec4<u32>(32u))), vec4<i32>(~global0.x, -arg_0.a, -global0.x, max(0i, 18264i))), vec4<i32>(func_4(Struct_5(vec4<bool>(var_1.b, var_1.b, true, var_1.b), Struct_2(Struct_1(1810i, arg_0.b)), vec4<f32>(global1.x, -1238f, 636f, global1.x)), 0u, global1.zy, Struct_4(global1.zz, var_1.a.a)).a ^ min(var_0.a.a, global0.x), -25406i, _wgslsmith_div_i32(-1071i, u_input.b << (4294967295u % 32u)), var_0.a.a), select(!(var_1.b | var_1.b), var_1.b, func_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 18198u, var_0.a.b) ^ vec3<u32>(var_0.a.b, 1u, 33301u)).x)));
    var var_3 = i32(-1i) * -5124i;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - -549f))))), global1.x, global1.x, -1154f);
    return Struct_4(func_2(Struct_5(select(!vec4<bool>(false, true, true, var_1.b), select(vec4<bool>(false, var_1.b, true, true), vec4<bool>(var_1.b, var_1.b, var_1.b, false), false), arg_1 >= 796f), Struct_2(Struct_1(var_2.x, var_0.a.b)), vec4<f32>(169f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(global1.x, -164f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1212f, global1.x, -1290f) - vec4<f32>(global1.x, global1.x, -500f, arg_1)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-279f, -402f, global1.x, arg_1)))))), any(!vec4<bool>(var_1.b, true, var_1.b, var_1.b)), firstLeadingBit(-vec2<i32>(var_1.a.a, var_0.a.a))).c.yw, ~func_6(vec4<bool>(global1.x < -491f, !var_1.b, true, true), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(142f, global1.x, 577f, global1.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-346f, arg_1, global1.x, 692f))))).a);
}

fn func_8(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(sign(global1.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.b | arg_0.b, arg_0.b >> (1u % 32u)), max(u_input.b, ~1i)) | -34367i);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_3 = ~0u;
    return func_2(Struct_5(func_2(func_2(Struct_5(vec4<bool>(true, true, true, true), Struct_2(Struct_1(arg_1.x, arg_2)), vec4<f32>(381f, global1.x, 692f, 968f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(989f, arg_0.a.x, -1302f, 1798f)), arg_1.x <= -1i, -vec2<i32>(-17723i, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_1.a.x, 1509f, var_2) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2203f, -1200f, 788f, -998f)))), any(vec2<bool>(true, true)), -vec2<i32>(-669i, -21536i)).a, func_2(func_2(func_2(Struct_5(vec4<bool>(false, true, false, true), Struct_2(Struct_1(1402i, 0u)), vec4<f32>(-807f, global1.x, 1506f, 1361f)), vec4<f32>(-955f, -850f, -935f, var_1.a.x), false, global0.xz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1347f, arg_0.a.x, -891f, global1.x)), any(vec3<bool>(true, true, true)), u_input.a.zy & vec2<i32>(var_1.b, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1609f, global1.x, var_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -1148f, global1.x, 1000f) - vec4<f32>(1991f, arg_0.a.x, 402f, 392f))), any(vec4<bool>(true, false, false, false)), (global0.yz ^ arg_1.xw) >> (~vec2<u32>(30414u, arg_2) % vec2<u32>(32u))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, global1.x, arg_0.a.x) * vec4<f32>(var_2, 1212f, -990f, -300f))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1742f, _wgslsmith_f_op_f32(floor(1443f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_2(Struct_5(vec4<bool>(true, false, false, false), Struct_2(Struct_1(-2147483647i, 4294967295u)), vec4<f32>(arg_0.a.x, 1764f, 328f, var_2)), vec4<f32>(global1.x, arg_0.a.x, var_1.a.x, var_1.a.x), false, u_input.a.yx).b.a, vec3<u32>(var_3, 0u, 14950u))) * _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(var_1.a.x, var_2)))), _wgslsmith_div_f32(-742f, _wgslsmith_f_op_f32(min(-1001f, _wgslsmith_f_op_f32(1274f * var_2))))), true, -vec2<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.wy, vec2<i32>(global0.x, 0i)), -vec2<i32>(-2147483647i, -28428i)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -840f);
    var var_1 = func_8(func_7(func_6(!func_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 50277u)), Struct_1(0i, _wgslsmith_clamp_u32(0u, 127736u, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1598f, var_0, var_0, 1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1165f, 301f, -107f, global1.x)))), _wgslsmith_f_op_f32(step(187f, -1834f))), abs(-min(_wgslsmith_mod_vec4_i32(vec4<i32>(1782i, -2147483647i, u_input.a.x, global0.x), vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)), firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, 23237i, -25918i)))), 33387u);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, _wgslsmith_f_op_f32(ceil(-197f)), 2797f, _wgslsmith_f_op_f32(global1.x + -1000f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2481f, var_0, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -627f, 1759f, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(256f, 421f, global1.x, global1.x) + vec4<f32>(-1566f, 1306f, -350f, var_0)) * _wgslsmith_div_vec4_f32(vec4<f32>(595f, -315f, 1385f, -289f), vec4<f32>(var_0, var_0, global1.x, global1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(234f, -191f, -443f, 951f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1742f, 367f, global1.x) - vec4<f32>(var_0, 220f, 704f, -346f)))), vec4<bool>(true, any(vec3<bool>(true, true, false)), false, any(vec2<bool>(true, true))))));
    let var_2 = vec2<u32>(~26354u, _wgslsmith_add_u32(var_1.a.b ^ ~(~var_1.a.b), 27103u));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.wy, vec3<i32>(_wgslsmith_dot_vec2_i32(global0.zx, -global0.yy >> (vec2<u32>(44351u, 38389u) % vec2<u32>(32u))), u_input.b, u_input.b), var_2.x);
}

