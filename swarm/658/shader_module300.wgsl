struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(58580i, -2147483647i)), vec2<i32>(global0.x, 29303i) << (vec2<u32>(21548u, 52535u) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.x, global0.x), vec2<i32>(1i, global0.x), vec2<bool>(arg_0, arg_0)), -vec2<i32>(global0.x, global0.x)), -1i)), min(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-79023i, global0.x), vec2<i32>(global0.x, 6315i)), max(vec2<i32>(max(-13725i, -11290i), reverseBits(global0.x)), -(vec2<i32>(-1i, global0.x) << (vec2<u32>(u_input.a, 38743u) % vec2<u32>(32u))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1982f - -477f))) + -904f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1202f - 364f))) + -1808f), 1f));
    let var_1 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, !arg_0), vec2<bool>(!arg_0 & arg_0, !arg_0)), !arg_0 || false);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1542f, 1000f, -2188f) + vec3<f32>(-2058f, -2549f, 153f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2118f, -443f, 181f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-617f, -1000f, 388f))))))), vec3<f32>(1f, 1f, 1f));
    var var_3 = 7802u;
    return vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(~vec2<u32>(112074u, 40029u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(52806u, u_input.a), vec2<u32>(85570u, 26659u))), ~u_input.a, 42198u | (u_input.a << (firstTrailingBit(u_input.a) % 32u)), ~4294967295u) >> (~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 64194u, u_input.a, 1u)), vec4<u32>(66773u, u_input.a, u_input.a, 70320u))) % vec4<u32>(32u));
}

fn func_2() -> vec2<i32> {
    global0 = vec2<i32>(global0.x, global0.x);
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(abs(80237u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~u_input.a, ~4294967295u), _wgslsmith_mod_vec4_u32(func_3(u_input.a <= u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 40988u, 40271u), vec4<u32>(50398u, 50685u, 0u, u_input.a))), abs(~(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, 20446u, 1u, 39563u))));
    let var_1 = vec2<i32>(-31571i, global0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1937f, 2442f, -1000f, -122f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-456f, _wgslsmith_f_op_f32(floor(-900f)), 1000f, _wgslsmith_f_op_f32(trunc(978f))))), ~abs(vec3<u32>(~var_0.x, u_input.a, var_0.x)), var_1.x, ~vec4<u32>(11565u, 27577u, 79835u, ~(~41137u)));
    global0 = _wgslsmith_mod_vec2_i32(~(vec2<i32>(var_1.x, -global0.x) | -(var_1 << (vec2<u32>(var_0.x, var_2.d.x) % vec2<u32>(32u)))), vec2<i32>(5477i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.x, var_1.x, global0.x, 2147483647i), vec4<i32>(var_1.x, var_1.x, -1621i, 4818i)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(16838i, -2147483647i, var_2.c, 14803i)), countOneBits(vec4<i32>(2147483647i, 1263i, var_1.x, 41770i))))));
    return max(-_wgslsmith_sub_vec2_i32(var_1, var_1), _wgslsmith_sub_vec2_i32(-var_1 | countOneBits(abs(var_1)), max(var_1, -vec2<i32>(39915i, -1i) & ~var_1)));
}

fn func_1() -> Struct_1 {
    global0 = -select(vec2<i32>(1i >> (~u_input.a % 32u), 9146i), abs(func_2() >> ((vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(0u, 49889u)) % vec2<u32>(32u))), vec2<bool>(true, true));
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(global0.x, global0.x), global0.x), -1i << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 36397u), vec2<u32>(u_input.a, 96917u))) % 32u)), vec2<i32>(global0.x, -min(-global0.x, func_2().x)));
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_add_u32(1u | func_3(!any(vec3<bool>(false, true, false))).x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(60153u, u_input.a, 4294967295u, u_input.a), abs(vec4<u32>(12867u, 1u, 1u, u_input.a))), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 9051u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 7452u)), ~vec4<u32>(69670u, u_input.a, 4294967295u, u_input.a)))));
    var_0 = firstTrailingBit(global0.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-991f, -430f, 1161f, -305f) - vec4<f32>(-817f, 1210f, 387f, -2025f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1178f, 1187f, 652f, 1818f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2052f, -1000f, -697f, 316f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1283f, -664f, 1000f, 970f))), all(vec3<bool>(true, true, true))))))), vec3<u32>(u_input.a, max(_wgslsmith_mult_u32(65632u, 37083u) & _wgslsmith_sub_u32(var_1, 0u), reverseBits(40135u)), 4294967295u), ~(-37221i), ~min(~(~vec4<u32>(u_input.a, 1u, var_1, 11348u)), _wgslsmith_sub_vec4_u32(vec4<u32>(26013u, 27937u, 61430u, 1u), ~vec4<u32>(var_1, 4294967295u, u_input.a, 1u))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.a.xz;
    let var_1 = _wgslsmith_f_op_f32(select(arg_3.a.x, func_1().a.x, var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * 2337f))))));
    let var_2 = ~(~(~max(~3482u, arg_3.d.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), -294f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(-var_0.x), any(vec3<bool>(true, arg_1, arg_1))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-254f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(exp2(var_0.x)))), arg_3.d.xxy, func_2().x, arg_3.d & ~min(vec4<u32>(13321u, 50602u, 4294967295u, u_input.a), ~arg_3.d));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(var_4.a, _wgslsmith_f_op_vec4_f32(-var_4.a))), _wgslsmith_clamp_vec3_u32(arg_3.d.wyx, arg_3.d.yyy, arg_3.d.wxz), 27483i, arg_3.d);
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = vec3<bool>(true, true, any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
    var_0 = vec3<bool>(!any(vec4<bool>(any(vec3<bool>(true, var_0.x, true)), var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), global0.x == 58349i)), !var_0.x, true);
    var var_1 = min(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mod_u32(4248u, arg_0.b.x)), 3193u), _wgslsmith_mult_u32(~1u, 1u));
    let var_2 = arg_0.a.x;
    let var_3 = _wgslsmith_div_i32(arg_0.c, countOneBits(global0.x));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), ~(~(~reverseBits(vec3<u32>(32189u, u_input.a, 17456u)))), i32(-1i) * -global0.x, abs(vec4<u32>(_wgslsmith_add_u32(u_input.a, 3817u), ~u_input.a | u_input.a, 4294967295u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-454f, var_1, _wgslsmith_f_op_f32(exp2(var_0.a.x)), var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))) - vec4<f32>(-2364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, 414f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-864f + 450f))), _wgslsmith_f_op_f32(1187f + var_1))), _wgslsmith_mod_vec3_u32(var_0.d.zzy, func_5(func_4(_wgslsmith_f_op_f32(select(var_0.a.x, var_1, true)), true, -40503i, func_1()))), func_1().c, func_4(var_1, false, -_wgslsmith_mult_i32(var_0.c, global0.x) >> (var_0.d.x % 32u), func_4(824f, true, reverseBits(global0.x), Struct_1(var_0.a, ~var_0.d.yww, func_1().c, ~var_0.d))).d);
    var var_3 = func_1();
    var var_4 = func_1();
    let var_5 = func_1();
    let var_6 = ~(~(vec3<i32>(-1i) * -(~vec3<i32>(1i, var_2.c, var_5.c))));
    var var_7 = _wgslsmith_f_op_f32(round(-558f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(882f, var_4.a.x)))), var_6, ~0u, var_6);
}

