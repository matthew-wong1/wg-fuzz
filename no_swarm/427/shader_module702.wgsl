struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 447f;

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec3<i32>(2147483647i, -32597i, 26380i)), Struct_4(vec3<i32>(i32(-2147483648), 32083i, 26187i)), Struct_4(vec3<i32>(7545i, 20939i, 521i)), Struct_4(vec3<i32>(2147483647i, 1i, -28045i)), Struct_4(vec3<i32>(1i, 2025i, 2147483647i)), Struct_4(vec3<i32>(1i, i32(-2147483648), -29384i)), Struct_4(vec3<i32>(-21130i, -16880i, -1i)), Struct_4(vec3<i32>(2147483647i, -14104i, -33652i)), Struct_4(vec3<i32>(2147483647i, -1i, 0i)), Struct_4(vec3<i32>(35204i, -1i, 3342i)), Struct_4(vec3<i32>(i32(-2147483648), -5723i, 1i)), Struct_4(vec3<i32>(1i, 0i, -41887i)), Struct_4(vec3<i32>(1i, -1i, -1i)), Struct_4(vec3<i32>(1i, 0i, i32(-2147483648))), Struct_4(vec3<i32>(1i, 1i, -2295i)), Struct_4(vec3<i32>(-39960i, 0i, -54850i)), Struct_4(vec3<i32>(2147483647i, 0i, 1i)), Struct_4(vec3<i32>(0i, 0i, -13621i)), Struct_4(vec3<i32>(58393i, -31474i, 1i)));

var<private> global3: Struct_3;

