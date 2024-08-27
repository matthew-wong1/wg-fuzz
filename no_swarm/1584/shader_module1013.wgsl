struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = ~arg_0.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(270f + -2507f), -1637f, _wgslsmith_f_op_f32(f32(-1f) * -379f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1123f - 550f), _wgslsmith_f_op_f32(max(375f, 998f)), _wgslsmith_f_op_f32(136f - -1475f))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1462f, 259f))))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-869f))), -727f))));
    return ~(~(~vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.c.x, 5265u))) << (vec4<u32>(~(~firstTrailingBit(33859u)), ~_wgslsmith_mult_u32(arg_0.b.x, ~89650u), _wgslsmith_add_u32(~select(1836u, arg_0.b.x, true), _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, arg_0.b.x), 0u)), 0u) % vec4<u32>(32u));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = !(true | arg_0);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-512f - -395f), _wgslsmith_f_op_f32(trunc(-1347f)), _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, -1024f, 105f) - vec3<f32>(908f, -1092f, -360f)))))))));
    var var_2 = Struct_1(vec2<i32>(u_input.a.x, u_input.b.x), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_3(Struct_1(vec2<i32>(u_input.a.x, u_input.c), vec4<u32>(39684u, 48904u, 17694u, 3293u), vec2<u32>(0u, 1u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(79786u, 58268u, 4294967295u, 4294967295u), vec4<u32>(15587u, 0u, 42619u, 1u)), abs(22981u), ~39608u), ~abs(vec4<u32>(0u, 1u, 4294967295u, 0u)))), _wgslsmith_mult_vec2_u32(firstTrailingBit(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(28910u, 0u), vec2<u32>(115031u, 1u)))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u)), vec2<u32>(4294967295u, 24434u), vec2<u32>(0u, 42671u))));
    var_2 = Struct_1(~vec2<i32>(min(~u_input.b.x, 0i), (var_2.a.x | u_input.b.x) & -22734i), var_2.b, ~var_2.b.xx);
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x * var_1.x)));
    return -(var_2.a.x | var_2.a.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = ~4294967295u;
    let var_1 = Struct_1(vec2<i32>(select(-2147483647i, firstLeadingBit(_wgslsmith_add_i32(23740i, arg_2)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), ~(-(u_input.c ^ 50290i))), ~(~(~(~vec4<u32>(8351u, 4294967295u, 0u, 4294967295u)))), arg_1.b.wy);
    var var_2 = -3211i;
    var_2 = abs(_wgslsmith_sub_i32(-6859i, ~(-func_2(true))));
    var var_3 = _wgslsmith_sub_vec2_i32(~abs(var_1.a) >> (firstLeadingBit(~min(vec2<u32>(arg_0, 1724u), vec2<u32>(4294967295u, 75672u))) % vec2<u32>(32u)), abs(-select(arg_1.a, vec2<i32>(-14098i, 51075i), vec2<bool>(false, false))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(-abs(~(-u_input.a.yx)), arg_0.b, ~abs(~arg_0.c));
    var var_1 = 24026i;
    var var_2 = vec2<bool>(false, true);
    var_2 = !select(vec2<bool>(false, true), select(select(vec2<bool>(true, var_2.x), vec2<bool>(true, true), true), select(!vec2<bool>(false, var_2.x), vec2<bool>(true, true), vec2<bool>(var_2.x, var_2.x)), all(!vec4<bool>(var_2.x, var_2.x, var_2.x, true))), !select(!vec2<bool>(var_2.x, false), !vec2<bool>(false, var_2.x), var_2.x));
    var var_3 = arg_0;
    return func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_0.b, abs(~var_0.b)), reverseBits(vec4<u32>(0u, var_0.b.x, var_0.c.x << (var_3.b.x % 32u), _wgslsmith_mod_u32(var_3.b.x, arg_0.c.x)))), arg_0, -(~var_3.a.x));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_5(func_4(var_0.c.x >> (arg_0.c.x % 32u), arg_0, func_2(_wgslsmith_f_op_f32(sign(1000f)) > -1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -219f), -2047f)))), 1u);
    let var_1 = arg_0;
    let var_2 = select(select(vec2<bool>(14954u > var_1.b.x, true), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(74027u == var_0.b.x, true), _wgslsmith_sub_u32(21424u, var_0.c.x) < var_0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(326f, 417f)) + -1071f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-615f + 887f) - _wgslsmith_f_op_f32(-975f - -148f))));
    var var_3 = _wgslsmith_clamp_u32(~arg_0.b.x, abs((var_0.c.x ^ 0u) ^ 1u), max(~var_1.c.x ^ min(23289u, min(1u, var_0.b.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.b.ywx, var_1.b.wyy), 13100u)));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = !select(select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(false, false, false)) | false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), false), vec2<bool>(select(any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, false, false, false))), true));
    var var_1 = -304f;
    var var_2 = u_input.b.yxy;
    let var_3 = func_5(func_1(arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-133f - -854f), 1f), abs(arg_2.x) | ~10171u);
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(~var_2.xy, arg_0.a), countOneBits(~(~abs(arg_1.b))), _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(var_3.b.xy, ~arg_2), vec2<u32>(var_3.c.x, 4294967295u)));
    return Struct_1(var_4.a, ~arg_1.b, var_4.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(Struct_1(reverseBits(vec2<i32>(0i, 37207i)), vec4<u32>(2589u << (1u % 32u), _wgslsmith_sub_u32(0u, 0u), 0u, firstLeadingBit(4294967295u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 76990u), ~vec2<u32>(30843u, 304u)))), func_5(func_4(func_5(Struct_1(vec2<i32>(u_input.a.x, 9592i), vec4<u32>(0u, 1u, 13430u, 44727u), vec2<u32>(1u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -411f), ~0u).c.x, func_1(func_5(Struct_1(u_input.a.xz, vec4<u32>(41034u, 25097u, 36698u, 0u), vec2<u32>(1u, 30977u)), -571f, 0u)), u_input.b.x), 1130f, abs(25897u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), func_3(Struct_1(u_input.b.wx, vec4<u32>(1u, 1u, 1u, 1u), ~vec2<u32>(7058u, 36418u))).wz));
    var var_1 = _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(var_0.a, firstTrailingBit(vec2<i32>(var_0.a.x, var_0.a.x)) ^ -vec2<i32>(2147483647i, var_0.a.x)), func_5(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-447f)) - 1216f), var_0.c.x).a | u_input.b.zw);
    var_1 = func_4(~var_0.c.x, Struct_1(var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(14779u), 1u, 1u, 0u), vec4<u32>(~var_0.c.x, var_0.b.x, var_0.b.x, _wgslsmith_sub_u32(var_0.c.x, 11006u))), vec2<u32>(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x << (4294967295u % 32u)), ~(~var_0.b.x))), ~(-abs(18152i))).a;
    var var_2 = Struct_1(vec2<i32>(var_1.x, -4208i), var_0.b, abs(~var_0.b.wy));
    var var_3 = vec2<i32>(-(_wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(1i, var_2.a.x)) << (var_0.c.x % 32u)), func_5(Struct_1(~var_2.a, var_0.b, func_5(func_6(Struct_1(vec2<i32>(-2147483647i, var_0.a.x), var_0.b, vec2<u32>(4294967295u, 23330u)), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), var_2.b, var_0.b.xz), var_0.b.ww), _wgslsmith_f_op_f32(f32(-1f) * -1279f), _wgslsmith_mult_u32(1u, var_2.b.x)).b.yx), -1751f, 4294967295u).a.x);
    var_2 = Struct_1(vec2<i32>(var_1.x, countOneBits(-2147483647i)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.c.x, var_0.b.x), ~min(46822u, 0u)), 11186u, var_0.b.x), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~var_0.c.x), var_0.c.x), select(~var_2.b.ww, vec2<u32>(~4294967295u, ~4294967295u), true)));
    var var_4 = vec4<bool>(!(!all(vec4<bool>(true, true, true, true))), true, !(true || any(vec2<bool>(true, true))), true);
    var_2 = Struct_1(var_0.a, ~(~vec4<u32>(_wgslsmith_mod_u32(var_0.b.x, var_2.c.x), var_0.c.x ^ 0u, 73738u, ~0u)), var_2.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(f32(-1f) * -398f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))) + _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(-208f, -836f))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(516f - -314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1073f + 185f)))), _wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1276f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -281f)))))), ~vec2<u32>(_wgslsmith_mod_u32(var_0.c.x | var_0.b.x, countOneBits(65547u)), var_0.b.x));
}

