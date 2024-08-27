struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-1000f, 562f, -605f), vec3<f32>(541f, -539f, -137f), vec3<f32>(294f, 1000f, 389f), vec3<f32>(355f, 764f, 618f), vec3<f32>(1869f, -1245f, 2636f), vec3<f32>(-1178f, 178f, 359f), vec3<f32>(-679f, 744f, -1753f), vec3<f32>(191f, -1033f, -408f), vec3<f32>(1000f, 574f, -1751f), vec3<f32>(1000f, -368f, -1660f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = u_input.a.x > u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(min(_wgslsmith_add_u32(45923u, 45852u), 1u), 4294967295u, ~(u_input.b.x & u_input.b.x)), firstLeadingBit(~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)))), select(vec4<bool>(true, var_0, any(vec3<bool>(var_0, false, true)) || true, var_0), vec4<bool>(true, select(true, var_0, false) & select(true, var_0, var_0), any(select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false))), 22555i <= u_input.a.x), select(vec4<bool>(false, var_0, false, var_0), vec4<bool>(true, var_0, var_0, true), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(227f, arg_1))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(136f, arg_0))))))), ~(~_wgslsmith_clamp_u32(u_input.c, 1u, 0u)));
    var var_2 = ~u_input.a.x;
    let var_3 = _wgslsmith_add_vec3_i32(~firstTrailingBit(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(var_1.d, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c, var_1.d, var_1.d)), vec3<u32>(4294967295u, 0u, var_1.a.x) ^ vec3<u32>(4294967295u, u_input.b.x, var_1.d)), 1u) % vec3<u32>(32u)), -vec3<i32>(-19505i, -u_input.a.x, firstLeadingBit(8254i)));
    var var_4 = Struct_1(vec3<u32>(1u, u_input.b.x ^ u_input.b.x, max(_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), abs(~var_1.a.x))), !vec4<bool>(var_0, any(select(var_1.b.zy, vec2<bool>(true, var_0), vec2<bool>(var_1.b.x, var_1.b.x))), var_0, var_0), var_1.c, select(78431u, countOneBits(~u_input.b.x), var_1.b.x));
    return u_input.c;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, 487f, -393f, 1304f) + vec4<f32>(arg_0, arg_0, arg_0, -127f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1350f, 2162f, 1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-134f, -690f), _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0, arg_0))));
    var var_1 = vec3<u32>(4294967295u, 1u, ~0u);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(firstLeadingBit(1u), ~var_1.x), ~4294967295u), abs(countOneBits(vec3<u32>(var_1.x, u_input.c, var_1.x)))), vec4<bool>(all(vec4<bool>(true, false, arg_1 <= 1i, true)), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), false)), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1109f, arg_0))), ~min(1u, 414u) | u_input.c);
    global1 = array<vec3<f32>, 10>();
    global0 = -1i;
    return Struct_1(vec3<u32>(~var_1.x, ~0u, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - -1610f) + arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1203f - var_0.x))))), var_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.ww - _wgslsmith_f_op_vec2_f32(max(var_0.yw, var_2.c)))) + vec2<f32>(var_0.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -747f)))), (~var_2.a.x << (var_2.a.x % 32u)) ^ (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_1.x, 4294967295u, 4294967295u)), _wgslsmith_sub_vec3_u32(u_input.b, var_2.a)) | _wgslsmith_mult_u32(min(var_2.d, u_input.c), 1262u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<f32> {
    global0 = u_input.a.x;
    let var_0 = func_2(-423f, u_input.a.x);
    global0 = u_input.a.x;
    global1 = array<vec3<f32>, 10>();
    global1 = array<vec3<f32>, 10>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, arg_0.c.x)), var_0.c.x), -961f), -200f, _wgslsmith_f_op_f32(var_0.c.x + -282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-var_0.c.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -vec3<i32>(-(~u_input.a.x), ~(-12092i), -1i);
    var var_1 = !(!(!(!vec2<bool>(true, arg_2.b.x))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c.x)))), var_0.x & -_wgslsmith_mult_i32(1i, -var_0.x));
    var var_3 = vec4<bool>(!all(select(arg_2.b.wzx, var_2.b.xwx, !arg_1.b.x)), true, true, func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-626f - arg_2.c.x), _wgslsmith_div_f32(484f, var_2.c.x)) * -879f), _wgslsmith_dot_vec2_i32(~(~var_0.xx), -_wgslsmith_mult_vec2_i32(vec2<i32>(83102i, var_0.x), var_0.zy))).b.x);
    var_3 = select(arg_1.b, vec4<bool>(var_3.x, !(!var_2.b.x), var_3.x, !(true && !var_3.x)), any(var_3.yxx));
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    global0 = firstTrailingBit(i32(-1i) * -u_input.a.x);
    global0 = u_input.a.x;
    let var_1 = firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec2_i32(min(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), -vec2<i32>(u_input.a.x, u_input.a.x))));
    global0 = ~(-2147483647i);
    return Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(739f, arg_0.c.x, -724f, arg_3.c.x) - vec4<f32>(1778f, var_0, var_0, 978f))), arg_0, func_2(arg_3.c.x, var_1.x | u_input.a.x)).a | arg_3.a, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, 491f, 979f, 516f))))), Struct_1(_wgslsmith_mod_vec3_u32(arg_0.a, func_2(647f, u_input.a.x).a), vec4<bool>(arg_0.b.x, arg_3.b.x, true, var_1.x != -15221i), vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(1745f))), ~func_2(arg_0.c.x, u_input.a.x).d), func_2(-216f, _wgslsmith_div_i32(1i, u_input.a.x))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1272f, -952f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c)))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(arg_1.a.x & 69956u, arg_1.d), ~func_4(vec4<f32>(arg_0.c.x, var_0, arg_3.c.x, arg_0.c.x), Struct_1(u_input.b, vec4<bool>(arg_3.b.x, false, false, arg_1.b.x), arg_1.c, 0u), arg_0).d), ~abs(vec2<u32>(u_input.c, 1u))));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.c.x != func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-120f, 316f, arg_2.c.x, arg_1.c.x) * vec4<f32>(arg_1.c.x, -1000f, 476f, arg_2.c.x)))))), arg_1, arg_2).c.x;
    let var_1 = arg_2.d;
    var var_2 = func_5(Struct_1(vec3<u32>(~(~arg_1.a.x), countOneBits(arg_1.d), 1u), select(arg_1.b, func_2(_wgslsmith_f_op_f32(abs(2688f)), -1i).b, !(!var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(arg_1, arg_1, arg_2.b.wwz, arg_2).c.x, -857f)), func_5(arg_2, Struct_1(vec3<u32>(1u, 40190u, 4294967295u), vec4<bool>(true, false, false, arg_1.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, -1894f)), _wgslsmith_sub_u32(u_input.c, arg_2.a.x)), arg_1.b.zww, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1119f, 537f, -1168f, arg_1.c.x) - vec4<f32>(arg_1.c.x, 1296f, arg_1.c.x, -1452f)), arg_1, Struct_1(arg_1.a, vec4<bool>(arg_2.b.x, arg_1.b.x, true, var_0), arg_2.c, 0u))).d), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1433f, arg_1.c.x, -1015f, arg_1.c.x)) - vec4<f32>(1002f, -682f, arg_2.c.x, -1426f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.x, arg_1.c.x, arg_1.c.x, arg_2.c.x), vec4<f32>(-400f, 741f, 1989f, 569f))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + -1178f) + _wgslsmith_f_op_f32(trunc(arg_1.c.x))), _wgslsmith_clamp_i32(i32(-1i) * -62916i, _wgslsmith_mult_i32(-1i, 0i), -31403i)), func_5(arg_2, arg_2, arg_1.b.zwz, Struct_1(u_input.b, !vec4<bool>(arg_2.b.x, true, true, arg_2.b.x), _wgslsmith_f_op_vec2_f32(arg_2.c + arg_2.c), arg_1.a.x))), !vec3<bool>(true, func_2(-663f, countOneBits(u_input.a.x)).b.x, arg_2.b.x), func_5(arg_2, Struct_1(arg_2.a, arg_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c)), u_input.c), !vec3<bool>(func_5(arg_1, Struct_1(vec3<u32>(u_input.c, 30023u, arg_2.d), arg_1.b, vec2<f32>(arg_2.c.x, arg_1.c.x), 54066u), vec3<bool>(arg_2.b.x, arg_1.b.x, arg_1.b.x), Struct_1(vec3<u32>(arg_2.a.x, 0u, var_1), vec4<bool>(true, var_0, true, arg_1.b.x), arg_2.c, arg_1.d)).b.x, false, any(arg_2.b)), arg_2)).b.x;
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(_wgslsmith_mult_u32(arg_2.d, u_input.b.x), arg_1.d, var_0), arg_2.d, abs(arg_1.d)), _wgslsmith_mult_vec3_u32(select(abs(arg_2.a), vec3<u32>(arg_1.a.x, var_1, 32916u), vec3<bool>(false, var_0, arg_2.b.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, 1u, u_input.b.x), vec3<u32>(u_input.c, var_1, arg_2.d)), vec3<u32>(u_input.b.x, 4294967295u, 1u))), _wgslsmith_sub_vec3_u32(min(arg_1.a, vec3<u32>(53148u, arg_1.a.x, arg_2.a.x)), abs(vec3<u32>(0u, 39771u, 4294967295u))) | (firstLeadingBit(arg_1.a) & ~vec3<u32>(arg_2.d, var_1, 1u))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.x))) + -276f), ~(~(u_input.a.x << (1u % 32u)))).b, vec2<f32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-619f, arg_2.c.x)) - arg_2.c.x), -1i).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(-1452f - -660f)))), ~(~_wgslsmith_add_u32(var_1 >> (4294967295u % 32u), ~arg_1.d)));
    var_2 = var_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), u_input.a), 4128i, -14125i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, 5980i, -19724i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 48531i), vec4<i32>(u_input.a.x, u_input.a.x, -17681i, u_input.a.x)))), countOneBits(~(-2147483647i)), 1i, u_input.a.x), func_5(Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 16808u), vec3<u32>(21381u, u_input.b.x, 81483u), abs(u_input.b)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec2<f32>(-410f, 802f), ~u_input.b.x), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.b, vec4<bool>(true, false, true, true), vec2<f32>(173f, 1280f), 4294967295u), vec2<f32>(451f, -1041f))))), func_2(_wgslsmith_f_op_f32(597f - 1787f), u_input.a.x), func_2(_wgslsmith_f_op_f32(sign(-1495f)), u_input.a.x)), vec3<bool>(true, true, true), func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1603f, 577f, 1946f, -1035f) * vec4<f32>(-1000f, -2338f, 1780f, 1163f)), vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(~u_input.b, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-744f, -465f) + vec2<f32>(-903f, -1969f)), 64528u ^ u_input.c), Struct_1(u_input.b, vec4<bool>(false, true, false, false), vec2<f32>(319f, 554f), _wgslsmith_add_u32(1u, u_input.b.x)))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, 1657f, -315f, -882f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, 314f, -525f, -933f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 409f, -1000f, -1000f)))), Struct_1(abs(vec3<u32>(u_input.b.x, u_input.c, 1u)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(332f, -698f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1222f, 462f) + vec2<f32>(-1299f, 1504f))), u_input.c), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, -464f, 1921f, -1248f)), Struct_1(u_input.b, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1009f, -312f))), 33957u), Struct_1(~u_input.b, vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(278f, 487f), vec2<f32>(1029f, -874f))), ~u_input.b.x))));
    global0 = min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), var_0.b.wzz)), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), 1i)), ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -28737i), vec3<i32>(u_input.a.x, 7789i, 2147483647i)))), -1i);
    let var_1 = vec2<u32>(0u, ~reverseBits(func_2(var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x))).d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.c, u_input.b.x)), vec2<u32>(~reverseBits(45639u), var_0.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1766f, var_0.c.x) * vec2<f32>(1149f, -282f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c.x, 160f, true)), _wgslsmith_f_op_f32(trunc(var_0.c.x)))), !((var_0.b.x && var_0.b.x) | !var_0.b.x))));
}

