struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2.b;
    var_0 = arg_2.b;
    var_0 = Struct_1(arg_0.b.a, 0u, _wgslsmith_f_op_f32(max(arg_0.b.c, arg_0.b.c)), arg_1 || !var_0.d, firstTrailingBit(arg_2.b.e));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-74228i, u_input.e, arg_0.b.e.x) & -var_0.e.xxz, _wgslsmith_sub_vec3_i32(-u_input.b.yzy, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.e.x, -25225i), arg_0.b.e.wxx) << (vec3<u32>(0u, u_input.d, 0u) % vec3<u32>(32u)))), -15377i);
    return _wgslsmith_div_f32(arg_2.b.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.b.c))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    let var_0 = arg_1.e;
    var var_1 = vec4<u32>(u_input.d, _wgslsmith_div_u32(1u, max(40709u, u_input.d) | 1u) | 4294967295u, abs(1u), arg_1.b);
    let var_2 = arg_3;
    var var_3 = arg_2.xy;
    var_3 = vec2<bool>(arg_1.a, !arg_2.x);
    return var_1.x;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_2(4294967295u, Struct_1(true, func_4(~vec2<i32>(1i, u_input.b.x), Struct_1(any(vec2<bool>(true, true)), 24165u, _wgslsmith_f_op_f32(arg_0.x * 2145f), true, vec4<i32>(u_input.c, u_input.c, 1i, 7439i)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(Struct_4(arg_0.x, Struct_1(true, u_input.d, 312f, true, vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.a))), -23830i >= u_input.e, Struct_4(arg_0.x, Struct_1(true, u_input.d, arg_0.x, false, vec4<i32>(u_input.b.x, 23459i, u_input.c, -1i)))))), 545f, true, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), vec2<bool>(!((arg_0.x != arg_0.x) & false), true), (_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), -u_input.b) != u_input.c) && (arg_0.x >= _wgslsmith_f_op_f32(func_3(Struct_4(568f, Struct_1(true, u_input.d, arg_0.x, true, vec4<i32>(-30179i, u_input.a, u_input.b.x, -6420i))), true, Struct_4(816f, Struct_1(false, 4294967295u, 1472f, true, u_input.b))))), Struct_1(!(u_input.d < u_input.d) || false, ~1u, 797f, true, u_input.b));
    var var_1 = select(vec4<bool>(all(vec3<bool>(true, arg_0.x < -607f, true)), var_0.c.x || false, true, true), !(!vec4<bool>(true & var_0.d, var_0.e.d, true, true)), select(select(!(!vec4<bool>(var_0.b.d, var_0.c.x, true, var_0.b.a)), !vec4<bool>(true, var_0.c.x, var_0.c.x, true), select(vec4<bool>(false, false, var_0.e.a, var_0.b.d), vec4<bool>(var_0.e.d, var_0.e.a, true, false), select(vec4<bool>(true, var_0.b.a, var_0.d, false), vec4<bool>(false, var_0.e.a, var_0.c.x, false), vec4<bool>(false, var_0.e.a, var_0.c.x, true)))), select(select(vec4<bool>(var_0.d, true, true, var_0.e.d), !vec4<bool>(true, true, true, var_0.b.a), !vec4<bool>(false, var_0.e.a, var_0.b.d, true)), !vec4<bool>(false, false, var_0.d, false), !select(vec4<bool>(false, var_0.e.a, var_0.b.d, false), vec4<bool>(var_0.d, var_0.b.d, true, true), vec4<bool>(var_0.d, var_0.d, var_0.b.a, false))), !(!select(vec4<bool>(var_0.c.x, true, var_0.d, true), vec4<bool>(var_0.d, var_0.b.a, var_0.e.d, var_0.b.a), var_0.b.a))));
    var_1 = select(!select(!(!vec4<bool>(true, var_1.x, true, var_0.b.a)), select(select(vec4<bool>(false, true, var_0.d, true), vec4<bool>(true, false, var_1.x, var_0.d), true), select(vec4<bool>(var_0.e.d, var_0.b.a, true, true), vec4<bool>(var_0.d, var_1.x, false, false), vec4<bool>(false, false, var_0.c.x, var_0.c.x)), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true || (var_1.x | var_1.x), true, (24919u > var_0.b.b) && true, any(vec2<bool>(var_1.x, true))), var_0.b.d);
    var_1 = vec4<bool>(var_0.b.d, false, !all(vec4<bool>(u_input.d < 4294967295u, true, true, var_1.x)), any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)));
    let var_2 = u_input.c;
    return 4294967295u;
}

