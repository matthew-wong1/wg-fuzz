struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    let var_0 = min(1554u, arg_0.d.b);
    var var_1 = Struct_2(arg_0.d, arg_0.d, arg_0.d, ~(-select(vec3<i32>(3832i, u_input.c, 21456i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(-1i, -1i, arg_0.d.a)), true)));
    var var_2 = var_1.b;
    return u_input.c;
}

fn func_3() -> vec4<i32> {
    var var_0 = abs(countOneBits(abs(12510u)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, _wgslsmith_f_op_f32(abs(-498f)), 268f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-259f * -1799f), _wgslsmith_f_op_f32(trunc(350f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, 1413f, 283f, 1000f))))));
    var var_2 = _wgslsmith_mult_i32(0i, min(-1i, 22668i));
    var var_3 = vec2<bool>(!(!any(vec2<bool>(true, true))), false);
    var var_4 = _wgslsmith_f_op_vec2_f32(step(var_1.xy, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 360f) + vec2<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), -326f))))));
    return vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x << (u_input.d.x % 32u)), 1i), _wgslsmith_add_i32(0i, firstLeadingBit(_wgslsmith_dot_vec2_i32(-u_input.e, -u_input.e))), abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, u_input.e.x, 5297i)), min(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(0i, u_input.c, u_input.e.x) & vec3<i32>(u_input.e.x, 15535i, -1i)))), u_input.e.x);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> bool {
    let var_0 = -u_input.e;
    let var_1 = func_3();
    let var_2 = vec4<bool>(!any(arg_1.c.wzw), !any(!arg_1.c.www) | (true && select(!arg_1.d.c, arg_1.d.c, true)), arg_1.b, all(arg_1.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_2) + arg_1.a))))));
    var var_4 = !(!var_2.x);
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec3<bool>(all(!vec2<bool>(u_input.c >= u_input.e.x, 46620u <= u_input.b)), all(vec4<bool>(var_0, !(false & var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-51059i, -1i, -1i), vec3<i32>(-42807i, u_input.e.x, 8226i)) <= func_1(Struct_3(546f, true, vec4<bool>(false, false, false, var_0), Struct_1(u_input.c, 4294967295u, true, u_input.b)), true), true)), var_0 == all(select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)), vec2<bool>(var_0, var_0), select(false, false, true))));
    var_1 = select(vec3<bool>(all(vec4<bool>(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), !var_1.x, true, var_1.x)), false, var_0), !(!vec3<bool>(var_0, var_1.x, true & var_1.x)), !(!vec3<bool>(!var_1.x, true, func_2(u_input.c, Struct_3(1408f, false, vec4<bool>(var_0, var_0, true, true), Struct_1(u_input.e.x, 1u, true, u_input.a)), 894f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, 1000f, -237f, 203f)), vec4<f32>(759f, 267f, 624f, -811f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(139f, 1221f, 672f, -1260f)))))));
    var_1 = !(!(!select(select(vec3<bool>(var_1.x, var_0, true), vec3<bool>(false, true, true), true), !vec3<bool>(var_1.x, false, var_0), true)));
    var_1 = !select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>((1604f <= var_2.x) == (var_1.x & var_1.x), false, (1u < u_input.b) | (true && var_1.x)), select(!select(vec3<bool>(var_1.x, false, var_0), vec3<bool>(var_0, true, false), var_0), vec3<bool>(var_1.x, select(var_0, var_1.x, false), true), !select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, var_0, var_0), var_0)));
    var var_3 = -34371i;
    let x = u_input.a;
    s_output = StorageBuffer(10355i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-732f, var_2.x, _wgslsmith_f_op_f32(var_2.x + 1000f), -697f))))), vec3<u32>(countOneBits(_wgslsmith_sub_u32(0u, u_input.b)), u_input.a, 98613u));
}

