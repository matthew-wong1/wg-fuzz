struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(495f, arg_0.x)), 1350f, any(vec3<bool>(global0.x, global0.x, global0.x)))) * _wgslsmith_f_op_f32(-1000f * 2142f))), vec4<i32>(arg_1.b.x, 2147483647i, arg_1.b.x & -u_input.c.x, countOneBits(_wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(arg_1.b.x, u_input.c.x, -65781i)))), ~(~vec2<u32>(u_input.b, u_input.b)), ~max(vec4<u32>(arg_1.c.x, arg_1.d.x, 66462u, arg_1.d.x) | (vec4<u32>(18637u, 0u, u_input.b, 1u) ^ vec4<u32>(5452u, 57479u, u_input.b, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(47479u, 0u), firstLeadingBit(arg_1.e.x), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20370u, arg_1.c.x, 0u), arg_1.d))), select(~vec2<u32>(u_input.a, ~u_input.a), ~_wgslsmith_sub_vec2_u32(firstLeadingBit(arg_1.e), ~arg_1.e), true && (-1058f > _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))));
    global0 = vec4<bool>(global0.x, true, global0.x, select(any(global0.xwy), 1462f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(547f + arg_1.a))), true));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(-548f, arg_0.x))), 565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1067f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-578f, arg_0.x)), _wgslsmith_f_op_f32(arg_1.a - var_0.a)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(544f, 471f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.a, 233f))))))));
    global0 = vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(471f, 704f), _wgslsmith_f_op_f32(-var_1.x), false)))) != arg_0.x, !global0.x, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -1352f) - _wgslsmith_f_op_f32(sign(arg_1.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), true);
    let var_2 = _wgslsmith_mult_u32(1u, arg_1.c.x);
    return vec4<bool>(global0.x, false, true, select(global0.x, !(!any(global0.yy)), global0.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    global0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(401f, -703f, 885f, arg_0.x) + vec4<f32>(-343f, -1497f, arg_0.x, -338f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, 382f, -970f, arg_0.x)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_vec4_i32((vec4<i32>(u_input.c.x, 0i, -2147483647i, -40246i) >> (vec4<u32>(u_input.a, 37659u, 0u, u_input.b) % vec4<u32>(32u))) ^ -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), abs(vec4<i32>(-1i, 9007i, 2147483647i, u_input.c.x)) ^ ~vec4<i32>(-2147483647i, 1i, 3561i, -8918i)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(u_input.a, u_input.b)), select(vec4<u32>(_wgslsmith_mult_u32(45261u, 6631u), 50424u, 17778u, ~u_input.a), ~(vec4<u32>(1u, 27485u, 4294967295u, 16065u) >> (vec4<u32>(1u, 35438u, 4294967295u, u_input.a) % vec4<u32>(32u))), arg_1.x), min(~(~vec2<u32>(u_input.a, 1u)), min(~vec2<u32>(u_input.b, u_input.b), abs(vec2<u32>(u_input.a, u_input.b))))));
    var var_1 = vec3<u32>(countOneBits(~(34204u >> (u_input.a % 32u)) | ~1u), select(~abs(u_input.b), ~u_input.b, true), u_input.a);
    var_1 = vec3<u32>(u_input.a, 1u, ~(~u_input.b));
    let var_2 = vec3<i32>(-11693i, _wgslsmith_add_i32(-u_input.c.x, u_input.c.x ^ u_input.c.x), u_input.c.x);
    return _wgslsmith_f_op_f32(round(2015f));
}