fn func_5(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_1(true, u_input.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(1034f, Struct_1(false, 7416u, -1000f, arg_0, vec4<i32>(13234i, -63195i, 1i, u_input.c))), arg_0, Struct_4(176f, Struct_1(false, u_input.d, -1000f, arg_0, u_input.b)))), 1f)), 458f)), false, vec4<i32>(u_input.a, max(min(-534i, u_input.a), reverseBits(-1i)), u_input.b.x, -u_input.b.x) | _wgslsmith_div_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(33258i, u_input.e, u_input.a, u_input.c), vec4<i32>(-41614i, u_input.a, u_input.a, u_input.a)), firstLeadingBit(vec4<i32>(0i, u_input.c, u_input.a, 59283i)), vec4<bool>(arg_0, true, arg_0, true)), ~vec4<i32>(u_input.e, 27945i, 1i, 2147483647i)));
    var var_1 = u_input.a <= -var_0.e.x;
    let var_2 = select(!(!(!select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, false), arg_0))), !select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.d, arg_0), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, true)), !vec2<bool>(true, arg_0)), vec2<bool>(all(vec3<bool>(var_0.a, arg_0, true)), true), vec2<bool>(var_0.e.x == var_0.e.x, any(vec2<bool>(var_0.d, true)))), var_0.d);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(268f, -372f) - vec2<f32>(611f, 516f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, -1238f), vec2<f32>(var_0.c, var_0.c)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c, -238f), vec2<f32>(var_0.c, var_0.c)))), arg_0)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(214f, var_0.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(220f, var_0.c), vec2<f32>(var_0.c, -512f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(727f * 1186f)))))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * var_3.x))), Struct_1(all(vec4<bool>(any(vec4<bool>(var_0.d, true, var_2.x, true)), true, true, true)), var_0.b, _wgslsmith_f_op_f32(func_3(Struct_4(var_0.c, var_0), select(var_3.x <= -296f, any(vec4<bool>(var_0.d, arg_0, arg_0, arg_0)), !arg_0), Struct_4(-1633f, var_0))), !var_0.a, u_input.b));
    return Struct_4(var_3.x, var_4.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = vec3<bool>(arg_1.b.d, any(!select(select(vec2<bool>(true, false), vec2<bool>(false, arg_2.b), arg_0.b), vec2<bool>(false, true), true)), u_input.d <= arg_2.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1583f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) * arg_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, 1157f)))), select(false | arg_1.b.d, true, true) & ((false | arg_0.b) & any(vec4<bool>(true, arg_0.b, false, arg_2.b))))), arg_1.b.c);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.c), 1124f)), _wgslsmith_f_op_f32(-arg_1.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.c - arg_1.b.c) - _wgslsmith_f_op_f32(sign(-2569f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-583f - 1300f))))));
    var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1464f + 1000f))), -445f, _wgslsmith_f_op_f32(-1898f * -301f)));
    return Struct_2(51256u, func_5(all(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, false, false), vec3<bool>(false, var_0.x, var_0.x)))).b, !select(vec2<bool>(!arg_2.b, var_0.x), vec2<bool>(true, !var_0.x), !var_0.yx), !arg_0.b, arg_1.b);
}

