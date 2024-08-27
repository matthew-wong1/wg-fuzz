struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-827f, _wgslsmith_f_op_f32(min(-2365f, 113f))))), -2104f));
    return ~_wgslsmith_mult_u32(~abs(~u_input.c.x), global0.a.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = -14719i;
    let var_1 = arg_1.b.a;
    let var_2 = 1116f;
    var_0 = select(arg_1.b.c, _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(abs(global0.b.c))), true && (func_3(vec4<bool>(true, false, true, true)) > _wgslsmith_dot_vec4_u32(arg_1.b.a, vec4<u32>(arg_0.x, var_1.x, u_input.d, 16266u)))) ^ global0.b.b.x;
    var_0 = reverseBits(-reverseBits(min(_wgslsmith_div_i32(-1i, 1i), -30369i)));
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    global0 = Struct_3(u_input.c.xz, arg_2, -_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, ~18060i), vec2<i32>(39128i & arg_1.c.b.x, ~global0.c.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(1041f - arg_1.b.x))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(arg_1.b + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(397f, var_0.x), vec2<f32>(var_0.x, var_0.x), vec2<bool>(arg_3.x, arg_3.x)))) - arg_1.b), vec2<f32>(arg_1.b.x, arg_1.b.x), !(_wgslsmith_f_op_f32(-arg_1.b.x) >= _wgslsmith_f_op_f32(round(arg_1.b.x))))));
    var var_1 = Struct_1(abs(~_wgslsmith_mod_vec4_u32(arg_1.d.a, global0.b.a)), arg_2.b, arg_2.c);
    let var_2 = arg_1;
    return Struct_2(43347i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1093f * var_0.x)), _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(step(-1000f, 1721f)))) + vec2<f32>(-1135f, 1084f)), Struct_1(vec4<u32>(1u, 4004u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(12251u, 14313u, 4294967295u), vec3<u32>(global0.b.a.x, 1u, arg_2.a.x)), global0.b.a.x), vec2<i32>(-19319i, -_wgslsmith_div_i32(-1i, arg_1.a)), _wgslsmith_sub_i32(arg_1.a, ~firstLeadingBit(0i))), Struct_1(~countOneBits(vec4<u32>(arg_2.a.x, 4294967295u, var_2.d.a.x, 37520u)), arg_1.c.b, ~(-10556i)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    global0 = Struct_3(func_4(-(21762i ^ global0.c.x), Struct_2(1i, vec2<f32>(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(ceil(arg_1.b.x))), Struct_1(arg_1.d.a | vec4<u32>(arg_0.x, arg_0.x, global0.a.x, 0u), ~arg_1.c.b, _wgslsmith_sub_i32(arg_1.c.c, -28159i)), func_4(abs(-1i), Struct_2(u_input.a.x, vec2<f32>(735f, 850f), global0.b, Struct_1(vec4<u32>(21432u, 54388u, 4294967295u, 0u), arg_1.c.b, -16768i)), Struct_1(vec4<u32>(41513u, 38820u, global0.a.x, arg_0.x), vec2<i32>(13286i, -1i), 64042i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))).c), arg_1.d, vec4<bool>(true, true, true, true)).c.a.xw, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(min(1u, arg_0.x), arg_0.x, _wgslsmith_mult_u32(4294967295u, global0.b.a.x), arg_0.x), select(vec4<u32>(arg_1.d.a.x, 56519u, 15540u, 1u), vec4<u32>(global0.a.x, 15284u, 1016u, 0u), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), min(~vec4<u32>(u_input.c.x, 4184u, arg_1.d.a.x, global0.a.x), global0.b.a)), -vec2<i32>(32056i, func_4(arg_1.a, Struct_2(-2147483647i, arg_1.b, global0.b, arg_1.c), Struct_1(arg_1.d.a, vec2<i32>(global0.b.b.x, u_input.a.x), global0.c.x), vec4<bool>(true, true, false, false)).d.b.x), -6489i | max(select(u_input.a.x, -24931i, true), u_input.a.x)), vec2<i32>(-func_4(2147483647i, arg_1, func_4(-21376i, Struct_2(-1i, arg_1.b, arg_1.c, arg_1.c), Struct_1(vec4<u32>(global0.b.a.x, 8452u, global0.a.x, global0.b.a.x), vec2<i32>(11081i, -1i), u_input.a.x), vec4<bool>(true, true, false, true)).d, select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false)).c.b.x, arg_1.a));
    global0 = Struct_3(vec2<u32>(arg_0.x, (arg_1.d.a.x | abs(17886u)) & (693u | ~arg_1.c.a.x)), global0.b, _wgslsmith_add_vec2_i32(min(-(arg_1.c.b | vec2<i32>(28457i, global0.c.x)), vec2<i32>(_wgslsmith_mult_i32(arg_1.d.c, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.c, 51158i, global0.c.x), vec3<i32>(-2147483647i, -1i, global0.c.x)))), global0.b.b));
    global0 = Struct_3(max(~(~vec2<u32>(1u, arg_0.x)), global0.a), global0.b, vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, arg_1.a, _wgslsmith_dot_vec2_i32(global0.b.b, vec2<i32>(2147483647i, global0.b.b.x)))), 2147483647i));
    let var_0 = Struct_1(~(arg_1.c.a >> (global0.b.a % vec4<u32>(32u))), -u_input.b, ~(~(i32(-1i) * -1i)));
    let var_1 = 85857u >= firstLeadingBit(_wgslsmith_mod_u32(49210u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.b.a.zxy, vec3<u32>(50922u, arg_0.x, 0u)), func_4(23524i, arg_1, Struct_1(vec4<u32>(0u, var_0.a.x, var_0.a.x, arg_1.d.a.x), vec2<i32>(2147483647i, 0i), -37018i), vec4<bool>(false, false, false, false)).d.a.x)));
    return Struct_3(~(~vec2<u32>(1u, 0u | arg_0.x)), func_4(2147483647i, Struct_2(arg_1.d.c, arg_1.b, Struct_1(var_0.a, vec2<i32>(var_0.b.x, u_input.a.x) ^ var_0.b, abs(-2147483647i)), Struct_1(var_0.a, select(global0.b.b, var_0.b, vec2<bool>(var_1, var_1)), ~u_input.a.x)), func_4(~(u_input.a.x | u_input.a.x), Struct_2(2147483647i | global0.c.x, vec2<f32>(1203f, 425f), Struct_1(var_0.a, vec2<i32>(-18574i, global0.b.c), arg_1.a), global0.b), Struct_1(vec4<u32>(var_0.a.x, global0.b.a.x, arg_0.x, 17486u) << (vec4<u32>(arg_0.x, 4294967295u, 0u, 13078u) % vec4<u32>(32u)), vec2<i32>(85221i, u_input.a.x), -2147483647i), select(vec4<bool>(false, var_1, false, var_1), select(vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, true, true, var_1), vec4<bool>(var_1, var_1, true, true)), !var_1)).c, vec4<bool>(!all(vec3<bool>(false, var_1, false)), true, true, !(!var_1))).c, ~var_0.b | u_input.a);
}