fn func_5(arg_0: f32) -> vec2<i32> {
    global0 = select(!select(vec4<bool>(all(vec4<bool>(global0.x, false, global0.x, global0.x)), true, true, global0.x), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-356f, 120f, 1098f, -303f), vec4<f32>(arg_0, arg_0, arg_0, arg_0)), Struct_1(-593f, vec4<i32>(-23081i, u_input.c.x, 23182i, u_input.c.x), vec2<u32>(0u, u_input.a), vec4<u32>(u_input.b, u_input.a, 1u, 36893u), vec2<u32>(u_input.b, 62398u))), 44651u > _wgslsmith_mod_u32(u_input.a, 2917u)), select(select(select(!vec4<bool>(global0.x, global0.x, true, false), !vec4<bool>(true, global0.x, true, global0.x), all(global0.xzz)), vec4<bool>(global0.x, 0i == u_input.c.x, any(global0.wxz), select(global0.x, false, global0.x)), !global0.x && true), !vec4<bool>(true, any(vec3<bool>(global0.x, true, false)), true, true), !(!global0.x)), any(!(!global0.wxz)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(-958f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)))))), -countOneBits(countOneBits(select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -30197i), true))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(20119u, u_input.a), countOneBits(vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(u_input.b, u_input.a)), vec4<u32>(abs(1u << (u_input.a % 32u)), ~(countOneBits(u_input.b) & u_input.b), ~(~(~4294967295u)), countOneBits(~0u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 6307u, 35733u)) >> (4294967295u % 32u), u_input.a));
    global0 = !vec4<bool>(any(global0.xyy), !(!any(vec4<bool>(true, global0.x, global0.x, global0.x))), false, global0.x);
    var_0 = Struct_1(860f, vec4<i32>(~(-68609i) >> (~(~1u) % 32u), 1i, 0i, ~_wgslsmith_mult_i32(var_0.b.x, var_0.b.x)), abs(~firstLeadingBit(countOneBits(vec2<u32>(0u, 0u)))), countOneBits(~(~vec4<u32>(var_0.d.x, u_input.b, 8797u, var_0.e.x) ^ (vec4<u32>(var_0.c.x, var_0.d.x, var_0.c.x, u_input.b) ^ var_0.d))), select(abs(~max(vec2<u32>(40012u, var_0.d.x), var_0.d.yx)), min(vec2<u32>(var_0.e.x, u_input.b), vec2<u32>(7831u, _wgslsmith_sub_u32(19634u, 11683u))), vec2<bool>(true, true)));
    global0 = select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 596f, var_0.a, 1444f)))), Struct_1(arg_0, select(reverseBits(vec4<i32>(var_0.b.x, 1i, 53266i, 26696i)), select(var_0.b, vec4<i32>(var_0.b.x, var_0.b.x, -42544i, 8463i), global0.x), select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, global0.x, false, global0.x), true)), vec2<u32>(countOneBits(u_input.b), 1u | u_input.b), ~abs(var_0.d), vec2<u32>(12912u, firstLeadingBit(var_0.e.x)))), !vec4<bool>(global0.x, all(vec3<bool>(true, global0.x, false)), (var_0.a > -1371f) & global0.x, func_3(vec4<f32>(arg_0, 1359f, 696f, arg_0), Struct_1(-573f, vec4<i32>(u_input.c.x, var_0.b.x, -2147483647i, var_0.b.x), var_0.e, var_0.d, vec2<u32>(u_input.b, 60496u))).x), func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(floor(arg_0)), var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1603f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1088f, arg_0)) * arg_0), -var_0.b, max(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_0.c.x, 0u)), ~vec2<u32>(var_0.c.x, 11670u)), select(var_0.d, select(vec4<u32>(50467u, u_input.a, u_input.b, 20647u), var_0.d, vec4<bool>(false, global0.x, false, false)), false), vec2<u32>(var_0.e.x, _wgslsmith_mult_u32(u_input.b, 352u)))));
    return _wgslsmith_clamp_vec2_i32(max(min(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c.x), u_input.c), u_input.c), vec2<i32>(var_0.b.x, u_input.c.x)), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, u_input.c.x), vec2<i32>(_wgslsmith_add_i32(u_input.c.x, 3640i), ~u_input.c.x)) & _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(1i, 2147483647i) << (var_0.d.wx % vec2<u32>(32u))), min(u_input.c, _wgslsmith_clamp_vec2_i32(var_0.b.xw, var_0.b.wz, var_0.b.xx))), vec2<i32>(min(-(~2147483647i), max(_wgslsmith_add_i32(-2147483647i, 8397i), -u_input.c.x)), u_input.c.x));
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c.x, 0i), -select(abs(vec2<i32>(u_input.c.x, u_input.c.x)), ~vec2<i32>(-3551i, u_input.c.x), !select(global0.xx, vec2<bool>(global0.x, true), true)));
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -519f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1321f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-466f + 888f) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-615f, -1649f, -322f))), func_3(vec4<f32>(-1697f, -196f, -1252f, 224f), Struct_1(221f, vec4<i32>(u_input.c.x, 6861i, var_0.x, 0i), vec2<u32>(7212u, 0u), vec4<u32>(arg_0, 1u, 118156u, 44519u), vec2<u32>(0u, u_input.b))))))));
    var_1 = -(~u_input.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-136f + -150f), select(vec4<i32>(var_0.x, 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-25827i, var_0.x, 24108i, -10471i), vec4<i32>(69984i, u_input.c.x, -5484i, 40875i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-41217i, 1i), vec2<i32>(1i, var_0.x) ^ var_0), var_1.x >> (~arg_0 % 32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, ~(-1i), ~var_0.x), vec4<i32>(i32(-1i) * -23456i, var_1.x, _wgslsmith_mod_i32(-23402i, 1i), -var_1.x)), func_3(vec4<f32>(746f, _wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_div_f32(-677f, -379f), -119f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -204f), vec4<i32>(var_1.x, var_0.x, var_1.x, var_1.x), max(vec2<u32>(arg_1, arg_1), vec2<u32>(u_input.b, 0u)), abs(vec4<u32>(13146u, 8815u, arg_0, arg_1)), vec2<u32>(6382u, 18946u) << (vec2<u32>(23943u, arg_1) % vec2<u32>(32u))))), _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 25743u), vec2<u32>(arg_0, u_input.a)), ~0u), vec2<u32>(~abs(70882u), firstLeadingBit(arg_0))), reverseBits(~vec4<u32>(arg_1, 0u, u_input.b, arg_1) & (vec4<u32>(44146u, arg_1, 67997u, 0u) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0, arg_1, 11837u), vec4<u32>(3345u, 4294967295u, 1u, 0u)))), ~vec2<u32>(1u, 1u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), ~(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_2.b.x), var_2.b.yxy), var_0.x, u_input.c.x & -45138i, -2147483647i)), vec2<u32>(~(_wgslsmith_dot_vec4_u32(var_2.d, var_2.d) ^ _wgslsmith_clamp_u32(0u, arg_1, var_2.e.x)), _wgslsmith_dot_vec3_u32(var_2.d.zzx, _wgslsmith_div_vec3_u32(var_2.d.zxy, select(var_2.d.yzz, vec3<u32>(arg_0, 4294967295u, 43206u), vec3<bool>(global0.x, false, global0.x))))), ~var_2.d, ~vec2<u32>(~(~561u), ~(~29211u)));
    return global0.x;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global0 = vec4<bool>(func_2(u_input.a, 48685u), arg_1.x, arg_1.x, !global0.x);
    var var_0 = min(firstLeadingBit(firstTrailingBit(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(0u, u_input.a), vec2<u32>(107244u, arg_0)), vec2<u32>(u_input.a, arg_0)))), _wgslsmith_div_vec2_u32(~min(vec2<u32>(29387u, arg_0), vec2<u32>(arg_0, u_input.b)), (vec2<u32>(u_input.a, u_input.b) | vec2<u32>(0u, u_input.b)) & (vec2<u32>(arg_0, arg_0) | vec2<u32>(65649u, u_input.a))) | min(~max(vec2<u32>(u_input.b, 0u), vec2<u32>(0u, arg_0)), vec2<u32>(279u, ~arg_0)));
    return -min(-2942i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-795f, firstTrailingBit(vec4<i32>(25778i, 0i, func_1(u_input.b & 81053u, select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, true, true, false)), ~u_input.c.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), firstLeadingBit(u_input.c.x)))), vec2<u32>(1u, ~u_input.b), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 19717u), ~vec4<u32>(4294967295u, u_input.a, 90754u, 1u))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.b, u_input.a, 4294967295u, 0u) & vec4<u32>(4294967295u, 0u, 1u, u_input.b), vec4<u32>(0u, u_input.a, 22984u, 17436u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, 9964u) | vec4<u32>(15436u, u_input.a, 0u, 66644u), min(vec4<u32>(u_input.b, u_input.b, u_input.a, 0u), vec4<u32>(89259u, u_input.a, 1u, u_input.a))))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 18506u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, u_input.a), ~vec2<u32>(37891u, 488u))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 69657u) & vec2<u32>(47690u, 1u), select(abs(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.a, u_input.b), vec2<bool>(true, true)))));
    var var_1 = -41771i;
    let var_2 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-151f, -1420f, var_0.a, var_0.a), vec4<f32>(1644f, var_0.a, var_0.a, var_0.a), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 1034f, var_0.a, -385f), vec4<f32>(var_0.a, -454f, var_0.a, -498f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, _wgslsmith_f_op_f32(424f - var_0.a), -318f, 1f))), Struct_1(var_0.a, ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -37361i, u_input.c.x, 31276i)), ~vec2<u32>(~u_input.b, var_0.e.x), var_0.d, max(_wgslsmith_mult_vec2_u32(vec2<u32>(47903u, 1u), var_0.d.yw), ~(vec2<u32>(var_0.c.x, 93173u) ^ var_0.e)))).x;
    let var_3 = u_input.b == ~4294967295u;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec4<i32>(30692i, u_input.c.x, 2147483647i ^ u_input.c.x, _wgslsmith_mod_i32(-1i, u_input.c.x)), _wgslsmith_add_vec2_u32(var_0.e, vec2<u32>(u_input.b, ~var_0.d.x)), var_0.d ^ ((reverseBits(vec4<u32>(var_0.e.x, u_input.b, var_0.e.x, var_0.c.x)) >> (~var_0.d % vec4<u32>(32u))) | ~(~vec4<u32>(9504u, 9155u, 4294967295u, var_0.c.x))), var_0.c);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1167f, var_0.a) + _wgslsmith_f_op_f32(-var_4.a))) - var_4.a), -var_0.b, abs(var_4.d.xx), _wgslsmith_add_vec4_u32(vec4<u32>(~(var_4.c.x & 22866u), 0u & countOneBits(var_0.e.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.d.x, var_4.d.x), ~u_input.a), ~countOneBits(var_0.c.x)), select(vec4<u32>(_wgslsmith_dot_vec3_u32(var_4.d.xxy, vec3<u32>(u_input.a, u_input.b, var_4.c.x)), firstTrailingBit(27250u), ~49770u, 0u), vec4<u32>(firstLeadingBit(var_0.c.x), 1u, var_0.d.x, 1u), vec4<bool>(var_3, true, false, var_3))), reverseBits(var_4.c));
    var var_6 = min(vec3<u32>(_wgslsmith_div_u32(1u, 15471u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.d, var_0.d), var_4.d << (var_0.d % vec4<u32>(32u))), 59377u), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_5.d.x, var_4.e.x, var_0.c.x), var_4.d.xww), var_5.d.zxz, max(vec3<u32>(4294967295u, 0u, 1u), var_5.d.zzw)))) << (((((vec3<u32>(59828u, var_5.e.x, 17475u) >> (var_0.d.yww % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(var_4.d.xxw, var_0.d.wxx) % vec3<u32>(32u))) & max(var_4.d.wyx, _wgslsmith_div_vec3_u32(var_4.d.wxy, vec3<u32>(var_0.d.x, 0u, var_4.c.x)))) | ~vec3<u32>(var_5.e.x, select(u_input.a, 4294967295u, false), 141218u)) % vec3<u32>(32u));
    let var_7 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(0u, -_wgslsmith_add_i32(var_5.b.x, u_input.c.x), var_4.b.x, _wgslsmith_mult_u32(37007u, 1u), 34080u);
}