fn func_1() -> i32 {
    var var_0 = func_6(Struct_3(_wgslsmith_mult_vec2_u32(select(select(vec2<u32>(78904u, u_input.d), vec2<u32>(u_input.d, 1u), vec2<bool>(false, false)), firstTrailingBit(vec2<u32>(19150u, u_input.d)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), abs(_wgslsmith_div_vec2_u32(vec2<u32>(8801u, u_input.d), vec2<u32>(u_input.d, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(713f, 112f, false))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1302f, -1000f)), u_input.d), func_5(~firstTrailingBit(78693u) >= _wgslsmith_mod_u32(func_2(vec4<f32>(1000f, -309f, 1000f, -548f)), ~u_input.d)), Struct_3(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 23897u), vec2<u32>(0u, u_input.d)) ^ reverseBits(vec2<u32>(u_input.d, 0u))), false, 4294967295u), vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(35977u, 1u), vec2<u32>(5189u, 102005u)), ~vec2<u32>(u_input.d, 6779u)), vec2<u32>(~u_input.d, u_input.d & u_input.d)), max(abs(15591u) & u_input.d, max(u_input.d, ~16852u)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(36991u, u_input.d, u_input.d, u_input.d), vec4<u32>(1869u, u_input.d, 23295u, u_input.d), false), max(vec4<u32>(u_input.d, u_input.d, 20836u, 17555u), vec4<u32>(23633u, u_input.d, u_input.d, u_input.d))), _wgslsmith_dot_vec2_u32(~vec2<u32>(11612u, 1u), ~vec2<u32>(u_input.d, 4294967295u)))));
    var_0 = Struct_2(0u, Struct_1(true, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.e.b, var_0.b.b & 0u), u_input.d), var_0.e.c, var_0.b.a, ~firstLeadingBit(max(u_input.b, vec4<i32>(-61973i, 30944i, u_input.a, 1i)))), select(select(select(var_0.c, select(var_0.c, vec2<bool>(false, true), var_0.c), var_0.b.d), vec2<bool>(true, var_0.c.x && var_0.e.d), false), vec2<bool>(!func_6(Struct_3(vec2<u32>(var_0.a, 0u), false, 1725u), Struct_4(var_0.e.c, var_0.e), Struct_3(vec2<u32>(0u, 4294967295u), false, var_0.b.b), vec4<u32>(4294967295u, 50446u, 4294967295u, 155283u)).c.x, select(func_5(false).b.d, true, true)), all(!(!vec4<bool>(var_0.d, false, var_0.d, var_0.d)))), func_5(func_6(Struct_3(abs(vec2<u32>(u_input.d, 26593u)), select(var_0.b.d, false, false), firstTrailingBit(1u)), func_5(all(var_0.c)), Struct_3(~vec2<u32>(0u, 18690u), var_0.d & var_0.b.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, var_0.b.b, var_0.e.b), vec4<u32>(1u, var_0.b.b, 0u, 1u))), ~(~vec4<u32>(78173u, 1u, var_0.a, u_input.d))).d).b.a, Struct_1(var_0.e.d, u_input.d, _wgslsmith_f_op_f32(-var_0.b.c), var_0.e.d, -select(vec4<i32>(u_input.a, -2147483647i, 1i, var_0.b.e.x), var_0.b.e, var_0.c.x) & (-var_0.b.e << ((vec4<u32>(var_0.e.b, u_input.d, 4294967295u, var_0.b.b) | vec4<u32>(4294967295u, 0u, var_0.a, 1u)) % vec4<u32>(32u)))));
    var_0 = func_6(Struct_3(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(var_0.e.b, u_input.d)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 0u), firstLeadingBit(vec2<u32>(u_input.d, var_0.e.b)))), -556f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1411f, var_0.e.c) + _wgslsmith_f_op_f32(-354f + var_0.e.c)), 1u), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f - _wgslsmith_div_f32(1000f, var_0.b.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.e.c, var_0.b.c, false)))), func_6(Struct_3(vec2<u32>(u_input.d, var_0.a), func_6(Struct_3(vec2<u32>(var_0.b.b, var_0.b.b), var_0.e.d, 18038u), Struct_4(var_0.e.c, var_0.e), Struct_3(vec2<u32>(var_0.e.b, u_input.d), var_0.d, var_0.a), vec4<u32>(u_input.d, var_0.b.b, var_0.e.b, var_0.e.b)).c.x, _wgslsmith_mod_u32(u_input.d, 4294967295u)), Struct_4(var_0.e.c, func_6(Struct_3(vec2<u32>(u_input.d, u_input.d), true, var_0.e.b), Struct_4(var_0.b.c, Struct_1(true, u_input.d, 387f, var_0.b.d, u_input.b)), Struct_3(vec2<u32>(4294967295u, var_0.e.b), false, var_0.b.b), vec4<u32>(var_0.a, 1u, 1u, var_0.a)).b), Struct_3(~vec2<u32>(0u, 1u), var_0.e.d, 19777u), ~vec4<u32>(u_input.d, 1u, 30074u, var_0.a)).e), Struct_3(vec2<u32>(~u_input.d, _wgslsmith_div_u32(u_input.d, 4294967295u)), all(select(vec3<bool>(false, false, var_0.c.x), !vec3<bool>(true, false, var_0.d), var_0.d)), ~1u), abs(~(vec4<u32>(0u, u_input.d, 35379u, u_input.d) << (vec4<u32>(0u, var_0.a, 12687u, u_input.d) % vec4<u32>(32u)))) | (vec4<u32>(_wgslsmith_mod_u32(u_input.d, 30202u), _wgslsmith_clamp_u32(1u, 3700u, u_input.d), _wgslsmith_mult_u32(0u, 8747u), var_0.e.b) | reverseBits(~vec4<u32>(u_input.d, 31450u, u_input.d, 0u))));
    let var_1 = abs(var_0.b.b >> (16767u % 32u));
    var_0 = Struct_2(reverseBits(_wgslsmith_div_u32(var_0.a, ~u_input.d)), func_6(Struct_3(min(min(vec2<u32>(33677u, var_1), vec2<u32>(19924u, 4294967295u)), ~vec2<u32>(63494u, var_1)), !var_0.c.x, var_0.b.b), func_5(var_0.e.a), Struct_3(~(~vec2<u32>(19814u, 4865u)), true, u_input.d), select(vec4<u32>(_wgslsmith_div_u32(20750u, u_input.d), 57866u, _wgslsmith_div_u32(var_0.b.b, 1u), u_input.d), ~select(vec4<u32>(1u, 54898u, u_input.d, var_0.a), vec4<u32>(0u, var_0.e.b, 76066u, u_input.d), vec4<bool>(var_0.b.a, false, var_0.e.a, false)), 889f <= _wgslsmith_f_op_f32(func_3(Struct_4(var_0.e.c, Struct_1(false, var_0.a, var_0.b.c, false, vec4<i32>(11094i, 2147483647i, u_input.a, 2147483647i))), true, Struct_4(var_0.e.c, Struct_1(true, var_0.e.b, 446f, var_0.d, vec4<i32>(u_input.b.x, -19447i, u_input.e, var_0.b.e.x))))))).e, var_0.c, false, func_5(!var_0.d | all(select(vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(var_0.c.x, false, var_0.d), vec3<bool>(true, true, var_0.d)))).b);
    return -_wgslsmith_add_i32(var_0.e.e.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(-67740i, u_input.a, ~func_1(), abs(_wgslsmith_clamp_i32(-1i, -26074i, u_input.e) << (func_6(Struct_3(vec2<u32>(u_input.d, 1u), false, 4294967295u), Struct_4(-492f, Struct_1(false, 26611u, 1329f, true, vec4<i32>(u_input.e, u_input.b.x, 23927i, u_input.c))), Struct_3(vec2<u32>(u_input.d, u_input.d), true, u_input.d), vec4<u32>(u_input.d, 65648u, 79275u, 0u)).b.b % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-438f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_5(false).b.c))), 1000f, -511f));
    let var_2 = _wgslsmith_div_u32(u_input.d, func_4(u_input.b.yw, Struct_1(select(true, false, true), 1u, 1576f, true, -(u_input.b & vec4<i32>(var_0.x, -2147483647i, u_input.e, u_input.c))), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f - 1326f)))));
    let var_3 = -u_input.a;
    var var_4 = func_6(Struct_3(~select(vec2<u32>(43359u, 0u) | vec2<u32>(4294967295u, u_input.d), ~vec2<u32>(u_input.d, var_2), vec2<bool>(false, true)), false, 5339u), Struct_4(var_1.x, Struct_1(select(true, all(vec2<bool>(false, false)), false), abs(~13850u), _wgslsmith_f_op_f32(func_3(func_5(false), false, Struct_4(1000f, Struct_1(false, 50749u, 651f, true, u_input.b)))), true, u_input.b)), Struct_3(abs(~(~vec2<u32>(var_2, 18359u))), all(vec4<bool>(false, true, true, u_input.d >= u_input.d)), _wgslsmith_add_u32(0u & _wgslsmith_mod_u32(var_2, u_input.d), u_input.d)), vec4<u32>(2231u, _wgslsmith_div_u32(var_2, 32552u), 1u, ~u_input.d) >> (vec4<u32>(1u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1000f, 176f))), u_input.d, u_input.d) % vec4<u32>(32u))).e;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 57043u, var_2, u_input.d), vec4<u32>(var_4.b, 4294967295u, 4294967295u, 1074u)), countOneBits(vec4<u32>(4294967295u, 1u, 1u, 0u))), vec4<u32>(u_input.d, u_input.d, func_4(u_input.b.zy, Struct_1(var_4.a, 0u, var_4.c, var_4.a, vec4<i32>(-1i, -58960i, -3220i, var_3)), vec3<bool>(true, var_4.a, var_4.d), var_4.c), var_4.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1542f + 175f), _wgslsmith_f_op_f32(-var_4.c), _wgslsmith_div_f32(var_4.c, -1000f), _wgslsmith_f_op_f32(var_4.c + var_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -820f)) - vec4<f32>(var_4.c, var_1.x, 707f, var_1.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -1000f, -404f, 1376f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_4.c, -1268f, var_4.c) - vec4<f32>(var_1.x, -399f, -1089f, 1146f)) + vec4<f32>(312f, 920f, -447f, var_1.x)), true))), _wgslsmith_clamp_i32(2147483647i, func_5(any(vec3<bool>(false, var_4.a, true))).b.e.x, u_input.b.x), _wgslsmith_mult_vec4_i32(var_4.e, _wgslsmith_div_vec4_i32(~(~vec4<i32>(0i, var_4.e.x, u_input.a, var_4.e.x)), select(u_input.b, ~var_4.e, var_4.d))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.wyw, var_1.wxx, vec3<bool>(var_4.d, true, false)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, var_4.c, var_1.x) - vec3<f32>(761f, -705f, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(777f, var_1.x, -109f) - var_1.yyx))), var_1.yzx)));
}

