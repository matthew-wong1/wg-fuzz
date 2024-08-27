struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
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

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 4>();
    let var_0 = ~((67538u >> (_wgslsmith_div_u32(0u, u_input.c.x) % 32u)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(u_input.c.x, 1u, 41690u, 16009u)), u_input.b) % 32u)) ^ u_input.b;
    global0 = array<vec4<f32>, 4>();
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.c))))), _wgslsmith_sub_vec2_i32(global1.b, u_input.a.xz), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~(~u_input.c.x), 4u)] * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, global1.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 663f, global1.a.x, 163f) * vec4<f32>(global1.a.x, 321f, 1187f, global1.c.x)))))), vec4<u32>(~_wgslsmith_add_u32(~global1.d.x, _wgslsmith_div_u32(var_0, 28985u)), var_0, u_input.b, 2168u), ~global1.e);
    var var_1 = Struct_2(global1.a, u_input.d.yz, _wgslsmith_f_op_vec4_f32(-global1.a), ~vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(79521u, 0u, global1.d.x)), vec3<u32>(4294967295u, 52127u, 9602u)), countOneBits(~4294967295u), global1.d.x, u_input.c.x), -(max(firstLeadingBit(global1.b.x), u_input.d.x) ^ u_input.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1077f)), global1.a.x)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = (u_input.b < countOneBits(4294967295u)) | !all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 1031f, global1.a.x, 3616f), global1.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 387f, global1.c.x, arg_0.c.x) + vec4<f32>(global1.c.x, 1000f, 958f, 331f)))) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~12u), _wgslsmith_dot_vec3_u32(arg_0.d.wwz, ~arg_0.d.wxw)), 4u)]), min(u_input.d.wy & u_input.d.xy, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.e, -1i), global1.b) ^ ~vec2<i32>(arg_0.e, 2147483647i), -(~arg_0.b))), vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * 2044f), 784f, -174f, -1575f), ~vec4<u32>(~0u << (firstTrailingBit(global1.d.x) % 32u), 987u, global1.d.x, 1u ^ _wgslsmith_sub_u32(0u, arg_0.d.x)), arg_0.b.x ^ -1606i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-arg_0.a.x)), ~_wgslsmith_add_u32(~(~0u), var_1.d.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1479f, var_1.c.x, var_1.a.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.x, global1.c.x, -379f))))))), var_1.d >> (~(~var_1.d >> ((global1.d ^ vec4<u32>(arg_0.d.x, arg_0.d.x, var_1.d.x, 32208u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = vec2<i32>(global1.b.x, var_1.b.x);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(232f)) + _wgslsmith_f_op_f32(func_3())), arg_0.a.x);
    return Struct_2(global1.a, countOneBits(vec2<i32>(-15786i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * _wgslsmith_f_op_vec4_f32(step(arg_0.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-922f, var_2.a, -213f, 1529f))))))), ~var_2.d, 0i ^ var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<f32>, 4>();
    global1 = func_2(arg_1);
    let var_0 = !(!select(vec4<bool>(true, true, true, select(false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), arg_1.a.x <= arg_1.c.x), vec4<bool>(true, true, true, true)));
    let var_1 = 19771i;
    var var_2 = arg_0.a;
    return Struct_1(392f, 0u, arg_0.c, abs(abs(~_wgslsmith_clamp_vec4_u32(arg_0.d, arg_0.d, vec4<u32>(4602u, 9966u, 3206u, 27483u)))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(trunc(320f))), vec2<i32>(max(1i, countOneBits(global1.b.x)), -(arg_3 & 26477i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, global1.c.x, 2523f, -819f)) - _wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1033f, -1510f, 230f)))), ~(~(~vec4<u32>(u_input.c.x, 10768u, 4294967295u, global1.d.x))), _wgslsmith_mod_i32((18185i >> (global1.d.x % 32u)) ^ ~12742i, _wgslsmith_div_i32(u_input.d.x << (global1.d.x % 32u), -global1.b.x))));
    global0 = array<vec4<f32>, 4>();
    var var_1 = vec3<bool>(any(vec3<bool>(true, true, _wgslsmith_mult_i32(var_0.e, arg_3) > (arg_1 | -1i))), true, !(!all(vec4<bool>(false, false, false, true))));
    var var_2 = (vec2<i32>(-1i) * -(firstLeadingBit(var_0.b) | -var_0.b)) << (countOneBits(~global1.d.wz) % vec2<u32>(32u));
    global1 = func_2(func_2(func_2(func_2(Struct_2(var_0.c, vec2<i32>(var_0.b.x, arg_0), global0[_wgslsmith_index_u32(var_0.d.x, 4u)], global1.d, 1i)))));
    return Struct_1(var_0.a.x, max(~(arg_2.b | var_0.d.x) >> ((_wgslsmith_dot_vec4_u32(global1.d, arg_2.d) | var_0.d.x) % 32u), u_input.b), var_0.c.yxw, select(~vec4<u32>(var_0.d.x >> (1u % 32u), _wgslsmith_clamp_u32(arg_2.b, 1u, 1u), ~18963u, _wgslsmith_clamp_u32(global1.d.x, 1u, 39173u)), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, firstLeadingBit(4294967295u), _wgslsmith_dot_vec2_u32(global1.d.yx, vec2<u32>(30296u, 0u))), 1u, ~_wgslsmith_clamp_u32(global1.d.x, u_input.c.x, 71877u), ~arg_2.b), any(select(!vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, var_1.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(-2147483647i, 13898i, func_4(Struct_1(_wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(-global1.a.x)), ~firstLeadingBit(1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.yzw) * _wgslsmith_f_op_vec3_f32(select(global1.c.zzw, vec3<f32>(-188f, -1137f, 1197f), true))), (vec4<u32>(global1.d.x, 61518u, u_input.b, 90547u) & vec4<u32>(u_input.b, 78020u, u_input.c.x, 4294967295u)) | (vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 0u) & global1.d)), func_2(Struct_2(_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(4294967295u, 4u)], vec4<f32>(global1.c.x, global1.a.x, global1.a.x, global1.a.x))), firstTrailingBit(vec2<i32>(-76732i, -4652i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.c.x, global1.a.x, global1.a.x) * global1.c), ~global1.d, u_input.d.x))), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a));
    var var_1 = countOneBits(select(var_0.d.x, ~(var_0.b | 96371u), !(all(vec4<bool>(true, false, true, false)) && true)));
    var var_2 = func_2(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, var_0.c.x, global1.a.x, 2249f)), global1.c), vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, global1.b.x, u_input.a.x | 44843i), global1.b.x), vec4<f32>(-1000f, var_0.c.x, -2171f, -1855f), ~vec4<u32>(_wgslsmith_clamp_u32(global1.d.x, u_input.c.x, u_input.b), 33164u, firstTrailingBit(global1.d.x), 100188u), -global1.b.x));
    global1 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(reverseBits(func_5(397i, var_2.b.x, Struct_1(284f, 4294967295u, global1.c.xwz, vec4<u32>(1u, var_0.b, u_input.b, u_input.b)), var_2.e).d.x), 4u)] - vec4<f32>(_wgslsmith_div_f32(264f, -1616f), 293f, _wgslsmith_f_op_f32(sign(-322f)), 1f)), ~(var_2.b | vec2<i32>(56664i, 0i)), vec4<f32>(-654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f * 1484f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1118f * -236f), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-var_0.c.x)), vec4<u32>(_wgslsmith_mult_u32(~var_0.b, var_2.d.x), 16287u, 4294967295u, func_2(Struct_2(global1.a, u_input.a.xz, vec4<f32>(952f, -476f, global1.a.x, 1506f), global1.d, 22461i)).d.x), -_wgslsmith_mult_i32(~var_2.e, 2147483647i)));
    let var_3 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))));
    return func_5(_wgslsmith_mult_i32(2147483647i, global1.e), 18519i, func_5(var_2.e, abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.e, 37748i), u_input.a.x)), func_4(Struct_1(1320f, u_input.b >> (2587u % 32u), var_2.c.xwz, select(var_2.d, vec4<u32>(4294967295u, 4294967295u, var_2.d.x, 4294967295u), false)), Struct_2(global0[_wgslsmith_index_u32(~4294967295u, 4u)], vec2<i32>(2147483647i, u_input.d.x) | vec2<i32>(66288i, global1.e), var_2.c, var_2.d, 16844i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(27550i, u_input.d.x), 1i | global1.e) << (~var_2.d.x % 32u)), 1i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = ~vec2<u32>(countOneBits(global1.d.x) << (_wgslsmith_dot_vec3_u32(arg_3.e.zyy, ~arg_0.d.yyx) % 32u), arg_0.b);
    let var_1 = func_5(_wgslsmith_add_i32(firstTrailingBit(arg_1.b), ~0i), min(~countOneBits(-u_input.a.x), -20343i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(229f + arg_1.c.a), _wgslsmith_f_op_f32(-arg_0.a)))), min(1u, arg_3.c.d.x), arg_0.c, ~global1.d ^ arg_0.d), 1i);
    global0 = array<vec4<f32>, 4>();
    var var_2 = func_2(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)), 151f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(arg_0.c.x))), _wgslsmith_f_op_f32(arg_0.a - func_5(-65455i, u_input.a.x, var_1, u_input.a.x).a)), _wgslsmith_mult_vec2_i32(min(select(vec2<i32>(1i, u_input.d.x), vec2<i32>(2147483647i, global1.e), true), ~arg_3.a), arg_3.a), func_2(func_2(func_2(Struct_2(global1.c, arg_3.a, global1.a, vec4<u32>(1u, arg_1.e.x, var_0.x, 53736u), arg_3.a.x)))).a, vec4<u32>(func_1().d.x, arg_1.e.x, 4294967295u, 4084u), ~u_input.a.x));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * -2019f)), -106f, var_1.a, _wgslsmith_div_f32(445f, _wgslsmith_f_op_f32(825f - -1241f))))), max(-global1.b, u_input.d.yz) >> (vec2<u32>(~max(1u, 1u), ~countOneBits(0u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(193f, global1.a.x, arg_3.c.c.x, -1648f))) * var_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, 459f, -204f, 166f), vec4<f32>(-825f, -1586f, -337f, -1248f), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1465f, 2318f, var_2.a.x) + global1.a)), all(vec3<bool>(true, true, true))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b ^ var_1.d.x, _wgslsmith_mult_u32(1u, 1u), firstTrailingBit(var_2.d.x), 4294967295u), vec4<u32>(~27446u, 4294967295u, 57859u, 63764u)), var_1.d, _wgslsmith_add_vec4_u32(reverseBits(max(vec4<u32>(var_1.d.x, 20785u, 1u, 1u), vec4<u32>(var_0.x, arg_2.x, global1.d.x, u_input.b))), ~arg_0.d)), i32(-1i) * -33955i);
    return ~_wgslsmith_mod_vec4_u32(var_1.d, vec4<u32>(_wgslsmith_clamp_u32(arg_3.c.d.x, _wgslsmith_dot_vec2_u32(arg_3.c.d.wx, vec2<u32>(4294967295u, global1.d.x)), 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, 4294967295u), var_2.d.zy & vec2<u32>(10471u, var_3.d.x)), _wgslsmith_add_u32(~4553u, 0u), ~func_1().d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(func_6(func_1(), Struct_3(vec2<i32>(global1.e, -1i), 15811i, Struct_1(146f, 10421u, vec3<f32>(-163f, -1219f, global1.c.x), vec4<u32>(0u, u_input.b, 3545u, 4294967295u)), 53602u, global1.d), ~global1.d, Struct_3(u_input.d.zz, 83566i, Struct_1(global1.a.x, global1.d.x, vec3<f32>(global1.c.x, global1.a.x, 719f), vec4<u32>(0u, 68590u, 28444u, global1.d.x)), u_input.c.x, global1.d))), global1.d), ~_wgslsmith_div_vec4_u32(abs(~global1.d), global1.d));
    global1 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) - vec4<f32>(-852f, global1.a.x, -1101f, global1.c.x))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x, global1.b.x), _wgslsmith_div_vec2_i32(-u_input.a.xx, vec2<i32>(2147483647i, -27054i)), min(global1.b, global1.b >> (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u)))), global1.c, _wgslsmith_add_vec4_u32(select(~vec4<u32>(global1.d.x, u_input.c.x, 104896u, 1u), ~global1.d, true), ~global1.d), ~(-14325i)));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, -1453f, -1286f, _wgslsmith_f_op_f32(-1966f - 1000f)))), vec2<i32>(-1i) * -abs(select(vec2<i32>(-6900i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), false)), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(32290u, 4u)] * global1.c), _wgslsmith_mult_vec4_u32(global1.d, vec4<u32>(global1.d.x, ~func_2(Struct_2(vec4<f32>(-2275f, global1.c.x, 422f, -470f), vec2<i32>(-12375i, 11423i), vec4<f32>(global1.c.x, global1.a.x, -220f, global1.c.x), global1.d, u_input.a.x)).d.x, 35175u, ~(~0u))), global1.e);
    let var_1 = global1.a.x;
    var_0 = 104906u;
    var var_2 = true;
    var var_3 = Struct_1(562f, _wgslsmith_div_u32(1u, select(4846u, ~func_4(Struct_1(-1163f, 66466u, vec3<f32>(189f, 191f, -441f), vec4<u32>(u_input.b, 59419u, 1u, 4294967295u)), Struct_2(global0[_wgslsmith_index_u32(0u, 4u)], u_input.d.xz, global1.c, global1.d, global1.e)).d.x, _wgslsmith_div_f32(global1.a.x, 158f) <= _wgslsmith_f_op_f32(824f - global1.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-275f * global1.c.x), global1.c.x, global1.c.x) + func_1().c), vec3<f32>(global1.a.x, func_1().a, global1.c.x)), ~(~vec4<u32>(~0u, ~3940u, func_1().b, ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i));
}