var<private> global4: f32 = 1953f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    var var_0 = vec2<bool>(true, !((countOneBits(global0.c.b) >> (11677u % 32u)) <= global3.a.c.b));
    var var_1 = Struct_3(global3.a);
    let var_2 = Struct_5(global0.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2170f, 1861f), _wgslsmith_div_f32(-537f, 762f), _wgslsmith_f_op_f32(max(-224f, -552f)), _wgslsmith_f_op_f32(f32(-1f) * -104f))))), ~_wgslsmith_add_u32(arg_0, firstLeadingBit(global0.c.b)), min(~(-(vec2<i32>(1i, arg_1.c.d) ^ vec2<i32>(3671i, var_1.a.c.d))), select(~_wgslsmith_mod_vec2_i32(vec2<i32>(-16551i, global3.a.a.d), vec2<i32>(global0.c.d, -20326i)), ~(-vec2<i32>(global0.a.d, var_1.a.c.d)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) * _wgslsmith_f_op_f32(f32(-1f) * -574f))) - _wgslsmith_f_op_f32(1f * 1878f)));
    var_1 = Struct_3(Struct_2(var_1.a.c, select(!select(vec3<bool>(global0.a.e.x, false, true), vec3<bool>(true, arg_1.a.a.x, global0.c.c), global0.b), vec3<bool>(!var_1.a.a.a.x, true, var_1.a.a.c || global3.a.c.e.x), any(vec3<bool>(true, arg_1.c.a.x, false))), global0.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2.b.xzy * vec3<f32>(-1321f, _wgslsmith_f_op_f32(583f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.e), var_2.e))), _wgslsmith_f_op_f32(-1514f + var_2.e)));
    return -2086f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(~firstLeadingBit(vec2<i32>(arg_2.a.c.d, arg_0.d))), vec2<i32>(global3.a.a.d, ~(-1i) ^ (global3.a.c.d >> (global3.a.a.b % 32u)))));
    let var_1 = _wgslsmith_sub_i32(-20486i, _wgslsmith_mult_i32(global0.a.d, reverseBits(arg_0.d) & -19907i));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1394f, arg_1, arg_1), vec3<f32>(arg_1, 2366f, 1877f), global3.a.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-1489f, arg_1, -136f), vec3<f32>(-360f, arg_1, arg_1)), select(arg_0.e, arg_2.a.c.a, arg_2.a.a.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, 478f, arg_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1575f) * vec3<f32>(-152f, arg_1, 1117f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1640f, arg_1, arg_1)), vec3<f32>(-228f, _wgslsmith_f_op_f32(arg_1 - 809f), _wgslsmith_f_op_f32(min(arg_1, 488f))))), global0.b)), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1105f, 1977f), _wgslsmith_f_op_f32(abs(-1000f)))));
    let var_3 = _wgslsmith_mod_vec2_u32(select(~_wgslsmith_div_vec2_u32(vec2<u32>(global3.a.a.b, 3899u), vec2<u32>(39742u, global3.a.c.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.a.b, 2814u), vec2<u32>(1346u, 0u)) ^ vec2<u32>(arg_2.a.a.b, 4294967295u), vec2<u32>(global3.a.c.b, firstLeadingBit(52396u))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(sign(-285f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), abs(vec2<u32>(~41125u >> (1u % 32u), ~4255u)));
    let var_4 = global0.c;
    return vec3<bool>((_wgslsmith_sub_i32(max(-31373i, 1i), arg_0.d | global0.a.d) >> (~countOneBits(12035u) % 32u)) <= max(arg_0.d, -var_0), false, true);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = !any(arg_0.e.zz);
    global3 = Struct_3(Struct_2(Struct_1(select(!vec3<bool>(true, arg_0.e.x, false), !vec3<bool>(global3.a.b.x, global3.a.c.c, var_0), var_0), firstLeadingBit(~4294967295u), true, firstLeadingBit(global0.a.d), global0.c.a), func_4(Struct_1(!vec3<bool>(false, global0.c.c, global3.a.a.c), 24209u, false, -global0.a.d, vec3<bool>(false, global3.a.c.c, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(33497u, Struct_2(Struct_1(vec3<bool>(true, arg_0.e.x, false), 1u, global0.a.c, 20245i, global0.c.a), arg_0.e, global3.a.c), vec3<u32>(arg_0.b, 98110u, 35812u), global3.a.a.b))), Struct_3(Struct_2(Struct_1(global0.a.a, 8713u, global3.a.a.c, global3.a.a.d, vec3<bool>(global0.c.e.x, false, true)), vec3<bool>(true, false, var_0), Struct_1(arg_0.e, u_input.a, var_0, global3.a.a.d, global0.a.e)))), global3.a.c));
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1401f, _wgslsmith_f_op_f32(round(-1138f)))))));
    global0 = global3.a;
    var var_1 = Struct_4(max((vec3<i32>(-1i) * -vec3<i32>(0i, arg_0.d, global0.c.d)) << (abs(select(vec3<u32>(1u, global3.a.c.b, global3.a.c.b), vec3<u32>(arg_0.b, 26232u, arg_0.b), var_0)) % vec3<u32>(32u)), ~(~vec3<i32>(-27017i, global0.c.d, global3.a.c.d)) >> (vec3<u32>(78976u, 16877u, 4294967295u) % vec3<u32>(32u))));
    return _wgslsmith_div_f32(-3049f, -464f);
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> f32 {
    global4 = -2313f;
    let var_0 = !(!(arg_3.a.c.b >= ~u_input.b));
    var var_1 = all(vec2<bool>(true, arg_3.a.a.a.x));
    return 308f;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_5 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global0.a.d, select(!select(vec4<bool>(false, global0.a.a.x, false, true), vec4<bool>(false, global3.a.a.c, global0.c.e.x, global3.a.b.x), vec4<bool>(global0.c.a.x, false, global0.a.c, false)), !vec4<bool>(false, false, global0.b.x, false), any(vec3<bool>(true, true, global3.a.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(global0.c)), _wgslsmith_f_op_f32(abs(589f)), -603f)), Struct_3(Struct_2(global0.c, !vec3<bool>(global0.c.e.x, global3.a.c.c, global0.a.c), global0.a)))));
    let var_0 = select(vec2<bool>(_wgslsmith_mod_i32(0i, -global3.a.c.d) < global0.a.d, global3.a.a.a.x), !select(!global3.a.b.xz, global0.b.zy, !(!global0.b.zx)), global0.a.e.x);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, -299f), arg_0)));
    var_1 = 1797f;
    var var_2 = ~reverseBits(-_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, 51167i), vec2<i32>(-2147483647i, 41549i) | vec2<i32>(global0.c.d, 0i)));
    return Struct_5(global3.a.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-823f, 990f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(356f)), _wgslsmith_f_op_f32(-arg_0))))), ~select(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1772u), vec2<u32>(10502u, global0.a.b)), arg_1.yy), 4294967295u, true), abs(abs(vec2<i32>(~global3.a.a.d, _wgslsmith_mult_i32(12713i, global3.a.c.d)))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(arg_0))));
}

