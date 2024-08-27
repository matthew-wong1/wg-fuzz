struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: vec3<i32> = vec3<i32>(1i, -12017i, -19118i);

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    global1 = vec3<f32>(393f, _wgslsmith_f_op_f32(sign(2735f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), 325f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -451f))), -1328f))));
    let var_0 = true;
    global0 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.c, 36427i, global0.x), vec3<i32>(-(abs(global0.x) ^ global0.x), global0.x, ~(global0.x ^ u_input.c)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, 725f)) * _wgslsmith_f_op_f32(global1.x + -864f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(813f, global1.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-708f * 618f), _wgslsmith_f_op_f32(sign(-1826f)))))), _wgslsmith_f_op_f32(-global1.x));
    let var_1 = ~vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -76739i, global0.x) >> (u_input.d % vec3<u32>(32u)), ~vec3<i32>(global0.x, -1i, global0.x)), ~22657i);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_1), 1122f, global1.x));
    let var_1 = arg_0;
    let var_2 = -(~(-u_input.b));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 - 1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)))), global1.x);
    var var_3 = Struct_3(u_input.a.x, _wgslsmith_clamp_vec2_i32(select(abs(-vec2<i32>(u_input.b.x, -2147483647i)), select(u_input.b | u_input.b, ~vec2<i32>(global0.x, -2147483647i), select(vec2<bool>(var_1, true), vec2<bool>(var_1, false), vec2<bool>(var_1, arg_0))), any(!vec2<bool>(true, arg_0))), ~_wgslsmith_sub_vec2_i32(var_2, vec2<i32>(var_2.x, 2147483647i)), ~u_input.b), Struct_2(Struct_1(vec4<bool>(true, arg_0, all(vec2<bool>(var_1, true)), arg_0), any(select(vec4<bool>(var_1, var_1, false, arg_0), vec4<bool>(true, true, true, arg_0), false)), select(select(vec4<bool>(arg_0, var_1, arg_0, var_1), vec4<bool>(true, false, var_1, var_1), arg_0), vec4<bool>(true, true, var_1, arg_0), true | var_1), vec3<bool>(select(arg_0, true, arg_0), false, select(false, var_1, arg_0)), abs(~u_input.d)), Struct_1(!vec4<bool>(true, false, var_1, true), false, !vec4<bool>(false, true, false, arg_0), select(vec3<bool>(true, true, false), vec3<bool>(arg_0, false, true), !vec3<bool>(false, var_1, false)), _wgslsmith_sub_vec3_u32(abs(u_input.d), vec3<u32>(1u, 1u, u_input.a.x))), Struct_1(vec4<bool>(true, var_1 || true, true, var_1), false != (false | arg_0), select(select(vec4<bool>(true, true, arg_0, var_1), vec4<bool>(arg_0, false, true, true), var_1), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, arg_0, var_1), vec4<bool>(true, arg_0, true, true), false)), !(!vec3<bool>(var_1, arg_0, var_1)), u_input.d), 12911u, _wgslsmith_f_op_f32(floor(-129f))), vec4<bool>(var_1, any(select(!vec2<bool>(false, var_1), !vec2<bool>(var_1, var_1), vec2<bool>(var_1, true))), reverseBits(0u) > ~u_input.d.x, false), Struct_2(Struct_1(select(!vec4<bool>(true, arg_0, true, true), !vec4<bool>(arg_0, var_1, false, var_1), !vec4<bool>(var_1, arg_0, arg_0, arg_0)), any(vec2<bool>(arg_0, var_1)) && !arg_0, !vec4<bool>(arg_0, arg_0, false, var_1), select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, false), any(vec2<bool>(false, true))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 21117u, 123636u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), Struct_1(!(!vec4<bool>(false, false, true, arg_0)), true, !select(vec4<bool>(arg_0, false, var_1, false), vec4<bool>(false, arg_0, arg_0, arg_0), false), select(vec3<bool>(true, true, var_1), vec3<bool>(false, arg_0, arg_0), false), u_input.d), Struct_1(select(vec4<bool>(false, arg_0, var_1, arg_0), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(var_1, arg_0, true, var_1), vec4<bool>(arg_0, true, arg_0, false)), select(vec4<bool>(var_1, false, false, true), vec4<bool>(arg_0, arg_0, var_1, false), vec4<bool>(arg_0, true, var_1, arg_0))), true, vec4<bool>(true, arg_0, any(vec3<bool>(var_1, true, var_1)), false), vec3<bool>(false, !var_1, true), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 15615u, u_input.d.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d.x, 4294967295u)), u_input.d.x)), u_input.a.x, 2472f));
    return Struct_4(Struct_3(_wgslsmith_mod_u32(abs(~var_3.c.b.e.x), u_input.d.x), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, u_input.b.x), -global0.x), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_2.x, u_input.c, 1i), vec4<i32>(global0.x, u_input.c, -2147483647i, -1i)))), var_3.e, !select(var_3.c.b.a, var_3.c.a.c, -880f < var_0.x), var_3.c), global1.x, -26889i | u_input.c, firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, var_3.c.d, u_input.d.x)), ~vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.d.x)), ~vec4<u32>(var_3.e.a.e.x, 0u, 1u, var_3.a) >> (vec4<u32>(4294967295u, var_3.e.c.e.x, var_3.e.b.e.x, u_input.d.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global1.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xy) * global1.xx), !any(arg_0.a.c.c.c))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c.e, -224f)), global1.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, 116f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1978f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-278f, global1.x)))))))));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.yx * _wgslsmith_f_op_vec2_f32(func_4(func_2(true, -624f), 84549u, vec2<bool>(true, true), func_2(true, -1800f).c)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, -640f)), _wgslsmith_f_op_f32(ceil(393f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yx) - global1.zx)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(333f, global1.x) - -1692f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), 160f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-1778f + var_0.x));
    var var_1 = 401f;
    var var_2 = -_wgslsmith_dot_vec3_i32(~vec3<i32>(firstLeadingBit(u_input.c), abs(u_input.b.x), u_input.c), reverseBits(firstLeadingBit(vec3<i32>(-2147483647i, u_input.b.x, -24452i))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1579f, 548f) * vec3<f32>(1030f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(401f, 987f, global1.x) - vec3<f32>(global1.x, -333f, var_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1679f, -546f, 1092f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1154f) - vec3<f32>(global1.x, 278f, 532f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, 335f, -566f)))))) - vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -437f))), global1.x, 1192f));
    return global0.x;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2660f, global1.x, -1425f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1047f, -223f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.c.e, -779f, 673f))), _wgslsmith_div_vec3_f32(vec3<f32>(-321f, 611f, -1000f), vec3<f32>(arg_1.c.e, 1679f, 350f)), arg_1.c.b.c.yzw)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 716f, arg_3.e.e) * vec3<f32>(-393f, arg_1.c.e, -526f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -388f, -343f)), vec3<bool>(true, true, true))))));
    global0 = ~vec3<i32>(_wgslsmith_add_i32(countOneBits(2147483647i), _wgslsmith_div_i32(14194i, 2147483647i)), u_input.b.x, 1i) >> (arg_1.e.c.e % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, -1000f, arg_3.c.e));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(400f, -1138f))), 280f), _wgslsmith_f_op_f32(arg_1.c.e - _wgslsmith_f_op_f32(step(-686f, _wgslsmith_f_op_f32(f32(-1f) * -921f)))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.e)))), _wgslsmith_f_op_f32(f32(-1f) * -533f)));
    let var_1 = func_2(true, 221f).a;
    return arg_1.c;
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> Struct_3 {
    global0 = ~vec3<i32>(~u_input.b.x, reverseBits(_wgslsmith_mod_i32(-1i, global0.x)), -32033i);
    let var_0 = Struct_1(arg_0.a.a, arg_0.a.d.x & (81033u <= (4294967295u << (~u_input.d.x % 32u))), !vec4<bool>(true, arg_2, true | arg_2, true), func_2(!all(vec4<bool>(false, true, arg_0.c.d.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(round(global1.x))))).a.c.b.c.wxx, vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 0u, arg_1), vec4<u32>(0u, 1288u, arg_1, u_input.a.x)) ^ 3825u, arg_0.d));
    var var_1 = abs(_wgslsmith_mult_u32(5443u, arg_0.c.e.x));
    let var_2 = arg_0;
    global1 = _wgslsmith_f_op_vec3_f32(sign(arg_3));
    return func_2(true, 665f).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_6(func_5(func_1() & _wgslsmith_sub_i32(-12015i, 65415i), func_2(global1.x != 642f, _wgslsmith_f_op_f32(260f - global1.x)).a, Struct_1(func_2(false, global1.x).a.c.a.a, any(vec2<bool>(false, false)), func_2(false, -558f).a.c.a.a, vec3<bool>(false, false, true), vec3<u32>(u_input.a.x, 94059u, 32506u) | vec3<u32>(80362u, 75306u, 30945u)), Struct_3(1u, abs(vec2<i32>(20617i, 35141i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true, vec4<bool>(false, true, false, false), vec3<bool>(false, false, false), u_input.d), Struct_1(vec4<bool>(true, true, true, true), true, vec4<bool>(true, false, true, true), vec3<bool>(false, false, false), vec3<u32>(u_input.d.x, 1u, 5231u)), Struct_1(vec4<bool>(false, false, true, false), true, vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), u_input.d), u_input.a.x, global1.x), vec4<bool>(true, true, true, true), func_2(false, -1000f).a.c)), u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-699f * -138f))), 1075f, global0.x, vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.d.x, u_input.a.x))), abs(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.d.x, 12199u), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x))), u_input.a.x));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(956f, -2752f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2265f * var_0.b)), any(var_0.a.c.c.a) || select(false, var_0.a.c.c.b, true))), func_6(func_2(true, _wgslsmith_f_op_f32(-global1.x)).a.e, _wgslsmith_dot_vec4_u32(firstLeadingBit(var_0.d), var_0.d), false, vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(var_0.b, global1.x)), _wgslsmith_f_op_f32(-var_0.a.c.e))).c.e, global1.x));
    var var_1 = var_0.a;
    let var_2 = ~_wgslsmith_sub_i32(func_2(any(var_1.e.c.c.xzx), -1000f).a.b.x, var_0.a.b.x);
    var var_3 = var_1.e.c.c.x;
    let var_4 = 31682u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~firstTrailingBit(var_1.c.b.e), vec3<u32>(max(var_4, var_4), var_4, countOneBits(_wgslsmith_div_u32(59576u, var_0.d.x)))));
}

