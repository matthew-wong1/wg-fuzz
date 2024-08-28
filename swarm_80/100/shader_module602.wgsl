struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(54228u, 6815u, 0u), 9963u, 1496u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: i32) -> vec4<bool> {
    var var_0 = -187f;
    var_0 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1597f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1608f)), _wgslsmith_f_op_f32(-arg_0.x))))));
    global0 = arg_1.e;
    let var_1 = u_input.c.x;
    var var_2 = global0.a.a;
    return select(vec4<bool>(true, !select(u_input.a < arg_1.a.x, arg_1.d.x, arg_1.d.x), -1443f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(730f, arg_0.x), _wgslsmith_f_op_f32(-445f * arg_0.x), true)) > arg_0.x), !arg_1.d, true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_5) -> vec2<bool> {
    global0 = arg_2.c;
    var var_0 = u_input.a;
    global0 = Struct_2(Struct_1(arg_1.c.a.a, arg_1.c.a.b, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b, arg_0.e.x, global0.a.a.x), 23731u)));
    var var_1 = Struct_2(arg_2.c.a);
    var_1 = Struct_2(global0.a);
    return !select(select(arg_2.d.wz, arg_1.d.yy, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, 927f, -1088f, 229f)), Struct_5(vec3<i32>(arg_1.a.x, arg_2.a.x, arg_2.b.x), u_input.c, Struct_2(var_1.a), arg_0.a, arg_2.e), arg_2.d.yz, -40937i).zx), vec2<bool>(arg_2.d.x, arg_0.a.x), any(select(!vec3<bool>(false, arg_1.d.x, true), select(vec3<bool>(arg_2.d.x, false, true), arg_2.d.xyx, arg_0.b), false)));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = select(select(select(vec2<bool>(arg_1 < 1412f, true), vec2<bool>(true, true), select(!vec2<bool>(arg_0.d.x, true), select(arg_0.d.zw, vec2<bool>(true, arg_0.d.x), false), true)), func_4(Struct_3(func_3(vec4<f32>(-2131f, 155f, -1000f, arg_2.x), Struct_5(arg_0.b.xxy, vec4<i32>(arg_0.b.x, u_input.c.x, arg_0.b.x, 1i), Struct_2(global0.a), arg_0.d, arg_3), vec2<bool>(arg_0.d.x, arg_0.d.x), 1i), !arg_0.d.x, Struct_2(Struct_1(vec3<u32>(arg_3.a.a.x, global0.a.a.x, global0.a.a.x), 4237u, arg_3.a.a.x)), select(vec2<bool>(arg_0.d.x, true), arg_0.d.zz, arg_0.d.x), global0.a.a.xx), Struct_5(select(arg_0.a, vec3<i32>(-15253i, -3533i, 0i), arg_0.d.x), vec4<i32>(arg_0.a.x, 55203i, u_input.a, -55068i), Struct_2(global0.a), vec4<bool>(true, arg_0.d.x, false, true), arg_3), Struct_5(min(arg_0.b.zwy, vec3<i32>(u_input.c.x, -1i, arg_0.b.x)), vec4<i32>(arg_0.b.x, -2147483647i, 2147483647i, 7146i), Struct_2(Struct_1(u_input.d.wzy, arg_3.a.c, 1u)), func_3(vec4<f32>(arg_1, arg_2.x, arg_2.x, arg_2.x), Struct_5(u_input.c.zyw, arg_0.b, arg_0.c, arg_0.d, Struct_2(arg_0.e.a)), arg_0.d.yx, -2147483647i), Struct_2(Struct_1(u_input.d.xwz, 1u, 1u)))), arg_0.d.zz), !(!vec2<bool>(arg_0.d.x | false, true)), select(vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -586f) == arg_2.x), !vec2<bool>(arg_0.d.x, arg_0.d.x), vec2<bool>(!all(arg_0.d), arg_0.d.x)));
    return select(select(select(select(vec4<bool>(true, arg_0.d.x, true, true), !vec4<bool>(false, var_0.x, true, var_0.x), func_3(vec4<f32>(arg_2.x, arg_2.x, -580f, arg_2.x), arg_0, vec2<bool>(var_0.x, var_0.x), arg_0.b.x)), !func_3(vec4<f32>(429f, -434f, 555f, -337f), arg_0, arg_0.d.zz, arg_0.a.x), true), vec4<bool>(!(u_input.b >= 49696u), !arg_0.d.x && true, arg_0.d.x, all(arg_0.d.wzw)), !(true == (arg_2.x >= -1874f))), arg_0.d, arg_0.d);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(~u_input.a), u_input.a, -1i), abs(_wgslsmith_clamp_vec3_i32(u_input.c.yyx, vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), u_input.c.www) << (~global0.a.a % vec3<u32>(32u)))), select(~(~min(vec4<i32>(-1741i, 22515i, u_input.c.x, u_input.c.x), vec4<i32>(26253i, 20803i, 0i, -25794i))), ~abs(u_input.c), arg_1.x == 1f), arg_2, vec4<bool>(arg_0.x, arg_0.x, true, false), arg_2);
    var_0 = Struct_5(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(-2147483647i, 1i, u_input.c.x)), _wgslsmith_clamp_i32(u_input.a, u_input.a, -7590i) & _wgslsmith_dot_vec3_i32(u_input.c.zyz, u_input.c.yzz)), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(16276i, 1i, u_input.a, -8932i), u_input.c), var_0.b)), ~_wgslsmith_add_i32(~var_0.b.x, 0i)), _wgslsmith_add_vec4_i32(var_0.b, -(vec4<i32>(u_input.a, 8698i, u_input.a, u_input.a) << ((vec4<u32>(1u, var_0.c.a.a.x, 11375u, arg_2.a.b) & u_input.d) % vec4<u32>(32u)))), arg_2, arg_0, arg_2);
    return Struct_2(Struct_1(global0.a.a, _wgslsmith_mod_u32(14934u, firstTrailingBit(59896u)), ~global0.a.a.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: u32) -> Struct_3 {
    global0 = func_5(!select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, true, true, false), false), vec4<bool>(!arg_1, true, true, all(vec2<bool>(arg_1, arg_1))), !func_2(Struct_5(u_input.c.zxx, vec4<i32>(u_input.c.x, u_input.c.x, -35489i, u_input.a), Struct_2(global0.a), vec4<bool>(arg_1, false, arg_1, arg_1), Struct_2(global0.a)), -1258f, vec3<f32>(-1414f, 1362f, 417f), Struct_2(global0.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1041f, 367f, -1481f, 2756f), _wgslsmith_f_op_vec4_f32(vec4<f32>(584f, 1274f, 645f, 1708f) - vec4<f32>(-771f, 1000f, 727f, -631f)))))), Struct_2(global0.a));
    let var_0 = Struct_5(-vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(u_input.a, arg_0.x, arg_0.x)), -arg_0.x & (i32(-1i) * -40749i), _wgslsmith_dot_vec2_i32(arg_0, u_input.c.wy)), firstLeadingBit(vec4<i32>(-5494i, arg_0.x, -arg_0.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-16332i, -1i), reverseBits(2147483647i)))), Struct_2(global0.a), vec4<bool>(!any(!vec2<bool>(arg_1, arg_1)), !arg_1, !arg_1, all(select(!vec3<bool>(arg_1, true, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_1, false, arg_1), arg_1), true))), Struct_2(Struct_1(~abs(vec3<u32>(16734u, 4294967295u, u_input.d.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(48603u, 37141u, u_input.b, 0u), u_input.d, u_input.d), abs(u_input.d)), firstTrailingBit(firstLeadingBit(u_input.d.x)))));
    global0 = func_5(vec4<bool>(false, func_2(Struct_5(~var_0.a, reverseBits(vec4<i32>(var_0.a.x, 2147483647i, 32304i, 14684i)), var_0.e, select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, arg_1), var_0.d, false), func_5(vec4<bool>(true, arg_1, arg_1, false), vec4<f32>(-1973f, -254f, 421f, 1554f), Struct_2(var_0.c.a))), _wgslsmith_f_op_f32(ceil(-184f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-682f, -632f, 1000f)))), func_5(func_3(vec4<f32>(970f, -2205f, -201f, -300f), Struct_5(var_0.a, vec4<i32>(-4487i, u_input.a, u_input.a, u_input.a), var_0.c, vec4<bool>(true, var_0.d.x, arg_1, true), var_0.e), vec2<bool>(arg_1, false), 1i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1083f, 718f, -469f, 276f))), func_5(vec4<bool>(arg_1, arg_1, true, var_0.d.x), vec4<f32>(-194f, 1106f, 2295f, 742f), Struct_2(var_0.c.a)))).x, false, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-308f, 1575f, -1506f, 658f), vec4<f32>(1580f, 965f, 1108f, 556f))))))), Struct_2(Struct_1(~global0.a.a, _wgslsmith_mult_u32(~22922u, u_input.d.x), arg_2)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -258f) > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -874f), 140f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-890f, 300f))))));
    var var_2 = u_input.d;
    return Struct_3(select(select(func_2(Struct_5(vec3<i32>(var_0.a.x, -25023i, 44626i), var_0.b, var_0.e, vec4<bool>(true, false, true, false), var_0.c), _wgslsmith_f_op_f32(sign(-747f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2354f, -972f, -591f)), Struct_2(global0.a)), vec4<bool>(false, true, true, var_0.d.x), false), var_0.d, var_0.d), false, var_0.e, !vec2<bool>(var_0.d.x, var_2.x == u_input.b), vec2<u32>(~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(22136u, 0u, 4294967295u, 71204u), vec4<u32>(4294967295u, 4294967295u, 0u, var_0.e.a.c))), 4294967295u));
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = global0.a.b;
    var var_1 = Struct_4(vec2<u32>(~u_input.d.x, min(global0.a.b, _wgslsmith_dot_vec3_u32(reverseBits(arg_2.c.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, u_input.d.x, u_input.d.x), u_input.d.ywz)))), Struct_3(select(arg_2.a, arg_2.a, arg_2.a), arg_1, arg_2.c, arg_2.a.xz, arg_2.c.a.a.yz & ~(vec2<u32>(arg_0.x, 54161u) >> (vec2<u32>(0u, global0.a.b) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1564f), 298f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(901f)), _wgslsmith_f_op_f32(abs(591f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1143f, 1696f) - _wgslsmith_f_op_f32(-1282f - 774f)))));
    var var_2 = arg_1;
    global0 = Struct_2(func_1(_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(57896i, 49009i)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.yx, vec2<i32>(-2606i, 2147483647i)), u_input.c.xw >> (vec2<u32>(4294967295u, 44992u) % vec2<u32>(32u)))), false, ~_wgslsmith_dot_vec3_u32(var_1.b.c.a.a, func_5(vec4<bool>(true, arg_2.d.x, var_1.b.a.x, true), vec4<f32>(var_1.c.x, var_1.c.x, 1000f, 1142f), Struct_2(var_1.b.c.a)).a.a)).c.a);
    var_1 = Struct_4(~arg_0, var_1.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + 958f) + var_1.c.x), 473f, var_1.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x), -594f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(var_1.c)), vec3<f32>(-1388f, var_1.c.x, -316f))))));
    return Struct_4(arg_2.c.a.a.zx, Struct_3(!select(var_1.b.a, vec4<bool>(true, true, true, true), func_1(u_input.c.wz, arg_2.b, arg_2.c.a.c).a), true, func_1(select(u_input.c.zw, u_input.c.yw, var_1.b.d) | -u_input.c.yy, ~var_1.b.c.a.c > 1u, 1u).c, vec2<bool>(arg_1 || !arg_2.d.x, !(!arg_2.a.x)), ~arg_2.c.a.a.xx), var_1.c);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    global0 = arg_0.b.c;
    var var_0 = arg_1.b.c.a.a;
    var var_1 = func_1(vec2<i32>(_wgslsmith_mult_i32(19864i, reverseBits(~(-1i))), -abs(arg_3.b.x)), true, abs(arg_1.a.x)).c.a;
    var var_2 = arg_0.c.x;
    var_2 = 1000f;
    return arg_1.b;
}