fn func_1() -> Struct_3 {
    global0 = Struct_3(~vec2<u32>(3051u, global0.b.a.x), global0.b, -vec2<i32>(0i, abs(_wgslsmith_mod_i32(u_input.a.x, 1i))));
    let var_0 = true;
    return func_5(u_input.c.yx, func_4(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.b.b.x, global0.b.b.x) | -28534i, 1i), Struct_2(abs(global0.b.c), vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(478u, 4294967295u, 38015u), Struct_3(u_input.e, global0.b, vec2<i32>(global0.c.x, -2147483647i)))), _wgslsmith_f_op_f32(1903f + -203f)), global0.b, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 0u), global0.b.a), select(vec2<i32>(2147483647i, -72866i), global0.b.b, true), -1i)), global0.b, !vec4<bool>(!var_0, true, true, !var_0)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    var var_0 = abs(u_input.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2229f, -553f, 249f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, 781f, -1340f, 1282f))))))));
    var var_2 = func_5(u_input.c.zz, func_4(-2911i, Struct_2(abs(_wgslsmith_clamp_i32(u_input.b.x, global0.c.x, -5278i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, -1714f), _wgslsmith_div_vec2_f32(var_1.ww, var_1.yz))), Struct_1(global0.b.a, abs(vec2<i32>(-25929i, u_input.b.x)), ~arg_2.b.c), func_1().b), Struct_1(vec4<u32>(abs(0u), _wgslsmith_mod_u32(arg_2.a.x, arg_2.b.a.x), var_0.x, _wgslsmith_div_u32(u_input.c.x, 63693u)), arg_1.c, u_input.b.x), select(!(!vec4<bool>(true, arg_0.x, false, arg_0.x)), select(!vec4<bool>(false, arg_0.x, arg_0.x, true), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !arg_0.x), vec4<bool>(any(arg_0.yx), false, !arg_0.x, !arg_0.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, 682f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1074f, var_1.x, var_1.x)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 646f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 371f))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -694f))), _wgslsmith_f_op_f32(var_1.x * -494f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -225f, _wgslsmith_f_op_f32(trunc(var_1.x)), -992f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1565f, 403f, -1314f, -208f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(vec3<bool>(true, false, false), func_1(), Struct_3(vec2<u32>(~34212u << ((0u & global0.a.x) % 32u), _wgslsmith_div_u32(~global0.a.x, u_input.d)), Struct_1(select(~vec4<u32>(4294967295u, 1u, 0u, u_input.c.x), vec4<u32>(u_input.e.x, 4294967295u, 0u, u_input.c.x), true), func_5(u_input.e, func_4(global0.c.x, Struct_2(u_input.b.x, vec2<f32>(899f, 342f), global0.b, Struct_1(global0.b.a, u_input.b, global0.c.x)), global0.b, vec4<bool>(true, true, true, false))).b.b, u_input.b.x), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.c, u_input.b.x, u_input.b.x), -vec3<i32>(-2147483647i, global0.c.x, global0.c.x)))));
    let var_0 = max(_wgslsmith_div_vec2_i32(~vec2<i32>(1475i, _wgslsmith_dot_vec2_i32(vec2<i32>(-4583i, -43011i), vec2<i32>(-2147483647i, -4513i))), vec2<i32>(0i, reverseBits(u_input.a.x))), u_input.b);
    global0 = func_5(global0.a, func_4(u_input.a.x, Struct_2(global0.c.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(942f, 1639f) - vec2<f32>(-1481f, 1084f)))), func_5(global0.b.a.wx, func_4(u_input.b.x, Struct_2(6614i, vec2<f32>(-1252f, -416f), Struct_1(vec4<u32>(72233u, global0.b.a.x, u_input.c.x, 1u), u_input.b, var_0.x), global0.b), global0.b, vec4<bool>(true, false, true, true))).b, func_6(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), func_5(global0.b.a.wx, Struct_2(6375i, vec2<f32>(402f, -829f), global0.b, Struct_1(global0.b.a, vec2<i32>(-32365i, 34685i), -53027i))), Struct_3(vec2<u32>(global0.a.x, global0.b.a.x), global0.b, u_input.a)).b), Struct_1(global0.b.a, vec2<i32>(u_input.b.x, 2147483647i) & func_4(u_input.b.x, Struct_2(var_0.x, vec2<f32>(-675f, 2652f), Struct_1(global0.b.a, var_0, global0.b.b.x), Struct_1(global0.b.a, vec2<i32>(var_0.x, global0.c.x), 2147483647i)), Struct_1(global0.b.a, global0.c, 0i), vec4<bool>(true, true, false, false)).c.b, global0.c.x), vec4<bool>(true, true, true, true)));
    global0 = func_5(min(abs(~vec2<u32>(8024u, 4294967295u)), reverseBits(global0.b.a.xx)), Struct_2(_wgslsmith_mult_i32(~u_input.b.x, reverseBits(countOneBits(2147483647i))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, -147f)) - func_4(var_0.x, Struct_2(global0.b.c, vec2<f32>(-731f, 1216f), global0.b, global0.b), global0.b, vec4<bool>(true, true, false, false)).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-179f, 672f), vec2<f32>(564f, 554f))))), global0.b, global0.b));
    var var_1 = (all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)) || true) && true;
    var var_2 = Struct_1(func_4(i32(-1i) * -min(0i, -64483i), func_4(u_input.b.x, Struct_2(-2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 380f)), Struct_1(global0.b.a, u_input.b, -48549i), global0.b), global0.b, select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), Struct_1((global0.b.a ^ global0.b.a) >> (select(global0.b.a, vec4<u32>(u_input.e.x, 92856u, global0.b.a.x, 48260u), vec4<bool>(true, false, false, true)) % vec4<u32>(32u)), -vec2<i32>(var_0.x, u_input.b.x), func_5(global0.a, func_4(global0.c.x, Struct_2(u_input.a.x, vec2<f32>(-1176f, 509f), global0.b, global0.b), Struct_1(vec4<u32>(2581u, 4294967295u, 0u, global0.b.a.x), vec2<i32>(u_input.b.x, u_input.b.x), -7114i), vec4<bool>(true, false, true, true))).b.c), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(false, true, false)), global0.b.b.x > -2147483647i, any(vec3<bool>(true, false, true))))).c.a, abs(vec2<i32>(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 7430u), global0.b.a.yz), func_4(2147483647i, Struct_2(u_input.b.x, vec2<f32>(-1027f, -2140f), Struct_1(vec4<u32>(u_input.c.x, 70760u, global0.a.x, u_input.c.x), global0.c, var_0.x), global0.b), global0.b, vec4<bool>(false, false, true, true))).b.c, u_input.b.x)), select(func_6(vec3<bool>(false, true, false), Struct_3(global0.a, Struct_1(vec4<u32>(u_input.c.x, 42369u, 34789u, u_input.d), global0.c, global0.b.c), var_0), Struct_3(vec2<u32>(4294967295u, u_input.e.x), Struct_1(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u), vec2<i32>(global0.c.x, 0i), 0i), u_input.b)).c.x, -45435i, true) & _wgslsmith_div_i32(u_input.a.x, ~(~var_0.x)));
    var var_3 = Struct_2(_wgslsmith_dot_vec2_i32(var_2.b, var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -784f), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -1805f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(233f, 317f) - vec2<f32>(-1860f, -2522f))) + vec2<f32>(1f, 1f))), global0.b, func_4(u_input.b.x, func_4(firstLeadingBit(-1i), func_4(var_0.x >> (26842u % 32u), Struct_2(var_2.c, vec2<f32>(-862f, -543f), Struct_1(global0.b.a, var_0, -2147483647i), Struct_1(var_2.a, u_input.b, u_input.a.x)), func_5(var_2.a.xz, Struct_2(var_2.c, vec2<f32>(1000f, 495f), Struct_1(global0.b.a, vec2<i32>(1i, global0.b.b.x), 46048i), Struct_1(var_2.a, global0.b.b, var_2.c))).b, vec4<bool>(true, true, true, true)), Struct_1(~global0.b.a, global0.c, -var_2.c), vec4<bool>(all(vec4<bool>(true, true, false, true)), select(false, false, true), false, true)), global0.b, select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true), all(vec4<bool>(false, true, true, true)))).d);
    var var_4 = func_4(17738i, func_4(~u_input.b.x, Struct_2(var_0.x ^ (var_2.b.x ^ -2147483647i), _wgslsmith_f_op_vec2_f32(-var_3.b), func_6(vec3<bool>(true, true, true), func_1(), func_6(vec3<bool>(true, false, true), Struct_3(global0.a, Struct_1(vec4<u32>(41767u, global0.b.a.x, 4294967295u, 103200u), vec2<i32>(var_2.c, global0.c.x), var_3.c.c), vec2<i32>(var_3.a, 51745i)), Struct_3(var_2.a.wz, global0.b, vec2<i32>(var_2.b.x, global0.c.x)))).b, Struct_1(vec4<u32>(29754u, var_2.a.x, 0u, var_2.a.x) | var_3.d.a, global0.c, ~var_2.c)), func_4(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), func_4(_wgslsmith_sub_i32(0i, 22469i), func_4(u_input.b.x, Struct_2(-2147483647i, vec2<f32>(-1308f, -597f), Struct_1(global0.b.a, vec2<i32>(-15369i, 1i), var_2.b.x), Struct_1(vec4<u32>(global0.b.a.x, u_input.e.x, 1u, 0u), global0.c, var_0.x)), Struct_1(vec4<u32>(u_input.e.x, global0.a.x, 1u, 1u), vec2<i32>(var_2.b.x, -2147483647i), global0.c.x), vec4<bool>(false, false, false, false)), Struct_1(var_2.a, vec2<i32>(-29821i, global0.b.b.x), var_3.d.c), vec4<bool>(true, true, true, true)), var_3.d, vec4<bool>(true, true, true, true)).c, !select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), true)), Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(var_2.a, global0.b.a), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, var_3.d.a.x, var_2.a.x, 1u), vec4<u32>(u_input.e.x, u_input.c.x, 0u, global0.b.a.x)) << (~vec4<u32>(u_input.d, global0.a.x, 35865u, 36193u) % vec4<u32>(32u))), var_2.b, ~u_input.b.x), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, false, false, false), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))).b.x;
    var_3 = Struct_2(_wgslsmith_div_i32(var_3.d.c, global0.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, var_3.b.x)) + var_3.b))), var_3.c, Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.d, _wgslsmith_add_u32(0u, 1u)), ~var_3.d.a.x, 31036u, u_input.c.x), -var_2.b, func_5(var_3.c.a.wz ^ vec2<u32>(global0.b.a.x, u_input.d), func_4(68757i, Struct_2(-2147483647i, var_3.b, global0.b, Struct_1(var_2.a, vec2<i32>(var_3.c.c, 80350i), u_input.b.x)), var_3.c, vec4<bool>(true, true, true, true))).b.c));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(func_5(global0.b.a.wx, Struct_2(var_0.x, var_3.b, Struct_1(var_3.d.a, vec2<i32>(var_2.b.x, -2147483647i), global0.b.c), global0.b)).b.a.xwy | ~var_3.d.a.wzy, ~var_3.c.a.zzx));
}

