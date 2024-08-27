struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0.c.a;
    let var_1 = arg_0;
    var var_2 = min(vec4<u32>(1088u, ~(~19757u), var_1.c.a.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 1u, arg_0.a, u_input.a), vec4<u32>(79402u, 41166u, arg_0.a, 35774u)) % 32u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, 0u), vec2<u32>(4294967295u, u_input.a)))), u_input.c);
    let var_3 = 0i;
    let var_4 = any(!vec4<bool>(!var_1.c.a.a.x, any(!vec3<bool>(false, var_1.c.a.a.x, arg_0.c.a.a.x)), var_0.a.x, false));
    return var_0.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_mult_vec4_i32(arg_2, ~arg_2) & vec4<i32>(arg_2.x, arg_1.c.b.x, arg_1.c.b.x, arg_2.x), vec4<i32>(arg_1.c.b.x, arg_2.x, max(-34672i, -4145i), arg_2.x << (arg_1.c.a.b.x % 32u)) & vec4<i32>(-2147483647i, min(2147483647i, -2147483647i), arg_2.x, abs(arg_1.c.b.x)), !(!select(vec4<bool>(false, false, false, arg_1.c.a.a.x), vec4<bool>(true, arg_1.c.a.a.x, false, arg_1.c.a.a.x), true))), -(vec4<i32>(-arg_1.c.b.x, -1i, arg_2.x, arg_2.x) ^ arg_2));
    var_0 = -vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.x, arg_2.x) | arg_2.xyx, countOneBits(vec3<i32>(1i, 2085i, u_input.b.x)))), arg_2.x, u_input.b.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -45351i, arg_2.x) | vec3<i32>(2147483647i, -2147483647i, 61202i), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 33950i, var_0.x), vec3<i32>(arg_1.c.b.x, arg_2.x, u_input.b.x))), ~(i32(-1i) * -42384i), arg_1.b));
    let var_1 = arg_1.c.a;
    var var_2 = Struct_4(0i, arg_1.c.d.x, !all(var_1.a));
    let var_3 = u_input.b.yx;
    return arg_2.x;
}

fn func_1() -> Struct_4 {
    global0 = !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, global0.x), true);
    global0 = !vec3<bool>(global0.x, any(select(func_2(Struct_3(1u, global0.x, Struct_2(Struct_1(vec2<bool>(global0.x, global0.x), u_input.c.wyx), vec2<i32>(5472i, 0i), 1392f, vec2<f32>(-612f, -1995f))), vec4<i32>(u_input.b.x, 9800i, u_input.b.x, 1i)), !vec2<bool>(false, global0.x), any(vec3<bool>(true, false, true)))), true);
    var var_0 = vec4<i32>(u_input.b.x | -u_input.b.x, func_3(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, global0.x, true, false), !vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, false, true)), vec4<bool>(!global0.x, !global0.x, true, !global0.x)), Struct_3(64886u, true, Struct_2(Struct_1(global0.zx, vec3<u32>(1u, u_input.c.x, 1u)), select(vec2<i32>(1i, u_input.b.x), u_input.b.yx, global0.x), 960f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, -309f)))), ~vec4<i32>(-22262i, ~u_input.b.x, u_input.b.x, u_input.b.x), true), ~u_input.b.x, 1i);
    var var_1 = _wgslsmith_add_i32(var_0.x, ~max(_wgslsmith_add_i32(i32(-1i) * -2147483647i, firstTrailingBit(1i)), select(~38395i, u_input.b.x, select(true, true, global0.x))));
    var var_2 = true;
    return Struct_4(u_input.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1459f - _wgslsmith_f_op_f32(-1387f - 588f))))), !(!(~0u >= firstLeadingBit(u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(247f));
    var var_1 = func_1();
    let var_2 = select(select(!(!vec3<bool>(global0.x, var_1.c, true)), !select(vec3<bool>(global0.x, var_1.c, false), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, var_1.c, var_1.c)), select(select(vec3<bool>(false, global0.x, false), !vec3<bool>(true, false, var_1.c), var_1.c), !select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, true), global0.x), !(!vec3<bool>(global0.x, false, var_1.c)))), !select(!(!vec3<bool>(false, false, var_1.c)), !select(vec3<bool>(true, global0.x, var_1.c), vec3<bool>(var_1.c, global0.x, true), var_1.c), any(!global0.zy)), !select(vec3<bool>(true, true, true), !(!vec3<bool>(global0.x, true, false)), global0.x));
    let var_3 = Struct_3((~firstLeadingBit(21801u) | ~u_input.c.x) << (25493u % 32u), var_1.c, Struct_2(Struct_1(global0.zx, firstLeadingBit(select(vec3<u32>(u_input.c.x, 53242u, u_input.a), u_input.c.xyx, var_2))), vec2<i32>(-10787i, 2147483647i), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, -423f) - vec2<f32>(-927f, 150f))))));
    var var_4 = var_3;
    global0 = select(select(vec3<bool>(!var_4.c.a.a.x, var_3.c.a.a.x, var_3.b), var_2, select(!select(vec3<bool>(var_1.c, false, true), vec3<bool>(true, false, false), var_2), select(!vec3<bool>(var_3.b, var_1.c, true), !var_2, false), select(vec3<bool>(false, var_4.c.a.a.x, true), !var_2, select(false, var_1.c, true)))), vec3<bool>(var_3.b, var_3.c.a.a.x, true), var_2);
    global0 = select(vec3<bool>(true, func_1().c, false), var_2, select(!var_2, vec3<bool>(!(var_3.b && false), !select(false, var_3.b, true), any(var_2)), false));
    var var_5 = min(~vec4<u32>(~4294967295u, ~u_input.a, 31127u, ~var_3.a), vec4<u32>(0u, ~(~firstTrailingBit(28941u)), var_3.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(var_4.c.a.b), var_4.c.a.b), var_4.a, 61861u)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~0u | _wgslsmith_div_u32(12418u, var_5.x)), u_input.b, var_4.c.b.x);
}