fn func_8(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = max(vec4<u32>(func_5(!(!vec4<bool>(arg_0.d.x, arg_0.a.x, true, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, 594f, -1000f, 512f)), func_1(vec2<i32>(arg_1.x, u_input.a), true, 12476u).c).a.c, func_6(~vec2<u32>(u_input.b, arg_2), func_2(Struct_5(vec3<i32>(arg_3, -2147483647i, 0i), vec4<i32>(2147483647i, arg_3, -51485i, arg_1.x), arg_0.c, vec4<bool>(arg_0.b, true, true, arg_0.a.x), Struct_2(global0.a)), -855f, vec3<f32>(1f, 1f, 1f), Struct_2(arg_0.c.a)).x, Struct_3(vec4<bool>(arg_0.a.x, true, arg_0.d.x, arg_0.b), true, func_5(vec4<bool>(arg_0.b, false, true, false), vec4<f32>(484f, -971f, 287f, -343f), Struct_2(global0.a)), func_4(Struct_3(vec4<bool>(arg_0.a.x, arg_0.b, arg_0.b, arg_0.d.x), true, Struct_2(Struct_1(u_input.d.zxw, 0u, global0.a.b)), vec2<bool>(arg_0.d.x, true), arg_0.c.a.a.yz), Struct_5(vec3<i32>(-26012i, -27543i, -1i), vec4<i32>(0i, arg_3, 0i, 22202i), arg_0.c, vec4<bool>(arg_0.b, arg_0.d.x, false, arg_0.b), arg_0.c), Struct_5(u_input.c.zzw, u_input.c, Struct_2(Struct_1(arg_0.c.a.a, 1u, arg_0.c.a.a.x)), arg_0.a, arg_0.c)), select(vec2<u32>(6415u, 1u), u_input.d.zw, true))).a.x, ~12533u & func_5(func_3(vec4<f32>(-625f, 891f, 1295f, -1538f), Struct_5(u_input.c.wwz, vec4<i32>(arg_1.x, 0i, 31989i, 47461i), Struct_2(arg_0.c.a), vec4<bool>(arg_0.d.x, arg_0.d.x, true, false), Struct_2(arg_0.c.a)), arg_0.d, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1026f, 1310f, -1025f, 118f)), func_5(arg_0.a, vec4<f32>(-1163f, 1147f, 1000f, 611f), arg_0.c)).a.c, 18976u), firstTrailingBit(~(~vec4<u32>(u_input.d.x, u_input.d.x, 28709u, u_input.b))));
    let var_1 = arg_0.a.x;
    var var_2 = vec4<i32>(-1i, -20664i, ~reverseBits(arg_3), select(arg_1.x & _wgslsmith_mod_i32(u_input.c.x, 0i), -u_input.c.x, true)) & select(-u_input.c, u_input.c, select(!vec4<bool>(true, true, arg_0.d.x, var_1), !(!arg_0.a), !arg_0.a.x));
    var var_3 = 48543u;
    let var_4 = func_5(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1670f + -616f), -495f, _wgslsmith_f_op_f32(-1239f - 530f), -149f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, -1309f, 232f, 457f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(284f, -440f, 227f, 1185f), vec4<f32>(-1000f, -2496f, 1182f, -1395f), true))), false))), Struct_2(global0.a));
    return func_6(~var_0.xx, var_1, func_1(-arg_1, all(vec4<bool>(func_2(Struct_5(var_2.wyz, u_input.c, Struct_2(Struct_1(u_input.d.ywx, 134415u, u_input.d.x)), arg_0.a, arg_0.c), 1338f, vec3<f32>(1000f, 1277f, 586f), Struct_2(arg_0.c.a)).x, !var_1, false, arg_0.d.x)), u_input.b)).b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_8(func_7(func_6(vec2<u32>(11909u, global0.a.b), all(vec2<bool>(true, true)), func_1(abs(u_input.c.wy), true, ~u_input.d.x)), Struct_4(~u_input.d.yz, Struct_3(vec4<bool>(true, true, true, true), false, func_1(vec2<i32>(u_input.a, -54727i), false, 46100u).c, vec2<bool>(false, true), vec2<u32>(global0.a.c, global0.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1282f, 1653f, -1000f), vec3<f32>(-1477f, 1294f, -1918f), vec3<bool>(false, true, true))))), 1000f, Struct_5(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.xww, vec3<i32>(u_input.c.x, -9200i, u_input.c.x)), ~vec3<i32>(u_input.c.x, 2501i, u_input.a)), vec4<i32>(u_input.c.x, -1i, u_input.a, -29873i) << (firstTrailingBit(vec4<u32>(u_input.b, global0.a.b, u_input.d.x, 43010u)) % vec4<u32>(32u)), func_6(abs(global0.a.a.xz), all(vec3<bool>(true, false, true)), Struct_3(vec4<bool>(false, true, true, false), false, Struct_2(global0.a), vec2<bool>(false, false), u_input.d.wz)).b.c, vec4<bool>(true, true, true, true), func_6(~vec2<u32>(0u, 61287u), false, Struct_3(vec4<bool>(true, true, false, true), true, Struct_2(global0.a), vec2<bool>(true, true), vec2<u32>(global0.a.b, global0.a.b))).b.c)), _wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.c.x, 59516i), -u_input.c.xz, max(vec2<i32>(-1i, 1737i), vec2<i32>(u_input.a, 39539i)))), -vec2<i32>(u_input.a, -2147483647i)), ~1u, abs(u_input.a));
    var var_0 = _wgslsmith_f_op_f32(min(-322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-606f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -365f))))) + -1000f)));
    var var_1 = Struct_2(Struct_1(global0.a.a, global0.a.b, 0u));
    global0 = Struct_2(global0.a);
    let var_2 = func_8(func_7(func_6(_wgslsmith_mod_vec2_u32(~var_1.a.a.zy, firstTrailingBit(global0.a.a.zx)), !any(vec4<bool>(false, true, true, true)), Struct_3(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), any(vec4<bool>(true, false, true, false)), Struct_2(Struct_1(vec3<u32>(global0.a.b, 31343u, var_1.a.c), var_1.a.b, var_1.a.a.x)), vec2<bool>(false, false), _wgslsmith_add_vec2_u32(vec2<u32>(11341u, 4294967295u), u_input.d.xw))), func_6(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_1.a.b), vec2<u32>(var_1.a.b, 0u)), ~vec2<u32>(var_1.a.a.x, 23962u)), func_4(Struct_3(vec4<bool>(true, false, false, true), true, Struct_2(Struct_1(global0.a.a, 1u, 4294967295u)), vec2<bool>(true, true), vec2<u32>(u_input.b, u_input.d.x)), Struct_5(u_input.c.zyy, vec4<i32>(u_input.c.x, u_input.c.x, 43939i, u_input.a), Struct_2(global0.a), vec4<bool>(true, true, false, true), Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 32049u), 76645u, global0.a.a.x))), Struct_5(vec3<i32>(-2147483647i, u_input.a, -257i), u_input.c, Struct_2(global0.a), vec4<bool>(false, false, false, true), Struct_2(var_1.a))).x, func_6(global0.a.a.yy, func_3(vec4<f32>(1000f, -945f, 231f, 1000f), Struct_5(vec3<i32>(-4586i, -60475i, 7850i), vec4<i32>(u_input.a, u_input.a, 39984i, 2147483647i), Struct_2(global0.a), vec4<bool>(true, false, false, true), Struct_2(Struct_1(u_input.d.yzy, 64664u, var_1.a.c))), vec2<bool>(false, true), 28417i).x, func_1(u_input.c.wy, false, global0.a.b)).b), _wgslsmith_f_op_f32(f32(-1f) * -1199f), Struct_5(vec3<i32>(1i, min(u_input.a, u_input.a), 0i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, -1i, u_input.c.x), u_input.c << (vec4<u32>(363u, global0.a.b, 4294967295u, 50617u) % vec4<u32>(32u))), Struct_2(Struct_1(var_1.a.a, 25001u, var_1.a.a.x)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false), func_6(select(var_1.a.a.yz, vec2<u32>(18291u, global0.a.c), vec2<bool>(false, true)), u_input.c.x >= u_input.a, func_6(vec2<u32>(1u, u_input.b), false, Struct_3(vec4<bool>(false, false, true, false), true, Struct_2(Struct_1(vec3<u32>(4294967295u, global0.a.b, global0.a.c), u_input.b, 0u)), vec2<bool>(true, true), global0.a.a.yy)).b).b.c)), vec2<i32>(u_input.c.x, u_input.c.x), 4294967295u, i32(-1i) * -13075i).a;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-596f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(268f, -1147f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-549f, -993f) * _wgslsmith_f_op_f32(181f * 762f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1108f, 271f, true))))), -554f), vec2<i32>(-(_wgslsmith_div_i32(u_input.a, 13605i) << (var_1.a.a.x % 32u)), -(~u_input.a | firstLeadingBit(-2147483647i))), abs(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -6649i), u_input.c.ww), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 2147483647i), vec3<i32>(21127i, 0i, u_input.a)), -25320i)), 30567u, ~(~var_1.a.b));
}

