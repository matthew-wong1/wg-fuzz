struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = Struct_1((~_wgslsmith_sub_u32(4028u, 1u) & select(1u, abs(1u), true)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(4294967295u, 29275u, 11488u, 0u), vec4<u32>(0u, 10677u, 1u, 28778u))) % 32u), _wgslsmith_add_i32(-7859i, -_wgslsmith_clamp_i32(max(59328i, u_input.b), u_input.b, -u_input.a.x)), 782f, any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), -1i != u_input.b))), select(select(vec4<bool>(select(true, false, true), true, true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))));
    let var_1 = Struct_1(var_0.a, _wgslsmith_dot_vec4_i32(max(max(-vec4<i32>(u_input.a.x, u_input.a.x, var_0.b, var_0.b), -vec4<i32>(var_0.b, var_0.b, 0i, -31898i)), vec4<i32>(_wgslsmith_add_i32(-23048i, var_0.b), var_0.b, -35494i, 2147483647i)), firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, -1i, var_0.b), -2147483647i, -2147483647i, 0i))), 621f, !(select(-23637i, var_0.b, var_0.e.x) <= countOneBits(select(u_input.b, var_0.b, false))), vec4<bool>(!(u_input.a.x <= u_input.b), !(!var_0.e.x) || false, var_0.e.x, var_0.d));
    let var_2 = -var_0.b;
    let var_3 = max(~select(vec4<u32>(var_1.a, var_0.a, 5039u, 0u), vec4<u32>(var_1.a, 15960u, var_0.a, 1u), all(var_0.e.yyz)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, ~32507u, ~var_0.a, max(var_0.a, 14127u)), _wgslsmith_div_vec4_u32(vec4<u32>(10468u, var_0.a, 4294967295u, 0u) >> (vec4<u32>(2455u, 0u, var_0.a, var_1.a) % vec4<u32>(32u)), vec4<u32>(0u, 42409u, var_0.a, var_1.a)))) | vec4<u32>(countOneBits(min(1u, 69160u)), var_1.a, var_0.a, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.a, var_1.a, 8327u)), vec3<u32>(_wgslsmith_sub_u32(var_1.a, var_1.a), _wgslsmith_sub_u32(var_0.a, 0u), _wgslsmith_sub_u32(var_1.a, 4294967295u))));
    var var_4 = u_input.a;
    return _wgslsmith_add_i32(30224i, ~(~select(var_1.b, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), !var_1.e.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(-13579i, -3191i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) + -1096f)));
    let var_2 = arg_0;
    let var_3 = arg_1;
    let var_4 = Struct_2(arg_1, var_3, Struct_1(_wgslsmith_clamp_u32(~firstLeadingBit(78540u), 1u, 4608u), var_3.b, var_3.c, var_3.d, select(arg_1.e, vec4<bool>(var_3.d, var_3.e.x, select(arg_1.e.x, false, false), var_3.d), var_3.e)), Struct_1(~arg_0, firstLeadingBit(func_3()) ^ u_input.a.x, 1447f, !var_3.e.x, vec4<bool>(~arg_0 != arg_0, true & (var_3.d & false), !(var_1.x > var_1.x), all(select(vec3<bool>(false, false, var_3.e.x), vec3<bool>(var_3.d, arg_1.e.x, false), var_3.e.x)))), arg_1);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<f32>(618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-789f, arg_0.c)) + -137f)) - 348f), func_2(arg_0.a ^ 52974u, Struct_1(_wgslsmith_sub_u32(countOneBits(arg_0.a), max(arg_0.a, arg_0.a)), i32(-1i) * -45695i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-436f, arg_0.c, true))), any(arg_0.e.yw) || false, vec4<bool>(arg_0.e.x & true, any(arg_0.e), any(arg_0.e.zwx), !arg_1))).c);
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, arg_0.c, -2018f))))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-134f, var_2.x, _wgslsmith_f_op_f32(-817f - _wgslsmith_f_op_f32(select(arg_0.c, -1274f, true))), _wgslsmith_f_op_f32(-var_0.x))));
    var_1 = ~arg_0.a;
    return Struct_1(56934u, 24022i, 574f, (1u ^ _wgslsmith_clamp_u32(arg_0.a, firstLeadingBit(arg_0.a), arg_0.a)) < arg_0.a, arg_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(900f, 328f), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c, arg_1.x)), _wgslsmith_f_op_f32(abs(arg_2)))), arg_1.yx), _wgslsmith_f_op_vec2_f32(-arg_1.wz), arg_0.d));
    var var_1 = vec3<bool>(arg_0.e.x, true, false);
    let var_2 = ~vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, arg_0.b) | _wgslsmith_mult_i32(19916i, arg_0.b), _wgslsmith_clamp_i32(38794i, 14034i, -16133i) & u_input.a.x), func_2(arg_0.a, Struct_1(arg_0.a, 2147483647i, var_0.x, true, arg_0.e)).b | 28520i);
    let var_3 = arg_0;
    let var_4 = var_3;
    return Struct_2(func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1954u, 52508u), vec3<u32>(34269u, 1u, arg_0.a) >> (vec3<u32>(arg_0.a, arg_0.a, 43188u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_4.a, 0u) << (vec3<u32>(0u, arg_0.a, var_3.a) % vec3<u32>(32u)), ~vec3<u32>(36671u, 65543u, 0u))), func_4(func_4(Struct_1(arg_0.a, 1i, var_4.c, false, var_4.e), var_3.e.x), false)), func_2(_wgslsmith_mult_u32(~var_3.a, ~var_4.a) & 1u, func_4(Struct_1(~4294967295u, func_3(), _wgslsmith_f_op_f32(-1526f + var_3.c), false, vec4<bool>(var_1.x, arg_0.e.x, false, var_1.x)), !any(vec3<bool>(true, false, var_4.e.x)))), func_4(Struct_1(_wgslsmith_mult_u32(~var_4.a, _wgslsmith_add_u32(0u, var_4.a)), ~_wgslsmith_dot_vec3_i32(u_input.a.wxy, vec3<i32>(27453i, arg_0.b, var_3.b)), 2263f, true, var_3.e), true), var_3, var_3);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_2(arg_1, Struct_1(~(~arg_1.a), -arg_2.x, -126f, all(select(select(vec3<bool>(false, false, arg_1.e.x), vec3<bool>(arg_0, arg_1.e.x, false), true), !arg_1.e.xwz, !arg_1.e.wzz)), select(select(select(vec4<bool>(arg_0, arg_1.e.x, arg_0, true), arg_1.e, false), !vec4<bool>(true, false, arg_0, arg_0), arg_1.e), arg_1.e, all(!vec4<bool>(arg_1.e.x, true, false, true)))), Struct_1(~(~firstTrailingBit(arg_1.a)), 2147483647i, _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0, !(!arg_1.e)), arg_1, Struct_1(_wgslsmith_mod_u32(arg_1.a, abs(firstTrailingBit(arg_1.a))), arg_2.x, _wgslsmith_f_op_f32(-arg_1.c), true, vec4<bool>(true, arg_1.e.x, all(arg_1.e.xzz), arg_1.e.x)));
    let var_1 = ~(28770i & -(~(-u_input.a.x)));
    var_0 = func_5(func_4(func_2(max(arg_1.a, arg_1.a), var_0.d), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(289f, _wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_div_f32(875f, -1770f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -373f, -131f, arg_1.c))) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.c), arg_1.c, -1283f, -182f))), func_2(1u, func_4(arg_1, true)).c);
    var var_2 = -arg_2.x;
    let var_3 = firstLeadingBit(arg_1.a);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -u_input.a.x, ~(u_input.a.x & u_input.a.x), func_1(any(vec3<bool>(true, true, false)), Struct_1(17765u, -4322i, 1000f, false, vec4<bool>(true, true, true, false)), reverseBits(u_input.a))), firstLeadingBit(-1i ^ (u_input.a.x & 16230i))));
}

