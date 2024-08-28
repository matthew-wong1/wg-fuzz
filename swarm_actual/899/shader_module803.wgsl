struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 476f;

var<private> global1: vec3<f32> = vec3<f32>(289f, 388f, -1501f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global0 = global1.x;
    global1 = vec3<f32>(arg_0.x, arg_1.e.x, -624f);
    var var_0 = -(vec3<i32>(-1i) * -vec3<i32>(0i, 9659i, u_input.a.x)) << (min(_wgslsmith_clamp_vec3_u32(max(abs(vec3<u32>(arg_1.c, 7168u, 0u)), min(vec3<u32>(arg_1.c, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 41342u))), vec3<u32>(firstLeadingBit(arg_1.c), _wgslsmith_div_u32(u_input.c.x, u_input.c.x), 4294967295u), vec3<u32>(arg_1.c, u_input.c.x, 1u)), select(countOneBits(vec3<u32>(arg_1.c, u_input.c.x, u_input.c.x) & vec3<u32>(1u, 4294967295u, 4294967295u)), select(vec3<u32>(1u, arg_1.c, 67646u) ^ vec3<u32>(arg_1.c, u_input.c.x, u_input.c.x), vec3<u32>(11084u, arg_1.c, 77674u), all(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true))), select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.a), vec3<bool>(true, arg_1.a, arg_1.b.x), select(vec3<bool>(arg_1.b.x, arg_1.a, true), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(true, true, arg_1.b.x))))) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2015f, _wgslsmith_f_op_f32(round(708f)), global1.x) * _wgslsmith_f_op_vec3_f32(arg_1.e.zyw * _wgslsmith_f_op_vec3_f32(exp2(arg_0.yzz))));
    var_0 = vec3<i32>(-1i) * -(~(vec3<i32>(arg_1.d, 0i, -1i) >> (firstTrailingBit(vec3<u32>(u_input.c.x, 65171u, u_input.c.x)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f));
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 530f, 1833f) * vec3<f32>(180f, 629f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<f32>(510f, global1.x, global1.x, -1619f), Struct_1(true, vec4<bool>(false, true, true, true), u_input.c.x, 0i, vec4<f32>(global1.x, global1.x, global1.x, global1.x)))), _wgslsmith_f_op_f32(select(global1.x, -1000f, false)), _wgslsmith_f_op_f32(640f - 537f))))));
    var var_0 = Struct_1(all(vec3<bool>(select(all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, false, true)), true), false, arg_1.x == _wgslsmith_clamp_u32(u_input.c.x, 1347u, arg_1.x))), vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(true, true, true, true)), arg_0.x <= -(~53732i)), ~(~arg_1.x), arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-358f)))), global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.e.zyw, vec3<f32>(global1.x, -1222f, _wgslsmith_f_op_f32(-440f * 1065f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.wxy - var_0.e.xyw))));
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~firstLeadingBit(u_input.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-666f, global1.x) * global1.yz) * vec2<f32>(arg_2.e.x, 716f)) - _wgslsmith_f_op_vec2_f32(global1.xy + _wgslsmith_f_op_vec2_f32(arg_0.e.wx * vec2<f32>(arg_2.e.x, arg_2.e.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0.e.zx, arg_0.e.xw), vec2<f32>(global1.x, global1.x))))));
    global0 = -192f;
    global1 = vec3<f32>(arg_0.e.x, arg_2.e.x, -212f);
    global0 = 1000f;
    return Struct_1(arg_2.a, !vec4<bool>(arg_0.b.x, any(select(vec3<bool>(arg_0.b.x, false, false), arg_0.b.zwx, vec3<bool>(arg_0.a, arg_2.b.x, arg_2.a))), all(arg_2.b.zy), true), 40562u, -min(select(select(arg_2.d, 2147483647i, false), arg_0.d, !arg_0.b.x), arg_2.d >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1426f + _wgslsmith_f_op_f32(arg_2.e.x * -936f)), var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)))));
}

