struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<f32> {
    global0 = vec4<bool>(arg_2.b.x, !(arg_0 >= arg_0), !(!(!global1.x)), all(vec2<bool>(true, all(!vec4<bool>(false, true, false, arg_2.b.x)))));
    global1 = vec3<bool>(!global1.x, true, true);
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 471f, -360f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1091f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(-711f + 1000f), -104f, arg_0)), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_2.a.x), reverseBits(vec2<u32>(u_input.a, arg_2.a.x))), !select(global0.zwx, arg_2.b, vec3<bool>(arg_2.b.x, true, true)), 1i, arg_1.zy)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(704f, arg_0, -917f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, arg_0, arg_0) * vec3<f32>(625f, arg_0, 184f))))), arg_2), 7360i);
    global0 = select(vec4<bool>(any(!arg_2.b.zz), global0.x, any(select(global1.xx, global0.xy, !var_0.b.b.b.xy)), !(_wgslsmith_f_op_f32(-961f + 1000f) > arg_0)), vec4<bool>(true, true, all(arg_2.b), false), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-2263f)), _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x * arg_0)), var_0.b.a.x)), _wgslsmith_f_op_f32(sign(-954f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.b.a.x, 134f, -984f)) - vec4<f32>(var_0.a.a.x, var_0.b.a.x, var_0.a.a.x, 2517f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(arg_0, -514f)), _wgslsmith_f_op_f32(var_0.a.a.x * arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1209f, -1011f, arg_0, -399f)))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-781f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-935f, arg_0, false)))), 0i < u_input.c.x))), _wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f + -863f) - 503f))), 140f);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(!global0.xx, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), 519f, _wgslsmith_f_op_f32(trunc(-1291f)), _wgslsmith_f_op_f32(ceil(-318f))), global1.x, ~(~_wgslsmith_dot_vec3_u32(u_input.b.zwz, _wgslsmith_clamp_vec3_u32(u_input.b.xwy, vec3<u32>(u_input.a, 1u, 36936u), u_input.b.xxx))));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(var_0.b.yxz - _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(var_0.b.x * -418f), u_input.c, Struct_1(u_input.b.xw, global0.wxw, u_input.c.x, u_input.c.yx)))), Struct_1(vec2<u32>(1u, u_input.a), vec3<bool>(true, true, var_0.c), 27441i, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), vec2<i32>(0i, -2147483647i)))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b.xzw, _wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, 647f, 575f) - vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))) - var_0.b.zxw), Struct_1(abs(~vec2<u32>(u_input.a, 39101u)), global0.xyx, 2147483647i, vec2<i32>(u_input.c.x << (var_0.d % 32u), ~u_input.c.x))), u_input.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-335f, -1585f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * var_0.b.x)))));
    let var_3 = _wgslsmith_sub_i32(-var_1.a.b.c, max(_wgslsmith_clamp_i32(-28687i, var_1.a.b.c, u_input.c.x), _wgslsmith_clamp_i32(var_1.b.b.d.x, var_1.a.b.d.x, 0i)) & 937i) < _wgslsmith_add_i32(~(~(i32(-1i) * -102131i)), u_input.c.x);
    global1 = global0.wxx;
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = global1.x;
    let var_1 = Struct_1(abs(vec2<u32>(~(~4294967295u), _wgslsmith_sub_u32(min(0u, 16365u), 0u))), select(select(!vec3<bool>(true, arg_0.b.b.x, false), vec3<bool>(!global1.x, any(vec2<bool>(global0.x, true)), arg_1.c & global0.x), all(select(global1.yx, vec2<bool>(global0.x, global1.x), arg_0.b.b.x))), vec3<bool>(!(!arg_0.b.b.x), arg_0.b.a.x != u_input.a, global1.x), arg_0.b.b), -1i | reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.b.d.x, 2147483647i), u_input.c.x)), -arg_2.yx);
    return func_2().b;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = false & arg_1;
    var var_1 = vec2<bool>(!(!global1.x), u_input.b.x == _wgslsmith_mod_u32(select(4294967295u, _wgslsmith_add_u32(u_input.a, arg_2.a.x), all(vec4<bool>(true, false, false, global0.x))), arg_2.a.x));
    var_1 = vec2<bool>(global1.x, true);
    var var_2 = Struct_2(vec2<bool>(!(!all(vec2<bool>(var_1.x, true))), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)), _wgslsmith_f_op_f32(select(arg_3.x, -2433f, !all(vec4<bool>(arg_1, true, false, global1.x)))), 1610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(819f, arg_3.x))))), false, 1u);
    var var_3 = _wgslsmith_add_i32(-arg_2.d.x, _wgslsmith_mult_i32(arg_2.c, 2147483647i));
    return func_2();
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = u_input.a;
    let var_1 = Struct_4(func_5(1u, false, func_4(func_2(), Struct_2(global0.zx, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, 1000f), vec4<f32>(arg_0, 152f, arg_0, arg_0))), all(global0.wz), u_input.b.x), ~(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, arg_0, 1971f))))), func_5(reverseBits(~abs(arg_1.x)), (arg_0 == _wgslsmith_f_op_f32(arg_0 + -596f)) & (all(vec4<bool>(false, false, global0.x, false)) && any(global0.xzw)), func_5(0u, true, func_4(func_2(), Struct_2(global0.yw, vec4<f32>(812f, -710f, 162f, arg_0), global0.x, arg_1.x), countOneBits(vec4<i32>(66152i, -28879i, 25169i, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -771f, arg_0, arg_0) - vec4<f32>(arg_0, arg_0, -261f, -165f)))).b, _wgslsmith_div_vec4_f32(vec4<f32>(-574f, arg_0, -1671f, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 122f, arg_0), vec4<f32>(arg_0, -651f, -973f, arg_0))))), -2147483647i);
    var var_2 = u_input.c.x > _wgslsmith_mult_i32(var_1.c, ~(u_input.c.x & -38559i));
    let var_3 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(433f, var_1.a.a.x));
    let var_4 = func_2().b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a.a.x)), _wgslsmith_div_f32(-1306f, -2211f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), func_2().a.x)))) - -514f);
}

