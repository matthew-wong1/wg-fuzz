struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-379f, 0i, vec3<f32>(-1687f, -1557f, -1000f), vec4<bool>(true, true, true, true), false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(474f * global0.a)))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(var_1.c, _wgslsmith_f_op_vec3_f32(min(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(549f, arg_0.a, var_1.a) * vec3<f32>(420f, var_1.a, -417f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(589f)))), _wgslsmith_f_op_vec2_f32(-arg_0.c.xy)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), var_1.c.x));
    var var_4 = !any(!select(global0.d.wxy, !vec3<bool>(arg_0.e, false, false), true));
    return !var_1.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, i32(-1i) * -20416i), 45195i | -global0.b) << (52875u % 32u), global0.b);
    var var_1 = Struct_1(1f, -u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.c))), arg_0.d, false);
    var var_2 = arg_0;
    let var_3 = global0.c;
    var var_4 = Struct_1(-846f, -_wgslsmith_dot_vec2_i32(-abs(var_0), -vec2<i32>(var_1.b, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, global0.c.x, 914f)) + global0.c)), vec4<bool>(select(true, _wgslsmith_sub_u32(arg_1.x, arg_1.x) >= abs(u_input.a.x), any(select(arg_0.d.wx, vec2<bool>(var_2.d.x, false), vec2<bool>(true, false)))), firstTrailingBit(abs(-1i)) != 79837i, var_1.e, false), true);
    return 3571u;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(reverseBits(u_input.a), u_input.a);
    var var_1 = arg_3;
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(1u, func_4(Struct_1(331f, -1i, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-160f, arg_2.c.x, 172f))), func_3(Struct_1(arg_3.c.x, arg_2.b, var_1.c, arg_2.d, arg_3.e)), !arg_2.d.x), ~select(vec2<u32>(u_input.a.x, 11782u), u_input.a.zx, arg_2.e))), var_0.x);
    global0 = Struct_1(1199f, 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3.c)) - var_1.c)), !global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * var_1.a) - arg_2.c.x)) != _wgslsmith_f_op_f32(-794f + 186f));
    let var_3 = ~var_2.x;
    return Struct_1(global0.c.x, arg_3.b, _wgslsmith_f_op_vec3_f32(select(global0.c, arg_3.c, select(func_3(arg_3).yyz, vec3<bool>(true, true, false), arg_2.d.xwz))), !func_3(Struct_1(-650f, arg_3.b, _wgslsmith_f_op_vec3_f32(-var_1.c), vec4<bool>(arg_2.d.x, false, var_1.d.x, arg_1), global0.d.x)), all(select(func_3(arg_3), !arg_2.d, !global0.d)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    global0 = func_2(vec3<u32>(func_4(func_2(vec3<u32>(arg_1.x, arg_1.x, 7856u), true, Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d, true), arg_0), vec2<u32>(u_input.a.x, u_input.a.x)), 1u, ~(~u_input.a.x)) & u_input.a.xzx, !(!arg_2.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + arg_2.a)), -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(39406i, arg_2.b)), select(vec2<i32>(-10473i, global0.b), vec2<i32>(u_input.e, arg_0.b), vec2<bool>(true, false))), func_2(u_input.a.xyx, global0.d.x, func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 32856u, u_input.a.x), u_input.a.wwx), any(arg_0.d.zw), Struct_1(-1000f, u_input.c, arg_2.c, vec4<bool>(false, false, arg_0.d.x, true), false), Struct_1(316f, -14831i, vec3<f32>(arg_2.a, global0.a, global0.a), arg_0.d, true)), arg_2).c, select(global0.d, func_2(~u_input.a.wzx, true, func_2(arg_1.xzy, true, Struct_1(arg_0.c.x, 1i, global0.c, vec4<bool>(arg_0.e, arg_2.e, true, true), true), arg_2), func_2(u_input.a.wyz, global0.e, Struct_1(153f, -60315i, vec3<f32>(-162f, arg_0.a, arg_0.a), global0.d, global0.e), arg_0)).d, vec4<bool>(true, all(vec3<bool>(arg_2.e, false, false)), arg_0.d.x, global0.d.x)), all(func_2(abs(vec3<u32>(0u, 43077u, 24012u)), global0.a <= -1000f, func_2(vec3<u32>(arg_1.x, 1u, 3186u), global0.d.x, Struct_1(global0.a, u_input.c, vec3<f32>(arg_0.c.x, arg_2.c.x, arg_2.c.x), global0.d, false), arg_2), arg_2).d.yx)), func_2(vec3<u32>(abs(u_input.a.x) | ~36416u, select(arg_1.x, select(u_input.a.x, 89731u, arg_2.d.x), all(arg_2.d.zw)), u_input.a.x), false, Struct_1(global0.c.x, -47521i, vec3<f32>(_wgslsmith_f_op_f32(round(-2971f)), _wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_div_f32(954f, arg_2.c.x)), vec4<bool>(!global0.d.x, true, global0.d.x | false, all(vec3<bool>(arg_2.d.x, false, arg_0.d.x))), arg_2.d.x), arg_0));
    global0 = Struct_1(-275f, -2147483647i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, global0.a, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, arg_2.c.x, arg_0.c.x), _wgslsmith_f_op_vec3_f32(-arg_2.c), vec3<bool>(global0.d.x, arg_0.d.x, arg_2.d.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c))))), global0.d, arg_2.e);
    global0 = arg_0;
    global0 = arg_2;
    let var_0 = ~vec2<i32>(reverseBits(u_input.b), u_input.d >> (u_input.a.x % 32u));
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(-1000f, -2147483647i, _wgslsmith_f_op_vec3_f32(-global0.c), select(vec4<bool>(all(!vec4<bool>(false, false, false, global0.d.x)), func_5(Struct_1(-2221f, -4386i, vec3<f32>(-2180f, global0.c.x, global0.a), global0.d, global0.d.x), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(90121u, u_input.a.x, 62486u, u_input.a.x)), func_2(u_input.a.wyz, false, Struct_1(-879f, u_input.d, global0.c, global0.d, global0.d.x), Struct_1(global0.a, global0.b, global0.c, global0.d, global0.e))), global0.d.x, true), func_2(u_input.a.xyz, 0u < (0u >> (u_input.a.x % 32u)), func_2(vec3<u32>(arg_1, 14199u, 53332u), false, func_2(vec3<u32>(u_input.a.x, arg_1, u_input.a.x), global0.e, Struct_1(global0.a, arg_2, vec3<f32>(-1000f, global0.c.x, global0.a), global0.d, global0.e), Struct_1(1798f, 2586i, global0.c, vec4<bool>(global0.e, global0.e, global0.d.x, global0.d.x), false)), Struct_1(global0.c.x, 0i, vec3<f32>(global0.a, global0.c.x, global0.c.x), global0.d, global0.d.x)), Struct_1(_wgslsmith_f_op_f32(min(446f, global0.a)), ~arg_2, vec3<f32>(-373f, global0.a, global0.c.x), vec4<bool>(global0.e, true, true, global0.e), true)).d, true), !global0.d.x);
    let var_0 = -629f;
    var var_1 = ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -1i, max(0i, u_input.e), 0i, countOneBits(arg_0.x)), vec4<i32>(12631i, 2147483647i, func_2(u_input.a.yxw, false, Struct_1(var_0, -2147483647i, global0.c, global0.d, global0.d.x), Struct_1(global0.a, -1i, global0.c, global0.d, global0.d.x)).b, global0.b)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-109f)) * _wgslsmith_f_op_f32(max(-1224f, global0.a)));
    var var_3 = Struct_1(-720f, -arg_0.x, _wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-848f * -1000f) - _wgslsmith_f_op_f32(668f - 151f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -978f))))), vec4<bool>(global0.e, true, func_3(func_2(u_input.a.yzx ^ u_input.a.zyx, true, func_2(u_input.a.xyx, global0.d.x, Struct_1(var_0, u_input.c, global0.c, vec4<bool>(true, global0.d.x, global0.e, true), global0.d.x), Struct_1(var_0, 1i, vec3<f32>(2006f, global0.a, global0.c.x), vec4<bool>(false, false, false, global0.d.x), true)), Struct_1(205f, -30851i, vec3<f32>(-1234f, 260f, -2097f), vec4<bool>(false, false, global0.d.x, global0.e), true))).x, false), global0.e);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -454f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + var_3.c.x) - -847f)) - var_3.a), arg_0.x, var_3.c, select(select(!vec4<bool>(true, global0.e, var_3.e, true), !select(var_3.d, vec4<bool>(global0.e, false, var_3.d.x, true), global0.d), vec4<bool>(all(var_3.d), all(global0.d), global0.e, true | var_3.e)), var_3.d, select(!(!vec4<bool>(var_3.d.x, global0.e, var_3.d.x, false)), select(vec4<bool>(global0.d.x, true, var_3.e, true), !vec4<bool>(true, true, var_3.d.x, var_3.d.x), vec4<bool>(false, global0.d.x, global0.e, true)), vec4<bool>(global0.c.x > -845f, !var_3.d.x, arg_1 >= 22906u, false))), var_3.e);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = arg_0;
    global0 = func_2(u_input.a.yyw, true, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1849f, arg_0.c.x), arg_0.c.x)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.b, arg_0.b), countOneBits(vec2<i32>(-20017i, global0.b))), vec2<i32>(8228i ^ global0.b, i32(-1i) * -1485i)), arg_1.c, vec4<bool>(-1418f != _wgslsmith_f_op_f32(floor(global0.c.x)), true, true, all(global0.d.xyz) || true), true), Struct_1(arg_1.c.x, 9077i, global0.c, global0.d, false));
    var var_0 = -abs(-u_input.c);
    var var_1 = Struct_1(arg_1.a, 3373i, arg_0.c, arg_0.d, global0.e);
    let var_2 = _wgslsmith_mult_u32(~u_input.a.x, 4294967295u);
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_6(func_1(vec4<i32>(-13006i, global0.b | 2989i, -2147483647i, reverseBits(-46652i)), _wgslsmith_add_u32(u_input.a.x, firstTrailingBit(35234u)), -7030i), func_1(vec4<i32>(u_input.c, 0i, global0.b << (u_input.a.x % 32u), global0.b), 7453u, global0.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 13771i, global0.b), vec3<i32>(2147483647i, 2147483647i, -385i), vec3<i32>(global0.b, u_input.c, 1i)), ~vec3<i32>(global0.b, -17133i, global0.b), !global0.d.zwy), vec3<i32>(global0.b << (4294967295u % 32u), -2147483647i, _wgslsmith_clamp_i32(global0.b, 2147483647i, u_input.b))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), -global0.b, -22364i), vec3<i32>(~1i, _wgslsmith_clamp_i32(global0.b, global0.b, -9319i), -u_input.e))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0.c)), vec3<f32>(global0.a, -781f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.x)))), global0.d.x)), vec4<bool>(false, func_3(Struct_1(_wgslsmith_f_op_f32(1610f - global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, -12561i, u_input.b, -10149i), vec4<i32>(0i, 2147483647i, global0.b, u_input.d)), _wgslsmith_f_op_vec3_f32(round(global0.c)), !vec4<bool>(global0.d.x, global0.d.x, true, true), any(global0.d))).x, select(true, global0.d.x && (u_input.c <= global0.b), true), false), global0.d.x);
    global0 = func_2(~vec3<u32>(firstLeadingBit(u_input.a.x), 14643u, u_input.a.x), !all(!(!vec2<bool>(global0.e, global0.d.x))), func_2(u_input.a.yww, func_2(~u_input.a.yzz ^ (vec3<u32>(u_input.a.x, 11077u, u_input.a.x) >> (u_input.a.zzz % vec3<u32>(32u))), all(global0.d.ww), func_1(firstTrailingBit(vec4<i32>(-2147483647i, 1530i, -7350i, -3954i)), 1u, -1i), func_2(u_input.a.xzy << (vec3<u32>(53018u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), all(global0.d.zz), func_1(vec4<i32>(u_input.b, global0.b, 30232i, global0.b), 7292u, 0i), Struct_1(global0.c.x, 40968i, global0.c, global0.d, global0.d.x))).e, func_2(max(u_input.a.yzw, vec3<u32>(u_input.a.x, u_input.a.x, 1u)), global0.d.x, func_1(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b, u_input.b, 11181i, global0.b), vec4<i32>(global0.b, -12691i, global0.b, u_input.b)), _wgslsmith_div_u32(u_input.a.x, 0u), -2147483647i), Struct_1(1f, firstLeadingBit(global0.b), func_1(vec4<i32>(-7527i, 52015i, -9155i, u_input.d), 4294967295u, u_input.e).c, select(global0.d, global0.d, global0.d), true)), func_1(firstLeadingBit(~vec4<i32>(u_input.e, global0.b, 21046i, 0i)), ~u_input.a.x, 54498i)), func_1(_wgslsmith_clamp_vec4_i32(-max(vec4<i32>(global0.b, 44503i, global0.b, u_input.b), vec4<i32>(u_input.c, 2147483647i, 1i, global0.b)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 13081i, u_input.e, 2147483647i), vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i))), vec4<i32>(1i, global0.b, select(u_input.e, -4592i, global0.d.x), u_input.c)), _wgslsmith_dot_vec3_u32(~(u_input.a.xyw ^ vec3<u32>(4294967295u, 41054u, 4294967295u)), select(u_input.a.yzy, u_input.a.yww, u_input.c <= global0.b)), firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 23626i, 44926i), vec3<i32>(u_input.b, -2147483647i, -49120i) | vec3<i32>(-2147483647i, u_input.b, u_input.c)))));
    var var_0 = ~(~(~u_input.a.xyz));
    let var_1 = firstLeadingBit(-firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-20074i, 43177i, global0.b), vec3<i32>(4941i, global0.b, global0.b)) << (u_input.a.wxz % vec3<u32>(32u))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.yy, -vec2<i32>(22060i, -249i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_1.yy, vec2<i32>(u_input.b, 15686i)), ~(-firstTrailingBit(u_input.e))), -global0.b, -1i);
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_6(Struct_1(global0.a, var_2.x, global0.c, vec4<bool>(global0.e, global0.e, true, global0.e), global0.d.x), Struct_1(global0.c.x, -16607i, vec3<f32>(-162f, -598f, -227f), global0.d, true))), _wgslsmith_f_op_f32(global0.a + -534f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), -1888f))))));
    global0 = func_1(max(vec4<i32>(-2147483647i, 2147483647i, var_2.x, var_1.x), vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.b), global0.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, 0i, -1i, global0.b), select(vec4<i32>(-17158i, -14558i, global0.b, -321i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_2.x), true)), 274i)), _wgslsmith_sub_u32(firstTrailingBit(var_0.x), 11526u), global0.b);
    var_2 = abs(~select(_wgslsmith_add_vec4_i32(~vec4<i32>(-45070i, -2977i, u_input.d, 0i), min(vec4<i32>(0i, global0.b, -2147483647i, global0.b), vec4<i32>(var_2.x, 2147483647i, var_1.x, 2147483647i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b, global0.b), vec4<i32>(-2147483647i, -2147483647i, var_2.x, -1i)), func_3(Struct_1(-2240f, -13345i, global0.c, vec4<bool>(true, global0.d.x, true, global0.e), false))));
    var var_4 = Struct_1(_wgslsmith_div_f32(var_3.x, func_2(vec3<u32>(~1u, var_0.x, 75508u), true, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, global0.b), vec4<i32>(var_2.x, global0.b, u_input.e, var_2.x)), 4294967295u, func_2(vec3<u32>(54072u, var_0.x, 1u), true, Struct_1(-1076f, 11615i, vec3<f32>(907f, 1000f, global0.a), global0.d, false), Struct_1(var_3.x, u_input.c, global0.c, global0.d, global0.e)).b), func_2(u_input.a.xzy, true, Struct_1(-1000f, -15294i, vec3<f32>(var_3.x, 313f, global0.c.x), vec4<bool>(false, true, true, false), global0.e), Struct_1(global0.c.x, 2147483647i, global0.c, vec4<bool>(false, true, true, false), global0.d.x))).a), select(-var_2.x, -33259i, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-global0.c.x), -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, global0.a, 2344f)))), !(!(!func_2(u_input.a.zyx, false, Struct_1(var_3.x, 9364i, global0.c, global0.d, true), Struct_1(var_3.x, var_1.x, global0.c, global0.d, false)).d)), !(!global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_4.b, var_4.b, -30022i), vec4<i32>(-33375i, var_4.b, -9544i, 46635i), vec4<i32>(u_input.c, 5748i, global0.b, var_2.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(50091i, var_2.x, 20297i, u_input.d), vec4<i32>(var_2.x, 0i, 32643i, -1i) ^ vec4<i32>(13099i, -4005i, global0.b, global0.b)), abs(-vec4<i32>(7648i, var_2.x, -36831i, -14272i))), _wgslsmith_mod_u32(u_input.a.x, 1u), abs(-30132i)).b, -vec3<i32>(i32(-1i) * -var_1.x, i32(-1i) * -1i, -(~global0.b)), global0.c, var_0.x);
}