fn func_1() -> f32 {
    var var_0 = false;
    let var_1 = func_4(Struct_1(~u_input.c.x <= min(38873u, 0u << (u_input.c.x % 32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)), true), true), ~select(0u, reverseBits(40737u), any(vec3<bool>(false, false, true))), ~func_2(vec4<i32>(u_input.b, 3423i, 1i, -2147483647i), vec4<u32>(u_input.c.x, u_input.c.x, 39780u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1890f, 1098f, global1.x, _wgslsmith_f_op_f32(select(-665f, global1.x, true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 1000f, 1040f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, false, true))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1323f, global1.x, global1.x, global1.x)))))), u_input.a, Struct_1(true, select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), true), true), 4294967295u, select(u_input.a.x, -2147483647i, false & all(vec4<bool>(true, false, true, false))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -604f) + -1873f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -931f))));
    return _wgslsmith_f_op_f32(global1.x - var_1.e.x);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: u32) -> vec4<bool> {
    let var_0 = func_4(func_4(func_4(Struct_1(false, vec4<bool>(false, true, false, true), 4294967295u, max(arg_1, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.x, arg_0, -603f))), ~u_input.a, Struct_1(select(false, false, true), vec4<bool>(true, true, true, true), abs(1u), arg_1, vec4<f32>(1062f, 158f, 1709f, global1.x))), select(vec4<i32>(abs(u_input.b), ~arg_1, 42642i, 22327i), u_input.a, vec4<bool>(true, true, true, true)), func_4(func_4(Struct_1(false, vec4<bool>(false, false, false, false), 4293u, u_input.a.x, vec4<f32>(arg_0, global1.x, arg_0, -647f)), u_input.a, Struct_1(true, vec4<bool>(true, true, false, true), u_input.c.x, u_input.a.x, vec4<f32>(arg_0, -988f, arg_0, global1.x))), vec4<i32>(-16993i, ~arg_1, u_input.a.x, 52791i), func_4(func_4(Struct_1(false, vec4<bool>(true, false, true, true), u_input.c.x, 2147483647i, vec4<f32>(global1.x, arg_0, global1.x, -995f)), vec4<i32>(-45584i, -1i, -2147483647i, arg_1), Struct_1(true, vec4<bool>(true, false, true, false), 3986u, u_input.a.x, vec4<f32>(812f, global1.x, global1.x, -804f))), u_input.a, func_4(Struct_1(false, vec4<bool>(true, false, true, true), arg_2, -32493i, vec4<f32>(arg_0, 1338f, arg_0, global1.x)), u_input.a, Struct_1(false, vec4<bool>(false, true, true, false), u_input.c.x, -12399i, vec4<f32>(arg_0, arg_0, -204f, arg_0)))))), u_input.a, Struct_1(~_wgslsmith_sub_u32(u_input.c.x, arg_2) == ~4294967295u, func_4(func_4(Struct_1(true, vec4<bool>(false, false, true, true), 42140u, u_input.a.x, vec4<f32>(global1.x, 589f, 445f, -1978f)), -vec4<i32>(arg_1, arg_1, arg_1, u_input.a.x), func_4(Struct_1(false, vec4<bool>(true, false, true, true), 2601u, arg_1, vec4<f32>(global1.x, arg_0, -383f, arg_0)), vec4<i32>(u_input.a.x, u_input.b, u_input.b, -42250i), Struct_1(true, vec4<bool>(false, false, false, true), 4294967295u, arg_1, vec4<f32>(-803f, arg_0, arg_0, 479f)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, -2147483647i, 9800i), vec4<i32>(2147483647i, 26158i, u_input.b, u_input.a.x)), Struct_1(true, func_4(Struct_1(false, vec4<bool>(true, false, true, true), arg_2, -2147483647i, vec4<f32>(arg_0, arg_0, -107f, global1.x)), u_input.a, Struct_1(true, vec4<bool>(true, true, false, false), 0u, u_input.b, vec4<f32>(arg_0, 972f, global1.x, arg_0))).b, ~u_input.c.x, 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, 351f, global1.x, global1.x) * vec4<f32>(arg_0, 730f, -1000f, global1.x)))).b, arg_2, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.wx, u_input.a.yw), vec2<i32>(-1i, 38240i)), -u_input.a.wx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -626f, -1030f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1605f, 946f, 547f, global1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(select(-2243f, 114f, false)), _wgslsmith_f_op_f32(min(global1.x, 1063f)), _wgslsmith_div_f32(990f, 892f)))));
    var var_1 = (~vec2<u32>(arg_2 ^ var_0.c, abs(8233u)) << (abs(u_input.c) % vec2<u32>(32u))) << (vec2<u32>(max(countOneBits(65424u), arg_2), arg_2) % vec2<u32>(32u));
    var_1 = vec2<u32>(arg_2, ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.c.x, 19013u), 0u));
    var var_2 = var_0;
    let var_3 = var_0;
    return !vec4<bool>(!(var_2.d <= 0i) & var_3.a, any(vec4<bool>(all(vec4<bool>(true, var_0.b.x, var_3.b.x, true)), var_3.a, func_4(Struct_1(false, vec4<bool>(var_2.b.x, var_0.b.x, var_2.b.x, true), 1u, var_0.d, var_3.e), u_input.a, var_3).b.x, !var_3.a)), var_3.b.x, all(select(func_4(Struct_1(var_0.a, var_0.b, 0u, 2271i, vec4<f32>(var_2.e.x, 128f, arg_0, var_3.e.x)), u_input.a, var_3).b, !vec4<bool>(false, var_3.b.x, false, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(11727u < reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(42812u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 34109u, 61167u)), ~vec4<u32>(84669u, 10924u, u_input.c.x, u_input.c.x))), select(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), u_input.a.x, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(4294967295u, u_input.c.x))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(func_5(_wgslsmith_f_op_f32(-global1.x), ~(-1i), ~5587u), vec4<bool>(all(vec2<bool>(false, false)), true, select(false, true, true), any(vec2<bool>(true, false))), true)), ~4294967295u, -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-756f, global1.x) + _wgslsmith_f_op_f32(func_3(vec4<f32>(global1.x, global1.x, global1.x, global1.x), Struct_1(false, vec4<bool>(true, true, true, false), u_input.c.x, 0i, vec4<f32>(-609f, global1.x, global1.x, global1.x))))) + -1480f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, -556f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -440f) * 1637f) - global1.x)));
    global0 = _wgslsmith_f_op_f32(ceil(global1.x));
    global1 = var_0.e.zyx;
    var_0 = func_4(func_4(func_4(func_4(func_4(Struct_1(true, vec4<bool>(var_0.a, var_0.a, true, true), var_0.c, 53354i, vec4<f32>(var_0.e.x, var_0.e.x, 1000f, var_0.e.x)), u_input.a, Struct_1(var_0.a, var_0.b, u_input.c.x, -21758i, vec4<f32>(866f, global1.x, global1.x, -787f))), _wgslsmith_sub_vec4_i32(vec4<i32>(22013i, 42573i, var_0.d, var_0.d), vec4<i32>(24640i, 6716i, u_input.a.x, var_0.d)), Struct_1(true, vec4<bool>(var_0.b.x, false, true, var_0.b.x), var_0.c, -27092i, vec4<f32>(var_0.e.x, global1.x, -822f, var_0.e.x))), u_input.a, func_4(func_4(Struct_1(var_0.a, vec4<bool>(true, var_0.b.x, true, var_0.b.x), 1u, u_input.a.x, vec4<f32>(var_0.e.x, global1.x, -135f, global1.x)), vec4<i32>(var_0.d, -54055i, 169i, 13970i), Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, false, true), 0u, 1i, vec4<f32>(var_0.e.x, 412f, -2155f, global1.x))), u_input.a, Struct_1(false, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), 48203u, 6336i, vec4<f32>(2760f, var_0.e.x, global1.x, 1000f)))), vec4<i32>(abs(min(-12576i, -2147483647i)), 0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 25153i, u_input.b), u_input.a.www) & 1i), func_4(func_4(Struct_1(var_0.a, var_0.b, var_0.c, 0i, vec4<f32>(var_0.e.x, -806f, -1629f, var_0.e.x)), u_input.a, func_4(Struct_1(var_0.a, var_0.b, 15151u, u_input.a.x, var_0.e), u_input.a, Struct_1(true, var_0.b, 18734u, -2147483647i, vec4<f32>(397f, 1621f, var_0.e.x, 1091f)))), vec4<i32>(22709i, 1i, ~var_0.d, _wgslsmith_clamp_i32(u_input.a.x, -2977i, -2147483647i)), func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.a, false, var_0.b.x), u_input.c.x, -2147483647i, vec4<f32>(global1.x, 777f, var_0.e.x, global1.x)), u_input.a | u_input.a, Struct_1(var_0.b.x, vec4<bool>(false, var_0.a, true, false), u_input.c.x, u_input.a.x, vec4<f32>(global1.x, var_0.e.x, global1.x, var_0.e.x))))), vec4<i32>(var_0.d, -2147483647i, var_0.d, -17442i), func_4(Struct_1((var_0.e.x == -1349f) & all(var_0.b), select(func_5(1121f, var_0.d, var_0.c), !var_0.b, vec4<bool>(var_0.a, true, true, false)), ~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16277u, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 0u)) % 32u), vec4<f32>(var_0.e.x, 160f, 1637f, _wgslsmith_f_op_f32(-global1.x))), vec4<i32>(-var_0.d, u_input.a.x, u_input.b, ~(-17328i)), Struct_1(!(var_0.a || var_0.a), var_0.b, select(1u, select(4294967295u, var_0.c, false), !var_0.a), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d, var_0.d, 10895i, -2147483647i), u_input.a), ~vec4<u32>(u_input.c.x, 48501u, var_0.c, var_0.c)), _wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(global1.x, global1.x, var_0.e.x, global1.x)))));
    global1 = var_0.e.wzz;
    var var_1 = u_input.c;
    var_0 = func_4(func_4(func_4(func_4(func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, true, true), 3450u, var_0.d, vec4<f32>(var_0.e.x, var_0.e.x, 1000f, global1.x)), u_input.a, Struct_1(false, var_0.b, var_1.x, 29414i, vec4<f32>(376f, global1.x, global1.x, global1.x))), u_input.a, Struct_1(var_0.b.x, vec4<bool>(false, false, true, true), u_input.c.x, var_0.d, var_0.e)), ~_wgslsmith_div_vec4_i32(u_input.a, u_input.a), Struct_1(global1.x == global1.x, vec4<bool>(false, var_0.a, false, var_0.b.x), 1u, abs(-1i), _wgslsmith_f_op_vec4_f32(sign(var_0.e)))), firstTrailingBit(~(-u_input.a)), func_4(Struct_1(var_0.b.x, func_4(Struct_1(var_0.b.x, var_0.b, var_1.x, u_input.a.x, var_0.e), u_input.a, Struct_1(var_0.a, var_0.b, var_1.x, u_input.b, var_0.e)).b, _wgslsmith_sub_u32(0u, var_1.x), ~1i, var_0.e), vec4<i32>(~2147483647i, 12133i, firstTrailingBit(u_input.b), -12019i), Struct_1(true, var_0.b, var_0.c, ~u_input.a.x, _wgslsmith_f_op_vec4_f32(round(var_0.e))))), u_input.a, Struct_1(!var_0.a, func_4(Struct_1(all(var_0.b.yw), func_4(Struct_1(false, var_0.b, 71053u, u_input.b, var_0.e), vec4<i32>(u_input.a.x, u_input.b, var_0.d, 0i), Struct_1(var_0.a, var_0.b, var_0.c, 14390i, var_0.e)).b, 7037u, _wgslsmith_div_i32(var_0.d, 2147483647i), var_0.e), _wgslsmith_add_vec4_i32(u_input.a, reverseBits(vec4<i32>(u_input.b, -2147483647i, 30417i, 2147483647i))), func_4(Struct_1(var_0.b.x, var_0.b, var_1.x, -58705i, vec4<f32>(-275f, var_0.e.x, -1000f, 913f)), -vec4<i32>(-1i, var_0.d, 19826i, 12933i), func_4(Struct_1(var_0.b.x, var_0.b, 4294967295u, var_0.d, var_0.e), u_input.a, Struct_1(var_0.b.x, var_0.b, 77537u, 1i, vec4<f32>(1657f, var_0.e.x, global1.x, -834f))))).b, _wgslsmith_mod_u32(var_1.x, ~var_1.x | 0u), ~var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.e)));
    let var_2 = false;
    var var_3 = func_4(func_4(Struct_1(var_0.b.x, vec4<bool>(var_0.b.x, var_0.b.x, var_2, false), 39109u ^ min(var_0.c, 65946u), _wgslsmith_mod_i32(6426i, var_0.d | 2147483647i), _wgslsmith_f_op_vec4_f32(round(var_0.e))), vec4<i32>(u_input.b | ~(-2147483647i), _wgslsmith_div_i32(~var_0.d, -2147483647i), _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 1i >> (var_1.x % 32u)), 43131i), Struct_1(false, vec4<bool>(true, func_4(Struct_1(true, var_0.b, 136976u, -493i, vec4<f32>(971f, global1.x, 170f, 352f)), vec4<i32>(1i, var_0.d, u_input.b, var_0.d), Struct_1(true, var_0.b, 24639u, var_0.d, vec4<f32>(var_0.e.x, global1.x, global1.x, 2540f))).a, true, false), 0u, 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.e))))), select(u_input.a, vec4<i32>(4420i, u_input.a.x, 1i, _wgslsmith_dot_vec3_i32(u_input.a.zwy, vec3<i32>(1i, u_input.b, u_input.b))), vec4<bool>(global1.x == 136f, all(var_0.b.wx), true, !var_0.a)) << (~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 86098u, 16093u, 0u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 25365u))) % vec4<u32>(32u)), Struct_1(!(global1.x > 1456f), vec4<bool>(select(!var_0.b.x, any(var_0.b), !var_2), var_2, true, !(u_input.a.x > 43466i)), _wgslsmith_div_u32(~4294967295u, u_input.c.x) & 68124u, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-var_0.d, var_0.d, _wgslsmith_mult_i32(u_input.a.x, u_input.b)), var_0.d), var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_3.e.x, _wgslsmith_f_op_f32(-194f - func_4(Struct_1(true, vec4<bool>(false, var_0.a, var_0.a, var_0.b.x), var_1.x, 2147483647i, vec4<f32>(774f, 834f, var_0.e.x, var_0.e.x)), vec4<i32>(u_input.a.x, var_3.d, var_3.d, var_3.d), Struct_1(false, var_3.b, 1u, var_0.d, vec4<f32>(var_0.e.x, var_3.e.x, var_0.e.x, var_0.e.x))).e.x))), reverseBits(~select(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_3.c, 1u), vec3<u32>(var_1.x, u_input.c.x, var_0.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, 8084u), vec3<u32>(104443u, var_3.c, var_3.c)), true)));
}