fn func_6(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(false, global0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1608f, arg_3.x, arg_1.x, -1896f) + vec4<f32>(arg_1.x, 135f, arg_3.x, arg_3.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 1214f, arg_3.x, arg_1.x), vec4<f32>(1568f, -2027f, arg_3.x, arg_3.x))), vec4<f32>(arg_3.x, _wgslsmith_div_f32(arg_3.x, arg_3.x), _wgslsmith_f_op_vec3_f32(func_3(arg_3.x, vec3<i32>(-1i, 0i, 1i), Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec3<bool>(false, false, true), -2147483647i, vec2<i32>(72070i, -2147483647i)))).x, _wgslsmith_f_op_f32(f32(-1f) * -480f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, -827f, 955f, arg_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, -1122f, -460f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-206f, arg_3.x, arg_3.x, -1056f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1169f, 1158f, 1242f), vec4<f32>(-1154f, 561f, 160f, arg_3.x)))), vec4<bool>(global1.x, false, true, func_2().b.b.x))), any(vec4<bool>(global0.x, _wgslsmith_div_f32(-416f, arg_1.x) != 414f, global0.x, any(select(vec4<bool>(false, global0.x, global1.x, false), vec4<bool>(arg_0, global0.x, global1.x, true), false)))), reverseBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), u_input.a)) & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(min(u_input.a, 0u), u_input.a >> (0u % 32u), u_input.a), _wgslsmith_div_u32(u_input.b.x, 0u) << (func_5(0u, arg_0, Struct_1(u_input.b.yy, global0.www, 1i, vec2<i32>(u_input.c.x, u_input.c.x)), vec4<f32>(arg_1.x, -343f, arg_3.x, -522f)).b.a.x % 32u)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.yxw * arg_1)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.zyx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1409f, arg_1.x, arg_1.x) + vec3<f32>(764f, 1000f, 617f))))), func_4(Struct_3(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(arg_1.x, -1357f), vec3<i32>(-1i, 39058i, arg_2.x), func_4(Struct_3(arg_1, Struct_1(u_input.b.wx, vec3<bool>(true, false, true), arg_2.x, u_input.c.yy)), Struct_2(vec2<bool>(arg_0, global0.x), vec4<f32>(var_0.b.x, arg_3.x, arg_3.x, arg_1.x), false, 42753u), arg_2))), func_2().b), Struct_2(global0.yx, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1290f), _wgslsmith_f_op_f32(min(arg_1.x, arg_3.x)), 858f, _wgslsmith_f_op_f32(-713f * arg_1.x)), _wgslsmith_f_op_f32(var_0.b.x + -328f) >= -1574f, ~u_input.a | _wgslsmith_clamp_u32(1u, u_input.b.x, var_0.d)), arg_2 | _wgslsmith_clamp_vec4_i32(arg_2, abs(arg_2), arg_2)));
    var_1 = func_2();
    let var_2 = -14725i;
    var var_3 = ~(~(~u_input.b.x));
    return Struct_1(u_input.b.yw, select(vec3<bool>(-1631f != _wgslsmith_f_op_f32(trunc(arg_1.x)), func_4(Struct_3(vec3<f32>(var_0.b.x, arg_3.x, var_1.a.x), var_1.b), Struct_2(var_0.a, vec4<f32>(arg_3.x, -1386f, 1564f, 1302f), true, var_1.b.a.x), -vec4<i32>(2147483647i, var_2, 32382i, var_2)).b.x, !(-39373i < arg_2.x)), func_4(func_2(), Struct_2(vec2<bool>(true, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_0.b.x, 1000f, -1718f)), true, 61652u), firstLeadingBit(arg_2 >> (vec4<u32>(41901u, var_1.b.a.x, var_1.b.a.x, 32970u) % vec4<u32>(32u)))).b, true), abs(var_2 << (abs(u_input.a << (1u % 32u)) % 32u)), var_1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(vec3<f32>(2135f, 544f, _wgslsmith_f_op_f32(round(-1249f))), func_6(global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, 352f, 967f)) - vec3<f32>(1000f, 1000f, 531f)), vec4<i32>(~(-2147483647i), u_input.c.x, _wgslsmith_div_i32(12327i, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -9321i), vec4<i32>(46901i, 529i, u_input.c.x, u_input.c.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(func_1(343f, u_input.b.zw)), -1932f))), func_5(func_6(func_5(_wgslsmith_mod_u32(u_input.a, 40022u), all(global1.yz), func_6(global1.x, vec3<f32>(-1386f, 1141f, -287f), vec4<i32>(u_input.c.x, u_input.c.x, 0i, -1i), vec3<f32>(-264f, 1628f, -369f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-746f, 625f, 1130f, 684f), vec4<f32>(-1000f, 892f, 107f, -1000f), global1.x))).b.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-938f, vec3<i32>(u_input.c.x, u_input.c.x, 0i), Struct_1(u_input.b.xw, global0.xwz, -15031i, u_input.c.xy))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, 329f, -1112f) + vec3<f32>(-1874f, 329f, 1008f))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -27653i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.c.x), vec4<i32>(-21688i, u_input.c.x, u_input.c.x, -13880i))), func_2().a).a.x, global0.x, func_5(func_5(~78347u, true, Struct_1(u_input.b.yz, vec3<bool>(false, true, global0.x), u_input.c.x, u_input.c.xz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1838f, 1000f, -2140f, -1139f))).b.a.x, global1.x, func_5(101376u, 0u > u_input.a, func_4(Struct_3(vec3<f32>(-1000f, 718f, 1512f), Struct_1(u_input.b.zy, global0.wzw, -2147483647i, u_input.c.zy)), Struct_2(global0.yy, vec4<f32>(621f, 494f, 1041f, -1084f), false, u_input.b.x), vec4<i32>(u_input.c.x, -19477i, u_input.c.x, 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1367f, 1079f, -769f, 1000f) * vec4<f32>(1119f, -903f, 1551f, 1579f))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(108f, 1496f, 493f, -353f))).b, vec4<f32>(_wgslsmith_div_f32(-1214f, _wgslsmith_f_op_f32(max(617f, -703f))), -1073f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1162f + 1320f)), 957f)), u_input.c.x);
    var var_1 = 40840u;
    var var_2 = func_5(0u, true, var_0.a.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) * 622f), _wgslsmith_f_op_f32(step(var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1572f, 648f) * var_0.b.a.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a.x, var_0.b.a.x) + _wgslsmith_f_op_f32(-var_0.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(870f * _wgslsmith_f_op_f32(select(1000f, 1004f, global1.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-465f * 1415f), _wgslsmith_f_op_f32(-var_0.b.a.x))))));
    var var_3 = !var_2.b.b.x;
    var_3 = !any(vec2<bool>(false && (global1.x || true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~98757u) << (var_2.b.a.x % 32u), 4294967295u, ~countOneBits(var_2.b.a.x), 0u), _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_add_i32(-countOneBits(var_0.a.b.d.x), countOneBits(max(var_0.c | u_input.c.x, 1i))), u_input.b.yzw, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.b.a, u_input.b.yz), ~(~11930u), _wgslsmith_mod_u32(1u, 36652u), u_input.a), vec4<u32>(~(~1u), 76125u, ~_wgslsmith_clamp_u32(var_2.b.a.x, 72884u, 0u), func_6(!var_2.b.b.x, vec3<f32>(var_0.a.a.x, var_0.b.a.x, -624f), ~vec4<i32>(var_0.c, -2147483647i, 1i, 1i), var_2.a).a.x)));
}