fn func_6(arg_0: Struct_5, arg_1: vec4<f32>) -> i32 {
    let var_0 = 44534u >> (arg_0.c % 32u);
    global1 = -1037f;
    global1 = arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global1 = arg_0.b.x;
    return ~(~_wgslsmith_sub_i32(arg_0.d.x, arg_0.d.x));
}

fn func_7(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> StorageBuffer {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), select(~vec3<u32>(global3.a.a.b ^ arg_1.x, ~u_input.a, ~1u), reverseBits(vec3<u32>(~1u, arg_1.x, reverseBits(arg_1.x))), vec3<bool>(true, any(vec4<bool>(global0.c.e.x, global0.b.x, global3.a.a.c, false)), arg_0 <= -1010f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.b))) - var_0.b)));
    let var_2 = 4294967295u;
    let var_3 = 11082i;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(var_0.a.d >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(53145u, 37070u, 4294967295u), arg_1) % 32u), select(!(!vec4<bool>(global3.a.b.x, var_0.a.a.x, true, var_0.a.a.x)), !(!vec4<bool>(true, var_0.a.a.x, global0.b.x, var_0.a.a.x)), false), _wgslsmith_f_op_vec3_f32(sign(var_1.yyy)), Struct_3(Struct_2(global0.c, func_4(global3.a.a, -902f, Struct_3(Struct_2(global3.a.c, global3.a.a.e, global3.a.a))), var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(min(var_1.x, var_1.x))))), false));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-55202i, -46059i, var_0.d.x, global0.c.d)), -firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_3, arg_3, arg_2), vec4<i32>(18210i, 1i, 58809i, 21759i)))), -21822i, global0.c.b, var_1.wxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0.a.e;
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.d, abs(_wgslsmith_div_i32(global0.a.d, global3.a.c.d)) ^ global0.a.d, global0.a.d, firstLeadingBit(-41388i)), vec4<i32>(0i, abs(firstTrailingBit(-14576i)) >> (~(~u_input.b) % 32u), -min(46114i ^ global0.a.d, global0.c.d), abs(-global0.a.d)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(692f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = global3.a;
    let var_3 = var_0.x;
    let x = u_input.a;
    s_output = func_7(-1283f, ~(~max(vec3<u32>(19630u, 0u, 26905u), vec3<u32>(4294967295u, 48562u, global0.c.b))) ^ vec3<u32>(4294967295u, 11172u, _wgslsmith_mult_u32(4294967295u, ~var_2.c.b)), ~func_6(func_1(_wgslsmith_f_op_f32(abs(-876f)), vec3<u32>(4294967295u, var_2.c.b, 40151u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-305f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -242f)), func_1(-1303f, abs(vec3<u32>(1u, global3.a.a.b, global3.a.a.b) & vec3<u32>(global0.a.b, 42244u, u_input.a)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a.b, 1u, u_input.a), vec3<u32>(1u, 26564u, global3.a.c.b), vec3<u32>(0u, global3.a.a.b, 4294967295u) >> (vec3<u32>(var_2.a.b, u_input.a, 4294967295u) % vec3<u32>(32u)))).d.x);
}

