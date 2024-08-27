struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = min(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, reverseBits(u_input.c)), u_input.d.yz), vec2<i32>(max(u_input.d.x, ~u_input.c), _wgslsmith_mult_i32(abs(-28155i), 1i))) ^ reverseBits(vec2<i32>(-42466i, u_input.c));
    global0 = !vec4<bool>(true, !all(vec3<bool>(true, false, global0.x)), all(!select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, true), false)), true);
    let var_1 = firstLeadingBit(u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-589f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, 924f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_div_f32(-857f, -105f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-169f, 176f, 136f, -1000f) + vec4<f32>(-307f, -1279f, -1650f, -288f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1167f, -675f, -233f, 729f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(u_input.e.x, arg_1, arg_1, abs(select(29476u, u_input.e.x, true)));
    var var_1 = Struct_2(21130u, Struct_1(_wgslsmith_div_f32(-902f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), arg_1.a))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b, -1i, -10890i, u_input.d.x), vec4<i32>(-43204i, u_input.d.x, 19938i, 12527i)), ~vec4<i32>(arg_1.b, -1i, 11234i, var_0.b.b), false), vec4<i32>(-26808i, var_0.b.b, arg_1.b, var_0.b.b) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, 46767i, arg_1.b, var_0.c.b), vec4<i32>(arg_1.b, var_0.c.b, 99203i, arg_1.b))), select(arg_1.a >= _wgslsmith_f_op_f32(-var_0.b.a), all(vec4<bool>(var_0.b.c, global0.x, var_0.c.c, arg_1.c)), arg_1.c), vec4<bool>(arg_1.d.x, false, true, all(!vec2<bool>(arg_1.c, true)))), var_0.b, 10812u);
    let var_2 = !(!arg_1.d);
    var var_3 = ~(~(~13338u));
    var var_4 = var_1.b;
    return arg_1.d;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = arg_0;
    global0 = !(!func_4(_wgslsmith_f_op_vec4_f32(func_3()), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()).x, reverseBits(u_input.c), u_input.c <= u_input.d.x, vec4<bool>(global0.x, true, global0.x, global0.x))));
    var var_1 = Struct_2(63885u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 261f)))), u_input.d.x, global0.x, !vec4<bool>(true, u_input.c < u_input.c, true, arg_0 || true)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-341f + -283f))), _wgslsmith_add_i32(~(-1i), -u_input.c) | -_wgslsmith_clamp_i32(-34905i, u_input.d.x, 5353i), true, !vec4<bool>(true, any(vec4<bool>(true, true, arg_0, false)), true, true)), ~(~(~(~1u))));
    global0 = vec4<bool>(select(true, var_1.b.c, !select(true, false, var_1.b.c)), arg_0, true, !(!(!var_1.b.c)));
    let var_2 = Struct_2(_wgslsmith_add_u32(var_1.a, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b.yxw ^ vec3<u32>(var_1.d, u_input.a.x, var_1.d), firstTrailingBit(u_input.b.wzz)), ~1164u)), Struct_1(var_1.c.a, var_1.b.b, true, var_1.b.d), var_1.b, u_input.b.x);
    return all(!select(!global0.wxx, !select(vec3<bool>(false, false, false), var_1.c.d.zxx, true), var_1.c.d.xzy));
}

fn func_1() -> Struct_1 {
    var var_0 = (false || (all(vec3<bool>(true, true, true)) & global0.x)) & global0.x;
    let var_1 = u_input.c;
    var var_2 = 1000f;
    var_2 = 478f;
    var_0 = !(!func_2(true));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(205f))))), _wgslsmith_clamp_i32(firstLeadingBit(~(-53333i)), 2147483647i, u_input.c), global0.x, !vec4<bool>(!all(global0.xyy), func_4(vec4<f32>(-1480f, -1496f, -469f, -514f), Struct_1(388f, var_1, true, vec4<bool>(global0.x, true, false, global0.x))).x, false & global0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-u_input.d.x, -_wgslsmith_div_i32(-39236i, 64538i), -1i, u_input.d.x);
    let var_1 = func_1();
    let var_2 = Struct_2(9759u, Struct_1(_wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1291f * var_1.a), _wgslsmith_f_op_f32(floor(var_1.a))))), var_1.b, global0.x, !select(var_1.d, vec4<bool>(true, global0.x, false, var_1.d.x), vec4<bool>(global0.x, false, true, global0.x))), Struct_1(var_1.a, min(i32(-1i) * -1i, u_input.c), true, !vec4<bool>(global0.x | true, -541f > var_1.a, true, global0.x)), ~50099u);
    global0 = vec4<bool>(true, any(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, 291f, var_1.a) * vec4<f32>(var_1.a, -2086f, -951f, -981f))), var_2.c).zx), func_2(var_2.b.d.x) && !all(select(var_2.b.d.ww, vec2<bool>(true, true), vec2<bool>(false, false))), any(vec3<bool>(var_1.c, true, select(func_4(vec4<f32>(-178f, var_2.c.a, var_2.c.a, -1816f), var_1).x, var_1.c, false))));
    var_0 = -(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.c.b, u_input.c, u_input.d.x, 34782i), -vec4<i32>(-2147483647i, -2147483647i, u_input.c, -2147483647i)), vec4<i32>(31556i, -2147483647i, -18337i, func_1().b), false));
    var_0 = vec4<i32>(~reverseBits(~var_1.b) << (var_2.d % 32u), 1i, var_0.x, select(-(~1i), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(countOneBits(-2147483647i), min(1i, u_input.c))), true));
    var var_3 = ~var_2.b.b;
    let var_4 = 81955u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a)), _wgslsmith_f_op_f32(sign(var_2.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -531f), var_2.b.a)), var_0.zy, var_4, -494f);
}

